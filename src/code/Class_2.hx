package code
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
class Class_2 {

    public static function method_427(param1:String):String {
        var _loc7_ = Math.NaN;
        var _loc8_ = Math.NaN;
        var _loc9_ = Math.NaN;
        var _loc10_ = Math.NaN;
        var _loc11_ = Math.NaN;
        var _loc12_:Int = 0;
        var _loc13_:Int = 0;
        var _loc3_:Int = 0;
        var _loc4_ = Math.fround(Math.random() * 8) + 1;
        var _loc5_ = "";
        var _loc6_ = new Array<ASAny>();
        while (_loc3_ < param1.length) {
            _loc7_ = param1.charCodeAt(_loc3_++);
            _loc8_ = param1.charCodeAt(_loc3_++);
            _loc9_ = param1.charCodeAt(_loc3_++);
            _loc10_ = Std.int(_loc7_) >> 2;
            _loc11_ = (Std.int(_loc7_) & 3) << 4 | Std.int(_loc8_) >> 4;
            _loc12_ = (Std.int(_loc8_) & 15) << 2 | Std.int(_loc9_) >> 6;
            _loc13_ = Std.int(_loc9_) & 63;
            if (Math.isNaN(_loc8_)) {
                _loc13_ = 64;
                _loc12_ = 64;
            }
            else if (Math.isNaN(_loc9_)) {
                _loc13_ = 64;
            }
            _loc5_ +=
            "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(Std.int(_loc10_))
            + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(Std.int(_loc11_))
            + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(_loc12_)
            + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(_loc13_);
        }
        var _loc14_ = 0;
        while (_loc14_ < _loc4_) {
            _loc5_ += "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(Math.round(Math.random() * 63));
            _loc14_++;
        }
        _loc5_ = method_77(_loc4_ + _loc5_);
        var _loc15_ = 4;
        while (_loc15_ < _loc5_.length) {
            _loc5_ = _loc5_.substr(0, _loc15_) + "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".charAt(Math.round(Math.random() * 63)) + _loc5_.substr(_loc15_);
            _loc15_ += 5;
        }
        return _loc5_;
    }

    public static function method_339(param1:String):String {
        var _loc6_ = Math.NaN;
        var _loc7_ = Math.NaN;
        var _loc8_ = Math.NaN;
        var _loc9_:Int = 0;
        var _loc10_ = Math.NaN;
        var _loc11_ = Math.NaN;
        var _loc12_ = Math.NaN;
        var _loc2_:String = "";
        var _loc4_:Int = 1;
        var _loc5_ = "";
        var _loc13_ = 0;
        while (_loc13_ <= param1.length + 4) {
            _loc2_ += param1.substr(_loc13_, 4);
            _loc13_ += 5;
        }
        _loc2_ = method_77(_loc2_);
        while (_loc4_ < _loc2_.length - ASCompat.toNumber(_loc2_.charAt(0))) {
            _loc9_ = 65 - ("=/+9876543210zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA".indexOf(_loc2_.charAt(_loc4_++)) + 1);
            _loc10_ = 65 - ("=/+9876543210zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA".indexOf(_loc2_.charAt(_loc4_++)) + 1);
            _loc11_ = 65 - ("=/+9876543210zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA".indexOf(_loc2_.charAt(_loc4_++)) + 1);
            _loc12_ = 65 - ("=/+9876543210zyxwvutsrqponmlkjihgfedcbaZYXWVUTSRQPONMLKJIHGFEDCBA".indexOf(_loc2_.charAt(_loc4_++)) + 1);
            _loc6_ = Std.int(_loc9_) << 2 | Std.int(_loc10_) >> 4;
            _loc7_ = (Std.int(_loc10_) & 15) << 4 | Std.int(_loc11_) >> 2;
            _loc8_ = (Std.int(_loc11_) & 3) << 6 | Std.int(_loc12_);
            _loc5_ += String.fromCharCode(Std.int(_loc6_));
            if (_loc11_ != 64) {
                _loc5_ += String.fromCharCode(Std.int(_loc7_));
            }
            if (_loc12_ != 64) {
                _loc5_ += String.fromCharCode(Std.int(_loc8_));
            }
        }
        return _loc5_;
    }

    public static function method_423(param1:String):ASAny {
        var _loc2_:ASAny = "";
        var _loc3_ = 0;
        while (_loc3_ < param1.length) {
            _loc2_ += param1.charCodeAt(_loc3_) + ",";
            _loc3_++;
        }
        return _loc2_.substr(0, _loc2_.length - 1);
    }

    static function method_77(param1:String):ASAny {
        var array:Array<String> = param1.split("");

        array.reverse();

        return array.join("");
    }
}

