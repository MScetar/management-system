from django.db import models
from utils.models import CoreModel
# Create your models here.

class TrafficViolation(CoreModel):
    """交通违章信息"""
    car_number = models.CharField(max_length=20, verbose_name='车牌号')
    violation_type = models.CharField(max_length=100, verbose_name='违规内容')
    violation_time = models.DateTimeField(verbose_name='违规时间')
    has_paid = models.BooleanField(default=False, verbose_name='是否已缴纳罚款')

    class Meta:
        db_table = 'tb_traffic_violation'
        verbose_name = '交通违章信息'
        verbose_name_plural = verbose_name


