module apps.workflows;

mixin(ImportPhobos!());

public { // required uim libraries
  import uim.core;
  import uim.oop;
  import uim.apps;
}

public { // admin-workflows libraries
  import apps.workflows.controllers;
  import apps.workflows.views;
}
