import "package:flutter/material.dart";
import "package:quotes/quote.dart";

class QuoteCard extends StatelessWidget{

  final Quote quote;
  final VoidCallback delete;

  const QuoteCard({
    super.key,
    required this.quote,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
              const SizedBox(height: 6.0),
              ElevatedButton.icon(
                  icon: const Icon(Icons.delete),
                  onPressed: delete,
                  label: const Text("Delete Quote"),
              ),
            ]
        ),
      ),
    );
  }
}