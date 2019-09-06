Return-Path: <clang-built-linux+bncBAABBMWXZLVQKGQE47TKDIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-f55.google.com (mail-ed1-f55.google.com [209.85.208.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 682B7ABFE9
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Sep 2019 20:55:46 +0200 (CEST)
Received: by mail-ed1-f55.google.com with SMTP id v17sf4110528edy.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Sep 2019 11:55:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567796146; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nez/8jbRTiPM5J3Vs+RLdAqAcshydb2n55YOIqAWO9QVLrkvdhcknss+f1x790V4jM
         f5FftGRAcR4j+UKW3Y6x7tNaGKRovmfZVtw9f4G8bzPe3Xfo+6uuruH9PR7BnolQ1gZN
         /7Kll9uBYHE+KufyFRzECIQeebtfP3NX6Fk/MOtpKtFBk93GOPnPhu6x2HMQGWyFvVOf
         jgfBZ/JfS1D2zCS9BpOqskDLoY5PS9QdUZB+bwgrlJysTNXNUovFQrsGjYPA7vKtYL2e
         vx3l+lLRTADCUgoBuOjJVyviXiktH1gYrRn7eWhNSZD/iP2jvXDaL+lVsBqfAdx8xbTE
         a6nA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=EkP7NetglT0OifBbjkhMttdOFUJMCrAPLNN8jAlXhcE=;
        b=f4/ooNjFGmbxBbqc2V4Z8nxhcyAKev+NgHsIJZFNXQqzOU6WV5ox+sChWRc8M61JNf
         pG4BAMt5kt48nP8yrKnMsCuINqvi/H2ZegQs3+dckJZ60aXwFRGCs95tljFsTGAJHcQd
         qwoIFM+eLXgCMIeHKAms5FG3HtsHN+hShawkQC/MSGuhrw+oY6B+Joa+SzZLBgavizlP
         JWwQFwcfTR2rafISscxpAYgbD8Dt3bh4xycTd+hKlNga37AXNkUwTI3Q8uWoF+K08Rrd
         i3RJySxEcuXtjtBLubAKKg5I6fkFmN6lCy+Oly4psohg+0JkkoO2aYaBR40Dgf7r1ocE
         zfqA==
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
        bh=EkP7NetglT0OifBbjkhMttdOFUJMCrAPLNN8jAlXhcE=;
        b=rZCzs1TE6ipejcYfn0p+QjQYNoy7156e1JyX7WJPz5zupMssp9e/+dftagg2IMdPMs
         Ie5TvtbtCL2iCilrCDD0kl9cOKoFrCLn7t55j2v3tAtrmy09/K2hWBhxjD++mY6NkVlO
         /fb3DiNNRCzIXjqDhYUgXbOqZJjhF0/DEgWeGXDMFIUZ6dG1zINBi3vaP88pPofMOXA1
         CRPdqofzJJdc8rBU1dfJlnX6nBD65lif9dzFaSQvah/1nzkw2ofLD4BPqSToo0mRW+F1
         sfvF8Caji2R3TZ1gsUkFsj0WYlJ74HeQ8Q/m2Xx6e3rizjr+xMueagi1oc0CzY9p6NFz
         QB1w==
X-Gm-Message-State: APjAAAUIgVjM4Cmt+tINnQkzcdRj3q5Q33KgMuu1BoKrHMH791JkHHa7
	YHU8Izgpwz1cG+aIflzv+e4=
X-Google-Smtp-Source: APXvYqxcFvQgkgEL9yWXV3oiJkANJZtOFGH0VIWzqAuwtEZ++lUVQ4mLFORHhfEoJpGm7Jr19+9orQ==
X-Received: by 2002:aa7:da18:: with SMTP id r24mr11611864eds.37.1567796146161;
        Fri, 06 Sep 2019 11:55:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:f413:: with SMTP id r19ls1850688edm.2.gmail; Fri, 06 Sep
 2019 11:55:45 -0700 (PDT)
X-Received: by 2002:a50:c3cb:: with SMTP id i11mr11352323edf.98.1567796145887;
        Fri, 06 Sep 2019 11:55:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567796145; cv=none;
        d=google.com; s=arc-20160816;
        b=tI9PRYzNU08p9gjTxKEM1Dv2l3ATt+VsjU55R4j2Yg3aiV2KEb0/7YGjtltNLBUIVc
         8kcmJPEi8CicwPCnt8SkjN612bRTU14etor28hJMhNnKK9zlgJYoYcgBakl4PrwQZNKk
         vo56YF105cJFT3Vw1qZtuQBCKGXF+lYWPOqtoBkXq5HhlQEKo7d0TxfykRXEV3nNp/my
         eM1+eftIMtKQVSa2cmoKvsZjoPOVsPaJU6oXAvDs4sikewPFVIevxpjskfen/R5TOBO0
         UkvDqqxrnxzgWjXV3g76uLClMSLqspLyEZcAlrBqUoXLW23/Tg09zK3yVQmoIPrg+C9E
         7OPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:precedence:robot-unsubscribe:robot-id
         :message-id:mime-version:references:in-reply-to:cc:subject:to
         :reply-to:sender:from:date;
        bh=6q4iz2KhNuUMxhl1R7WmXAZn1Sk3dlbeQUMwRnZv74M=;
        b=ltUX0XMNm2aOWYfU+QzJOvpmGvPyJW/7nB5HevVjIW3z5+OLuIUl5I45oOnoP7uw1J
         P7ebrKxA4VG8RXxyweZB1UHmrnkqhFPItPspVpNCOYQPHSLR4syq5CaRWb98ELA/aqy3
         tuElPtEP3iCuFzx82sv3RBkKG3MYcOrA2/+3e4MyGpYA/s0PTIsd0WJZHHmopamhpO9S
         9uECePfEDACn//ZcwalO1eLgasHwfIxZzfcdibizw72YzJRI57R+ZaRQ5zEV3kJ9rgE7
         70m27SUtXAQbiBOEcp2Lnr6scDNKu95VIPYbFd7jmL7DkjrpalIrhR3sHlUKyCoSVSwq
         Sozg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tip-bot2@linutronix.de
Received: from Galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y8si360421edp.3.2019.09.06.11.55.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 06 Sep 2019 11:55:45 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tip-bot2@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Received: from [5.158.153.53] (helo=tip-bot2.lab.linutronix.de)
	by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
	(Exim 4.80)
	(envelope-from <tip-bot2@linutronix.de>)
	id 1i6JOW-0000DR-6e; Fri, 06 Sep 2019 20:55:40 +0200
Received: from [127.0.1.1] (localhost [IPv6:::1])
	by tip-bot2.lab.linutronix.de (Postfix) with ESMTP id 70BF61C0744;
	Fri,  6 Sep 2019 20:55:39 +0200 (CEST)
Date: Fri, 06 Sep 2019 18:55:39 -0000
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
Message-ID: <156779613930.24167.1219380492780490078.tip-bot2@tip-bot2>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156779613930.24167.1219380492780490078.tip-bot2%40tip-bot2.
