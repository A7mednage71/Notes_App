import 'package:notes_app/models/Note_Model.dart';

class Notestate {}

class NoteInitial extends Notestate {}

class NoteLoading extends Notestate {}

class Notesuccess extends Notestate {
  final List<Note_Model> notes;
  Notesuccess(this.notes);
}

class NoteFailure extends Notestate {
  String error;

  NoteFailure(this.error);
}
