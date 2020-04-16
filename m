Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBLU74L2AKGQEVF7NRFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF311ACE39
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 19:02:39 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id n25sf1253373eje.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 10:02:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587056559; cv=pass;
        d=google.com; s=arc-20160816;
        b=wU1XcfMqc4nSNrzwD3CvfsWYDdyhbTuxgntSOPRrRxdomsE7cg7gU+WOEEReaEevqD
         SVv06QoHpgzHzuF/Db65Bj4pMSKEMRegz0FM9o3qTAApXyWk5ryOCjl/fsIvQb8HE4QR
         7SyM0erUQqyFMkc0x/GDkmgY7Y/YcxjKSuGBbrg2vH5giHVTprcGvsM83TCKtI0s8Ysw
         hz6gj3C80fFrcb9L9AkybLVJdQGwzLcYZbBb/G+7OjB48BwAKeG1IWPb9jD7l8oUo1G1
         QDv/ZfTQ6D0oQfI7Rq5Kc4F61pnQRK2pKOSRpzKdvDWbqXFoFYoIIV+L1mBh6n3sfdFT
         bXGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=NCpryIBfqUesPhzc3vsH6u3xnKnUSSDAnOMtcA17w40=;
        b=fg80rHD+uBkki1Y6uzz9OoYvr5e3xxdHT0KvMKMaYrIpuEZOxBrKnrF+F+wvrl9/tM
         XqdV9+m50F9unKhD+TJFMhGuPojAMV39HGd3L2OP61xiuVkUCFU43LpPZfgDnNcsH0a6
         kW4VQkadXQvwN34bhUrmqaTdSKVZSAUaLeWHm4dc6/L8QYYkk3NEwXe7XMvv3Z1Qutl+
         CYj49yW31npdDLjZVHZq0+ZaMcdrixz/vwT/QX71WUXLX23NGW9zQ6X7BxF0pTzHqmIx
         QxRt5Ov5jNv73LvgfwNeCL1VkH5YWuf06Yuft++ScmEJHl0D8zdHx2w1UtPWYHnHSUPp
         2iWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=jCI1T+JZ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NCpryIBfqUesPhzc3vsH6u3xnKnUSSDAnOMtcA17w40=;
        b=Y51SzG9yEiKdhdPpasquiLMvSvB0E6mEDqCcoKXyMxwUpNA+zGYD5nKu9eXBbhLdI+
         pEuxjeaIk/ui6isokxAvvByPYYBucIO0Yvz9miO/oniP/ypgyDejaxb9s6VcZ2TPAH0o
         /s5ax+MCrZ7szeMPN9FjeIAQwAq1huywdFq0QIRmK/WI0O7nT4IOLw78jeCOYRB8vA+g
         HmpB5HaoGzWgtcP2pPXzdRJH5kkxQd5kjkaBUKmS8zq7+NPCCiZB/rP0tQwEUDWzP4cW
         feOWgtGIgYkzlU1FwaMwZngVN6IkjBaEaMQW3yyUHRHV8l2gDtlDuwKT+C79l8mywjzC
         gjhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NCpryIBfqUesPhzc3vsH6u3xnKnUSSDAnOMtcA17w40=;
        b=GO6PIicQrwuIigWXhvh9vvK5HGEPhPMRjL9P0q/gJJE4IuX64cuIGtCsY1NWhuBkym
         E5XtSyDb8Ut5NgyLNyrygYWQVCalVsaJP8sb/xvO013NociqqfeYn1+/PCsva+sn39Mv
         NfQ+Ki2n0Eb1GvuEBcdiui5XbXQnK5C1wtbP2WPWLsegQx6z+3UhtRTtAK9da3PJLOFS
         t/iP8LcVicNTYVg9lf3exyunCunUF7n+P/S/VohfwhGARcAMTrTgwWuSj9ey2zYGA/9f
         7IHcOLz+LmyIdHWX4rMuSmV3psSw4ix3mIWK/X1Jj/6nDS/Hxx5AvhbenCnWMtFgynaI
         G4gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZ3XEGksV1LBVGIMHGnVey8zqYBw4FFdqd4RhpxMRCPRC5c2D7z
	e7dUem6gQ9+lT6Nqc8Hzmcw=
