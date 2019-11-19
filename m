Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL7MZXXAKGQEXXWP74Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9D71012B1
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 05:57:21 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id k185sf15171364ybk.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 20:57:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574139440; cv=pass;
        d=google.com; s=arc-20160816;
        b=egnWXAWM4fuFsDsyK1V6YcG7yTU/y13zaN7UIdTGVsMyWiumf/z/f7ZZvFlaojOgzZ
         p2ANrgf1gCJ0mfmLnvpEXcuTHFvO/VHy26Z74SRn2c6YFQHqKeUYKH4DLNRBe/nkjKqU
         Z9DWLWS5Gv7Ej21PAs8zuhp0UGCPfknTVFg9/yN68opaflvWhP75JktEBnlq3yaJvxic
         jr7NMeTESCMu6q12hCPxp4Ndi/2wgfnG9SPBp1/wmuUgPi8Ey7RefDQqeoJbo1syRGHo
         Txcr2Jd1/cb7/LHF9gf7GIqgXfW0opAJWHZUgRvO5l/Jzg2AbwVASbPbsBBf+bHxo6Vq
         HJQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=EN8dASwkSsV7j+FmTlNE/9NwyM8boczNg55KMN0N49Q=;
        b=RMb8ikSSdu3p/ny7+sBWD3H4VyQO/YOSZITdTZNMoQsISzkKasBeUXWwzmB5K6xSu8
         Hk4zBsZNWCK2K3KaKYgL3tw3Ko2hrnr+LPt+zxiiaJtdzktrozfGSF3P2OpBs93sW0Dy
         qdvN3xZKXdGpKq/pOIcsW5iMsZbYW1livZxLn22MZ2WDyQtOgyApzMjln8l8R47Voonk
         Jcrcp/TLyfffu1E1mQFqpOo8XIcUypDy/RAaA+fuCT381Q/ZfH/Bf8uxInXb6njcrs/G
         omoB28iBWxO5McHMA051T9t9CdF6c8Cz9G1eFh/NDNapuVMQSzXmMA8SBN+JmY2kRbOn
         5Qnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odrJnbLA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EN8dASwkSsV7j+FmTlNE/9NwyM8boczNg55KMN0N49Q=;
        b=Rwy1lBWhezIp0t7blWF3/3etCWigDAw3S+FdvOilsr8m/z9noyAjGX8oOWw0pDKsZB
         iVt/zwHp+LtgfhgllZt+EiVvdylHDn4YOI21ZNPVKLX9zyk1lVBgXpk3AzRgqK84Po32
         KyOzGadtl9gNf3K0IzDEcNEbfkodRvPsClZWMyjXen9s6/mp4NhaY3hnLRoApsM/nfwo
         W4co1Ib4q4b5HX5DUA0MgJ11sdtjSam0JDcMF1K+MkDvXkDrxLj9aEO5E6Zd2q8QFJet
         mu90OSNUT+9v4U2DIUD5TNMxVFJiY0QLJoDIr8tKjleZFn58kIEcRt4VQvTJwc2dp8vY
         IekQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EN8dASwkSsV7j+FmTlNE/9NwyM8boczNg55KMN0N49Q=;
        b=kuk0ZVC/Og5IxcnxPyKJ8pVq1VUrnzVO+f9hqVB5pNJOw/H30TDSpoQkO+rubw1138
         H2UPnTSM+dcy2HnsEbLYCesLh29yz6HRieVnKMJn+vvofb6ddyxBY2zVp0xdOQE/cCeC
         AmwlGv+lNKT3luMvNySjiMWFNUfDICivqPnvw5zVZSJE7QTYA0QbWA7/W7NauZl/zQP4
         +9tYZ166IxYExub3DLDiWxTlaJlHQVKNni+wsKShFmTknpP26fSWqd07XAlfFnBFCbhn
         Sp6caFRgLFU/xkB4qOWiTo1HfOIGjqEI5u5cuakFoNhKMR9h1PptR2QKX7mR0Z5UQWKM
         Zt9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EN8dASwkSsV7j+FmTlNE/9NwyM8boczNg55KMN0N49Q=;
        b=TlHVrWV0sImLexVw49kK6dZgRRmWQvhUnRov7Ktxsff7Nr50yCOPW13KH3t1GUABZD
         Vyd8eF9SJuTKp6GCC2uETejRjYQvVuSdtnaCFL3m9ctEnrd/qFL7soyhPFOMMUuDxJjf
         0UOhONJFkEjPrpe2D2cn1fsJy74SIrKVB3p+I2PduyriXgiRceEybsFlCjgqnbdE1onQ
         5bX5SJsQEnsJ2S13kBOn9lMfGXtRxha+9YO1ftuwMNY5Z5HdHPxSVmEuVSVxhXz/iRzo
         bJ87rQRqeTu3KC7SWeCPDIwre0N363gaJOwZnC99Mt7QpWCdOuBmo0gskw46ktbgtvaR
         xQ+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW4iZIVYcoU7C5qu9Q6TJ6O1ZzRNUUtabRlB7U90LxdNeGsqEvY
	XrS8fk0fiQVYQpKnKM8TRDw=
