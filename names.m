
%% MIMS
% data coordinates for letter 'M I M S'
x_m_1 = [0 1.0 1.4 1.6 1.4 2.1 2.2 2.3 3.5 3.4 3.5 3.7 4.6];
y_m_1 = [0 2.2 3.6 4.1 3.6 1.8 1.2 1.7 3.6 4.1 3.6 2.2 0.0];

x_i_3 = [6.0 6.9 7.8 7.0 6.7 6.6 5.9 6.3 7.2 8.2];
y_i_3 = [3.7 3.3 3.6 3.6 2.0 0.5 0.3 1.0 0.3 0.4];

x_m_2 = [8.6 9.3 9.5 9.3 10.1 10.4 10.7 11.5 11.3 11.6 12.6];
y_m_2 = [0.0 1.3 3.6 3.7 2.0 1.3 2.0 3.6 3.9 1.3 0];

x_s = [14.6 15.1 14.5 13.9 14.2 14.6 14.9 14.0 13.1 13.6];
y_s = [3.4 3.9 4.3 3.7 2.9 2.4 1.4 0.0 0.2 1.2];

n_m_1 = length(x_m_1);
n_i_3 = length(x_i_3);
n_m_2 = length(x_m_2);
n_s = length(x_s);

% Parametric coordinate t for 'M I M S'
t_m_1 = 0:n_m_1-1;
t_i_3 = 0:n_i_3-1; 
t_m_2 = 0:n_m_2-1;
t_s = 0:n_s-1; 

% More dense coordinate tt for spline interpolation of 'M I M S'
tt_m_1 = 0:0.01:n_m_1-1; 
tt_i_3 = 0:0.01:n_i_3-1;
tt_m_2 = 0:0.01:n_m_2-1; 
tt_s = 0:0.01:n_s-1;

% Compute spline interpolation for 'M I M S'
xx_m_1 = spline(t_m_1, x_m_1, tt_m_1);
yy_m_1 = spline(t_m_1, y_m_1, tt_m_1);

xx_i_3 = spline(t_i_3, x_i_3, tt_i_3);
yy_i_3 = spline(t_i_3, y_i_3, tt_i_3);

xx_m_2 = spline(t_m_2, x_m_2, tt_m_2);
yy_m_2 = spline(t_m_2, y_m_2, tt_m_2);

xx_s = spline(t_s, x_s, tt_s);
yy_s = spline(t_s, y_s, tt_s);

% Plot settings
figure(1)
plot(xx_m_1, yy_m_1, 'red', 'LineWidth', 1.5) 
hold on
plot(x_m_1, y_m_1, 'bo', 'MarkerFaceColor', 'red') 

plot(xx_i_3, yy_i_3, 'b', 'LineWidth', 1.5) 
plot(x_i_3, y_i_3, 'bo', 'MarkerFaceColor', 'blue') 

plot(xx_m_2, yy_m_2, 'green', 'LineWidth', 1.5) 
plot(x_m_2, y_m_2, 'bo', 'MarkerFaceColor', 'green') 

plot(xx_s, yy_s, 'magenta', 'LineWidth', 1.5) 
plot(x_s, y_s, 'bo', 'MarkerFaceColor', 'magenta') 


%% IRA
% data coordinates for letter 'I'
x_i_4 = [2 2.5 3.0 2.8 2.6 2.7 3.0 3.4 3.8];
y_i_4 = [11 11.2 13.0 11 9 8.4 8 8.4 9.8];

% % data coordinates for letter 'R'
x_r = [5 5.5 6 6 5.8 5.7 6.7 8.4 8.8];
y_r = [12 12.3 13 11.5 10 8 13 12.8 12];


% data coordinates for letter 'A'
x_a_3 = [13 12.5 11.5 10.2 10 10.2 11 12 12.5 13 13.2 14];
y_a_3 = [11 12 12.5 12 10.5 9 8 9 10 11 9 8.3];


n_i_4 = length(x_i_4);
n_r = length(x_r);
n_a_3 = length(x_a_3);

t_i_4 = 0:n_i_4-1;
t_r = 0:n_r-1;
t_a_3 = 0:n_a_3-1; 

tt_i_4 = 0:0.01:n_i_4-1; 
tt_r = 0:0.01:n_r-1; 
tt_a_3 = 0:0.01:n_a_3-1;

% Compute spline interpolation for 'I'
xx_i_4 = spline(t_i_4, x_i_4, tt_i_4);
yy_i_4 = spline(t_i_4, y_i_4, tt_i_4);

% Compute spline interpolation for 'R'
xx_r = spline(t_r, x_r, tt_r);
yy_r = spline(t_r, y_r, tt_r);

% Compute spline interpolation for 'A'
xx_a_3 = spline(t_a_3, x_a_3, tt_a_3);
yy_a_3 = spline(t_a_3, y_a_3, tt_a_3);


% Plot settings
figure(1)
plot(xx_i_4, yy_i_4, 'magenta', 'LineWidth', 1.5) 
hold on
plot(x_i_4, y_i_4, 'bo', 'MarkerFaceColor', 'magenta') 

plot(xx_r, yy_r, 'red', 'LineWidth', 1.5) 
plot(x_r, y_r, 'bo', 'MarkerFaceColor', 'red') 

plot(xx_a_3, yy_a_3, 'magenta', 'LineWidth', 1.5) 
plot(x_a_3, y_a_3, 'bo', 'MarkerFaceColor', 'magenta') 

%% ---------------------------------------- nina ----------------------------------------
% n_2
x_n_2 = [1.7 0.4 2.2 2.8 2.7 2 2.2 3];
y_n_2 = [18.4 15 18 18.4 17 15.3 15 15.7];

