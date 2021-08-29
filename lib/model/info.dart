// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);

// import 'dart:convert';

// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

// String welcomeToJson(Welcome data) => json.encode(data.toJson());

// class Welcome {
//   Welcome({
//     required this.feed,
//     required this.seo,
//   });

//   List<WelcomeFeed> feed;
//   WelcomeSeo seo;

//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//         feed: List<WelcomeFeed>.from(
//             json["feed"].map((x) => WelcomeFeed.fromJson(x))),
//         seo: WelcomeSeo.fromJson(json["seo"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "feed": List<dynamic>.from(feed.map((x) => x.toJson())),
//         "seo": seo.toJson(),
//       };
// }

// class WelcomeFeed {
//   WelcomeFeed({
//     required this.display,
//     required this.type,
//     required this.promoted,
//     required this.proRecipe,
//     required this.recipeType,
//     required this.trackingId,
//     required this.seo,
//     required this.content,
//   });

//   StickyDisplay display;
//   FeedType? type;
//   bool promoted;
//   bool proRecipe;
//   List<RecipeType>? recipeType;
//   String trackingId;
//   FluffySeo? seo;
//   PurpleContent content;

//   factory WelcomeFeed.fromJson(Map<String, dynamic> json) => WelcomeFeed(
//         display: StickyDisplay.fromJson(json["display"]),
//         type: feedTypeValues.map[json["type"]],
//         promoted: json["promoted"],
//         proRecipe: json["proRecipe"] == null ? null : json["proRecipe"],
//         recipeType: json["recipeType"] == null
//             ? null
//             : List<RecipeType>.from(
//                 json["recipeType"].map((x) => recipeTypeValues.map[x])),
//         trackingId: json["tracking-id"],
//         seo: json["seo"] == null ? null : FluffySeo.fromJson(json["seo"]),
//         content: PurpleContent.fromJson(json["content"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "display": display.toJson(),
//         "type": feedTypeValues.reverse![type],
//         "promoted": promoted,
//         "proRecipe": proRecipe == null ? null : proRecipe,
//         "recipeType": recipeType == null
//             ? null
//             : List<dynamic>.from(
//                 recipeType!.map((x) => recipeTypeValues.reverse![x])),
//         "tracking-id": trackingId,
//         "seo": seo == null ? null : seo!.toJson(),
//         "content": content.toJson(),
//       };
// }

// class PurpleContent {
//   PurpleContent({
//     required this.description,
//     required this.urbSubmitters,
//     required this.tags,
//     required this.preparationSteps,
//     required this.moreContent,
//     required this.tagsAds,
//     required this.details,
//     required this.relatedContent,
//     required this.ingredientLines,
//     required this.unitSystem,
//     required this.reviews,
//     required this.relatedProducts,
//     required this.preparationStepCount,
//     required this.nutrition,
//     required this.yums,
//     required this.videos,
//     required this.ctaUrl,
//     required this.platformName,
//     required this.guidedVariations,
//     required this.search,
//     required this.total,
//     required this.matches,
//     required this.start,
//     required this.end,
//   });

//   Description? description;
//   List<dynamic>? urbSubmitters;
//   FluffyTags? tags;
//   List<String>? preparationSteps;
//   MoreContent? moreContent;
//   TagsAds? tagsAds;
//   Details? details;
//   MoreContent? relatedContent;
//   List<ContentIngredientLine>? ingredientLines;
//   UnitSystem? unitSystem;
//   Reviews? reviews;
//   MoreContent? relatedProducts;
//   int preparationStepCount;
//   FluffyNutrition? nutrition;
//   Yums? yums;
//   Videos? videos;
//   String ctaUrl;
//   String platformName;
//   List<GuidedVariation>? guidedVariations;
//   Search? search;
//   int total;
//   Matches? matches;
//   int start;
//   int end;

//   factory PurpleContent.fromJson(Map<String, dynamic> json) => PurpleContent(
//         description: json["description"] == null
//             ? null
//             : Description.fromJson(json["description"]),
//         urbSubmitters: json["urbSubmitters"] == null
//             ? null
//             : List<dynamic>.from(json["urbSubmitters"].map((x) => x)),
//         tags: json["tags"] == null ? null : FluffyTags.fromJson(json["tags"]),
//         preparationSteps: json["preparationSteps"] == null
//             ? null
//             : List<String>.from(json["preparationSteps"].map((x) => x)),
//         moreContent: json["moreContent"] == null
//             ? null
//             : MoreContent.fromJson(json["moreContent"]),
//         tagsAds:
//             json["tagsAds"] == null ? null : TagsAds.fromJson(json["tagsAds"]),
//         details:
//             json["details"] == null ? null : Details.fromJson(json["details"]),
//         relatedContent: json["relatedContent"] == null
//             ? null
//             : MoreContent.fromJson(json["relatedContent"]),
//         ingredientLines: json["ingredientLines"] == null
//             ? null
//             : List<ContentIngredientLine>.from(json["ingredientLines"]
//                 .map((x) => ContentIngredientLine.fromJson(x))),
//         unitSystem: json["unitSystem"] == null
//             ? null
//             : unitSystemValues.map[json["unitSystem"]],
//         reviews:
//             json["reviews"] == null ? null : Reviews.fromJson(json["reviews"]),
//         relatedProducts: json["relatedProducts"] == null
//             ? null
//             : MoreContent.fromJson(json["relatedProducts"]),
//         preparationStepCount: json["preparationStepCount"] == null
//             ? null
//             : json["preparationStepCount"],
//         nutrition: json["nutrition"] == null
//             ? null
//             : FluffyNutrition.fromJson(json["nutrition"]),
//         yums: json["yums"] == null ? null : Yums.fromJson(json["yums"]),
//         videos: json["videos"] == null ? null : Videos.fromJson(json["videos"]),
//         ctaUrl: json["ctaUrl"] == null ? null : json["ctaUrl"],
//         platformName:
//             json["platformName"] == null ? null : json["platformName"],
//         guidedVariations: json["guidedVariations"] == null
//             ? null
//             : List<GuidedVariation>.from(json["guidedVariations"]
//                 .map((x) => GuidedVariation.fromJson(x))),
//         search: json["search"] == null ? null : Search.fromJson(json["search"]),
//         total: json["total"] == null ? null : json["total"],
//         matches:
//             json["matches"] == null ? null : Matches.fromJson(json["matches"]),
//         start: json["start"] == null ? null : json["start"],
//         end: json["end"] == null ? null : json["end"],
//       );

//   Map<String, dynamic> toJson() => {
//         "description": description == null ? null : description!.toJson(),
//         "urbSubmitters": urbSubmitters == null
//             ? null
//             : List<dynamic>.from(urbSubmitters!.map((x) => x)),
//         "tags": tags == null ? null : tags!.toJson(),
//         "preparationSteps": preparationSteps == null
//             ? null
//             : List<dynamic>.from(preparationSteps!.map((x) => x)),
//         "moreContent": moreContent == null ? null : moreContent!.toJson(),
//         "tagsAds": tagsAds == null ? null : tagsAds!.toJson(),
//         "details": details == null ? null : details!.toJson(),
//         "relatedContent":
//             relatedContent == null ? null : relatedContent!.toJson(),
//         "ingredientLines": ingredientLines == null
//             ? null
//             : List<dynamic>.from(ingredientLines!.map((x) => x.toJson())),
//         "unitSystem":
//             unitSystem == null ? null : unitSystemValues.reverse![unitSystem],
//         "reviews": reviews == null ? null : reviews!.toJson(),
//         "relatedProducts":
//             relatedProducts == null ? null : relatedProducts!.toJson(),
//         "preparationStepCount":
//             preparationStepCount == null ? null : preparationStepCount,
//         "nutrition": nutrition == null ? null : nutrition!.toJson(),
//         "yums": yums == null ? null : yums!.toJson(),
//         "videos": videos == null ? null : videos!.toJson(),
//         "ctaUrl": ctaUrl == null ? null : ctaUrl,
//         "platformName": platformName == null ? null : platformName,
//         "guidedVariations": guidedVariations == null
//             ? null
//             : List<dynamic>.from(guidedVariations!.map((x) => x.toJson())),
//         "search": search == null ? null : search!.toJson(),
//         "total": total == null ? null : total,
//         "matches": matches == null ? null : matches!.toJson(),
//         "start": start == null ? null : start,
//         "end": end == null ? null : end,
//       };
// }

// class Description {
//   Description({
//     required this.mobileSectionName,
//     required this.text,
//     required this.shortText,
//   });

//   String mobileSectionName;
//   String text;
//   String shortText;

//   factory Description.fromJson(Map<String, dynamic> json) => Description(
//         mobileSectionName: json["mobileSectionName"],
//         text: json["text"],
//         shortText: json["shortText"] == null ? null : json["shortText"],
//       );

//   Map<String, dynamic> toJson() => {
//         "mobileSectionName": mobileSectionName,
//         "text": text,
//         "shortText": shortText == null ? null : shortText,
//       };
// }

// class Details {
//   Details({
//     required this.directionsUrl,
//     required this.totalTime,
//     required this.displayName,
//     required this.images,
//     required this.name,
//     required this.keywords,
//     required this.brand,
//     required this.id,
//     required this.attribution,
//     required this.recipeId,
//     required this.numberOfServings,
//     required this.globalId,
//     required this.totalTimeInSeconds,
//     required this.rating,
//   });

//   String directionsUrl;
//   String totalTime;
//   String displayName;
//   List<Image>? images;
//   String name;
//   List<String>? keywords;
//   dynamic brand;
//   String id;
//   Attribution? attribution;
//   String recipeId;
//   int numberOfServings;
//   String globalId;
//   int totalTimeInSeconds;
//   int rating;

//   factory Details.fromJson(Map<String, dynamic> json) => Details(
//         directionsUrl:
//             json["directionsUrl"] == null ? null : json["directionsUrl"],
//         totalTime: json["totalTime"] == null ? null : json["totalTime"],
//         displayName: json["displayName"] == null ? null : json["displayName"],
//         images: json["images"] == null
//             ? null
//             : List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
//         name: json["name"] == null ? null : json["name"],
//         keywords: json["keywords"] == null
//             ? null
//             : List<String>.from(json["keywords"].map((x) => x)),
//         brand: json["brand"],
//         id: json["id"],
//         attribution: json["attribution"] == null
//             ? null
//             : Attribution.fromJson(json["attribution"]),
//         recipeId: json["recipeId"] == null ? null : json["recipeId"],
//         numberOfServings:
//             json["numberOfServings"] == null ? null : json["numberOfServings"],
//         globalId: json["globalId"] == null ? null : json["globalId"],
//         totalTimeInSeconds: json["totalTimeInSeconds"] == null
//             ? null
//             : json["totalTimeInSeconds"],
//         rating: json["rating"] == null ? null : json["rating"],
//       );

