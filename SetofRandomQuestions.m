% Randomnised the questions in the question list with unpredictable
% sequence
rng('shuffle')
%% Round 1 set of questions 
Round1questions = {Q1R1,Q2R1,Q3R1,Q4R1,Q5R1,Q6R1,Q7R1,Q8R1,Q9R1,Q10R1,Q11R1,Q12R1,Q13R1,Q14R1,Q15R1,Q16R1,Q17R1,Q18R1,Q19R1,Q20R1,Q21R1,Q22R1,Q23R1,Q24R1,Q25R1};
chosenquestionR1 = Round1questions{randi(length(Round1questions))};
%% Round 2 set of questions 
Round2questions = {Q1R2,Q2R2,Q3R2,Q4R2,Q5R2,Q6R2,Q7R2,Q8R2,Q9R2,Q10R2,Q11R2,Q12R2,Q13R2,Q14R2,Q15R2,Q16R2,Q17R2,Q18R2,Q19R2,Q20R2,Q21R2,Q22R2,Q23R2,Q24R2,Q25R2};
chosenquestionR2 = Round2questions{randi(length(Round2questions))};
%% Round 3 set of questions 
Round3questions = {Q1R3,Q2R3,Q3R3,Q4R3,Q5R3,Q6R3,Q7R3,Q8R3,Q9R3,Q10R3,Q11R3,Q12R3,Q13R3,Q14R3,Q15R3,Q16R3,Q17R3,Q18R3,Q19R3,Q20R3,Q21R3,Q22R3,Q23R3,Q24R3,Q25R3};
chosenquestionR3 = Round3questions{randi(length(Round3questions))};
%% Round 4 set of questions 
Round4questions = {Q1R4,Q2R4,Q3R4,Q4R4,Q5R4,Q6R4,Q7R4,Q8R4,Q9R4,Q10R4,Q11R4,Q12R4,Q13R4,Q14R4,Q15R4,Q16R4,Q17R4,Q18R4,Q19R4,Q20R4,Q21R4,Q22R4,Q23R4,Q24R4,Q25R4};
chosenquestionR4 = Round4questions{randi(length(Round4questions))};
%% Round 5 set of questions 
Round5questions = {Q1R5,Q2R5,Q3R5,Q4R5,Q5R5,Q6R5,Q7R5,Q8R5,Q9R5,Q10R5,Q11R5,Q12R5,Q13R5,Q14R5,Q15R5,Q16R5,Q17R5,Q18R5,Q19R5,Q20R5,Q21R5,Q22R5,Q23R5,Q24R5,Q25R5};
chosenquestionR5 = Round5questions{randi(length(Round5questions))};
%% Round 6 set of questions 
Round6questions = {Q1R6,Q2R6,Q3R6,Q4R6,Q5R6,Q6R6,Q7R6,Q8R6,Q9R6,Q10R6,Q11R6,Q12R6,Q13R6,Q14R6,Q15R6,Q16R6,Q17R6,Q18R6,Q19R6,Q20R6,Q21R6,Q22R6,Q23R6,Q24R6,Q25R6};
chosenquestionR6 = Round6questions{randi(length(Round6questions))};
%% Round 7 set of questions 
Round7questions = {Q1R7,Q2R7,Q3R7,Q4R7,Q5R7,Q6R7,Q7R7,Q8R7,Q9R7,Q10R7,Q11R7,Q12R7,Q13R7,Q14R7,Q15R7,Q16R7,Q17R7,Q18R7,Q19R7,Q20R7,Q21R7,Q22R7,Q23R7,Q24R7,Q25R7};
chosenquestionR7 = Round7questions{randi(length(Round7questions))};
