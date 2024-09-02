SELECT 
    username, 
    followers / following AS follow_ratio 
FROM 
    user_profiles 
WHERE 
    following > 0 
ORDER BY 
    follow_ratio DESC 
LIMIT 10;
