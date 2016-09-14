# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

var calendar = $('#calendar').calendar({
    events_source: [
        {
            "id": 293,
            "title": "Event 1",
            "url": "http://example.com",
            "class": "event-important",
            "start": 12039485678000, // Milliseconds
            "end": 1234576967000 // Milliseconds
        },
        ...
    ]});
