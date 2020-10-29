Return-Path: <clang-built-linux+bncBCS7XUWOUULBB3EI5T6AKGQEEHQ3DMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A75829F3C2
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 19:05:34 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id p17sf2637513ilb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Oct 2020 11:05:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603994733; cv=pass;
        d=google.com; s=arc-20160816;
        b=vs3UmZh6arpXii4Xc3AKdhMYRhPNVosc1Ps9mUN035bX0rsMKt2HViEdc2SrXOlj63
         uJjvpOcRo69SLpghB0ALen/+uJMyAAgJlY1G9fTP1rzGMCVxgQDxRqoRVEbtxlReaNxS
         9P0r9XH2gYxexQpLwTZNak4qKDJPJfcUO7sr1/XbvgafzaU7xEu6tfVGbtr6Pci1zU+D
         SV7PHw8WeoUXsYOKYqFEqlMHKemWqktOeWeemOFSQK4Lzs2SMkCDSkXLhxh0On2n6dqE
         hqEGfWd8vkgpVJ4Y+jB2nCt/6m+5LPtVCJQkz/O++a9RN2sefismdZB+hioAUkMw0m6E
         4gYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=iCuUH3HDYQwfEOfmLYmpZbgI3mzeqhkzSG/Ofpiz/iQ=;
        b=M2OaUjTI4oxVm+82FWqYVvHvR7TuPPeB5leS7WeD4d+K3R7jVGUIMd++joBTNOet7A
         S6v4AK889l4cWGI5wxlrjejP9sfD9nTdxPZEBvHLBR7XATVXmoK2WuvjsIAx1iDRo54h
         S6lMBdQhLj3rdcoankKQT9UJTE4ut1c7ciaBrNnecMBaQSINkkn193j//Nlv/2Ab9Zsk
         fU2hbOCtHZYKBIvUC8s6Kmc4Lmfd3ClwSWFdbljsjpFDoL9ihJevbuj6pWeZc7JIFfRr
         CgcSnZ+BXAuZKjZ+kTB66UG2mqpOJvg2f8rErp2oNlgKbwgC19OZ31/vhaNAwpegkuVf
         Gsjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Juj++IZc;
       spf=pass (google.com: domain of 3awsbxwckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3awSbXwcKEeIQEWOVEcKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iCuUH3HDYQwfEOfmLYmpZbgI3mzeqhkzSG/Ofpiz/iQ=;
        b=gLjXTtnOuPvM/tRANoGF2Yvdr5ZUdeniGni8dPFNtM7eR6NvPJrbLe34hR3npMcPmC
         tihPu//CWS11Ml6Lwcr4ZJSPWNp9d+mPcYhds7zstwGBWsw17I98H7smAr6BYd2mLNfO
         DBBVw8AGHtgMbECNLRvDBkggMF3LvriueHisvVlhJ9X8w14qhwNbF6R0+EAIaCuPu+tH
         TK5zduxm3lFsU0aqjpIFUqYan5ER5w4FKZTzYnBAmHIJqkSjMV69bZYACkMg23caF/xC
         VcdRDY9TWqc9mdM81C/Hz33KSfeogMUTG4ouwHhIoOvM0dy3MHIS+YedDcDNXNIJ2Gz4
         RHyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iCuUH3HDYQwfEOfmLYmpZbgI3mzeqhkzSG/Ofpiz/iQ=;
        b=M3bt8qb6dGq6NBkYJuYsFzz2iMlfRDENnYTYutlAbxJyYkDusey4h6WEVemV8M90p3
         LOnMRKF77Tf3YPS95PIM9VWH9HLkoITcZW9rRhJXYK/Qt2UQWMi5ztA3jT9ltKFSLRAK
         yqXlFiSV4a4EiKC5bmMH4H2dvp4hTIdkPB0ZKgrmnQ3CLVMySBnjI/DQWUVuvGrHpKp+
         O18au0C3UlvqOaKcKvUv4BncKaYA4W0VV30YcGSsyOVFYuxzV8puHkxXlE/0R7ViuKfp
         Nba1xfqQ7mg0uSIBCA5zkf/YXm/6DIxeW5LUpbzT6/s5C/oO5fkUce4HTRHp4LE06smM
         Fc2w==
X-Gm-Message-State: AOAM533ydGwDrY9SiXQ9tv9hy7jruMRyeQHVdr5NfUSmhuzRD3iwoZj1
	sFrxaybNHLovYGd9MbQ55Kg=
X-Google-Smtp-Source: ABdhPJxblAFs3apx6fJSDuQ6IyVZ0Aihn2g+owt4fAvXlGmatt7rOaOs/pTKA/C3p7X5mjXo7U6e9g==
X-Received: by 2002:a92:740c:: with SMTP id p12mr3977924ilc.277.1603994733057;
        Thu, 29 Oct 2020 11:05:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:1b42:: with SMTP id b63ls878814ilb.6.gmail; Thu, 29 Oct
 2020 11:05:32 -0700 (PDT)
X-Received: by 2002:a05:6e02:f0e:: with SMTP id x14mr4505246ilj.228.1603994732649;
        Thu, 29 Oct 2020 11:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603994732; cv=none;
        d=google.com; s=arc-20160816;
        b=C3N5XNkePJBA77Duh5azNjLY+FeMfSahetl89X0Dgj0eslmWqKt5G63t7S86gUseI/
         XGYJdvg+OziDOFEDazTyCNtYRpHZ41JArFFF+l3f4tME+9IguINat+ijH2Q8JIR5bT/z
         QUTstFrt63E3cDJmqnB1N+ZlIYWS8+nrzUg+v/nghz8Y9TJgKYqaoSur4tAQIJGu3PPl
         ySX9LQBPRi4iyKsdSCMHemGNw5GSCGSGwLSVEcVm7Ve6My3+EK4/U2Sdz95JK4ngiX2a
         KIn+bzP7Om2SjdQfNJelKvHR+eU1qnlBKdV9ix66s1wC/kSaTFJQLqoZtenrafZjJ+4u
         PzLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=TFVBAa3RYz8IYFna+GiAaNLsKOoOUuSXlq1eujs3Qh8=;
        b=vJZNxJH1ZPCDutX0kKuuJjtnwTeYVlmPFmMe0n00DK02zhnCydh4VRqhT/WruFc6Ay
         liZhMwzn/kTPu+ogcL1qDJipcdSf0VN8TIyblZkjrK0PBFr3hSDOL1gzFsrpeakOTf/f
         ++6OforZjHRBLNxWwHKsmrgc40tk7P2XFEn12PCi6VZNsLzSt3fGUUD71z1ojClECIdn
         7KR6DPiK1dfE+ADJQWNNI+YNw/f+Nh+Msstw6sCAkntZ0cK0NxOplJYmVOu3mO79f9RW
         NUaCXzSU29mPIFhKycEKgqio9E96wVVm20AEuxGGarREJLsiao/ejDKuqnhkIiZhEyLj
         ehoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Juj++IZc;
       spf=pass (google.com: domain of 3awsbxwckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3awSbXwcKEeIQEWOVEcKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id s11si186618iot.1.2020.10.29.11.05.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 11:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3awsbxwckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id 97so2586853plb.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Oct 2020 11:05:32 -0700 (PDT)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a62:4e0f:0:b029:156:13e0:efa7 with SMTP id
 c15-20020a624e0f0000b029015613e0efa7mr5285238pfb.73.1603994731999; Thu, 29
 Oct 2020 11:05:31 -0700 (PDT)
Date: Thu, 29 Oct 2020 11:05:25 -0700
Message-Id: <20201029180525.1797645-1-maskray@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.1.341.ge80a0c044ae-goog
Subject: [PATCH] x86_64: Change .weak to SYM_FUNC_START_WEAK for arch/x86/lib/mem*_64.S
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: x86@kernel.org, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>
Cc: clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Juj++IZc;       spf=pass
 (google.com: domain of 3awsbxwckeeiqewovecksskpi.gsqgperk-fympx-pmrybksskpikvsytw.gsq@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3awSbXwcKEeIQEWOVEcKSSKPI.GSQGPERK-FYMPX-PMRYbKSSKPIKVSYTW.GSQ@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
memset/memmove/memcpy functions") added .weak directives to
arch/x86/lib/mem*_64.S instead of changing the existing SYM_FUNC_START_*
macros. This can lead to the assembly snippet `.weak memcpy ... .globl
memcpy` which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
https://reviews.llvm.org/D90108) will error on such an overridden symbol
binding.

Use the appropriate SYM_FUNC_START_WEAK instead.

Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmove/memcpy functions")
Reported-by: Sami Tolvanen <samitolvanen@google.com>
Signed-off-by: Fangrui Song <maskray@google.com>
Cc: <stable@vger.kernel.org>
---
 arch/x86/lib/memcpy_64.S  | 4 +---
 arch/x86/lib/memmove_64.S | 4 +---
 arch/x86/lib/memset_64.S  | 4 +---
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
index 037faac46b0c..1e299ac73c86 100644
--- a/arch/x86/lib/memcpy_64.S
+++ b/arch/x86/lib/memcpy_64.S
@@ -16,8 +16,6 @@
  * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
  */
 
-.weak memcpy
-
 /*
  * memcpy - Copy a memory block.
  *
@@ -30,7 +28,7 @@
  * rax original destination
  */
 SYM_FUNC_START_ALIAS(__memcpy)
-SYM_FUNC_START_LOCAL(memcpy)
+SYM_FUNC_START_WEAK(memcpy)
 	ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
 		      "jmp memcpy_erms", X86_FEATURE_ERMS
 
diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
index 7ff00ea64e4f..41902fe8b859 100644
--- a/arch/x86/lib/memmove_64.S
+++ b/arch/x86/lib/memmove_64.S
@@ -24,9 +24,7 @@
  * Output:
  * rax: dest
  */
-.weak memmove
-
-SYM_FUNC_START_ALIAS(memmove)
+SYM_FUNC_START_WEAK(memmove)
 SYM_FUNC_START(__memmove)
 
 	mov %rdi, %rax
diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
index 9ff15ee404a4..0bfd26e4ca9e 100644
--- a/arch/x86/lib/memset_64.S
+++ b/arch/x86/lib/memset_64.S
@@ -6,8 +6,6 @@
 #include <asm/alternative-asm.h>
 #include <asm/export.h>
 
-.weak memset
-
 /*
  * ISO C memset - set a memory block to a byte value. This function uses fast
  * string to get better performance than the original function. The code is
@@ -19,7 +17,7 @@
  *
  * rax   original destination
  */
-SYM_FUNC_START_ALIAS(memset)
+SYM_FUNC_START_WEAK(memset)
 SYM_FUNC_START(__memset)
 	/*
 	 * Some CPUs support enhanced REP MOVSB/STOSB feature. It is recommended
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201029180525.1797645-1-maskray%40google.com.
