package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_820 extends Class_732 {


    public function new(param1:Poke, param2:Int) {
        super(param1, null, param2);
    }

    @:allow(code) override function init() {
        speed = 15;
        gfx = Class_21.method_9(var_1.myProfile.num, var_1.myProfile.shiny);
        gfx.gotoAndPlay(var_1.dir);
        gfx.alpha = 0.5;
        var_1.addChild(gfx);
        gfx.x = speed;
        speed = -speed;
    }

    @:allow(code) override function run() {
        gfx.x = speed;
        speed = -speed;
        super.run();
    }
}

