declare option exist:serialize "method=html media-type=text/html";

let $ordenes := collection('/db/facturas/data')/*:Invoice

return
    <html>
        <head><title>Lista de Facturas</title></head>
        <body>
            <h1> Facturas </h1>
            
            <table border="1">
                <thead><tr><td><b>Numero</b></td><td><b>Proveedor</b></td><td><b>Tax Total</b></td></tr></thead>
                <tbody>
                    {
                    for $i in $ordenes
                        return <tr>
                            <td>
                            <a href="factura.xq?factura={$i/*:ID/text()}"> {$i/*:ID/text()} </a>
                            </td>
                            <td>
                                {$i/*:AccountingSupplierParty//*:PartyName}
                            </td>
                            <td>
                                {$i//*:TaxTotal[1]}
                            </td>
                            <td>
                                <a href = "edit.xml?factura={$i/*:ID/text()}"> Editar </a>
                            </td>
                        </tr>
                    }
                </tbody>
            </table>
            <a href = "new.xml"> Nueva Factura </a>
        </body>
    </html>