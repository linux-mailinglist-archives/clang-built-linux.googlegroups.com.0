Return-Path: <clang-built-linux+bncBAABBM6XZLVQKGQE5XXC5RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-f60.google.com (mail-wr1-f60.google.com [209.85.221.60])
	by mail.lfdr.de (Postfix) with ESMTPS id F25C6ABFEA
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 20:55:47 +0200 (CEST)
Received: by mail-wr1-f60.google.com with SMTP id x12sf2951494wrs.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 11:55:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567796147; cv=pass;
        d=google.com; s=arc-20160816;
        b=DhFMVkcSGHAbV/CMbKMRNPKZvw6L1SyiKaCJ1ddhlIZ+iSZCjDAkIbVH90arvGh8AV
         849KGtnhivIhyaXKtg8v/typnmGntG+7ujm7LnvBPxRPpZCsaZWKilaxWLTagB18i42C
         sS4PLl3dHc5s3dueX+BMBvIuby2wytvs9wVgBaPIbG8uGP9LAlwLOz9S8iIsyI95cihb
         gr5Q1S8GTGk5v+WvVQNNIv1yZO4NNHvm47ylzfyG4RWrlzn5vkeDVzT5k4AY9bslhl0R
         YiFV/Q0sua9UuqHguFNAttwRE141I4GCywuXs0xOHrEjvsFuQtrHQWm1PNJMj6LwAqTv
         duzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=+xzFgzleDdSawNH4ROviZXEWXcKgqRGAxNMEF0LaPU4=;
        b=wFmwszk1RjPXEBU7YehuyayVeUhwoK1ePoPvd8GD/14hHefYkLrN6OYzFJqnh2gwSW
         22HJ7OIqhvc9JJ9gUpowqcm1JggTDcYey+vO9XQasmwuj9En83mvPtIBitVjQSiDF4A2
         I3fYx+Xsdd+qit2pC9Hod38gUC7/enjkahvJgDiQBwjfH6L/+JH2VdhGO+r4j20q71Qd
         NCj0UYCZtttFyEuQ5bPKW/7R2y1AND9Fql5rlifsHg6HkCXC071LD2UViTLqMccOu9+O
         BVfpYIUyMbNh8bGb692sihfiSn8XIP8tG2Lhz1JTF4XiO7NRiG5czCiBAcaRbaRA2Hfq
         FwuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:sender:reply-to:to:subject:cc
         :in-reply-to:references:mime-version:message-id:robot-id
         :robot-unsubscribe:precedence:x-original-sender
         :x-original-authentication-results:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xzFgzleDdSawNH4ROviZXEWXcKgqRGAxNMEF0LaPU4=;
        b=PQFQZpHGfaQ3Nna9voK8g+NEcAfvnYSgbPgSca8NsiXYHDv0U1X0Wy6rLz3RYOP6eH
         HbEZjX5ZSkMK4La8Gj8Oat0Ue5k+8RBjelTaLBZls8dWNfBaswbJmSVz4NLmcnLvCRGa
         UxzijOcviuugbeap/4sb7zqOCJpy+G3H3XyLE59TMeGFBWhGqpeuad6JUB1wH3Fa/Dnd
         4FEQn6x8NNlTlyOK9SWbz9cP3Zaz989RIuDiaXKs7NPbtjCCPMVexMpHWw785xQsU0uT
         tImk0Hz92062rYXOIL7iAGHRYNyZlQwKahYlPkhONRZy2lTCxbhNE4daepGrT/m2zLv6
         EHow==
X-Gm-Message-State: APjAAAUuhkGwus8HyNkzMzXbt4FtwZKV81PKF+Uk93B4ZA64xD1f0NS3
	l0qjqqyLsFkgvjE5OVR0tdA=
X-Google-Smtp-Source: APXvYqzKNJmmP0yfJKiqX0OBC1ty4yZpvfyO7gKHjjRDwHmOBvFQZXFHICJD0HfMrJjB4+r9Bre4vA==
X-Received: by 2002:a5d:4108:: with SMTP id l8mr4216200wrp.321.1567796147738;
        Fri, 06 Sep 2019 11:55:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6501:: with SMTP id x1ls1860455wru.6.gmail; Fri, 06 Sep
 2019 11:55:47 -0700 (PDT)
