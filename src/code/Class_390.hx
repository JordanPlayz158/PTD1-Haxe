package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.filters.GlowFilter;

class Class_390 extends Class_16 {


    @:allow(code) var var_582:UInt = 0;

    public function new(param1:Poke, param2:UInt) {
        this.var_582 = param2;
        super(param1);
    }

    @:allow(code) override function init() {
        var_1.gfx.filters = [new GlowFilter(this.var_582, 1, 22, 22)];
    }

    @:allow(code) override function run() {
    }

    @:allow(code) override function remove_Me() {
        var_1.gfx.filters = [];
        super.remove_Me();
    }
}

