SELECT 
    up.user_id, 
    up.username, 
    up.followers, 
    up.following, 
    up.total_posts,
    COUNT(ue.engagement_id) AS total_engagements, 
    AVG(ip.likes) AS avg_likes, 
    AVG(ip.comments) AS avg_comments
FROM 
    user_profiles up
LEFT JOIN 
    user_engagements ue ON up.user_id = ue.user_id
LEFT JOIN 
    instagram_posts ip ON ue.post_id = ip.post_id
WHERE 
    up.bio LIKE '%foodie%' 
GROUP BY 
    up.user_id, 
    up.username, 
    up.followers, 
    up.following, 
    up.total_posts
ORDER BY 
    total_engagements DESC;