//   Map<String, dynamic> toJson() => {
//         "directionsUrl": directionsUrl == null ? null : directionsUrl,
//         "totalTime": totalTime == null ? null : totalTime,
//         "displayName": displayName == null ? null : displayName,
//         "images": images == null
//             ? null
//             : List<dynamic>.from(images!.map((x) => x.toJson())),
//         "name": name == null ? null : name,
//         "keywords": keywords == null
//             ? null
//             : List<dynamic>.from(keywords!.map((x) => x)),
//         "brand": brand,
//         "id": id,
//         "attribution": attribution == null ? null : attribution!.toJson(),
//         "recipeId": recipeId == null ? null : recipeId,
//         "numberOfServings": numberOfServings == null ? null : numberOfServings,
//         "globalId": globalId == null ? null : globalId,
//         "totalTimeInSeconds":
//             totalTimeInSeconds == null ? null : totalTimeInSeconds,
//         "rating": rating == null ? null : rating,
//       };
// }

// class Attribution {
//   Attribution({
//     required this.html,
//     required this.url,
//     required this.text,
//     required this.logo,
//   });

//   String html;
//   String url;
//   String text;
//   String logo;

//   factory Attribution.fromJson(Map<String, dynamic> json) => Attribution(
//         html: json["html"],
//         url: json["url"],
//         text: json["text"],
//         logo: json["logo"],
//       );

//   Map<String, dynamic> toJson() => {
//         "html": html,
//         "url": url,
//         "text": text,
//         "logo": logo,
//       };
// }

// class Image {
//   Image({
//     required this.hostedLargeUrl,
//     required this.resizableImageUrl,
//     required this.resizableImageHeight,
//     required this.resizableImageWidth,
//   });

//   String hostedLargeUrl;
//   String resizableImageUrl;
//   int resizableImageHeight;
//   int resizableImageWidth;

//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//         hostedLargeUrl: json["hostedLargeUrl"],
//         resizableImageUrl: json["resizableImageUrl"],
//         resizableImageHeight: json["resizableImageHeight"],
//         resizableImageWidth: json["resizableImageWidth"],
//       );

//   Map<String, dynamic> toJson() => {
//         "hostedLargeUrl": hostedLargeUrl,
//         "resizableImageUrl": resizableImageUrl,
//         "resizableImageHeight": resizableImageHeight,
//         "resizableImageWidth": resizableImageWidth,
//       };
// }

// class GuidedVariation {
//   GuidedVariation({
//     required this.id,
//     required this.guidedVariationDefault,
//     required this.variationAttributes,
//     required this.connected,
//     required this.actions,
//     required this.applianceUnitTypeCode,
//   });

//   String id;
//   bool guidedVariationDefault;
//   List<dynamic>? variationAttributes;
//   bool connected;
//   List<Action>? actions;
//   String applianceUnitTypeCode;

//   factory GuidedVariation.fromJson(Map<String, dynamic> json) =>
//       GuidedVariation(
//         id: json["id"],
//         guidedVariationDefault: json["default"],
//         variationAttributes:
//             List<dynamic>.from(json["variationAttributes"].map((x) => x)),
//         connected: json["connected"],
//         actions: json["actions"] == null
//             ? null
//             : List<Action>.from(json["actions"].map((x) => Action.fromJson(x))),
//         applianceUnitTypeCode: json["applianceUnitTypeCode"] == null
//             ? null
//             : json["applianceUnitTypeCode"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "default": guidedVariationDefault,
//         "variationAttributes":
//             List<dynamic>.from(variationAttributes!.map((x) => x)),
//         "connected": connected,
//         "actions": actions == null
//             ? null
//             : List<dynamic>.from(actions!.map((x) => x.toJson())),
//         "applianceUnitTypeCode":
//             applianceUnitTypeCode == null ? null : applianceUnitTypeCode,
//       };
// }

// class Action {
//   Action({
//     required this.name,
//     required this.stepGroups,
//   });

//   String name;
//   List<StepGroup> stepGroups;

//   factory Action.fromJson(Map<String, dynamic> json) => Action(
//         name: json["name"],
//         stepGroups: List<StepGroup>.from(
//             json["stepGroups"].map((x) => StepGroup.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "stepGroups": List<dynamic>.from(stepGroups.map((x) => x.toJson())),
//       };
// }

// class StepGroup {
//   StepGroup({
//     required this.steps,
//   });

//   List<Step> steps;

//   factory StepGroup.fromJson(Map<String, dynamic> json) => StepGroup(
//         steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
//       };
// }

// class Step {
//   Step({
//     required this.displayText,
//     required this.ingredientLines,
//     required this.imageUrl,
//     required this.video,
//     required this.equipment,
//     required this.tip,
//     required this.timers,
//   });

//   String displayText;
//   List<StepIngredientLine>? ingredientLines;
//   String imageUrl;
//   Video video;
//   List<Equipment>? equipment;
//   String tip;
//   List<Timer>? timers;

//   factory Step.fromJson(Map<String, dynamic> json) => Step(
//         displayText: json["displayText"],
//         ingredientLines: List<StepIngredientLine>.from(
//             json["ingredientLines"].map((x) => StepIngredientLine.fromJson(x))),
//         imageUrl: json["imageUrl"],
//         video: Video.fromJson(json["video"]),
//         equipment: json["equipment"] == null
//             ? null
//             : List<Equipment>.from(
//                 json["equipment"].map((x) => Equipment.fromJson(x))),
//         tip: json["tip"] == null ? null : json["tip"],
//         timers: json["timers"] == null
//             ? null
//             : List<Timer>.from(json["timers"].map((x) => Timer.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "displayText": displayText,
//         "ingredientLines":
//             List<dynamic>.from(ingredientLines!.map((x) => x.toJson())),
//         "imageUrl": imageUrl,
//         "video": video.toJson(),
//         "equipment": equipment == null
//             ? null
//             : List<dynamic>.from(equipment!.map((x) => x.toJson())),
//         "tip": tip == null ? null : tip,
//         "timers": timers == null
//             ? null
//             : List<dynamic>.from(timers!.map((x) => x.toJson())),
//       };
// }

// class Equipment {
//   Equipment({
//     required this.id,
//     required this.name,
//   });

//   String id;
//   String name;

//   factory Equipment.fromJson(Map<String, dynamic> json) => Equipment(
//         id: json["id"],
//         name: json["name"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//       };
// }

// class StepIngredientLine {
//   StepIngredientLine({
//     required this.ingredient,
//     required this.ingredientId,
//     required this.sortOrder,
//     required this.amount,
//     required this.category,
//     required this.remainder,
//   });

//   String ingredient;
//   String ingredientId;
//   int sortOrder;
//   Amount? amount;
//   String category;
//   String remainder;

//   factory StepIngredientLine.fromJson(Map<String, dynamic> json) =>
//       StepIngredientLine(
//         ingredient: json["ingredient"],
//         ingredientId: json["ingredientId"],
//         sortOrder: json["sortOrder"],
//         amount: json["amount"] == null ? null : Amount.fromJson(json["amount"]),
//         category: json["category"],
//         remainder: json["remainder"],
//       );

//   Map<String, dynamic> toJson() => {
//         "ingredient": ingredient,
//         "ingredientId": ingredientId,
//         "sortOrder": sortOrder,
//         "amount": amount == null ? null : amount!.toJson(),
//         "category": category,
//         "remainder": remainder,
//       };
// }

// class Amount {
//   Amount({
//     required this.metric,
//     required this.imperial,
//   });

//   Imperial metric;
//   Imperial imperial;

//   factory Amount.fromJson(Map<String, dynamic> json) => Amount(
//         metric: Imperial.fromJson(json["metric"]),
//         imperial: Imperial.fromJson(json["imperial"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "metric": metric.toJson(),
//         "imperial": imperial.toJson(),
//       };
// }

// class Imperial {
//   Imperial({
//     required this.unit,
//     required this.quantity,
//   });

//   ImperialUnit unit;
//   double quantity;

//   factory Imperial.fromJson(Map<String, dynamic> json) => Imperial(
//         unit: ImperialUnit.fromJson(json["unit"]),
//         quantity: json["quantity"] == null ? null : json["quantity"].toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "unit": unit.toJson(),
//         "quantity": quantity == null ? null : quantity,
//       };
// }

// class ImperialUnit {
//   ImperialUnit({
//     required this.id,
//     required this.name,
//     required this.abbreviation,
//     required this.plural,
//     required this.kind,
//     required this.round,
//     required this.decimal,
//     required this.pluralAbbreviation,
//   });

//   String id;
//   NameEnum? name;
//   PurpleAbbreviation? abbreviation;
//   PurplePlural? plural;
//   Kind? kind;
//   bool round;
//   bool decimal;
//   PluralAbbreviation? pluralAbbreviation;

//   factory ImperialUnit.fromJson(Map<String, dynamic> json) => ImperialUnit(
//         id: json["id"],
//         name: nameEnumValues.map[json["name"]],
//         abbreviation: purpleAbbreviationValues.map[json["abbreviation"]],
//         plural: purplePluralValues.map[json["plural"]],
//         kind: kindValues.map[json["kind"]],
//         round: json["round?"] == null ? null : json["round?"],
//         decimal: json["decimal"],
//         pluralAbbreviation: json["pluralAbbreviation"] == null
//             ? null
//             : pluralAbbreviationValues.map[json["pluralAbbreviation"]],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": nameEnumValues.reverse![name],
//         "abbreviation": purpleAbbreviationValues.reverse![abbreviation],
//         "plural": purplePluralValues.reverse![plural],
//         "kind": kindValues.reverse![kind],
//         "round?": round == null ? null : round,
//         "decimal": decimal,
//         "pluralAbbreviation": pluralAbbreviation == null
//             ? null
//             : pluralAbbreviationValues.reverse![pluralAbbreviation],
//       };
// }

// enum PurpleAbbreviation {
//   LB,
//   CUP,
//   CLOVE,
//   OZ,
//   TSP,
//   EMPTY,
//   TBSP,
//   G,
//   KG,
//   ML,
//   ABBREVIATION_TBSP,
//   ABBREVIATION_LB,
//   ABBREVIATION_TSP,
//   ABBREVIATION_OZ,
//   BUNCH,
//   DASH,
//   WHOLE,
//   QT,
//   HANDFUL,
//   PINCH,
//   LITER,
//   PACKET
// }

// final purpleAbbreviationValues = EnumValues({
//   "lb.": PurpleAbbreviation.ABBREVIATION_LB,
//   "oz.": PurpleAbbreviation.ABBREVIATION_OZ,
//   "Tbsp.": PurpleAbbreviation.ABBREVIATION_TBSP,
//   "tsp.": PurpleAbbreviation.ABBREVIATION_TSP,
//   "bunch": PurpleAbbreviation.BUNCH,
//   "clove": PurpleAbbreviation.CLOVE,
//   "cup": PurpleAbbreviation.CUP,
//   "dash": PurpleAbbreviation.DASH,
//   "": PurpleAbbreviation.EMPTY,
//   "g": PurpleAbbreviation.G,
//   "handful": PurpleAbbreviation.HANDFUL,
//   "kg": PurpleAbbreviation.KG,
//   "lb": PurpleAbbreviation.LB,
//   "liter": PurpleAbbreviation.LITER,
//   "ml": PurpleAbbreviation.ML,
//   "oz": PurpleAbbreviation.OZ,
//   "packet": PurpleAbbreviation.PACKET,
//   "pinch": PurpleAbbreviation.PINCH,
//   "qt.": PurpleAbbreviation.QT,
//   "tbsp": PurpleAbbreviation.TBSP,
//   "tsp": PurpleAbbreviation.TSP,
//   "whole": PurpleAbbreviation.WHOLE
// });

