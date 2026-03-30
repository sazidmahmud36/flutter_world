import 'package:flutter/material.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({super.key});

  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  final Set<int> _expandedItems = {};

  final List<Map<String, String>> _faqItems = [
    {
      'question': 'How do I create an account?',
      'answer': 'To create an account, click on the "Sign Up" button on the login screen. Fill in your email address, create a password, and follow the verification steps sent to your email.',
    },
    {
      'question': 'What payment methods do you accept?',
      'answer': 'We accept all major credit cards (Visa, MasterCard, American Express), PayPal, and Apple Pay. All payments are processed securely through our payment gateway.',
    },
    {
      'question': 'How can I reset my password?',
      'answer': 'You can reset your password by clicking on "Forgot Password" on the login screen. We\'ll send a password reset link to your registered email address.',
    },
    {
      'question': 'What is your refund policy?',
      'answer': 'We offer a 30-day money-back guarantee for all our products. If you\'re not satisfied with your purchase, contact our support team within 30 days for a full refund.',
    },
    {
      'question': 'How do I contact customer support?',
      'answer': 'You can reach our customer support team through email at support@example.com, through the live chat feature on our website, or by calling our toll-free number at 1-800-123-4567.',
    },
    {
      'question': 'Is my data secure?',
      'answer': 'Yes, we take data security seriously. We use industry-standard encryption protocols to protect your personal information and never share your data with third parties without your consent.',
    },
  ];


  void _toggleItem(int index) {
    setState(() {
      if (_expandedItems.contains(index)) {
        _expandedItems.remove(index);
      } else {
        _expandedItems.add(index);
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FAQ',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: _faqItems.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          final isExpanded = _expandedItems.contains(index);
          final faq = _faqItems[index];

          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 3,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  title: Text(
                    faq['question']!,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  trailing: AnimatedRotation(
                    duration: const Duration(milliseconds: 300),
                    turns: isExpanded ? 0.5 : 0,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.blue,
                      size: 24,
                    ),
                  ),
                  onTap: () => _toggleItem(index),
                ),
                AnimatedCrossFade(
                  firstChild: Container(),
                  secondChild: Container(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        const SizedBox(height: 8),
                        Text(
                          faq['answer']!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black87,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                  firstCurve: Curves.easeIn,
                  secondCurve: Curves.easeOut,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
