class MyRoutes {
  static String SpleshScreen = '/';
  static String HomePage = 'home_page';
  static String BuildOptionPage = 'build_option_page';
  static String PDFPage = 'pdfpage';

  static List BuildOptions = [
    {
      'title': 'Personal info',
      'routes': 'personal_info',
      'icon': 'lib/assets/images/user (2).png',
    },
    {
      'title': 'Personal Details',
      'routes': 'personal_details',
      'icon': 'lib/assets/images/profile.png',
    },
    {
      'title': 'Education',
      'routes': 'education',
      'icon': 'lib/assets/images/level-1.png',
    },
    {
      'title': 'Experience',
      'routes': 'experience',
      'icon': 'lib/assets/images/experience.png',
    },
    {
      'title': 'Certified courses',
      'routes': 'certified_courses',
      'icon': 'lib/assets/images/id-card (1).png',
    },
    {
      'title': 'Projects',
      'routes': 'projects',
      'icon': 'lib/assets/images/clipboard.png',
    },
    {
      'title': 'Technical skills',
      'routes': 'technical_skills',
      'icon': 'lib/assets/images/idea.png',
    },
    {
      'title': 'hobbies',
      'routes': 'hobbies',
      'icon': 'lib/assets/images/lifestyle.png',
    },
    {
      'title': 'About',
      'routes': 'about_info',
      'icon': 'lib/assets/images/information.png',
    },
    {
      'title': 'Achievements',
      'routes': 'achievements',
      'icon': 'lib/assets/images/trophy.png',
    }
  ];
}
