namespace OptenStatus;

entity BPStatuses {
    key ID : String;
    OrganizationBPName1: String;
    //OrganizationBPName2 : String;
    //OrganizationBPName3 : String;
    //OrganizationBPName4 : String;
    TaxNumber : String;
    OptenStatus : Association to one OptenStatuses;
    virtual LockSuggested : Boolean;
    
}

entity OptenStatuses {
    key ID: Integer;
    StatusText: String;
}