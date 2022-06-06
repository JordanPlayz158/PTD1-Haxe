package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_391 extends Class_17 {


    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function on_Run() {
        var _loc1_ = 0;
        var _loc2_:ASAny = null;
        ++var_511;
        if (var_511 == 18) {
            var_511 = 0;
            _loc1_ = Std.int(Math.random() * 100 + 1);
            if (_loc1_ <= 30) {
                _loc2_ = var_1.check_Effects(Class_201);
                if (!_loc2_) {
                    _loc2_ = var_1.check_Effects(Class_796);
                }
                if (!_loc2_) {
                    _loc2_ = var_1.check_Effects(Class_200);
                }
                if (!_loc2_) {
                    _loc2_ = var_1.check_Effects(Class_202);
                }
                if (!_loc2_) {
                    _loc2_ = var_1.check_Effects(Class_791);
                }
                if (_loc2_) {
                    var_1.add_Effect(new Class_737(var_1, "Shed Skin"));
                    _loc2_.remove_Me();
                }
            }
        }
    }
}

