import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/app/app_router.dart';
import 'package:sitecompanion/app/app_theme.dart';
import 'package:sitecompanion/app/theme_cubit.dart';
import 'package:sitecompanion/features/home/home_screen.dart';
import 'package:sitecompanion/features/observations/observation_editor_screen.dart';
import 'package:sitecompanion/features/projects/projects_overview_screen.dart';
import 'package:sitecompanion/widgets/app_scaffold.dart';
import 'package:get_it/get_it.dart';
import 'package:sitecompanion/data/local/app_database.dart';
import 'package:sitecompanion/data/local/database_module.dart';
import 'package:sitecompanion/data/repositories/observation_repository.dart';
import 'package:sitecompanion/data/repositories/observation_repository_impl.dart';
import 'package:sitecompanion/data/repositories/project_repository.dart';
import 'package:sitecompanion/data/repositories/project_repository_impl.dart'
    as project_impl;
import 'package:sitecompanion/core/services/media_service.dart'; // Import MediaService

final GetIt getIt = GetIt.instance;

Future<void> configureDependencies() async {
  // Register AppDatabase
  final appDatabase = await constructDb();
  getIt.registerSingleton<AppDatabase>(appDatabase);

  // Register Repositories
  getIt.registerLazySingleton<ObservationRepository>(
    () => ObservationRepositoryImpl(getIt<AppDatabase>()),
  );
  getIt.registerLazySingleton<ProjectRepository>(
    () => project_impl.ProjectRepositoryImpl(getIt<AppDatabase>()),
  );
  // Register MediaService
  getIt.registerLazySingleton<MediaService>(() => MediaService());
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // Add BLoC providers here as they are created
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: MaterialApp.router(
        title: 'Site Companion',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        routerConfig: AppRouter.router,
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  final Widget child;
  const MainScreen({super.key, required this.child});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/projects');
        break;
      case 2:
        context.go('/observations');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Projects'),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Observations',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
