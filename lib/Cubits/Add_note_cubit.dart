import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/Add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/Note_Model.dart';

class AddNotecubit extends Cubit<AddNoteState> {
  AddNotecubit() : super(AddNoteInitial());

  addNote(Note_Model note) {
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box('notes_box');
      notebox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
