% Problem 1602 

%% (a) 
for i =1:5
X = randn(50, 50);
[U,~] = qr(X);
X = randn(50, 50);
[V,~] = qr(X);
diag_S = rand(1,50);
diag_S = sort(diag_S,"descend");
S = diag(diag_S);
A = U*S*V';
[U2, S2, V2] = svd(A);
disp(['Attempt ', num2str(i)])
disp(norm(U-U2));
disp(norm(V-V2));
disp(norm(S-S2));
disp(norm(A-U2*S2*V2'));
end

%% (b)
for i =1:5
X = randn(50, 50);
[U,~] = qr(X);
X = randn(50, 50);
[V,~] = qr(X);
diag_S = rand(1,50);
diag_S = sort(diag_S,"descend");
S = diag(diag_S);
A = U*S*V';
[U2, S2, V2] = svd(A);
ind = diag(U2'*U);
U2(:, ind<0) = - U2(:, ind<0);
V2(:, ind<0) = - V2(:, ind<0);
disp(['Attempt ', num2str(i)])
disp(norm(U-U2));
disp(norm(V-V2));
disp(norm(S-S2));
disp(norm(A-U2*S2*V2'));
end

%% (c) 
for i =1:5
X = randn(50, 50);
[U,~] = qr(X);
X = randn(50, 50);
[V,~] = qr(X);
diag_S = rand(1,50);
diag_S = diag_S.^6;
diag_S = sort(diag_S,"descend");
S = diag(diag_S);
A = U*S*V';
[U2, S2, V2] = svd(A);
ind = diag(U2'*U);
U2(:, ind<0) = - U2(:, ind<0);
V2(:, ind<0) = - V2(:, ind<0);
disp(['Attempt ', num2str(i)])
disp(norm(U-U2));
disp(norm(V-V2));
disp(norm(S-S2));
disp(norm(A-U2*S2*V2'));
end

