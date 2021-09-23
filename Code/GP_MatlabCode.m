close all;
noise=rand(500,1);


SNRdBvalue = 30;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 20;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 15;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 13;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 11;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 10;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 8;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 5;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = 0;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = -2;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = -5;
calculateCACFAR(SNRdBvalue, noise);

SNRdBvalue = -10;
calculateCACFAR(SNRdBvalue, noise);

function y = calculateCACFAR(SNRdBvalue, noise)

signal=noise;
signal([100, 300, 450])=[noise(100)*10^(SNRdBvalue/10), noise(300)*10^(SNRdBvalue/10), noise(450)*10^(SNRdBvalue/10)];

refLength=12;
guardLength=3;
offset=0.25;
cfarWin=ones((refLength+guardLength)*2+1,1);
cfarWin(refLength+1:refLength+1+2*guardLength)=0;
cfarWin=cfarWin/sum(cfarWin);
noiseLevel=conv(signal,cfarWin,'same');

cfarThreshold=noiseLevel+offset;

figure,plot(signal);
hold on,plot(cfarThreshold,'r--','LineWidth',2)
legend('Signal','CFAR Threshold')
xlabel('Resolution Bin Index');
ylabel('dB');
title(["CACFAR when the SNR is "+SNRdBvalue]);

end