X-Received: by 2002:adf:8444:: with SMTP id 62mr273303wrf.202.1567796147425;
        Fri, 06 Sep 2019 11:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567796147; cv=none;
        d=google.com; s=arc-20160816;
        b=0Nc/9ogFJdCxXIn5uK6MX3hf2UWbfqtn5B7MKmx7BSqWqS1NPpMMgfrgH2Y+AAwoq7
         Oe4FzY6nI8ZF4kmo3YtPq/serLSRToJPBIZ/VNZIw771vEYZWdZrJuBiNlYPZK09e3NN
         BebSbeZoAexCEpwCBMw0NwxhC553cE3sQAoM8eA207I1/EwUnlELl0RhJksuTRe39HJ5
         VruosRZdsKatHQzTIXyLGSvSKns2JcQU3az8zgZ4aiPxnDQLT5YDmB02DdxuQCucNgLu
         fjkNtdMpR4Huvq8FAUSnGLNHC2gGe6aksk626kxfEgjcTqrOE6d91i30KqqHpU16QWZr
         LuoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=6q4iz2KhNuUMxhl1R7WmXAZn1Sk3dlbeQUMwRnZv74M=;
        b=q9h+LS71OTJX12b36kuo4LgRU/sPyHV9aQLEo5wZOAV/fiHITLBVQhoxrKsdl8YSLa
         4+kd0rIJpbf88ki9QjsEb0gKrraJBtERtCdapKRvz3Akvqk3I4ELCkcyCe/0sKvCyEyi
         SaI/j1DVlFEtS2Xp6vMdMLW+29FZkIh7sbAe1WTT9CcszFvMjNm/StajnBWh3duZ4Y4L
         wDjZAGcLQXVy/oFJgsRTKfiHT/aSXgzstX0KHUD/1JRhetLd7xXeehGLQzNhtQydAynE
         1I82En2r5HL04peYjMcYodm862PjoT5L4KtYb0oSDqb0BCxjl4u/iYjyZtbxg5pWjwEF
         Nl8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id x13si580399wmk.0.2019.09.06.11.55.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 06 Sep 2019 11:55:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1i6JOb-0000EG-0g; Fri, 06 Sep 2019 20:55:45 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 7BAC91C0744;
	Fri,  6 Sep 2019 20:55:44 +0200 (CEST)
Date: Fri, 06 Sep 2019 18:55:44 -0000
From: "tip-bot2 for Steve Wahl" <tip-bot2@linutronix.de>
Sender: tip-bot2@linutronix.de
Reply-to: linux-kernel@vger.kernel.org
To: linux-tip-commits@vger.kernel.org
Subject: [tip: x86/urgent] x86/purgatory: Change compiler flags from
 -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors
Cc: Vaibhav Rustagi <vaibhavrustagi@google.com>,
 Andreas Smas <andreas@lonelycoder.com>, Steve Wahl <steve.wahl@hpe.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Borislav Petkov <bp@alien8.de>,
 "H. Peter Anvin" <hpa@zytor.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner <tglx@linutronix.de>,
 clang-built-linux@googlegroups.com, dimitri.sivanich@hpe.com,
 mike.travis@hpe.com, russ.anderson@hpe.com, Ingo Molnar <mingo@kernel.org>,
 linux-kernel@vger.kernel.org
In-Reply-To: <20190905202346.GA26595@swahl-linux>
References: <20190905202346.GA26595@swahl-linux>
MIME-Version: 1.0
Message-ID: <156779614439.24167.3539003390891394057.tip-bot2@tip-bot2>
X-Mailer: tip-git-log-daemon
Robot-ID: <tip-bot2.linutronix.de>
Robot-Unsubscribe: Contact <mailto:tglx@linutronix.de> to get blacklisted from these emails
Precedence: list
Content-Type: text/plain; charset="UTF-8"
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required,  ALL_TRUSTED=-1,SHORTCIRCUIT=-0.0001
X-Original-Sender: tip-bot2@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tip-bot2@linutronix.de
 designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
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

The following commit has been merged into the x86/urgent branch of tip:

Commit-ID:     e16c2983fba0fa6763e43ad10916be35e3d8dc05
Gitweb:        https://git.kernel.org/tip/e16c2983fba0fa6763e43ad10916be35e3d8dc05
Author:        Steve Wahl <steve.wahl@hpe.com>
AuthorDate:    Thu, 05 Sep 2019 15:23:46 -05:00
Committer:     Ingo Molnar <mingo@kernel.org>
CommitterDate: Fri, 06 Sep 2019 09:50:56 +02:00

x86/purgatory: Change compiler flags from -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors

The last change to this Makefile caused relocation errors when loading
a kdump kernel.  Restore -mcmodel=large (not -mcmodel=kernel),
-ffreestanding, and -fno-zero-initialized-bsss, without reverting to
the former practice of resetting KBUILD_CFLAGS.

Purgatory.ro is a standalone binary that is not linked against the
rest of the kernel.  Its image is copied into an array that is linked
to the kernel, and from there kexec relocates it wherever it desires.

With the previous change to compiler flags, the error "kexec: Overflow
in relocation type 11 value 0x11fffd000" was encountered when trying
to load the crash kernel.  This is from kexec code trying to relocate
the purgatory.ro object.