X-Google-Smtp-Source: APiQypJ/UZR27QXbHN1RdkQ0Ik8bB8COzkbdMEOZ8rgOJj0qo15ljPfMlNt/cPBugfOddXIkRHkoSQ==
X-Received: by 2002:aa7:c243:: with SMTP id y3mr30251310edo.68.1587056558852;
        Thu, 16 Apr 2020 10:02:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:ca0c:: with SMTP id y12ls9177336eds.7.gmail; Thu, 16 Apr
 2020 10:02:38 -0700 (PDT)
X-Received: by 2002:a50:dac9:: with SMTP id s9mr28707000edj.313.1587056558329;
        Thu, 16 Apr 2020 10:02:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587056558; cv=none;
        d=google.com; s=arc-20160816;
        b=Sfw7dCWZ3u8qHJy4sOUMYWUwM79j4GlcTsSNcOUPxz5RneWn0pNO2ydKMYpxVcoHBJ
         Ye3H8swFseT2774iccwhbW1fcrR1eocYG6G3Mx0uIbUUn1ky44uKljomd90PTuMAzZdC
         psQIpEdPTnse2MjwqOsor+/SoLWDXPSDPJqY0KzA+80f1noNubokfsZig6vbqqaYR23O
         8ceCRkYzuPO3nEGoNniFPj+VvEaYH7e1a/NNJEJG9AkxIn0RhEfv/5WGMObXrZHhA/g/
         s3WMYduprtTZiGBiyhzsGVb0s7Z99qVEfKka01iOVvrM2cDuwsFfbIzSsIEqXVLCUY4+
         apvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=MDqmKd3KLcpBpXNBLtkQFZ9vHnBTVG7wfQkfgTZsXXQ=;
        b=rXO1QnK0DA8Ob+C7rODb2ktZ+L4e82FR3Mr902mBG1NeOH8AFbwQtF/kedKKyBcY8L
         K26+ba1P7kCC5gToBIoWE2iDOgpW1TmF81pyyJYko5+6LiidnMXilQ1UgFMt0GFaZ1Dt
         QM0XeSdOeEsk+CzcnE8kYEc4QnMGanyjJWPyxx80UcMALdv3g4F+mrHXZDGo6Zwur0gE
         QscewmV3z6CQO1/Arp7jKcgmilPQVl8uxatK8dREKhnDFRDoB4iJkgH1NnC7shzSdceK
         QKK7BFUC3Mm+kvaOuRNQ5Pjf7Bhw5qDFCT4utz7H+vUj1disFRacP/OnMOE+9yZVhD27
         bI7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=jCI1T+JZ;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id r26si129432edb.5.2020.04.16.10.02.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 10:02:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id d17so5652314wrg.11
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 10:02:38 -0700 (PDT)
X-Received: by 2002:a5d:51c7:: with SMTP id n7mr35113980wrv.11.1587056557949;
        Thu, 16 Apr 2020 10:02:37 -0700 (PDT)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id k3sm19239543wru.90.2020.04.16.10.02.35
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 16 Apr 2020 10:02:36 -0700 (PDT)
From: ci_notify@linaro.org
Date: Thu, 16 Apr 2020 17:02:35 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1635078525.17683.1587056556857.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig - Build # 82 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_17682_737543621.1587056555492"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=jCI1T+JZ;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::42d
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

------=_Part_17682_737543621.1587056555492
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig

Culprit:
<cut>
commit e3ac79a649056865d47815446a95503bd4bd8908
Author: Richard Smith <richard@metafoo.co.uk>
Date:   Thu Mar 19 12:38:40 2020 -0700

    Teach TreeTransform to substitute into resolved TemplateArguments.
    
    This comes up when substituting into an already-substituted template
    argument during constraint satisfaction checking.
    
    (cherry picked from commit b20ab412bf838a8a87e5cc1c8c6399c3c9255354)
</cut>

Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[llvm_branch]="edbe962459da6e3b7b4168118f93a77847b54e02"

