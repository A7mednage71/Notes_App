import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit_state.dart';
import 'package:notes_app/models/Note_Model.dart';

class NoteCubit extends Cubit<Notestate> {
  NoteCubit() : super(NoteInitial());

  List<Note_Model>? notes;
  getAllNotes() {
    //  dont want loading and failure and don't want try and catch
    var notesBox = Hive.box<Note_Model>('notes_box');
    notes = notesBox.values.toList();
    emit(Notesuccess());
  }
}