>From the error message, relocation type 11 is R_X86_64_32S.  The
x86_64 ABI says:

  "The R_X86_64_32 and R_X86_64_32S relocations truncate the
   computed value to 32-bits.  The linker must verify that the
   generated value for the R_X86_64_32 (R_X86_64_32S) relocation
   zero-extends (sign-extends) to the original 64-bit value."

This type of relocation doesn't work when kexec chooses to place the
purgatory binary in memory that is not reachable with 32 bit
addresses.

The compiler flag -mcmodel=kernel allows those type of relocations to
be emitted, so revert to using -mcmodel=large as was done before.

Also restore the -ffreestanding and -fno-zero-initialized-bss flags
because they are appropriate for a stand alone piece of object code
which doesn't explicitly zero the bss, and one other report has said
undefined symbols are encountered without -ffreestanding.

These identical compiler flag changes need to happen for every object
that becomes part of the purgatory.ro object, so gather them together
first into PURGATORY_CFLAGS_REMOVE and PURGATORY_CFLAGS, and then
apply them to each of the objects that have C source.  Do not apply
any of these flags to kexec-purgatory.o, which is not part of the
standalone object but part of the kernel proper.

Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Tested-by: Andreas Smas <andreas@lonelycoder.com>
Signed-off-by: Steve Wahl <steve.wahl@hpe.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: H. Peter Anvin <hpa@zytor.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: None
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: clang-built-linux@googlegroups.com
Cc: dimitri.sivanich@hpe.com
Cc: mike.travis@hpe.com
Cc: russ.anderson@hpe.com
Fixes: b059f801a937 ("x86/purgatory: Use CFLAGS_REMOVE rather than reset KBUILD_CFLAGS")
Link: https://lkml.kernel.org/r/20190905202346.GA26595@swahl-linux
Signed-off-by: Ingo Molnar <mingo@kernel.org>
---
 arch/x86/purgatory/Makefile | 35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 8901a1f..10fb42d 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -18,37 +18,40 @@ targets += purgatory.ro
 KASAN_SANITIZE	:= n
 KCOV_INSTRUMENT := n
 
+# These are adjustments to the compiler flags used for objects that
+# make up the standalone purgatory.ro
+
+PURGATORY_CFLAGS_REMOVE := -mcmodel=kernel
+PURGATORY_CFLAGS := -mcmodel=large -ffreestanding -fno-zero-initialized-in-bss
+
 # Default KBUILD_CFLAGS can have -pg option set when FTRACE is enabled. That
 # in turn leaves some undefined symbols like __fentry__ in purgatory and not
 # sure how to relocate those.
 ifdef CONFIG_FUNCTION_TRACER
-CFLAGS_REMOVE_sha256.o		+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_purgatory.o	+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_string.o		+= $(CC_FLAGS_FTRACE)
-CFLAGS_REMOVE_kexec-purgatory.o	+= $(CC_FLAGS_FTRACE)
+PURGATORY_CFLAGS_REMOVE		+= $(CC_FLAGS_FTRACE)
 endif
 
 ifdef CONFIG_STACKPROTECTOR
-CFLAGS_REMOVE_sha256.o		+= -fstack-protector
-CFLAGS_REMOVE_purgatory.o	+= -fstack-protector
-CFLAGS_REMOVE_string.o		+= -fstack-protector
-CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector
+PURGATORY_CFLAGS_REMOVE		+= -fstack-protector
 endif
 
 ifdef CONFIG_STACKPROTECTOR_STRONG
-CFLAGS_REMOVE_sha256.o		+= -fstack-protector-strong
-CFLAGS_REMOVE_purgatory.o	+= -fstack-protector-strong
-CFLAGS_REMOVE_string.o		+= -fstack-protector-strong
-CFLAGS_REMOVE_kexec-purgatory.o	+= -fstack-protector-strong
+PURGATORY_CFLAGS_REMOVE		+= -fstack-protector-strong
 endif
 
 ifdef CONFIG_RETPOLINE
-CFLAGS_REMOVE_sha256.o		+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_purgatory.o	+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_string.o		+= $(RETPOLINE_CFLAGS)
-CFLAGS_REMOVE_kexec-purgatory.o	+= $(RETPOLINE_CFLAGS)
+PURGATORY_CFLAGS_REMOVE		+= $(RETPOLINE_CFLAGS)
 endif
 
+CFLAGS_REMOVE_purgatory.o	+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_purgatory.o		+= $(PURGATORY_CFLAGS)
+
+CFLAGS_REMOVE_sha256.o		+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_sha256.o			+= $(PURGATORY_CFLAGS)
+
+CFLAGS_REMOVE_string.o		+= $(PURGATORY_CFLAGS_REMOVE)
+CFLAGS_string.o			+= $(PURGATORY_CFLAGS)
+
 $(obj)/purgatory.ro: $(PURGATORY_OBJS) FORCE
 		$(call if_changed,ld)
 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156779614439.24167.3539003390891394057.tip-bot2%40tip-bot2.
