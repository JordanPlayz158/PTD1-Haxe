package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_202 extends Class_16 {


    static inline final name_1 = Std.int(180.0);

    static inline final const_412 = Std.int(54.0);

    var var_120:Int = 0;

    public function new(param1:Poke) {
        super(param1);
    }

    @:allow(code) override function init() {
        var_1.add_Effect(new Class_809(var_1, Class_202.name_1));
        var_1.add_Effect(new Class_732(var_1, new Gfx_Paralysis(), Class_202.name_1));
    }

    @:allow(code) override function remove_Me() {
        var_1.remove_Effect(this);
        var_1 = null;
    }

    @:allow(code) override function run() {
        var _loc1_ = 0;
        if (var_15 == Class_202.name_1) {
            this.remove_Me();
            return;
        }
        if (this.var_120 == Class_202.const_412) {
            this.var_120 = 0;
            if (var_1.check_Effects(Class_793) == null) {
                _loc1_ = Std.int(Math.random() * 4);
                if (_loc1_ == 0) {
                    var_1.add_Effect(new Class_793(var_1, Attack.ATTACK_TIME));
                }
            }
        }
        this.var_120 += method_6();
        var_15 += method_6();
    }
}

