package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_774 extends Class_255 {


    public function new(param1:Poke, param2:Poke, param3:Int) {
        super(param1, param2, param3);
        var_4 = 20;
    }

    @:allow(code) override function do_At_End() {
        var _loc3_:ASAny = null;
        var _loc1_ = Std.int(Math.random() * 100 + 1);
        if (_loc1_ > 30) {
            return;
        }
        if (var_1.check_Effects(Class_202) != null) {
            return;
        }
        var _loc2_ = var_1.check_Effects(Class_806);
        if (_loc2_ != null) {
            _loc3_ = new Class_22(Class_22.const_11);
            _loc2_.remove_Me();
            return;
        }
        var_1.add_Effect(new Class_202(var_1));
    }
}

