// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Book.m instead.

#import "_Book.h"

const struct BookAttributes BookAttributes = {
	.author = @"author",
	.editions = @"editions",
	.pages = @"pages",
	.publicationDate = @"publicationDate",
	.publisher = @"publisher",
	.title = @"title",
};

const struct BookRelationships BookRelationships = {
};

const struct BookFetchedProperties BookFetchedProperties = {
};

@implementation BookID
@end

@implementation _Book

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Book" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Book";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Book" inManagedObjectContext:moc_];
}

- (BookID*)objectID {
	return (BookID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"editionsValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"editions"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"pagesValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"pages"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic author;






@dynamic editions;



- (int16_t)editionsValue {
	NSNumber *result = [self editions];
	return [result shortValue];
}

- (void)setEditionsValue:(int16_t)value_ {
	[self setEditions:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveEditionsValue {
	NSNumber *result = [self primitiveEditions];
	return [result shortValue];
}

- (void)setPrimitiveEditionsValue:(int16_t)value_ {
	[self setPrimitiveEditions:[NSNumber numberWithShort:value_]];
}





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
