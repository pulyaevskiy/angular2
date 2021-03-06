import "package:angular2/core.dart" show Directive, Self;

import "ng_control.dart" show NgControl;

/// Directive automatically applied to Angular forms that sets CSS classes
/// based on control status (valid/invalid/dirty/etc).
@Directive(selector: "[ngControl],[ngModel],[ngFormControl]", host: const {
  "[class.ng-untouched]": "ngClassUntouched",
  "[class.ng-touched]": "ngClassTouched",
  "[class.ng-pristine]": "ngClassPristine",
  "[class.ng-dirty]": "ngClassDirty",
  "[class.ng-valid]": "ngClassValid",
  "[class.ng-invalid]": "ngClassInvalid"
})
class NgControlStatus {
  NgControl _cd;
  NgControlStatus(@Self() NgControl cd) {
    this._cd = cd;
  }
  bool get ngClassUntouched {
    return _cd.control != null ? _cd.control.untouched : false;
  }

  bool get ngClassTouched {
    return _cd.control != null ? _cd.control.touched : false;
  }

  bool get ngClassPristine {
    return _cd.control != null ? _cd.control.pristine : false;
  }

  bool get ngClassDirty {
    return _cd.control != null ? _cd.control.dirty : false;
  }

  bool get ngClassValid {
    return _cd.control != null ? _cd.control.valid : false;
  }

  bool get ngClassInvalid {
    return _cd.control != null ? !_cd.control.valid : false;
  }
}
