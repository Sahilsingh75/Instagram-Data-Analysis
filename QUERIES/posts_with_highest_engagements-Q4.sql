USE instagram_analysis;

SELECT 
    post_id, 
    (likes + comments + shares + saves) AS total_engagement 
FROM 
    instagram_posts 
ORDER BY 
    total_engagement DESC 
LIMIT 10;
