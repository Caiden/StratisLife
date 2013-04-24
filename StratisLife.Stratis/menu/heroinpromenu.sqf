/*
1.Purification of raw opium --> 20%
2.extraction/purification of morphine from opium --> 80%
3.conversion of morphine to heroin base --> 30%
4.purification of heroin base and conversion to heroin hydrochloride.
*/
if ((player getVariable "heroinprocesslicense") >= 1) then 
{
	hassheroinprocesslicense = "Yes";
}else 
{
	hassheroinprocesslicense = "No";
};
createDialog "HeroinProMenu";
ctrlSetText[11132,format["Unprocessed heroin: %1",(player getVariable "itemunpheroin")]];
ctrlSetText[11163,format["%1",hassheroinprocesslicense]];