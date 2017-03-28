function output = gweather_Task()
clear all 
clc 
WeatherData = webread('https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22karachi%2Csindh%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys');
Faren = (WeatherData.query.results.channel.item.condition.temp);
output= num2str((str2num(Faren)-32)/1.8);
end