# t_staff_charge(t_staff_charge)
| 列名   | 类型   | KEY  | 可否为空 | 注释   |
| ---- | ---- | ---- | ---- | ---- |
|staff_charge_id|bigint(20) unsigned|PRI|否||
|staff_id|int(10) unsigned|MUL|否||
|charge_day|date||否||
|charge_code|varchar(10)||否||
|charge_hours|int(2)||是||
|charge_comment|varchar(100)||是||
|sys_create_datetime|datetime||否||
|sys_create_staff|varchar(32)||否||
|sys_update_datetime|datetime||是||
|sys_update_staff|varchar(32)||是||
