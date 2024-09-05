SELECT 
    hashtags,
    AVG(likes) AS avg_likes,
    AVG(comments) AS avg_comments
FROM 
    instagram_posts
GROUP BY 
    hashtags
ORDER BY 
    avg_likes DESC;
