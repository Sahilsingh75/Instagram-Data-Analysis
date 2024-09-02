use instagram_analysis;

SELECT 
    up.username, 
    COUNT(ue.engagement_id) AS total_engagements 
FROM 
    user_profiles up 
JOIN 
    user_engagements ue ON up.user_id = ue.user_id 
GROUP BY 
    up.username 
ORDER BY 
    total_engagements DESC 
LIMIT 10;
