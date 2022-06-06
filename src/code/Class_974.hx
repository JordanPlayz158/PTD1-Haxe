package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;

class Class_974 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        gfx.x = 400;
        gfx.y = 145;
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        if (false) {
            trace("ended ready go");
            this.remove_Me();
            return true;
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Ready_Go();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
        this.var_3.start_Level(false);
    }
}

