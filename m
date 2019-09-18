Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB543Q7WAKGQEECMN3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 22546B5C58
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 08:26:01 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id w126sf4138986pfd.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 23:26:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568787959; cv=pass;
        d=google.com; s=arc-20160816;
        b=0GJK5zJ5mFIhcCV1SKfEiMGkBIZxV8sKRp4ITteCD8NIkqMZiCEmCHt+fyzY2X8TVN
         5u/AN6ZkvxxfpP3cs/uI9JOfcGcTCj8hnvtb6nRWtGHeG4LSRsErntaFIrzZwYpwnWLZ
         NTXDzI86QFxeO96fKxBshWNt3bNXEforBBdrd79M1bEgwJm7j7Jl8LB1WWdOcL0Fmq8M
         yAmdJiVNsVpI1qN5ExqPuXEbOuNUixbY8hZneh8yw4pVMISfY5HutFjzsOja9AvY3re2
         VyUSl2ZkVvrONqLwQqfl6vOg0DgtNlfls/p7pBuhxM7OZVpZ3B0afOHFzCiv5EQt/qEW
         Yzcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=PlMECkWAqNiWWqY0QNVOogAtYJynObuWgboZ5SggUHQ=;
        b=QAB5Z9XOhQKtkHyT5t+9yx+h7ql61JEn8GwE06t4YDaIB/fANBgq9/ft4Q70SVRKt0
         e89Uo+LJSRxSFL9kCHfA8EfAX6hVuj59gGvc1ZMqe8JgKQ6nshpiZ0+afZKge1NfoUIN
         cYTEO2PcExB7Y8EewrQuwjO91XLiqMCTTydZIjWCfy0Ge2iOB1AC/iI4ZHScWMxeAirC
         a0+KX7VMtkUUX9ZgfWSB7wu4oP1eXsnMP/8m2Q1l56tpvaJtD75E7yVAFS/6Hqh7ECYc
         bbpm07dKp4r/rsxoqaCPG0Zy5LtXgcYk9tvkNvhPa0iSosUG4DnsCjOCYLHcU94d51kZ
         Aa0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XB6ZikA+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PlMECkWAqNiWWqY0QNVOogAtYJynObuWgboZ5SggUHQ=;
        b=gGrrRQKzJZiCOUIjTvgF5+P+N8MUkfIKpf9rK03OplfpaQ5oPKDIeFPZajdpK1zDZ9
         BA+HMQDkTzPrFmui87qQHLk9uvuMOgyOTOOUivIoT5EYVFEhGuElBUPpuEdZ6+O3EHwY
         IsIVd2e4qqGOOaYDec261ZHhqzLzQ//M4C8jfaJq8aapOQp2iM7m4mzietryEpbeyzYE
         Am/G9YuRcAQRN77UfJcoqUviG6xhnSG4y6Jth3zo9jW95L5DOGZCkUS4ZnkMMr/y/Ymc
         dqRd2CRwjZoAJChEJ4749Teb3+FmI1ytqI4KnK9Pig5sljWQw0fVkMdpLUR85uavZGxw
         cyKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PlMECkWAqNiWWqY0QNVOogAtYJynObuWgboZ5SggUHQ=;
        b=oypRT4VAvgLGX0ao7DUdw5jj/R9bGc8Nfj+loRZo/ydqUygVYzpg7tjx2PbFATEaRj
         scB60LbVhck4zos9Ews/qPzAdt7yUpQ930RAiGrOBXBztimbZyBXJiFF8toA22pNr6m0
         B/Se8JBeeA3hGGUnWSCR/+xXVRpOTU7gTz2AI+5L8tIGpGmOy2yLsztntNnzizDBpcu6
         IdH3MVEtmPc6KtChYDf8xmiGUBE2u2JVouqMRlni8xELcA9TyRCQ/r20+oqcXvT2PrAk
         ZcyU4uiwiAbzOEbKHbV1Dyp5ZZ421fO9aVy2WyHiyFYSuGVniTNfOJFFRQHnCu0HeHhZ
         i1Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlmlYkLGnAVBvXPnvhf7q/NnGioOdq1JJogOT4GNIB4fneqadq
	JwDFXQ3HRnehzrARAE+WvyY=
