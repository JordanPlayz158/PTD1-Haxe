package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_11 {


    public var val:String;

    @:allow(code) function method_313(param1:Int, param2:Int, param3:Int):Bool {
        var _loc4_:Array<ASAny>;
        var _loc5_:Int = (_loc4_ = (cast this.val.split("|")))[0];
        var _loc6_:Int = _loc4_[1];
        var _loc7_:Int = _loc4_[2];
        var _loc8_ = _loc5_ + ASCompat.toInt(_loc4_[3]);
        var _loc9_ = _loc6_ + ASCompat.toInt(_loc4_[4]);
        if (_loc8_ != param2) {
            return false;
        }
        if (_loc9_ != param1) {
            return false;
        }
        if (_loc7_ != param3) {
            return false;
        }
        return true;
    }

    @:allow(code) function reset(param1:Class_6) {
        var _loc2_:ASAny = param1.level + "|";
        _loc2_ += param1.num + "|";
        if (param1.shiny == 2) {
            _loc2_ += "2|";
        }
        else if (param1.shiny == 1) {
            _loc2_ += "1|";
        }
        else {
            _loc2_ += "0|";
        }
        _loc2_ += "0|0";
        this.val = _loc2_;
    }

    @:allow(code) function method_387(param1:Int, param2:Int) {
        var _loc3_:Array<ASAny> = (cast this.val.split("|"));
        _loc3_[param2] = param1;
        var _loc4_:ASAny = "";
        var _loc5_ = 0;
        while (_loc5_ < _loc3_.length) {
            if (_loc5_ != 0) {
                _loc4_ += "|";
            }
            _loc4_ += _loc3_[_loc5_];
            _loc5_++;
        }
        this.val = _loc4_;
    }

    @:allow(code) function method_69(param1:Int = -1) {
        var _loc2_:Array<ASAny> = (cast this.val.split("|"));
        var _loc3_:Int = _loc2_[4];
        if (param1 == -1) {
            _loc3_++;
        }
        else {
            _loc3_ = param1;
        }
        _loc2_[4] = _loc3_;
        var _loc4_:ASAny = "";
        var _loc5_ = 0;
        while (_loc5_ < _loc2_.length) {
            if (_loc5_ != 0) {
                _loc4_ += "|";
            }
            _loc4_ += _loc2_[_loc5_];
            _loc5_++;
        }
        this.val = _loc4_;
    }

    @:allow(code) function method_356(param1:Int = -1) {
        var _loc2_:Array<ASAny> = (cast this.val.split("|"));
        var _loc3_:Int = _loc2_[3];
        if (param1 == -1) {
            _loc3_++;
        }
        else {
            _loc3_ = param1;
        }
        _loc2_[3] = _loc3_;
        var _loc4_:ASAny = "";
        var _loc5_ = 0;
        while (_loc5_ < _loc2_.length) {
            if (_loc5_ != 0) {
                _loc4_ += "|";
            }
            _loc4_ += _loc2_[_loc5_];
            _loc5_++;
        }
        this.val = _loc4_;
    }

    public function new() {}
}

