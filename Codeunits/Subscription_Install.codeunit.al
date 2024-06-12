codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        DC_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure DC_Test()
    var
        DCTest: Record "DC Test";
    begin
        DCTest.Init();
        DCTest.Code := 'DC';
        DCTest.Description := 'David Currie';
        if DCTest.Insert() then
        ;
    end;
}