# t_attendance(t_attendance)
| 列名   | 类型   | KEY  | 可否为空 | 注释   |
| ---- | ---- | ---- | ---- | ---- |
|attendance_id|bigint(20) unsigned|PRI|否||
|staff_id|int(10) unsigned|MUL|否||
|attendance_day|date||否||
|attendance_start_time|datetime||否||
|attendance_end_time|datetime||是||
|attendance_comment|varchar(100)||是||
|sys_create_datetime|datetime||否||
|sys_create_staff|varchar(32)||否||
|sys_update_datetime|datetime||是||
|sys_update_staff|varchar(32)||是||
