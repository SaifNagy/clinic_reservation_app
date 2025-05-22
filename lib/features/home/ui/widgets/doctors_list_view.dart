
import 'package:clinic_reservation_app/features/home/data/models/specializations_response_model.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?>? doctorlist;
  const DoctorsListView({
    super.key,
     this.doctorlist,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        // shrinkWrap: true,
        itemCount: doctorlist?.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(
            doctorsItem: doctorlist?[index],
          );
        },
      ),
    );
  }
}
