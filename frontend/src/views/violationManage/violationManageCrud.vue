<template>
    <div>
        <ly-crud ref="lycrud"  v-bind="crudConfig" >
            <template v-slot:customHandle="slotProps">
                <span class="table-operate-btn" @click="handleClick(slotProps.row,'disable')" v-show="hasPermission(this.$route.name,'Disable')">
                    <span v-if="slotProps.row.is_active">禁用</span>
                    <span v-else>启用</span>
                </span>
            </template>
        </ly-crud>
    </div>
</template>

<script lang="jsx">
    import {Violation,ViolationAdd,ViolationDelete,ViolationEdit,ViolationPaid,ViolationExportexecl} from '@/api/api'
    import LyCrud from "@/components/lycrud";
    import templateData from "@/components/dict/crudTemplateData"
    import { h,resolveComponent } from 'vue';
    export default {
        name: "violationManage",
        components: {LyCrud},
        data(){
            return{
                // defaultImg:require('../../assets/img/avatar.jpg'),
                //crud配置
                crudConfig:{
                    //crud请求方法配置
                    crudRequest:{
                        add:ViolationAdd,
                        del:ViolationDelete,
                        edit:ViolationEdit,
                        search:Violation,
                    },
                    //搜索栏目配置
                    searchBar:{
                        showSearchBar:true,//显示搜索栏目
                        searchColums:[
                            {label:'车牌号',type:'input',prop:'car_number',width:200,maxlength:60,placeholder:'车牌号'},
                            {label:'违章内容',type:'input',prop:'violation_type',width:200,maxlength:60,placeholder:'请输入违章内容'},
                            {label:'缴费状态',type:'select',prop:'has_paid',width:100,placeholder:'请选择',
                                options:[
                                    {value:1,label:'已缴费'},
                                    {value:0,label:'未缴费'}
                                ]
                            },
                            {label:'创建时间',type:'datepicker-datetimerange',prop:'timers'},
                        ]
                    },
                    //显示分页
                    showPagination:true,
                    //分页配置
                    pageparams: {
                        limit: 10,//每页显示的条数(默认每页显示10条)//非必填
                        //pageSizes:[10,20,30,40,50,200],//非必填
                        // layout:'total, sizes, prev, pager, next, jumper',//非必填
                    },
                    //crud按钮配置
                    rowHandle:{
                        width: 180,//操作列宽度,0表示不显示表格操作列
                        fixed:"right",//固定操作列在右侧
                        permission:{//增删改查按钮权限控制（是否显示）
                            add:this.hasPermission(this.$options.name,'Create'),//bool型 this.$options.name获取当前组件的name本例为userManageCrud
                            del:this.hasPermission(this.$options.name,'Delete'),
                            edit:this.hasPermission(this.$options.name,'Update'),
                            search:this.hasPermission(this.$options.name,'Search'),
                            detail:this.hasPermission(this.$options.name,'Retrieve'),
                        }
                    },
                    //crud弹窗属性
                    formOptions: {
                        width:'45%',//dialog弹窗宽度：类型：百分比或字符串
                        gutter: 20, // Layout布局栅格间隔
                    },
                    //crud表格属性
                    tableOptions:{
                        border:true,
                        showHeader:true,
                    },
                    showSelectable:true,//表格显示复选项框
                    //table表头列
                    tableColumns:[
                         // {label:'用户头像',type:'image',prop:'avatar',minWidth:'60',sortable: false,hidden:false,render:(row)=>{
                         //     let elImage = resolveComponent('el-image')//全局组件需要先resolveComponent解析该组件再render渲染，不然该标签会出现原样输出
                         //     return h(elImage,{
                         //          src:row.avatar ? row.avatar : this.defaultImg,
                         //          previewSrcList:[row.avatar ? row.avatar : this.defaultImg],//开启预览，原preview-src-list属性在h渲染方法中，-后字母大写代替即可：previewSrcList
                         //          previewTeleported:true,//插入至body元素上
                         //          style:"width: 30px;height: 30px",
                         //     },)
                         //  }
                         // },
                        {label:'ID',prop:'id',type:'input',minWidth:'100',sortable: false,hidden:true,
                            form:{
                                 //表单属性
                                 span:24,
                                 hidden:true,//编辑时隐藏，添加时去除
                             }
                        },
                        // {label:'用户头像',type:'image-avatar',prop:'avatar',minWidth:'60',sortable: false,hidden:false,
                        //     render:(row)=>{
                        //         //jsx语法
                        //         return <el-image src={row.avatar ? row.avatar : this.defaultImg} style="width: 30px;height: 30px" preview-teleported={true} preview-srcList={[row.avatar ? row.avatar : this.defaultImg]}></el-image>
                        //     },
                        //     form:{
                        //         //表单属性
                        //         span:24,
                        //         // width:80,头像大小默认80px
                        //     }
                        //
                        //  },
                         {label:'车牌号',prop:'car_number',type:'input',minWidth:'110',sortable: false,hidden:false,
                            form:{
                                //表单属性
                                span:12,
                                rules: [{ required: true, message: '车牌号必填项' }],
                                placeholder: '请输入车牌号',
                            }
                         },
                         {label:'违规内容',prop:'nickname',type:'input',minWidth:'110',sortable: false,hidden:false,
                            form:{
                                //表单属性
                                span:12,
                                placeholder: '请输入违规内容',
                            }
                         },
                        // {label:'密码',prop:'password',type:'input',minWidth:'110',sortable: false,hidden:true,
                        //     form:{
                        //         //表单属性
                        //         span:12,
                        //         rules: [{ required: true, message: '密码必填项' }],
                        //         placeholder: '请输入密码',
                        //         showPassword:true,
                        //     }
                        //  },
                         // {label:'手机号',prop:'mobile',type:'input',minWidth:'100',sortable: false,hidden:false,
                         //    form:{
                         //        //表单属性
                         //        span:12,
                         //        rules: [{ required: true, message: '手机号必填项' }],
                         //        placeholder: '请输入手机号',
                         //        editDisabled:false,//编辑时是否禁用
                         //    }
                         // },
                         {label:'缴费状态',prop:'has_paid',type:'radio',minWidth:'100',sortable: false,hidden:false,
                             render: (row) =>{
                                let elTag = resolveComponent('el-tag')//全局组件需要先resolveComponent解析该组件再render渲染，不然该标签会出现原样输出
                                if(!row.has_paid){
                                    return h(elTag, {
                                      type:'warning'
                                    },()=>'未缴费');//用()=>函数方式返回文本值，避免出现console警告：默认槽位遇到非函数值
                                }else {
                                    return h(elTag, {
                                      type:'success'
                                    },()=>'已缴费');
                                }
                              },
                             form:{
                                 //表单属性
                                 span:24,
                                 options:templateData.STATUS_BOOL,//radio选项属性值
                                 defaultValue:true,//新增时的默认值
                                 // valueChange(e){//值变化回调事件
                                 //     console.log(e,'---变化的值')
                                 // },
                             }
                         },
                         {label:'创建时间',prop:'violation_time',minWidth:'150',sortable: false,hidden:false},
                    ],
                },

            }
        },
        methods:{
            setFull(){
                this.$refs.lycrud.setFull()
            },
            //自定义操作列按钮方法
            handleClick(row,flag){
                let vm = this
                if(flag=='disable'){
                    ViolationPaid({id:row.id}).then(res=>{
                        if(res.code == 2000) {
                            vm.$message.success(res.msg)
                            vm.$refs.lycrud.handleRefresh()//刷新表格数据
                        } else {
                            vm.$message.warning(res.msg)
                        }
                    })
                }
            },
        },
    }
</script>

<style scoped>

</style>