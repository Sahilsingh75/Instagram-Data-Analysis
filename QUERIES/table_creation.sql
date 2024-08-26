CREATE DATABASE instagram_analysis;
USE instagram_analysis;

-- Table for User Profiles
CREATE TABLE user_profiles (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    followers INT,
    following INT,
    total_posts INT,
    bio VARCHAR(255)
);

-- Table for Instagram Posts
CREATE TABLE instagram_posts (
    post_id INT PRIMARY KEY,
    post_date DATE,
    likes INT,
    comments INT,
    shares INT,
    reach INT,
    impressions INT,
    saves INT,
    hashtags VARCHAR(255)
);

-- Table for User Engagements
CREATE TABLE user_engagements (
    engagement_id INT PRIMARY KEY,
    post_id INT,
    user_id INT,
    engagement_type VARCHAR(20),
    engagement_date DATETIME,
    FOREIGN KEY (post_id) REFERENCES instagram_posts(post_id),
    FOREIGN KEY (user_id) REFERENCES user_profiles(user_id)
);
