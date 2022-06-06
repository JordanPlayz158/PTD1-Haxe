package package_1
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import code.Class_13;
import code.Class_6;
import code.Class_875;
import flash.net.SharedObject;
import flash.net.URLLoader;

class Class_7 {


    @:allow(package_1) static inline final const_218 = 144;

    @:allow(package_1) static inline final const_329 = 143;

    @:allow(package_1) static inline final const_213 = 145;

    public var my_Parent:Class_875;

    public var var_729:Class_7;

    public var var_5:Int = 0;

    public var var_704:Int = 0;

    public var var_6:Int = 0;

    public var var_686:Int = 0;

    public var finished:Bool = false;

    @:allow(package_1) var var_41:URLLoader;

    var var_240:SharedObject;

    var email:String;

    var pass:String;

    var onlineProfile:ASObject;

    public var var_142:Int = 0;

    public var var_11:Int = -1;

    public var var_478:Int = -1;

    public var var_629:Int = 0;

    public function new(param1:Class_875) {
        this.my_Parent = param1;
        this.var_6 = 1;
        this.var_704 = this.get_Total_Waves();
    }

    function method_432():Bool {
        var _loc4_ = false;
        var _loc2_ = 1587653;
        var _loc3_ = Std.int(Math.random() * 1587654 + 1);
        if (_loc3_ == _loc2_) {
            _loc4_ = true;
        }
        return _loc4_;
    }

    public function get_Total_Waves():Int {
        return 0;
    }

    public function method_4(param1:Int = 1) {
        this.var_6 = param1;
        var _loc2_ = this.var_6 + 5;
        if (this.var_686 >= _loc2_ || this.var_6 < 0 || this.var_6 > this.get_Total_Waves()) {
            this.my_Parent.end_hack();
            return;
        }
        this.var_686 = _loc2_;
        this.my_Parent.update_Wave_Info(this.var_6, this.var_704);
    }

    public function run() {
        if (this.var_11 > 0) {
            ++this.var_142;
            if (this.var_11 <= this.var_142) {
                this.var_11 = -1;
                this.var_142 = 0;
                this.do_Wave();
            }
        }
        if (this.var_478 > 0) {
            ++this.var_629;
            if (this.var_478 <= this.var_629) {
                this.var_478 = -1;
                this.var_629 = 0;
                this.do_Wave_2();
            }
        }
    }

    public function start_Wave() {
        this.method_4();
        this.var_11 = 120;
    }

    public function method_158() {
        this.var_478 = 120;
    }

    public function method_420():Class_7 {
        return null;
    }

    public function do_Wave() {
    }

    public function do_Wave_2() {
    }

    public function method_1(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        var _loc4_ = this.get_Poke_Profile(param1, param2, param3);
        var _loc5_:Int;
        if ((_loc5_ = this.method_149(_loc4_)) > -1) {
            this.my_Parent.show_Achievement_Popup(1, _loc5_);
        }
        else if (_loc4_.shiny != 0 && _loc4_.var_39) {
            this.my_Parent.method_211();
        }
        this.method_149(_loc4_);
        return _loc4_;
    }

    public function get_Poke_Profile(param1:Int = 0, param2:Int = 0, param3:Int = 0):Class_6 {
        return null;
    }

    public function defeated_Poke(param1:Class_6) {
    }

    public function method_100() {
        this.var_11 = -1;
        this.var_478 = -1;
    }

    public function method_437() {
    }

    public function wave_Gone() {
    }

    public function wave_Finished() {
        this.finished = true;
        this.method_100();
    }

    public function method_424() {
    }

    public function unpause_Wave() {
    }

    public function method_140(param1:Class_6):Bool {
        if (param1.num != Class_13.const_111) {
            return false;
        }
        return true;
    }

    public function method_149(param1:Class_6):Int {
        var _loc2_ = -1;
        if (param1.shiny == 0) {
            return _loc2_;
        }
        if (param1.num == Class_13.const_29) {
            _loc2_ = 0;
        }
        else if (param1.num == Class_13.const_28) {
            _loc2_ = 1;
        }
        else if (param1.num == Class_13.const_12) {
            _loc2_ = 2;
        }
        else if (param1.num == Class_13.const_19) {
            _loc2_ = 3;
        }
        return _loc2_;
    }

    function method_11(param1:Class_6) {
        var _loc2_ = 8000;
        var _loc3_ = _loc2_ - 1;
        var _loc4_:Int;
        if ((_loc4_ = Std.int(Math.random() * _loc2_ + 1)) == _loc3_) {
            param1.shiny = 1;
            param1.saveInfo.var_154 = 151;
        }
    }
}

