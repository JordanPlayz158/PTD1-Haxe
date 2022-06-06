package code;

import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Attack {
    public static inline final ATTACK_TIME = 18;

    @:allow(code) var var_2:Poke;

    @:allow(code) var var_7:String;

    @:allow(code) var onSelf:Bool = false;

    @:allow(code) var cantMiss:Bool = false;

    public function new(param1:Poke, param2:Bool = true) {
        if (param1 != null) {
            this.var_2 = param1;
            if (param2) {
                trace("start of Attack");
                this.var_2.var_569 = this.get_coolDown();
                this.var_2.currentCoolDown = this.get_Initial_CoolDown();
            }
        }
    }

    public static function do_Freeze(param1:Poke, param2:Int, param3:Int, param4:Poke, param5:Attack, param6:Bool = true) {
        var _loc8_:ASAny = null;
        var _loc7_:Int;
        if ((_loc7_ = Std.int(Math.random() * 100 + 1)) <= param2) {
            if (param1.check_Effects(Class_796) == null && !param1.myProfile.is_Type(Class_13.const_18)) {
                _loc8_ = new Class_796(param1, param3);
                param1.add_Effect(_loc8_);
            }
        }
    }

    public static function method_338(param1:Poke, param2:Int, param3:Poke, param4:Attack, param5:Float, param6:Bool = true) {
        var _loc7_ = 0;
        var _loc8_:ASAny = null;
        if (param1.check_Effects(Class_202) == null) {
            if ((_loc7_ = Std.int(Math.random() * 100 + 1)) <= param2) {
                if (_loc8_ = param1.check_Effects(Class_806)) {
                    _loc8_.remove_Me();
                    return;
                }
                param1.add_Effect(new Class_202(param1));
            }
        }
    }

    public static function method_157(param1:Poke, param2:Int, param3:Int, param4:Poke, param5:Attack, param6:Float, param7:Bool = true) {
        var _loc8_ = 0;
        var _loc9_:ASAny = null;
        if (param1.check_Effects(Class_203) == null) {
            if ((_loc8_ = Std.int(Math.random() * 100 + 1)) <= param2) {
                (_loc9_ = new Class_203(param1, param3)).var_12 = param6;
                param1.add_Effect(_loc9_);
            }
        }
    }

    public static function do_Flinch(param1:Poke, param2:Int, param3:Int, param4:Poke, param5:Attack, param6:Float, param7:Bool = true) {
        var _loc8_ = 0;
        if (param1.myAbility != null) {
            if (!param1.myAbility.on_Flinch(param4)) {
                return;
            }
        }
        if (param1.check_Effects(Class_793) == null) {
            if ((_loc8_ = Std.int(Math.random() * 100 + 1)) <= param2) {
                param1.add_Effect(new Class_793(param1, param3));
            }
        }
    }

    public static function do_Burn(param1:Poke, param2:Int, param3:Poke, param4:Attack, param5:Int, param6:Float, param7:Bool = true) {
        var _loc8_ = 0;
        var _loc9_:ASAny = null;
        if (param1.check_Effects(Class_201) == null && !param1.myProfile.is_Type(Class_13.const_6)) {
            if ((_loc8_ = Std.int(Math.random() * 100 + 1)) <= param2) {
                (_loc9_ = new Class_201(param1, param5)).var_12 = param6;
                param1.add_Effect(_loc9_);
            }
        }
    }

    public static function method_161(param1:Poke, param2:Int, param3:Poke, param4:Attack, param5:Int, param6:Float, param7:Bool = true) {
        var _loc8_ = 0;
        var _loc9_:ASAny = null;
        if (param1.check_Effects(Class_200) == null
        && !param1.myProfile.is_Type(Class_13.const_2)
        && !param1.myProfile.is_Type(Class_13.const_7)) {
            if ((_loc8_ = Std.int(Math.random() * 100 + 1)) <= param2) {
                (_loc9_ = new Class_200(param1, param5)).var_12 = param6;
                param1.add_Effect(_loc9_);
            }
        }
    }

    public static function lower_Accuracy(param1:Poke, param2:Int, param3:Poke) {
        if (param1.myAbility != null) {
            if (!param1.myAbility.on_Lower_Accuracy(param3)) {
                return;
            }
        }
        var _loc4_ = param1.check_Effects(Class_804);
        var _loc5_:Class_16;
        if ((_loc5_ = param1.check_Effects(Class_798)) != null) {
            _loc5_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_804(param1, param2));
        }
        var _loc6_:Class_16 = new Class_799(param1, ATTACK_TIME);
        param1.add_Effect(_loc6_);
    }

    public static function increase_Accuracy(param1:Poke, param2:Int, param3:Poke) {
        var _loc4_ = param1.check_Effects(Class_804);
        var _loc5_ = param1.check_Effects(Class_798);
        if (_loc4_ != null) {
            _loc4_.remove_Me();
        } else if (_loc5_ == null) {
            param1.add_Effect(new Class_798(param1, param2));
        }
    }

    public static function lower_Attack(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_802);
        var _loc4_:Class_16;
        if ((_loc4_ = param1.check_Effects(Class_805)) != null) {
            _loc4_.remove_Me();
        } else if (_loc3_ == null) {
            param1.add_Effect(new Class_802(param1, param2));
        }
    }

    public static function increase_Attack(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_802);
        var _loc4_ = param1.check_Effects(Class_805);
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_805(param1, param2));
        }
    }

    public static function lower_Speed(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_809);
        var _loc4_:Class_16;
        if ((_loc4_ = param1.check_Effects(Class_806)) != null) {
            _loc4_.remove_Me();
        } else if (_loc3_ == null) {
            param1.add_Effect(new Class_809(param1, param2));
        }
    }

    public static function method_386(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_809);
        var _loc4_ = param1.check_Effects(Class_806);
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_852(param1, param2));
        }
    }

    public static function increase_Speed(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_809);
        var _loc4_ = param1.check_Effects(Class_806);
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_806(param1, param2));
        }
    }

    public static function lower_Defense(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_807);
        var _loc4_:Class_16;
        if ((_loc4_ = param1.check_Effects(Class_808)) != null) {
            _loc4_.remove_Me();
        } else if (_loc3_ == null) {
            param1.add_Effect(new Class_807(param1, param2));
        }
    }

    public static function increase_Defense(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_807);
        var _loc4_ = param1.check_Effects(Class_808);
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_808(param1, param2));
        }
    }

    public static function lower_Special_Attack(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_800);
        var _loc4_:Class_16;
        if ((_loc4_ = param1.check_Effects(Class_801)) != null) {
            _loc4_.remove_Me();
        } else if (_loc3_ == null) {
            param1.add_Effect(new Class_800(param1, param2));
        }
    }

    public static function increase_Special_Attack(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_800);
        var _loc4_ = param1.check_Effects(Class_801);
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_801(param1, param2));
        }
    }

    public static function lower_Special_Defense(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_810);
        var _loc4_:Class_16;
        if ((_loc4_ = param1.check_Effects(Class_803)) != null) {
            _loc4_.remove_Me();
        } else if (_loc3_ == null) {
            param1.add_Effect(new Class_810(param1, param2));
        }
    }

    public static function increase_Special_Defense(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_810);
        var _loc4_ = param1.check_Effects(Class_803);
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_803(param1, param2));
        }
    }

    public static function increase_Evasion(param1:Poke, param2:Int) {
        var _loc3_ = param1.check_Effects(Class_792);
        var _loc4_ = param1.check_Effects(Class_795);
        if (_loc3_ != null) {
            _loc3_.remove_Me();
        } else if (_loc4_ == null) {
            param1.add_Effect(new Class_795(param1, param2));
        }
    }

    public function missed_Attack() {}

    @:allow(code) function get_Accurary():Int {
        return 100;
    }

    @:allow(code) function single_Target():Bool {
        return true;
    }

    @:allow(code) function one_Per_Target():Class<Dynamic> {
        return null;
    }

    @:allow(code) function do_Attack(param1:Poke) {}

    @:allow(code) function get_My_Attack_Animation():Class_16 {
        return null;
    }

    @:allow(code) function get_Target_Hit_Animation(param1:Poke):Class_16 {
        return null;
    }

    @:allow(code) function get_Initial_CoolDown():Int {
        return this.get_coolDown();
    }

    @:allow(code) function get_coolDown():Int {
        return ATTACK_TIME;
    }

    @:allow(code) function get_Move_Type():Int {
        return Class_13.const_1;
    }

    @:allow(code) function method_73(param1:Int, param2:Int):Float {
        if (param1 == Class_13.const_1) {
            if (param2 == Class_13.const_7) {
                return 0.5;
            }
            if (param2 == Class_13.const_15) {
                return 0.5;
            }
            if (param2 == Class_13.const_24) {
                return 0;
            }
            return 1;
        }
        if (param1 == Class_13.const_190) {
            return 1;
        }
        if (param1 == Class_13.const_6) {
            if (param2 == Class_13.const_6) {
                return 0.5;
            }
            if (param2 == Class_13.const_5) {
                return 0.5;
            }
            if (param2 == Class_13.const_8) {
                return 2;
            }
            if (param2 == Class_13.const_18) {
                return 2;
            }
            if (param2 == Class_13.const_22) {
                return 2;
            }
            if (param2 == Class_13.const_15) {
                return 0.5;
            }
            if (param2 == Class_13.const_26) {
                return 0.5;
            }
            if (param2 == Class_13.const_7) {
                return 2;
            }
            return 1;
        }
        if (param1 == Class_13.const_5) {
            switch (param2) {
                case Class_13.const_6:
                    return 2;
                case Class_13.const_5:
                    return 0.5;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_10:
                    return 2;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_26:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_20) {
            switch (param2) {
                case Class_13.const_5:
                    return 2;
                case Class_13.const_20:
                    return 0.5;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_10:
                    return 0;
                case Class_13.const_9:
                    return 2;
                case Class_13.const_26:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_8) {
            switch (param2) {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_5:
                    return 2;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_10:
                    return 2;
                case Class_13.const_9:
                    return 0.5;
                case Class_13.const_22:
                    return 0.5;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_26:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_18) {
            switch (param2) {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_5:
                    return 0.5;
                case Class_13.const_8:
                    return 2;
                case Class_13.const_18:
                    return 0.5;
                case Class_13.const_10:
                    return 2;
                case Class_13.const_9:
                    return 2;
                case Class_13.const_26:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_13) {
            switch (param2) {
                case Class_13.const_1:
                    return 2;
                case Class_13.const_18:
                    return 2;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_9:
                    return 0.5;
                case Class_13.const_14:
                    return 0.5;
                case Class_13.const_22:
                    return 0.5;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_24:
                    return 0;
                case Class_13.const_27:
                    return 2;
                case Class_13.const_7:
                    return 2;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_2) {
            switch (param2) {
                case Class_13.const_8:
                    return 2;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_10:
                    return 0.5;
                case Class_13.const_15:
                    return 0.5;
                case Class_13.const_24:
                    return 0.5;
                case Class_13.const_7:
                    return 0;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_10) {
            switch (param2) {
                case Class_13.const_6:
                    return 2;
                case Class_13.const_20:
                    return 2;
                case Class_13.const_8:
                    return 0.5;
                case Class_13.const_2:
                    return 2;
                case Class_13.const_9:
                    return 0;
                case Class_13.const_22:
                    return 0.5;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_7:
                    return 2;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_9) {
            switch (param2) {
                case Class_13.const_20:
                    return 0.5;
                case Class_13.const_8:
                    return 2;
                case Class_13.const_13:
                    return 2;
                case Class_13.const_22:
                    return 2;
                case Class_13.const_15:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_14) {
            switch (param2) {
                case Class_13.const_13:
                    return 2;
                case Class_13.const_2:
                    return 2;
                case Class_13.const_14:
                    return 0.5;
                case Class_13.const_27:
                    return 0;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_22) {
            switch (param2) {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_8:
                    return 2;
                case Class_13.const_13:
                    return 0.5;
                case Class_13.const_2:
                    return 0.5;
                case Class_13.const_9:
                    return 0.5;
                case Class_13.const_14:
                    return 2;
                case Class_13.const_24:
                    return 0.5;
                case Class_13.const_27:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_15) {
            switch (param2) {
                case Class_13.const_6:
                    return 2;
                case Class_13.const_18:
                    return 2;
                case Class_13.const_13:
                    return 0.5;
                case Class_13.const_10:
                    return 0.5;
                case Class_13.const_9:
                    return 2;
                case Class_13.const_22:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_24) {
            switch (param2) {
                case Class_13.const_1:
                    return 0;
                case Class_13.const_14:
                    return 2;
                case Class_13.const_24:
                    return 2;
                case Class_13.const_27:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_26) {
            switch (param2) {
                case Class_13.const_26:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_27) {
            switch (param2) {
                case Class_13.const_13:
                    return 0.5;
                case Class_13.const_14:
                    return 2;
                case Class_13.const_24:
                    return 2;
                case Class_13.const_27:
                    return 0.5;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else if (param1 == Class_13.const_7) {
            switch (param2) {
                case Class_13.const_6:
                    return 0.5;
                case Class_13.const_5:
                    return 0.5;
                case Class_13.const_20:
                    return 0.5;
                case Class_13.const_18:
                    return 2;
                case Class_13.const_15:
                    return 2;
                case Class_13.const_7:
                    return 0.5;
                default:
                    return 1;
            }
        } else {
            return 2;
        }
    }
}