Results regressed to (for first_bad == e3ac79a649056865d47815446a95503bd4bd8908)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27574
# linux build successful:
all
# First few build errors in logs:
# 00:00:00 +++ grep ' error:\|^ERROR:\|: undefined reference\|\] Error '

from (for last_good == 321d929774c6fa0767e4ae5eb0881ad15e7a4664)
# reset_artifacts:
-10
# build_llvm:
-1
# linux_n_obj:
27574
# linux build successful:
all
# linux boot successful:
boot

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-e3ac79a649056865d47815446a95503bd4bd8908/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/build-321d929774c6fa0767e4ae5eb0881ad15e7a4664/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/

Reproduce builds:
<cut>
mkdir investigate-llvm-e3ac79a649056865d47815446a95503bd4bd8908
cd investigate-llvm-e3ac79a649056865d47815446a95503bd4bd8908

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach e3ac79a649056865d47815446a95503bd4bd8908
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach 321d929774c6fa0767e4ae5eb0881ad15e7a4664
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-mainline-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-mainline-allmodconfig/82/consoleText

Full commit:
<cut>
commit e3ac79a649056865d47815446a95503bd4bd8908
Author: Richard Smith <richard@metafoo.co.uk>
Date:   Thu Mar 19 12:38:40 2020 -0700

    Teach TreeTransform to substitute into resolved TemplateArguments.
    
    This comes up when substituting into an already-substituted template
    argument during constraint satisfaction checking.
    
    (cherry picked from commit b20ab412bf838a8a87e5cc1c8c6399c3c9255354)
---
 clang/lib/Sema/TreeTransform.h               | 85 +++++++++++++---------------
 clang/test/SemaTemplate/subst-into-subst.cpp | 34 +++++++++++
 2 files changed, 72 insertions(+), 47 deletions(-)

diff --git a/clang/lib/Sema/TreeTransform.h b/clang/lib/Sema/TreeTransform.h
index 0305954a278e..30fb089742ee 100644
--- a/clang/lib/Sema/TreeTransform.h
+++ b/clang/lib/Sema/TreeTransform.h
@@ -4022,50 +4022,8 @@ template<typename Derived>
 void TreeTransform<Derived>::InventTemplateArgumentLoc(
                                          const TemplateArgument &Arg,
                                          TemplateArgumentLoc &Output) {
-  SourceLocation Loc = getDerived().getBaseLocation();
-  switch (Arg.getKind()) {
-  case TemplateArgument::Null:
-    llvm_unreachable("null template argument in TreeTransform");
-    break;
-
-  case TemplateArgument::Type:
-    Output = TemplateArgumentLoc(Arg,
-               SemaRef.Context.getTrivialTypeSourceInfo(Arg.getAsType(), Loc));
-
-    break;
-
-  case TemplateArgument::Template:
-  case TemplateArgument::TemplateExpansion: {
-    NestedNameSpecifierLocBuilder Builder;
-    TemplateName Template = Arg.getAsTemplateOrTemplatePattern();
-    if (DependentTemplateName *DTN = Template.getAsDependentTemplateName())
-      Builder.MakeTrivial(SemaRef.Context, DTN->getQualifier(), Loc);
-    else if (QualifiedTemplateName *QTN = Template.getAsQualifiedTemplateName())
-      Builder.MakeTrivial(SemaRef.Context, QTN->getQualifier(), Loc);
-
-    if (Arg.getKind() == TemplateArgument::Template)
-      Output = TemplateArgumentLoc(Arg,
-                                   Builder.getWithLocInContext(SemaRef.Context),
-                                   Loc);
-    else
-      Output = TemplateArgumentLoc(Arg,
-                                   Builder.getWithLocInContext(SemaRef.Context),
-                                   Loc, Loc);
-
-    break;
-  }
-
-  case TemplateArgument::Expression:
-    Output = TemplateArgumentLoc(Arg, Arg.getAsExpr());
-    break;
-
-  case TemplateArgument::Declaration:
-  case TemplateArgument::Integral:
-  case TemplateArgument::Pack:
-  case TemplateArgument::NullPtr:
-    Output = TemplateArgumentLoc(Arg, TemplateArgumentLocInfo());
-    break;
-  }
+  Output = getSema().getTrivialTemplateArgumentLoc(
+      Arg, QualType(), getDerived().getBaseLocation());
 }
 
 template<typename Derived>
