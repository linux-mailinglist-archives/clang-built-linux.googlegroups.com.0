Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLGFR7WQKGQECJQIUBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 61BDDD59AB
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 04:51:26 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id r24sf11796398pgj.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Oct 2019 19:51:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571021484; cv=pass;
        d=google.com; s=arc-20160816;
        b=RJecnwHsK2D8fI1Fo7Q1s7axnfcBhQz88kOK3zvO5q4AfM8Dn6XGQyTWN8l/d5TLxb
         MJIeW0yqDbTrCdOZDREYop/UTyZii3Zb2nDMtYSpky/xWoK6ujXBFpvnfMfki0HdUqsu
         RSAH+1bBPIoBleQKJEAnjV17thsU0sub3E+5NpVbdSWkXigc4HT1eR6BM0a6AlLyslR2
         UL/cWdvs4hV0M/YiTbhdehDC157ITnMl2bRgwoxr7IsRukeITtPOsoiweDMWB6lobkF3
         pXtMq++Tf5hz5AdnPuRpyWMtlc8ln9i1us9oCwjW1oX4FJiXgjfJ6PGti2+iUsQcQL4z
         zCJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=mEpYv3wsicC1gl25bzbUlxpa2PJ/Jvs0zbHt41yOS7U=;
        b=kel7oOeayAF/fA0cF60/gbmXiHXNROsSRQ3Cw4gqL9Lygs4eait8jJGx6GIW0pTEP3
         glT8Zk0L54MFff3ZDpDRKenZMfPPPCiT6q4nfIr7mGHgfB8M18vIzybCXlXRDmVlZI25
         rR/et0nIxxM9HsOiypT0iuPp4gXeh8/LYuoagsRkqM6Vm9y6jw2JTAzymryT6twThUI1
         rNxSqV6m1KC14GJJ9YLpY7L6cCJur5REMuvXAtaFtiN9OV9oD7mlAWBvF4DQUiu9GxUZ
         Tz8J+eGgge6sBYhQb2zJsJCa8MVL47ljSczZFaxfcqLjY7c7HLQtbGAcKoIKUD1YDqaA
         1WUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q4vo8JFU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mEpYv3wsicC1gl25bzbUlxpa2PJ/Jvs0zbHt41yOS7U=;
        b=qBZugXRt/Ri5A4bv/VBbfpXYIxozy8v+/NC6bJ5WqjcwxSyUihM59skZWrxIQP4TPC
         +5GuWRbNwFgVY18EWfnsq1l5NOMNBwK7+WjxKYFCvyD3v2IrMiZX1+vTHryPnkz4VGsA
         l/fTZP8znEnW5jGZDfGU+q1Kg/vzr3wAwvXmfuY+KMb/Msaat2Uz1uS6V2hSAts0mO1x
         M223XsgOOAu9akv0GO3ZOnEOZ0UC6kdkbTgbcyuTntF6E5yRf5NREm4H+oPzWuF6QuD6
         HPGUyTQcVzcFqjgS/Wx/Z7oEQyIJqSQ7KXxjWNjOaeiTL/EyV9csOqW1FqaG+OXpUDbA
         pLgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mEpYv3wsicC1gl25bzbUlxpa2PJ/Jvs0zbHt41yOS7U=;
        b=dkGc8u2Vw047I4szmKRgJ1e3ZNgo66FaxQtHM0PxchQ1op+USeiBKM5Tg325RIA5m3
         9te4HtXrW2jySxOlFLjclQDiT79cvLdYqMyJHswPPMM4o/IcdZ9rMmUoMGkNRnpzyP79
         gBcQ6SjWakrRP6HPtoxVpowqCgjaahoCsbtxKYLEx+oJ7NlIY+RmNIzlMLE66GE8mKA0
         9PDY+/O+w+2i3lb8PNxgD42ASQuoK6m73qu6fF9wyqsEbRx34h8yNNj/Jn9aLLZjK7HP
         +dZFnauT6yfDIz5NlrJGd2VhIfu5QtMlZ/4Lg2FVErJNcIFsSbCndMeSenHSqicv5bML
         8zpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mEpYv3wsicC1gl25bzbUlxpa2PJ/Jvs0zbHt41yOS7U=;
        b=EAJUet09DvsvfLMY3/exeEK3cTSmK+sPpuwgouj4yQreU5LMhIW7xtQ3EBHCxlSoM4
         uTb/KzvyG2BsafqmjRrgX8V05cifrCi01kWDdYcmrV9i/asdjmEFWzLzhl0pkBME2Ap/
         JqOrvMmA94FCo/OE/nqbgymVrjKDjGvFTTQEiFggavApkzCVclGIzd/3G5VFLGHCHtAt
         dUfCKLfwwj/+O3belhKLXbqKALj8KrL2EyJ6UT+DB++hYrfoIb5SU9Uq4jUsoD6wQ/ZX
         pXEuOaTpyCtj68Zn9xjPvwtROF+PmcwGVz8dsQ8Mq8aoDBisREmycJVtr1/bw4yMoVnz
         E7Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXac6MSz6bR77EfcZ2fHeHRYqCW/IUH3YU3B1b+Q7PBHuPNBGUn
	qAu5E4NRGEckTbR8kLpO/xI=
