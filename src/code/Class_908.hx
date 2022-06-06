package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import package_1.Class_25;
import package_1.Class_7;

class Class_908 extends Class_875 {


    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_Num():Int {
        return 6;
    }

    override public function Poke_Bonus_Level():Int {
        return 9;
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_6();
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_989(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 1;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_25(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost_5());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_990(this);
    }
}

