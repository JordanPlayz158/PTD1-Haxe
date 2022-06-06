package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.display.Sprite;

class Class_853 extends Sprite {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var duration:Int = 0;

    @:allow(code) var var_15:Int = 0;

    @:allow(code) var var_2:Class_875;

    @:allow(code) var var_65:Poke;

    @:allow(code) var var_234:Bool = false;

    @:allow(code) var var_497:Bool = false;

    public function new(param1:Class_875, param2:GfxMovieClip, param3:Int, param4:Poke) {
        super();
        this.gfx = param2;
        this.duration = param3;
        this.var_2 = param1;
        this.var_65 = param4;
        if (this.gfx != null) {
            addChild(this.gfx);
        }
    }

    @:allow(code) function isCollision(param1:GfxMovieClip):Bool {
        if (this.gfx == null) {
            return true;
        }
        return param1.hitTestObject(this.gfx);
    }

    @:allow(code) function run() {
        if (this.var_15 == this.duration) {
            this.remove_Me();
            return;
        }
        ++this.var_15;
    }

    @:allow(code) function onCollision(param1:Poke) {
        trace(param1.myProfile.name + " got hit with a path_effect");
    }

    @:allow(code) function remove_Me() {
        this.var_2.method_258(this);
    }
}

