# t_project_staff(t_project_staff)
| 列名   | 类型   | KEY  | 可否为空 | 注释   |
| ---- | ---- | ---- | ---- | ---- |
|project_staff_id|int(10) unsigned|PRI|否||
|project_id|int(10) unsigned|MUL|否||
|staff_id|int(10) unsigned||否||
|career_level|tinyint(2) unsigned||否||
|assgin_start_date|date||否||
|assgin_end_date|date||是||
|assgin_team|varchar(50)||是||
|assgin_status|tinyint(1) unsigned||否||
|sys_delete_flag|tinyint(1) unsigned||否||
|sys_create_datetime|datetime||否||
|sys_create_staff|varchar(32)||否||
|sys_update_datetime|datetime||是||
|sys_update_staff|varchar(32)||是||
