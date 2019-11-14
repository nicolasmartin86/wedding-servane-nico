import "bootstrap";
import "bootstrap-switch";
import "jquery";

import { slideToNext, slideToPrevious } from '../components/slider';

slideToNext();
slideToPrevious();

import { slideCardToNext, slideCardToPrevious } from '../components/card_slider';

const cardPlaces = document.querySelector(".card-places");

if (cardPlaces) {
    slideCardToNext();
    slideCardToPrevious();
}

import { initMapbox } from '../components/map';

const mapPage = document.getElementById('map-places');

if (mapPage) {
    initMapbox();
}

$("[data-toggle='switch']").bootstrapSwitch();

$("[data-toggle='switch-coming']").bootstrapSwitch( 
    {onSwitchChange: (event) => {
        const comingTarget = document.querySelector(".coming-wrapper");
        const goodAnswer = document.querySelector(".good-answer");
        const badAnswer = document.querySelector(".bad-answer");
        event.preventDefault();
        comingTarget.classList.toggle("hidden-form");
        if (event.currentTarget.checked) {
            goodAnswer.classList.remove("hidden-form");
            badAnswer.classList.add("hidden-form");
        } else {
            goodAnswer.classList.add("hidden-form");
            badAnswer.classList.remove("hidden-form");
        }
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
    