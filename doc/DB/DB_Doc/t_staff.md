# t_staff(t_staff)
| 列名   | 类型   | KEY  | 可否为空 | 注释   |
| ---- | ---- | ---- | ---- | ---- |
|staff_id|int(10) unsigned|PRI|否||
|staff_name|varchar(20)||否||
|employee_id|varchar(20)||否||
|password|varchar(20)||否||
|sex|tinyint(1) unsigned||否||
|level|tinyint(2) unsigned||否||
|status_flag|tinyint(1) unsigned||否||
|start_date|date||否||
|end_date|date||是||
|sys_create_datetime|datetime||否||
|sys_create_staff|varchar(32)||否||
|sys_update_datetime|datetime||是||
|sys_update_staff|varchar(32)||是||
