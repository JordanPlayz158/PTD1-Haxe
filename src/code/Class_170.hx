package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_170 extends Attack {


    @:allow(code) static inline final name_1 = Std.int(180.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "String Shot";
    }

    @:allow(code) override function get_Accurary():Int {
        return 95;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        var _loc3_:ASAny = null;
        var _loc2_ = param1.check_Effects(Class_806);
        if (_loc2_ != null) {
            _loc3_ = new Class_22(Class_22.const_11);
            _loc2_.remove_Me();
            return;
        }
        param1.add_Effect(this.get_Target_Hit_Animation(param1));
        param1.add_Effect(new Class_809(param1, Class_170.name_1));
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_16(var_2);
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return new Class_732(param1, new Gfx_Hit_String_Shot(), Class_170.name_1);
    }

    @:allow(code) override function one_Per_Target():Class<Dynamic> {
        return Class_809;
    }

    @:allow(code) override function get_coolDown():Int {
        return Attack.ATTACK_TIME;
    }
}

