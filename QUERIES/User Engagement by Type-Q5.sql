SELECT 
    engagement_type, 
    COUNT(*) AS count 
FROM 
    user_engagements 
GROUP BY 
    engagement_type 
ORDER BY 
    count DESC;
