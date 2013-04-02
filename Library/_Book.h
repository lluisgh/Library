// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Book.h instead.

#import <CoreData/CoreData.h>


extern const struct BookAttributes {
	__unsafe_unretained NSString *author;
	__unsafe_unretained NSString *editions;
	__unsafe_unretained NSString *pages;
	__unsafe_unretained NSString *publicationDate;
	__unsafe_unretained NSString *publisher;
	__unsafe_unretained NSString *title;
} BookAttributes;

extern const struct BookRelationships {
} BookRelationships;

extern const struct BookFetchedProperties {
} BookFetchedProperties;









@interface BookID : NSManagedObjectID {}
@end

@interface _Book : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (BookID*)objectID;





@property (nonatomic, strong) NSString* author;



//- (BOOL)validateAuthor:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* editions;



@property int16_t editionsValue;
- (int16_t)editionsValue;
- (void)setEditionsValue:(int16_t)value_;

//- (BOOL)validateEditions:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* pages;



@property int16_t pagesValue;
- (int16_t)pagesValue;
- (void)setPagesValue:(int16_t)value_;

//- (BOOL)validatePages:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* publicationDate;



//- (BOOL)validatePublicationDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* publisher;



//- (BOOL)validatePublisher:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* title;



//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;






@end

@interface _Book (CoreDataGeneratedAccessors)

@end

@interface _Book (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAuthor;
- (void)setPrimitiveAuthor:(NSString*)value;




- (NSNumber*)primitiveEditions;
- (void)setPrimitiveEditions:(NSNumber*)value;

- (int16_t)primitiveEditionsValue;
- (void)setPrimitiveEditionsValue:(int16_t)value_;




- (NSNumber*)primitivePages;
- (void)setPrimitivePages:(NSNumber*)value;

- (int16_t)primitivePagesValue;
- (void)setPrimitivePagesValue:(int16_t)value_;




- (NSDate*)primitivePublicationDate;
- (void)setPrimitivePublicationDate:(NSDate*)value;




- (NSString*)primitivePublisher;
- (void)setPrimitivePublisher:(NSString*)value;




- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;




@end
