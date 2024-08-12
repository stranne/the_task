import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:the_task/app/app.logger.dart';

class GenerativeService {
  final _logger = getLogger('GenerativeService');
  static const apiKey = String.fromEnvironment("GEMINI_API_KEY");
  final GenerativeModel model =
      GenerativeModel(model: 'gemini-1.5-flash-latest', apiKey: apiKey);

  Future<String> generateAsync(String systemPrompt, String userPrompt) async {
    // Exceptions will be handled through TaskCurrentState.creatingFailed and displayed gracefully to the user
    _logger.i('Generating content for System prompt: '
        '$systemPrompt'
        '\n\nUser prompt: '
        '$userPrompt'
        '');
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

    final text = response.text;
    _logger.i('Generated text: $text');

    if (response.promptFeedback != null) {
      throw Exception(
          'Prompt feedback: ${response.promptFeedback?.blockReason}\n'
          '${response.promptFeedback?.blockReasonMessage}');
    }

    if (text == null) {
      throw Exception('No text generated');
    }

    return text;
  }
}
