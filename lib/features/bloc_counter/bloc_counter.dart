library bloc_counter;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_defaults/core/config/di/app_di.dart';
import 'package:flutter_defaults/core/extensions/context.dart';
import 'package:flutter_defaults/core/widgets/counter_padding.dart';
import 'package:flutter_defaults/features/bloc_counter/presentation/bloc/bloc_event.dart';
import 'package:flutter_defaults/features/bloc_counter/presentation/bloc/bloc_state.dart';
import 'package:flutter_defaults/features/bloc_counter/presentation/bloc/counter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'data/data_sources/data_source.dart';
part 'data/data_sources/local_data_source.dart';
part 'data/data_sources/remote_data_source.dart';
part 'data/repository/repository_impl.dart';
part 'domain/repository/repository.dart';
part 'presentation/screens/bloc_path.dart';
part 'presentation/widgets/counter_buttons.dart';
part 'presentation/widgets/counter_display.dart';
