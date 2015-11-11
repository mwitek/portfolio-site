/*!
 * jQuery touch-hover-to-link plugin
 * Original author: @mwitekdesign
 * Further changes, comments: https://github.com/red-green-refactor/touch-hover-to-link
 * Licensed under the MIT license
 */


var $, isTouchDevice;

$ = jQuery;

isTouchDevice = function() {
  return "ontouchend" in document.documentElement;
};

$.fn.extend({
  touchHoverToLink: function(options) {
    var $item, bindCloseHoverToBodyClick, bindTouchLinkClickEvent, item, setupTouchLinkItem, _dataLinkSet;
    _dataLinkSet = false;
    item = this;
    $item = $(item);
    dragging = null;
    setupTouchLinkItem = function() {
      $item.attr('data-href', $item.attr('href'));
      return $item.attr('href', "#touch_click_link");
    };
    bindTouchLinkClickEvent = function() {
      return $item.on('touchend', function(event) {
        if(dragging) {
          return;
        } else {
          if ($(event.currentTarget).attr('data-linkSet') === "true") {
            window.location.href = $(event.currentTarget).attr('data-href');
            _dataLinkSet = false;
          } else {
            $item.attr('data-linkSet', "false");
            $(event.currentTarget).attr('data-linkSet', "true");
            _dataLinkSet = true;
          }
        }
      });
    };
    
    bindCloseHoverToBodyClick = function() {
      return $('body').on('touchend', function(event) {
        dragging = false;
        if (!$(event.target).hasClass(item.selector.substring(1))) {
          if (_dataLinkSet === true) {
            $item.attr('data-linkSet', "false");
            _dataLinkSet = false;
          }
        }
      });
    };

    bindTouchMoveDetector = function () {
      $("body").on("touchmove", function(){
        dragging = true;
      });
    };

    if (isTouchDevice()) {
      setupTouchLinkItem();
      bindTouchLinkClickEvent();
      bindCloseHoverToBodyClick();
      bindTouchMoveDetector();
    }
  }
});