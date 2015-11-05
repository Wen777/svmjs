'use strict'

describe('hello template', function() {

    function waitForElement(selector, successCallback) {
        var checkInterval = 50;
        var timeoutInterval = jasmine.DEFAULT_TIMEOUT_INTERVAL;
        var startTime = Date.now();
        var intervalId = Meteor.setInterval(function() {
            if (Date.now() > startTime + timeoutInterval) {
                Meteor.clearInterval(intervalId);
                // Jasmine will handle the test timeout error
            } else if ($(selector).length > 0) {
                Meteor.clearInterval(intervalId);
                successCallback();
            }
        }, checkInterval);
    }


    // it('should be exist a button', function() {

    //     waitForElement('body > button', function() {});
    // });

    // it('should be exist text', function() {
    //     waitForElement('body > p', function() {
    //         expect()
    //     })
    // });

    it('should be session variable increase', function() {

        var counter = Session.get('counter');
        // expect after button click session increase
        $('body > button').click(function(event) {
            console.log("button click !")
            var result = Session.get('counter');
            expect(result).toBeGreaterThan(counter);
        });
    });
});