% i_2
x_i_2 = [4 4.6 5.4 5.3 5 4.6 4.3 4.25 4.6];
y_i_2 = [16.7 17.1 18 18.5 18 17.1 16.1 15.4 15];

% n_3
x_n_3 = [6.7 5.4 7.2 7.8 7.7 7 7.2 8];
y_n_3 = [18.4 15 18 18.4 17 15.3 15 15.7];

% a
x_a_2 = [11 10.3 9.3 8.8 9.2 10.15 10.3 10.5];
y_a_2 = [18.4 17 15.4 15.4 17.3 18.4 17 15];

n_n_2 = length(x_n_2); 
n_i_2 = length(x_i_2); 
n_n_3 = length(x_n_3); 
n_a_2 = length(x_a_2);

t_n_2 = 0:n_n_2-1; 
t_i_2 = 0:n_i_2-1; 
t_n_3 = 0:n_n_3-1; 
t_a_2 = 0:n_a_2-1;

tt_n_2 = 0:0.01:n_n_2-1; 
tt_i_2 = 0:0.01:n_i_2-1; 
tt_n_3 = 0:0.01:n_n_3-1; 
tt_a_2 = 0:0.01:n_a_2-1;

xx_n_2 = spline(t_n_2, x_n_2, tt_n_2);
xx_i_2 = spline(t_i_2, x_i_2, tt_i_2);
xx_n_3 = spline(t_n_3, x_n_3, tt_n_3);
xx_a_2 = spline(t_a_2, x_a_2, tt_a_2);

yy_n_2 = spline(t_n_2, y_n_2, tt_n_2);
yy_i_2 = spline(t_i_2, y_i_2, tt_i_2);
yy_n_3 = spline(t_n_3, y_n_3, tt_n_3);
yy_a_2 = spline(t_a_2, y_a_2, tt_a_2);

figure(1)
plot(xx_n_2, yy_n_2, 'k', 'LineWidth', 1.5)
hold on
plot(x_n_2, y_n_2, 'bo')

plot(xx_i_2, yy_i_2, 'k', 'LineWidth', 1.5)
plot(x_i_2, y_i_2, 'bo')

plot(xx_n_3, yy_n_3, 'k', 'LineWidth', 1.5)
plot(x_n_3, y_n_3, 'bo')

plot(xx_a_2, yy_a_2, 'k', 'LineWidth', 1.5)
plot(x_a_2, y_a_2, 'bo')

%% HANI --------------------------------------------------------------------------------------

% data coordinates for letter 'H'
x_h = [2.0 1.0 1.5 2.5 3.0 2.7 3.0 3.7];
y_h = [26 22 24 24.5 24 22.5 22 23];

% % data coordinates for letter 'A'
x_a_1 = [7.0 6.0 5.2 5.0 5.5 6.7 7.1 7.0 6.8 6.7 7.0 7.7];
y_a_1 = [24 24.5 24 23 22 22.5 24.5 24 23 22.5 22 23];

% data coordinates for letter 'N'
x_n_1 = [10.0 9.25 9.5 10.25 11.0 11.5 11.25 11.5 12.2];
y_n_1 = [24.5 22 23 24 24.5 24 23 22 23];

% data coordinates for letter 'I'
x_i_1 = [14.0 14.5 14.75 15.0 14.6 14.7 15.6];
y_i_1 = [23.7 23.9 24.1 24.5 23 22 23];

n_h = length(x_h);
n_a_1 = length(x_a_1);
n_n_1 = length(x_n_1);
n_i_1 = length(x_i_1);

t_h = 0:n_h-1; 
t_a_1 = 0:n_a_1-1; 
t_n_1 = 0:n_n_1-1; 
t_i_1 = 0:n_i_1-1;

tt_h = 0:0.01:n_h-1; 
tt_a_1 = 0:0.01:n_a_1-1; 
tt_n_1 = 0:0.01:n_n_1-1; 
tt_i_1 = 0:0.01:n_i_1-1; 

% Compute spline interpolation for 'H'
xx_h = spline(t_h, x_h, tt_h);
yy_h = spline(t_h, y_h, tt_h);

% Compute spline interpolation for 'A'
xx_a_1 = spline(t_a_1, x_a_1, tt_a_1);
yy_a_1 = spline(t_a_1, y_a_1, tt_a_1);

% Compute spline interpolation for 'N'
xx_n_1 = spline(t_n_1, x_n_1, tt_n_1);
yy_n_1 = spline(t_n_1, y_n_1, tt_n_1);

% Compute spline interpolation for 'I'
xx_i_1 = spline(t_i_1, x_i_1, tt_i_1);
yy_i_1 = spline(t_i_1, y_i_1, tt_i_1);

% Plot settings
figure(1)
plot(xx_h, yy_h, 'blue', 'LineWidth', 1.5) 
hold on
plot(x_h, y_h, 'bo', 'MarkerFaceColor', 'blue') 

plot(xx_a_1, yy_a_1, 'red', 'LineWidth', 1.5)
plot(x_a_1, y_a_1, 'bo', 'MarkerFaceColor', 'red')

plot(xx_n_1, yy_n_1, 'green', 'LineWidth', 1.5)
plot(x_n_1, y_n_1, 'bo', 'MarkerFaceColor', 'green')

plot(xx_i_1, yy_i_1, 'magenta', 'LineWidth', 1.5)
plot(x_i_1, y_i_1, 'bo', 'MarkerFaceColor', 'magenta') 

%% --------------------------------------------------------------------------------------
axis([0 16 0 30])
grid on
title('Spline Interpolation of Cursive Letters Group Rawr')
xlabel('x')
ylabel('y')
set(gca, 'FontSize', 10, 'LineWidth', 1)
grid on
