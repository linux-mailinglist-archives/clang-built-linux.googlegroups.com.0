Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBAWD77VQKGQEVAD3NJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E9842B4118
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 21:24:51 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id b204sf575752pfb.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:24:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568661890; cv=pass;
        d=google.com; s=arc-20160816;
        b=G1K1WIk/Sb2TG/l45PCO6iJulKJ+/j0HebVceKiTs11bnB2JlXarLv3NwTkseHnO7u
         CIV/GIdpQy88bZZ1wPC3ZNrHfZFraw8LDzrZT6Eh9r4zQlLrOwld6nYMFcBIC3xCLR32
         gwH7+ivt/USLioGRMSBAWNTvCt5t/F3/d+jRZ4IUdMPl7PB8ZtJZ2ZHSBs24JMOjsEBG
         IMquw2pTIyfTJikth03hH4DB3PDjHT9NDGfp4RvMa34oG31Scbw6yE67OYGqZykAcGZc
         tqtDJHEyPIMCFL4G95V4jw5ZGOlq+/9hbabNhZyOH2yB07xv05pqZ1JnlHG780OKhj9l
         Wh7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=8UtEvs/UKwRx2DBefbiPVqOkV55B7PmsI+7iuTw4cSc=;
        b=AalnWN9q3eoB3aRLb2z6UwJm/SmUn2JqICsTemhshHLrWzatpfJ70e2XNd1U1Aa4eV
         XxofQd+Xxnk7FSCWMYRXGAhmoC4vHHcYdEJAfEPtolZLz66p1Cr3Fe2P8u74Xf/BFiOJ
         gDv/iVNHXUURgg9KS6aocgN6wYZuGmKLOrVrgc+1b/67kuq5fYq4z9woS+1aXVGKXlwz
         5A6UJBwDgymtjzh3BIlOMLrKCsIO44xdz/wbsdUK3oIuNcUTOeqsTRlfIrJtUbGJAF0d
         3X/L4e1bLMIkHG1rjo1cvVJw8bLw/VqhbQzm5sTOk0sQv9JLkPICTtZUzHMaDOGPGf1B
         FpZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="B0/iMuEe";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8UtEvs/UKwRx2DBefbiPVqOkV55B7PmsI+7iuTw4cSc=;
        b=LjRd9ObhqMDdHD3cp3QGcsapstQAbSorS/XXHiTyFs1tSFAM8xW5lWpMjYUG3sy+Lo
         ONYlzoCKm7hN4CW+U3CMd4YaVXIvv+pT4RjlnNhH5dq9FBmHUpDDsqnfgL6VS5WtxbRu
         Cr5gUxyevyXRTMf0pbrTc0OqPp5bzjws+uDSez58WPZxPYNFbxT8ouetO/8auEaz8oTd
         UqvdcJhlaZhYPogMSvqFGPZt5K1pX4Sjh/OV3pghJm082O9AZ6+lB4BK67NCaf244g2C
         LGFkmB0IpLGD6m9EW1yLvle9I+2iLX118Yi8SUuY0xS6MPmROeaq0QTeZv09n4N8mnpV
         dnoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8UtEvs/UKwRx2DBefbiPVqOkV55B7PmsI+7iuTw4cSc=;
        b=LNk3QMP9sX8JJ39nfXRKC80kNH7ntdlbo4i/YIGTXFEaWZ83YEN+HlG9rkXKgRfihq
         A5oh6YYPTGcDFF/PQV47evQXdt65sOsQ0yMO3Kzck2it7lWG2TKesBBAPBOGyKilMC/p
         4EIoUoQ+0yJ/aIm5gULQYVcCx10+VNlv8PSwM6mORvhGMrukE815gWqTN/SOOueVr42R
         8riWpOuxDgwduReJaA+FcASkcT+Z4eZdVXODksTtO4Ae063aQIdx8r5P+DmvevvTweUa
         CBirfshZq6yOjivuCHYeIpGjXIdk/WcpZnjsCgR5+GX6/OVafrftlco2FKKtNdlTAjEn
         zNng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW0/BR+S3Th0/ou9owmXeRl2Ed61hV5KeBNZbGULg+NA2GV8DMK
	PejjSZ19TZAuvnG5LRIQjHY=
