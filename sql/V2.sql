CREATE TABLE articles_tags (
  `article_id` int(11),
  `tag_id` int(11)
);



CREATE TABLE blogs (
  `id` int(11) auto_increment PRIMARY KEY,
  `settings` text,
  `base_url` varchar(255)
);

CREATE TABLE categories (
  `id` int(11) auto_increment PRIMARY KEY,
  `name` varchar(255),
  `position` int(11),
  `permalink` varchar(255)
);

CREATE TABLE contents (
  `id` int(11) auto_increment PRIMARY KEY,
  `type` varchar(255),
  `title` varchar(255),
  `author` varchar(255),
  `body` text,
  `extended` text,
  `excerpt` text,
  `keywords` varchar(255),
  `created_at` datetime,
  `updated_at` datetime,
  `user_id` int(11),
  `permalink` varchar(255),
  `guid` varchar(255),
  `text_filter_id` int(11),
  `whiteboard` text,
  `article_id` int(11),
  `email` varchar(255),
  `url` varchar(255),
  `ip` varchar(40),
  `blog_name` varchar(255),
  `name` varchar(255),
  `published` tinyint(1) DEFAULT 0,
  `allow_pings` tinyint(1),
  `allow_comments` tinyint(1),
  `blog_id` int(11) NOT NULL,
  `published_at` datetime,
  `state` text,
  `status_confirmed` tinyint(1)
);

CREATE TABLE notifications (
  `notify_user_id` int(11),
  `notify_content_id` int(11),
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE page_caches (
  `id` int(11)  auto_increment PRIMARY KEY,
  `name` varchar(255)
);

CREATE TABLE pings (
  `id` int(11)  auto_increment PRIMARY KEY,
  `article_id` int(11),
  `url` varchar(255),
  `created_at` datetime
);

CREATE TABLE redirects (
  `id` int(11)  auto_increment PRIMARY KEY,
  `from_path` varchar(255),
  `to_path` varchar(255)
);

CREATE TABLE resources (
  `id` int(11)  auto_increment PRIMARY KEY,
  `size` int(11),
  `filename` varchar(255),
  `mime` varchar(255),
  `created_at` datetime,
  `updated_at` datetime,
  `article_id` int(11),
  `itunes_metadata` tinyint(1),
  `itunes_author` varchar(255),
  `itunes_subtitle` varchar(255),
  `itunes_duration` int(11),
  `itunes_summary` text,
  `itunes_keywords` varchar(255),
  `itunes_category` varchar(255),
  `itunes_explicit` tinyint(1)
);

CREATE TABLE sessions (
  `id` int(11)  auto_increment PRIMARY KEY,
  `sessid` varchar(255),
  `data` text,
  `created_at` datetime,
  `updated_at` datetime
);

CREATE TABLE sidebars (
  `id` int(11)  auto_increment PRIMARY KEY,
  `controller` varchar(255),
  `active_position` int(11),
  `config` text,
  `staged_position` int(11)
);

CREATE TABLE tags (
  `id` int(11)  auto_increment PRIMARY KEY,
  `name` varchar(255),
  `created_at` datetime,
  `updated_at` datetime,
  `display_name` varchar(255)
);

CREATE TABLE text_filters (
  `id` int(11)  auto_increment PRIMARY KEY,
  `name` varchar(255),
  `description` varchar(255),
  `markup` varchar(255),
  `filters` text,
  `params` text
);

CREATE TABLE triggers (
  `id` int(11)  auto_increment PRIMARY KEY,
  `pending_item_id` int(11),
  `pending_item_type` varchar(255),
  `due_at` datetime,
  `trigger_method` varchar(255)
);

CREATE TABLE users (
  `id` int(11)  auto_increment PRIMARY KEY,
  `login` varchar(255),
  `password` varchar(255),
  `email` text,
  `name` text,
  `notify_via_email` tinyint(1),
  `notify_on_new_articles` tinyint(1),
  `notify_on_comments` tinyint(1),
  `notify_watch_my_articles` tinyint(1),
  `notify_via_jabber` tinyint(1),
  `jabber` varchar(255)
);