// enum Kind { MASS, VOLUME, COUNT }

// final kindValues =
//     EnumValues({"count": Kind.COUNT, "mass": Kind.MASS, "volume": Kind.VOLUME});

// enum NameEnum {
//   POUND,
//   CUP,
//   CLOVE,
//   OUNCE,
//   TEASPOON,
//   EMPTY,
//   TABLESPOON,
//   GRAM,
//   KILOGRAM,
//   MILLILITER,
//   BUNCH,
//   DASH,
//   WHOLE,
//   QUART,
//   HANDFUL,
//   PINCH,
//   LITER,
//   PACKET
// }

// final nameEnumValues = EnumValues({
//   "bunch": NameEnum.BUNCH,
//   "clove": NameEnum.CLOVE,
//   "cup": NameEnum.CUP,
//   "dash": NameEnum.DASH,
//   "": NameEnum.EMPTY,
//   "gram": NameEnum.GRAM,
//   "handful": NameEnum.HANDFUL,
//   "kilogram": NameEnum.KILOGRAM,
//   "liter": NameEnum.LITER,
//   "milliliter": NameEnum.MILLILITER,
//   "ounce": NameEnum.OUNCE,
//   "packet": NameEnum.PACKET,
//   "pinch": NameEnum.PINCH,
//   "pound": NameEnum.POUND,
//   "quart": NameEnum.QUART,
//   "tablespoon": NameEnum.TABLESPOON,
//   "teaspoon": NameEnum.TEASPOON,
//   "whole": NameEnum.WHOLE
// });

// enum PurplePlural {
//   POUNDS,
//   CUPS,
//   CLOVES,
//   OUNCES,
//   TEASPOONS,
//   EMPTY,
//   TABLESPOONS,
//   GRAMS,
//   KILOGRAMS,
//   MILLILITERS,
//   BUNCHES,
//   DASHES,
//   WHOLE,
//   QUARTS,
//   HANDFULS,
//   PINCHES,
//   LITERS,
//   PACKETS
// }

// final purplePluralValues = EnumValues({
//   "bunches": PurplePlural.BUNCHES,
//   "cloves": PurplePlural.CLOVES,
//   "cups": PurplePlural.CUPS,
//   "dashes": PurplePlural.DASHES,
//   "": PurplePlural.EMPTY,
//   "grams": PurplePlural.GRAMS,
//   "handfuls": PurplePlural.HANDFULS,
//   "kilograms": PurplePlural.KILOGRAMS,
//   "liters": PurplePlural.LITERS,
//   "milliliters": PurplePlural.MILLILITERS,
//   "ounces": PurplePlural.OUNCES,
//   "packets": PurplePlural.PACKETS,
//   "pinches": PurplePlural.PINCHES,
//   "pounds": PurplePlural.POUNDS,
//   "quarts": PurplePlural.QUARTS,
//   "tablespoons": PurplePlural.TABLESPOONS,
//   "teaspoons": PurplePlural.TEASPOONS,
//   "whole": PurplePlural.WHOLE
// });

// enum PluralAbbreviation {
//   TBSP,
//   EMPTY,
//   LB,
//   CLOVES,
//   TSP,
//   OZ,
//   CUPS,
//   BUNCHES,
//   DASHES,
//   WHOLE,
//   QT,
//   HANDFULS,
//   PINCHES,
//   KILOGRAMS,
//   ML,
//   GRAMS,
//   LITERS,
//   PACKETS
// }

// final pluralAbbreviationValues = EnumValues({
//   "bunches": PluralAbbreviation.BUNCHES,
//   "cloves": PluralAbbreviation.CLOVES,
//   "cups": PluralAbbreviation.CUPS,
//   "dashes": PluralAbbreviation.DASHES,
//   "": PluralAbbreviation.EMPTY,
//   "grams": PluralAbbreviation.GRAMS,
//   "handfuls": PluralAbbreviation.HANDFULS,
//   "kilograms": PluralAbbreviation.KILOGRAMS,
//   "lb.": PluralAbbreviation.LB,
//   "liters": PluralAbbreviation.LITERS,
//   "ml": PluralAbbreviation.ML,
//   "oz.": PluralAbbreviation.OZ,
//   "packets": PluralAbbreviation.PACKETS,
//   "pinches": PluralAbbreviation.PINCHES,
//   "qt.": PluralAbbreviation.QT,
//   "Tbsp.": PluralAbbreviation.TBSP,
//   "tsp.": PluralAbbreviation.TSP,
//   "whole": PluralAbbreviation.WHOLE
// });

// class Timer {
//   Timer({
//     required this.id,
//     required this.timerName,
//     required this.repeatable,
//     required this.maxRepeat,
//     required this.durationSeconds,
//     required this.priority,
//     required this.mappingNotificationId,
//     required this.finishMessage,
//   });

//   String id;
//   String timerName;
//   bool repeatable;
//   int maxRepeat;
//   int durationSeconds;
//   String priority;
//   String mappingNotificationId;
//   String finishMessage;

//   factory Timer.fromJson(Map<String, dynamic> json) => Timer(
//         id: json["id"],
//         timerName: json["timerName"],
//         repeatable: json["repeatable"],
//         maxRepeat: json["maxRepeat"],
//         durationSeconds: json["durationSeconds"],
//         priority: json["priority"],
//         mappingNotificationId: json["mappingNotificationId"],
//         finishMessage: json["finishMessage"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "timerName": timerName,
//         "repeatable": repeatable,
//         "maxRepeat": maxRepeat,
//         "durationSeconds": durationSeconds,
//         "priority": priority,
//         "mappingNotificationId": mappingNotificationId,
//         "finishMessage": finishMessage,
//       };
// }

// class Video {
//   Video({
//     required this.snapshotUrl,
//     required this.videoUrls,
//     required this.videoTypeCode,
//     required this.hasAudio,
//     required this.originalVideoUrl,
//     required this.createTime,
//   });

//   String snapshotUrl;
//   VideoUrls videoUrls;
//   VideoVideoTypeCode? videoTypeCode;
//   bool hasAudio;
//   String originalVideoUrl;
//   DateTime createTime;

//   factory Video.fromJson(Map<String, dynamic> json) => Video(
//         snapshotUrl: json["snapshotUrl"],
//         videoUrls: VideoUrls.fromJson(json["videoUrls"]),
//         videoTypeCode: videoVideoTypeCodeValues.map[json["videoTypeCode"]],
//         hasAudio: json["hasAudio"],
//         originalVideoUrl: json["originalVideoUrl"],
//         createTime: DateTime.parse(json["createTime"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "snapshotUrl": snapshotUrl,
//         "videoUrls": videoUrls.toJson(),
//         "videoTypeCode": videoVideoTypeCodeValues.reverse![videoTypeCode],
//         "hasAudio": hasAudio,
//         "originalVideoUrl": originalVideoUrl,
//         "createTime": createTime.toIso8601String(),
//       };
// }

// enum VideoVideoTypeCode { DIGITAL_COOKBOOK_STEP }

// final videoVideoTypeCodeValues = EnumValues(
//     {"digital-cookbook-step": VideoVideoTypeCode.DIGITAL_COOKBOOK_STEP});

// class VideoUrls {
//   VideoUrls({
//     required this.ios,
//     required this.android,
//   });

//   String ios;
//   String android;

//   factory VideoUrls.fromJson(Map<String, dynamic> json) => VideoUrls(
//         ios: json["ios"] == null ? null : json["ios"],
//         android: json["android"] == null ? null : json["android"],
//       );

//   Map<String, dynamic> toJson() => {
//         "ios": ios == null ? null : ios,
//         "android": android == null ? null : android,
//       };
// }

// class ContentIngredientLine {
//   ContentIngredientLine({
//     required this.category,
//     required this.amount,
//     required this.unit,
//     required this.ingredientId,
//     required this.categoryId,
//     required this.relatedRecipeSearchTerm,
//     required this.ingredient,
//     required this.id,
//     required this.remainder,
//     required this.quantity,
//     required this.wholeLine,
//   });

//   Category? category;
//   Amount amount;
//   NameEnum? unit;
//   String ingredientId;
//   String categoryId;
//   List<RelatedRecipeSearchTerm> relatedRecipeSearchTerm;
//   String ingredient;
//   String id;
//   String remainder;
//   double quantity;
//   String wholeLine;

//   factory ContentIngredientLine.fromJson(Map<String, dynamic> json) =>
//       ContentIngredientLine(
//         category: categoryValues.map[json["category"]],
//         amount: Amount.fromJson(json["amount"]),
//         unit: nameEnumValues.map[json["unit"]],
//         ingredientId: json["ingredientId"],
//         categoryId: json["categoryId"],
//         relatedRecipeSearchTerm: List<RelatedRecipeSearchTerm>.from(
//             json["relatedRecipeSearchTerm"]
//                 .map((x) => RelatedRecipeSearchTerm.fromJson(x))),
//         ingredient: json["ingredient"],
//         id: json["id"],
//         remainder: json["remainder"] == null ? null : json["remainder"],
//         quantity: json["quantity"] == null ? null : json["quantity"].toDouble(),
//         wholeLine: json["wholeLine"],
//       );

//   Map<String, dynamic> toJson() => {
//         "category": categoryValues.reverse![category],
//         "amount": amount.toJson(),
//         "unit": nameEnumValues.reverse![unit],
//         "ingredientId": ingredientId,
//         "categoryId": categoryId,
//         "relatedRecipeSearchTerm":
//             List<dynamic>.from(relatedRecipeSearchTerm.map((x) => x.toJson())),
//         "ingredient": ingredient,
//         "id": id,
//         "remainder": remainder == null ? null : remainder,
//         "quantity": quantity == null ? null : quantity,
//         "wholeLine": wholeLine,
//       };
// }

// enum Category {
//   BAKING_COOKING,
//   PRODUCE,
//   MEAT,
//   DAIRY,
//   CONDIMENTS,
//   DRINKS,
//   PASTA_GRAINS,
//   BAKERY,
//   SNACK_FOODS,
//   SEAFOOD,
//   COFFEE_TEA,
//   FROZEN_FOODS,
//   CANNED_GOODS_SOUPS,
//   PACKAGED_MEALS_SIDE_DISHES,
//   BREAKFAST_FOODS
// }

// final categoryValues = EnumValues({
//   "Bakery": Category.BAKERY,
//   "Baking & Cooking": Category.BAKING_COOKING,
//   "Breakfast Foods": Category.BREAKFAST_FOODS,
//   "Canned Goods & Soups": Category.CANNED_GOODS_SOUPS,
//   "Coffee & Tea": Category.COFFEE_TEA,
//   "Condiments": Category.CONDIMENTS,
//   "Dairy": Category.DAIRY,
//   "Drinks": Category.DRINKS,
//   "Frozen Foods": Category.FROZEN_FOODS,
//   "Meat": Category.MEAT,
//   "Packaged Meals & Side Dishes": Category.PACKAGED_MEALS_SIDE_DISHES,
//   "Pasta & Grains": Category.PASTA_GRAINS,
//   "Produce": Category.PRODUCE,
//   "Seafood": Category.SEAFOOD,
//   "Snack Foods": Category.SNACK_FOODS
// });

