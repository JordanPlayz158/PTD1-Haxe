package code;

import swf.exporters.animate.AnimateLibrary;
import openfl.utils.Assets;
import lime.tools.AssetType;
import openfl.utils.AssetLibrary;
import lime.utils.AssetBundle;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;
import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.net.SharedObject;
import compat.*;

class Main extends _Obj {
    @:allow(code) var var_213:_Obj;

    @:allow(code) var var_693:_Obj;

    @:allow(code) var var_240:SharedObject;

    @:allow(code) var usingPhone:Bool = false;

    @:allow(code) var sawDisclamer:Bool = false;

    @:allow(code) var sponsor:String;

    @:allow(code) var expIncrease:Float = 1;

    @:allow(code) var var_616:Int = 0;

    public function new() {
        for(k => v in Assets.getLibraryBindings()) {
            Assets.initBinding(k, null);
        }

        super(null);
        this.sponsor = this.method_359();
        this.method_369();
        this.method_377();
        this.var_213 = new Class_876(this);
        this.sawDisclamer = true;
        addChildAt(this.var_213, 0);

        //var temp = cast(getChildAt(0), GfxMovieClip);
        //printSpriteDetails(temp);
        
        //trace(Assets.cache);
        //trace(Assets.getLibraryBindings());
        //for(k => v in Assets.getLibraryBindings()) {
        //    trace(k + ":" + v);
        //}
        //var bitmap = new Bitmap(Assets.getBitmapData("ptd1:7166"));
        //addChild(bitmap);
        //printSpriteDetails(bitmap);
    }

    function printSpriteDetails(movieClip:DisplayObject) {
        var object = Type.getClassName(Type.getClass(movieClip));
        trace("----------------------------------------------------------------");
        trace('$object Object: ' + movieClip);

        try {
            var castMovieClip = cast(movieClip, GfxMovieClip);
            trace('Is $object Object enabled? ' + castMovieClip.enabled);
            trace('Is $object Object playing? ' + castMovieClip.isPlaying);
            trace('$object Object\'s Graphics: ' + castMovieClip.graphics);
        } catch(ignored) {}

        trace('$object Object\'s LoaderInfo: ' + movieClip.loaderInfo);

        if(movieClip.loaderInfo != null) {
            trace('$object Object\'s LoaderInfo\'s URL: ' + movieClip.loaderInfo.loader);
        }

        trace('$object Object\'s Name: ' + movieClip.name);
        trace('$object Object\'s Root: ' + movieClip.root);
        trace('$object Object\'s ToString Function: ' + movieClip.toString());
        trace('Is $object Object visible? ' + movieClip.visible);
    }

    @:allow(code) function method_359():String {
        return "ptd";
    }

    @:allow(code) function method_377() {
        this.var_240 = SharedObject.getLocal("PokeTD");
        if (this.var_240.data.musicSetting) {
            if (this.var_240.data.musicSetting == "on") {
                Class_1.var_25 = 1;
            } else if (this.var_240.data.musicSetting == "off") {
                Class_1.var_25 = 0;
            }
        }
        if (this.var_240.data.soundSetting) {
            if (this.var_240.data.soundSetting == "on") {
                Class_1.var_194 = 1;
            } else if (this.var_240.data.soundSetting == "off") {
                Class_1.var_194 = 0;
            }
        }
        if (this.var_240.data.damageText) {
            if (this.var_240.data.damageText == "on") {
                Class_1.var_359 = 1;
            } else if (this.var_240.data.damageText == "off") {
                Class_1.var_359 = 0;
            }
        }
    }

    @:allow(code) function method_347(param1:Event = null) {}

    @:allow(code) function method_369() {
        stage.addEventListener(MouseEvent.MOUSE_DOWN, this.mouse_Down);
        stage.addEventListener(MouseEvent.MOUSE_UP, this.mouse_Up);
        stage.addEventListener(MouseEvent.MOUSE_MOVE, this.mouse_Move);
        stage.addEventListener(Event.ENTER_FRAME, this.run);
        stage.addEventListener(KeyboardEvent.KEY_DOWN, this.method_346);
        stage.addEventListener(KeyboardEvent.KEY_UP, this.method_296);
    }

