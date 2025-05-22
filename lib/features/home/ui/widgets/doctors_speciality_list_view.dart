import 'package:clinic_reservation_app/features/home/data/models/specializations_response_model.dart';
import 'package:clinic_reservation_app/features/home/ui/widgets/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationsData;
  const DoctorsSpecialityListView({required this.specializationsData, super.key});

  @override
  State<DoctorsSpecialityListView> createState() => _DoctorsSpecialityListViewState();
}

class _DoctorsSpecialityListViewState extends State<DoctorsSpecialityListView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100.h,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.specializationsData.length,
            itemBuilder: (context, index) {
              return DoctorsSpecialityListViewItem(
                specializationsData: widget.specializationsData[index],
                itemIndex: index,
              );
            }));
  }
}
