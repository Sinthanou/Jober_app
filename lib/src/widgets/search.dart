import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black.withOpacity(0.05)),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          
                          const SizedBox(width: 10),
                          
                          Expanded(
                            child: TextField(
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Seacrch job...",
                                        hintStyle: TextStyle(fontWeight: FontWeight.w400)),
                                  ),
                          ),
                        ],
                      ),
                    ),
          
                    ),
        ),

        // const SizedBox(width: 10),

        IconButton(
          onPressed: () {},
          icon: Icon(Icons.format_list_bulleted_sharp))
      ],
    );
  }
}