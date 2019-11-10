import "bootstrap";
import "bootstrap-switch";
import "jquery";

import { slideToNext, slideToPrevious, finalSlide } from '../components/slider';

slideToNext();
slideToPrevious();
finalSlide();

$("[data-toggle='switch']").bootstrapSwitch();

$("[data-toggle='switch-coming']").bootstrapSwitch({onSwitchChange: (event) => {
    const comingTarget = document.querySelector(".coming-wrapper");
    event.preventDefault();
    comingTarget.classList.toggle("hidden-form");
}

});

$("[data-toggle='switch-accompanied']").bootstrapSwitch({onSwitchChange: (event) => {
    const firstNameTarget = document.querySelector(".guest_accompanying_first_name");
    const lastNameTarget = document.querySelector(".guest_accompanying_last_name");
    event.preventDefault();
    firstNameTarget.classList.toggle("hidden-form");
    lastNameTarget.classList.toggle("hidden-form");
}

});
    