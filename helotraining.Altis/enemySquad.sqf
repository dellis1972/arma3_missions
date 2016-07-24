_centrePos = _this select 0;
_playerno = _this select 1;
diag_log format["enemySquad called, _this: %1", _this];

_centreX = _centrePos select 0;
_centrePos set [0, _centreX + 100 + (floor random 300)];

_position = _centrePos findEmptyPosition [0,100];

_groupEnemy = createGroup east;
"O_Soldier_F" createUnit [_position, _groupEnemy,"",0.6, "CORPORAL"];
"O_Soldier_F" createUnit [_position, _groupEnemy,"",0.1, "PRIVATE"];
"O_soldier_M_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];
"O_soldier_AR_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];
"O_soldier_M_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];
"O_soldier_AR_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];
"O_soldier_M_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];
"O_soldier_AR_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];
"O_soldier_M_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];
"O_soldier_AR_F" createUnit [_position, _groupEnemy,"",0.3, "PRIVATE"];

enemyMDArray set [_playerno, (enemyMDArray select _playerno) + [_groupEnemy]];
publicVariable "enemyMDArray";
