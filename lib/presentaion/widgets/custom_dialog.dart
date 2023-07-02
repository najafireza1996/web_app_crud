import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_favin/common/theme/color/color_palette.dart';
import 'package:flutter_test_favin/common/theme/favin_text_theme.dart';
import 'package:flutter_test_favin/common/validator/form_controller.dart';
import 'package:flutter_test_favin/common/validator/form_validators.dart';
import 'package:flutter_test_favin/presentaion/widgets/cusotm_text_field.dart';
import 'package:flutter_test_favin/presentaion/widgets/custom_button.dart';

showInfoDialog(
  BuildContext context,
) {
  showDialog(
      context: context,
      useSafeArea: true,
      builder: (context) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 6,backgroundColor: ColorPalette.grey,
            child: InfoText());
      });
}

class InfoText extends StatefulWidget {
  const InfoText({super.key});
  
  @override
  State<InfoText> createState() => _InfoTextState();
}

class _InfoTextState extends State<InfoText> {
  final ScrollController _scrollController = ScrollController();
   TextEditingController classNumberController = TextEditingController();
   TextEditingController classNameontroller = TextEditingController();
   TextEditingController descController = TextEditingController();
  List<FormController> forms = [
    FormController(0),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 317,
      width: 634,
      padding: const EdgeInsets.all(30),
      decoration:const BoxDecoration(
        color: ColorPalette.grey,
          borderRadius:
              BorderRadius.all(Radius.circular(5))),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Form(
          key: forms[0].formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(tr("class_number"),style: FavinTextTheme.reg14,),
                    const SizedBox(width: 20,),
                    SizedBox(
                                  width: 163,
                    child: CTextFormField(
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  controller: classNumberController,
                                  keyboardType: TextInputType.number,
                                  validator: numberValidator,
                                ),),
                                const SizedBox(width: 20,),
                                Spacer(),
                    Text(tr("class_name"),style: FavinTextTheme.reg14,),
                    const SizedBox(width: 30,),
                    SizedBox(
                                  width: 163,
                    child: CTextFormField(
                                  autovalidateMode: AutovalidateMode.onUserInteraction,
                                  controller: classNameontroller,
                                  keyboardType: TextInputType.name,
                                  validator: classNameValidator,
                                ),),
                    // TextField(),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 100,
                width: 570,
                child: CTextFormField(
                      minLine: 3,
                      
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                controller: descController,
                                keyboardType: TextInputType.name,
                                validator: classNameValidator,
                              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Spacer(), 
                  CustomButtonShadowLess(
                      height: 42,
                      width: 79,
                      text: tr("register"),
                      fontStyle: FavinTextTheme.reg11.copyWith(color: Colors.white),
                      onPressed: (){
                        if (FormController.validateAllAndScrollToInvalidOne(
                            forms, _scrollController)) {

                              
                            }
                      },
                    ),
                   
                ],
              )
            ],
          ),
        ),
      ),
   
    );
  }
}











showDetailDialog(
  BuildContext context,
) {
  showDialog(
      context: context,
      useSafeArea: true,
      builder: (context) {
        return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            elevation: 6,backgroundColor: ColorPalette.grey,
            child: DetailText());
      });
}

class DetailText extends StatefulWidget {
  const DetailText({super.key});
  
  @override
  State<DetailText> createState() => _DetailTextState();
}

class _DetailTextState extends State<DetailText> {
  final ScrollController _scrollController = ScrollController();
   TextEditingController classNumberController = TextEditingController(text: "101");
   TextEditingController classNameontroller = TextEditingController(text:"ریاضی");
   TextEditingController descController = TextEditingController(text:"این کلاس در روزهای زوج برگذار می‌شود. مسئول برگذاری کلاس آقای صمدی هستند و مدت برگذاری کلاس 3 ساعت می‌باشد. مدت 15 دقیقه استراحت برای این کلاس در نظر گرفته شده است");
  List<FormController> forms = [
    FormController(0),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 317,
      width: 634,
      padding: const EdgeInsets.all(30),
      decoration:const BoxDecoration(
        color: ColorPalette.grey,
          borderRadius:
              BorderRadius.all(Radius.circular(5))),
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Form(
          key: forms[0].formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/caret_left_fill.png"),
                  const SizedBox(width: 10,),
                  Text(tr("class_detail"),style: FavinTextTheme.reg14,),
                  const Spacer(),
                  Text(tr("12:30"),style: FavinTextTheme.reg14.copyWith(color: ColorPalette.green),),
                  const SizedBox(width: 22,),
                  Text(tr("1400/05/06"),style: FavinTextTheme.reg14.copyWith(color: ColorPalette.green),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(tr("class_number"),style: FavinTextTheme.reg14,),
                  const SizedBox(width: 20,),
                  SizedBox(
                                width: 163,
                                height: 60,
                  child: CTextFormField(
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                controller: classNumberController,
                                keyboardType: TextInputType.number,
                                textAlignVertical: TextAlignVertical.center,
                                validator: numberValidator,
                              ),),
                              const SizedBox(width: 20,),
                  Text(tr("class_name"),style: FavinTextTheme.reg14,),
                  const SizedBox(width: 30,),
                  SizedBox(
                                width: 163,
                  child: CTextFormField(
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                controller: classNameontroller,
                                keyboardType: TextInputType.name,
                                textAlignVertical: TextAlignVertical.center,
                                validator: classNameValidator,
                              ),),
                  // TextField(),
                ],
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 100,
                width: 570,
                child: CTextFormField(
                            minLine: 4,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                controller: descController,
                                keyboardType: TextInputType.name,
                                textAlignVertical: TextAlignVertical.center,
                                validator: classNameValidator,
                              ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButtonShadowLess(
                      height: 42,
                      width: 79,
                      text: tr("close"),
                      fontStyle: FavinTextTheme.reg11.copyWith(color: Colors.white),
                      onPressed: (){
                        if (FormController.validateAllAndScrollToInvalidOne(
                            forms, _scrollController)) {

                              
                            }
                      },
                    ),
                   
                ],
              )
            ],
          ),
        ),
      ),
   
    );
  }
}

