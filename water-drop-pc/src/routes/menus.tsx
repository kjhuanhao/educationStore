import {
  GiftOutlined,
  HomeOutlined,
  IdcardOutlined,
  PicRightOutlined,
  ShopOutlined,
  TeamOutlined,
  MessageOutlined,
} from "@ant-design/icons";

interface IRoute {
  path: string;
  name: string;
  icon?: React.ReactNode;
  hideInMenu?: boolean;
}

export const ROUTE_KEY = {
  HOME: "home",
  MY: "my",
  ORG: "org",
  COURSE: "course",
  STUDENT: "student",
  PRODUCT: "product",
  TEACHER: "teacher",
  CHAT_LIST: "chatList",
  NO_ORG: "noOrg",
  PAGE_404: "p404",
  CHAT: "chat"
};

export const ROUTE_CONFIG: Record<string, IRoute> = {
  [ROUTE_KEY.HOME]: {
    path: "/",
    name: "首页",
    hideInMenu: true,
    icon: <HomeOutlined />,
  },
  [ROUTE_KEY.MY]: {
    path: "my",
    name: "个人信息",
    hideInMenu: true,
    icon: <HomeOutlined />,
  },
  [ROUTE_KEY.ORG]: {
    path: "org",
    name: "门店管理",
    hideInMenu: true,
    icon: <ShopOutlined />,
  },
  [ROUTE_KEY.COURSE]: {
    path: "course",
    name: "课程管理",
    icon: <PicRightOutlined />,
  },
  [ROUTE_KEY.NO_ORG]: {
    path: "noOrg",
    name: "选择门店提示",
    hideInMenu: true,
  },
  [ROUTE_KEY.STUDENT]: {
    path: "student",
    name: "学员管理",
    icon: <TeamOutlined />,
  },
  [ROUTE_KEY.PRODUCT]: {
    path: "product",
    name: "商品管理",
    icon: <GiftOutlined />,
  },
  [ROUTE_KEY.TEACHER]: {
    path: "teacher",
    name: "教师管理",
    icon: <IdcardOutlined />,
  },
  [ROUTE_KEY.CHAT]: {
    path: "chat/:id",
    name: '顾客对话',
    hideInMenu: true
  },
  [ROUTE_KEY.CHAT_LIST]: {
    path: "chatList/",
    name: "消息管理",
    icon: <MessageOutlined />,
  },
  [ROUTE_KEY.PAGE_404]: {
    path: "*",
    hideInMenu: true,
    name: "404",
  },
};

export const routes = Object.keys(ROUTE_CONFIG).map((key) => ({ ...ROUTE_CONFIG[key], key }));

export const getRouteByKey = (key: string) => ROUTE_CONFIG[key];
