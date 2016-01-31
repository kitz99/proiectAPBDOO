CREATE TABLE PRIVACY(
  privacy_id number(6),
  privacy_type nvarchar2(255),
  CONSTRAINT priv_pk PRIMARY KEY (privacy_id)
);

CREATE TABLE LANGUAGE (
  language_id number(6),
  name nvarchar2(255),
  CONSTRAINT language_id_pk PRIMARY KEY (language_id)
);

CREATE TABLE APP_USER(
  user_id number(6),
  language_id number(6),
  username nvarchar2(255),
  password nvarchar2(255),
  first_name nvarchar2(255),
  last_name nvarchar2(255),
  email nvarchar2(255),
  created_at date,
  CONSTRAINT user_id_pk PRIMARY KEY (user_id),
  CONSTRAINT lang_fk FOREIGN KEY(language_id) references LANGUAGE(language_id)
);

CREATE TABLE COUNTRY (
  country_id number(6),
  privacy_id number(6),
  country nvarchar2(255),
  CONSTRAINT country_id_pk PRIMARY KEY(country_id),
  CONSTRAINT prof_country_fk FOREIGN KEY(privacy_id) REFERENCES PRIVACY(privacy_id)
);

CREATE TABLE COUNTY (
  county_id number(6),
  country_id number(6),
  privacy_id number(6),
  county nvarchar2(255),
  CONSTRAINT county_id_pk PRIMARY KEY(county_id),
  CONSTRAINT county_country_fk FOREIGN KEY(country_id) REFERENCES COUNTRY(country_id),
  CONSTRAINT county_privacy_fk  FOREIGN KEY(privacy_id) REFERENCES PRIVACY(privacy_id)
);

CREATE TABLE CITY (
  city_id number(6),
  county_id number(6),
  privacy_id number(6),
  city nvarchar2(255),
  CONSTRAINT city_id_pk PRIMARY KEY (city_id),
  CONSTRAINT county_city_fk FOREIGN KEY (county_id) REFERENCES COUNTY(county_id),
  CONSTRAINT city_privacy_fk  FOREIGN KEY(privacy_id) REFERENCES PRIVACY(privacy_id)
);

CREATE TABLE USER_PROFILE(
  profile_id number(6),
  user_id number(6),
  privacy_id number(6),
  city_id number(6),
  date_of_birth date,
  about_me nvarchar2(255),
  education nvarchar2(255),
  hobbies nvarchar2(255),
  fav_movies nvarchar2(255),
  fav_artists nvarchar2(255),
  fav_books nvarchar2(255),
  address nvarchar2(255),
  CONSTRAINT profile_id_pk PRIMARY KEY (profile_id),
  CONSTRAINT user_profile_fk FOREIGN KEY (user_id) REFERENCES APP_USER(user_id),
  CONSTRAINT prof_priv_fk FOREIGN KEY (privacy_id) REFERENCES PRIVACY(privacy_id),
  CONSTRAINT prof_city_fk FOREIGN KEY (city_id) REFERENCES CITY(city_id)
);

CREATE TABLE STATUS (
  status_id number(6),
  user_id number(6),
  privacy_id number(6),
  status_content NVARCHAR2(255),
  created_at date,
  updated_at date,
  CONSTRAINT status_pk PRIMARY KEY (status_id),
  CONSTRAINT status_user_fk FOREIGN KEY (user_id) REFERENCES APP_USER(user_id),
  CONSTRAINT status_privacy_fk  FOREIGN KEY(privacy_id) REFERENCES PRIVACY(privacy_id)
);

CREATE TABLE ALBUM(
  album_id number(6),
  user_id number(6),
  privacy_id number(6),
  name nvarchar2(255),
  description nvarchar2(255),
  created_at date,
  updated_at date,
  CONSTRAINT album_pk PRIMARY KEY (album_id),
  CONSTRAINT album_user_fk FOREIGN KEY (user_id) REFERENCES APP_USER(user_id),
  CONSTRAINT album_privacy_fk FOREIGN KEY(privacy_id) REFERENCES PRIVACY(privacy_id)
);

CREATE TABLE PICTURE(
  picture_id number(6),
  album_id number(6),
  privacy_id number(6),
  description nvarchar2(255),
  created_at date,
  updated_at date,
  is_album_cover nchar(1),
  is_profile_picture nchar(1),
  CONSTRAINT pic_pk PRIMARY KEY (picture_id),
  CONSTRAINT pic_album_fk FOREIGN KEY (album_id) REFERENCES ALBUM(album_id),
  CONSTRAINT pic_privacy_fk FOREIGN KEY(privacy_id) REFERENCES PRIVACY(privacy_id)
);


