import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/presentation/providers/todo_provider.dart';
import 'package:todo_list/utils/todo_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.toggleTheme,
    required this.isDarkMode,
  });

  final VoidCallback toggleTheme;
  final bool isDarkMode;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  late TodoProvider todoProvider;

  @override
  void initState() {
    super.initState();
    todoProvider = TodoProvider();
    todoProvider.loadToDoList();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => todoProvider,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Simple Todo'),
          actions: [
            IconButton(
              icon:
                  Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
              onPressed: widget.toggleTheme,
            ),
          ],
        ),
        body: Consumer<TodoProvider>(
          builder: (context, todoProvider, child) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: todoProvider.toDoList.length,
                    itemBuilder: (BuildContext context, index) {
                      return TodoList(
                        taskName: todoProvider.toDoList[index][0],
                        taskCompleted: todoProvider.toDoList[index][1],
                        onChanged: (value) => todoProvider.toggleTask(index),
                        deleteFunction: (context) =>
                            todoProvider.deleteTask(index),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _controller,
                          decoration: const InputDecoration(
                            hintText: 'Add a new todo item',
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      FloatingActionButton(
                        onPressed: () {
                          todoProvider.addTask(_controller.text);
                          _controller.clear();
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
