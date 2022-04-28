### Mobile Application Subscription Managment

- The device opened for the first time can be registered with the API.
- A mock address has been created for the purchase request made within the application.
- There are different mock addresses for Android and IOS platforms.
- Check Subscription has been created to check the latest status of the subscriber.
- For requests to Mock API addresses, username and password data were created via config.
- The queue process is running with the cron running every day. It performs regular and fast transactions according to the Expire Date value.
- Work has been done to minimize Ram Consumption and to provide a security layer.

# API

#### Register
#### Purchase
#### Check Subscription 
You can access the latest status of the users in the database by checking the OS mock addresses with the command below.

`php artisan checkSubscriptions`





###Performance

Redis and Queue operations are used for performance improvement.
Data is divided into parts to reduce RAM consumption.

Support is taken from horizon to check the latest status of queue operations.
`php artisan horizon`
> http://url/horizon


#### Used in this project

###### Horizon
###### Redis
###### Cache
###### Queues
###### Command
and more...


[LinkedIn](https://www.linkedin.com/in/atesenes/ "LinkedIn")
[Contact Me](mailto:enesates01@gmail.com "Contact Me")

###THANK YOU
