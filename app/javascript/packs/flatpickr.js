import flatpickr from 'flatpickr'
import { French } from "flatpickr/dist/l10n/fr.js"
import 'flatpickr/dist/flatpickr.css'

const today = new Date(Date.now());

flatpickr('.datepicker', {
  enableTime: true,
  locale: French
});

flatpickr('#checkin_datepicker', {
  minDate: today
});
