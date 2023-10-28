import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/note_Cubit/note_cubit_state.dart';
import 'package:notes_app/models/Note_Model.dart';

class NoteCubit extends Cubit<Notestate> {
  NoteCubit() : super(NoteInitial());

  getAllNotes() async {
    emit(NoteLoading());
    try {
      var notesBox = Hive.box<Note_Model>('notes_box');
      List<Note_Model> noteslist = notesBox.values.toList();
      emit(Notesuccess(noteslist)); 
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
