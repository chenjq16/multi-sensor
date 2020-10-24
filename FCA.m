S1 = 4.7;
dS1 = 2.0;
S2 = 1.6;
dS2 = 1.6;
S3 = 3.0;
dS3 = 1.5;
S4 = 1.8;
dS4 = 1.0;
S5 = [3.0, 1.0, 2.5, 0.9];
dS5 = 1.6;
n = 50;
A = [S1, S2, S3, S4];
B = [dS1, dS2, dS3, dS4];
for i = 1:n
    V1 = [S1, S2, S3, S4];
    rmin = min([S2-dS2, S3-dS3, S4-dS4]);
    rmax = max([S2+dS2, S3+dS3, S4+dS4]);
    if rmin <= S5(1) && rmax >= S5(1)
        V1 = [V1, S5(1)];
    else
        V1 = [V1, mean([S2, S3, S4])];
    end
    V2 = [S1, S2, S3, S4];
    rmin = min([S1-dS1, S3-dS3, S4-dS4]);
    rmax = max([S1+dS1, S3+dS3, S4+dS4]);
    if rmin <= S5(2) && rmax >= S5(2)
        V2 = [V2, S5(2)];
    else
        V2 = [V2, mean([S1, S3, S4])];
    end
    V3 = [S1, S2, S3, S4];
    rmin = min([S1-dS1, S2-dS2, S4-dS4]);
    rmax = max([S1+dS1, S2+dS2, S4+dS4]);
    if rmin <= S5(3) && rmax >= S5(3)
        V3 = [V3, S5(3)];
    else
        V3 = [V3, mean([S1, S2, S4])];
    end
    V4 = [S1, S2, S3, S4];
    rmin = min([S1-dS1, S2-dS2, S3-dS3]);
    rmax = max([S1+dS1, S2+dS2, S3+dS3]);
    if rmin <= S5(4) && rmax >= S5(4)
        V4 = [V4, S5(4)];
    else
        V4 = [V4, mean([S1, S2, S3])];
    end
    S1 = mean(V1);
    S2 = mean(V2);
    S3 = mean(V3);
    S4 = mean(V4);
    dS1 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    dS2 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    dS3 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    dS4 = max([S1, S2, S3, S4]) - min([S1, S2, S3, S4]);
    A = [A; S1, S2, S3, S4];
    B = [B; dS1, dS2, dS3, dS4];
end