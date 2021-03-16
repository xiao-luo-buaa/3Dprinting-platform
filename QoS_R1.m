function QoS_R1
% static parameters of QoS for activity node R1[5] and generation method///
%// The number of service component in activity node R1[5] is i 
%// Copyright (c) 
%// Beihang university
%// All rights reserved.
%// This code is licensed under the Laboratory of Manufacturing Intelligent and Simulation Technology of Beihang university License.
% ////

% timer start ///
tic;
% ////

% the number of service component = i ///
i = 10;
% ////

% QoS include price, responsetime, availability, reliability, reputation
% here only use the parameter of price, responsetime, availability 

% price ///
randi([1 30],10,1)

% device online state///
deviceonlinestate_model = char('on','off','repair'); 
temp_deviceonlinestate = randint(1,1,[1 3]);
deviceonlinestate = deviceonlinestate_model(temp_deviceonlinestate,:); 
% ////

% printtimeconsuming ///
printtimeconsuming = randint(1,1,[1 30]);
% ////

% device faulty rate ///
devicefaultyrate = randint(1,1,[0 10]);
% ////

% device faulty type
devicefaultytype_model = char('nomaterial','feedingjam','motordamage','poweroutage');
temp_devicefaultytype = randint(1,1,[1 4]); %#ok<*DRNDINT>
devicefaultytype = devicefaultytype_model(temp_devicefaultytype,:); 

% generate dynamic_property ///
dynamic_property(i) = struct('deviceonlinestate',deviceonlinestate,'printtimeconsuming',printtimeconsuming,'devicefaultyrate',devicefaultyrate,'devicefaultytype',devicefaultytype);
% ///
end
dynamic_property;
% timer start ///
toc;
% timer over ///
end