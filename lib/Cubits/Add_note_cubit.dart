import 'package:hive/hive.dart';
import 'package:notes_app/Cubits/Add_note_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/Note_Model.dart';

class AddNotecubit extends Cubit<AddNoteState> {
  AddNotecubit() : super(AddNoteInitial());

  addnote(Note_Model note) async{
    emit(AddNoteLoading());
    try {
      var notebox = Hive.box<Note_Model>('notes_box');
      await notebox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
