SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- Game Space Mapping Project 0.1
-- Database: gamera
-- 

-- --------------------------------------------------------

--
-- Table structure for table auth_group
--

CREATE TABLE IF NOT EXISTS auth_group (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(80) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY name (name)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table auth_group_permissions
--

CREATE TABLE IF NOT EXISTS auth_group_permissions (
  id int(11) NOT NULL AUTO_INCREMENT,
  group_id int(11) NOT NULL,
  permission_id int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY group_id (group_id,permission_id),
  KEY auth_group_permissions_bda51c3c (group_id),
  KEY auth_group_permissions_1e014c8f (permission_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table auth_permission
--

CREATE TABLE IF NOT EXISTS auth_permission (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(50) NOT NULL,
  content_type_id int(11) NOT NULL,
  codename varchar(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY content_type_id (content_type_id,codename),
  KEY auth_permission_e4470c6e (content_type_id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table auth_user
--

CREATE TABLE IF NOT EXISTS auth_user (
  id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(30) NOT NULL,
  first_name varchar(30) NOT NULL,
  last_name varchar(30) NOT NULL,
  email varchar(75) NOT NULL,
  password varchar(128) NOT NULL,
  is_staff tinyint(1) NOT NULL,
  is_active tinyint(1) NOT NULL,
  is_superuser tinyint(1) NOT NULL,
  last_login datetime NOT NULL,
  date_joined datetime NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY username (username)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table auth_user_groups
--

CREATE TABLE IF NOT EXISTS auth_user_groups (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  group_id int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY user_id (user_id,group_id),
  KEY auth_user_groups_fbfc09f1 (user_id),
  KEY auth_user_groups_bda51c3c (group_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table auth_user_user_permissions
--

CREATE TABLE IF NOT EXISTS auth_user_user_permissions (
  id int(11) NOT NULL AUTO_INCREMENT,
  user_id int(11) NOT NULL,
  permission_id int(11) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY user_id (user_id,permission_id),
  KEY auth_user_user_permissions_fbfc09f1 (user_id),
  KEY auth_user_user_permissions_1e014c8f (permission_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table books_book
--

CREATE TABLE IF NOT EXISTS books_book (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(256) NOT NULL,
  pub_date date NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table delicious_tags
--

CREATE TABLE IF NOT EXISTS delicious_tags (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tag varchar(255) DEFAULT NULL,
  active tinyint(4) NOT NULL DEFAULT '1',
  bot smallint(5) unsigned NOT NULL DEFAULT '0',
  priority float(9,2) NOT NULL DEFAULT '0.00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tag)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=427 ;

-- --------------------------------------------------------

--
-- Table structure for table delicious_tag_cats
--

CREATE TABLE IF NOT EXISTS delicious_tag_cats (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  acronym varchar(255) DEFAULT NULL,
  category varchar(255) DEFAULT NULL,
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY acronym (acronym),
  KEY category (category)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table delicious_tag_cat_rels
--

CREATE TABLE IF NOT EXISTS delicious_tag_cat_rels (
  cat_id bigint(20) unsigned NOT NULL DEFAULT '0',
  tag_id bigint(20) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (cat_id,tag_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table django_content_type
--

CREATE TABLE IF NOT EXISTS django_content_type (
  id int(11) NOT NULL AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  app_label varchar(100) NOT NULL,
  model varchar(100) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY app_label (app_label,model)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table django_session
--

CREATE TABLE IF NOT EXISTS django_session (
  session_key varchar(40) NOT NULL,
  session_data longtext NOT NULL,
  expire_date datetime NOT NULL,
  PRIMARY KEY (session_key),
  KEY django_session_c25c2c28 (expire_date)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table django_site
--

CREATE TABLE IF NOT EXISTS django_site (
  id int(11) NOT NULL AUTO_INCREMENT,
  domain varchar(100) NOT NULL,
  name varchar(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table flickr_tags
--

CREATE TABLE IF NOT EXISTS flickr_tags (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tag varchar(255) DEFAULT NULL,
  active tinyint(4) NOT NULL DEFAULT '1',
  bot smallint(5) unsigned NOT NULL DEFAULT '0',
  priority float(9,2) NOT NULL DEFAULT '0.00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tag)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=427 ;

-- --------------------------------------------------------

--
-- Table structure for table flickr_tag_cats
--

CREATE TABLE IF NOT EXISTS flickr_tag_cats (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  acronym varchar(255) DEFAULT NULL,
  category varchar(255) DEFAULT NULL,
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY acronym (acronym),
  KEY category (category)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table flickr_tag_cat_rels
--

CREATE TABLE IF NOT EXISTS flickr_tag_cat_rels (
  cat_id bigint(20) unsigned NOT NULL DEFAULT '0',
  tag_id bigint(20) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (cat_id,tag_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table polls_choice
--

CREATE TABLE IF NOT EXISTS polls_choice (
  id int(11) NOT NULL AUTO_INCREMENT,
  poll_id int(11) NOT NULL,
  choice_text varchar(200) NOT NULL,
  votes int(11) NOT NULL,
  PRIMARY KEY (id),
  KEY polls_choice_763e883 (poll_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table polls_poll
--

CREATE TABLE IF NOT EXISTS polls_poll (
  id int(11) NOT NULL AUTO_INCREMENT,
  question varchar(200) NOT NULL,
  pub_date datetime NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_hashtags
--

CREATE TABLE IF NOT EXISTS twitter_hashtags (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  hashtag varchar(255) DEFAULT NULL,
  hashtag_cnt bigint(20) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (hashtag)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_screen_names
--

CREATE TABLE IF NOT EXISTS twitter_screen_names (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  screen_name varchar(255) DEFAULT NULL,
  screen_name_cnt bigint(20) unsigned NOT NULL DEFAULT '0',
  verified tinyint(4) NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (screen_name)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_tags
--

CREATE TABLE IF NOT EXISTS twitter_tags (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tag varchar(255) DEFAULT NULL,
  active tinyint(4) NOT NULL DEFAULT '1',
  bot smallint(5) unsigned NOT NULL DEFAULT '0',
  priority float(9,2) NOT NULL DEFAULT '0.00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tag)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_tags_results
--

CREATE TABLE IF NOT EXISTS twitter_tags_results (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tag_id bigint(20) unsigned NOT NULL DEFAULT '0',
  twitter_results bigint(20) unsigned NOT NULL DEFAULT '0',
  added_results bigint(20) unsigned NOT NULL DEFAULT '0',
  begin_search bigint(20) unsigned NOT NULL DEFAULT '0',
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tag_id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37554 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_tag_cats
--

CREATE TABLE IF NOT EXISTS twitter_tag_cats (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  acronym varchar(255) DEFAULT NULL,
  category varchar(255) DEFAULT NULL,
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY acronym (acronym),
  KEY category (category)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_tag_cat_rels
--

CREATE TABLE IF NOT EXISTS twitter_tag_cat_rels (
  cat_id bigint(20) unsigned NOT NULL DEFAULT '0',
  tag_id bigint(20) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (cat_id,tag_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table twitter_tiny_urls
--

CREATE TABLE IF NOT EXISTS twitter_tiny_urls (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tiny_url varchar(255) NOT NULL DEFAULT '',
  url varchar(255) DEFAULT NULL,
  url_cnt bigint(20) unsigned NOT NULL DEFAULT '0',
  verified tinyint(4) NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tiny_url)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_tweets
--

CREATE TABLE IF NOT EXISTS twitter_tweets (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  from_user_id bigint(20) unsigned NOT NULL DEFAULT '0',
  tweet varchar(255) DEFAULT NULL,
  slug char(29) DEFAULT NULL,
  geo varchar(255) NOT NULL,
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tweet),
  KEY slug (slug)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

-- --------------------------------------------------------

--
-- Table structure for table twitter_users
--

CREATE TABLE IF NOT EXISTS twitter_users (
  id bigint(20) unsigned NOT NULL DEFAULT '0',
  name varchar(255) NOT NULL DEFAULT '''''',
  screen_name varchar(255) NOT NULL DEFAULT '''''',
  location varchar(255) NOT NULL DEFAULT '''''',
  lat double NOT NULL,
  long double NOT NULL,
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  followers_count int(11) unsigned NOT NULL DEFAULT '0',
  verified tinyint(4) NOT NULL DEFAULT '0',
  geo_enabled tinyint(4) NOT NULL DEFAULT '0',
  description text NOT NULL,
  time_zone varchar(255) NOT NULL DEFAULT '',
  friends_count int(11) unsigned NOT NULL DEFAULT '0',
  statuses_count int(11) unsigned NOT NULL DEFAULT '0',
  tweet_freq float NOT NULL DEFAULT '0',
  bot_count int(11) unsigned NOT NULL DEFAULT '0',
  protected tinyint(4) NOT NULL DEFAULT '0',
  utc_offset int(11) NOT NULL DEFAULT '0',
  notifications varchar(255) NOT NULL DEFAULT '''''',
  lang char(2) NOT NULL DEFAULT '''''',
  following varchar(255) NOT NULL DEFAULT '''''',
  favourites_count int(10) unsigned NOT NULL DEFAULT '0',
  url varchar(255) NOT NULL DEFAULT '''''',
  contributors_enabled tinyint(4) NOT NULL DEFAULT '0',
  is_translator tinyint(4) NOT NULL DEFAULT '0',
  listed_count int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  KEY screen_name (screen_name)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table youtube_cat_rels
--

CREATE TABLE IF NOT EXISTS youtube_cat_rels (
  cat_id bigint(20) unsigned NOT NULL DEFAULT '0',
  video_id varchar(255) NOT NULL DEFAULT '',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (cat_id,video_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table youtube_tags


CREATE TABLE IF NOT EXISTS tagsaurus_tags (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tag varchar(255) DEFAULT NULL,
  active tinyint(4) NOT NULL DEFAULT '1',
  bot smallint(5) unsigned NOT NULL DEFAULT '0',
  priority float(9,2) NOT NULL DEFAULT '0.00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tag)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--

CREATE TABLE IF NOT EXISTS youtube_tags (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tag varchar(255) DEFAULT NULL,
  active tinyint(4) NOT NULL DEFAULT '1',
  bot smallint(5) unsigned NOT NULL DEFAULT '0',
  priority float(9,2) NOT NULL DEFAULT '0.00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tag)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table youtube_tag_cats
--

CREATE TABLE IF NOT EXISTS youtube_tag_cats (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  acronym varchar(255) DEFAULT NULL,
  category varchar(255) DEFAULT NULL,
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY acronym (acronym),
  KEY category (category)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=241 ;

-- --------------------------------------------------------

--
-- Table structure for table youtube_tag_cat_rels
--

CREATE TABLE IF NOT EXISTS youtube_tag_cat_rels (
  cat_id bigint(20) unsigned NOT NULL DEFAULT '0',
  tag_id bigint(20) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (cat_id,tag_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table youtube_videos
--

CREATE TABLE IF NOT EXISTS youtube_videos (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  video_id varchar(255) NOT NULL DEFAULT '',
  title varchar(255) NOT NULL DEFAULT '',
  description text NOT NULL,
  watch_page varchar(255) NOT NULL DEFAULT '',
  swf_url varchar(255) NOT NULL DEFAULT '',
  view_count int(11) unsigned NOT NULL DEFAULT '0',
  rating float(9,2) NOT NULL DEFAULT '0.00',
  duration int(10) unsigned NOT NULL DEFAULT '0',
  published_on datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY video_id (video_id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;



--
-- Table structure for table dmoz_tags
--

CREATE TABLE IF NOT EXISTS dmoz_tags (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  tag varchar(255) DEFAULT NULL,
  active tinyint(4) NOT NULL DEFAULT '1',
  bot smallint(5) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  created_at datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY tag (tag)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table dmoz_tag_url_rels
--

CREATE TABLE IF NOT EXISTS dmoz_tag_url_rels (
  url_id bigint(20) unsigned NOT NULL DEFAULT '0',
  tag_id bigint(20) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (url_id,tag_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table dmoz_urls
--

CREATE TABLE IF NOT EXISTS dmoz_urls (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  url_domain varchar(255) NOT NULL DEFAULT '',
  url_domain_slug varchar(255) NOT NULL DEFAULT '',
  url varchar(255) NOT NULL DEFAULT '',
  url_slug varchar(255) NOT NULL DEFAULT '',
  url_cat varchar(1024) NOT NULL DEFAULT '',
  url_title varchar(255) NOT NULL DEFAULT '',
  url_content_type varchar(32) NOT NULL,
  url_visits int(11) unsigned NOT NULL DEFAULT '0',
  url_error_code int(11) unsigned NOT NULL DEFAULT '0',
  url_error_reason varchar(255) NOT NULL DEFAULT '',
  url_priority float(9,2) NOT NULL DEFAULT '0.00',
  url_created datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  last_modified datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  url_checked tinyint(1) unsigned NOT NULL DEFAULT '0',
  numbot int(4) unsigned NOT NULL DEFAULT '0',
  url_verified tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (id),
  KEY url_slug (url_slug),
  KEY url_domain_slug (url_domain_slug)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table dmoz_urls_meta
--

CREATE TABLE IF NOT EXISTS dmoz_urls_meta (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  url_id bigint(20) unsigned NOT NULL DEFAULT '0',
  meta_key varchar(255) DEFAULT NULL,
  meta_value longtext,
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY url_id (url_id),
  KEY meta_key (meta_key)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table dmoz_urls_source
--

CREATE TABLE IF NOT EXISTS dmoz_urls_source (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  url_source_id bigint(20) unsigned NOT NULL DEFAULT '0',
  url_link_id bigint(20) unsigned NOT NULL DEFAULT '0',
  last_update datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (id),
  KEY url_source_id (url_source_id),
  KEY url_link_id (url_link_id)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------


--
-- Constraints for dumped tables
--

--
-- Constraints for table auth_group_permissions
--
ALTER TABLE auth_group_permissions
  ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group (id),
  ADD CONSTRAINT permission_id_refs_id_a7792de1 FOREIGN KEY (permission_id) REFERENCES auth_permission (id);

--
-- Constraints for table auth_permission
--
ALTER TABLE auth_permission
  ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type (id);

--
-- Constraints for table auth_user_groups
--
ALTER TABLE auth_user_groups
  ADD CONSTRAINT user_id_refs_id_831107f1 FOREIGN KEY (user_id) REFERENCES auth_user (id),
  ADD CONSTRAINT group_id_refs_id_f0ee9890 FOREIGN KEY (group_id) REFERENCES auth_group (id);

--
-- Constraints for table auth_user_user_permissions
--
ALTER TABLE auth_user_user_permissions
  ADD CONSTRAINT user_id_refs_id_f2045483 FOREIGN KEY (user_id) REFERENCES auth_user (id),
  ADD CONSTRAINT permission_id_refs_id_67e79cb FOREIGN KEY (permission_id) REFERENCES auth_permission (id);

--
-- Constraints for table polls_choice
--
ALTER TABLE polls_choice
  ADD CONSTRAINT poll_id_refs_id_a27693dd FOREIGN KEY (poll_id) REFERENCES polls_poll (id);
