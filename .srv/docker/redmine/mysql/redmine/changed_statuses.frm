TYPE=VIEW
query=select `j`.`id` AS `journal_id`,`i`.`id` AS `issue`,`i`.`subject` AS `subject`,`i`.`description` AS `description`,`p`.`name` AS `project`,`i_s`.`name` AS `old_status`,`istat`.`name` AS `new_status`,concat(`u`.`firstname`,\' \',`u`.`lastname`) AS `created_by`,date_format(`i`.`created_on`,\'%Y-%m-%d\') AS `created_on`,if(isnull(`i`.`assigned_to_id`),concat(`u`.`firstname`,\' \',`u`.`lastname`),concat(`usr`.`firstname`,\' \',`usr`.`lastname`)) AS `assigned_to`,`i`.`start_date` AS `assigned_on` from (((((((`redmine`.`issues` `i` join `redmine`.`projects` `p` on((`i`.`project_id` = `p`.`id`))) join `redmine`.`users` `u` on((`i`.`author_id` = `u`.`id`))) left join `redmine`.`users` `usr` on((`i`.`assigned_to_id` = `usr`.`id`))) join `redmine`.`journals` `j` on((`i`.`id` = `j`.`journalized_id`))) join `redmine`.`journal_details` `j_d` on((`j_d`.`journal_id` = `j`.`id`))) join `redmine`.`issue_statuses` `i_s` on((`i_s`.`id` = `j_d`.`old_value`))) join `redmine`.`issue_statuses` `istat` on((`istat`.`id` = `j_d`.`value`))) where ((`j`.`journalized_type` = \'Issue\') and (`j_d`.`prop_key` = \'status_id\'))
md5=6512f4d35bd7bb3e55b769b5979dfeb4
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=1
with_check_option=0
timestamp=2016-08-05 22:02:41
create-version=2
source=select `j`.`id` AS `journal_id`,`i`.`id` AS `issue`,`i`.`subject` AS `subject`,`i`.`description` AS `description`,`p`.`name` AS `project`,`i_s`.`name` AS `old_status`,`istat`.`name` AS `new_status`,concat(`u`.`firstname`,\' \',`u`.`lastname`) AS `created_by`,date_format(`i`.`created_on`,\'%Y-%m-%d\') AS `created_on`,if(isnull(`i`.`assigned_to_id`),concat(`u`.`firstname`,\' \',`u`.`lastname`),concat(`usr`.`firstname`,\' \',`usr`.`lastname`)) AS `assigned_to`,`i`.`start_date` AS `assigned_on` from (((((((`issues` `i` join `projects` `p` on((`i`.`project_id` = `p`.`id`))) join `users` `u` on((`i`.`author_id` = `u`.`id`))) left join `users` `usr` on((`i`.`assigned_to_id` = `usr`.`id`))) join `journals` `j` on((`i`.`id` = `j`.`journalized_id`))) join `journal_details` `j_d` on((`j_d`.`journal_id` = `j`.`id`))) join `issue_statuses` `i_s` on((`i_s`.`id` = `j_d`.`old_value`))) join `issue_statuses` `istat` on((`istat`.`id` = `j_d`.`value`))) where ((`j`.`journalized_type` = \'Issue\') and (`j_d`.`prop_key` = \'status_id\'))
client_cs_name=utf8
connection_cl_name=utf8_general_ci
view_body_utf8=select `j`.`id` AS `journal_id`,`i`.`id` AS `issue`,`i`.`subject` AS `subject`,`i`.`description` AS `description`,`p`.`name` AS `project`,`i_s`.`name` AS `old_status`,`istat`.`name` AS `new_status`,concat(`u`.`firstname`,\' \',`u`.`lastname`) AS `created_by`,date_format(`i`.`created_on`,\'%Y-%m-%d\') AS `created_on`,if(isnull(`i`.`assigned_to_id`),concat(`u`.`firstname`,\' \',`u`.`lastname`),concat(`usr`.`firstname`,\' \',`usr`.`lastname`)) AS `assigned_to`,`i`.`start_date` AS `assigned_on` from (((((((`redmine`.`issues` `i` join `redmine`.`projects` `p` on((`i`.`project_id` = `p`.`id`))) join `redmine`.`users` `u` on((`i`.`author_id` = `u`.`id`))) left join `redmine`.`users` `usr` on((`i`.`assigned_to_id` = `usr`.`id`))) join `redmine`.`journals` `j` on((`i`.`id` = `j`.`journalized_id`))) join `redmine`.`journal_details` `j_d` on((`j_d`.`journal_id` = `j`.`id`))) join `redmine`.`issue_statuses` `i_s` on((`i_s`.`id` = `j_d`.`old_value`))) join `redmine`.`issue_statuses` `istat` on((`istat`.`id` = `j_d`.`value`))) where ((`j`.`journalized_type` = \'Issue\') and (`j_d`.`prop_key` = \'status_id\'))
mariadb-version=100116