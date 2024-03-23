from django.shortcuts import render
from rest_framework.permissions import IsAuthenticated
from rest_framework_simplejwt.authentication import JWTAuthentication
from apps.violation.models import TrafficViolation
from utils.filters import TrafficViolationTimeFilter
from utils.jsonResponse import SuccessResponse, ErrorResponse
from utils.serializers import CustomModelSerializer
from utils.viewset import CustomModelViewSet
from rest_framework import serializers
from utils.export_excel import export_excel
from rest_framework.views import APIView
# Create your views here.

# ================================================= #
# ************** 后端用户管理 view  ************** #
# ================================================= #
class TrafficViolationSerializer(CustomModelSerializer):
    """
    消息模板 -序列化器
    """

    class Meta:
        model = TrafficViolation
        read_only_fields = ["id"]
        fields = '__all__'


class TrafficViolationCreateSerializer(CustomModelSerializer):
    """
    交通违章-序列化器
    """

    class Meta:
        model = TrafficViolation
        read_only_fields = ["id"]
        fields = '__all__'


class ExportTrafficViolationSerializer(CustomModelSerializer):
    """
    导出 交通违章信息 简单序列化器
    """
    has_paid_name = serializers.SerializerMethodField()
    def get_has_paid_name(self, obj):
        if obj.has_paid:
            return "已缴纳"
        else:
            return "未缴纳"

    class Meta:
        model = TrafficViolation
        fields = ('id', 'car_number','violation_time', 'violation_type','has_paid_name')

class TrafficViolationSet(CustomModelViewSet):
    """
    后台用户管理 接口:
    """
    queryset = TrafficViolation.objects.all().order_by('id')
    serializer_class = TrafficViolationSerializer
    create_serializer_class = TrafficViolationCreateSerializer
    update_serializer_class = TrafficViolationCreateSerializer
    filterset_class = TrafficViolationTimeFilter

    def pay_traffic_violation(self, request, *args, **kwargs):
        """处理缴纳交通违章罚款"""
        instance = TrafficViolation.objects.filter(id=kwargs.get('pk')).first()
        if instance:
            if instance.has_paid:
                instance.has_paid = False
            else:
                instance.has_paid = True
            instance.save()
            return SuccessResponse(data=None, msg="修改成功")
        else:
            return ErrorResponse(msg="未获取到违章")

    def violation_exportexecl(self, request):
        field_data = ['主键', '车牌号', '违章时间', '违章内容', '罚款缴纳状态']
        queryset = self.filter_queryset(self.get_queryset())
        data = ExportTrafficViolationSerializer(queryset, many=True).data
        return SuccessResponse(data=export_excel(request, field_data, data, '交通违章信息.xls'), msg='success')

# ================================================= #
# ************** 前端用户中心 view  ************** #
# ================================================= #
# class GetTrafficViolationView(APIView):
#     """
#     用户查询交通违规记录接口
#     get:
#     【参数】type=all 获取所有交通违规记录
#     【参数】type=unpaid 获取未处理的交通违规记录
#     """
#     permission_classes = [IsAuthenticated]
#     authentication_classes = [JWTAuthentication]
#     serializer_class = TrafficViolationSerializer
#
#     def get(self, request, *args, **kwargs):
#         type = request.query_params.get('type', 'all')  # 使用request.query_params获取查询参数
#         user = request.user
#
#         if type == "all":
#             queryset = TrafficViolation.objects.filter(user=user)
#         elif type == "unpaid":
#             queryset = TrafficViolation.objects.filter(user=user, is_paid=False)
#         else:
#             # 处理无效参数或添加更多条件
#             return Response({"error": "Invalid type parameter"}, status=400)
#
#         serializer = self.serializer_class(queryset, many=True)
#         return Response(serializer.data)