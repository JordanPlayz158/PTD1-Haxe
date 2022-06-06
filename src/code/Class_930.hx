package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import package_1.Class_47;
import package_1.Class_7;

class Class_930 extends Class_875 {


    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_Num():Int {
        return 8;
    }

    override public function Poke_Bonus_Level():Int {
        return 14;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_8();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_1033(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 3;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_47(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_8());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_1032(this);
    }
}

