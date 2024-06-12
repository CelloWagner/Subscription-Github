codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        RMA_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension

    end;

    procedure RMA_Test()
    var
        RMATable: Record "RMA Table";
    begin
        if RMATable.Get('RMA') then
            exit;
        RMATable.Init();
        RMATable.Validate(Code, 'RMA');
        RMATable.Validate(Description, 'Rubén Miranda');
        RMATable.Insert(true);
    end;
}