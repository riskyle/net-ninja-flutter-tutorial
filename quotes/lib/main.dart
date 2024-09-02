import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
  home: Quotes(),
));

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(text: "The only way to do great work is to love what you do.", author: "Steve Jobs"),
    Quote(text: "Success is not the key to happiness. Happiness is the key to success.", author: "Albert Schweitzer"),
    Quote(text: "Believe you can and you're halfway there.", author: "Theodore Roosevelt")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
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





