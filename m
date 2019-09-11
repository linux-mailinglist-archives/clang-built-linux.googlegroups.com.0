Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOPW4TVQKGQEV42HJ6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A25B0380
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 20:21:45 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id j2sf2613417wre.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 11:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568226105; cv=pass;
        d=google.com; s=arc-20160816;
        b=pfagO0/qhqHvu7luuJS5LQ59ngBvqqBQK6hM7hPOiyO7+TYb8KZ+d5o2qAC1iBm4j6
         L3SkhDrbyv/4LGIpU7DLtlJNuTbFM3dC4497juqcTFRk7frGJDfziYC4wJpAmuphgqeW
         WOfJZdVULroKIBK2hk0s1wwgOuqzXun3u2BdUYKaA9S0lsdFOOI5vPrCcaqX45djbl61
         JHuW97RZpoSWQ0t8b8vuOE+KPs8s6of7M3hvmJeNBybqBfmgfiJ2U/DZX3Z8cerD5EkE
         1BRzhd2EhVI95J5U3USWF5lZMxz1+za8rnUCwT/TbeE+qK+9w9c8RMLkdIQM2hxAtkRH
         vjTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=/H8Ep6wWDZf9iovLc8y3RcjXqRJyYC29QYQwY74j8Z0=;
        b=RxfhMbl91V4H9nWjqzSvznYUZUCbLwbEkbf72+L8ilCdDUC2upACdu3Ug3+09wHhfk
         bIWTh01406GEJ7yBnx+5v9JuhRmMhPjtzW2hn/yL8mVh+ZfsTQwxFdnmSLF4SkygOpvX
         5srKwX4aIpBiaYPHQ7trxfl9S4FjKo7+2mpZHNFH2z9KgV8H1LRA+N5jwZpFCxfUPmfx
         Dd0UmiY/4yZNu5Fvze+GfYdb4xH5umvT5Fl5/LC/rufAKbkS5guwpTKExmEx46q4Tkw6
         /rrarKeDQOEsh+uOPvINPJbAQ1d5IWfD/rIDkkFCknbIN6GuQZmG7JJpnAGqegIlrg3N
         V0cA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=px6b4SIH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/H8Ep6wWDZf9iovLc8y3RcjXqRJyYC29QYQwY74j8Z0=;
        b=g330vBCoBOH4BOjshaOmhqyxOnjdbt5Dhqqyc7c2jc4anLMxf+f7ucv6sV/jGylcT0
         wforb604vg0blghOrufPhUfYz8CC1WzMiGNsHnHx8NipNu0TIvZLm34X4qB4xMlT5ufM
         VUciRLCUWDpXEIy7bT/c7Npf8qJMpSkptHNUysP3U5/AWBbyKE1PH/g60MQVlDPyiunM
         +lw6fho3hNSE8pH6LPglfBZm9FogndezmtXlYVLeciiYRdXqh2CSj5WeFQVuRaxudPCC
         9Q0NbCk8slE1NtmqQ/UuMz1FL6q5N0F7eAIewuRaz2S6tRJwjSSezZsAOMZgTmaS7JZm
         p9Hg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/H8Ep6wWDZf9iovLc8y3RcjXqRJyYC29QYQwY74j8Z0=;
        b=Wp2EuK5YksaFQckoO/IvjGiooIsOz+dAabxTiBn9GUuSm2D1K6vefRmJzMiTQ+r04T
         KgXRbyulbqnPFJzxo4G5OBjdVLbAs99JDns7ukE+9iXHIKj4bEU9dBRBgS/nHrrCc+u5
         iLLtFDAgn1i5anXatp/8L5hYxyZ1D+xzjmNtREW1PvKFkqpqhvLDbx4emT4ZyeJOKN+X
         AgWC9fbG3a1Wd6KFeLGuPR1WGBmmFOl5/po2i8dzU8JognnH1ho6UzQGHRazxnSkcgMx
         4Iadw72HQhvtNS4PGnNHb14ppflPSLklkyKiq4DsVNsz69s+u+ts/+nrB2kwVvwgUX1E
         Ozgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/H8Ep6wWDZf9iovLc8y3RcjXqRJyYC29QYQwY74j8Z0=;
        b=W2UvFrxAphLuc6dwA1wA34+lrfwK+yB1IGdFjFuI9jP2U2F4GG6L68gj/LYRPcZVgM
         SW3d77cYUkuGclure5bRbLbr2tk7VJInbzWtonNyFTxAPYUa6gv/d4D3FCzSiL1WD0C3
         OI3X5+mm+mcvVPOWzMYNQjgg29xGOnEYYTqRac9ih0gFZUaYQ6CdqXkb+X2q1Sq2WFbq
         K6XnValZjdqesmGeALHSW2hNrpdLttbPdxb+KLUw+Rge4lW0qDt73ZlGtHEG+b6Bx09I
         jYDbVQA0kvQHsDRhhjbBWdnD01W1hIZl2SUOqWKSltZdqcfOc/vwbQayhVIWgF+XQSOo
         IQkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiMWCUrw5x1Qbhkt64XmxpcKTWF6muFo+2O03FR8471HVyexyw
	6USqE4N7iz2obffXp0VuqCQ=
