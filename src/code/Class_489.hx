package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_489 extends Class_194 {


    @:allow(code) static inline final name_1 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Constrict";
    }

    @:allow(code) override function is_Physical():Bool {
        return true;
    }

    @:allow(code) override function get_Move_Power():Int {
        return 10;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc4_:ASAny = null;
        var _loc5_:ASAny = null;
        var _loc2_ = Std.int(Math.random() * 100 + 1);
        if (_loc2_ <= 10) {
            if (_loc4_ = param1.check_Effects(Class_806)) {
                _loc5_ = new Class_22(Class_22.const_11);
                _loc4_.remove_Me();
            }
            else if (param1.check_Effects(Class_809) == null) {
                param1.add_Effect(new Class_809(param1, Class_489.name_1));
            }
        }
        var _loc3_ = method_3(param1);
        method_13(param1, _loc3_, this.get_Target_Hit_Animation(param1));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Hit_Constrict());
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_1;
    }
}

