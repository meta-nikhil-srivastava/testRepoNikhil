public class AssignPackageToUser {
    
    public static void assignPackages(List<Id> userIds){
        List<User>userWithBPprofile = [Select Id,Name from User where Profile.Name = 'BlackPurl'];
        
        String PACKAGE_NAMESPACE_PREFIX = 'BlackPurlCore__' ;
        PackageLicense pl = [SELECT Id, NamespacePrefix FROM PackageLicense WHERE
                             NamespacePrefix = :PACKAGE_NAMESPACE_PREFIX];
        
        List<UserPackageLicense> firstUPLs = new List<UserPackageLicense>();
        for(Id  userIdRec  : userIds){
            UserPackageLicense upl = new UserPackageLicense();
            upl.PackageLicenseId = pl.Id;
            upl.UserId = userIdRec;
            firstUPLs.add(upl);
        }
        insert (firstUPLs);
            
        }
    }