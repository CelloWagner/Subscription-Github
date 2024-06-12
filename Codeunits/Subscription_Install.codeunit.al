codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        //Run JR's initialisation routines.
        JR_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure JR_Test()
    var
        JRTest: Record JR_Test;
    begin
        //Dirty hardcoded values... But no-one is going to read this code, so who cares?
        if JRTest.get('JR') then
            exit; //Already exists, so something has gone seriously wrong here - quit gracefully.
        JRTest.init;
        JRTest.code := 'JR';
        JRTest.Description := 'Johnathan';
        JRTest.insert(false);

    end;
}