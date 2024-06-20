import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ikea_clone/core/components/text.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Log out',
              style: TextStyle(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Headline1(
                    text: 'Hi, Ahmet',
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 40),
                  Body2(
                    text: 'Scan item',
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    letterSpacing: -0.5,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              child: ListTile(
                leading: const Icon(Icons.qr_code),
                title: const Body2(
                  text: 'Scan items in-store',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: 0,
                ),
                subtitle: Body2(
                  text: 'Scan products and skip queues at checkout',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  letterSpacing: 0,
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                ),
                trailing: CupertinoSwitch(value: false, onChanged: (value) {}),
              ),
            ),
            const SizedBox(height: 20),
            Divider(
              height: 0,
              thickness: 2,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
            ),
            Divider(
              height: 20,
              thickness: 20,
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.05),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(30.0, 25.0, 0.0, 10.0),
              child: Body2(
                text: 'Your IKEA',
                fontWeight: FontWeight.w700,
                fontSize: 15,
                letterSpacing: -0.5,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Divider(
                    height: 0,
                    thickness: 1,
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
                  ),
                );
              },
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 30.0, 0.0, 30.0),
                  child: ProfileListTile(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.qr_code),
      title: const Body2(
        text: 'Scan items in-store',
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0,
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,
          size: 15,
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
        ),
        onPressed: () {},
      ),
    );
  }
}
