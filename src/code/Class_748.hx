package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_748 extends Class_231 {


    public function new(param1:Poke, param2:Poke, param3:Int, param4:Class_194) {
        super(param1, param2, param3, new Do_Aurora_Beam(), param4);
    }

    @:allow(code) override function do_On_Hit(param1:Poke) {
        var _loc2_ = 0;
        _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 10) {
            Attack.lower_Attack(param1, 0);
        }
    }
}