X-Google-Smtp-Source: APXvYqxS2bSVItxNwB56Q1GQyIJgTl/PKMWSjOmX1TSmaJ5nKe7SN6OJrFvCfzKgYn72Fus678myTA==
X-Received: by 2002:a17:90a:de14:: with SMTP id m20mr33245706pjv.10.1571021484482;
        Sun, 13 Oct 2019 19:51:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9786:: with SMTP id o6ls3730902pfp.1.gmail; Sun, 13 Oct
 2019 19:51:24 -0700 (PDT)
X-Received: by 2002:a63:6d0:: with SMTP id 199mr29525312pgg.96.1571021484116;
        Sun, 13 Oct 2019 19:51:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571021484; cv=none;
        d=google.com; s=arc-20160816;
        b=X4ZwP5KTBpwJ5ylQMoW9shDNzM3OVLiHaSKKtHy/TvntLoSjELdtSZuX20Ee+sPVm/
         VJr9ooFrkYNKU9PJcACuWdWUF4bQ6ZzvnjMth+3FR5oZdR42Hi7o+8wLhcRalzE4CHsc
         zVeDc6kpv+50J38WOm7LfR5nbC3uUlQUB5Y/9qKObKIXqdfDI2ognpI4nHz/rv9N1B8V
         Ug1ujmToicwPNJdFw6fepKSRan+fu86MD6nDmoQ/mGnC2+KBT9AK4iHfcaEOgQUZ5NCR
         1EMd5VHVrFbrBf8yBx71cajOH0EKsfS+3LbWIDxIwNivciliYzNCIWnmunWKUPj2BSEt
         dHTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=F36EaD5caKU9PTKbiMakPn6QNXZEgKWjgXwIAtKPD44=;
        b=ZuceaAVUig8t1CrctUGynYhKElNcNdjew9IjfHpGSG4UCSE9jn8jvFmJDJtO3oDblL
         5RirqPs3/XsxoBwFfRzCGcRvO6DFE9+jN8sprm1YRd1exxikT2rSiavBipjVSOKetMpw
         N6iuph+BLFiqB1tUBOI4jnRZ7oFfGKORwMRLUQ2jmPAzzRxjTWFSGcyEDxRlFYhZEZVv
         3TyhcqVQEMQlTFYjrz7Px5GQS6hWpxOjLmd4DbIHGctpZAS/APer3xPM6elZIy65f+2p
         5icR3YtTcBfvkJoJ+3Ydl6KrxK67NmEjY7RX1IP8ijMY+jL6voIPtIonDnsarPTQjx9W
         8noA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q4vo8JFU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id t17si398903pgk.0.2019.10.13.19.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Oct 2019 19:51:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id i185so12528567oif.9
        for <clang-built-linux@googlegroups.com>; Sun, 13 Oct 2019 19:51:24 -0700 (PDT)
