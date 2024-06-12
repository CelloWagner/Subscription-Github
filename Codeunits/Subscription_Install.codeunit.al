codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        CA_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    local procedure CA_Test()
    var
        CATable: Record "CA Test";
    begin
        CATable.Init();
        CATable.Code := 'CA';
        CATable.Validate(Name, 'Claudiu Atitienei');
        if CATable.Insert(true) then;

    end;
}