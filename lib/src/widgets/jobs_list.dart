import 'package:flutter/material.dart';

class JobsList extends StatelessWidget {
  const JobsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.07),
                    spreadRadius: 0.5,
                    blurRadius: 6,
                    offset: Offset(2, 4),
                  ),
                ],
              ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Colors.grey
                      )
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://scontent.fvte2-1.fna.fbcdn.net/v/t39.30808-6/450423965_374715932306550_7656427409720352346_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeHuULFS3HrTAoAk-VdUoQWHuqNBwZOC8Ku6o0HBk4Lwq6wv4y1tJhcBKB4bxduN2zd-S_3D5Hl1kPbL1r_neczO&_nc_ohc=teuTC0MVdQUQ7kNvgENyk74&_nc_zt=23&_nc_ht=scontent.fvte2-1.fna&_nc_gid=AwsrutdkOMAoGFdyEzckGLA&oh=00_AYA6tqPNWTMir6o4QOQARUhKI1Yh3SmDJIyEdwSFx7C_2A&oe=6727A9EC",
                        width: 60,
                        height: 60,
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  Text(
                    "CEIT Network",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[600]
                    ),
                  )
                ],
              ),

              const SizedBox(height: 20),

              Text(
                "Juniar Network Engineer",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),

              const SizedBox(height: 20),

              Row(
                children: [
                  Icon(Icons.location_on_sharp,color: Colors.green.shade800,size: 20),

                  const SizedBox(width: 5),

                  Text(
                    "Sesatanak Distric, Vientiane Capital",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600]
                    ),
                  )
                ],                
              ),

              const SizedBox(height: 5),

              Row(
                children: [
                  Icon(Icons.calendar_month_outlined,color: Colors.green.shade800,size: 20),

                  const SizedBox(width: 5),

                  Text(
                    "Sesatanak Distric, Vientiane Capital",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[600]
                    ),
                  )
                ],                
              ),
          
            ],
          ),
        ),
      );
  }
}