// class RelatedRecipeSearchTerm {
//   RelatedRecipeSearchTerm({
//     required this.allowedIngredient,
//   });

//   String allowedIngredient;

//   factory RelatedRecipeSearchTerm.fromJson(Map<String, dynamic> json) =>
//       RelatedRecipeSearchTerm(
//         allowedIngredient: json["allowedIngredient"],
//       );

//   Map<String, dynamic> toJson() => {
//         "allowedIngredient": allowedIngredient,
//       };
// }

// class Matches {
//   Matches({
//     required this.seo,
//     required this.feed,
//     required this.parsedIngredients,
//     required this.indexableMatches,
//     required this.relatedPhrases,
//     required this.adTrackingCampaign,
//     required this.criteria,
//     required this.ingredientMatchCount,
//     required this.totalMatchCount,
//     required this.noindex,
//     required this.adTargetingPhrase,
//     required this.unrelatedSearchResults,
//     required this.relatedSearchResults,
//   });

//   MatchesSeo seo;
//   List<MatchesFeed> feed;
//   List<ParsedIngredient> parsedIngredients;
//   dynamic indexableMatches;
//   RelatedPhrases relatedPhrases;
//   int adTrackingCampaign;
//   Criteria criteria;
//   IngredientMatchCount ingredientMatchCount;
//   int totalMatchCount;
//   bool noindex;
//   dynamic adTargetingPhrase;
//   List<dynamic> unrelatedSearchResults;
//   dynamic relatedSearchResults;

//   factory Matches.fromJson(Map<String, dynamic> json) => Matches(
//         seo: MatchesSeo.fromJson(json["seo"]),
//         feed: List<MatchesFeed>.from(
//             json["feed"].map((x) => MatchesFeed.fromJson(x))),
//         parsedIngredients: List<ParsedIngredient>.from(
//             json["parsedIngredients"].map((x) => ParsedIngredient.fromJson(x))),
//         indexableMatches: json["indexableMatches"],
//         relatedPhrases: RelatedPhrases.fromJson(json["relatedPhrases"]),
//         adTrackingCampaign: json["adTrackingCampaign"],
//         criteria: Criteria.fromJson(json["criteria"]),
//         ingredientMatchCount:
//             IngredientMatchCount.fromJson(json["ingredientMatchCount"]),
//         totalMatchCount: json["totalMatchCount"],
//         noindex: json["noindex"],
//         adTargetingPhrase: json["adTargetingPhrase"],
//         unrelatedSearchResults:
//             List<dynamic>.from(json["unrelatedSearchResults"].map((x) => x)),
//         relatedSearchResults: json["relatedSearchResults"],
//       );

//   Map<String, dynamic> toJson() => {
//         "seo": seo.toJson(),
//         "feed": List<dynamic>.from(feed.map((x) => x.toJson())),
//         "parsedIngredients":
//             List<dynamic>.from(parsedIngredients.map((x) => x.toJson())),
//         "indexableMatches": indexableMatches,
//         "relatedPhrases": relatedPhrases.toJson(),
//         "adTrackingCampaign": adTrackingCampaign,
//         "criteria": criteria.toJson(),
//         "ingredientMatchCount": ingredientMatchCount.toJson(),
//         "totalMatchCount": totalMatchCount,
//         "noindex": noindex,
//         "adTargetingPhrase": adTargetingPhrase,
//         "unrelatedSearchResults":
//             List<dynamic>.from(unrelatedSearchResults.map((x) => x)),
//         "relatedSearchResults": relatedSearchResults,
//       };
// }

// class Criteria {
//   Criteria({
//     required this.q,
//     required this.boostLocales,
//     required this.flavor,
//     required this.fullReviews,
//     required this.locale,
//     required this.time,
//     required this.connected,
//     required this.fetchRecipes,
//     required this.ignoreTastePref,
//     required this.myyums,
//     required this.expandRelatedSearches,
//     required this.timeoutMillis,
//     required this.facetFields,
//     required this.requirePictures,
//     required this.passthrough,
//     required this.reviewsPerRecipe,
//     required this.ingredients,
//     required this.max,
//     required this.ingredientCount,
//     required this.imageSize,
//     required this.recipeUnsearchable,
//     required this.guided,
//     required this.autocomplete,
//     required this.timeout,
//     required this.nutrition,
//     required this.recognitionEnabled,
//     required this.skip,
//     required this.reviewImagesPerRecipe,
//   });

//   String q;
//   List<String> boostLocales;
//   IngredientMatchCount flavor;
//   bool fullReviews;
//   String locale;
//   dynamic time;
//   bool connected;
//   bool fetchRecipes;
//   bool ignoreTastePref;
//   bool myyums;
//   bool expandRelatedSearches;
//   int timeoutMillis;
//   dynamic facetFields;
//   bool requirePictures;
//   IngredientMatchCount passthrough;
//   int reviewsPerRecipe;
//   IngredientMatchCount ingredients;
//   int max;
//   dynamic ingredientCount;
//   dynamic imageSize;
//   bool recipeUnsearchable;
//   bool guided;
//   bool autocomplete;
//   int timeout;
//   IngredientMatchCount nutrition;
//   bool recognitionEnabled;
//   dynamic skip;
//   dynamic reviewImagesPerRecipe;

//   factory Criteria.fromJson(Map<String, dynamic> json) => Criteria(
//         q: json["q"],
//         boostLocales: List<String>.from(json["boost-locales"].map((x) => x)),
//         flavor: IngredientMatchCount.fromJson(json["flavor"]),
//         fullReviews: json["full-reviews?"],
//         locale: json["locale"],
//         time: json["time"],
//         connected: json["connected"],
//         fetchRecipes: json["fetch-recipes?"],
//         ignoreTastePref: json["ignore-taste-pref?"],
//         myyums: json["myyums"],
//         expandRelatedSearches: json["expand-related-searches?"],
//         timeoutMillis: json["timeout-millis"],
//         facetFields: json["facet-fields"],
//         requirePictures: json["require-pictures?"],
//         passthrough: IngredientMatchCount.fromJson(json["passthrough"]),
//         reviewsPerRecipe: json["reviews-per-recipe"],
//         ingredients: IngredientMatchCount.fromJson(json["ingredients"]),
//         max: json["max"],
//         ingredientCount: json["ingredient-count"],
//         imageSize: json["image-size"],
//         recipeUnsearchable: json["recipe_unsearchable"],
//         guided: json["guided"],
//         autocomplete: json["autocomplete"],
//         timeout: json["timeout"],
//         nutrition: IngredientMatchCount.fromJson(json["nutrition"]),
//         recognitionEnabled: json["recognition-enabled"],
//         skip: json["skip"],
//         reviewImagesPerRecipe: json["review-images-per-recipe"],
//       );

//   Map<String, dynamic> toJson() => {
//         "q": q,
//         "boost-locales": List<dynamic>.from(boostLocales.map((x) => x)),
//         "flavor": flavor.toJson(),
//         "full-reviews?": fullReviews,
//         "locale": locale,
//         "time": time,
//         "connected": connected,
//         "fetch-recipes?": fetchRecipes,
//         "ignore-taste-pref?": ignoreTastePref,
//         "myyums": myyums,
//         "expand-related-searches?": expandRelatedSearches,
//         "timeout-millis": timeoutMillis,
//         "facet-fields": facetFields,
//         "require-pictures?": requirePictures,
//         "passthrough": passthrough.toJson(),
//         "reviews-per-recipe": reviewsPerRecipe,
//         "ingredients": ingredients.toJson(),
//         "max": max,
//         "ingredient-count": ingredientCount,
//         "image-size": imageSize,
//         "recipe_unsearchable": recipeUnsearchable,
//         "guided": guided,
//         "autocomplete": autocomplete,
//         "timeout": timeout,
//         "nutrition": nutrition.toJson(),
//         "recognition-enabled": recognitionEnabled,
//         "skip": skip,
//         "review-images-per-recipe": reviewImagesPerRecipe,
//       };
// }

// class IngredientMatchCount {
//   IngredientMatchCount();

//   factory IngredientMatchCount.fromJson(Map<String, dynamic> json) =>
//       IngredientMatchCount();

//   Map<String, dynamic> toJson() => {};
// }

// class MatchesFeed {
//   MatchesFeed({
//     required this.seo,
//     required this.trackingId,
//     required this.content,
//     required this.type,
//     required this.recipeType,
//     required this.proRecipe,
//     required this.display,
//     required this.promoted,
//     required this.searchResult,
//   });

//   PurpleSeo seo;
//   String trackingId;
//   FluffyContent content;
//   FeedType? type;
//   List<RecipeType> recipeType;
//   bool proRecipe;
//   FluffyDisplay display;
//   bool promoted;
//   SearchResult searchResult;

//   factory MatchesFeed.fromJson(Map<String, dynamic> json) => MatchesFeed(
//         seo: PurpleSeo.fromJson(json["seo"]),
//         trackingId: json["tracking-id"],
//         content: FluffyContent.fromJson(json["content"]),
//         type: feedTypeValues.map[json["type"]],
//         recipeType: List<RecipeType>.from(
//             json["recipeType"].map((x) => recipeTypeValues.map[x])),
//         proRecipe: json["proRecipe"],
//         display: FluffyDisplay.fromJson(json["display"]),
//         promoted: json["promoted"],
//         searchResult: SearchResult.fromJson(json["searchResult"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "seo": seo.toJson(),
//         "tracking-id": trackingId,
//         "content": content.toJson(),
//         "type": feedTypeValues.reverse![type],
//         "recipeType": List<dynamic>.from(
//             recipeType.map((x) => recipeTypeValues.reverse![x])),
//         "proRecipe": proRecipe,
//         "display": display.toJson(),
//         "promoted": promoted,
//         "searchResult": searchResult.toJson(),
//       };
// }

// class FluffyContent {
//   FluffyContent({
//     required this.description,
//     required this.urbSubmitters,
//     required this.tags,
//     required this.preparationSteps,
//     required this.moreContent,
//     required this.tagsAds,
//     required this.details,
//     required this.relatedContent,
//     required this.ingredientLines,
//     required this.unitSystem,
//     required this.reviews,
//     required this.relatedProducts,
//     required this.preparationStepCount,
//     required this.nutrition,
//     required this.yums,
//   });

//   dynamic description;
//   List<dynamic> urbSubmitters;
//   PurpleTags tags;
//   dynamic preparationSteps;
//   MoreContent moreContent;
//   TagsAds tagsAds;
//   Details details;
//   MoreContent relatedContent;
//   List<ContentIngredientLine> ingredientLines;
//   UnitSystem? unitSystem;
//   Reviews reviews;
//   MoreContent relatedProducts;
//   int preparationStepCount;
//   PurpleNutrition nutrition;
//   Yums yums;

