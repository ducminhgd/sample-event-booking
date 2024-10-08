# Architcture decision record

## Context

We need a scalable and robust backend system for a global event booking platform that can handle a large number of users, especially during peak hours close to event dates. The system should allow users to easily search and book events happening worldwide, ensuring a smooth booking experience even under high traffic. The booking rocess should integrate with a payment gateway (e.g., Stripe) to handle ticket purchases securely. Upon successful booking, the system should send confirmation and  reminder notifications to the users before the event takes place.

Assumptions:

1. We don't have to implement Authorization and Authentication for a user.
2. We don't implement the payment integration, we just need implement a mock payment service.
3. The confirmation will be sent in an email have it has an option to add to Google Calendar for reminder notifications, we don't implement this.

## Decision

