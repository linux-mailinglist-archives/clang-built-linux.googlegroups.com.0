Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKFRS37AKGQEDSZAIZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id F27022C9474
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 02:13:13 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id e11sf8845867qvu.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 17:13:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606785192; cv=pass;
        d=google.com; s=arc-20160816;
        b=xnVD/zeTjQn10XD9kRfksCo+Wz6D3nfzB/BFd9fCGXs2VC6yKFiV/cMnj3do3/JWoY
         CaHbqH5OA9AiWa1K1mPucM0ZWGn/XjV68GQsRyLgppiJMtkPjXYUrnGbrQDotZx12iA6
         Jha6wYku9uhjXOmQ/I7JR3i56Nvykil+Av1nxCOSLosZTisXMyNUirlao3GN0PulbN0q
         pxF7ZfNeWzaWnFaOEwIjssLZ0fVOZc9GEO05BHm6CmRFShH77YExbyXnxgEXi4IDsliQ
         bIJzYIb7yy/RqUEBQscCF1tkDZBimIeisDPtMuLKxujRMJ82Af0id4EZfh9xoKEUlXoJ
         zLkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=Gr485RVG2TzTetsRAe1YIeetpKZF4+XBGl1YdQPPcOo=;
        b=yWpABm2EkHmT7vrD25GeH/FvLZNk204tdSZKV+kyEFIVgGtCBbzawP6EMEGRZetIDT
         +oCETzgNCcYo8wigO/8h2xsoZK8XjN0UulQKZLZtl2JdTR+85Fdqwm1j8EQbr2zuA0GY
         JNzAPM9ETihXCJncCjax5Xqvo15HmmbCUBDU8ttAIxyX8l/+t6GyxPBUmeba/5q3wv05
         +/h3+Yt6QoGzkEiKIDfsBbiR+WKNnuWugblno5VPImQGLBNXrur1BHxkNMBkgSjRhsJP
         RNH9KADHS4SWcl02c4FERvZSrqQnnIukTiAUxXinEDuiYlXn60m/hngr9ZDAlSvfAfdD
         hgzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rji6Q7/D";
       spf=pass (google.com: domain of 3p5jfxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3p5jFXwwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gr485RVG2TzTetsRAe1YIeetpKZF4+XBGl1YdQPPcOo=;
        b=L71jUcTNfkK/egl1no5X+pVJRJoCd42f2mFRH4SpNZ1FQDAyk6cvYRDkEWVbMKMSK6
         4b02gQT+dh4TzQXFJQMRwBrlavvhZygpPRMbA5dSvS+iQiglNy/kYmVmnikmdOKP5aV+
         COUJJdgHxtndN9e6bbFt4yKKakHQkVo+k8e1EO3ievUxg0+kwMbfFZp8EGTTFu/fp+ni
         NLdWZKyX8HBqp9KlGw6n2C0UL2rbzcXK4vwk2dXHyoNMBDj8GmE8ucF+/VHuqLmdQ8H8
         GkuRujcWs8kbxTQ/zAL/w7kQoCUlcJk3wnxoNeZqmsTvGw9GaE0tN0BwSp7tYAxlJJFZ
         nxQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Gr485RVG2TzTetsRAe1YIeetpKZF4+XBGl1YdQPPcOo=;
        b=bx8/UV87vyZCZrfS/ZAOOWe3+2nuFAJg8pGDM83EwFCF0AhjfjNe9zOj8hNpvNenNN
         oB6XjQybkdu803/7p7uCRUZj1hq5D2vs8pZ3Gy8YyFZfRiRiNrtsH2cbWKPlelYPlupA
         5G+O+6SKKYGbpWNtT/0So2MPlq1BFNTLYPO7XNxtwy5VpPZNrERj5HCZXP2780mUXL/g
         4fWmoa5YUpDCf3sM0CgBKyKhh/qHDHJGaMjXYSHh7oJZLD4OLCuBNJ7kdk7Be5HFFgz2
         3MnEs/FPyFTvFJBRM3s1+CvWv53+8rr7aBzzA3VMxApEK1UQq/6nwLCZzPi017DfHwtf
         /Q/A==
X-Gm-Message-State: AOAM531HA0KmESxf7uQ/Uzo2mTTfeezVcLbUOkadTNk/4bpWlaFEncqb
	XOa9GcCsSAxB4/EfWQhLXKs=
X-Google-Smtp-Source: ABdhPJxwRTRdBnUUrdzBUdqOL8uigpa4ZYr5mMuCjqCZU+VyOFVTE9ptJ6GbkEfCENxxRCXyBTlzDA==
X-Received: by 2002:ac8:7a70:: with SMTP id w16mr258079qtt.61.1606785192642;
        Mon, 30 Nov 2020 17:13:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:52d:: with SMTP id h13ls135967qkh.11.gmail; Mon, 30
 Nov 2020 17:13:12 -0800 (PST)
X-Received: by 2002:a37:597:: with SMTP id 145mr437233qkf.386.1606785192237;
        Mon, 30 Nov 2020 17:13:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606785192; cv=none;
        d=google.com; s=arc-20160816;
        b=HA1XnWihdRy3moyVFJbJFexbWLqOIeGjoaihr8SHczmE6yTJ4/WgOK6pbH2xwoyEBQ
         uWKXcWb2d+p6FuBzROBO3kz63wV5SZC9C+fbGZYhyZoSCstIxuSqFkrVP5EpVkh0VJ+O
         1rDnxSIZLWX5PJxs8uGzAhacg9GtD4LnEJ8JKPSuRhPlsssZk3/+Bp0ZIqEUqmDQXg0b
         X7XsVMSuY8Zw/X1W73lPnypZ1ov98Hf40wVhB9/BRjbOt9WTVYjvpO3T+SbFTo4pTtIH
         C7fHnr6Ts7siYRvv32YdascotOxK/CS4WJ4u7aEp+LUkj+QXoYGfmUepHYCC7nbR/Zh5
         jj5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=pPz0VnlmKmXK2XSeYjB2NPBA8zjGQ8y5FO2YdKBkBls=;
        b=n8ZH7XJXLWuBoQbNxt3JmOxNNh/Ze7jAj8nX3RF5FjGM6aSvYW0YaQOkkAs5cDiq/7
         bt3FsA2Uo3bcdklRRZh+z2ATxftVQXZrYvqJ94n+OqmFD4L1TB6l2I2SiNAg9wdg8u5N
         O1lU6EwplasF46j2A/ragekma849h5gejmbcel5WGVJeA12w0GoTiAF6HWaEYGlDBkng
         DO4V/9x5gtYZ5ybbR6YHtdcNBE6zTryijU8V5I2qaXviOApeo6MokQwKkXovCKvicm7f
         tyeDt5nlGj49kgKWDiNdldSkS8PUsIqumPT2BTunPsDu+fyEWyLrsl59WA4yGHghRCYM
         5WCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rji6Q7/D";
       spf=pass (google.com: domain of 3p5jfxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3p5jFXwwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id j44si22457qtc.2.2020.11.30.17.13.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 17:13:12 -0800 (PST)
Received-SPF: pass (google.com: domain of 3p5jfxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id c19so36392pgj.14
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 17:13:12 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a63:5d05:: with SMTP id
 r5mr100120pgb.442.1606785191309; Mon, 30 Nov 2020 17:13:11 -0800 (PST)
Date: Mon, 30 Nov 2020 17:13:06 -0800
Message-Id: <20201201011307.3676986-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH] x86, build: remove -m16 workaround for unsupported versions
 of GCC
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: David Woodhouse <dwmw2@infradead.org>, Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org, 
	"H. Peter Anvin" <hpa@zytor.com>, Nathan Chancellor <natechancellor@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="rji6Q7/D";       spf=pass
 (google.com: domain of 3p5jfxwwkapihxymuofhcylmaiiafy.wig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3p5jFXwwKAPIhXYmUofhcYlmaiiafY.Wig@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

A revert of the following two commits.
commit de3accdaec88 ("x86, build: Build 16-bit code with -m16 where
possible")
commit a9cfccee6604 ("x86, build: Change code16gcc.h from a C header to
an assembly header")

Since commit 0bddd227f3dc ("Documentation: update for gcc 4.9
requirement") the minimum supported version of GCC is gcc-4.9.  It's now
safe to remove this code.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/x86/Makefile         |  9 +--------
 arch/x86/boot/code16gcc.h | 12 ------------
 2 files changed, 1 insertion(+), 20 deletions(-)
 delete mode 100644 arch/x86/boot/code16gcc.h

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 1bf21746f4ce..7116da3980be 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -24,14 +24,7 @@ endif
 
 # How to compile the 16-bit code.  Note we always compile for -march=i386;
 # that way we can complain to the user if the CPU is insufficient.
-#
-# The -m16 option is supported by GCC >= 4.9 and clang >= 3.5. For
-# older versions of GCC, include an *assembly* header to make sure that
-# gcc doesn't play any games behind our back.
-CODE16GCC_CFLAGS := -m32 -Wa,$(srctree)/arch/x86/boot/code16gcc.h
-M16_CFLAGS	 := $(call cc-option, -m16, $(CODE16GCC_CFLAGS))
-
-REALMODE_CFLAGS	:= $(M16_CFLAGS) -g -Os -DDISABLE_BRANCH_PROFILING \
+REALMODE_CFLAGS	:= -m16 -g -Os -DDISABLE_BRANCH_PROFILING \
 		   -Wall -Wstrict-prototypes -march=i386 -mregparm=3 \
 		   -fno-strict-aliasing -fomit-frame-pointer -fno-pic \
 		   -mno-mmx -mno-sse
diff --git a/arch/x86/boot/code16gcc.h b/arch/x86/boot/code16gcc.h
deleted file mode 100644
index e19fd7536307..000000000000
--- a/arch/x86/boot/code16gcc.h
+++ /dev/null
@@ -1,12 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#
-# code16gcc.h
-#
-# This file is added to the assembler via -Wa when compiling 16-bit C code.
-# This is done this way instead via asm() to make sure gcc does not reorder
-# things around us.
-#
-# gcc 4.9+ has a real -m16 option so we can drop this hack long term.
-#
-
-	.code16gcc
-- 
2.29.2.454.gaff20da3a2-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201201011307.3676986-1-ndesaulniers%40google.com.
