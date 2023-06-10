/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.workflows.controllers.pages.error;

import apps.workflows;
@safe:

class DWFLErrorPageController : DPageController {
  mixin(ControllerThis!("WFLErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(WFLErrorView(this));
  }
}
mixin(ControllerCalls!("WFLErrorPageController"));
