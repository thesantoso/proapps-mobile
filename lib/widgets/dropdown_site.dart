import 'package:flutter/material.dart';
import 'package:proapps/utils/site_data.dart';

class DropdownSite extends StatefulWidget {
  final String selectedCity;
  final ValueChanged<String?> onChanged; // Update the type here

  const DropdownSite({
    required this.selectedCity,
    required this.onChanged,
  });

  @override
  _DropdownSiteState createState() => _DropdownSiteState();
}

class _DropdownSiteState extends State<DropdownSite> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        labelText: 'Site Building',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      value: widget.selectedCity,
      items: siteList.map((city) {
        return DropdownMenuItem(
          value: city,
          child: Text(city),
        );
      }).toList(),
      onChanged: widget.onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please select a site building';
        }
        return null;
      },
    );
  }
}
