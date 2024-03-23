<template>
    <div v-dialogDrag>
        <el-dialog
                :title="loadingTitle"
                v-model="dialogVisible"
                width="560px"
                center
                :destroy-on-close="true"
                :close-on-click-modal="false"
                :before-close="handleClose">
            <el-form :inline="false" :model="formData" ref="rulesForm" label-position="right" label-width="130px">
<!--                <el-form-item label="用户头像：">-->
<!--                    <img :src="formData.avatar ? formData.avatar : defaultImg" style="width: 60px;height:60px" :onerror="defaultImg">-->

<!--    &lt;!&ndash;                <el-upload&ndash;&gt;-->
<!--    &lt;!&ndash;                        class="avatar-uploader"&ndash;&gt;-->
<!--    &lt;!&ndash;                        action=""&ndash;&gt;-->
<!--    &lt;!&ndash;                        :show-file-list="false"&ndash;&gt;-->
<!--    &lt;!&ndash;                        :http-request="imgUploadRequest"&ndash;&gt;-->
<!--    &lt;!&ndash;                        :on-success="imgUploadSuccess"&ndash;&gt;-->
<!--    &lt;!&ndash;                        :before-upload="imgBeforeUpload">&ndash;&gt;-->
<!--    &lt;!&ndash;                    <img v-if="formData.img" :src="formData.img" class="avatar">&ndash;&gt;-->
<!--    &lt;!&ndash;                    <i v-else class="el-icon-plus avatar-uploader-icon"></i>&ndash;&gt;-->
<!--    &lt;!&ndash;                </el-upload>&ndash;&gt;-->
<!--                </el-form-item>-->
                <el-form-item label="车牌号：" prop="car_number">
                    {{formData.car_number}}
                </el-form-item>
                <el-form-item label="违规内容：" prop="violation_type">
                    {{formData.violation_type}}
                </el-form-item>
<!--                <el-form-item label="手机号：" prop="mobile">-->
<!--                    {{formData.mobile}}-->
<!--                </el-form-item>-->
                <el-form-item label="创建时间：" prop="violation_time">
                    {{formData.violation_time}}
                </el-form-item>
<!--                <el-form-item label="更新时间：" prop="mobile">-->
<!--                    {{formData.update_datetime}}-->
<!--                </el-form-item>-->
                <el-form-item label="缴费状态：" prop="has_paid">
                    <el-switch
                            v-model="formData.has_paid"
                            active-color="#13ce66"
                            inactive-color="#ff4949" disabled>
                    </el-switch>
                </el-form-item>
            </el-form>
            <template #footer>
                <el-button @click="handleClose" :loading="loadingSave">取消</el-button>
    <!--            <el-button type="primary" @click="submitData" :loading="loadingSave">确定</el-button>-->
            </template>
        </el-dialog>
    </div>
</template>

<script>
    import {ViolationAdd,ViolationEdit,apiSystemRole,apiSystemDept} from "@/api/api";
    export default {
        name: "violationDetail",
        emits: ['refreshData'],
        data() {
            return {
                dialogVisible:false,
                loadingSave:false,
                loadingTitle:'',
                // defaultImg:'this.src="'+require('../../../assets/img/avatar.jpg')+'"',
                formData:{
                    car_number:'',
                    violation_type:'',
                    has_paid:true,
                    violation_time:'',

                },
                rolelist:[],
                options:[],
            }
        },
        methods:{

            handleClose() {
                this.dialogVisible=false
                this.loadingSave=false
                this.$emit('refreshData')
            },
            addviolationFn(item,flag) {
                this.loadingTitle=flag
                this.dialogVisible=true
                this.formData=item ? item : {
                    car_number:'',
                    violation_type:'',
                    has_paid:true,
                    violation_time:'',
                }
            },
            submitData() {
                this.$refs['rulesForm'].validate(obj=>{
                    if(obj) {
                        this.loadingSave=true
                        let param = {
                            ...this.formData
                        }
                        if(this.formData.id){
                            ViolationEdit(param).then(res=>{
                                this.loadingSave=false
                                if(res.code ==2000) {
                                    this.$message.success(res.msg)
                                    this.handleClose()
                                    this.$emit('refreshData')
                                } else {
                                    this.$message.warning(res.msg)
                                }
                            })
                        }else{
                            ViolationAdd(param).then(res=>{
                                this.loadingSave=false
                                if(res.code ==2000) {
                                    this.$message.success(res.msg)
                                    this.handleClose()
                                    this.$emit('refreshData')
                                } else {
                                    this.$message.warning(res.msg)
                                }
                            })
                        }

                    }
                })
            },
            // imgBeforeUpload(file) {
            //     const isJPG = file.type === 'image/jpeg' || file.type === 'image/png';
            //     if (!isJPG) {
            //         this.$message.error('图片只能是 JPG/PNG 格式!');
            //         return false
            //     }
            //     return isJPG;
            // },
            // async imgUploadRequest(option) {
            //     // OSS.ossUploadProductImg(option);
            // },
            // imgUploadSuccess(res) {
            //     if (res) {
            //         this.formData.img = res.url
            //     }
            // },
        }
    }
</script>

