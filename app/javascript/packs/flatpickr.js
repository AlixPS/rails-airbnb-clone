import flatpickr from 'flatpickr'
import { French } from "flatpickr/dist/l10n/fr.js"
import 'flatpickr/dist/flatpickr.css'

const today = new Date(Date.now());


flatpickr('#checkin_datepicker', {
  enableTime: true,
  locale:     French,
  minDate:    today,

  onChange: function(selectedDates, dateStr, instance) {
    flatpickr('#checkout_datepicker', {
      enableTime: true,
      locale:     French,
      minDate:    dateStr
    })
  }
});
