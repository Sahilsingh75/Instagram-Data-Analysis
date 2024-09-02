SELECT 
    ip.post_id, 
    ip.post_date, 
    ip.likes, 
    ip.comments, 
    ip.shares, 
    ip.saves,
    (ip.likes * 0.4 + ip.comments * 0.3 + ip.shares * 0.2 + ip.saves * 0.1) AS engagement_score,
    COUNT(ue.engagement_id) AS total_engagements
FROM 
    instagram_posts ip
LEFT JOIN 
    user_engagements ue ON ip.post_id = ue.post_id
GROUP BY 
    ip.post_id, 
    ip.post_date, 
    ip.likes, 
    ip.comments, 
    ip.shares, 
    ip.saves
HAVING 
    engagement_score > 50 -- Filter for posts with significant engagement score
ORDER BY 
    engagement_score DESC, total_engagements DESC
LIMIT 10;
