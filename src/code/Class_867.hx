package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_867 extends Class_853 {


    public function new(param1:Class_875, param2:Poke) {
        super(param1, new Do_Slippery(), 0, param2);
    }

    @:allow(code) override function onCollision(param1:Poke) {
        if (param1.check_Effects(Class_844) == null) {
            param1.add_Effect(new Class_844(param1, 0));
            Attack.method_386(param1, 0);
        }
    }
}

