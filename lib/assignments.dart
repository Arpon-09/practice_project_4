import 'package:flutter/material.dart';

class CourseCardsScreen extends StatelessWidget {
  const CourseCardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'মার্টিন ১৬ এর প্রশিক্ষণকর্তি',
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
          children: [
            CourseCard(
              imageUrl: 'assets/web.jpg', // Add your asset path here
              title: 'Full Stack Web Development with JavaScript (MERN)',
              rating: '৪৯৯.০০',
              students: '৬ লক্ষ ৫০হাজার',
              duration: '৫ ঘন্টা ৫০মিনিট',
              gradient: const LinearGradient(
                colors: [Color(0xFF1B4332), Color(0xFF2D6A4F)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            CourseCard(
              imageUrl: 'assets/webb.jpg', // Add your asset path here
              title: 'Full Stack Web Development with Python, Django & React',
              rating: '৪৯৯.০০',
              students: '৬ লক্ষ ৫০হাজার',
              duration: '৫ ঘন্টা ৫০মিনিট',
              gradient: const LinearGradient(
                colors: [Color(0xFF1E3A8A), Color(0xFF3B82F6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            CourseCard(
              imageUrl: 'assets/asp.jpg', // Add your asset path here
              title: 'Full Stack Web Development with ASP.NET Core',
              rating: '৪৯৯.০০',
              students: '৬ লক্ষ ৫০হাজার',
              duration: '৫ ঘন্টা ৫০মিনিট',
              gradient: const LinearGradient(
                colors: [Color(0xFF1F2937), Color(0xFF374151)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            CourseCard(
              imageUrl: 'assets/sql.jpg', // Add your asset path here
              title: 'SQA: Manual & Automated Testing',
              rating: '৪৯৯.০০',
              students: '৬ লক্ষ ৫০হাজার',
              duration: '৫ ঘন্টা ৫০মিনিট',
              gradient: const LinearGradient(
                colors: [Color(0xFF134E4A), Color(0xFF14B8A6)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String rating;
  final String students;
  final String duration;
  final Gradient gradient;

  const CourseCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.students,
    required this.duration,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Course Image
          Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: gradient,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: imageUrl.isNotEmpty
                  ? Image.asset(
                imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    decoration: BoxDecoration(gradient: gradient),
                  );
                },
              )
                  : Container(
                decoration: BoxDecoration(gradient: gradient),
              ),
            ),
          ),

          // Course Info
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Rating, Students, Duration
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildInfoItem(Icons.star, rating),
                    _buildInfoItem(Icons.people, students),
                    _buildInfoItem(Icons.access_time, duration),
                  ],
                ),
                const SizedBox(height: 12),

                // Course Title
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF333333),
                    height: 1.3,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),

                // Details Button
                InkWell(
                  onTap: () {
                    // Handle button tap
                  },
                  child: Row(
                    children: const [
                      Text(
                        'বিস্তারিত দেখি',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xFF2563EB),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.arrow_forward,
                        size: 16,
                        color: Color(0xFF2563EB),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 14,
          color: const Color(0xFF666666),
        ),
        const SizedBox(width: 2),
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            color: Color(0xFF666666),
          ),
        ),
      ],
    );
  }
}