
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TableAdmin extends StatefulWidget {
  const TableAdmin ({ Key? key }) : 
  super(key: key);

  @override
  _TableAdminState createState() => _TableAdminState();
}

class _TableAdminState extends State<TableAdmin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:[
            DataTable(
              columns: [
                DataColumn(
                  label:Text('ID',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),)
                ),
                  DataColumn(
                  label:Text('ID',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),)
                ),
                  
              ],
             rows: [
               DataRow(cells:[
                 DataCell(
                 Text('0001') 
               )
               
             ]), 
                DataRow(cells:[
                 DataCell(
                 Text('0001') 
               )
               
             ]),
               DataRow(cells:[
                 DataCell(
                 Text('0001') 
               )
               
             ]),
               ],
             )
          ]
        ),
      ),
      
    );
  }
}