X-Google-Smtp-Source: APXvYqxgEy3rEnsDr7pVJuJ7wh5pe9QM9Ml7RvXF7NA/X0JZtatxckyllCImuAWzeiOyeJ1PEBTqyg==
X-Received: by 2002:a81:7908:: with SMTP id u8mr22087937ywc.446.1574139439641;
        Mon, 18 Nov 2019 20:57:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:af0a:: with SMTP id n10ls2606341ywh.4.gmail; Mon, 18 Nov
 2019 20:57:19 -0800 (PST)
X-Received: by 2002:a0d:e6cc:: with SMTP id p195mr23303965ywe.195.1574139439158;
        Mon, 18 Nov 2019 20:57:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574139439; cv=none;
        d=google.com; s=arc-20160816;
        b=T4wUCxQTyPnKEyScAjC3f2fhuMK0ikzwczP0PajdM8QGPCcxIID0wgW0YX+c3WGjr1
         WYMp8dObeKdPlJD29X6Nlfsb1GwXrKc1XzAWYrioe+x11DehgKQL6t49YHICfMLUrzmx
         c0aTwR5X1dzZGpE1JY+wIOXx7szpt+9dTXfIZXBSvYsaqD7sHVd2BMvackJ3oRnXVdji
         nwVzO+zIMK/7bxURGvVt+/o6bohXz53UU0feF2tRcy1RAfy1V0ya/ehInvDW+a1Wis7r
         LF8LMHkV6H80XgjrVQS7ZoKRrdYuzkmU29QCV3JoHlYtaNMe6rrjUqMoTV4bDBdmkLIx
         Zlmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0BfAG347llFRLd3tFIx1Ke7J/fonGQZbEZDA3VvZY+U=;
        b=Fy+5bxbLKxZXx9hJs3Icc9npEL6+yIdSn7WFo9lpIZ0HWZZ/z17EqR60nYxg3Y2DSu
         tE4rnU2/goxruYe9zmYAiqIpTm/Q2JWsupxBQyJPH8DOgdesnU1amqdueoH/+m3p0Ii1
         LyacE7C6PpsvYgT79s6P+U1zKvqTuEgrd+kO4jI3DuHBR1oP/UHQUCP2WuMaJiJMOF3R
         LJ8x25AB4XHDvfGjeFznZKaJArS5nhAXG24HS2w65I3Igf5WoYyDMLdPANCOihtaJrxb
         N2D5ygpzWkowNzhBctgGqLsSrikwcioYpp4hYeSU0ToZsUTyrcUEIBHs/JKT38pjl9Ib
         nRCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=odrJnbLA;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id c79si980044ywb.3.2019.11.18.20.57.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 20:57:19 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id b16so16733272otk.9
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 20:57:19 -0800 (PST)
X-Received: by 2002:a05:6830:2157:: with SMTP id r23mr1433047otd.343.1574139438568;
        Mon, 18 Nov 2019 20:57:18 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id e88sm7019765ote.39.2019.11.18.20.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2019 20:57:18 -0800 (PST)
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
Subject: [PATCH v5 2/3] powerpc: Avoid clang warnings around setjmp and longjmp
Date: Mon, 18 Nov 2019 21:57:11 -0700
Message-Id: <20191119045712.39633-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119045712.39633-1-natechancellor@gmail.com>
References: <20191014025101.18567-1-natechancellor@gmail.com>
 <20191119045712.39633-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=odrJnbLA;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

v4 -> v5:

* Rebase on next-20191118

 arch/powerpc/kernel/Makefile | 4 ++--
 arch/powerpc/xmon/Makefile   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index bb57d168d6f4..3c113ae0de2b 100644
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
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191119045712.39633-3-natechancellor%40gmail.com.
