library provider_path;

import 'package:flutter/material.dart';
import 'package:flutter_defaults/core/config/di/provider_di.dart';
import 'package:flutter_defaults/core/use_cases/counter_use_case.dart';
import 'package:flutter_defaults/generated/l10n.dart';
import 'package:flutter_defaults/paths/provider/presentation/providers/counter_provider.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'data/data_sources/data_source.dart';
part 'data/data_sources/local_data_source.dart';
part 'data/data_sources/remote_data_source.dart';
part 'data/repository/repository_impl.dart';
part 'domain/repository/repository.dart';
part 'domain/use_cases/clear_storage.dart';
part 'domain/use_cases/get_counter_value.dart';
part 'domain/use_cases/save_counter_value.dart';
part 'presentation/screens/counter_screen.dart';
part 'presentation/widgets/counter_buttons.dart';
part 'presentation/widgets/counter_display.dart';
