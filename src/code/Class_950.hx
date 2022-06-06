package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.media.Sound;
import package_1.Class_66;
import package_1.Class_7;

class Class_950 extends Class_875 {


    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_Music():Sound {
        return new HankBattleMusic();
    }

    override function get_Level_Num():Int {
        return 3;
    }

    override function unlock_Next_Level() {
        if (currentProfile.clevelCompleted < this.get_Level_Num()) {
            currentProfile.clevelCompleted = this.get_Level_Num();
        }
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Challenge_Level_3();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1071(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 10;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_66(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_CL_3());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1072(this);
    }

    override public function get_Back_Screen():_Obj {
        return new Class_900(currentProfile, my_Parent);
    }

    override public function captured_Poke(param1:Poke) {
        var _loc2_ = param1.myProfile;
        // ++0
        _loc2_.var_35 = 1;
        _loc2_.val = new Class_11();
        _loc2_.val.reset(_loc2_);
        Class_13.method_2(_loc2_);
        add_To_Party(_loc2_);
    }
}

