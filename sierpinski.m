function sierpinski(rec)
    close all
    %Main Triangle
    hFig=figure;
    units=get(hFig,'units');
    set(hFig,'units','normalized','outerposition',[0 0 1 1], 'Color', 'white');
    set(hFig,'units',units); clear units
    hold on
    Vx=[0 0.5 1]; Vy=[0 realsqrt(3)/2 0];
    fill(Vx,Vy,'b')
    %the number of white triangles = sum(3.^(0:1:rec-1))
    whitex=NaN(3,sum(3.^(0:1:rec-1))); whitey=whitex; K=1;
    for S=1:rec
        [Vx,Vy]=sierpinskisect;
    end
    fill(whitex,whitey,'w')

    function [outX,outY]=sierpinskisect
        %the number of blue triangles = 3*number of precedent triangles
        L=size(Vx,1);
        outX=NaN(3*L,3); outY=outX; J=1;
        for I=1:L
            %left blue triangle
            outX(J,:)=[Vx(I,1) mean(Vx(I,(1:2))) mean(Vx(I,([1 3])))];
            outY(J,:)=[Vy(I,1) mean(Vy(I,(1:2))) mean(Vy(I,([1 3])))];
            J=J+1;
            %right blue triangle
            outX(J,:)=[mean(Vx(I,([1 3]))) mean(Vx(I,(2:3))) Vx(I,3)];
            outY(J,:)=[mean(Vy(I,([1 3]))) mean(Vy(I,(2:3))) Vy(I,3)];
            J=J+1;
            %upper blue triangle
            outX(J,:)=[mean(Vx(I,(1:2))) Vx(I,2) mean(Vx(I,(2:3)))];
            outY(J,:)=[mean(Vy(I,(1:2))) Vy(I,2) mean(Vy(I,(2:3)))];
            J=J+1;
            %white triangle
            whitex(:,K)=[outX(J-3,2);outX(J-3,3);outX(J-2,2)];
            whitey(:,K)=[outY(J-3,2);outY(J-3,3);outY(J-2,2)];
            K=K+1;
        end
    end
end