# t_project(t_project)
| 列名   | 类型   | KEY  | 可否为空 | 注释   |
| ---- | ---- | ---- | ---- | ---- |
|project_id|int(10) unsigned|PRI|否||
|project_name|varchar(255)||否||
|project_disp_name|varchar(50)||否||
|project_owner|varchar(32)||否||
|client_id|int(5) unsigned||否||
|start_date|date||否||
|end_date|date||是||
|status|tinyint(1) unsigned||否||
|sys_delete_flag|tinyint(1) unsigned||是||
|sys_create_datetime|datetime||否||
|sys_create_staff|varchar(32)||否||
|sys_update_datetime|datetime||是||
|sys_update_staff|varchar(32)||是||
