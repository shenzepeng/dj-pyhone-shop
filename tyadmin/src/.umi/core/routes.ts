// @ts-nocheck
import { ApplyPluginsType, dynamic } from 'D:/project/DaishuShop/tyadmin/node_modules/@umijs/runtime';
import { plugin } from './plugin';

const routes = [
  {
    "path": "/xadmin/login",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__UserLayout' */'D:/project/DaishuShop/tyadmin/src/layouts/UserLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "name": "login",
        "path": "/xadmin/login",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__UserLogin' */'D:/project/DaishuShop/tyadmin/src/pages/TyAdminBuiltIn/UserLogin'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "path": "/xadmin/",
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__SecurityLayout' */'D:/project/DaishuShop/tyadmin/src/layouts/SecurityLayout'), loading: require('@/components/PageLoading/index').default}),
    "routes": [
      {
        "path": "/xadmin/",
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'layouts__BasicLayout' */'D:/project/DaishuShop/tyadmin/src/layouts/BasicLayout'), loading: require('@/components/PageLoading/index').default}),
        "authority": [
          "admin",
          "user"
        ],
        "routes": [
          {
            "name": "首页",
            "path": "/xadmin/index",
            "icon": "dashboard",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__DashBoard' */'D:/project/DaishuShop/tyadmin/src/pages/TyAdminBuiltIn/DashBoard'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "path": "/xadmin/",
            "redirect": "/xadmin/index",
            "exact": true
          },
          {
            "name": "认证和授权",
            "icon": "BarsOutlined",
            "path": "/xadmin/auth",
            "routes": [
              {
                "name": "权限",
                "path": "/xadmin/auth/permission",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__PermissionList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/PermissionList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "组",
                "path": "/xadmin/auth/group",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__GroupList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/GroupList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "用户管理",
            "icon": "BarsOutlined",
            "path": "/xadmin/users",
            "routes": [
              {
                "name": "用户信息",
                "path": "/xadmin/users/user_profile",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__UserProfileList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/UserProfileList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "商品管理",
            "icon": "BarsOutlined",
            "path": "/xadmin/goods",
            "routes": [
              {
                "name": "商品类别",
                "path": "/xadmin/goods/goods_category",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__GoodsCategoryList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/GoodsCategoryList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "宣传品牌",
                "path": "/xadmin/goods/goods_category_brand",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__GoodsCategoryBrandList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/GoodsCategoryBrandList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "商品信息",
                "path": "/xadmin/goods/goods",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__GoodsList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/GoodsList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "商品轮播",
                "path": "/xadmin/goods/goods_image",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__GoodsImageList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/GoodsImageList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "首页轮播",
                "path": "/xadmin/goods/banner",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__BannerList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/BannerList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "首页广告",
                "path": "/xadmin/goods/index_ad",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__IndexAdList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/IndexAdList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "热搜排行",
                "path": "/xadmin/goods/hot_search_words",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__HotSearchWordsList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/HotSearchWordsList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "交易管理",
            "icon": "BarsOutlined",
            "path": "/xadmin/trade",
            "routes": [
              {
                "name": "购物车",
                "path": "/xadmin/trade/shopping_cart",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__ShoppingCartList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/ShoppingCartList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "订单信息",
                "path": "/xadmin/trade/order_info",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__OrderInfoList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/OrderInfoList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "订单商品",
                "path": "/xadmin/trade/order_goods",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__OrderGoodsList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/OrderGoodsList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "操作管理",
            "icon": "BarsOutlined",
            "path": "/xadmin/user_operation",
            "routes": [
              {
                "name": "用户收藏",
                "path": "/xadmin/user_operation/user_fav",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__UserFavList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/UserFavList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "收货地址",
                "path": "/xadmin/user_operation/user_address",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__UserAddressList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/UserAddressList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              },
              {
                "name": "用户留言",
                "path": "/xadmin/user_operation/user_leaving_message",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__AutoGenPage__UserLeavingMessageList' */'D:/project/DaishuShop/tyadmin/src/pages/AutoGenPage/UserLeavingMessageList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "后台操作",
            "icon": "VideoCamera",
            "path": "/xadmin/sys",
            "routes": [
              {
                "name": "操作日志",
                "icon": "smile",
                "path": "/xadmin/sys/ty_admin_sys_log",
                "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__TyAdminSysLogList' */'D:/project/DaishuShop/tyadmin/src/pages/TyAdminBuiltIn/TyAdminSysLogList'), loading: require('@/components/PageLoading/index').default}),
                "exact": true
              }
            ]
          },
          {
            "name": "passwordModify",
            "path": "/xadmin/account/change_password",
            "hideInMenu": true,
            "icon": "dashboard",
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__TyAdminBuiltIn__ChangePassword' */'D:/project/DaishuShop/tyadmin/src/pages/TyAdminBuiltIn/ChangePassword'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          },
          {
            "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'D:/project/DaishuShop/tyadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
            "exact": true
          }
        ]
      },
      {
        "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'D:/project/DaishuShop/tyadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
        "exact": true
      }
    ]
  },
  {
    "component": dynamic({ loader: () => import(/* webpackChunkName: 'p__404' */'D:/project/DaishuShop/tyadmin/src/pages/404'), loading: require('@/components/PageLoading/index').default}),
    "exact": true
  }
];

// allow user to extend routes
plugin.applyPlugins({
  key: 'patchRoutes',
  type: ApplyPluginsType.event,
  args: { routes },
});

export { routes };
