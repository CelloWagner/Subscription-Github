codeunit 50102 "BCT SubscriptionInstall"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    begin
        // Instantiate variables needed for the extension
        JS_Test('JS', 'Jan Saltenberger');
        PBATest();
        EF_Test();
    end;

    trigger OnInstallAppPerDatabase();
    begin
        // Instantiate variables needed for the extension
    end;

    local procedure EF_Test()
    var
        TestTable: Record "EF Test";
    begin
        IF TestTable.get('EF') then exit;
        TestTable.Init();
        TestTable.Code := 'EF';
        Testtable.Description := 'Eythor';
        TestTable.Insert();
    end;

    internal procedure JS_Test(Initials: Code[20]; Description: Text[50])
    var
        JS_Test: Record JS_Test;
    begin
        if not JS_Test.Get(Initials) then begin
            JS_Test.Init();
            JS_Test.Validate(Code, Initials);
            JS_Test.Validate(Description, Description);
            JS_Test.Insert();
        end;
    end;

    local procedure PBATest()
    var
        PBATest: Record "PBA Test";
    begin
        PBATest.Init();
        PBATest.Code := 'PBA';
        PBATest.Description := 'PBA Test';
        if PBATest.Insert() then;
    end;
}