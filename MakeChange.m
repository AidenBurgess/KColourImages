function coins = MakeChange(change)
coins = [0 0 0 0 0 0];
coinvalue = [1 5 10 25 50 100];
while change > 0
    coin = GreedyCoinPick(change);
    change = change - coin;
    for i = 1:6
       if coin == coinvalue(i) 
        coins(i) = coins(i) +1;
       end
    end
    
end
end