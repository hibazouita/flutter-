import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() => runApp(MaterialApp(
  home: QuotesList(),
));
class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quotes> quotes = [

    Quotes(text: 'Be yourself , everyone else is already taken  ',
        author: 'oscar'),
    Quotes(text: 'Be yourself , everyone else is already taken  ',
        author: 'oscar'),
    Quotes(text: 'Be yourself , everyone else is already taken  ',
        author: 'oscar'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
          title: Text('awesome quotes ')
      ),
      body: Column(
        children: quotes.map((quote) =>
            QuoteCard(
                quotes: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }


            )).toList(),
      ),
    );
  }
}



