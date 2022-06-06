package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;


class Class_865 extends Class_853 {


    static inline final name_1 = Std.int(360.0);

    public function new(param1:Class_875, param2:Poke) {
        super(param1, new Do_Flash(), Class_865.name_1, param2);
        var_234 = true;
    }

    @:allow(code) override function isCollision(param1:GfxMovieClip):Bool {
        return true;
    }

    @:allow(code) override function onCollision(param1:Poke) {
        if (var_15 == 1) {
            if (false) {
                gfx.gotoAndPlay("storm");
            }
            if (Std.is(var_65, Class_1104)) {
                param1.method_18(cast(var_65, Class_1104));
            }
            Attack.lower_Accuracy(param1, Class_865.name_1, var_65);
        }
    }

    @:allow(code) function method_26(param1:Class_16) {
        if (param1 != null) {
            param1.remove_Me();
        }
    }
}