@@ -4075,12 +4033,45 @@ bool TreeTransform<Derived>::TransformTemplateArgument(
   const TemplateArgument &Arg = Input.getArgument();
   switch (Arg.getKind()) {
   case TemplateArgument::Null:
-  case TemplateArgument::Integral:
   case TemplateArgument::Pack:
-  case TemplateArgument::Declaration:
-  case TemplateArgument::NullPtr:
     llvm_unreachable("Unexpected TemplateArgument");
 
+  case TemplateArgument::Integral:
+  case TemplateArgument::NullPtr:
+  case TemplateArgument::Declaration: {
+    // Transform a resolved template argument straight to a resolved template
+    // argument. We get here when substituting into an already-substituted
+    // template type argument during concept satisfaction checking.
+    QualType T = Arg.getNonTypeTemplateArgumentType();
+    QualType NewT = getDerived().TransformType(T);
+    if (NewT.isNull())
+      return true;
+
+    ValueDecl *D = Arg.getKind() == TemplateArgument::Declaration
+                       ? Arg.getAsDecl()
+                       : nullptr;
+    ValueDecl *NewD = D ? cast_or_null<ValueDecl>(getDerived().TransformDecl(
+                              getDerived().getBaseLocation(), D))
+                        : nullptr;
+    if (D && !NewD)
+      return true;
+
+    if (NewT == T && D == NewD)
+      Output = Input;
+    else if (Arg.getKind() == TemplateArgument::Integral)
+      Output = TemplateArgumentLoc(
+          TemplateArgument(getSema().Context, Arg.getAsIntegral(), NewT),
+          TemplateArgumentLocInfo());
+    else if (Arg.getKind() == TemplateArgument::NullPtr)
+      Output = TemplateArgumentLoc(TemplateArgument(NewT, /*IsNullPtr=*/true),
+                                   TemplateArgumentLocInfo());
+    else
+      Output = TemplateArgumentLoc(TemplateArgument(NewD, NewT),
+                                   TemplateArgumentLocInfo());
+
+    return false;
+  }
+
   case TemplateArgument::Type: {
     TypeSourceInfo *DI = Input.getTypeSourceInfo();
     if (!DI)
diff --git a/clang/test/SemaTemplate/subst-into-subst.cpp b/clang/test/SemaTemplate/subst-into-subst.cpp
new file mode 100644
index 000000000000..69c4a837864d
--- /dev/null
+++ b/clang/test/SemaTemplate/subst-into-subst.cpp
@@ -0,0 +1,34 @@
+// RUN: %clang_cc1 -std=c++2a -verify %s
+
+// When forming and checking satisfaction of atomic constraints, we will
+// substitute still-dependent template arguments into an expression, and later
+// substitute into the result. This creates some unique situations; check that
+// they work.
+
+namespace SubstIntoResolvedTypeTemplateArg {
+  template<int, class> struct X {};
+
+  template<class T> concept A = true;
+  template<class T> concept B = sizeof(T) != 0;
+  template<class T> concept C = B<X<1, T>>;
+
+  int f(A auto); // expected-note {{candidate}}
+  int f(C auto); // expected-note {{candidate}}
+  int k1 = f(0); // expected-error {{ambiguous}}
+
+  template<class T> concept D = A<T> && B<X<1, T>>;
+  int f(D auto);
+  int k2 = f(0); // ok
+
+  // The atomic constraint formed from B<X<(int)'\1', T>> is identical to the
+  // one formed from C, even though the template arguments are written as
+  // different expressions; the "equivalent" rules are used rather than the
+  // "identical" rules when matching template arguments in concept-ids.
+  template<class T> concept E = A<T> && B<X<(int)'\1', T>>;
+  int g(C auto);
+  int g(E auto); // expected-note {{candidate}}
+  int k3 = g(0);
+
+  int g(D auto); // expected-note {{candidate}}
+  int k4 = g(0); // expected-error {{ambiguous}}
+}
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1635078525.17683.1587056556857.JavaMail.javamailuser%40localhost.

------=_Part_17682_737543621.1587056555492--
