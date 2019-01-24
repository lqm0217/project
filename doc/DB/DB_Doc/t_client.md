# t_client(t_client)
| 列名   | 类型   | KEY  | 可否为空 | 注释   |
| ---- | ---- | ---- | ---- | ---- |
|client_id|int(5) unsigned|PRI|否||
|client_full_name|varchar(100)||否||
|client_disp_name|varchar(40)|UNI|否||
|client_country|varchar(20)||否||
|client_address|varchar(100)||否||
|client_del|varchar(12)||否||
|sys_create_datetime|datetime||否||
|sys_create_staff|varchar(32)||否||
|sys_update_datetime|datetime||是||
|sys_update_staff|varchar(32)||是||
