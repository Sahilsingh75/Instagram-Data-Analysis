SELECT hashtags, COUNT(post_id) AS hashtags_count
FROM instagram_posts
GROUP BY hashtags
ORDER BY hashtags_count DESC
LIMIT 10;
