# -*- coding: utf-8 -*-
"""
@Remark: 交通违章相关的路由文件
"""
from django.urls import re_path,path
from rest_framework import routers
from apps.violation.views import TrafficViolationSet

system_url = routers.SimpleRouter()
system_url.register(r'violation', TrafficViolationSet)

urlpatterns = [
    re_path('violation/pay_traffic_violation/(?P<pk>.*?)/',TrafficViolationSet.as_view({'put': 'pay_traffic_violation'}), name='缴纳交通违章罚款'),
    path('violation/violation_exportexecl/',TrafficViolationSet.as_view({'get':'violation_exportexecl'}), name='后台数据导出'),
]
urlpatterns += system_url.urls
