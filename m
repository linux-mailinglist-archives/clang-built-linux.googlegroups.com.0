Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBFWD77VQKGQEVE7S6DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DD2C0B4119
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 21:25:13 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id p83sf835009ybg.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:25:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568661911; cv=pass;
        d=google.com; s=arc-20160816;
        b=wkCWpY7dnpMGv+gpx/7/boqAAvVEnG+c8dDKbCbXkfBYIiorsdeVNKEzGmnTpV/yJw
         DXbdoO24B9VqK4VLf/7eceYkfbDMBqxYufC0Vv8zZa4779ghY3W/ZyoNZfbJfZhNPIy2
         WxiZ6PRapvjQW6ojQHRgMBp32Y/Lbz6clJnGbvGLybEVAxg2bTxLI55qTh73HMl9k7xd
         nzn8cGO6RzGnSb4fNgUjbvxsqtNrr1ZC3fwVyuuHD5zQv0fRmrDNvkkFko6U0n1nfgJQ
         sPz6s+qO2FFolv/PnAUwJ7jtd32vGeHcPTH7tOMtYTg8HG0TzEziSDMNdVQ0/8klJzST
         jV4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date:from
         :cc:to:subject:sender:dkim-signature;
        bh=hN8GdECqn2OA1FJBY4XMsGT6qzACg1SdI3szaHADtbU=;
        b=PMbIm3/YdebO9+6d0mXkirh4r9iqG7+9qRVxEmW5iAjBH8ufH6aGtoad6GQyFwPbNz
         ZvT6SrX8dDa1Xd/gcOanC3avI7Ljq1djaPZ8kMzRStbLsNlw4l7/DK81JgKkA++vhP24
         8XnzDYS9o+31bS7OxZsAhnd01scKwhbAxEXOF0uuHvGMk4Ile5Y8Sh2mLH3F3GCYISAq
         7Y7SYgmDraNi9gkvzKZ1/BPQy6XaifP5JCepRMh5irIUKZ/72OSTk1tnSgwedYiYc3pn
         wXDciV/nULA9StUNyA0DThSsU+pVbnhacHe6NkaMD0WZz2xr3uiRWfRRFkkPxqUbBNHZ
         KP3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="IK/ctJ/3";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:from:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hN8GdECqn2OA1FJBY4XMsGT6qzACg1SdI3szaHADtbU=;
        b=Zk7iJhmdRdmzpzI7u6/zt+/3G5070DVssuod8Lmt4cyv1EIcaogVhAPt3o40z/18ZU
         nvrhtkhiETkhfV/+R37uDIZLlh2oTo2ZZaaglQe/Pd31KULnnVCePuiml9NMUuxb9HVo
         Orq2nN9iYqrkpyWGAxbRKXg/3v42nq9R2jQlxUVsljwe155eYH62oHN8UzpGgVbDXSsi
         9ROGOZvqy0xp0xyWYEHBW2E7BNScB16Y6FUeK+Ua6xykKPt3asHrGrA46x+SkY3wKdV2
         xOm4L0b8ym9d/89z2Q/kMVCk3x5fmPECvHizKQt8UuxnPqLwgvUNKZRdH0lq1QdT3hZ0
         olZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:from:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hN8GdECqn2OA1FJBY4XMsGT6qzACg1SdI3szaHADtbU=;
        b=P68Xc79FYXNy+gdtwDsDDc9wJVPKSEAE2nKkjBCrru0hFmodTWPF2Fs/ZMm9gehiDI
         SRLMmi3LxCZb8YAY48O2Dd1kdWWpP+1Z6tI97I5IE5H7RPzOnjBiyqRDVdlSG93VcPJ7
         3N43FTIfD0zETQt4XJkYl1u8cWeW6S+6ZV5DIo0QWd/p+6uSfcuJzIw0saBe4m0QOqkQ
         UEpVGZ2y2XHcr0xntF9aUubh891+lPKOs95x87Q9BbjEX+HoH/Uv+27fSbXzTuiSpC3P
         XLMdjPixOhc/ZymmrXjSsoMLU/Imc195UA+o9KP9kpFcMB/cuh8LsU5NW8OCNYISaOaJ
         Y+sA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXrjKHj+TYaBsGQGm00a5HgknCJEBp8CpftSCa+g8S3gGYgTGGj
	/O71FwRV41mhrTvrawg1284=
