while true
readChId = 12397;
writeChId = 1721236; 
writeKey = '9P171NWFH8VXCPCV';  
i = 0;
snoringtotal = 0;
while(i<60)
clear device
clear data
device = serialport("COM5",115200);
data = read(device,20,"string");
snoringnot = str2double(extractBetween(data,10,14));
snoring = 1-snoringnot;
snoringtotal = snoringtotal + snoring;
snoringaverage = snoringtotal/i;
pause(1);
i=i+1;
end
thingSpeakWrite(writeChId,{snoringaverage,'on'},'writeKey',writeKey);

end
