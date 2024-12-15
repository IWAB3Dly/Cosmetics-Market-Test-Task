import 'package:cosmetics_marketplace/presentation/widgets/filter_tile.dart';
import 'package:flutter/material.dart';

// Страница с фильтрами из ТЗ

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: const Icon(Icons.arrow_back_ios_rounded)
                    ),
                  ),
                  const Text(
                    "Фильтры",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                    ),
                  ),
                  const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Colors.white,
                  ),
                        
                ],
              ),
              const SizedBox(height: 16),
              const FilterTile(
                tileText: "Сортировка", 
                chooseText: "По популярности"
              ),
              const FilterTile(
                tileText: "Тип кожи", 
                chooseText: "Жирная"
              ),
              const FilterTile(
                tileText: "Тип средства", 
                chooseText: "Все"
              ),
              const FilterTile(
                tileText: "Проблема кожи", 
                chooseText: "Не выбрано"
              ),
              const FilterTile(
                tileText: "Эффект средства", 
                chooseText: "Увлажнение"
              ),
              const FilterTile(
                tileText: "Линия косметики", 
                chooseText: "Все"
              ),

              const Expanded(
                child: SizedBox.shrink()
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)
                  ),
                  backgroundColor: Colors.black
                ),
                onPressed: () => Navigator.of(context).pop(), 
                child: SizedBox(
                  height: 56,
                  width: MediaQuery.of(context).size.width-48,
                  child: const Center(
                    child: Text(
                      "Применить фильтры",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white
                      ),
                    ),
                  ),
                ) 
              )
            ],
          ),
        ),
      ),
    );
  }
}