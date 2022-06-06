package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_747 extends Class_231 {


    public function new(param1:Poke, param2:Poke, param3:Int, param4:Class_194) {
        super(param1, param2, param3, new Do_Dragonbreath(), param4);
    }

    @:allow(code) override function do_On_Hit(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc4_:ASAny = null;
        if (param1.check_Effects(Class_809) != null) {
            return;
        }
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 30) {
            _loc3_ = param1.check_Effects(Class_806);
            if (_loc3_) {
                _loc4_ = new Class_22(Class_22.const_11);
                _loc3_.remove_Me();
                return;
            }
            param1.add_Effect(new Class_202(param1));
        }
    }
}

