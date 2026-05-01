if (didJIP) then {
    [player] remoteExec ["grad_common_fnc_addJipToZeus",2,false];
};

["InitializePlayer", [player,true]] call BIS_fnc_dynamicGroups;
grad_template_ratingEH = player addEventHandler ["HandleRating",{0}];

if (!didJIP) then {


    STHud_UIMode = 0;
    diwako_dui_main_toggled_off = true;

    private _startPos = getPos camera_start; 
    _startPos set [2,2];

    private _startTarget = getPos camera_start_target;
    _startTarget set [2,2];

    private _endPos = getPos camera_end; 
    _endPos set [2,2];

    private _endTarget = getPos camera_end_target;
    _endTarget set [2,2];


    
    private _camera = "camera" camCreate _startPos;
    _camera cameraEffect ["internal", "BACK"];

    showCinemaBorder true;

    _camera camCommand "inertia on";
    _camera camSetTarget _startTarget;
    _camera camSetFOV 0.75;
    _camera camCommit 0;

    _camera camSetPos _startPos;
    _camera camSetTarget _startTarget;
    _camera camCommit 0;

    _camera camSetPos _endPos;
    _camera camSetTarget _endTarget;
    _camera camCommit 30;

    cutText ["O P   E P I C   T H U N D E R", "BLACK IN", 3];

    playSoundUI ["thunderrun", 0.5, 1];

    sleep 30;

    cutText ["", "BLACK OUT", 3];
    sleep 3;


    _camera cameraEffect ["terminate","back"];
    camDestroy _camera;

    sleep 0.5;

    cutText ["", "BLACK IN", 3];

    STHud_UIMode = 1;
    diwako_dui_main_toggled_off = false;

};