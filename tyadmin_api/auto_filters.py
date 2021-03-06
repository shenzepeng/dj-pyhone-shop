from django_filters import rest_framework as filters
from tyadmin_api.custom import DateFromToRangeFilter
from django.contrib.auth.models import Permission, Group
from django.contrib.contenttypes.models import ContentType
from users.models import UserProfile
from goods.models import GoodsCategory, GoodsCategoryBrand, Goods, GoodsImage, Banner, IndexAd, HotSearchWords
from trade.models import ShoppingCart, OrderInfo, OrderGoods
from user_operation.models import UserFav, UserAddress, UserLeavingMessage

class PermissionFilter(filters.FilterSet):
    content_type_text = filters.CharFilter(field_name="content_type")

    class Meta:
        model = Permission
        exclude = []

class GroupFilter(filters.FilterSet):

    class Meta:
        model = Group
        exclude = []

class ContentTypeFilter(filters.FilterSet):

    class Meta:
        model = ContentType
        exclude = []

class UserProfileFilter(filters.FilterSet):
    last_login = DateFromToRangeFilter(field_name="last_login")
    date_joined = DateFromToRangeFilter(field_name="date_joined")

    class Meta:
        model = UserProfile
        exclude = []

class GoodsCategoryFilter(filters.FilterSet):
    parent_category_text = filters.CharFilter(field_name="parent_category")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = GoodsCategory
        exclude = []

class GoodsCategoryBrandFilter(filters.FilterSet):
    category_text = filters.CharFilter(field_name="category")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = GoodsCategoryBrand
        exclude = ["image","image"]

class GoodsFilter(filters.FilterSet):
    category_text = filters.CharFilter(field_name="category")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = Goods
        exclude = ["goods_front_image","goods_front_image"]

class GoodsImageFilter(filters.FilterSet):
    goods_text = filters.CharFilter(field_name="goods")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = GoodsImage
        exclude = ["image","image"]

class BannerFilter(filters.FilterSet):
    goods_text = filters.CharFilter(field_name="goods")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = Banner
        exclude = ["image","image"]

class IndexAdFilter(filters.FilterSet):
    category_text = filters.CharFilter(field_name="category")
    goods_text = filters.CharFilter(field_name="goods")

    class Meta:
        model = IndexAd
        exclude = []

class HotSearchWordsFilter(filters.FilterSet):
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = HotSearchWords
        exclude = []

class ShoppingCartFilter(filters.FilterSet):
    user_text = filters.CharFilter(field_name="user")
    goods_text = filters.CharFilter(field_name="goods")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = ShoppingCart
        exclude = []

class OrderInfoFilter(filters.FilterSet):
    user_text = filters.CharFilter(field_name="user")
    pay_time = DateFromToRangeFilter(field_name="pay_time")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = OrderInfo
        exclude = []

class OrderGoodsFilter(filters.FilterSet):
    order_text = filters.CharFilter(field_name="order")
    goods_text = filters.CharFilter(field_name="goods")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = OrderGoods
        exclude = []

class UserFavFilter(filters.FilterSet):
    user_text = filters.CharFilter(field_name="user")
    goods_text = filters.CharFilter(field_name="goods")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = UserFav
        exclude = []

class UserAddressFilter(filters.FilterSet):
    user_text = filters.CharFilter(field_name="user")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = UserAddress
        exclude = []

class UserLeavingMessageFilter(filters.FilterSet):
    user_text = filters.CharFilter(field_name="user")
    add_time = DateFromToRangeFilter(field_name="add_time")

    class Meta:
        model = UserLeavingMessage
        exclude = ["file"]