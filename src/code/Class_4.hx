package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_4 {


    @:allow(code) var gfx:GfxMovieClip;

    @:allow(code) var full:Bool = false;

    @:allow(code) var var_708:Bool = false;

    @:allow(code) var var_579:Int = 0;

    public function new(param1:GfxMovieClip) {
        this.gfx = param1;
        this.method_353();
    }

    @:allow(code) function method_147(param1:Class_6):Bool {
        if (!this.var_708) {
            return true;
        }
        var _loc2_ = 0;
        while (_loc2_ < param1.types.length) {
            if (this.var_579 == param1.types[_loc2_]) {
                return true;
            }
            _loc2_++;
        }
        return false;
    }

    @:allow(code) function isCollision(param1:GfxMovieClip):Bool {
        if (this.full) {
            return false;
        }
        return param1.hitTestObject(this.gfx);
    }

    @:allow(code) function method_353() {
        var _loc1_:Array<ASAny> = (cast this.gfx.name.split("_"));
        if (_loc1_.length == 2) {
            return;
        }
        this.var_708 = true;
        if (_loc1_[2] == "rock") {
            this.var_579 = Class_13.const_15;
        }
        else if (_loc1_[2] == "grass") {
            this.var_579 = Class_13.const_8;
        }
        else if (_loc1_[2] == "flying") {
            this.var_579 = Class_13.const_9;
        }
        else if (_loc1_[2] == "water") {
            this.var_579 = Class_13.const_5;
        }
    }
}

