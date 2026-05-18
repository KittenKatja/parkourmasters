
#team is temporary but the code is not
team join tournament_winner @a[tag=tournament_winner]


#team stuff
team join nopvp @a[team=!owner,team=!dev,team=!builder,team=!god,tag=!god,name=!purplereally,tag=!norank]
team join god @a[tag=god,team=!nopvp,tag=!norank]
team join builder @a[tag=is_admin,tag=!is_dev,tag=!is_coowner,tag=!is_owner,tag=!norank]
team join dev @a[tag=is_admin,tag=is_dev,tag=!is_coowner,tag=!is_owner,tag=!norank]
team join dev @a[tag=is_coowner,tag=!is_owner,tag=!norank]
team join owner @a[tag=is_owner,tag=!norank]
team join e @a[tag=team_e,tag=!norank]


