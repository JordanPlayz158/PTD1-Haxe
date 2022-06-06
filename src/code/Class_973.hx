package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.MouseEvent;

class Class_973 extends Class_877 {


    @:allow(code) var var_3:Class_875;

    @:allow(code) var var_15:Int = 0;

    public function new(param1:Class_875) {
        this.var_3 = param1;
        super(param1);
    }

    @:allow(code) override function init() {
        super.init();
        this.var_3.method_12(true);
        this.var_3.method_14();
        this.var_3.method_62();
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        return true;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        if (false) {
            this.var_3.method_35();
            this.var_3.method_20();
            this.var_3.method_12();
            this.remove_Me();
        }
        return false;
    }

    @:allow(code) override function get_Graphic():GfxMovieClip {
        return new Popup_Achievement();
    }

    @:allow(code) override function remove_Me() {
        super.remove_Me();
    }
}

