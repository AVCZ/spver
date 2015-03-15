l = 5

digs = [
0.50000 0.50000 0.50000
0.33333 0.10000 0.20000
0.33333 0.40000 0.60000
0.00000 0.00000 0.20000
0.50000 0.60000 0.60000
0.00000 0.10000 0.60000
0.50000 0.10000 0.70000
0.33333 0.50000 0.10000
0.33333 0.33333 0.60000
];

sdigs = sum(digs, 1)/9;

probs = zeros(2, l);

for k = 1:l
    for i = k:l
        probs(1, k) = probs(1, k) + nchoosek(l, i) * (sdigs(1) ^ (l-i)) * ((1-sdigs(1))^i);
        probs(2, k) = probs(2, k) + nchoosek(l, i) * (0.95 ^ (l-i)) * (0.05^i);
    end

end

probs
    