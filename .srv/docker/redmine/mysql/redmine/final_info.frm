TYPE=VIEW
query=select `i`.`id` AS `issue`,`i`.`subject` AS `subject`,`i`.`description` AS `description`,`t`.`name` AS `tracker`,`i_s`.`name` AS `status`,date_format(`i`.`closed_date`,\'%Y-%m-%d\') AS `closed_on`,`p`.`name` AS `project`,`c_f`.`name` AS `customer`,round(sum(`t_e`.`hours`),2) AS `expended_time`,if(isnull(`i`.`estimated_hours`),0,`i`.`estimated_hours`) AS `estimated_time` from ((((((`redmine`.`issues` `i` join `redmine`.`trackers` `t` on((`t`.`id` = `i`.`tracker_id`))) join `redmine`.`issue_statuses` `i_s` on((`i`.`status_id` = `i_s`.`id`))) left join `redmine`.`projects` `p` on((`i`.`project_id` = `p`.`id`))) left join `redmine`.`custom_values` `c_v` on((`i`.`id` = `c_v`.`customized_id`))) join `redmine`.`custom_fields` `c_f` on((`c_v`.`custom_field_id` = `c_f`.`id`))) join `redmine`.`time_entries` `t_e` on((`t_e`.`issue_id` = `i`.`id`))) group by `i`.`id`
md5=71a466f81c9de4ca62f70fd3bfbb641b
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2016-08-05 22:02:41
create-version=2
source=select `i`.`id` AS `issue`,`i`.`subject` AS `subject`,`i`.`description` AS `description`,`t`.`name` AS `tracker`,`i_s`.`name` AS `status`,date_format(`i`.`closed_date`,\'%Y-%m-%d\') AS `closed_on`,`p`.`name` AS `project`,`c_f`.`name` AS `customer`,round(sum(`t_e`.`hours`),2) AS `expended_time`,if(isnull(`i`.`estimated_hours`),0,`i`.`estimated_hours`) AS `estimated_time` from ((((((`issues` `i` join `trackers` `t` on((`t`.`id` = `i`.`tracker_id`))) join `issue_statuses` `i_s` on((`i`.`status_id` = `i_s`.`id`))) left join `projects` `p` on((`i`.`project_id` = `p`.`id`))) left join `custom_values` `c_v` on((`i`.`id` = `c_v`.`customized_id`))) join `custom_fields` `c_f` on((`c_v`.`custom_field_id` = `c_f`.`id`))) join `time_entries` `t_e` on((`t_e`.`issue_id` = `i`.`id`))) group by `i`.`id`
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `i`.`id` AS `issue`,`i`.`subject` AS `subject`,`i`.`description` AS `description`,`t`.`name` AS `tracker`,`i_s`.`name` AS `status`,date_format(`i`.`closed_date`,\'%Y-%m-%d\') AS `closed_on`,`p`.`name` AS `project`,`c_f`.`name` AS `customer`,round(sum(`t_e`.`hours`),2) AS `expended_time`,if(isnull(`i`.`estimated_hours`),0,`i`.`estimated_hours`) AS `estimated_time` from ((((((`redmine`.`issues` `i` join `redmine`.`trackers` `t` on((`t`.`id` = `i`.`tracker_id`))) join `redmine`.`issue_statuses` `i_s` on((`i`.`status_id` = `i_s`.`id`))) left join `redmine`.`projects` `p` on((`i`.`project_id` = `p`.`id`))) left join `redmine`.`custom_values` `c_v` on((`i`.`id` = `c_v`.`customized_id`))) join `redmine`.`custom_fields` `c_f` on((`c_v`.`custom_field_id` = `c_f`.`id`))) join `redmine`.`time_entries` `t_e` on((`t_e`.`issue_id` = `i`.`id`))) group by `i`.`id`
mariadb-version=100116
