module apps.myname;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-myname libraries
  import apps.myname.controllers;
  import apps.myname.views;
}
