codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        Sun_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure Sun_Test()
    var
        MyRec: Record "Sun_Test";
    begin
        MyRec.Code := 'Sun_Test';
        MyRec.Description := 'This is Init test for Sun.';
        MyRec.Insert();
    end;
}