if (!isServer) exitWith {};
while {true} do
{
    if (daytime >= 20 || daytime < 4) then
    {
        setTimeMultiplier 4
    }
    else
    {
        setTimeMultiplier 3
    };
    uiSleep 30;
};