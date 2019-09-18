Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBDU3Q7WAKGQE7LZYUOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 22753B5C2E
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Sep 2019 08:24:16 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id b12sf3598920pgm.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 23:24:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568787854; cv=pass;
        d=google.com; s=arc-20160816;
        b=p1JiLCuJJLJ2TSk9N42YIOblZVK0dqy0aB6mwdMyZlF9l94TX2WLl7Awz7Pe0afkym
         VFNl4AlDJj/+kh0j1v9JiJTW474+s9tbwBEZPguV1Aqvgp2xHzd9z1GXJoo6m1Cd95fV
         61KLbTtXve+VFnn32E90kMSk10uWnPEH2xY311h7u8np30f6dnKPestKbX63DQd5zj9g
         FqF+jOAgcah2DuKVi8wE+6A/4SZrh2WD5Y2cga9sz1ki2REAon8oYISh180T0VecZ3Z+
         IlcHuy2OVfPqE35aadUmzkSplBYyzDrHMJR/PX9tLGd2TcowzQwkeeJXzjQwVQFrKIDQ
         RYpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=fWUrQVB3KnIVpIj8HYEQYeOCDtLbJJ6IjkPuFUbcevU=;
        b=gQdyqGmkPXGTDvN/zftdrfZwo7z5WPegwvHU0xb6YSxw5S2TxM6s5Z8Wt2+fZKxzks
         +TQSj7XYr+EbxkwyiMaiJSUb951G0NKGbuwhRjZb8R+X1YibDjH/Ha+h78m7dW9h0Ax/
         HWhrXSuEIh85SGTWKH4C0CThwAflRSh7Ooqcfn4+fm9h++zdUWzviDayvP25+Q69Ku7M
         gLUVc2iuay9x+xQgIMFksNNryh/tURiOUzN4EwMBJG4/XdpR7St3X55gPgdCpTUcK6qk
         jm9rKAUvdUN9ddmUEDpzR0T+9X6z3vmOdRvwhdlIwj+0pBK9tMhapRo2aDWvazm6zQ3s
         O2kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jcs8oGyv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fWUrQVB3KnIVpIj8HYEQYeOCDtLbJJ6IjkPuFUbcevU=;
        b=i6SG0xQYSP3VdaDcVmOxhnOY7VQWdkn/R2wODCoOlXZ3U0SkKEN5Sl9Ro/frEuCVhD
         PBhMG6YFtzTnspKwmJVxPgd7xWnPTcDfhRkBfuzo1WpsDqzSxU9P0jP0h6Q/ykXTnj2O
         t3iWV6/pSe0jssU2mAkklNoIEF5gD8bZkA/vM00nMyaZOgPFqSXQAitIB6E7dqQeGdbd
         0gc+wH4f8Tduk5OiAGcEESX4g3iohtIHkmmHiw/vHoKBvpN1NdMG1+Cpwuh17SnBl4z4
         TJsI9S160wC+5HN+5a6Ve93ez14Bk99gPZ90Soxq12a/zsXZPCukGOdGuWFkUcPCD40U
         mKNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fWUrQVB3KnIVpIj8HYEQYeOCDtLbJJ6IjkPuFUbcevU=;
        b=hEnDgXoxseYoMKPWEKIfL+BJ2PlUxVRDbNvZInKm33FnSLZmlFbsXmWnd0zUVmEULm
         DJHu7zVodHPwrLoUEf6cEv9xiAcPb+5jWSR3dOUYhihI4lO25I7jWF5DvZTteMuJinU4
         J1Hty815jwtXa1uK18/kijOOCLNsGVltXT1ikmLke4vG/4KAd1Kmflsb5xuQXQD/mvgz
         9dpiznCHcwTfvCe3YG9At3YTnerG9vym38w9aaMtAbSk9ALB8jXRMWKezvTxE8VSpuAm
         NaW7uheGT+J3eObutWSX02prkN/fvqC4bv2RnqCW6VZYXafLXTwZxbd6djrgqOBlsqgr
         qXBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUKC1/trT7rQFeoG+4wHNX/T2GRAbgA5W7uGTnTpaAkWXts/P/x
	7JQlhNFepB0Eb5whUb1o74c=
X-Google-Smtp-Source: APXvYqwUqb/J1eDH/w1zJAIFa4uOPO9o14bknf9JpUcn2fld8lLGtQ9KhzSAXwcEsPPNo8cJIlJFHA==
X-Received: by 2002:a17:90a:8087:: with SMTP id c7mr2094837pjn.59.1568787854248;
        Tue, 17 Sep 2019 23:24:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:5844:: with SMTP id m65ls1501242pfb.11.gmail; Tue, 17
 Sep 2019 23:24:13 -0700 (PDT)
X-Received: by 2002:a62:1658:: with SMTP id 85mr2411722pfw.195.1568787853765;
        Tue, 17 Sep 2019 23:24:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568787853; cv=none;
        d=google.com; s=arc-20160816;
        b=HmEXZSgAC+uCF1jXRU7SaFgu7KWug2EMH2PuztAxxhtujyDA3SmhT+TSIM6qyFOoTR
         WarEwIwt/YtHRmGBbzmhBnYSyOecxeS0MuTeBgnY7vZQxu2oMmfW+w8+2lGOMRuWpa8W
         8pn39/B6leaWbm+T8GEZI6407EPGzLLPT7rq1ZtFR9dp+jPvAIlLk4i7yu8h07NfeQZt
         i/3/NN0ePYMflSL8ENvpQGeuvQZ4CUZdY+G/mypw70mxsMaq1zxoQ0ghm2wWH3vCi8vk
         Dv5AK3GmAr/xjVeRhfvdnlqNhAxGhK2u3UygSXrgse4MiV+er0ptoLyCFQsnH9M8CrZo
         hdyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=3F9Pyf938JJtYd+ARg1YadYvF6UUMTdoKwtwKWHCjA0=;
        b=IDENU4usgxWoNUlryFCVCO1ZpILxGQ/xA3vDToEkiLKa5KWynfNRawXBPd2Adlhc1V
         lytw3FQojaSayaABuPehl4k70sYOTzdIV/U4gbJkNH3UMT/8IfjJpU8MM0IiY6dIaI0Z
         QrP1tJbGqI2NHrWjIL36v1ZLKTOVWwhdU9svuH6rj9tgyDFD9iwUHgiAXwI/QnvlW+KY
         x6s4MJeo+N7YswEBy55T4MESaB/PTBEbP/x2PuW9jj9lGYzUr4SWKVYvFsOslEPRjAQd
         sDgVpITwt7SYbcFkYXtpvukQJ3o9k0rjJe5VrZUlf/Z1QdchBDFVJaF8BSg+gVMFKERU
         nr1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Jcs8oGyv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j12si545078pfr.5.2019.09.17.23.24.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Sep 2019 23:24:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D972321928;
	Wed, 18 Sep 2019 06:24:12 +0000 (UTC)
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
Subject: [PATCH 4.19 25/50] x86/purgatory: Change compiler flags from -mcmodel=kernel to -mcmodel=large to fix kexec relocation errors
Date: Wed, 18 Sep 2019 08:19:08 +0200
Message-Id: <20190918061225.707967704@linuxfoundation.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190918061223.116178343@linuxfoundation.org>
References: <20190918061223.116178343@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Jcs8oGyv;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190918061225.707967704%40linuxfoundation.org.
