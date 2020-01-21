-- indexes 

CREATE  INDEX `blacklist_patterns_pattern_index` ON blacklist_patterns (`pattern`);
CREATE  INDEX `categories_permalink_index` ON categories (`permalink`);
CREATE  INDEX `contents_blog_id_index` ON contents (`blog_id`);
CREATE  INDEX `contents_article_id_index` ON contents (`article_id`);
CREATE  INDEX `page_caches_name_index` ON page_caches (`name`);
CREATE  INDEX `pings_article_id_index` ON pings (`article_id`);
CREATE  INDEX `sessions_sessid_index` ON sessions (`sessid`);

-- data 

INSERT INTO sidebars (`config`, `staged_position`, `active_position`, `controller`) VALUES(NULL, NULL, 0, 'category');
INSERT INTO sidebars (`config`, `staged_position`, `active_position`, `controller`) VALUES(NULL, NULL, 1, 'static');
INSERT INTO sidebars (`config`, `staged_position`, `active_position`, `controller`) VALUES(NULL, NULL, 2, 'xml');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('none', '--- []
', 'None', '--- {}
', 'none');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('markdown', '--- []
', 'Markdown', '--- {}
', 'markdown');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('smartypants', '--- 
- :smartypants
', 'SmartyPants', '--- {}
', 'none');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('markdown smartypants', '--- 
- :smartypants
', 'Markdown with SmartyPants', '--- {}
', 'markdown');
INSERT INTO text_filters (`name`, `filters`, `description`, `params`, `markup`) VALUES('textile', '--- []
', 'Textile', '--- {}
', 'textile');

-- schema version meta-info 

CREATE TABLE schema_info (
  `version` int(11)
) TYPE=MyISAM;

insert into schema_info (version) values (53);
