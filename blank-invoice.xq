xquery version "3.0";

declare namespace cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2";
declare namespace cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2";

<i:Invoice xmlns:i="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2">
    <cbc:UBLVersionID></cbc:UBLVersionID>
    <cbc:ID>
    { 
        let $last := max(/*:DespatchAdvice/*:ID)
        return number($last) + 1
    }
    </cbc:ID>
    <cbc:IssueDate>{ current-date() }</cbc:IssueDate>
    <cbc:InvoiceTypeCode listID="UN/ECE 1001 Subset" listAgencyID="6"></cbc:InvoiceTypeCode>
    <cbc:Note languageID="en"></cbc:Note>
    <cac:InvoicePeriod>
        <cbc:StartDate>{ current-date() }</cbc:StartDate>
        <cbc:EndDate></cbc:EndDate>
    </cac:InvoicePeriod>
    <cac:OrderReference>
        <cbc:ID>123</cbc:ID>
    </cac:OrderReference>
    <cac:AccountingSupplierParty>
        <cac:Party>
            <cac:PartyName>
                <cbc:Name></cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
                <cbc:StreetName></cbc:StreetName>
                <cbc:PostalZone></cbc:PostalZone>
                <cac:Country>
                    <cbc:IdentificationCode listID="ISO3166-1" listAgencyID="6"></cbc:IdentificationCode>
                </cac:Country>
            </cac:PostalAddress>
            <cac:Contact>
                <cbc:Telephone></cbc:Telephone>
                <cbc:Telefax></cbc:Telefax>
                <cbc:ElectronicMail></cbc:ElectronicMail>
            </cac:Contact>
        </cac:Party>
    </cac:AccountingSupplierParty>
    <cac:AccountingCustomerParty>
        <cac:Party>
            <cac:PartyName>
                <cbc:Name></cbc:Name>
            </cac:PartyName>
            <cac:PostalAddress>
                <cbc:StreetName></cbc:StreetName>
                <cbc:PostalZone></cbc:PostalZone>
                <cac:Country>
                    <cbc:IdentificationCode listID="ISO3166-1" listAgencyID="6"></cbc:IdentificationCode>
                </cac:Country>
            </cac:PostalAddress>
            <cac:Contact>
                <cbc:Telephone></cbc:Telephone>
                <cbc:Telefax></cbc:Telefax>
                <cbc:ElectronicMail></cbc:ElectronicMail>
            </cac:Contact>
        </cac:Party>
    </cac:AccountingCustomerParty>
    <cac:Delivery>
        <cbc:ActualDeliveryDate>{ current-date() }</cbc:ActualDeliveryDate>
        <cac:DeliveryLocation>
            <cac:Address>
                <cbc:StreetName></cbc:StreetName>
                <cbc:PostalZone></cbc:PostalZone>
                <cac:Country>
                    <cbc:IdentificationCode></cbc:IdentificationCode>
                </cac:Country>
            </cac:Address>
        </cac:DeliveryLocation>
    </cac:Delivery>
    <cac:TaxTotal>
        <cbc:TaxAmount currencyID="EUR"></cbc:TaxAmount>
    </cac:TaxTotal>
    <cac:InvoiceLine>
        <cbc:ID></cbc:ID>
        <cbc:Note></cbc:Note>
        <cbc:InvoicedQuantity unitCode="C62"></cbc:InvoicedQuantity>
        <cac:TaxTotal>
            <cbc:TaxAmount currencyID="EUR"></cbc:TaxAmount>
        </cac:TaxTotal>
        <cac:Item>
            <cbc:Name></cbc:Name>
        </cac:Item>
        <cac:Price>
            <cbc:PriceAmount currencyID="EUR"></cbc:PriceAmount>
            <cbc:BaseQuantity unitCode="C62"></cbc:BaseQuantity>
        </cac:Price>
    </cac:InvoiceLine>
</i:Invoice>