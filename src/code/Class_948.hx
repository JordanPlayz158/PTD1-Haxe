package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import package_1.Class_64;
import package_1.Class_7;

class Class_948 extends Class_875 {


    public function new(param1:Class_878, param2:_Obj) {
        super(param1, param2);
    }

    override function get_Level_BG():GfxMovieClip {
        return new Gfx_Level_1();
    }

    override public function Poke_Bonus_Level():Int {
        return 4;
    }

    override public function init() {
        super.init();
        gfx_BG.x = Math.NaN;
        gfx_BG.y = Math.NaN;
    }

    override function get_Intro_Popup():Class_877 {
        return new Class_978(this);
    }

    @:allow(code) override function get_Total_Candy():Int {
        return 10;
    }

    override function get_Level_Wave():Class_7 {
        return new Class_64(this);
    }

    override function get_Lost_Popup():Class_877 {
        return new Class_986(this, new Popup_Lost());
    }

    override function get_Win_Popup():Class_877 {
        return new Class_976(this);
    }
}