X-Received: by 2002:aca:53c3:: with SMTP id h186mr23216972oib.174.1571021483233;
        Sun, 13 Oct 2019 19:51:23 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 11sm5612491otg.62.2019.10.13.19.51.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2019 19:51:22 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org,
	Segher Boessenkool <segher@kernel.crashing.org>
Subject: [PATCH v4 2/3] powerpc: Avoid clang warnings around setjmp and longjmp
Date: Sun, 13 Oct 2019 19:51:00 -0700
Message-Id: <20191014025101.18567-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191014025101.18567-1-natechancellor@gmail.com>
References: <20190911182049.77853-1-natechancellor@gmail.com>
 <20191014025101.18567-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q4vo8JFU;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Commit aea447141c7e ("powerpc: Disable -Wbuiltin-requires-header when
setjmp is used") disabled -Wbuiltin-requires-header because of a warning
about the setjmp and longjmp declarations.

r367387 in clang added another diagnostic around this, complaining that
there is no jmp_buf declaration.

In file included from ../arch/powerpc/xmon/xmon.c:47:
../arch/powerpc/include/asm/setjmp.h:10:13: error: declaration of
built-in function 'setjmp' requires the declaration of the 'jmp_buf'
type, commonly provided in the header <setjmp.h>.
[-Werror,-Wincomplete-setjmp-declaration]
extern long setjmp(long *);
            ^
../arch/powerpc/include/asm/setjmp.h:11:13: error: declaration of
built-in function 'longjmp' requires the declaration of the 'jmp_buf'
type, commonly provided in the header <setjmp.h>.
[-Werror,-Wincomplete-setjmp-declaration]
extern void longjmp(long *, long);
            ^
2 errors generated.

We are not using the standard library's longjmp/setjmp implementations
for obvious reasons; make this clear to clang by using -ffreestanding
on these files.

Cc: stable@vger.kernel.org # 4.14+
Link: https://github.com/ClangBuiltLinux/linux/issues/625
Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
Link: https://godbolt.org/z/B2oQnl
Suggested-by: Segher Boessenkool <segher@kernel.crashing.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v3 (I skipped v2 because the first patch in the series already
          had a v2):

* Use -ffreestanding instead of outright disabling the warning because
  it is legitimate.

v3 -> v4:

* Rebase on v5.4-rc3

* Add Nick's reviewed-by and Compiler Explorer link.

 arch/powerpc/kernel/Makefile | 4 ++--
 arch/powerpc/xmon/Makefile   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index a7ca8fe62368..f1f362146135 100644
--- a/arch/powerpc/kernel/Makefile
+++ b/arch/powerpc/kernel/Makefile
@@ -5,8 +5,8 @@
 
 CFLAGS_ptrace.o		+= -DUTS_MACHINE='"$(UTS_MACHINE)"'
 
-# Disable clang warning for using setjmp without setjmp.h header
-CFLAGS_crash.o		+= $(call cc-disable-warning, builtin-requires-header)
+# Avoid clang warnings around longjmp/setjmp declarations
+CFLAGS_crash.o		+= -ffreestanding
 
 ifdef CONFIG_PPC64
 CFLAGS_prom_init.o	+= $(NO_MINIMAL_TOC)
diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
index f142570ad860..c3842dbeb1b7 100644
--- a/arch/powerpc/xmon/Makefile
+++ b/arch/powerpc/xmon/Makefile
@@ -1,8 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for xmon
 
-# Disable clang warning for using setjmp without setjmp.h header
-subdir-ccflags-y := $(call cc-disable-warning, builtin-requires-header)
+# Avoid clang warnings around longjmp/setjmp declarations
+subdir-ccflags-y := -ffreestanding
 
 GCOV_PROFILE := n
 KCOV_INSTRUMENT := n
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191014025101.18567-3-natechancellor%40gmail.com.
