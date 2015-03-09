Takeaway Challenge
=================
[![Code Climate](https://codeclimate.com/github/stepholdcorn/takeaway/badges/gpa.svg)](https://codeclimate.com/github/stepholdcorn/takeaway)

Software to enable a customer to place an order and receive a text with their delivery time on it (using the Twilio API).

The following classes/modules are used.

### Class - Customer 
 Responsibilities        	 |Collaborators
 ----------------------------|-------------------
 View the menu 			     | Menu
 Place an order			     | Takeaway
 Receive a confirmation text | Takeaway


### Class - Takeaway 
 Responsibilities          |Collaborators
 --------------------------|-------------------
 Receive an order 		   | Customer
 Send a confirmation text  | Customer


### Module - Menu 
 Responsibilities        	|Collaborators
 ---------------------------|-------------------
 To contain items + prices  | Takeaway, Customer


### Module - Phone 
 Responsibilities        		|Collaborators
 -------------------------------|-------------------
 To contain texting facilities  | Takeaway, Customer