//   factory FluffyContent.fromJson(Map<String, dynamic> json) => FluffyContent(
//         description: json["description"],
//         urbSubmitters: List<dynamic>.from(json["urbSubmitters"].map((x) => x)),
//         tags: PurpleTags.fromJson(json["tags"]),
//         preparationSteps: json["preparationSteps"],
//         moreContent: MoreContent.fromJson(json["moreContent"]),
//         tagsAds: TagsAds.fromJson(json["tagsAds"]),
//         details: Details.fromJson(json["details"]),
//         relatedContent: MoreContent.fromJson(json["relatedContent"]),
//         ingredientLines: List<ContentIngredientLine>.from(
//             json["ingredientLines"]
//                 .map((x) => ContentIngredientLine.fromJson(x))),
//         unitSystem: unitSystemValues.map[json["unitSystem"]],
//         reviews: Reviews.fromJson(json["reviews"]),
//         relatedProducts: MoreContent.fromJson(json["relatedProducts"]),
//         preparationStepCount: json["preparationStepCount"],
//         nutrition: PurpleNutrition.fromJson(json["nutrition"]),
//         yums: Yums.fromJson(json["yums"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "description": description,
//         "urbSubmitters": List<dynamic>.from(urbSubmitters.map((x) => x)),
//         "tags": tags.toJson(),
//         "preparationSteps": preparationSteps,
//         "moreContent": moreContent.toJson(),
//         "tagsAds": tagsAds.toJson(),
//         "details": details.toJson(),
//         "relatedContent": relatedContent.toJson(),
//         "ingredientLines":
//             List<dynamic>.from(ingredientLines.map((x) => x.toJson())),
//         "unitSystem": unitSystemValues.reverse![unitSystem],
//         "reviews": reviews.toJson(),
//         "relatedProducts": relatedProducts.toJson(),
//         "preparationStepCount": preparationStepCount,
//         "nutrition": nutrition.toJson(),
//         "yums": yums.toJson(),
//       };
// }

// class MoreContent {
//   MoreContent({
//     required this.mobileSectionName,
//     required this.queryParams,
//     required this.feed,
//   });

//   String mobileSectionName;
//   QueryParams queryParams;
//   List<dynamic> feed;

//   factory MoreContent.fromJson(Map<String, dynamic> json) => MoreContent(
//         mobileSectionName: json["mobileSectionName"],
//         queryParams: QueryParams.fromJson(json["queryParams"]),
//         feed: List<dynamic>.from(json["feed"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "mobileSectionName": mobileSectionName,
//         "queryParams": queryParams.toJson(),
//         "feed": List<dynamic>.from(feed.map((x) => x)),
//       };
// }

// class QueryParams {
//   QueryParams({
//     required this.start,
//     required this.authorId,
//     required this.id,
//     required this.apiFeedType,
//     required this.relatedContentType,
//   });

//   int start;
//   String authorId;
//   String id;
//   ApiFeedType? apiFeedType;
//   RelatedContentType? relatedContentType;

//   factory QueryParams.fromJson(Map<String, dynamic> json) => QueryParams(
//         start: json["start"],
//         authorId: json["authorId"] == null ? null : json["authorId"],
//         id: json["id"],
//         apiFeedType: apiFeedTypeValues.map[json["apiFeedType"]],
//         relatedContentType: json["relatedContentType"] == null
//             ? null
//             : relatedContentTypeValues.map[json["relatedContentType"]],
//       );

//   Map<String, dynamic> toJson() => {
//         "start": start,
//         "authorId": authorId == null ? null : authorId,
//         "id": id,
//         "apiFeedType": apiFeedTypeValues.reverse![apiFeedType],
//         "relatedContentType": relatedContentType == null
//             ? null
//             : relatedContentTypeValues.reverse![relatedContentType],
//       };
// }

// enum ApiFeedType { MORE_FROM, RELATED }

// final apiFeedTypeValues = EnumValues(
//     {"moreFrom": ApiFeedType.MORE_FROM, "related": ApiFeedType.RELATED});

// enum RelatedContentType { PRODUCT }

// final relatedContentTypeValues =
//     EnumValues({"product": RelatedContentType.PRODUCT});

// class PurpleNutrition {
//   PurpleNutrition({
//     required this.mobileSectionName,
//     required this.nutritionEstimates,
//   });

//   NutritionMobileSectionName? mobileSectionName;
//   List<PurpleNutritionEstimate> nutritionEstimates;

//   factory PurpleNutrition.fromJson(Map<String, dynamic> json) =>
//       PurpleNutrition(
//         mobileSectionName:
//             nutritionMobileSectionNameValues.map[json["mobileSectionName"]],
//         nutritionEstimates: List<PurpleNutritionEstimate>.from(
//             json["nutritionEstimates"]
//                 .map((x) => PurpleNutritionEstimate.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "mobileSectionName":
//             nutritionMobileSectionNameValues.reverse![mobileSectionName],
//         "nutritionEstimates":
//             List<dynamic>.from(nutritionEstimates.map((x) => x.toJson())),
//       };
// }

// enum NutritionMobileSectionName { NUTRITION }

// final nutritionMobileSectionNameValues =
//     EnumValues({"Nutrition": NutritionMobileSectionName.NUTRITION});

// class PurpleNutritionEstimate {
//   PurpleNutritionEstimate({
//     required this.attribute,
//     required this.value,
//     required this.unit,
//     required this.display,
//   });

//   String attribute;
//   double value;
//   NutritionEstimateUnit unit;
//   PurpleDisplay display;

//   factory PurpleNutritionEstimate.fromJson(Map<String, dynamic> json) =>
//       PurpleNutritionEstimate(
//         attribute: json["attribute"],
//         value: json["value"].toDouble(),
//         unit: NutritionEstimateUnit.fromJson(json["unit"]),
//         display: PurpleDisplay.fromJson(json["display"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "attribute": attribute,
//         "value": value,
//         "unit": unit.toJson(),
//         "display": display.toJson(),
//       };
// }

// class PurpleDisplay {
//   PurpleDisplay({
//     required this.value,
//     required this.unit,
//     required this.percentDailyValue,
//   });

//   double value;
//   DisplayUnit? unit;
//   int percentDailyValue;

//   factory PurpleDisplay.fromJson(Map<String, dynamic> json) => PurpleDisplay(
//         value: json["value"] == null ? null : json["value"].toDouble(),
//         unit: json["unit"] == null ? null : displayUnitValues.map[json["unit"]],
//         percentDailyValue: json["percentDailyValue"] == null
//             ? null
//             : json["percentDailyValue"],
//       );

//   Map<String, dynamic> toJson() => {
//         "value": value == null ? null : value,
//         "unit": unit == null ? null : displayUnitValues.reverse![unit],
//         "percentDailyValue":
//             percentDailyValue == null ? null : percentDailyValue,
//       };
// }

// enum DisplayUnit { MG, G }

// final displayUnitValues =
//     EnumValues({"g": DisplayUnit.G, "mg": DisplayUnit.MG});

// class NutritionEstimateUnit {
//   NutritionEstimateUnit({
//     required this.name,
//     required this.abbreviation,
//     required this.plural,
//     required this.decimal,
//   });

//   Name? name;
//   FluffyAbbreviation? abbreviation;
//   FluffyPlural? plural;
//   bool decimal;

//   factory NutritionEstimateUnit.fromJson(Map<String, dynamic> json) =>
//       NutritionEstimateUnit(
//         name: nameValues.map[json["name"]],
//         abbreviation: fluffyAbbreviationValues.map[json["abbreviation"]],
//         plural: fluffyPluralValues.map[json["plural"]],
//         decimal: json["decimal"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": nameValues.reverse![name],
//         "abbreviation": fluffyAbbreviationValues.reverse![abbreviation],
//         "plural": fluffyPluralValues.reverse![plural],
//         "decimal": decimal,
//       };
// }

// enum FluffyAbbreviation { KCAL, G, IU }

// final fluffyAbbreviationValues = EnumValues({
//   "g": FluffyAbbreviation.G,
//   "IU": FluffyAbbreviation.IU,
//   "kcal": FluffyAbbreviation.KCAL
// });

// enum Name { CALORIE, GRAM, IU }

// final nameValues =
//     EnumValues({"calorie": Name.CALORIE, "gram": Name.GRAM, "IU": Name.IU});

// enum FluffyPlural { CALORIES, GRAMS, IU }

// final fluffyPluralValues = EnumValues({
//   "calories": FluffyPlural.CALORIES,
//   "grams": FluffyPlural.GRAMS,
//   "IU": FluffyPlural.IU
// });

// class Reviews {
//   Reviews({
//     required this.mobileSectionName,
//     required this.totalReviewCount,
//     required this.averageRating,
//     required this.reviews,
//     required this.thisUserReview,
//     required this.sortBy,
//   });

//   ReviewsMobileSectionName? mobileSectionName;
//   int totalReviewCount;
//   double averageRating;
//   List<dynamic> reviews;
//   dynamic thisUserReview;
//   SortBy? sortBy;

//   factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
//         mobileSectionName:
//             reviewsMobileSectionNameValues.map[json["mobileSectionName"]],
//         totalReviewCount: json["totalReviewCount"],
//         averageRating: json["averageRating"] == null
//             ? null
//             : json["averageRating"].toDouble(),
//         reviews: List<dynamic>.from(json["reviews"].map((x) => x)),
//         thisUserReview: json["thisUserReview"],
//         sortBy: sortByValues.map[json["sortBy"]],
//       );

//   Map<String, dynamic> toJson() => {
//         "mobileSectionName":
//             reviewsMobileSectionNameValues.reverse![mobileSectionName],
//         "totalReviewCount": totalReviewCount,
//         "averageRating": averageRating == null ? null : averageRating,
//         "reviews": List<dynamic>.from(reviews.map((x) => x)),
//         "thisUserReview": thisUserReview,
//         "sortBy": sortByValues.reverse![sortBy],
//       };
// }

// enum ReviewsMobileSectionName { REVIEWS }

// final reviewsMobileSectionNameValues =
//     EnumValues({"Reviews": ReviewsMobileSectionName.REVIEWS});

// enum SortBy { CREATE_TIME }

// final sortByValues = EnumValues({"create-time": SortBy.CREATE_TIME});

// class PurpleTags {
//   PurpleTags({
//     required this.course,
//     required this.difficulty,
//     required this.dish,
//     required this.nutrition,
//     required this.technique,
//   });

//   List<Adtag> course;
//   List<Adtag>? difficulty;
//   List<Adtag>? dish;
//   List<Adtag>? nutrition;
//   List<Adtag>? technique;

//   factory PurpleTags.fromJson(Map<String, dynamic> json) => PurpleTags(
//         course: List<Adtag>.from(json["course"].map((x) => Adtag.fromJson(x))),
//         difficulty: json["difficulty"] == null
//             ? null
//             : List<Adtag>.from(
//                 json["difficulty"].map((x) => Adtag.fromJson(x))),
//         dish: json["dish"] == null
//             ? null
//             : List<Adtag>.from(json["dish"].map((x) => Adtag.fromJson(x))),
//         nutrition: json["nutrition"] == null
//             ? null
//             : List<Adtag>.from(json["nutrition"].map((x) => Adtag.fromJson(x))),
//         technique: json["technique"] == null
//             ? null
//             : List<Adtag>.from(json["technique"].map((x) => Adtag.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "course": List<dynamic>.from(course.map((x) => x.toJson())),
//         "difficulty": difficulty == null
//             ? null
//             : List<dynamic>.from(difficulty!.map((x) => x.toJson())),
//         "dish": dish == null
//             ? null
//             : List<dynamic>.from(dish!.map((x) => x.toJson())),
//         "nutrition": nutrition == null
//             ? null
//             : List<dynamic>.from(nutrition!.map((x) => x.toJson())),
//         "technique": technique == null
//             ? null
//             : List<dynamic>.from(technique!.map((x) => x.toJson())),
//       };
// }

