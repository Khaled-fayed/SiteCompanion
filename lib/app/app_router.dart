import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sitecompanion/domain/entities/project.dart' as project_entity;
import 'package:sitecompanion/features/home/home_screen.dart';
import 'package:sitecompanion/features/observations/observation_editor_screen.dart';
import 'package:sitecompanion/features/observations/observations_overview_screen.dart';
import 'package:sitecompanion/features/projects/project_details_screen.dart';
import 'package:sitecompanion/features/projects/projects_overview_screen.dart';
import 'package:sitecompanion/domain/entities/observation.dart' as obs_entity;
import 'package:sitecompanion/features/projects/project_creation_screen.dart';
import 'package:sitecompanion/features/projects/project_edit_screen.dart'; // Import ProjectEditScreen
import 'package:sitecompanion/main.dart'; // Import MainScreen
import 'package:sitecompanion/features/observations/observation_viewer_screen.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/home',
    routes: <RouteBase>[
      ShellRoute(
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return MainScreen(child: child);
        },
        routes: <RouteBase>[
          GoRoute(
            path: '/home',
            builder: (BuildContext context, GoRouterState state) {
              return const HomeScreen();
            },
          ),
          GoRoute(
            path: '/projects',
            builder: (BuildContext context, GoRouterState state) {
              return const ProjectsOverviewScreen();
            },
            routes: [
              GoRoute(
                path: 'new',
                builder: (BuildContext context, GoRouterState state) {
                  return const ProjectCreationScreen();
                },
              ),
              GoRoute(
                path: ':projectId',
                builder: (BuildContext context, GoRouterState state) {
                  final projectId = state.pathParameters['projectId']!;
                  return ProjectDetailsScreen(projectId: projectId);
                },
                routes: [
                  GoRoute(
                    path: 'edit',
                    builder: (BuildContext context, GoRouterState state) {
                      final projectId = state.pathParameters['projectId']!;
                      return ProjectEditScreen(projectId: projectId);
                    },
                  ),
                  GoRoute(
                    path: 'observations',
                    builder: (BuildContext context, GoRouterState state) {
                      final projectId = state.pathParameters['projectId']!;
                      return ObservationsOverviewScreen(projectId: projectId);
                    },
                    routes: [
                      GoRoute(
                        path: 'new',
                        builder: (BuildContext context, GoRouterState state) {
                          final projectId = state.pathParameters['projectId']!;
                          final areaId = state.extra as String?;
                          return ObservationEditorScreen(
                            projectId: projectId,
                            areaId: areaId,
                          );
                        },
                      ),
                      GoRoute(
                        path: ':observationId/edit',
                        builder: (BuildContext context, GoRouterState state) {
                          final projectId = state.pathParameters['projectId']!;
                          final observationId =
                              state.pathParameters['observationId']!;
                          final observation =
                              state.extra is obs_entity.Observation
                              ? state.extra as obs_entity.Observation
                              : null;
                          return ObservationEditorScreen(
                            projectId: projectId,
                            observationId: observationId,
                            initialObservation: observation,
                          );
                        },
                      ),
                      GoRoute(
                        path: ':observationId/view',
                        builder: (BuildContext context, GoRouterState state) {
                          final extra = state.extra as Map<String, dynamic>?;
                          final observation =
                              extra?['observation'] is obs_entity.Observation
                              ? extra!['observation'] as obs_entity.Observation
                              : null;
                          final project =
                              extra?['project'] is project_entity.Project
                              ? extra!['project'] as project_entity.Project
                              : null;

                          if (observation == null || project == null) {
                            return const Center(
                              child: Text('Observation or Project not found.'),
                            );
                          }
                          return ObservationViewerScreen(
                            observation: observation,
                            project: project,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            path: '/observations',
            name: 'observationsOverview',
            builder: (BuildContext context, GoRouterState state) {
              return const ObservationsOverviewScreen();
            },
          ),
        ],
      ),
    ],
  );
}
