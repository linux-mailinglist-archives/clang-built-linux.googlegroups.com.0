Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBANEYPVAKGQEQ2KXOJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C84889568
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 04:42:10 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id z14sf12595989lfq.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 19:42:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565577729; cv=pass;
        d=google.com; s=arc-20160816;
        b=a/CIW1ivHkiaPXw/baG4oCGqdXuJXBcfMTB0fCM45O6pQFdcuRmET/x/dUyKh5WLvw
         HjL3IMKK/Sm3SuyENP3XtqsoZnhhgRJhoUVQHewL66FHjqxnqHhHc4QWBSOLzQRCH4qT
         L3U4a0pfWcksaC2Qs2nZ+CsviWWPvPtUNyiJhn5+XuFNCw/34Ea+bMqq9voKlWzSbo5G
         JjvStbBZGnpvzhghkqfIdpqltDsY5S+2YCt9kKjwxf+5DLNVKtu3QzIAuhmRSrGHNPZp
         cUsV2QYwJQbLWI1gQPi2rH1HT4FMkAyN9IhpJAKGyjydJ43SFlV/lhhAvicFA2PzCzJv
         JhnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=lPytBrgHpmzy5C6io3Cy5fRc8EHBjzT6zGaHQuay65I=;
        b=fvT8OyE2axBDCIyAJPK1busRw+OVrSY1lfOGhcKHx8YEquJtD9Ofd2V4mwwCWzy3Lv
         mFC6RSC1mji3HfHuYsFcplVFo3fT/uG69JcCSPnng4e3MIv2tNgnM9P2Lh2/jRspSMVb
         RIQjT0ElcIiExz4AOkSKWJO8F27xScW9hZJ8rX3ri9Eb64d5AZVM6wMG8R6xxa8Kz1xN
         7wYAupd2rDlXI7TM/Lo39XSvbhac9J3iItjdd92o2ngmE76Fk8prLrSAsEmci0FYv80r
         3x/2sK3mOTUrAgJV+c0J/3O9jOYIegVmGxmTvlfW37WIsrzdGOEY2rkSQuWrZe/gv0Iq
         ZzQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dGYrhLjU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lPytBrgHpmzy5C6io3Cy5fRc8EHBjzT6zGaHQuay65I=;
        b=XCTNHY2QTF0zqvBPYBNiIL5c+C8cDZwKOPTURvbUO9HVSdvzhzQAL8W2LRRatCsh+6
         oW4xNFGNLaI/3SJpQkgG8TC93E2TJwLz6Jn9aHVL7npceEbz03Yf4b/8NL0LIOgb8w8m
         jeWlmnYSENBlRoYx+OfbZ8l/Dp/TXgu8xib2MrKwK0aaMTgSUEz+JrhZflj6kDNxP3Dt
         soQNqLZqD9oK9sjz0H5589G5klcMgLf6wBZigreZ7ENCGCAftxH8pagQW2k3bhEKlO9n
         y3CZ/ghkY6x1OHLdMwPjVzMWpwJj0mB9GK7/T1nf82GoSVKFmlbg36MGzKqx/Wm+K+8z
         UEIg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lPytBrgHpmzy5C6io3Cy5fRc8EHBjzT6zGaHQuay65I=;
        b=GiY1sw1OFTFsqpYuvE793KPtL1AcKdJXtQ4tY/OaJJdCmJy4d7fMZLtlL6brZIjiFF
         OU48AX2S2BHwD7Fni9bO4E3EUMcuXdGa5Duqor0fWdsXXymFiIcUlrqRqnZabE2kdf5r
         Vlf6+2M25N2OOH5biAkvr0I7zVTULU+IAHYnb0r2ulm0H+BkTfSf+b4BMzJXyrKglxw6
         yVW6CzDnZX66ojWPSRhd1UpaJrEZu9gTiV27P/j+pGu4oETAcQLtG//N8CGiVmq2fMu3
         QitfhgCYF6JbfQ1Vdp5+bQrZDiBPrO1/8eGCmzIk5v77iLmO/4s5LWKJ51gQXq37mvIN
         YCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lPytBrgHpmzy5C6io3Cy5fRc8EHBjzT6zGaHQuay65I=;
        b=rHd8LyzsMhBRJkR75JwbtoLGa4OmQYggS09woJ6Qea26jairPU/CB0NXwKGQKkZZGq
         GVa685qwhTcuKxpm7K/Z0+Q2Og1CqI05NznN8B7W/DDCumKFuGsdevBkvx/CPTRw8qY+
         q7jjKHs2OGgCyioEETPqqo/jBDVo/KLa4oPgpwzvtNqNwAm/kI9fKCCgP9bXyxJrhJ6k
         QsoNCSltxp6jGzOhDqnnylww+LoNmPbbD9a0/TnhQloFmEpHe5VepclPaDtm16y4790A
         haA5ihEosNHyGGl15jymhujuIEhhHK8ASBXCuIhVCJ4Oof6iJwwvhPJH7/Nh75q4pbmr
         xTRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpqmLOUieT0S6ni0k7uZwe96+2vx5p3hgYcjeiPwoGvJr+0cTm
	fGPzFsM4jBkfrsmtYlysQBg=
X-Google-Smtp-Source: APXvYqwJecrbh0SavFaozKjNGOjQIb5jjf/SScnbSUG8pixkj2Cv4XhlaWC8HBCNoft/xYJ6g1HvIQ==
X-Received: by 2002:a2e:9685:: with SMTP id q5mr15712745lji.227.1565577729514;
        Sun, 11 Aug 2019 19:42:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:5b91:: with SMTP id m17ls11584459lje.10.gmail; Sun, 11
 Aug 2019 19:42:09 -0700 (PDT)