X-Google-Smtp-Source: APXvYqzMgiIRHn3RM+KhGQ/UwVP4PC+7tALA+tUfWhxDrOU5b5O9pn+x2TUFyXAfHJB5B0Ig1rOCmQ==
X-Received: by 2002:a25:be0e:: with SMTP id h14mr670924ybk.159.1568661910812;
        Mon, 16 Sep 2019 12:25:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bc51:: with SMTP id d17ls175821ybk.13.gmail; Mon, 16 Sep
 2019 12:25:10 -0700 (PDT)
X-Received: by 2002:a25:7089:: with SMTP id l131mr730599ybc.110.1568661910381;
        Mon, 16 Sep 2019 12:25:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568661910; cv=none;
        d=google.com; s=arc-20160816;
        b=UfVSUsesLinbdfPAu2IVOeo3yl/8K0bp9XLCMfQXW3qjv7gT7Jg/EwQVPkpatHQo21
         +4SnPkqXwLS5jmD2Vr7+7MzLQcK7o5ejC5EAmuu32kHvzKKl2eyG26p87wkOJQO3mBfh
         /QnC9qxcXSSMvpP4dL6rgP6FO0QNm601UAhO7iGXa/Akfjp5hH9+HFBiDW2Hy30SG4fG
         G8XoWsu1nblgO4Bg71zBKrzd+reWpFAKagZxvBgyc53FXyhnrMVG5XWlH2ApcTKwx4s2
         WJbtnRmUS3vUC2wFrrnUn238laJwEhvn+XbJQZRlvPmvNCQhxVU+MrI1Ky1Qa7m9PPEb
         RqdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:from:cc:to
         :subject:dkim-signature;
        bh=JYoIYPDzvZay8W3mPuvg1BkWkbG7MwOl3Rz1GdIW/ro=;
        b=tueBgdX7HE+xc1BsEgL8XpSyhXuNYixw++sM6NiiwLtAk043Fl5gtlYU0PYTapE1RD
         73K7shnlKFKTjXxJNPZblDxo8ynNLJrAhiKt1C1Qh1Qn09+q/TK6aclNnoQ2GVAZaFmP
         KOQ1IEqQ9xOUHQTBQeZ3N8mHUNLbzzG3cYkmPex/D82KfNeNvrPapLlssnYMlNtaxkBQ
         zoIoNkuYZrnEMYvzVkNy/B89rky4TQqsw0X6pD0S/EQfYyq1GBcxx5Vc+kEZE7VLN7aW
         fkCjSwDog4keQMV60YiIWUC2Ba5Fy5DUFCCueQfihNP00G9huknuu8na6xiNSKL//5Gf
         95tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="IK/ctJ/3";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p140si77208ywg.4.2019.09.16.12.25.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Sep 2019 12:25:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EA65520665;
	Mon, 16 Sep 2019 19:25:08 +0000 (UTC)
Subject: Patch "x86/purgatory: Change compiler flags from -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors" has been added to the 5.2-stable tree
To: andreas@lonelycoder.com,bp@alien8.de,clang-built-linux@googlegroups.com,dimitri.sivanich@hpe.com,gregkh@linuxfoundation.org,hpa@zytor.com,mike.travis@hpe.com,mingo@kernel.org,ndesaulniers@google.com,peterz@infradead.org,russ.anderson@hpe.com,steve.wahl@hpe.com,tglx@linutronix.de,torvalds@linux-foundation.org,vaibhavrustagi@google.com
Cc: <stable-commits@vger.kernel.org>
From: <gregkh@linuxfoundation.org>
Date: Mon, 16 Sep 2019 21:25:06 +0200
Message-ID: <156866190619711@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: commit
X-Patchwork-Hint: ignore
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="IK/ctJ/3";       spf=pass
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

to the 5.2-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     x86-purgatory-change-compiler-flags-from-mcmodel-kernel-to-mcmodel-large-to-fix-kexec-relocation-errors.patch
and it can be found in the queue-5.2 subdirectory.

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

queue-5.2/x86-purgatory-change-compiler-flags-from-mcmodel-kernel-to-mcmodel-large-to-fix-kexec-relocation-errors.patch

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/156866190619711%40kroah.com.
