CREATE TABLE USER(
  user_id number(6),
  language_id number(6),
  username nvarchar2(255),
  password nvarchar2(255),
  first_name nvarchar2(255),
  last_name nvarchar2(255),
  email nvarchar2(255),
  active nchar(1),
  created_at date,
  
  CONSTRAINT user_id_pk PRIMARY KEY (user_id,
  CONSTRAINT lang_fk FOREIGN KEY(language_id) references LANGUAGE(language_id)
);

CREATE TABLE PROFILE (
  profile_id number(6),
  user_id number(6),
  privacy_id number(6),
  city_id number(6),
  date_of_birth date,
  about_me nvarchar2(255),
  relationship nvarchar2(255),
  phone  nvarchar2(255),
  interests nvarchar2(255),
  education nvarchar2(255),
  hobbies  nvarchar2(255),
  fav_movies  nvarchar2(255),
  fav_artists  nvarchar2(255),
  fav_books  nvarchar2(255),
  address nvarchar2(255),

  CONSTRAINT profile_id_pk PRIMARY KEY (profile_id),
  CONSTRAINT user_profile_fk FOREIGN KEY (user_id) REFERENCES USER(user_id) 
  CONSTRAINT prof_priv_fk FOREIGN KEY (privacy_id) REFERENCES PRIVACY(privacy_id),
  CONSTRAINT prof_city_fk FOREIGN KEY (city_id) REFERENCES CITY(city_id),
);

CREATE TABLE CITY (
  city_id number(6),
  county_id number(6),
  privacy_id number(6) FOREIGN KEY REFERENCES PRIVACY(privacy_id),
  name nvarchar2(255),
  CONSTRAINT city_id_pk PRIMARY KEY (city_id), 
  CONSTRAINT county_city_fk FOREIGN KEY (county_id) REFERENCES COUNTY(county_id)
);

CREATE TABLE COUNTY (
  county_id number(6),
  country_id number(6),
  privacy_id number(6) FOREIGN KEY REFERENCES PRIVACY(privacy_id),
  name nvarchar2(255),
  CONSTRAINT county_id_pk PRIMARY KEY (county_id), 
  CONSTRAINT county_country_fk FOREIGN KEY (country_id) REFERENCES COUNTRY(country_id)
);

CREATE TABLE COUNTRY (
  country_id number(6),
  privacy_id number(6), 
  name nvarchar2(255),
  CONSTRAINT country_id_pk PRIMARY KEY (country_id),
  CONSTRAINT prof_country_fk FOREIGN KEY (privacy_id) REFERENCES PRIVACY(privacy_id),
);
 
CREATE TABLE LANGUAGE (
  language_id number(6),
  name nvarchar2(255),
  CONSTRAINT language_id_pk PRIMARY KEY (language_id)
);

CREATE TABLE FRIEND_LIST(
  friend_list_id number(6) PRIMARY KEY,
  user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  friend_user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  state nchar(1),
  created_at date
);

CREATE TABLE MESSAGE(
  message_id number(6),
  user_id number(6),
  friend_user_id number(6),
  message_content nvarchar2(255),
  created_at date,
  is_read nchar(1),
  is_spam nchar(1),

  CONSTRAINT message_id_pk PRIMARY KEY (message_id),
  CONSTRAINT mes_user_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT mes1_user_FK FOREIGN KEY (friend_user_id) REFERENCES USER(user_id)
);

CREATE TABLE STATUS (
  status_id number(6),
  user_id number(6),
  privacy_id number(6) FOREIGN KEY REFERENCES PRIVACY(privacy_id),
  status_content NVARCHAR2(255),
  created_at date,
  updated_at date,
  numberOfLikes int,
  CONSTRAINT status_pk PRIMARY KEY (status_id),
  CONSTRAINT status_user_fk FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE PRIVACY(
  privacy_id number(6),
  privacy_type nvarchar2(255),
  CONSTRAINT priv_pk PRIMARY KEY (privacy_id)
);


-- ALBUM TABLE
CREATE TABLE ALBUM(
  album_id number(6),
  user_id number(6),
  privacy_id number(6) FOREIGN KEY REFERENCES PRIVACY(privacy_id),
  name nvarchar2(255),
  description nvarchar2(255),
  created_at date,
  updated_at date,
  numberOfLikes int,
  CONSTRAINT album_pk PRIMARY KEY (album_id),
  CONSTRAINT album_user_fk FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

-- PICTURE table
CREATE TABLE PICTURE(
  picture_id number(6),
  album_id number(6),
  privacy_id number(6) FOREIGN KEY REFERENCES PRIVACY(privacy_id),
  description nvarchar2(255),
  created_at date,
  updated_at date,
  is_album_cover nchar(1),
  is_profile_picture nchar(1),
  numberOfLikes int,
  CONSTRAINT pic_pk PRIMARY KEY (picture_id),
  CONSTRAINT pic_album_fk FOREIGN KEY (album_id) REFERENCES ALBUM(album_id)
);


CREATE TABLE COMMENT(
  comment_id number(6),
  user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  comment_type nvarchar2(32), -- Type of the comment to know in what table need to look
  comment_type_id number(6),
  CONSTRAINT comm_pk PRIMARY KEY (comment_id)
);

-- comment-status
CREATE TABLE COMMENT_STATUS(
  comment_status_id number(6),
  user_id number(6),
  status_id number(6),
  comment_content nvarchar2(255), 
  created_at date,
  updated_at date,
  numberOfLikes int,
  CONSTRAINT cs_pk PRIMARY KEY (comment_status_id),
  CONSTRAINT cs_comUSR_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT status_cs_fk FOREIGN KEY (status_id) REFERENCES STATUS(status_id)
);

-- comment album
CREATE TABLE COMMENT_ALBUM(
  comment_album_id number(6),
  user_id number(6),
  album_id number(6),
  comment_content nvarchar2(255), 
  created_at date,
  updated_at date,
  numberOfLikes int,
  CONSTRAINT ca_pk PRIMARY KEY (comment_album_id),
  CONSTRAINT ca_comUSR_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT ca_album_fk FOREIGN KEY (album_id) REFERENCES ALBUM(album_id)
);

-- Comment picture
CREATE TABLE COMMENT_PICTURE(
  comment_picture_id number(6),
  user_id number(6),
  picture_id number(6),
  comment_content nvarchar2(255), 
  created_at date,
  updated_at date,
  numberOfLikes int,
  CONSTRAINT cp_pk PRIMARY KEY (comment_picture_id),
  CONSTRAINT cP_comm_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  constraint cp_pic_fk FOREIGN KEY (picture_id) REFERENCES PICTURE(picture_id)
);

-- LIKE table
CREATE TABLE LIKE(
  like_id number(6) CONSTRAINT l_nn NOT NULL,
  user_id number(6),
  like_type_id number(6),
  like_type nvarchar2(32),
  CONSTRAINT l_pk PRIMARY KEY (like_id),
  CONSTRAINT l_fr_fk FOREIGN KEY (user_id) REFERENCES USER(user_id) 
);

-- LIKE_status table
CREATE TABLE LIKE_STATUS(
  like_status_id number(6),
  user_id number(6),
  status_id number(6),
  created_at int,
  CONSTRAINT ls_pk PRIMARY KEY (like_status_id),
  CONSTRAINT ls_l_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT st_l_fk FOREIGN KEY (status_id) REFERENCES STATUS(status_id)
);

-- LIKE_comment
CREATE TABLE LIKE_COMMENT(
  like_comment_id number(6),
  user_id number(6),
  comment_id number(6),
  created_at int,
  CONSTRAINT lk_pk PRIMARY KEY (like_comment_id),
  CONSTRAINT l_lk_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT c_lk_fk FOREIGN KEY (comment_id) REFERENCES COMMENT(comment_id)
);

--LIKE album
CREATE TABLE LIKE_ALBUM(
  like_album_id number(6),
  user_id number(6),
  album_id number(6),
  created_at int,
  CONSTRAINT la_pk PRIMARY KEY (like_album_id),
  CONSTRAINT l_la_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT la_a_fk FOREIGN KEY (album_id) REFERENCES ALBUM(album_id)
);

CREATE TABLE LIKE_PICTURE(
  like_picture_id number(6),
  user_id number(6),
  picture_id number(6),
  created_at date,
  CONSTRAINT lp_pk PRIMARY KEY (like_picture_id),
  CONSTRAINT l_lp_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT lp_p_fk FOREIGN KEY (picture_id) REFERENCES PICTURE(picture_id)
);

-- EVENT TABLE
CREATE TABLE EVENT(
  event_id number(6),
  user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  city_id number(6) FOREIGN KEY REFERENCES CITY(city_id),
  name nvarchar2(255),
  description nvarchar2(255),
  address number(6),
  date date,
  created_at date,
  updated_at date,
  CONSTRAINT e_pk PRIMARY KEY(event_id),
);

CREATE TABLE PARTICIPATE_EVENT(
  participate_event_id number(6),
  event_id number(6),
  user_id number(6),
  CONSTRAINT ev_p_pk PRIMARY KEY (p_event_id),
  CONSTRAINT ev_p_fk FOREIGN KEY (event_id) REFERENCES EVENT(event_id),
  CONSTRAINT us_p_fk FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE FEED(
  feed_id number(6),
  user_id number(6),
  feed_type_id number(6),
  CONSTRAINT feed_pk PRIMARY KEY (feed_id),
  CONSTRAINT feed_u_fk FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE FEED_STATUS(
  feed_status_id number(6),
  status_id number(6),
  user_id number(6),
  CONSTRAINT feed_s_pk PRIMARY KEY (feed_status_id),
  CONSTRAINT fs_usr_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT fs_st_fk FOREIGN KEY (status_id) REFERENCES STATUS(status_id),
);

CREATE TABLE FEED_ALBUM(
  feed_album_id number(6),
  album_id number(6),
  user_id number(6),
  CONSTRAINT feed_a_pk PRIMARY KEY (feed_album_id),
  CONSTRAINT fa_al_fk FOREIGN KEY (album_id) REFERENCES ALBUM(album_id),
  CONSTRAINT fp_feed_fk FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE FEED_PICTURE(
  feed_picture_id number(6),
  picture_id number(6),
  user_id number(6),
  CONSTRAINT feed_p_pk PRIMARY KEY (feed_picture_id),
  CONSTRAINT fp_pic_fk FOREIGN KEY (picture_id) REFERENCES PICTURE(picture_id),
  CONSTRAINT fp_feed_fk FOREIGN KEY (user_id) REFERENCES USER(user_id)
);

CREATE TABLE FEED_EVENT(
  feed_event_id number(6),
  event_id number(6),
  user_id number(6),
  CONSTRAINT feed_e_pk PRIMARY KEY (feed_event_id),
  CONSTRAINT fe_usr_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT fe_ev_fk FOREIGN KEY (event_id) REFERENCES EVENT(event_id),
);

CREATE TABLE NOTIFICATION(
  notification_id number(6) PRIMARY KEY,
  user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  notification_type_id number(6),
  notification_type nvarchar2(32)
)

CREATE TABLE NOTIFICATION_COMMENT(
  notification_comment_id number(6),
  comment_id number(6),
  user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  content nvarchar2(255),
  CONSTRAINT not_comm_pk PRIMARY KEY (notification_comment_id),
  CONSTRAINT com_not_fk FOREIGN KEY (comment_id) REFERENCES COMMENT(comment_id)
);

CREATE TABLE NOTIFICATION_LIKE(
  notification_like_id number(6),
  like_id number(6),
  user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  content nvarchar2(255),
  CONSTRAINT not_lk_pk PRIMARY KEY (notification_like_id),
  CONSTRAINT lik_not_fk FOREIGN KEY (like_id) REFERENCES LIKE(like_id)
);

CREATE TABLE NOTIFICATION_FRIEND(
  notification_firend_id number(6),
  friend_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  user_id number(6) FOREIGN KEY REFERENCES USER(user_id),
  content nvarchar2(255),
  CONSTRAINT not_fr_pk PRIMARY KEY (notification_friend_id),
);
