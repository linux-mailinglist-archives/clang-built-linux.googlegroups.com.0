Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBF5O2LZAKGQE5Q6ATBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id B322416B827
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 04:40:07 +0100 (CET)
Received: by mail-wm1-x33a.google.com with SMTP id x9sf359445wmc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 19:40:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582602007; cv=pass;
        d=google.com; s=arc-20160816;
        b=HjZ71KYd01KesAx4nNtIy+rXHFHicgTXslE1y883qKv/WyxfdpnJelW1MGSxo/ycZJ
         IJUrMjkiS9zG8hV19aLdEUYFLkiWQCZBJKlB0Wke1REiH526yZMDWtXVpwPAC5QAJfue
         aJbx9vGD6lI6BwdgpiFFGAZMoz4Y1BQRnwukzULBCbD3DSzsjZRofBNAtIxx+wtlKfSx
         5O3idyCIcFnnTuFOY3ielpVABGzRpSGrJcD+LqmtKiAy31oGPKKYAEqD8D+m5mG4MAh9
         5zkPs3qY+OiWLlX07NFHFGmvXJi2Lauq6VAkqD7iI8MidpAFAMAjtN2Y6I61dxHtJXWZ
         vM2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=Gc0jGRKl0oSIlJeZoTJ0DbqNh6zUjjG/4CVep3yAgHw=;
        b=S1hK2zpvHeXba8s/1iMYirMBnafqMYMVtgxygX0FkKsXZjmRfKtYKru0A428geWvsO
         sKijj9mPp4do0uZwyr/8Z8idSdbKCvQfRiTaPTekHPSGAdW2oX/euHkFjaXjBSYhQJQT
         qzwKz+sZc+bewDnFDDcA8sWxAd5pCU7bVL8rpDmxZq2BekM6I1iNUbn4ScB5Lin4qUjf
         NCj/ePb+KUO2Y7QGS7vUKIbVCtno+9mKzJTJcTUcLLmHO65Ku0CAzXz22L0Re3bZ8Dem
         Ij0D9uBo/H2rvmFh6i5FV+GvLmqmvOCgUs/5suRvTdNU10YQyPFpUEYo7o8uOLAkNg8t
         1/ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nES5IKBa;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gc0jGRKl0oSIlJeZoTJ0DbqNh6zUjjG/4CVep3yAgHw=;
        b=k7220+N/l/We33Ul2CA8IiTEKZwLpzAxiff6HRpMt7Wp9gaa58RsNvmyu9CjpdF76S
         tTmLc21DCYFgt4ZNBdFPWlqYwln06k2emVJQgfr+1PzZwzd0JFUDnUxib+/68SnhNH50
         CsQ7yofFLvRO4CJXyfg0PP6mMYsLwLq8JL48MudsLRMi3AFl4Cwi/ojnL+gU+f4Q3tgn
         j3xwHHlujAqerUFmeJ6vNxadPj17l1otHdkOJe4mI9BI/rIwQtv8X6AdD7E0kVJRJR6v
         yz+nX57jiYYCFkBTwDOFgKnkp5ykz/F1cyh/CMVA6QN4xWOEdATX9L1THo2Mqq+p6son
         XUzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gc0jGRKl0oSIlJeZoTJ0DbqNh6zUjjG/4CVep3yAgHw=;
        b=a1xgrOxMTJZBpyONO4hJNTuCWie/Bm6+oMj2N945TO6qkt6E8MAnMgkLXH6dMLo7ZI
         0WIBEe9Od9goyUkgaP47qzhJ79oYhnIzGBpW50M3jWlfq7KnhlmNaJ+FC3A5LnU7Sg47
         APfnobjsts/4CwEOCcznD9za41O5QU8kI8WjccN5tLDI7Afarg36LGGU2/wayfnaM7AW
         zvshjv5Oog4cv6phVHOt99gig4kpAhpwmPn+Agov9m6H4+T6lb8rn3Sx6jsNbxHQBPqb
         6xu4B298rpUpuhebEh12Dh2CAxSQPCcsbKzGZ/OrstpiVdwZMkztPEZ4/0ugjWyJLlOy
         zpew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtxCpY7fJnhQhABl8FMlrt2V338cflp0SfODiWCBhnW5U3SjuS
	sBVMiQGe8UbWGeOk9Gq3x4Y=
