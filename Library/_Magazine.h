// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Magazine.h instead.

#import <CoreData/CoreData.h>


extern const struct MagazineAttributes {
	__unsafe_unretained NSString *editor;
	__unsafe_unretained NSString *isbn;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *pages;
	__unsafe_unretained NSString *publicationDate;
	__unsafe_unretained NSString *publisher;
	__unsafe_unretained NSString *title;
} MagazineAttributes;

extern const struct MagazineRelationships {
} MagazineRelationships;

extern const struct MagazineFetchedProperties {
} MagazineFetchedProperties;










@interface MagazineID : NSManagedObjectID {}
@end

@interface _Magazine : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (MagazineID*)objectID;





@property (nonatomic, strong) NSString* editor;



//- (BOOL)validateEditor:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* isbn;



//- (BOOL)validateIsbn:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





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

@interface _Magazine (CoreDataGeneratedAccessors)

@end

@interface _Magazine (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveEditor;
- (void)setPrimitiveEditor:(NSString*)value;




- (NSString*)primitiveIsbn;
- (void)setPrimitiveIsbn:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




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
