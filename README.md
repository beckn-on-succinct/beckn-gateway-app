# Beckn Gateway Application
This is  skeletal [succinct](https://github.com/venkatramanm/swf-all) application. that uses the plugin 
[beckn-gateway](https://github.com/venkatramanm/beckn-gateway). 

To build and install the app locally, 
===
You need to Clone and build the following repositories (using mvn install in each of the directories) in sequence
1. [Common](https://github.com/venkatramanm/common.git) 
2. [Beckn SDK for Java](https://github.com/venkatramanm/beckn-sdk-java.git) 
3. [Succinct Web Framework](https://github.com/venkatramanm/swf-all.git)
4. [Beckn plugin for Succinct](https://github.com/venkatramanm/swf-plugin-beckn.git)
5. [Beckn gateway plugin](https://github.com/venkatramanm/beckn-gateway.git). 


Then clone [this repo you are reading ](https://github.com/venkatramanm/beckn-gateway-app.git); 

1. Go into the cloned folder. 
    cd beckn-gateway-app

2. Copy sample overrideProperties.sample to overrideProperties;
    cp -R overrideProperties.sample overrideProperties 

3. Locate swf.propeties file in overrideProperties and edit the section pertaining to "Beckn Gateway configurations". 

4. from the base directory for beckn-gateway-app , run bin/swfstart 


*Your gateway will be up.  check logs in tmp/ folder to see if there are any issues and resolve them*





