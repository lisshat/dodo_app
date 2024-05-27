import 'package:dodo_app/theme/colors.dart';
import 'package:flutter/material.dart';

class TaskCreation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ddlightpurple,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 70.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: dddarkerrrpurple,
              ),
            ),
            leading: IconTheme(
              data: const IconThemeData(
                  color: ddlightpurple), // Set the desired color here
              child: IconButton(
                icon: const Icon(Icons
                    .arrow_back), // Add your desired leading icon (back arrow)
                onPressed: () {
                  // Add your onPressed logic here
                  Navigator.pop(context);
                },
              ),
            ),
            actions: [
              IconTheme(
                data: const IconThemeData(
                    color: ddlightpurple), // Set the desired color here
                child: IconButton(
                  icon: const Icon(Icons.attach_file_sharp), // Add your desired trailing icon
                  onPressed: () {
                    // Add your onPressed logic here
                    print('Attachment icon pressed');
                  },
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    color: ddsomesortofpurple,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter Task Name',
                        labelStyle: TextStyle(color: ddlightyellow),
                      ),
                    ),
                  ),
                  SizedBox(height: 46),
                Row(
                    children: [
                      Expanded(
                        child: const Text(
                          "Priority",
                          style: TextStyle(
                            color: ddlightyellow,
                            fontSize: 23,
                          ),
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(ddsomesortofpurple),
                          ),
                          onPressed: () {
                            // Handle priority selection logic here
                            print('Priority Selected');
                          },
                          child: Text(
                            'Low',
                            style: TextStyle(
                            color: ddlightyellow,
                              fontSize: 10,
                              ),
                          
                          ), // Adjust the text as needed
                        ),
                      ),
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(ddsomesortofpurple),
                          ),
                          onPressed: () {
                            // Handle priority selection logic here
                            print('Priority Selected');
                          },
                          child: Text(
                            'Medium',
                            style: TextStyle(
                            color: ddlightyellow,
                            fontSize: 10,
                            
                            ), // Adjust the text as needed
                            ),
                            
                            ), // Adjust the text as needed
                        ),
                    
                      SizedBox(width: 10), // Add spacing between buttons
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(ddsomesortofpurple),
                          ),
                          onPressed: () {
                            // Handle priority selection logic here
                            print('Priority Selected');
                          },
                          child: Text(
                            'High',
                            style: TextStyle(
                            color: ddlightyellow,
                            fontSize: 10,
                            
                            ),
                          ), // Adjust the text as needed
                        ),
                      ),
                    ],
                  ),


                  SizedBox(height: 16),
                 
            
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(ddlightpurple),
                    ),
                    onPressed: () {
                      // Handle task creation logic here
                      print('Task Created');
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: ddlightyellow,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
