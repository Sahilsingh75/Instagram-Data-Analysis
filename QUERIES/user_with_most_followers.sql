USE instagram_analysis;

SELECT 
    username, 
    followers 
FROM 
    user_profiles 
ORDER BY 
    followers DESC 
LIMIT 10;