X-Google-Smtp-Source: APXvYqxKvKfrbNIdol/djnaU/X8dU8vRfmzGwzGrYKdNjg2jPf3MxMIU4sEofZ6XwJWWtP/UFpIuEg==
X-Received: by 2002:a65:4141:: with SMTP id x1mr712581pgp.213.1568661890366;
        Mon, 16 Sep 2019 12:24:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab81:: with SMTP id f1ls173061plr.0.gmail; Mon, 16
 Sep 2019 12:24:50 -0700 (PDT)
X-Received: by 2002:a17:90a:9503:: with SMTP id t3mr835330pjo.81.1568661890057;
        Mon, 16 Sep 2019 12:24:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568661890; cv=none;
        d=google.com; s=arc-20160816;
        b=JX0VHCq0VXnS+n25bFXiNW7ByidChCv+kI4AUXKzFlty4laytYffL0uEiNd+SykRa2
         PadRhPPzWQgF1XgsibbI8vB/40mfR345CfXpUDa1/dQCIebxnz6Rvr1Lbb1uZo5OuBnM
         FrvUnjQNgHkChw6GJbIs6IPXwrHs+YQvnAK3sHV+SK0yAgVVzK56JhnamsEIrpT188o2
         0QKaBk+IcKny1GLcjuuw4fyRc0eNT3R1x7JoGx7zGZm1s1PwF7dVsTvTXj4wfkURZRFk
         wepsTb4tcEFPV11CiUqeG5qgWFBHPG+IbGHuchQlgqsltH9DHuvHoX4PQOLz1NaA3qrK
         xICg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=UJgy38sSwHvMeOVwXooJNx+kY9ya57TmItJqYpyN9ds=;
        b=LiQZUUlITKy8xr2yw1ldnt7s4+GnhPX6H0WbCSZpNjVA0AcfIrjZx+Zmb2gfGCjXcu
         gffAtb+VhaIUCduFVObpcl0b2A5TKhE72ncYvObi3lVnmVIGRyGJ1S5XyysZ5A9p3Vh3
         xvJ9wN8oMjb+jT7I5QaeXgPU73nwYSZE0kuH+3YeUmwLr3SDMD33An4FxgrCJhkSbMcv
         zkLVmvTlBIEhOZtiYLouj37ahwfXJUdxaX+vGj+ykk5vsTEdMo4BMSw38oJ+zUgkFwoK
         ae/pPqoACxAoL4pHUbiteiJv9h1DvrQ9G3rKxKuN30VDzThS4T1U3npjUhshXmDzfo9/
         Xf6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="B0/iMuEe";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w4si13230pjn.2.2019.09.16.12.24.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Sep 2019 12:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4643D20665;
	Mon, 16 Sep 2019 19:24:49 +0000 (UTC)
Subject: Patch "x86/purgatory: Change compiler flags from -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors" has been added to the 4.19-stable tree
To: andreas@lonelycoder.com,bp@alien8.de,clang-built-linux@googlegroups.com,dimitri.sivanich@hpe.com,gregkh@linuxfoundation.org,hpa@zytor.com,mike.travis@hpe.com,mingo@kernel.org,ndesaulniers@google.com,peterz@infradead.org,russ.anderson@hpe.com,steve.wahl@hpe.com,tglx@linutronix.de,torvalds@linux-foundation.org,vaibhavrustagi@google.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 16 Sep 2019 21:24:47 +0200
Message-ID: <156866188774242@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="B0/iMuEe";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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


This is a note to let you know that I've just added the patch titled

    x86/purgatory: Change compiler flags from -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     x86-purgatory-change-compiler-flags-from-mcmodel-kernel-to-mcmodel-large-to-fix-kexec-relocation-errors.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From e16c2983fba0fa6763e43ad10916be35e3d8dc05 Mon Sep 17 00:00:00 2001
From: Steve Wahl <steve.wahl@hpe.com>
Date: Thu, 5 Sep 2019 15:23:46 -0500
Subject: x86/purgatory: Change compiler flags from -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors

From: Steve Wahl <steve.wahl@hpe.com>

commit e16c2983fba0fa6763e43ad10916be35e3d8dc05 upstream.

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

From the error message, relocation type 11 is R_X86_64_32S.  The
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
Cc: Andreas Smas <andreas@lonelycoder.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/x86/purgatory/Makefile |   35 +++++++++++++++++++----------------
 1 file changed, 19 insertions(+), 16 deletions(-)

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
 


Patches currently in stable-queue which might be from steve.wahl@hpe.com are

queue-4.19/x86-purgatory-change-compiler-flags-from-mcmodel-kernel-to-mcmodel-large-to-fix-kexec-relocation-errors.patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156866188774242%40kroah.com.
