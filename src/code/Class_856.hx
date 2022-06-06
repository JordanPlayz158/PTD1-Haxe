package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_856 extends Class_853 {


    static inline final name_1 = Std.int(1800.0);

    @:allow(code) var var_613:Int = 0;

    public function new(param1:Class_875, param2:Poke) {
        super(param1, new Do_Sunny_Day(), Class_856.name_1, param2);
        var_234 = true;
    }

    @:allow(code) override function run() {
        if (this.var_613 == 90) {
            this.var_613 = 0;
            gfx.gotoAndPlay(1);
        }
        ++this.var_613;
        super.run();
    }

    @:allow(code) override function isCollision(param1:GfxMovieClip):Bool {
        return true;
    }

    @:allow(code) override function onCollision(param1:Poke) {
        if (param1.check_Effects(Class_789) == null) {
            param1.add_Effect(new Class_789(param1, Class_856.name_1));
        }
    }
}

