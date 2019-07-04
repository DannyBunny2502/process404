CREATE TABLE `events` (
`event_id` int(11) NOT NULL AUTO_INCREMENT,
`event_name` varchar(127) NOT NULL,
`start_date` datetime NOT NULL,
`end_date` datetime NOT NULL,
PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `events` VALUES ('1', 'Event from db #1', '2013-01-23 05:00:00', '2013-01-23 09:00:00');
INSERT INTO `events` VALUES ('2', 'Event from db #2', '2013-01-24 05:00:00', '2013-01-24 09:00:00');
INSERT INTO `events` VALUES ('3', 'Event from db #3', '2013-01-25 05:00:00', '2013-01-25 09:00:00');