package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_8 {


    @:allow(code) var var_342:GfxMovieClip;

    @:allow(code) var var_37:Class_6;

    @:allow(code) var var_237:String;

    public function new(param1:Class_6, param2:GfxMovieClip) {
        this.var_37 = param1;
        this.var_342 = param2;
        this.var_237 = "normal";
        this.reset();
    }

    @:allow(code) function reset() {
        var _loc1_ = "";
        if (this.var_37.shiny == 2) {
            _loc1_ = "ss";
        }
        else if (this.var_37.shiny != 0) {
            _loc1_ = "s";
        }
        trace(this.var_37.num);
        this.var_342.Poke.gotoAndStop(_loc1_ + this.var_37.num);
        this.var_342.lvl.text = "Lvl " + this.var_37.level;
        var _loc2_ = this.var_37.method_93();
        this.var_342.PokeUp.visible = false;
        if (this.var_37.method_114()) {
            this.var_342.PokeUp.visible = true;
        }
        if (this.var_342.currentFrame == 1) {
            this.var_342.expBar.actual.scaleX = _loc2_;
        }
    }

    @:allow(code) function method_337(param1:Float) {
        if (param1 <= 0.2) {
            this.var_342.hpBar.actual.gotoAndStop(2);
        }
        else {
            this.var_342.hpBar.actual.gotoAndStop(1);
        }
        if (param1 == 0) {
            this.var_342.bg.gotoAndStop(3);
        }
        this.var_342.hpBar.actual.scaleX = param1;
    }

    @:allow(code) function method_125():Bool {
        return this.var_342.PokeUp.visible;
    }
}

