package fl.transitions
;
import xyz.jordanplayz158.ptd1.GfxMovieClip;
import xyz.jordanplayz158.ptd1.SamURLVariables;
import openfl.net.*;
import openfl.display.*;
import openfl.*;
import compat.*;

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.geom.Rectangle;

class Transition extends EventDispatcher {

    public static inline final IN:UInt = 0;

    public static inline final OUT:UInt = 1;


    public var ID:Int = 0;

    var _content:GfxMovieClip;

    var _manager:TransitionManager;

    var _direction:UInt = 0;

    var _duration:Float = 2;

    var _easing:ASFunction;

    var _progress:Float = Math.NaN;

    var _innerBounds:Rectangle;

    var _outerBounds:Rectangle;

    var _width:Float = Math.NaN;

    var _height:Float = Math.NaN;

    var _twn:Tween;

    public function new(param1:GfxMovieClip, param2:ASObject, param3:TransitionManager) {
        super();
        this.content = param1;
        this.direction = param2.direction;
        this.duration = param2.duration;
        this.easing = param2.easing;
        this.manager = param3;
        this._innerBounds = this.manager._innerBounds;
        this._outerBounds = this.manager._outerBounds;
        this._width = this.manager._width;
        this._height = this.manager._height;
        this._resetTween();
    }

    public var type(get, never):Class<Dynamic>;

    function get_type():Class<Dynamic> {
        return Transition;
    }


    public var manager(get, set):TransitionManager;

    function set_manager(param1:TransitionManager):TransitionManager {
        if (this._manager != null) {
            this.removeEventListener("TransitionInDone", this._manager.TransitionInDone);
            this.removeEventListener("TransitionOutDone", this._manager.TransitionOutDone);
        }
        this._manager = param1;
        this.addEventListener("TransitionInDone", this._manager.TransitionInDone);
        this.addEventListener("TransitionOutDone", this._manager.TransitionOutDone);
        return param1;
    }

    function get_manager():TransitionManager {
        return this._manager;
    }


    public var content(get, set):GfxMovieClip;

    function set_content(param1:GfxMovieClip):GfxMovieClip {
        if (param1 != null) {
            this._content = param1;
            if (this._twn != null) {
                this._twn.obj = param1;
            }
        }
        return param1;
    }

    function get_content():GfxMovieClip {
        return this._content;
    }


    public var direction(get, set):Float;

    function get_direction():Float {
        return this._direction;
    }

    function set_direction(param1:Float):Float {
        this._direction = !!ASCompat.floatAsBool(param1) ? 1 : 0;
        return param1;
    }


    public var duration(get, set):Float;

    function get_duration():Float {
        return this._duration;
    }

    function set_duration(param1:Float):Float {
        if (ASCompat.floatAsBool(param1)) {
            this._duration = param1;
            if (this._twn != null) {
                this._twn.duration = param1;
            }
        }
        return param1;
    }


    public var easing(get, set):ASFunction;

    function get_easing():ASFunction {
        return this._easing;
    }

    function set_easing(param1:ASFunction):ASFunction {
        this._easing = param1;
        if (this._twn != null) {
            this._twn.func = param1;
        }
        return param1;
    }


    public var progress(get, set):Float;

    function set_progress(param1:Float):Float {
        if (this._progress == param1) {
            return param1;
        }
        this._progress = param1;
        if (this._direction != 0) {
            this._render(1 - param1);
        }
        else {
            this._render(param1);
        }
        this.dispatchEvent(new Event("TransitionProgress"));
        return param1;
    }

    function get_progress():Float {
        return this._progress;
    }

    public function start() {
        this.content.visible = true;
        this._twn.start();
    }

    public function stop() {
        this._twn.fforward();
        this._twn.stop();
    }

    public function cleanUp() {
        this.removeEventListener("TransitionInDone", this._manager.TransitionInDone);
        this.removeEventListener("TransitionOutDone", this._manager.TransitionOutDone);
        this.stop();
    }

    public function drawBox(param1:GfxMovieClip, param2:Float, param3:Float, param4:Float, param5:Float) {
        param1.graphics.moveTo(param2, param3);
        param1.graphics.lineTo(param2 + param4, param3);
        param1.graphics.lineTo(param2 + param4, param3 + param5);
        param1.graphics.lineTo(param2, param3 + param5);
        param1.graphics.lineTo(param2, param3);
    }

    public function drawCircle(param1:GfxMovieClip, param2:Float, param3:Float, param4:Float) {
        param1.graphics.moveTo(param2 + param4, param3);
        param1.graphics.curveTo(param4 + param2, Math.tan(0) * param4 + param3, Math.sin(0) * param4 + param2, Math.sin(0) * param4 + param3);
        param1.graphics.curveTo(Math.tan(0) * param4 + param2, param4 + param3, param2, param4 + param3);
        param1.graphics.curveTo(-Math.tan(0) * param4 + param2, param4 + param3, -Math.sin(0) * param4 + param2, Math.sin(0) * param4 + param3);
        param1.graphics.curveTo(-param4 + param2, Math.tan(0) * param4 + param3, -param4 + param2, param3);
        param1.graphics.curveTo(-param4 + param2, -Math.tan(0) * param4 + param3, -Math.sin(0) * param4 + param2, -Math.sin(0) * param4 + param3);
        param1.graphics.curveTo(-Math.tan(0) * param4 + param2, -param4 + param3, param2, -param4 + param3);
        param1.graphics.curveTo(Math.tan(0) * param4 + param2, -param4 + param3, Math.sin(0) * param4 + param2, -Math.sin(0) * param4 + param3);
        param1.graphics.curveTo(param4 + param2, -Math.tan(0) * param4 + param3, param4 + param2, param3);
    }

    function _render(param1:Float) {
    }

    function _resetTween() {
        if (this._twn != null) {
            this._twn.stop();
            this._twn.removeEventListener(TweenEvent.MOTION_FINISH, this.onMotionFinished);
        }
        this._twn = new Tween(this, "", this.easing, 0, 1, this.duration, true);
        this._twn.stop();
        this._twn.prop = "progress";
        this._twn.addEventListener(TweenEvent.MOTION_FINISH, this.onMotionFinished, false, 0, true);
    }

    function _noEase(param1:Float, param2:Float, param3:Float, param4:Float):Float {
        return param3 * param1 / param4 + param2;
    }

    public function onMotionFinished(param1:ASObject) {
        if (this.direction == Transition.OUT) {
            this.dispatchEvent(new Event("TransitionOutDone"));
        }
        else {
            this.dispatchEvent(new Event("TransitionInDone"));
        }
    }
}