X-Google-Smtp-Source: APXvYqzhAP3WDjlje/5WqDBMtKzpQ68KNPtAo4pdtMj+WHbjoopu9jkgRdQeRYB6PpzyiBqgsAzPig==
X-Received: by 2002:a5d:4f89:: with SMTP id d9mr70232035wru.391.1582602007374;
        Mon, 24 Feb 2020 19:40:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4141:: with SMTP id c1ls4352766wrq.8.gmail; Mon, 24 Feb
 2020 19:40:06 -0800 (PST)
X-Received: by 2002:a5d:6a8d:: with SMTP id s13mr19239644wru.55.1582602006852;
        Mon, 24 Feb 2020 19:40:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582602006; cv=none;
        d=google.com; s=arc-20160816;
        b=rRPpKQ4D9xX8cNXLq9nQRX8Txz6kCSNjU7zebP3MRTQbYFuGekCWZqh1/mm+gBG2+J
         eyKH9PZ9oOf88839iUiym4extq6vtrRcijpVYSCYVQyrpJYMo7fDiOhcnbszdlGTP1Jr
         1BJl+rFkf/gtAKjmEojICbjyHXVd4bM+Cv6y/kPb0Ki12u3L2BL2VirU9IJI4WJM8Etb
         /3birZkMBfFF3xtszM0XlK6u9KfSSpDBsc/WERPn5DRdjco3Ms53sXJFd+4uQbRzfG0B
         ELzKzw8JfYwzIqmk2c4iKa13Sc6TVXMwwu6OAx5X+MdbR+gv7BWRphW5SoSoSSS7aJSB
         +Dww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=xy3hvqcOLQoxAaRADBCintWOWFW9GS2S3rL2oAeOhoA=;
        b=PspJKmVWyAs/gEWLw5+JBjcRvnRUfP3zCDUaWUoRxJJQieXfwM5ehvNR45OMfYxuMM
         u30nP5yvwCPOTWzmcllUJ0QBNDqwoZxH53Xnz0Laus0NyXQ/wAe5cXMY3BQwpwFX5czh
         G4EVb48/wXf+DiXPdL5mdsqoEjrbe/7ZO57HWtaDeMx7+bMQPWVYw7zGGXwqnFldvgkq
         B+dJuzFjpW2iLJaoCBmgBNXLjk9eHF8yLhlqVEGyQ4l7+yvEB1KuFYNSjDkV9ldnnJqn
         BSPH+p5W6JF79h7wO8uJx95vYiE1EP8Ll328JgqzTksjv9fR1IiWUs4q+aPwjJWpLICX
         SVTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nES5IKBa;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id q202si80039wme.2.2020.02.24.19.40.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 19:40:06 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id p9so1460436wmc.2
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 19:40:06 -0800 (PST)
X-Received: by 2002:a7b:c847:: with SMTP id c7mr2387760wml.3.1582602006294;
        Mon, 24 Feb 2020 19:40:06 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id z4sm22128358wrt.47.2020.02.24.19.40.05
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 24 Feb 2020 19:40:05 -0800 (PST)
From: ci_notify@linaro.org
Date: Tue, 25 Feb 2020 03:40:04 +0000 (UTC)
To: tcwg-validation@linaro.org, llvm@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <191136455.3935.1582602005633.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-aarch64-lts-allmodconfig - Build # 29 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3934_920330252.1582602005000"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=nES5IKBa;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::344
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

------=_Part_3934_920330252.1582602005000
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *llvm* in CI configuration tcwg_kernel/llvm-master-aarch64-lts-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-master-aarch64-lts-allmodconfig
 - tcwg_kernel/llvm-master-arm-lts-defconfig

Culprit:
<cut>
commit c93112dc4f745b0455addb54bfe1c2f79b827c6d
Author: zoecarver <z.zoelec2@gmail.com>

    Validate argument passed to __builtin_frame_address and __builtin_return_address
</cut>

First few errors in logs of first_bad:
00:05:17 clang-11: error: unable to execute command: Aborted (core dumped)
00:05:17 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:05:17 make[2]: *** [kernel/printk/printk.o] Error 254
00:05:19 make[1]: *** [kernel/printk] Error 2
00:06:13 clang-11: error: unable to execute command: Aborted (core dumped)
00:06:13 clang-11: error: clang frontend command failed due to signal (use -v to see invocation)
00:06:13 make[1]: *** [mm/page_owner.o] Error 254
00:06:45 make: *** [mm] Error 2
00:10:56 make: *** [kernel] Error 2
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git"
rr[llvm_branch]="bae33a7c5a1f220671e6d99cda21749afe2501a6"

