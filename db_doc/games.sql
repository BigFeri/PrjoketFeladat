CREATE database Games
  CHARACTER SET utf8
  collate utf8_hungarian_ci;


create table games (
  id int(11) not null auto_increment
  GNames varchat(255) not full
  TId int(11) 
  MorS varchat(50) not null
  primary key(Tid)
  )
  engine = INNODB;

create table types (
  id int(11) not null auto_increment
  TName varchat(255) not full
  primary key(id)
  )
;

select * from games;
select * from types;



insert into games
  (id, GNames, Tid, MorS)
  values
  (1, 'Two Point Hospital', 6, 'Singleplayer'),
  (2, 'Metal Gear Solid 5: The Phantom Pain', 1, 'Singeplayer/Multiplayer'),
  (3, 'Mortal Kombat 11', 2, 'Singleplayer/Multiplayer'),
  (4, 'Apex Legends', 4, 'Multiplayer'),
  (5, 'Fifa Series', 3, 'Singleplayer/Multiplayer'),
  (6, 'Minecraft', 5, 'Singleplayer/Multiplayer');




insert into types 
  (id, TName)
  VALUES
  (1,'Action'),
  (2,'Fighting'),
  (3,'Sports'),
  (4,'Shooter'),
  (5,'Sandbox/Open world'),
  (6,'Simulation');
 



