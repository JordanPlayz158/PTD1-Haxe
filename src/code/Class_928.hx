package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import package_1.Class_45;
import package_1.Class_7;

class Class_928 extends Class_875 {


    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_Num():Int {
        return 4;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_8();
    }

    override function unlock_Next_Level() {
        if (currentProfile.clevelCompleted < this.get_Level_Num()) {
            currentProfile.clevelCompleted = this.get_Level_Num();
        }
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1028(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 3;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_45(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_Challenge_4());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1029(this);
    }

    override public function get_Back_Screen():_Obj {
        return new Class_900(currentProfile, my_Parent);
    }
}