    @:allow(code) function method_439(param1:Event) {}

    @:allow(code) function method_421(param1:Event) {}

    @:allow(code) function method_346(param1:KeyboardEvent):Bool {
        this.var_213.key_Down(param1);
        return true;
    }

    @:allow(code) function method_296(param1:KeyboardEvent):Bool {
        this.var_213.key_Up(param1);
        return true;
    }

    @:allow(code) override function back_Pressed() {
        this.var_213.back_Pressed();
    }

    @:allow(code) override function send_Msg(param1:ASObject):ASObject {
        var _loc2_:ASAny = null;
        var _loc3_:ASAny = null;
        var _loc4_ = 0;
        if (Std.is(param1, String)) {
            _loc2_ = ASCompat.toString(param1);
        } else if (Std.is(param1, Array)) {
            _loc3_ = (ASCompat.dynamicAs(param1, Array) : Array<ASAny>);
            _loc2_ = _loc3_[0];
        } else {
            if (!Std.isOfType(param1, Int)) {
                return super.send_Msg(param1);
            }
            _loc4_ = ASCompat.toInt(param1);
        }
        if (_loc2_ == "exit") {
            this.method_347();
        } else {
            if (_loc2_ == "usingPhone") {
                return this.usingPhone;
            }
            if (_loc2_ == "sendPikachuCount") {
                ++this.var_616;
                return this.var_616;
            }
            if (_loc2_ == "getPikachuCount") {
                return this.var_616;
            }
            if (_loc2_ == "sawDisclamer") {
                return this.sawDisclamer;
            }
            if (_loc2_ == "sponsor") {
                return this.sponsor;
            }
            if (_loc2_ == "expIncrease") {
                return this.expIncrease;
            }
            if (_loc2_ == "change_Screen") {
                removeChild(this.var_213);
                this.var_213 = _loc3_[1];
                addChildAt(this.var_213, 0);
                return true;
            }
            if (_loc2_ == "overlay_Screen") {
                this.var_693 = this.var_213;
                this.var_213 = _loc3_[1];
                addChildAt(this.var_213, 1);
                return true;
            }
            if (_loc4_ == 11) {
                var temp:String = "";

                for(charCode in [80, 61, 89, 50, 90, 97, 115, 70, 71, 82, 97, 52, 81, 109, 121, 90, 104, 116, 71, 80, 98, 49]) {
                    temp += String.fromCharCode(charCode);
                }

                return Class_2.method_339(temp);
            }
            if (_loc2_ == "remove_Overlay") {
                removeChild(this.var_213);
                this.var_213 = this.var_693;
                return true;
            }
        }
        return super.send_Msg(param1);
    }

    @:allow(code) override function run(param1:Event = null):Bool {
        var _loc2_:ASAny = null;
        if (this.var_213 == null) {
            return false;
        }
        this.var_213.run(param1);
        if (Std.is(this.var_213, Class_875)) {
            _loc2_ = Std.downcast(this.var_213, Class_875);
            if (_loc2_.var_352 >= 2) {
                this.var_213.run(param1);
            }
            if (_loc2_.var_352 >= 3) {
                this.var_213.run(param1);
            }
            if (_loc2_.var_352 >= 4) {
                this.var_213.run(param1);
            }
        }
        return true;
    }

    @:allow(code) override function mouse_Down(param1:MouseEvent = null):Bool {
        return this.var_213.mouse_Down(param1);
    }

    @:allow(code) override function mouse_Up(param1:MouseEvent = null):Bool {
        return this.var_213.mouse_Up(param1);
    }

    @:allow(code) override function mouse_Move(param1:MouseEvent = null):Bool {
        return this.var_213.mouse_Move(param1);
    }
}
