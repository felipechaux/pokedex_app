import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_app/l10n/app_localizations.dart';
import '../../../providers/pokemon_filter_provider.dart';

// Components
import 'filter/filter_handle.dart';
import 'filter/filter_header.dart';
import 'filter/filter_section_title.dart';
import 'filter/filter_type_list.dart';
import 'filter/filter_actions.dart';

class FilterBottomSheet extends HookConsumerWidget {
  const FilterBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context)!;
    final initialTypes = ref.read(pokemonFilterProvider).selectedTypes;
    final selectedTypes = useState<List<String>>(List<String>.from(initialTypes));

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.8,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const FilterHandle(),
          FilterHeader(
            title: l10n.filterTitle,
            onClose: () => Navigator.pop(context),
          ),
          const SizedBox(height: 24),
          FilterSectionTitle(title: l10n.type),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(height: 32),
          ),
          Flexible(
            child: FilterTypeList(
              selectedTypes: selectedTypes.value,
              onToggle: (type) {
                final current = List<String>.from(selectedTypes.value);
                if (current.contains(type)) {
                  current.remove(type);
                } else {
                  current.add(type);
                }
                selectedTypes.value = current;
              },
            ),
          ),
          const Divider(height: 1),
          FilterActions(
            onApply: () {
              ref
                  .read(pokemonFilterProvider.notifier)
                  .updateSelectedTypes(selectedTypes.value);
              Navigator.pop(context);
            },
            onCancel: () => Navigator.pop(context),
            applyLabel: l10n.apply,
            cancelLabel: l10n.cancel,
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
