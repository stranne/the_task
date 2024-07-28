import 'package:google_generative_ai/google_generative_ai.dart';

class GenerativeService {
  final GenerativeModel model = GenerativeModel(
    model: 'gemini-1.5-flash-latest',
    apiKey: const String.fromEnvironment("GEMININE_API_KEY"),
  );

  Future<String> generateAsync(String systemPrompt, String userPrompt) async {
    // Exceptions will be handled through TaskCurrentState.creatingFailed and displayed gracefully to the user
    final content = [
      // TODO mark as system role when model supports it
      Content.text(systemPrompt),
      Content.text(userPrompt),
    ];
    final response = await model.generateContent(
      content,
      generationConfig: GenerationConfig(
        responseMimeType: "application/json",
      ),
    );

    // TODO better error handling
    return response.text!;
  }
}
