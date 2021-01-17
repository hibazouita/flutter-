import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget{
  final Quotes quotes;
  final Function delete;
  QuoteCard({this.quotes,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children:<Widget> [
            Text(
              quotes.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            Text(
              quotes.author,
              style: TextStyle(
                fontSize: 14.0,
                color:Colors.grey[800],
              ),


            ),
            SizedBox(height: 10.0),
            FlatButton.icon(
              onPressed: (){},
              label: Text('delete quote'),
              icon: Icon(Icons.delete),


            )
          ],
        ),
      ),
    );
  }
  }