Results regressed to (for first_bad == c93112dc4f745b0455addb54bfe1c2f79b827c6d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
17558

from (for last_good == df8dda67ed03f7d7ba3d9475556ab01946386852)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
17560

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/artifact/artifacts/build-c93112dc4f745b0455addb54bfe1c2f79b827c6d/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/artifact/artifacts/build-df8dda67ed03f7d7ba3d9475556ab01946386852/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/

Reproduce builds:
<cut>
mkdir investigate-llvm-c93112dc4f745b0455addb54bfe1c2f79b827c6d
cd investigate-llvm-c93112dc4f745b0455addb54bfe1c2f79b827c6d

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd llvm

# Reproduce first_bad build
git checkout --detach c93112dc4f745b0455addb54bfe1c2f79b827c6d
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach df8dda67ed03f7d7ba3d9475556ab01946386852
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-lts-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-lts-allmodconfig/29/consoleText

Full commit:
<cut>
commit c93112dc4f745b0455addb54bfe1c2f79b827c6d
Author: zoecarver <z.zoelec2@gmail.com>
Date:   Mon Feb 24 13:43:22 2020 -0800

    Validate argument passed to __builtin_frame_address and __builtin_return_address
    
    Verifies that the argument passed to __builtin_frame_address and __builtin_return_address is within the range [0, 0xFFFF].
---
 clang/lib/Sema/SemaChecking.cpp        |  5 +++++
 clang/test/Sema/builtin-stackaddress.c | 28 +++++++++++++++++++++++++---
 2 files changed, 30 insertions(+), 3 deletions(-)

diff --git a/clang/lib/Sema/SemaChecking.cpp b/clang/lib/Sema/SemaChecking.cpp
index a986ef2bb68..590a7b43d1e 100644
--- a/clang/lib/Sema/SemaChecking.cpp
+++ b/clang/lib/Sema/SemaChecking.cpp
@@ -1847,6 +1847,11 @@ Sema::CheckBuiltinFunctionCall(FunctionDecl *FDecl, unsigned BuiltinID,
     if (SemaBuiltinOSLogFormat(TheCall))
       return ExprError();
     break;
+  case Builtin::BI__builtin_frame_address:
+  case Builtin::BI__builtin_return_address:
+    if (!SemaBuiltinConstantArgRange(TheCall, 0, 0, 0xFFFF))
+      return ExprError();
+    break;
   }
 
   // Since the target specific builtins for each arch overlap, only check those
diff --git a/clang/test/Sema/builtin-stackaddress.c b/clang/test/Sema/builtin-stackaddress.c
index 5f63bb11462..a122f851adb 100644
--- a/clang/test/Sema/builtin-stackaddress.c
+++ b/clang/test/Sema/builtin-stackaddress.c
@@ -1,5 +1,6 @@
 // RUN: %clang_cc1 -fsyntax-only -verify %s
-void* a(unsigned x) {
+
+void a(unsigned x) {
 return __builtin_return_address(0);
 }
 
@@ -8,9 +9,30 @@ return __builtin_return_address(x); // expected-error{{argument to '__builtin_re
 }
 
 void* c(unsigned x) {
+// expected-error@+1 {{argument value 4294967295 is outside the valid range [0, 65535]}}
+return __builtin_return_address(-1);
+}
+
+void* d(unsigned x) {
+// expected-error@+1 {{argument value 1048575 is outside the valid range [0, 65535]}}
+return __builtin_return_address(0xFFFFF);
+}
+
+void* e(unsigned x) {
 return __builtin_frame_address(0);
 }
 
-void d(unsigned x) {
-return __builtin_frame_address(x); // expected-error{{argument to '__builtin_frame_address' must be a constant integer}}
+void f(unsigned x) {
+// expected-error@+1 {{argument to '__builtin_frame_address' must be a constant integer}}
+return __builtin_frame_address(x);
+}
+
+void* g(unsigned x) {
+// expected-error@+1 {{argument value 4294967295 is outside the valid range [0, 65535]}}
+return __builtin_frame_address(-1);
+}
+
+void* h(unsigned x) {
+// expected-error@+1 {{argument value 1048575 is outside the valid range [0, 65535]}}
+return __builtin_frame_address(0xFFFFF);
 }
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/191136455.3935.1582602005633.JavaMail.javamailuser%40localhost.

------=_Part_3934_920330252.1582602005000--