X-Received: by 2002:a2e:860d:: with SMTP id a13mr17860347lji.215.1565577729072;
        Sun, 11 Aug 2019 19:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565577729; cv=none;
        d=google.com; s=arc-20160816;
        b=0i+C95e717c+YrTs0DkyWvZD5RHNGaUdv0RKeG3RISh2cxSy1DzZbP8qAGOIjpqFmk
         RHn572KSCwBh3FZtDTVCN9iFAw5cmvUlLZM8l4QRlCA9E+MS7z1m6sZjm2et+KAdwKs/
         u6KLyRIu5OgtBO3xwNE6zdWFcQmuFEazvFh4+gJybayaCFvmzj+JTTmaVaKTJQHiUeEH
         TpJdYx1EOFusJnxgVayDCyferpE9AeTl/IJHbDt2S+nKbULq6vSYQljueV+aXmqh7m1J
         Kks+w+tngegmok94LDLgmD/fpTpVUsYIL2l9Hs33boK2V23a+oeJA/PCBFDQp2HbKkL7
         TKTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=yf3qi63BI9X/BYxP9kfuXNqP3LoeT8xFrAy0fp782mo=;
        b=Mz7V3Jds8KSAKesg8a73UWfXip3a+l0i5OstzrMFgSYEzlzZ16b+MoPnpkHFGAypjT
         ZReq4mZFW/mC6p7w0+p1CezBbfweT6Tfcg1bKjGxzCOZA2Ai2WArCQlVnk2XzmzTe7An
         e4i6uoy9T5FsN9EIEmG5UaZbTmJfdMi4rTMU3IqZpLAdZBpRkv4nZicANZGSlJxh/1el
         yOeHEZaoZnnHvHq+EObAewCA5+Cq2SlTmW8x8rVN6ryqgeXNnpHUf9LZdv32WUI2jL63
         SSnaMzYJhtvaTvgc7dXDP6gCsLbduEHxDOXzBfdS5fHeku/5gY+T/1mj0NFdwUCPXWz6
         j2sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dGYrhLjU;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id u10si1363875lfk.0.2019.08.11.19.42.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 19:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p13so28680484wru.10
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 19:42:09 -0700 (PDT)
X-Received: by 2002:adf:dbcc:: with SMTP id e12mr28643909wrj.205.1565577728170;
        Sun, 11 Aug 2019 19:42:08 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id a26sm16705786wmg.45.2019.08.11.19.42.06
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 19:42:07 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] powerpc: Avoid clang warnings around setjmp and longjmp
Date: Sun, 11 Aug 2019 19:32:15 -0700
Message-Id: <20190812023214.107817-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dGYrhLjU;       spf=pass
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

Take the same approach as the above commit by disabling the warning for
the same reason, we provide our own longjmp/setjmp function.

Cc: stable@vger.kernel.org # 4.19+
Link: https://github.com/ClangBuiltLinux/linux/issues/625
Link: https://github.com/llvm/llvm-project/commit/3be25e79477db2d31ac46493d97eca8c20592b07
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

It may be worth using -fno-builtin-setjmp and -fno-builtin-longjmp
instead as it makes it clear to clang that we are not using the builtin
longjmp and setjmp functions, which I think is why these warnings are
appearing (at least according to the commit that introduced this waring).

Sample patch:
https://github.com/ClangBuiltLinux/linux/issues/625#issuecomment-519251372

However, this is the most conservative approach, as I have already had
someone notice this error when building LLVM with PGO on tip of tree
LLVM.

 arch/powerpc/kernel/Makefile | 5 +++--
 arch/powerpc/xmon/Makefile   | 5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/powerpc/kernel/Makefile b/arch/powerpc/kernel/Makefile
index ea0c69236789..44e340ed4722 100644
--- a/arch/powerpc/kernel/Makefile
+++ b/arch/powerpc/kernel/Makefile
@@ -5,8 +5,9 @@
 
 CFLAGS_ptrace.o		+= -DUTS_MACHINE='"$(UTS_MACHINE)"'
 
-# Disable clang warning for using setjmp without setjmp.h header
-CFLAGS_crash.o		+= $(call cc-disable-warning, builtin-requires-header)
+# Avoid clang warnings about longjmp and setjmp built-ins (inclusion of setjmp.h and declaration of jmp_buf type)
+CFLAGS_crash.o		+= $(call cc-disable-warning, builtin-requires-header) \
+			   $(call cc-disable-warning, incomplete-setjmp-declaration)
 
 ifdef CONFIG_PPC64
 CFLAGS_prom_init.o	+= $(NO_MINIMAL_TOC)
diff --git a/arch/powerpc/xmon/Makefile b/arch/powerpc/xmon/Makefile
index f142570ad860..53f341391210 100644
--- a/arch/powerpc/xmon/Makefile
+++ b/arch/powerpc/xmon/Makefile
@@ -1,8 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 # Makefile for xmon
 
-# Disable clang warning for using setjmp without setjmp.h header
-subdir-ccflags-y := $(call cc-disable-warning, builtin-requires-header)
+# Avoid clang warnings about longjmp and setjmp built-ins (inclusion of setjmp.h and declaration of jmp_buf type)
+subdir-ccflags-y := $(call cc-disable-warning, builtin-requires-header) \
+		    $(call cc-disable-warning, incomplete-setjmp-declaration)
 
 GCOV_PROFILE := n
 KCOV_INSTRUMENT := n
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812023214.107817-1-natechancellor%40gmail.com.