// class Adtag {
//   Adtag({
//     required this.displayName,
//     required this.tagUrl,
//   });

//   String displayName;
//   String tagUrl;

//   factory Adtag.fromJson(Map<String, dynamic> json) => Adtag(
//         displayName: json["display-name"],
//         tagUrl: json["tag-url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "display-name": displayName,
//         "tag-url": tagUrl,
//       };
// }

// class TagsAds {
//   TagsAds({
//     required this.adtag,
//   });

//   List<Adtag> adtag;

//   factory TagsAds.fromJson(Map<String, dynamic> json) => TagsAds(
//         adtag: List<Adtag>.from(json["adtag"].map((x) => Adtag.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "adtag": List<dynamic>.from(adtag.map((x) => x.toJson())),
//       };
// }

// enum UnitSystem { IMPERIAL }

// final unitSystemValues = EnumValues({"imperial": UnitSystem.IMPERIAL});

// class Yums {
//   Yums({
//     required this.count,
//     required this.thisUser,
//   });

//   int count;
//   ThisUser? thisUser;

//   factory Yums.fromJson(Map<String, dynamic> json) => Yums(
//         count: json["count"],
//         thisUser: thisUserValues.map[json["this-user"]],
//       );

//   Map<String, dynamic> toJson() => {
//         "count": count,
//         "this-user": thisUserValues.reverse![thisUser],
//       };
// }

// enum ThisUser { NONE }

// final thisUserValues = EnumValues({"none": ThisUser.NONE});

// class FluffyDisplay {
//   FluffyDisplay({
//     required this.displayName,
//     required this.images,
//     required this.flag,
//     required this.source,
//     required this.profiles,
//     required this.displayPrepStepsInline,
//     required this.collections,
//   });

//   String displayName;
//   List<String> images;
//   dynamic flag;
//   PurpleSource source;
//   List<Profile> profiles;
//   dynamic displayPrepStepsInline;
//   List<dynamic> collections;

//   factory FluffyDisplay.fromJson(Map<String, dynamic> json) => FluffyDisplay(
//         displayName: json["displayName"],
//         images: List<String>.from(json["images"].map((x) => x)),
//         flag: json["flag"],
//         source: PurpleSource.fromJson(json["source"]),
//         profiles: List<Profile>.from(
//             json["profiles"].map((x) => Profile.fromJson(x))),
//         displayPrepStepsInline: json["displayPrepStepsInline"],
//         collections: List<dynamic>.from(json["collections"].map((x) => x)),
//       );

//   Map<String, dynamic> toJson() => {
//         "displayName": displayName,
//         "images": List<dynamic>.from(images.map((x) => x)),
//         "flag": flag,
//         "source": source.toJson(),
//         "profiles": List<dynamic>.from(profiles.map((x) => x.toJson())),
//         "displayPrepStepsInline": displayPrepStepsInline,
//         "collections": List<dynamic>.from(collections.map((x) => x)),
//       };
// }

// class Profile {
//   Profile({
//     required this.profileName,
//     required this.displayName,
//     required this.siteUrl,
//     required this.pictureUrl,
//     required this.pageUrl,
//     required this.description,
//     required this.type,
//     required this.profileUrl,
//   });

//   String profileName;
//   String displayName;
//   String siteUrl;
//   String pictureUrl;
//   String pageUrl;
//   String description;
//   ProfileType? type;
//   String profileUrl;

//   factory Profile.fromJson(Map<String, dynamic> json) => Profile(
//         profileName: json["profileName"],
//         displayName: json["displayName"],
//         siteUrl: json["siteUrl"],
//         pictureUrl: json["pictureUrl"],
//         pageUrl: json["pageUrl"],
//         description: json["description"] == null ? null : json["description"],
//         type: profileTypeValues.map[json["type"]],
//         profileUrl: json["profileUrl"],
//       );

//   Map<String, dynamic> toJson() => {
//         "profileName": profileName,
//         "displayName": displayName,
//         "siteUrl": siteUrl,
//         "pictureUrl": pictureUrl,
//         "pageUrl": pageUrl,
//         "description": description == null ? null : description,
//         "type": profileTypeValues.reverse![type],
//         "profileUrl": profileUrl,
//       };
// }

// enum ProfileType { CONTENT_OWNER }

// final profileTypeValues =
//     EnumValues({"content-owner": ProfileType.CONTENT_OWNER});

// class PurpleSource {
//   PurpleSource({
//     required this.sourceRecipeUrl,
//     required this.sourceFaviconUrl,
//     required this.sourceHttpsOk,
//     required this.sourceInFrame,
//     required this.sourceDisplayName,
//     required this.proSource,
//     required this.sourceSiteUrl,
//     required this.introVideo,
//     required this.eyebrowText,
//     required this.sourcePageUrl,
//     required this.marketingCopy,
//     required this.sourceHttpOk,
//     required this.marketingImage,
//   });

//   String sourceRecipeUrl;
//   String sourceFaviconUrl;
//   bool sourceHttpsOk;
//   bool sourceInFrame;
//   String sourceDisplayName;
//   dynamic proSource;
//   String sourceSiteUrl;
//   IntroVideo introVideo;
//   dynamic eyebrowText;
//   String sourcePageUrl;
//   dynamic marketingCopy;
//   bool sourceHttpOk;
//   dynamic marketingImage;

//   factory PurpleSource.fromJson(Map<String, dynamic> json) => PurpleSource(
//         sourceRecipeUrl: json["sourceRecipeUrl"],
//         sourceFaviconUrl:
//             json["sourceFaviconUrl"] == null ? null : json["sourceFaviconUrl"],
//         sourceHttpsOk: json["sourceHttpsOk"],
//         sourceInFrame: json["sourceInFrame"],
//         sourceDisplayName: json["sourceDisplayName"],
//         proSource: json["proSource"],
//         sourceSiteUrl: json["sourceSiteUrl"],
//         introVideo: IntroVideo.fromJson(json["introVideo"]),
//         eyebrowText: json["eyebrowText"],
//         sourcePageUrl: json["sourcePageUrl"],
//         marketingCopy: json["marketingCopy"],
//         sourceHttpOk: json["sourceHttpOk"],
//         marketingImage: json["marketingImage"],
//       );

//   Map<String, dynamic> toJson() => {
//         "sourceRecipeUrl": sourceRecipeUrl,
//         "sourceFaviconUrl": sourceFaviconUrl == null ? null : sourceFaviconUrl,
//         "sourceHttpsOk": sourceHttpsOk,
//         "sourceInFrame": sourceInFrame,
//         "sourceDisplayName": sourceDisplayName,
//         "proSource": proSource,
//         "sourceSiteUrl": sourceSiteUrl,
//         "introVideo": introVideo.toJson(),
//         "eyebrowText": eyebrowText,
//         "sourcePageUrl": sourcePageUrl,
//         "marketingCopy": marketingCopy,
//         "sourceHttpOk": sourceHttpOk,
//         "marketingImage": marketingImage,
//       };
// }

// class IntroVideo {
//   IntroVideo({
//     required this.id,
//     required this.originalUrl,
//     required this.hlsUrl,
//     required this.dashUrl,
//     required this.hasAudio,
//     required this.snapshot,
//   });

//   String id;
//   String originalUrl;
//   String hlsUrl;
//   String dashUrl;
//   bool hasAudio;
//   Snapshot snapshot;

//   factory IntroVideo.fromJson(Map<String, dynamic> json) => IntroVideo(
//         id: json["id"] == null ? null : json["id"],
//         originalUrl: json["originalUrl"] == null ? null : json["originalUrl"],
//         hlsUrl: json["hlsUrl"] == null ? null : json["hlsUrl"],
//         dashUrl: json["dashUrl"] == null ? null : json["dashUrl"],
//         hasAudio: json["hasAudio"] == null ? null : json["hasAudio"],
//         snapshot: Snapshot.fromJson(json["snapshot"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id == null ? null : id,
//         "originalUrl": originalUrl == null ? null : originalUrl,
//         "hlsUrl": hlsUrl == null ? null : hlsUrl,
//         "dashUrl": dashUrl == null ? null : dashUrl,
//         "hasAudio": hasAudio == null ? null : hasAudio,
//         "snapshot": snapshot.toJson(),
//       };
// }

// class Snapshot {
//   Snapshot({
//     required this.original,
//     required this.resizable,
//   });

//   String original;
//   String resizable;

//   factory Snapshot.fromJson(Map<String, dynamic> json) => Snapshot(
//         original: json["original"] == null ? null : json["original"],
//         resizable: json["resizable"] == null ? null : json["resizable"],
//       );

//   Map<String, dynamic> toJson() => {
//         "original": original == null ? null : original,
//         "resizable": resizable == null ? null : resizable,
//       };
// }

// enum RecipeType { BASIC_RECIPE, PRO_RECIPE, GUIDED_RECIPE }

// final recipeTypeValues = EnumValues({
//   "BasicRecipe": RecipeType.BASIC_RECIPE,
//   "GuidedRecipe": RecipeType.GUIDED_RECIPE,
//   "ProRecipe": RecipeType.PRO_RECIPE
// });

// class SearchResult {
//   SearchResult({
//     required this.score,
//   });

//   double score;

//   factory SearchResult.fromJson(Map<String, dynamic> json) => SearchResult(
//         score: json["score"].toDouble(),
//       );

//   Map<String, dynamic> toJson() => {
//         "score": score,
//       };
// }

// class PurpleSeo {
//   PurpleSeo({
//     required this.web,
//     required this.spotlightSearch,
//     required this.firebase,
//   });

//   PurpleWeb web;
//   SpotlightSearch spotlightSearch;
//   SpotlightSearchClass firebase;

//   factory PurpleSeo.fromJson(Map<String, dynamic> json) => PurpleSeo(
//         web: PurpleWeb.fromJson(json["web"]),
//         spotlightSearch: SpotlightSearch.fromJson(json["spotlightSearch"]),
//         firebase: SpotlightSearchClass.fromJson(json["firebase"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "web": web.toJson(),
//         "spotlightSearch": spotlightSearch.toJson(),
//         "firebase": firebase.toJson(),
//       };
// }

// class SpotlightSearchClass {
//   SpotlightSearchClass({
//     required this.noindex,
//   });

//   bool noindex;

//   factory SpotlightSearchClass.fromJson(Map<String, dynamic> json) =>
//       SpotlightSearchClass(
//         noindex: json["noindex"],
//       );

//   Map<String, dynamic> toJson() => {
//         "noindex": noindex,
//       };
// }

// class SpotlightSearch {
//   SpotlightSearch({
//     required this.keywords,
//     required this.noindex,
//   });

//   List<String> keywords;
//   bool noindex;

//   factory SpotlightSearch.fromJson(Map<String, dynamic> json) =>
//       SpotlightSearch(
//         keywords: List<String>.from(json["keywords"].map((x) => x)),
//         noindex: json["noindex"],
//       );

