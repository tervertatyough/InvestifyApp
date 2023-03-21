import 'package:flutter/material.dart';

import 'app_button.dart';
import 'app_text_bold.dart';
import 'app_text_light.dart';
import 'buy_share_modal.dart';
import 'image_panel.dart';

class InvestmentDetails extends StatefulWidget {
  const InvestmentDetails({super.key});

  @override
  State<InvestmentDetails> createState() => _InvestmentDetailsState();
}

class _InvestmentDetailsState extends State<InvestmentDetails>
    with TickerProviderStateMixin {
  Widget priceList(String title, String value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppTextBold(text: title, size: 14),
          AppTextBold(
            text: value,
            size: 14,
          )
        ],
      ),
    );
  }

  Widget infoItem(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 16,
        ),
        AppTextBold(text: title, size: 14),
        AppTextLight(text: subtitle, size: 14)
      ],
    );
  }

  Widget propertyDetailCard(String title, String value) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: const Color.fromRGBO(0, 128, 128, 0.3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextBold(text: title, size: 14),
          AppTextLight(text: value, size: 14)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    return Scaffold(
      backgroundColor: const Color(0xFF202020),
      appBar: AppBar(
        title: const Text("Investment Details"),
        backgroundColor: const Color.fromRGBO(0, 128, 128, 0.2),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            const ImagePanel(),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 128, 128, 0.1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  priceList("Price Per Unit", "₦50,000.00"),
                  priceList("Listing Price", "₦5,000,000.00"),
                  priceList("Annualized Return", "₦5,000,000.00"),
                  priceList("Total Shares Available", "800"),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        AppButton(
                          title: "Buy Share",
                          onPress: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return const BuyShareModal();
                              },
                            );
                          },
                        ),
                        AppButton(
                          title: "Sell Share",
                          onPress: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return const SizedBox(
                                  height: 200,
                                  child: Center(child: Text("Sell Shares")),
                                );
                              },
                            );
                          },
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 128, 128, 0.1),
              ),
              child: Column(
                children: [
                  Container(
                    child: TabBar(
                      controller: _tabcontroller,
                      tabs: const [
                        Tab(
                          text: "Project Details",
                        ),
                        Tab(
                          text: "Property Details",
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 700,
                    child: TabBarView(
                      controller: _tabcontroller,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            infoItem("Project ID", "COM100001"),
                            infoItem("Asset Category", "Commercial"),
                            infoItem("Project Value", "₦5,000,000.00"),
                            infoItem("Total Shares", "1000"),
                            infoItem(
                              "Project Description",
                              "TOPAZ MALL is a prime two-storey commercial development uniquely located in Ogudu, overlooking the third mainland bridge and a minute drive to Ogudu GRA. It comprises spaces suitable for retail shops, fast food outlets, and office/workspaces. The project is a development by Beyond Building Investment Limited, a diverse commercial real estate investment company. ",
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            GridView(
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 180,
                                childAspectRatio: 2.2 / 1,
                                crossAxisSpacing: 20,
                                mainAxisSpacing: 20,
                              ),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                propertyDetailCard("Rental Income", "20%"),
                                propertyDetailCard("Rental Payment", "Monthly"),
                                propertyDetailCard(
                                    "Project Use", "Long Rental"),
                                propertyDetailCard("Lock Period", "6 Months"),
                                propertyDetailCard("Launch Date", "Jan 2023"),
                                propertyDetailCard("Leasehold", "10 Years")
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            infoItem("Property Size", "500SQM"),
                            infoItem("Property Address",
                                "No. 19, Alex Oxley ST, Awoyaya, Lagos."),
                            infoItem("Property Status", "Occupied"),
                            infoItem("Property Document", "Deed of Assignment"),
                            infoItem("Property Title", "C of O")
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