X-Google-Smtp-Source: APXvYqw/Z8CVH2dEtjq0ToWQOf8zcATy1hkY+mDJ9JbR2rH0q5HJOG/Aycv4rZCz3Y0ezfEDCN4xVg==
X-Received: by 2002:a17:90a:e50b:: with SMTP id t11mr2066228pjy.50.1568787959544;
        Tue, 17 Sep 2019 23:25:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:644a:: with SMTP id y71ls1503337pfb.9.gmail; Tue, 17 Sep
 2019 23:25:59 -0700 (PDT)
X-Received: by 2002:a65:4844:: with SMTP id i4mr2493639pgs.113.1568787959170;
        Tue, 17 Sep 2019 23:25:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568787959; cv=none;
        d=google.com; s=arc-20160816;
        b=KWENkWpmcwvpcm54D+Ffebr0D9j3fLE/Zajp8W3pfK7TlKqIH4kUAm6IfsKQ7dLzJK
         /ndH6semt2OYqJ4SvEAskNLkbksDJhf7PeE+ikISum0ney5FvCqU6aQgjR93M8Mbnf1i
         79vNTrgmviw1VYchmJ+U8DlIdqc5Zm/MD7XiAHOSrF8CxUlxTG8D8sRnQixJUw4yaieY
         OlKRHdxJGxB0A78sMfFc/BFxcgwU7plCwq9THEoopyzMTgdItHiQamDjNkqB3pxSOix6
         UWeVpFWvsmUwY9KkJOHh7jCj+JNj8F13E+niNPceavG0bY+TgdnyNjHzFwb6r8DgMnjD
         xYXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=3F9Pyf938JJtYd+ARg1YadYvF6UUMTdoKwtwKWHCjA0=;
        b=FILACvSObwtzFcz7DBMl4F0TCMNqiJsRYMPNURKoD9EYfQi2FRltfoFjNFj+ef/AQ9
         x2NJrXaYc6WM+4kAygOlvPS2+k5orGqdJ2fc8TN8ksVs1M06cC1l7NVd1KQrJ4YSjMcp
         s4yfunRf1BauMsLk6lEN5O6fVr2shE2uJ/c7kCNZHlNZiPKq+qqtVYu4Nra1ztpzGg6s
         BvpHs+i+vhA/8HJ5To4EJnxloP2u/rATATZrlk94YrIUWMDnBMtKHq4abFUEZ/JuibPa
         qNiufVe88L0xMgsG9SZExvw8+RSgEZYaIrklMRStOIm5ohqVPJb9e/pmuk6Ss7cq9VLY
         L27w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XB6ZikA+;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q2si459324pgq.3.2019.09.17.23.25.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 23:25:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6489A20644;
	Wed, 18 Sep 2019 06:25:58 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Vaibhav Rustagi <vaibhavrustagi@google.com>,
	Andreas Smas <andreas@lonelycoder.com>,
	Steve Wahl <steve.wahl@hpe.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	clang-built-linux@googlegroups.com,
	dimitri.sivanich@hpe.com,
	mike.travis@hpe.com,
	russ.anderson@hpe.com,
	Ingo Molnar <mingo@kernel.org>
Subject: [PATCH 5.2 48/85] x86/purgatory: Change compiler flags from -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors
Date: Wed, 18 Sep 2019 08:19:06 +0200
Message-Id: <20190918061235.646618432@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190918061234.107708857@linuxfoundation.org>
References: <20190918061234.107708857@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XB6ZikA+;       spf=pass
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
 


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918061235.646618432%40linuxfoundation.org.
