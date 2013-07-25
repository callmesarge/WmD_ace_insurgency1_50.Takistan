if ((side player == west)) then
{
nul= [player] execVM "scripts\check.sqf";

};

if ((side player == east)) then
{
nul= [player] execVM "scripts\east.sqf";
};