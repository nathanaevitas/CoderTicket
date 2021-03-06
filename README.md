# Homework 3 - *Coder Ticket*

**Coder Ticket** is a Ruby on Rails blog application that allows users to create and buy tickets to cool events. 

Submitted by: **Nathan Tran*

Time spent: **40** hours

URL: **https://coderticket1.herokuapp.com/**

SimpleCov Test Coverage: **Insert percentage or link to report here**

## User Stories

The following **required** functionality is complete:

* [x] 10 model tests, 2 route tests, 2 controller tests, 2 view tests.

#### Events

* [x] Users can see a list of upcoming events. Past events should not be shown. **HINT**: Good candidate for a test.
* [x] Users can search for events from the homepage.
* [x] Users can click on an event to see details about the event. 
* [x] Users can click on "Book Now" to go to a page to purchase tickets.

#### Tickets

* [x] Each event can have multiple types of tickets, each with a different `price` and `max_quantity`. 
* [x] Users can buy tickets to an event, choose the types of tickets, and the quantity of tickets.
* [ ] Users cannot buy more tickets than the quantity available.
* [x] Users can only buy up to 10 of a ticket type at a time.
* [x] Users cannot buy tickets to events that occur in the past. 

#### Users

* [x] User can sign up by providing their email, password, and name. 
* [x] User can login using an email and password. 
* [x] Users can create events. 
* [ ] Users must click "publish event" before an event becomes viewable to other users. 
* [x] Users can create ticket types for that event. 
* [x] Users can create venues.
* [x] An event must have at least one `ticket_type` defined before it can be published. 
* [ ] User can see a list of events he or she has created.
* [ ] Users can edit their event after creation. But only the user who created the event can edit the event. 

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![Video Walkthrough](http://myphamdongy.net/coderticketdemo.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).
## Notes

Describe any challenges encountered while building the app.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
