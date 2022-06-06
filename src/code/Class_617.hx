package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_617 extends Class_194 {


    static inline final name_1 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Flatter";
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc4_:ASAny = null;
        var _loc2_ = param1.check_Effects(Class_810);
        if (_loc2_ != null) {
            _loc4_ = new Class_22(Class_22.const_17);
            _loc2_.remove_Me();
        }
        else if (param1.check_Effects(Class_803) == null) {
            param1.add_Effect(new Class_803(param1, Class_617.name_1));
        }
        var _loc3_ = this.method_3(param1, 60, true);
        param1.add_Effect(new Class_203(param1, _loc3_));
    }

    @:allow(code) override function get_Move_Type():Int {
        return Class_13.const_27;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_197(param1, new Do_Flatter());
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_203;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }

    @:allow(code) override function single_Target():Bool {
        return true;
    }
}

