Return-Path: <clang-built-linux+bncBD5JHS4X5YBBBNVJ6SCAMGQELTXZ45A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id E850637F749
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 13:59:51 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id d130-20020a621d880000b02901fb88abc171sf17459005pfd.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 04:59:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620907190; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/etB0W6J42mbBH5RgMUCYiTfrvkpownH1HKM4ejSTIas11oduiy1zHWqbB9v43mj9
         C3aGyvyd+9HZZXs5OBwPrfiMh/rK8m5cQY8AQ9aNsZfoukhwHH8/SlOPYsM0DSZK4LwF
         tnQqsbv7QqqdQGE/oKdH3f1EPjUqBHeFCx4VqSduRtG7oW84ZX0MQOfuvT3zGYWau2yT
         Quos6yoDgNzdFPh1xrWI0grB8uVX695mKmFAV4QoQuiav1nxOgoiv3QptD526HD0Do30
         QCirkEwTNLkFWK8M7qJ02PdK5nH0qsGNL9S3iGXhAIIYe+etQQWmZSSescjldD2JahjJ
         Ncew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=tDOyx8lcaz2Qbp+1/s5Eg8QWMrjWd+sxYuPDzQaV8uc=;
        b=tDMk6itFsrEJAHXzSOm4Jn33mMo3l4w7XYn0wr5/DAoISLBhGhDC/HpwxfBvu6KQ8O
         fNdHYqUr9Tw0wMw8DX/2yMJgTu+ruQJcvMQfUFa50F635AMDDEkVz7xYyGnmODkgPcI0
         eMHH4foXubFWMWPT47QqxWB7ZD/QZgzw0HwWzFKmu79VoGi7fDsQLa9KwdpKC5uMISlS
         YkLMEQIBU5NxrrUJO1iS+ZHi+DCVYrR0LEghKzFTQaCUqbCi7zIpnuazI/9RBxDmJUt5
         F0c/O5RRYh/Xg2gNbx6P4BsKy4tTmL4/WpI/ZMQkF2S1R4sZtq2Q8nL/6L4j/GJ2CC11
         3wBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tDOyx8lcaz2Qbp+1/s5Eg8QWMrjWd+sxYuPDzQaV8uc=;
        b=gimFZFQp0ziwddio7A10bCDTtvhAzbFvBSBMfydsesaE0U8oQFRTMNtQ9BDgpc1i7J
         2rP15vFs3KBelxzwxrjWXyb+fhApniZJ0RAHkj2SwEkn7vEq/x6IctHaAuZzZysnZ4N/
         SGZ3eGGOfoZyLNPu/Zt3w8SzI/FJKuREVBOEdQ9z8Rkga4MZLjXEk2kZ7ge/7/owJEZq
         9QgR8VjOLH1jxzVZ/6CQewk3M+Bmc/6oWM2Vk0sS6rEqehXqd8UTKBluMomK4TqS3Tsf
         rjmxO08pl7QKiUxUVwhiN0bl5JoF/pqpIrOHdmWa9vY+XOkPCRTwPNMsNDzcWnbjAIWq
         9U6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tDOyx8lcaz2Qbp+1/s5Eg8QWMrjWd+sxYuPDzQaV8uc=;
        b=ssyqz13TzdJ90Qr7e8xwkXBNZxkPm8LoeXAy7ua5x6obiPEfrcQzEy3OQpwjRzIgNe
         NiojoV3lNVTJTFCmbIT4lpkukUQnFg4fzy1fIMtSAKlHQ0fiV+QkhDUCc9yIR8wPtH/n
         RmMCn8xH8KsxdTlhNwOhA+/CJh8gxk4XperPfIQjE45dQU/H/XZXvyvylPUprbr9jitk
         kJjAgd1WSUea2QuE18JamIf5a3bJjPuF4VbcaC9u1Z+9SyPhfZFicOPIPzmBIqUSf2tE
         1QtgR1tQJp+K0ypt6EaLVFDZFjHJk20/JX0ad1B7+4z9GIt9Vtl4E7IizE+mv0vvGbEM
         mtaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533A++0I/Q+Sz/134In2ksy2OX3OjU4P3QTcZi69BMP65X4/D9XJ
	atJ9L/sVFgvMR6g/wUpMO9A=
X-Google-Smtp-Source: ABdhPJzuJYfUMxUlk7dpJFbiTU53Wkls9Ug/u+qKFBE2vxeVsgnS4XW+ksMKtUjO0RSPKhyOpzAeKw==
X-Received: by 2002:a63:120f:: with SMTP id h15mr41236513pgl.217.1620907190493;
        Thu, 13 May 2021 04:59:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:fc98:: with SMTP id ci24ls444343pjb.0.canary-gmail;
 Thu, 13 May 2021 04:59:50 -0700 (PDT)
