% Basit Aerodinamik Kaldırma Kuvveti Hesaplayıcı
% lift_calculator.m

clc; clear; close all;

disp('--- Basit Aerodinamik Kaldırma Kuvveti Hesaplayıcı ---');

% Kullanıcıdan girişler
rho = input('Hava yoğunluğu (kg/m^3): ');
V   = input('Hız (m/s): ');
S   = input('Kanat alanı (m^2): ');
CL  = input('Kaldırma katsayısı (CL): ');

% Kaldırma kuvveti hesaplama
Lift = 0.5 * rho * V^2 * S * CL;

% Sonucu göster
fprintf('Kaldırma kuvveti: %.2f Newton\n', Lift);

% Farklı hız değerleri için grafik
V_values = linspace(0, 100, 50);
Lift_values = 0.5 * rho .* (V_values.^2) * S * CL;

figure;
plot(V_values, Lift_values, 'LineWidth', 2);
grid on;
xlabel('Hız (m/s)');
ylabel('Kaldırma Kuvveti (N)');
title('Hız - Kaldırma Kuvveti İlişkisi');