//   Map<String, dynamic> toJson() => {
//         "keywords": List<dynamic>.from(keywords.map((x) => x)),
//         "noindex": noindex,
//       };
// }

// class PurpleWeb {
//   PurpleWeb({
//     required this.noindex,
//     required this.canonicalTerm,
//     required this.metaTags,
//     required this.linkTags,
//     required this.imageUrl,
//   });

//   bool noindex;
//   String canonicalTerm;
//   MetaTags metaTags;
//   List<LinkTag> linkTags;
//   String imageUrl;

//   factory PurpleWeb.fromJson(Map<String, dynamic> json) => PurpleWeb(
//         noindex: json["noindex"],
//         canonicalTerm: json["canonical-term"],
//         metaTags: MetaTags.fromJson(json["meta-tags"]),
//         linkTags: List<LinkTag>.from(
//             json["link-tags"].map((x) => LinkTag.fromJson(x))),
//         imageUrl: json["image-url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "noindex": noindex,
//         "canonical-term": canonicalTerm,
//         "meta-tags": metaTags.toJson(),
//         "link-tags": List<dynamic>.from(linkTags.map((x) => x.toJson())),
//         "image-url": imageUrl,
//       };
// }

// class LinkTag {
//   LinkTag({
//     required this.rel,
//     required this.href,
//     required this.hreflang,
//   });

//   Rel? rel;
//   String href;
//   Hreflang? hreflang;

//   factory LinkTag.fromJson(Map<String, dynamic> json) => LinkTag(
//         rel: relValues.map[json["rel"]],
//         href: json["href"],
//         hreflang: json["hreflang"] == null
//             ? null
//             : hreflangValues.map[json["hreflang"]],
//       );

//   Map<String, dynamic> toJson() => {
//         "rel": relValues.reverse![rel],
//         "href": href,
//         "hreflang": hreflang == null ? null : hreflangValues.reverse![hreflang],
//       };
// }

// enum Hreflang { EN, EN_GB }

// final hreflangValues = EnumValues({"en": Hreflang.EN, "en-GB": Hreflang.EN_GB});

// enum Rel { CANONICAL, ALTERNATE }

// final relValues =
//     EnumValues({"alternate": Rel.ALTERNATE, "canonical": Rel.CANONICAL});

// class MetaTags {
//   MetaTags({
//     required this.title,
//     required this.description,
//   });

//   String title;
//   String description;

//   factory MetaTags.fromJson(Map<String, dynamic> json) => MetaTags(
//         title: json["title"],
//         description: json["description"],
//       );

//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "description": description,
//       };
// }

// enum FeedType { SINGLE_RECIPE, GENERIC_CTA, SUGGESTED_SEARCH }

// final feedTypeValues = EnumValues({
//   "generic_cta": FeedType.GENERIC_CTA,
//   "single recipe": FeedType.SINGLE_RECIPE,
//   "suggested_search": FeedType.SUGGESTED_SEARCH
// });

// class ParsedIngredient {
//   ParsedIngredient({
//     required this.name,
//     required this.imageUrl,
//     required this.id,
//   });

//   String name;
//   String imageUrl;
//   String id;

//   factory ParsedIngredient.fromJson(Map<String, dynamic> json) =>
//       ParsedIngredient(
//         name: json["name"],
//         imageUrl: json["image-url"],
//         id: json["id"],
//       );

//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "image-url": imageUrl,
//         "id": id,
//       };
// }

// class RelatedPhrases {
//   RelatedPhrases({
//     required this.relatedPhrases,
//     required this.unrelatedPhrases,
//     required this.keywords,
//     required this.recipes,
//     required this.phrase,
//   });

//   List<String> relatedPhrases;
//   List<String> unrelatedPhrases;
//   List<String> keywords;
//   List<String> recipes;
//   String phrase;

//   factory RelatedPhrases.fromJson(Map<String, dynamic> json) => RelatedPhrases(
//         relatedPhrases: List<String>.from(json["relatedPhrases"].map((x) => x)),
//         unrelatedPhrases:
//             List<String>.from(json["unrelatedPhrases"].map((x) => x)),
//         keywords: List<String>.from(json["keywords"].map((x) => x)),
//         recipes: List<String>.from(json["recipes"].map((x) => x)),
//         phrase: json["phrase"],
//       );

//   Map<String, dynamic> toJson() => {
//         "relatedPhrases": List<dynamic>.from(relatedPhrases.map((x) => x)),
//         "unrelatedPhrases": List<dynamic>.from(unrelatedPhrases.map((x) => x)),
//         "keywords": List<dynamic>.from(keywords.map((x) => x)),
//         "recipes": List<dynamic>.from(recipes.map((x) => x)),
//         "phrase": phrase,
//       };
// }

// class MatchesSeo {
//   MatchesSeo({
//     required this.web,
//     required this.firebase,
//   });

//   FluffyWeb web;
//   PurpleFirebase firebase;

//   factory MatchesSeo.fromJson(Map<String, dynamic> json) => MatchesSeo(
//         web: FluffyWeb.fromJson(json["web"]),
//         firebase: PurpleFirebase.fromJson(json["firebase"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "web": web.toJson(),
//         "firebase": firebase.toJson(),
//       };
// }

// class PurpleFirebase {
//   PurpleFirebase({
//     required this.webUrl,
//     required this.appUrl,
//     required this.name,
//     required this.description,
//     required this.noindex,
//   });

//   String webUrl;
//   String appUrl;
//   String name;
//   String description;
//   bool noindex;

//   factory PurpleFirebase.fromJson(Map<String, dynamic> json) => PurpleFirebase(
//         webUrl: json["webUrl"] == null ? null : json["webUrl"],
//         appUrl: json["appUrl"] == null ? null : json["appUrl"],
//         name: json["name"] == null ? null : json["name"],
//         description: json["description"] == null ? null : json["description"],
//         noindex: json["noindex"] == null ? null : json["noindex"],
//       );

//   Map<String, dynamic> toJson() => {
//         "webUrl": webUrl == null ? null : webUrl,
//         "appUrl": appUrl == null ? null : appUrl,
//         "name": name == null ? null : name,
//         "description": description == null ? null : description,
//         "noindex": noindex == null ? null : noindex,
//       };
// }

// class FluffyWeb {
//   FluffyWeb({
//     required this.noindex,
//     required this.displayTitle,
//     required this.canonicalTerm,
//     required this.metaTags,
//     required this.linkTags,
//     required this.imageUrl,
//   });

//   bool noindex;
//   String displayTitle;
//   String canonicalTerm;
//   MetaTags metaTags;
//   List<LinkTag> linkTags;
//   String imageUrl;

//   factory FluffyWeb.fromJson(Map<String, dynamic> json) => FluffyWeb(
//         noindex: json["noindex"],
//         displayTitle: json["display-title"],
//         canonicalTerm: json["canonical-term"],
//         metaTags: MetaTags.fromJson(json["meta-tags"]),
//         linkTags: List<LinkTag>.from(
//             json["link-tags"].map((x) => LinkTag.fromJson(x))),
//         imageUrl: json["image-url"],
//       );

//   Map<String, dynamic> toJson() => {
//         "noindex": noindex,
//         "display-title": displayTitle,
//         "canonical-term": canonicalTerm,
//         "meta-tags": metaTags.toJson(),
//         "link-tags": List<dynamic>.from(linkTags.map((x) => x.toJson())),
//         "image-url": imageUrl,
//       };
// }

// class FluffyNutrition {
//   FluffyNutrition({
//     required this.mobileSectionName,
//     required this.nutritionEstimates,
//   });

//   NutritionMobileSectionName? mobileSectionName;
//   List<FluffyNutritionEstimate> nutritionEstimates;

//   factory FluffyNutrition.fromJson(Map<String, dynamic> json) =>
//       FluffyNutrition(
//         mobileSectionName:
//             nutritionMobileSectionNameValues.map[json["mobileSectionName"]],
//         nutritionEstimates: List<FluffyNutritionEstimate>.from(
//             json["nutritionEstimates"]
//                 .map((x) => FluffyNutritionEstimate.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "mobileSectionName":
//             nutritionMobileSectionNameValues.reverse![mobileSectionName],
//         "nutritionEstimates":
//             List<dynamic>.from(nutritionEstimates.map((x) => x.toJson())),
//       };
// }

// class FluffyNutritionEstimate {
//   FluffyNutritionEstimate({
//     required this.attribute,
//     required this.value,
//     required this.unit,
//     required this.display,
//   });

//   String attribute;
//   double value;
//   NutritionEstimateUnit unit;
//   TentacledDisplay display;

//   factory FluffyNutritionEstimate.fromJson(Map<String, dynamic> json) =>
//       FluffyNutritionEstimate(
//         attribute: json["attribute"],
//         value: json["value"].toDouble(),
//         unit: NutritionEstimateUnit.fromJson(json["unit"]),
//         display: TentacledDisplay.fromJson(json["display"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "attribute": attribute,
//         "value": value,
//         "unit": unit.toJson(),
//         "display": display.toJson(),
//       };
// }

// class TentacledDisplay {
//   TentacledDisplay({
//     required this.value,
//     required this.unit,
//     required this.percentDailyValue,
//   });

//   dynamic value;
//   DisplayUnit? unit;
//   int percentDailyValue;

//   factory TentacledDisplay.fromJson(Map<String, dynamic> json) =>
//       TentacledDisplay(
//         value: json["value"],
//         unit: json["unit"] == null ? null : displayUnitValues.map[json["unit"]],
//         percentDailyValue: json["percentDailyValue"] == null
//             ? null
//             : json["percentDailyValue"],
//       );

//   Map<String, dynamic> toJson() => {
//         "value": value,
//         "unit": unit == null ? null : displayUnitValues.reverse![unit],
//         "percentDailyValue":
//             percentDailyValue == null ? null : percentDailyValue,
//       };
// }

// class Search {
//   Search({
//     required this.q,
//   });

//   String q;

//   factory Search.fromJson(Map<String, dynamic> json) => Search(
//         q: json["q"],
//       );

//   Map<String, dynamic> toJson() => {
//         "q": q,
//       };
// }

// class FluffyTags {
//   FluffyTags({
//     required this.course,
//     required this.cuisine,
//     required this.difficulty,
//     required this.dish,
//     required this.nutrition,
//     required this.technique,
//     required this.pro,
//   });

//   List<Adtag>? course;
//   List<Adtag>? cuisine;
//   List<Adtag>? difficulty;
//   List<Adtag>? dish;
//   List<Adtag>? nutrition;
//   List<Adtag>? technique;
//   List<Adtag>? pro;

