// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Magazine.m instead.

#import "_Magazine.h"

const struct MagazineAttributes MagazineAttributes = {
	.editor = @"editor",
	.name = @"name",
	.pages = @"pages",
	.publicationDate = @"publicationDate",
	.publisher = @"publisher",
	.title = @"title",
};

const struct MagazineRelationships MagazineRelationships = {
};

const struct MagazineFetchedProperties MagazineFetchedProperties = {
};

@implementation MagazineID
@end

@implementation _Magazine

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Magazine" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Magazine";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Magazine" inManagedObjectContext:moc_];
}

- (MagazineID*)objectID {
	return (MagazineID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"pagesValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pages"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic editor;






@dynamic name;






@dynamic pages;



- (int16_t)pagesValue {
	NSNumber *result = [self pages];
	return [result shortValue];
}

- (void)setPagesValue:(int16_t)value_ {
	[self setPages:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitivePagesValue {
	NSNumber *result = [self primitivePages];
	return [result shortValue];
}

- (void)setPrimitivePagesValue:(int16_t)value_ {
	[self setPrimitivePages:[NSNumber numberWithShort:value_]];
}





@dynamic publicationDate;






@dynamic publisher;






@dynamic title;











@end
