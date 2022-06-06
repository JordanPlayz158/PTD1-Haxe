package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_188 extends Attack {


    static inline final name_2 = Std.int(360.0);

    public function new(param1:Poke) {
        super(param1);
        var_7 = "Heal Pulse";
        onSelf = true;
    }

    @:allow(code) override function do_Attack(param1:Poke) {
        this.method_163(this.method_208());
        this.method_163(cast(var_2.my_Parent, Class_875).var_79);
    }

    @:allow(code) function method_163(param1:Vector<Poke>) {
        var _loc2_:ASAny = null;
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ = param1[_loc3_];
            if (_loc2_ != var_2) {
                _loc2_.take_Healing(_loc2_.totalLife / 2);
                _loc2_.add_Effect(new Class_197(_loc2_, new Hit_Aromatherapy()));
            }
            _loc3_++;
        }
    }

    function method_208():Vector<Poke> {
        var _loc2_:ASAny = null;
        var _loc1_ = new Vector<Poke>();
        var _loc3_ = cast(var_2.my_Parent, Class_875).towerList;
        var _loc4_ = 0;
        while (_loc4_ < _loc3_.length) {
            _loc2_ = _loc3_[_loc4_];
            _loc1_.push(_loc2_);
            _loc4_++;
        }
        return _loc1_;
    }

    @:allow(code) override function get_My_Attack_Animation():Class_16 {
        return new Class_197(var_2, new Hit_Aromatherapy());
    }

    @:allow(code) override function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) override function get_coolDown():Int {
        return Class_188.name_2;
    }
}