//   factory FluffyTags.fromJson(Map<String, dynamic> json) => FluffyTags(
//         course: json["course"] == null
//             ? null
//             : List<Adtag>.from(json["course"].map((x) => Adtag.fromJson(x))),
//         cuisine: json["cuisine"] == null
//             ? null
//             : List<Adtag>.from(json["cuisine"].map((x) => Adtag.fromJson(x))),
//         difficulty: json["difficulty"] == null
//             ? null
//             : List<Adtag>.from(
//                 json["difficulty"].map((x) => Adtag.fromJson(x))),
//         dish: json["dish"] == null
//             ? null
//             : List<Adtag>.from(json["dish"].map((x) => Adtag.fromJson(x))),
//         nutrition: json["nutrition"] == null
//             ? null
//             : List<Adtag>.from(json["nutrition"].map((x) => Adtag.fromJson(x))),
//         technique: json["technique"] == null
//             ? null
//             : List<Adtag>.from(json["technique"].map((x) => Adtag.fromJson(x))),
//         pro: json["pro"] == null
//             ? null
//             : List<Adtag>.from(json["pro"].map((x) => Adtag.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "course": course == null
//             ? null
//             : List<dynamic>.from(course!.map((x) => x.toJson())),
//         "cuisine": cuisine == null
//             ? null
//             : List<dynamic>.from(cuisine!.map((x) => x.toJson())),
//         "difficulty": difficulty == null
//             ? null
//             : List<dynamic>.from(difficulty!.map((x) => x.toJson())),
//         "dish": dish == null
//             ? null
//             : List<dynamic>.from(dish!.map((x) => x.toJson())),
//         "nutrition": nutrition == null
//             ? null
//             : List<dynamic>.from(nutrition!.map((x) => x.toJson())),
//         "technique": technique == null
//             ? null
//             : List<dynamic>.from(technique!.map((x) => x.toJson())),
//         "pro": pro == null
//             ? null
//             : List<dynamic>.from(pro!.map((x) => x.toJson())),
//       };
// }

// class Videos {
//   Videos({
//     required this.snapshotUrl,
//     required this.videoUrls,
//     required this.videoDetails,
//     required this.originalVideoUrl,
//     required this.createTime,
//   });

//   String snapshotUrl;
//   VideoUrls videoUrls;
//   VideoDetails videoDetails;
//   String originalVideoUrl;
//   DateTime createTime;

//   factory Videos.fromJson(Map<String, dynamic> json) => Videos(
//         snapshotUrl: json["snapshotUrl"],
//         videoUrls: VideoUrls.fromJson(json["videoUrls"]),
//         videoDetails: VideoDetails.fromJson(json["videoDetails"]),
//         originalVideoUrl: json["originalVideoUrl"],
//         createTime: DateTime.parse(json["createTime"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "snapshotUrl": snapshotUrl,
//         "videoUrls": videoUrls.toJson(),
//         "videoDetails": videoDetails.toJson(),
//         "originalVideoUrl": originalVideoUrl,
//         "createTime": createTime.toIso8601String(),
//       };
// }

// class VideoDetails {
//   VideoDetails({
//     required this.ios,
//     required this.android,
//   });

//   List<Android> ios;
//   List<Android> android;

//   factory VideoDetails.fromJson(Map<String, dynamic> json) => VideoDetails(
//         ios: List<Android>.from(json["ios"].map((x) => Android.fromJson(x))),
//         android:
//             List<Android>.from(json["android"].map((x) => Android.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "ios": List<dynamic>.from(ios.map((x) => x.toJson())),
//         "android": List<dynamic>.from(android.map((x) => x.toJson())),
//       };
// }

// class Android {
//   Android({
//     required this.videoTypeCode,
//     required this.videoUrl,
//     required this.hasAudio,
//   });

//   AndroidVideoTypeCode? videoTypeCode;
//   String videoUrl;
//   bool hasAudio;

//   factory Android.fromJson(Map<String, dynamic> json) => Android(
//         videoTypeCode: androidVideoTypeCodeValues.map[json["videoTypeCode"]],
//         videoUrl: json["videoUrl"],
//         hasAudio: json["hasAudio"],
//       );

//   Map<String, dynamic> toJson() => {
//         "videoTypeCode": androidVideoTypeCodeValues.reverse![videoTypeCode],
//         "videoUrl": videoUrl,
//         "hasAudio": hasAudio,
//       };
// }

// enum AndroidVideoTypeCode { DIGITAL_COOKBOOK, STEP_MONTAGE }

// final androidVideoTypeCodeValues = EnumValues({
//   "digital-cookbook": AndroidVideoTypeCode.DIGITAL_COOKBOOK,
//   "step-montage": AndroidVideoTypeCode.STEP_MONTAGE
// });

// class StickyDisplay {
//   StickyDisplay({
//     required this.displayName,
//     required this.images,
//     required this.flag,
//     required this.source,
//     required this.profiles,
//     required this.displayPrepStepsInline,
//     required this.collections,
//     required this.title,
//     required this.description,
//     required this.callToActionText,
//     required this.cardType,
//     required this.textLocation,
//     required this.displayNameH2,
//   });

//   String displayName;
//   List<String> images;
//   String flag;
//   FluffySource? source;
//   List<Profile>? profiles;
//   bool displayPrepStepsInline;
//   List<dynamic>? collections;
//   String title;
//   dynamic description;
//   dynamic callToActionText;
//   String cardType;
//   String textLocation;
//   String displayNameH2;

//   factory StickyDisplay.fromJson(Map<String, dynamic> json) => StickyDisplay(
//         displayName: json["displayName"] == null ? null : json["displayName"],
//         images: List<String>.from(json["images"].map((x) => x)),
//         flag: json["flag"],
//         source: json["source"] == null
//             ? null
//             : FluffySource.fromJson(json["source"]),
//         profiles: json["profiles"] == null
//             ? null
//             : List<Profile>.from(
//                 json["profiles"].map((x) => Profile.fromJson(x))),
//         displayPrepStepsInline: json["displayPrepStepsInline"] == null
//             ? null
//             : json["displayPrepStepsInline"],
//         collections: json["collections"] == null
//             ? null
//             : List<dynamic>.from(json["collections"].map((x) => x)),
//         title: json["title"] == null ? null : json["title"],
//         description: json["description"],
//         callToActionText: json["callToActionText"],
//         cardType: json["cardType"] == null ? null : json["cardType"],
//         textLocation:
//             json["textLocation"] == null ? null : json["textLocation"],
//         displayNameH2:
//             json["displayName_h2"] == null ? null : json["displayName_h2"],
//       );

//   Map<String, dynamic> toJson() => {
//         "displayName": displayName == null ? null : displayName,
//         "images": List<dynamic>.from(images.map((x) => x)),
//         "flag": flag,
//         "source": source == null ? null : source!.toJson(),
//         "profiles": profiles == null
//             ? null
//             : List<dynamic>.from(profiles!.map((x) => x.toJson())),
//         "displayPrepStepsInline":
//             displayPrepStepsInline == null ? null : displayPrepStepsInline,
//         "collections": collections == null
//             ? null
//             : List<dynamic>.from(collections!.map((x) => x)),
//         "title": title == null ? null : title,
//         "description": description,
//         "callToActionText": callToActionText,
//         "cardType": cardType == null ? null : cardType,
//         "textLocation": textLocation == null ? null : textLocation,
//         "displayName_h2": displayNameH2 == null ? null : displayNameH2,
//       };
// }

// class FluffySource {
//   FluffySource({
//     required this.sourceRecipeUrl,
//     required this.sourceFaviconUrl,
//     required this.sourceHttpsOk,
//     required this.sourceInFrame,
//     required this.sourceDisplayName,
//     required this.proSource,
//     required this.sourceSiteUrl,
//     required this.introVideo,
//     required this.eyebrowText,
//     required this.sourcePageUrl,
//     required this.marketingCopy,
//     required this.sourceHttpOk,
//     required this.marketingImage,
//   });

//   String sourceRecipeUrl;
//   String sourceFaviconUrl;
//   bool sourceHttpsOk;
//   bool sourceInFrame;
//   String sourceDisplayName;
//   bool proSource;
//   String sourceSiteUrl;
//   IntroVideo introVideo;
//   String eyebrowText;
//   String sourcePageUrl;
//   String marketingCopy;
//   bool sourceHttpOk;
//   String marketingImage;

//   factory FluffySource.fromJson(Map<String, dynamic> json) => FluffySource(
//         sourceRecipeUrl: json["sourceRecipeUrl"],
//         sourceFaviconUrl:
//             json["sourceFaviconUrl"] == null ? null : json["sourceFaviconUrl"],
//         sourceHttpsOk: json["sourceHttpsOk"],
//         sourceInFrame: json["sourceInFrame"],
//         sourceDisplayName: json["sourceDisplayName"],
//         proSource: json["proSource"] == null ? null : json["proSource"],
//         sourceSiteUrl: json["sourceSiteUrl"],
//         introVideo: IntroVideo.fromJson(json["introVideo"]),
//         eyebrowText: json["eyebrowText"] == null ? null : json["eyebrowText"],
//         sourcePageUrl: json["sourcePageUrl"],
//         marketingCopy:
//             json["marketingCopy"] == null ? null : json["marketingCopy"],
//         sourceHttpOk: json["sourceHttpOk"],
//         marketingImage:
//             json["marketingImage"] == null ? null : json["marketingImage"],
//       );

//   Map<String, dynamic> toJson() => {
//         "sourceRecipeUrl": sourceRecipeUrl,
//         "sourceFaviconUrl": sourceFaviconUrl == null ? null : sourceFaviconUrl,
//         "sourceHttpsOk": sourceHttpsOk,
//         "sourceInFrame": sourceInFrame,
//         "sourceDisplayName": sourceDisplayName,
//         "proSource": proSource == null ? null : proSource,
//         "sourceSiteUrl": sourceSiteUrl,
//         "introVideo": introVideo.toJson(),
//         "eyebrowText": eyebrowText == null ? null : eyebrowText,
//         "sourcePageUrl": sourcePageUrl,
//         "marketingCopy": marketingCopy == null ? null : marketingCopy,
//         "sourceHttpOk": sourceHttpOk,
//         "marketingImage": marketingImage == null ? null : marketingImage,
//       };
// }

// class FluffySeo {
//   FluffySeo({
//     required this.web,
//     required this.spotlightSearch,
//     required this.firebase,
//   });

//   PurpleWeb web;
//   SpotlightSearch spotlightSearch;
//   PurpleFirebase firebase;

//   factory FluffySeo.fromJson(Map<String, dynamic> json) => FluffySeo(
//         web: PurpleWeb.fromJson(json["web"]),
//         spotlightSearch: SpotlightSearch.fromJson(json["spotlightSearch"]),
//         firebase: PurpleFirebase.fromJson(json["firebase"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "web": web.toJson(),
//         "spotlightSearch": spotlightSearch.toJson(),
//         "firebase": firebase.toJson(),
//       };
// }

// class WelcomeSeo {
//   WelcomeSeo({
//     required this.web,
//     required this.spotlightSearch,
//     required this.firebase,
//   });

//   SpotlightSearchClass web;
//   SpotlightSearchClass spotlightSearch;
//   SpotlightSearchClass firebase;

//   factory WelcomeSeo.fromJson(Map<String, dynamic> json) => WelcomeSeo(
//         web: SpotlightSearchClass.fromJson(json["web"]),
//         spotlightSearch: SpotlightSearchClass.fromJson(json["spotlightSearch"]),
//         firebase: SpotlightSearchClass.fromJson(json["firebase"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "web": web.toJson(),
//         "spotlightSearch": spotlightSearch.toJson(),
//         "firebase": firebase.toJson(),
//       };
// }

// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String>? reverseMap;

//   EnumValues(this.map);

//   Map<T, String>? get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
