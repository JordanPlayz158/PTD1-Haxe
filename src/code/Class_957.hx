package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_7;
import package_1.Class_75;

class Class_957 extends Class_875 {


    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_Num():Int {
        return 12;
    }

    override public function Poke_Bonus_Level():Int {
        return 24;
    }

    override function get_Level_Music():Sound {
        return new BattleWildMusic();
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_12_3();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1081(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_75(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Movie_Scene_Level_12_3_Lost());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1034(this);
    }

    @:allow(code) override function i_Win():Class_877 {
        currentProfile.reset_Fight_List();
        end_Level(new Class_1116(currentProfile, my_Parent));
        return null;
    }
}

