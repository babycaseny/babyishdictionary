var babyish_spellchecker = {
  onLoad: function() {
    // initialization code
    this.initialized = true;
    this.strings = document.getElementById("babyish_spellchecker-strings");
  },

  onMenuItemCommand: function(e) {
    var promptService = Components.classes["@mozilla.org/embedcomp/prompt-service;1"]
                                  .getService(Components.interfaces.nsIPromptService);
    promptService.alert(window, this.strings.getString("helloMessageTitle"),
                                this.strings.getString("helloMessage"));
  },

  onToolbarButtonCommand: function(e) {
    // just reuse the function above.  you can change this, obviously!
    babyish_spellchecker.onMenuItemCommand(e);
  }
};

window.addEventListener("load", function () { babyish_spellchecker.onLoad(); }, false);


babyish_spellchecker.onFirefoxLoad = function(event) {
  document.getElementById("contentAreaContextMenu")
          .addEventListener("popupshowing", function (e) {
    babyish_spellchecker.showFirefoxContextMenu(e);
  }, false);
};

babyish_spellchecker.showFirefoxContextMenu = function(event) {
  // show or hide the menuitem based on what the context menu is on
  document.getElementById("context-babyish_spellchecker").hidden = gContextMenu.onImage;
};

window.addEventListener("load", function () { babyish_spellchecker.onFirefoxLoad(); }, false);