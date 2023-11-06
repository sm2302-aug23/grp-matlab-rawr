% cursiveData from Task 1
x_m_1 = [0 1.0 1.4 1.6 1.4 2.1 2.2 2.3 3.5 3.4 3.5 3.7 4.6];
y_m_1 = [0 2.2 3.6 4.1 3.6 1.8 1.2 1.7 3.6 4.1 3.6 2.2 0.0];

x_a_1 = [7.0 6.0 5.2 5.0 5.5 6.7 7.1 7.0 6.8 6.7 7.0 7.7];
y_a_1 = [24 24.5 24 23 22 22.5 24.5 24 23 22.5 22 23];

x_h = [2.0 1.0 1.5 2.5 3.0 2.7 3.0 3.7];
y_h = [26 22 24 24.5 24 22.5 22 23];

x_r = [5 5.5 6 6 5.8 5.7 6.7 8.4 8.8];
y_r = [12 12.3 13 11.5 10 8 13 12.8 12];

x_n_2 = [1.7 0.4 2.2 2.8 2.7 2 2.2 3];
y_n_2 = [18.4 15 18 18.4 17 15.3 15 15.7];

x_i_4 = [2 2.5 3.0 2.8 2.6 2.7 3.0 3.4 3.8];
y_i_4 = [11 11.2 13.0 11 9 8.4 8 8.4 9.8];

% Defining the map
cursiveData = containers.Map;
cursiveData('M') = [x_m_1, y_m_1];
cursiveData('a') = [x_a_1, y_a_1];
cursiveData('h') = [x_h, y_h];
cursiveData('r') = [x_r, y_r];
cursiveData('n') = [x_n_2, y_n_2];
cursiveData('i') = [x_i_4, y_i_4];

function plotWord(inputWord, cursiveData)
    combinedData = [];
    
    for i = 1:length(inputWord)
        letter = inputWord(i);
        
        if isKey(cursiveData, letter)
            letterData = cursiveData(letter);
            combinedData = [combinedData; letterData];
        else
            error(['Cursive data not available for letter: ' letter]);
        end
    end

    plot(combinedData(:, 1), combinedData(:, 2), 'b-', 'LineWidth', 2);
    title(inputWord);
    axis equal;
    xlabel('X-coordinate');
    ylabel('Y-coordinate');
end

