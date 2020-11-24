function VoiceRecognition
% Records a small library and test word recognition

clc
warning off;

fs = 11025;
%fs =8000;
% RECORD LIBRARY SAMPLES

disp('Record Library Samples')

disp(' [1] Press Return to record first word');
k = waitforbuttonpress;
disp(' > Recording Started...')
obj1 = audiorecorder(8000,16,1,-1);
recordblocking(obj1,1);
LIBWORD_1 = getaudiodata(obj1)*1000;
disp(' | Recording Ended');
subplot(211); 
plot(LIBWORD_1);
title('Library Word 1 Signal'); 
ylabel('Amplitude (dB)');
xlabel('Time (Seconds)');
subplot(212);
spectrogram(LIBWORD_1,256,224,1024,fs,'yaxis');
title('Spectrogram of Signal');
ylabel('Frequency (Hz)');
xlabel('Time (Seconds)');

LIBWORD_1 = EndPointingVAD(LIBWORD_1); 
MFCCVectors_LIBWORD_1 = mfcc_calculator(LIBWORD_1);
play(obj1);


disp(' [2] Press Return to record second word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj2 = audiorecorder(8000,16,1,-1);
recordblocking(obj2,1);
LIBWORD_2 = getaudiodata(obj2)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_2); title('Library Word 2 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_2,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_2 = EndPointingVAD(LIBWORD_2); 
MFCCVectors_LIBWORD_2 = mfcc_calculator(LIBWORD_2);
play(obj2);

disp(' [3] Press Return to record third word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj3 = audiorecorder(8000,16,1,-1);
recordblocking(obj3,1);
LIBWORD_3 = getaudiodata(obj3)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_3); title('Library Word 3 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_3,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_3 = EndPointingVAD(LIBWORD_3);
MFCCVectors_LIBWORD_3 = mfcc_calculator(LIBWORD_3);
play(obj3);

disp(' [4] Press Return to record fourth word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj4 = audiorecorder(8000,16,1,-1);
recordblocking(obj4,1);
LIBWORD_4 = getaudiodata(obj4)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_4); title('Library Word 4 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_4,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_4 = EndPointingVAD(LIBWORD_4);
MFCCVectors_LIBWORD_4 = mfcc_calculator(LIBWORD_4);
play(obj4);

disp(' [5] Press Return to record 5th word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj5 = audiorecorder(8000,16,1,-1);
recordblocking(obj5,1);
LIBWORD_5 = getaudiodata(obj5)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_5); title('Library Word 5 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_5,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_5 = EndPointingVAD(LIBWORD_5);
MFCCVectors_LIBWORD_5 = mfcc_calculator(LIBWORD_5);
play(obj5);

disp(' [6] Press Return to record 6th word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj6 = audiorecorder(8000,16,1,-1);
recordblocking(obj6,1);
LIBWORD_6 = getaudiodata(obj6)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_6); title('Library Word 6 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_6,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_6 = EndPointingVAD(LIBWORD_6);
MFCCVectors_LIBWORD_6 = mfcc_calculator(LIBWORD_6);
play(obj6);

disp(' [7] Press Return to record 7th word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj7 = audiorecorder(8000,16,1,-1);
recordblocking(obj7,1);
LIBWORD_7 = getaudiodata(obj7)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_7); title('Library Word  7 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_7,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_7 = EndPointingVAD(LIBWORD_7);
MFCCVectors_LIBWORD_7 = mfcc_calculator(LIBWORD_7);
play(obj7);

disp(' [8] Press Return to record 8th word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj8 = audiorecorder(8000,16,1,-1);
recordblocking(obj8,1);
LIBWORD_8 = getaudiodata(obj8)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_8); title('Library Word 8 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_8,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_8 = EndPointingVAD(LIBWORD_8);
MFCCVectors_LIBWORD_8 = mfcc_calculator(LIBWORD_8);
play(obj8);

disp(' [9] Press Return to record 9th word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj9 = audiorecorder(8000,16,1,-1);
recordblocking(obj9,1);
LIBWORD_9 = getaudiodata(obj9)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_9); title('Library Word 9 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_9,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_9 = EndPointingVAD(LIBWORD_9);
MFCCVectors_LIBWORD_9 = mfcc_calculator(LIBWORD_9);
play(obj9);

disp(' [10] Press Return to record 10th word');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj10 = audiorecorder(8000,16,1,-1);
recordblocking(obj10,1);
LIBWORD_10 = getaudiodata(obj10)*1000;
disp(' | Recording Ended');
subplot(211); plot(LIBWORD_10); title('Library Word 6 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(212); spectrogram(LIBWORD_10,256,224,1024,fs,'yaxis'); title('Spectrogram of Signal'); ylabel('Frequency (Hz)'); xlabel('Time (Seconds)');
LIBWORD_10 = EndPointingVAD(LIBWORD_10);
MFCCVectors_LIBWORD_10 = mfcc_calculator(LIBWORD_10);
play(obj10);




disp('Library ok');
subplot(411); plot(LIBWORD_1); title('Library Word 1 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(412); plot(LIBWORD_2); title('Library Word 2 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(413); plot(LIBWORD_3); title('Library Word 3 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(414); plot(LIBWORD_4); title('Library Word 4 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
k = waitforbuttonpress;
subplot(411); plot(LIBWORD_5); title('Library Word 5 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(412); plot(LIBWORD_6); title('Library Word 6 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(413); plot(LIBWORD_7); title('Library Word 7 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(414); plot(LIBWORD_8); title('Library Word 8 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
k = waitforbuttonpress;
subplot(411); plot(LIBWORD_9); title('Library Word 9 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(412); plot(LIBWORD_10); title('Library Word 10 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(413); plot(LIBWORD_9); title('Library Word 9 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
subplot(414); plot(LIBWORD_10); title('Library Word 10 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');

% RECORD SAMPLE

disp('--------------');
disp('Press Return and say a sample from library');
k = waitforbuttonpress;
disp(' > Recording Started...');
obj5 = audiorecorder(8000,16,1,-1);
recordblocking(obj5,1);
TEST_SAMPLE = getaudiodata(obj5)*1000;
disp(' | Recording Ended');
TEST_SAMPLE =  EndPointingVAD(TEST_SAMPLE); 
play(obj5)
MFCCVectors_TEST_SAMPLE = mfcc_calculator(TEST_SAMPLE);

% COMPARE

[F , TS]=size(MFCCVectors_TEST_SAMPLE);
[F , LW1]=size(MFCCVectors_LIBWORD_1);
[F , LW2]=size(MFCCVectors_LIBWORD_2);
[F , LW4]=size(MFCCVectors_LIBWORD_4);
[F , LW3]=size(MFCCVectors_LIBWORD_3);
[F , LW5]=size(MFCCVectors_LIBWORD_5);
[F , LW6]=size(MFCCVectors_LIBWORD_6);
[F , LW7]=size(MFCCVectors_LIBWORD_7);
[F , LW8]=size(MFCCVectors_LIBWORD_8);
[F , LW9]=size(MFCCVectors_LIBWORD_9);
[F , LW10]=size(MFCCVectors_LIBWORD_10);


M = [TS,LW1,LW2,LW3,LW4,LW5,LW6,LW7,LW8,LW9,LW10];
[M,I] = max(M);

NMFCCVectors_TEST_SAMPLE = zeros(F,M);
NMFCCVectors_LIBWORD_1 = zeros(F,M);
NMFCCVectors_LIBWORD_2 = zeros(F,M);
NMFCCVectors_LIBWORD_4 = zeros(F,M);
NMFCCVectors_LIBWORD_3 = zeros(F,M);
NMFCCVectors_LIBWORD_5 = zeros(F,M);
NMFCCVectors_LIBWORD_6 = zeros(F,M);
NMFCCVectors_LIBWORD_7 = zeros(F,M);
NMFCCVectors_LIBWORD_8 = zeros(F,M);
NMFCCVectors_LIBWORD_9 = zeros(F,M);
NMFCCVectors_LIBWORD_10 = zeros(F,M);

NMFCCVectors_TEST_SAMPLE(1:F,1:TS)=MFCCVectors_TEST_SAMPLE;
NMFCCVectors_LIBWORD_1(1:F,1:LW1)=MFCCVectors_LIBWORD_1;
NMFCCVectors_LIBWORD_2(1:F,1:LW2)=MFCCVectors_LIBWORD_2;
NMFCCVectors_LIBWORD_4(1:F,1:LW4)=MFCCVectors_LIBWORD_4;
NMFCCVectors_LIBWORD_3(1:F,1:LW3)=MFCCVectors_LIBWORD_3;
NMFCCVectors_LIBWORD_5(1:F,1:LW5)=MFCCVectors_LIBWORD_5;
NMFCCVectors_LIBWORD_6(1:F,1:LW6)=MFCCVectors_LIBWORD_6;
NMFCCVectors_LIBWORD_7(1:F,1:LW7)=MFCCVectors_LIBWORD_7;
NMFCCVectors_LIBWORD_8(1:F,1:LW8)=MFCCVectors_LIBWORD_8;
NMFCCVectors_LIBWORD_9(1:F,1:LW9)=MFCCVectors_LIBWORD_9;
NMFCCVectors_LIBWORD_10(1:F,1:LW10)=MFCCVectors_LIBWORD_10;

DISTANCE_LW1 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_1);
DISTANCE_LW2 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_2);
DISTANCE_LW3 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_3);
DISTANCE_LW4 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_4);
DISTANCE_LW5 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_5);
DISTANCE_LW6 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_6);
DISTANCE_LW7 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_7);
DISTANCE_LW8 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_8);
DISTANCE_LW9 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_9);
DISTANCE_LW10 = DTW(NMFCCVectors_TEST_SAMPLE,NMFCCVectors_LIBWORD_10);

M = [DISTANCE_LW1,DISTANCE_LW2,DISTANCE_LW3,DISTANCE_LW4,DISTANCE_LW5,DISTANCE_LW6,DISTANCE_LW7,DISTANCE_LW8,DISTANCE_LW9,DISTANCE_LW10];
[A,I] = min(M);
if(I==1) 
    disp('Sample Matched LIBWORD_1');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_1); title('Matched Library Word 1 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj1) % LIBWORD_1
end
if(I==2)
    disp('Sample Matched LIBWORD_2');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_2); title('Matched Library Word 2 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj2) % LIBWORD_2
end
if(I==3)
    disp('Sample Matched LIBWORD_3');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_3); title('Matched Library Word 3 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
	play(obj3) % LIBWORD_3
end
if(I==4)
    disp('Sample Matched LIBWORD_4');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_4); title('Matched Library Word 4 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj4) % LIBWORD_4
end
if(I==5)
    disp('Sample Matched LIBWORD_5');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_5); title('Matched Library Word 5 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj6) % LIBWORD_5
end
if(I==6) 
    disp('Sample Matched LIBWORD_1');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_1); title('Matched Library Word 1 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj6) % LIBWORD_6
end
if(I==7)
    disp('Sample Matched LIBWORD_7');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_7); title('Matched Library Word 2 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj7) % LIBWORD_7
end
if(I==8)
    disp('Sample Matched LIBWORD_8');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_8); title('Matched Library Word 3 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
	play(obj8) % LIBWORD_8
end
if(I==9)
    disp('Sample Matched LIBWORD_9');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_9); title('Matched Library Word 9 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj9) % LIBWORD_9
end
if(I==10)
    disp('Sample Matched LIBWORD_10');
    subplot(211); plot(TEST_SAMPLE); title('Spoken Sample'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    subplot(212); plot(LIBWORD_10); title('Matched Library Word 10 Signal'); ylabel('Amplitude (dB)'); xlabel('Time (Seconds)');
    play(obj10) % LIBWORD_10
end