## Progression
-- 1. **Write a query to display the team details. Display the records sorted in the order of team name.**
SELECT * FROM TEAM ORDER BY NAME;
-- 2. **Write a query to display the player details whose name starts with a letter `S` and who do not belong to the country 'South Africa'. Display the records sorted in descending order based on player name.**
SELECT NAME FROM PLAYER WHERE NAME LIKE 'S%';
-- 3. **Write a query to display the event number and the seconds taken for each event. Display the records sorted in ascending order based on event number.**
SELECT EVENT_NO, CLOCK_IN_SECONDS FROM EVENT ORDER BY EVENT_NO ASC;
-- 4. **Write a query to display the event numbers of those events which has sum of raid points and defending points greater than or equal to 3. Display the records sorted in ascending order based on event_no.**
SELECT EVENT_NO FROM EVENT WHERE SUM(RAID_POINTS) >= 3 AND SUM(DEFENDING_POINTS)>=3 ORDER BY EVENT_NO ASC;
-- 5. **Write a query to display the name of all the players who belong to the country India or Iran. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE COUNTRY = "INDIA" OR COUNTRY = "IRAN" ORDER BY NAME ASC;
-- 6. **Write a query to display the name of all the players who does not belong to the country India and Iran. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYER WHERE COUNTRY!="INDIA" AND COUNTRY!="IRAN" ORDER BY NAME ASC;
-- 7. **Write a query to display the names of all the skills that start with `Defend`. Display the records sorted in ascending order based on skill name.**
SELECT NAME FROM SKILL WHERE SKILL LIKE "Defend%";
-- 8. **Write a query to display all the stadium names that ends with `Complex`. Display the records sorted in ascending order based on stadium names.**
SELECT NAME FROM VENUE WHERE STADIUM_NAME LIKE "%Complex";
-- 9. **Write a query to display the winner team ids and the scores of those teams whose scores are less than 35. Display the records sorted in descending order based on outcome id.**
SELECT WINNER_TEAM_ID AND SCORE FROM OUTCOME WHERE SCORE<35 ORDER BY ID DESC;
-- 10. **Write a query to display the game details of those games that were played between January and March of 2020. Display the records sorted in descending order based on id.**
SELECT * FROM GAME WHERE GAME_DATE>="2020-01-01" AND GAME_DATE<="2020-03-01" ORDER BY ID DESC;
-- 11. **Write a query to display the names of players who are Raiders. Display the records sorted in ascending order based on player name.**
SELECT NAME FROM PLAYERS WHERE SKILL_ID=5 ORDER BY NAME ASC;
-- 12. **Write a query to display the event number, raid points and defence points scored in the first innings of the game that was played on `2020-01-26`. Display the records sorted in ascending order based on event number.**
SELECT EVENT.EVENT_NO,EVENT.RAID_POINTS,EVENT.DEFENDING_POINTS,GAME.FIRST_INNINGS_ID,GAME.GAME_DATE FROM EVENT OUTER JOIN GAME ON EVENT.ID=GAME.ID WHERE GAME_DATE='2020-01-26" ORDER BY EVENT_NO ASC;
-- 13. **Write a query to display the name of the winner team in the game played on `2020-03-09`. Display the records sorted in ascending order based on team name.**
SELECT TEAM.NAME from ((TEAM OUTER JOIN OUTCOME ON OUTCOME.WINNER_TEAM_ID=TEAM.ID) OUTER JOIN GAME ON GAME.ID=OUTCOME.WINNER_TEAM_ID) WHERE GAME.GAME_DATE="2020-03-01";
-- 14. **Write a query to display the names of players who were the player of the match in the game played on 2020-03-09'. Display the records sorted in ascending order based on player name.**
SELECT PLAYER.NAME FROM PLAYER OUTER JOIN GAME ON GAME.TEAM_ID_1=PLAYER.TEAM_ID WHERE GAME.GAME_DATE="202-03-09";  
-- 15. **Write a query to display the names of players who are All rounders. Display the records sorted in ascending order based on player name.**
SELECT PLAYER.NAME FROM PLAYER OUTER JOIN SKILL ON SKILL.id=PLAYER.SKILL_ID WHERE SKILL.name="ALL ROUNDERS";
-- 16. **Write a query to display the venue names for all the games that were played on `2020-03-09`. Display the records sorted in ascending order based on venue name.**
SELECT VENUE.STADIUM_NAME FROM VENUE OUTER JOIN GAME ON GAME.VENUE_ID=VENUE.CITY_ID WHERE GAME.GAME_DATE="2020-03-09";
-- 17. **Write a query to display the Coach's name of the team `Iran`**
SELECT TEAM.COACH FROM TEAM OUTER JOIN PLAYER ON PLAYER.TEAM_ID=TEAM.ID WHERE PLAYER.COUNTRY="IRAN";
-- 18. **Write a query to display the event number and the defence points of `Fazel Atrachali` in each event. Display the records sorted in ascending order based on event number.**
SELECT EVENT.EVENT_NO, EVENT.DEFENDING_POINTS FROM EVENT OUTER JOIN PLAYER ON PLAYER.ID=EVENT.RAIDER_ID WHERE PLAYER.NAME=`Fazel Atrachali`;
-- 19. **Write a query to display the names of the Winning teams in the month of March 2020. Display the records sorted in ascending order based on team name.**
SELECT TEAM.NAME FROM((TEAM OUTER JOIN OUTCOME ON OUTCOME.WINNER_TEAM_ID=TEAM.ID) OUTER JOIN GAME ON GAME.TEAM_ID_1=TEAM.ID) WHERE GAME.GAME_DATE="2020-03-01";
-- 20. **Write a query to display the names of players who were the player of the match in the games held in March 2020. Display the records sorted in ascending order based on player name.**
SELECT PLAYER.NAME FROM PLAYER OUTER JOIN GAME ON GAME.TEAM_ID_1=PLAYER.ID WHERE GAME.GAME_DATE="2020-03-01";