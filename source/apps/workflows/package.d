/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.workflows;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

public {
  import apps.workflows.controllers;
  import apps.workflows.helpers;
  import apps.workflows.routers;
  import apps.workflows.tests;
  import apps.workflows.views;
}

static this() {
  auto myApp = App("workflowsApp", "apps/workflows");

  with (myApp) {
    importTranslations;
    addControllers([
      "wf.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("wf.index")),
      Route("/", HTTPMethod.GET, controller("wf.index"))
    );
  }

  AppRegistry.register("apps.workflows", myApp);
}
