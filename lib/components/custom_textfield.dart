import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final IconData icon;
  final bool isSecret;
  final TextEditingController controller;

  const CustomTextField(
      {Key? key,
      this.isSecret = false,
      required this.labelText,
      required this.icon,
      required this.controller})
      : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  void initState() {
    super.initState();

    obscureText = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: widget.controller,
        style: const TextStyle(color: Colors.white),
        cursorColor: Colors.white,
        obscureText: obscureText,
        decoration: InputDecoration(
            filled: true,
            focusColor: Colors.amber,
            fillColor: const Color.fromRGBO(62, 207, 142, 100),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.white)),
            prefixIcon: Icon(
              widget.icon,
              color: Colors.white,
            ),
            suffixIcon: widget.isSecret
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    icon: Icon(
                        color: Colors.white,
                        obscureText ? Icons.visibility : Icons.visibility_off))
                : null,
            hintText: widget.labelText,
            hintStyle: const TextStyle(color: Colors.white),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
      ),
    );
  }
}
