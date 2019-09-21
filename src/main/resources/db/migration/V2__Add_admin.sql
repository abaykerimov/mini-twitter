insert into user (id, username, password, active)
  values (1, 'admin', '$2y$12$Kt4EYsxE/7I5rOKsq/SHfuKAitUIS5.S0PsIvRbCrWUbQIS5ysmgm', true);

insert into user_role (user_id, roles)
  values (1, 'USER'), (1, 'ADMIN');