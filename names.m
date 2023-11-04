
%% MIMS
% data coordinates for letter 'M'
x_m_1 = [0 1.0 1.4 1.6 1.4 2.1 2.2 2.3 3.5 3.4 3.5 3.7 4.6];
y_m_1 = [0 2.2 3.6 4.1 3.6 1.8 1.2 1.7 3.6 4.1 3.6 2.2 0.0];

% % data coordinates for letter 'I'
x_i_3 = [6.0 6.9 7.8 7.0 6.7 6.6 5.9 6.3 7.2 8.2];
y_i_3 = [3.7 3.3 3.6 3.6 2.0 0.5 0.3 1.0 0.3 0.4];

% data coordinates for letter 'M'
x_m_2 = [8.6 9.3 9.5 9.3 10.1 10.4 10.7 11.5 11.3 11.6 12.6];
y_m_2 = [0.0 1.3 3.6 3.7 2.0 1.3 2.0 3.6 3.9 1.3 0];

% data coordinates for letter 'S'
x_s = [14.6 15.1 14.5 13.9 14.2 14.6 14.9 14.0 13.1 13.6];
y_s = [3.4 3.9 4.3 3.7 2.9 2.4 1.4 0.0 0.2 1.2];

n_m_1 = length(x_m_1);
n_i_3 = length(x_i_3);
n_m_2 = length(x_m_2);
n_s = length(x_s);

t_m_1 = 0:n_m_1-1; % Parametric coordinate t for 'M'
t_i_3 = 0:n_i_3-1; % Parametric coordinate t for 'I'
t_m_2 = 0:n_m_2-1; % Parametric coordinate t for 'M'
t_s = 0:n_s-1; % Parametric coordinate t for 'S'

tt_m_1 = 0:0.01:n_m_1-1; % More dense coordinate tt for spline interpolation of 'M'
tt_i_3 = 0:0.01:n_i_3-1; % More dense coordinate tt for spline interpolation of 'I'
tt_m_2 = 0:0.01:n_m_2-1; % More dense coordinate tt for spline interpolation of 'M'
tt_s = 0:0.01:n_s-1; % More dense coordinate tt for spline interpolation of 'S'

% Compute spline interpolation for 'M'
xx_m_1 = spline(t_m_1, x_m_1, tt_m_1);
yy_m_1 = spline(t_m_1, y_m_1, tt_m_1);

% Compute spline interpolation for 'I'
xx_i_3 = spline(t_i_3, x_i_3, tt_i_3);
yy_i_3 = spline(t_i_3, y_i_3, tt_i_3);

% Compute spline interpolation for 'M'
xx_m_2 = spline(t_m_2, x_m_2, tt_m_2);
yy_m_2 = spline(t_m_2, y_m_2, tt_m_2);

% Compute spline interpolation for 'S'
xx_s = spline(t_s, x_s, tt_s);
yy_s = spline(t_s, y_s, tt_s);

% Plot settings
figure(1)
plot(xx_m_1, yy_m_1, 'red', 'LineWidth', 1.5) % plot spline for 'M'
hold on
plot(x_m_1, y_m_1, 'bo', 'MarkerFaceColor', 'red') % plot data points for 'M' 

plot(xx_i_3, yy_i_3, 'b', 'LineWidth', 1.5) % plot spline for 'i'
plot(x_i_3, y_i_3, 'bo', 'MarkerFaceColor', 'blue') % plot data points for 'i'

plot(xx_m_2, yy_m_2, 'green', 'LineWidth', 1.5) % plot spline for 'M'
plot(x_m_2, y_m_2, 'bo', 'MarkerFaceColor', 'green') % plot data points for 'M'

plot(xx_s, yy_s, 'magenta', 'LineWidth', 1.5) % plot spline for 'S'
plot(x_s, y_s, 'bo', 'MarkerFaceColor', 'magenta') % plot data points for 'S'
axis([0 50 0 50]);
grid on;
title('Spline Interpolation for the M I M S');
xlabel('x');
ylabel('y');
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on 
legend('Spline M', 'Data points M','Spline i', 'Data Points i','Spline M', 'Data points M', 'Spline S', 'Data Points S');

%% IRA

% Data coordinates for letter ‘I’
x_i_4 = [2 2.5 3 2.8 2.6 2.7 3 3.4 3.8];
y_i_4 = [11 11.2 12 11 9 8.4 8 8.4 9.8];

% Data coordinates for letter ‘R’
x_r = [5 5.5 6 6 5.8 5.7 6.8 7.2 8.1 9 9.1];
y_r = [12 12.3 13 11.5 10 8 12.6 13 12.8 12 11.3];

% Data coordinates for letter ‘A’
x_a_3 = [14 13.2 12.5 11.2 11 11.2 12 13 13.5 14 14.2 15];
y_a_3 = [11 12 12.5 12 10.5 9 8 9 10 10 9 8.3];

n_i_4 = length(x_i_4);
n_r = length(x_r);
n_a_3 = length(x_a_3);

t_i_4 = 0:n_i_4-1;
t_r = 0:n_r-1;
t_a_3 = 0:n_a_3-1;

tt_i_4 = 0:0.01:n_i_4-1;
tt_r = 0:0.01:n_r-1;
tt_a_3 = 0:0.01:n_a_3-1;

% Spline interpolation for ‘I’
xx_i_4 = spline(t_i_4, x_i_4, tt_i_4);
yy_i_4 = spline(t_i_4, y_i_4, tt_i_4);

% Spline interpolation for ‘R’
xx_r = spline(t_r, x_r, tt_r);
yy_r = spline(t_r, y_r, tt_r);

% Spline interpolation for ‘A’
xx_a_3 = spline(t_a_3, x_a_3, tt_a_3);
yy_a_3 = spline(t_a_3, y_a_3, tt_a_3);

figure(1)
plot(xx_i_4, yy_i_4, 'magenta', 'LineWidth', 1.5)
hold on
plot(x_i_4, y_i_4, 'bo', 'MarkerFaceColor', 'magenta')

plot(xx_r, yy_r, 'red', 'LineWidth', 1.5)
plot(x_r, y_r, 'bo', 'MarkerFaceColor', 'red')

plot(xx_a_3, yy_a_3, 'magenta', 'LineWidth', 1.5)
plot(x_a_3, y_a_3, 'bo', 'MarkerFaceColor', 'magenta')

axis([0 50 0 50]);
grid on;
title('Spline Interpolation for the Letters I, R, and A');
xlabel('x');
ylabel('y');
set(gca, 'FontSize', 10, 'LineWidth', 1)

legend('Spline I', 'Data points I', 'Spline R', 'Data Points R', 'Spline A', 'Data points A');

