S1 = [2.7, 6.7];
S2 = [0, 3.2];
S3 = [1.5, 4.5];
S4 = [0.8, 2.8];
S5 = [1.4, 4.6;
    -0.6, 2.6;
    -0.9, 4.1;
    -0.7, 2.5];
n = 10;
A = [4.7, 1.6, 3.0, 1.8];
B = [2.0, 1.6, 1.5, 1.0];
for i = 1:n
    C1 = [];
    C2 = [];
    C3 = [];
    C4 = [];
    
    V1 = [S1; S2; S3; S4; S5(1,:)];
    V2 = [S1; S2; S3; S4; S5(2,:)];
    V3 = [S1; S2; S3; S4; S5(3,:)];
    V4 = [S1; S2; S3; S4; S5(4,:)];
    ck = nchoosek(1:5,4); 
    
    h1 = 1;
    S = V1(1,:);
    for j = 1:4
        if isinter(S, V1(j+1,:)) == 1
            S = inter(S, V1(j+1,:));
            h1 = h1 + 1;
            if h1 == 5
                C1 = [C1; h1, S(1), S(2)];
            end
        end
    end
    
    for j = 1:length(ck)
        temp = [V1(ck(j,1),:); V1(ck(j,2),:); V1(ck(j,3),:); V1(ck(j,4),:)];
        h1 = 1;
        S = temp(1,:);
        for k = 1:3
            if isinter(S, temp(k+1,:)) == 1
                S = inter(S, temp(k+1,:));
                h1 = h1 + 1;
                if h1 == 4
                    if ~isempty(C1) && (C1(1) == 5)
                       if S(1) < C1(1,2) 
                           C1 = [C1; h1, S(1), C1(1,2)];
                       end
                       if S(2) > C1(1,3)
                           C1 = [C1; h1, C1(1,3), S(2)];
                       end
                    else
                        C1 = [C1; h1, S(1), S(2)];
                    end
                end
            end
        end
    end
    
    h2 = 1;
    S = V2(1,:);
    for j = 1:4
        if isinter(S, V2(j+1,:)) == 1
            S = inter(S, V2(j+1,:));
            h2 = h2 + 1;
            if h2 == 5
                C2 = [C2; h2, S(1), S(2)];
            end
        end
    end
    
    for j = 1:length(ck)
        temp = [V2(ck(j,1),:); V2(ck(j,2),:); V2(ck(j,3),:); V2(ck(j,4),:)];
        h2 = 1;
        S = temp(1,:);
        for k = 1:3
            if isinter(S, temp(k+1,:)) == 1
                S = inter(S, temp(k+1,:));
                h2 = h2 + 1;
                if h2 == 4
                    if ~isempty(C2) && (C2(1) == 5)
                       if S(1) < C2(1,2) 
                           C2 = [C2; h2, S(1), C2(1,2)];
                       end
                       if S(2) > C2(1,3)
                           C2 = [C2; h2, C2(1,3), S(2)];
                       end
                    else
                        C2 = [C2; h2, S(1), S(2)];
                    end
                end
            end
        end
    end
    
    h3 = 1;
    S = V3(1,:);
    for j = 1:4
        if isinter(S, V3(j+1,:)) == 1
            S = inter(S, V3(j+1,:));
            h3 = h3 + 1;
            if h3 == 5
                C3 = [C3; h3, S(1), S(2)];
            end
        end
    end
    
    for j = 1:length(ck)
        temp = [V3(ck(j,1),:); V3(ck(j,2),:); V3(ck(j,3),:); V3(ck(j,4),:)];
        h3 = 1;
        S = temp(1,:);
        for k = 1:3
            if isinter(S, temp(k+1,:)) == 1
                S = inter(S, temp(k+1,:));
                h3 = h3 + 1;
                if h3 == 4
                    if ~isempty(C3) && (C3(1) == 5)
                       if S(1) < C3(1,2) 
                           C3 = [C3; h3, S(1), C3(1,2)];
                       end
                       if S(2) > C3(1,3)
                           C3 = [C3; h3, C3(1,3), S(2)];
                       end
                    else
                        C3 = [C3; h3, S(1), S(2)];
                    end
                end
            end
        end
    end
    
    h4 = 1;
    S = V4(1,:);
    for j = 1:4
        if isinter(S, V4(j+1,:)) == 1
            S = inter(S, V4(j+1,:));
            h4 = h4 + 1;
            if h4 == 5
                C4 = [C4; h4, S(1), S(2)];
            end
        end
    end
    
    for j = 1:length(ck)
        temp = [V4(ck(j,1),:); V4(ck(j,2),:); V4(ck(j,3),:); V4(ck(j,4),:)];
        h4 = 1;
        S = temp(1,:);
        for k = 1:3
            if isinter(S, temp(k+1,:)) == 1
                S = inter(S, temp(k+1,:));
                h4 = h4 + 1;
                if h4 == 4
                    if ~isempty(C4) && (C4(1) == 5)
                       if S(1) < C4(1,2) 
                           C4 = [C4; h4, S(1), C4(1,2)];
                       end
                       if S(2) > C4(1,3)
                           C4 = [C4; h4, C4(1,3), S(2)];
                       end
                    else
                        C4 = [C4; h4, S(1), S(2)];
                    end
                end
            end
        end
    end
    
    p1 = 0; p2 = 0; p3 = 0; p4 = 0;
    q1 = 0; q2 = 0; q3 = 0; q4 = 0;
    for i = 1:size(C1,1)
        p1 = p1 + C1(i,1)*(C1(i,2)+C1(i,3))/2;
        q1 = q1 + C1(i,1);
    end
    s1 = p1/q1;
    for i = 1:size(C2,1)
        p2 = p2 + C2(i,1)*(C2(i,2)+C2(i,3))/2;
        q2 = q2 + C2(i,1);
    end
    s2 = p2/q2;    
    for i = 1:size(C3,1)
        p3 = p3 + C3(i,1)*(C3(i,2)+C3(i,3))/2;
        q3 = q3 + C3(i,1);
    end
    s3 = p3/q3;
    for i = 1:size(C4,1)
        p4 = p4 + C4(i,1)*(C4(i,2)+C4(i,3))/2;
        q4 = q4 + C4(i,1);
    end
    s4 = p4/q4;
    A = [A; s1, s2, s3, s4];
    S1 = [min(C1(:,2)), max(C1(:,3))];
    S2 = [min(C2(:,2)), max(C2(:,3))];
    S3 = [min(C3(:,2)), max(C3(:,3))];
    S4 = [min(C4(:,2)), max(C4(:,3))];
    B = [B; (S1(2)-S1(1))/2, (S2(2)-S2(1))/2, (S3(2)-S3(1))/2, (S4(2)-S4(1))/2];
    
end
function y = isinter(A, B)
if (A(2) < B(1)) || (A(1) > B(2))
    y = 0;
else
    y = 1;
end
end
function C = inter(A, B)
a = max([A(1), B(1)]);
b = min([A(2), B(2)]);
C = [a, b]; 
end