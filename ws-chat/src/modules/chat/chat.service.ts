import { Injectable } from '@nestjs/common';
import { MessagesService } from '../messages/messages.service';
import { SessionsService } from '../sessions/sessions.service';
import { Sessions } from '../sessions/models/sessions.entity';
import { OrganizationService } from '../organization/organization.srvice';

interface IMessage {
  messageId: string;
  sessionId: string;
  role: 'customer' | 'agent';
  userId: string;
  message: string;
  time?: string;
  data?: any;
  type: 'card' | 'message';
}

@Injectable()
export class ChatService {
  constructor(
    private messagesService: MessagesService,
    private sessionsService: SessionsService,
    private organizationService: OrganizationService,
  ) {}

  /**
   * 初始化 Sessions，去数据库获取所有的 sessions 数据
   * @returns
   */
  public async initializeSession(): Promise<
    Record<string, { customer?: string; agent?: string }>
  > {
    const sessionsList = await this.sessionsService.findAll();
    return this.getSessionByList(sessionsList);
  }

  private getSessionByList(
    sessionsList: Sessions[],
  ): Record<string, { customer?: string; agent?: string }> {
    const sessions: Record<string, { customer?: string; agent?: string }> = {};
    sessionsList.forEach((session) => {
      sessions[session.id] = {
        customer: session.customerSocketId,
        agent: session.agentSocketId,
      };
    });
    return sessions;
  }

  public async assignSocketToSession(
    sessionId: string,
    isAgent: boolean,
    userId: string,
    socketId: string,
  ): Promise<Record<string, { customer?: string; agent?: string }>> {
    // 1. 查询是否存在这个 sessionId
    const querySession = await this.sessionsService
      .findBySessionId(sessionId)
      .then((res) => res);

    console.log(querySession);
    
    // 对于每个会话要确保知道聊天的对象，这里去查询咨询商品对应的对象(sessionId 是门店的id)
    const organization = await this.organizationService.findOrganizationById(sessionId)
    const { createdBy: agentId } = organization;
    console.log(agentId, 'agentId');
    
    // 2. 存在则更新，不存在则创建，只有客户才会主动建立连接，所以只需要创建客户的
    if (!querySession) {
      if (!isAgent) {
      this.sessionsService.create(sessionId, userId, agentId, socketId, null);
    }
  }
    // 3. 进行更新操作
    if (querySession) {
      if (isAgent) {
        // 客户进来
        console.log('agent');
        // 如果是 agent，证明可能存在了一个顾客
        console.log(socketId);
        this.sessionsService.updated(
          sessionId,
          isAgent,
          querySession.customerId,
          userId,
          querySession.customerSocketId,
          socketId,
        );
      } else {
        // 如果是
        this.sessionsService.updated(
          sessionId,
          isAgent,
          querySession.customerId,
          userId,
          socketId,
          querySession.agentSocketId,
   
        );
      }
    }

    // 4. 返回新的 sessions
    const sessionsList = await this.sessionsService.findAll();
    return this.getSessionByList(sessionsList);
  }

  public async insertMessage(body: IMessage) {
    console.log(body);
    
    return await this.messagesService.createNewMessage(body);
  }

  public async disconnectSession(){
      // 某一方退出的时候应该去断开连接
      // this.sessionsService.updated()
  }
}
