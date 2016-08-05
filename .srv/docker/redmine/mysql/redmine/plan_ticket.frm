TYPE=VIEW
query=select `i`.`id` AS `id`,concat(`u`.`firstname`,\' \',`u`.`lastname`) AS `username`,`e`.`name` AS `priority`,`t`.`name` AS `tracker`,`i`.`subject` AS `subject`,`p`.`name` AS `project`,`i`.`due_date` AS `due_date`,`s`.`name` AS `issue_status`,`i`.`estimated_hours` AS `estimated_hours`,`gr`.`lastname` AS `group_name` from (((((((`redmine`.`issues` `i` join `redmine`.`users` `u` on((`i`.`assigned_to_id` = `u`.`id`))) join `redmine`.`enumerations` `e` on((`e`.`id` = `i`.`priority_id`))) join `redmine`.`trackers` `t` on((`t`.`id` = `i`.`tracker_id`))) join `redmine`.`projects` `p` on((`p`.`id` = `i`.`project_id`))) join `redmine`.`issue_statuses` `s` on((`i`.`status_id` = `s`.`id`))) join `redmine`.`groups_users` `gu` on((`gu`.`user_id` = `u`.`id`))) join `redmine`.`users` `gr` on((`gr`.`id` = `gu`.`group_id`)))
md5=6a44755475a1014116d53adb9a065e5c
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2016-08-05 22:02:41
create-version=2
source=select `i`.`id` AS `id`,concat(`u`.`firstname`,\' \',`u`.`lastname`) AS `username`,`e`.`name` AS `priority`,`t`.`name` AS `tracker`,`i`.`subject` AS `subject`,`p`.`name` AS `project`,`i`.`due_date` AS `due_date`,`s`.`name` AS `issue_status`,`i`.`estimated_hours` AS `estimated_hours`,`gr`.`lastname` AS `group_name` from (((((((`issues` `i` join `users` `u` on((`i`.`assigned_to_id` = `u`.`id`))) join `enumerations` `e` on((`e`.`id` = `i`.`priority_id`))) join `trackers` `t` on((`t`.`id` = `i`.`tracker_id`))) join `projects` `p` on((`p`.`id` = `i`.`project_id`))) join `issue_statuses` `s` on((`i`.`status_id` = `s`.`id`))) join `groups_users` `gu` on((`gu`.`user_id` = `u`.`id`))) join `users` `gr` on((`gr`.`id` = `gu`.`group_id`)))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `i`.`id` AS `id`,concat(`u`.`firstname`,\' \',`u`.`lastname`) AS `username`,`e`.`name` AS `priority`,`t`.`name` AS `tracker`,`i`.`subject` AS `subject`,`p`.`name` AS `project`,`i`.`due_date` AS `due_date`,`s`.`name` AS `issue_status`,`i`.`estimated_hours` AS `estimated_hours`,`gr`.`lastname` AS `group_name` from (((((((`redmine`.`issues` `i` join `redmine`.`users` `u` on((`i`.`assigned_to_id` = `u`.`id`))) join `redmine`.`enumerations` `e` on((`e`.`id` = `i`.`priority_id`))) join `redmine`.`trackers` `t` on((`t`.`id` = `i`.`tracker_id`))) join `redmine`.`projects` `p` on((`p`.`id` = `i`.`project_id`))) join `redmine`.`issue_statuses` `s` on((`i`.`status_id` = `s`.`id`))) join `redmine`.`groups_users` `gu` on((`gu`.`user_id` = `u`.`id`))) join `redmine`.`users` `gr` on((`gr`.`id` = `gu`.`group_id`)))
mariadb-version=100116
