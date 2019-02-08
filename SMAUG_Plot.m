function [out]=SMAUG_Plot(Sample,out)
%% plots some plots of the output structure


c=colormap('lines');

%plot the # of states per iteration
figure
plot(out.L,'b','linewidth',2)
title('Mobility Sates')
ylabel('Number of Sates')
xlabel('Iteration')

%scatter plot of Dvals vs iteration
figure
for ii=1:2:Sample.isave-1 %every other to save some time 
    Dsort=sort(out.Dvals{ii});
    for jj=1:length(Dsort)
        scatter(ii,Dsort(jj),7,c(jj,:),'filled')
        hold on
    end
end
set(gca,'yscale','log')
axis tight
title('Diffusion Value Estimates vs Iteration')
ylabel('Diffusion Coeffecient, \mum^2/s')
xlabel('Iterations')

%scatter plot of Dvals vs weight fraction for the most probable model
figure
for ii=1:Sample.isave-1
    if out.L(ii)==mode(out.L)
        [s2(ii,:),i2]=sort(out.Dvals{ii});
        w2(ii,:)=out.Pi{ii}(i2)/sum(out.Pi{ii});
    end
end
s2(s2(:,1)==0,:)=[];
w2(w2(:,1)==0,:)=[];
w3=mean(w2,1);
s3=mean(s2,1);
figure
hold on
for ii=1:size(s2,1)
    for jj=1:mode(out.L)
        scatter(w2(ii,jj),s2(ii,jj),7,c(jj,:),'filled')
    end
end
set(gca,'yscale','log')
axis tight
titlestr=sprintf('Diffusion vs weight fraction for L = %d', mode(out.L));
title(titlestr)
ylabel('Diffusion Coeffecient, \mum^2/s')
xlabel('Weight Fraction')

end