class ServiceProvider {
  final int id;
  final String name;
  final String serviceType;
  final String location;
  final String contactInfo;
  final String portfolio;

  ServiceProvider({
    required this.id,
    required this.name,
    required this.serviceType,
    required this.location,
    required this.contactInfo,
    required this.portfolio,
  });

  factory ServiceProvider.fromJson(Map<String, dynamic> json) {
    return ServiceProvider(
      id: json['id'],
      name: json['name'],
      serviceType: json['service_type'],
      location: json['location'],
      contactInfo: json['contact_info'],
      portfolio: json['portfolio'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'service_type': serviceType,
      'location': location,
      'contact_info': contactInfo,
      'portfolio': portfolio,
    };
  }
}
