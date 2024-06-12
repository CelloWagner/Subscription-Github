codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        MJA_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    internal procedure MJA_Test()
    var
        MJATest: Record MJA_Test;
    begin
        if MJATest.Get('MJA') then
            MJATest.Delete();
        MJATest.Init();
        MJATest.Validate(Code, 'MJA');
        MJATest.Validate(Description, 'Mindaugas');
        MJATest.Insert();
    end;
}