X-Received: by 2002:a17:90a:ba07:: with SMTP id s7mr3520163pjr.129.1620907189975;
        Thu, 13 May 2021 04:59:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620907189; cv=none;
        d=google.com; s=arc-20160816;
        b=adRIswsUti35ERGaBsdNeekXCRlWkrw4BlKCNyOnDMTidSokcaGurGsxnBaVoAaNv4
         R8ybKmOz08Z1uz2s5L1WDl8C3iTUXKYjenqd8S3q7Kfq7SsNvKlATk5fwAZJOROeCAHp
         jetzSQsbGLe2f83bs7J7m5OdGIs+XCGwgohALlmBQwuP6YM13Y9HiVoul3fXF5lInWLW
         Jw5WvSqj/PXu+tVqxmkC1I91C0osvx9bH2JqIwBUOZ/EJBHh/hjr0S2PQgVYVGhGv7l/
         DrdRf6tKq0KOI3xfyslqSDVruVCut7F1hvU5zfWYRPXhhp9Wl8+11FLE7BieNuYn/a+T
         0E9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=288r8PHBq7kqIkkZ/FZk+ld+/yZgBL9MAh799awYuMg=;
        b=bn5RoI7UzeHZFrLCoG74w8faOYciLesPl5tPCmHoLHzFUt/G0yzoUOluHFFksyUPdm
         fPmT9fxfdYc1qbXmyqta0FWiLaccAiYidTz4VEdE8jMBjYVx/rRW9U7aVFnzxOHO18Gg
         P09sVnsH8gDhLI+eQnGkxLsMYzC6WwhVaNblZHpi+eYmuGXFOfPBhD0VJIPtBTu0qr7d
         w30SSTrG98TyVFyW/vgIbUm6Jylw09JRc6r5KusagqGz9631bMsdww7l7ST5vw63fQvI
         bpzNyIGRa2kxaBljykU4lED/Dmj2QraEMiKAU9Os9xcMfXCjJ/0SsHd96xI22EfqQDAL
         njnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from ozlabs.ru (ozlabs.ru. [107.174.27.60])
        by gmr-mx.google.com with ESMTP id hk5si635140pjb.1.2021.05.13.04.59.49
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 May 2021 04:59:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted sender) client-ip=107.174.27.60;
Received: from fstn1-p1.ozlabs.ibm.com. (localhost [IPv6:::1])
	by ozlabs.ru (Postfix) with ESMTP id 66058AE80046;
	Thu, 13 May 2021 07:59:12 -0400 (EDT)
From: Alexey Kardashevskiy <aik@ozlabs.ru>
To: linuxppc-dev@lists.ozlabs.org
Cc: Alexey Kardashevskiy <aik@ozlabs.ru>,
	linux-kernel@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Segher Boessenkool <segher@kernel.crashing.org>
Subject: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for preprocessor
Date: Thu, 13 May 2021 21:59:04 +1000
Message-Id: <20210513115904.519912-1-aik@ozlabs.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aik@ozlabs.ru designates 107.174.27.60 as permitted
 sender) smtp.mailfrom=aik@ozlabs.ru
Content-Type: text/plain; charset="UTF-8"
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

The $(CPP) (do only preprocessing) macro is already defined in Makefile.
However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
in flags duplication. Which is not a big deal by itself except for
the flags which depend on other flags and the compiler checks them
as it parses the command line.

Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
If clang+llvm+sanitizer are enabled, this results in

-emit-llvm-bc -fno-lto -flto -fvisibility=hidden \
 -fsanitize=cfi-mfcall -fno-lto  ...

in the clang command line and triggers error:

clang-13: error: invalid argument '-fsanitize=cfi-mfcall' only allowed with '-flto'

This removes unnecessary CPP redefinition. Which works fine as in most
place KBUILD_CFLAGS is passed to $CPP except
arch/powerpc/kernel/vdso64/vdso(32|64).lds. To fix vdso, this does:
1. add -m(big|little)-endian to $CPP
2. add target to $KBUILD_CPPFLAGS as otherwise clang ignores -m(big|little)-endian if
the building platform does not support big endian (such as x86).

Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
---
Changes:
v3:
* moved vdso cleanup in a separate patch
* only add target to KBUILD_CPPFLAGS for CLANG

v2:
* fix KBUILD_CPPFLAGS
* add CLANG_FLAGS to CPPFLAGS
---
 Makefile              | 1 +
 arch/powerpc/Makefile | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index 15b6476d0f89..5b545bef7653 100644
--- a/Makefile
+++ b/Makefile
@@ -576,6 +576,7 @@ CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -
 ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 ifneq ($(CROSS_COMPILE),)
 CLANG_FLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
+KBUILD_CPPFLAGS	+= --target=$(notdir $(CROSS_COMPILE:%-=%))
 endif
 ifeq ($(LLVM_IAS),1)
 CLANG_FLAGS	+= -integrated-as
diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 3212d076ac6a..306bfd2797ad 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -76,6 +76,7 @@ endif
 
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 KBUILD_CFLAGS	+= -mlittle-endian
+KBUILD_CPPFLAGS	+= -mlittle-endian
 KBUILD_LDFLAGS	+= -EL
 LDEMULATION	:= lppc
 GNUTARGET	:= powerpcle
@@ -83,6 +84,7 @@ MULTIPLEWORD	:= -mno-multiple
 KBUILD_CFLAGS_MODULE += $(call cc-option,-mno-save-toc-indirect)
 else
 KBUILD_CFLAGS += $(call cc-option,-mbig-endian)
+KBUILD_CPPFLAGS += $(call cc-option,-mbig-endian)
 KBUILD_LDFLAGS	+= -EB
 LDEMULATION	:= ppc
 GNUTARGET	:= powerpc
@@ -208,7 +210,6 @@ KBUILD_CPPFLAGS	+= -I $(srctree)/arch/$(ARCH) $(asinstr)
 KBUILD_AFLAGS	+= $(AFLAGS-y)
 KBUILD_CFLAGS	+= $(call cc-option,-msoft-float)
 KBUILD_CFLAGS	+= -pipe $(CFLAGS-y)
-CPP		= $(CC) -E $(KBUILD_CFLAGS)
 
 CHECKFLAGS	+= -m$(BITS) -D__powerpc__ -D__powerpc$(BITS)__
 ifdef CONFIG_CPU_BIG_ENDIAN
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210513115904.519912-1-aik%40ozlabs.ru.