X-Google-Smtp-Source: APXvYqzxldveO7zcBISVNEnYi95g8U/KtARkMZv01bYe48t2D/375QgRbtbSBA3tnUUr667oGc+L4A==
X-Received: by 2002:a1c:d183:: with SMTP id i125mr5419726wmg.1.1568226105277;
        Wed, 11 Sep 2019 11:21:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c143:: with SMTP id r64ls1574068wmf.0.canary-gmail; Wed,
 11 Sep 2019 11:21:44 -0700 (PDT)
X-Received: by 2002:a1c:cf8c:: with SMTP id f134mr5204524wmg.174.1568226104817;
        Wed, 11 Sep 2019 11:21:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568226104; cv=none;
        d=google.com; s=arc-20160816;
        b=wSRKXOPcOuJLQ9Am1n3qFTTSLD3kYcARSoMSs9U618ubkcjtOxpzODPdjZhHBtr1W/
         dxURV2wzcN1vskqufS1qRWFGAxOOEvgAscFuQC0XwbaO3wb3Kqqb8I5EJwr/YyveXQ+k
         eU7LQqXMnnBTfArX77/phSzuIovpzgqvcnTsA/nQsqLgVP8OuF2L1OILiaBCNb1cKPuE
         S0A4AFXhkZWUWuQ5GSbG/5Mk4baKuemECQt6ceYrZavfbSvJBMcbwxlAdzxRry0a8TFo
         F+zQMkO9lnl3LNXvdQK6f12ufzaUT7gONmYdy9EXgyu3oS7FQkg4gJ7XBMVvEUlor0xG
         2unw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+GO23KGSs5kHbgoAK5zj/r8U5QGqjyd8r2ZN58CM8zQ=;
        b=Z8rLQH5sr38sWKXjhKiZj7MD7UfO9/ocG/goofBve59iLTUPpq5CxvmxuNNDa6BMSB
         ugeSP6EEg7cn7pZu14rAPtDPDLY7Iy/8d05uyYD6DtAhk1vZVH6WYM9/MoZ7s7FA9W8p
         4a3s5VrMe2+MYaaquLmxorOTjm4jsbvGIE2KKiKUVvcZn9lbsnbHzb1IvCM8ObfhOUGI
         QjWwyoTbpuDmX8dzaRK1EelP44mEiydblACM4Kac9IumU/YIZxRkwds9muu7DcgvKjSo
         Rjb8LFqDR2RIM3Av40kTrcUuDZpBl7SbeO1nP0LKr0R8ruR0GBtAWi3q9sHUSUMdJAcm
         97zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=px6b4SIH;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j4si1052841wro.5.2019.09.11.11.21.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 11:21:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id l16so25598693wrv.12
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 11:21:44 -0700 (PDT)
X-Received: by 2002:adf:de03:: with SMTP id b3mr30023354wrm.14.1568226104312;
        Wed, 11 Sep 2019 11:21:44 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q9sm2356753wmq.15.2019.09.11.11.21.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2019 11:21:43 -0700 (PDT)
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
Subject: [PATCH v3 2/3] powerpc: Avoid clang warnings around setjmp and longjmp
Date: Wed, 11 Sep 2019 11:20:51 -0700
Message-Id: <20190911182049.77853-3-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911182049.77853-1-natechancellor@gmail.com>
References: <20190911182049.77853-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=px6b4SIH;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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
Suggested-by: Segher Boessenkool <segher@kernel.crashing.org>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v3:

* Use -ffreestanding instead of outright disabling the warning because
  it is legitimate.

I skipped v2 because the first patch in the series already had a v2.

 arch/powerpc/kernel/Makefile | 4 ++--
 arch/powerpc/xmon/Makefile   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index c9cc4b689e60..19f19c8c874b 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190911182049.77853-3-natechancellor%40gmail.com.
