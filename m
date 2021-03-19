Return-Path: <clang-built-linux+bncBDNZNK75ZIKRBGNO2OBAMGQE5DH6V5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8934434227C
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 17:53:46 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id l63sf26080522qtd.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 09:53:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616172825; cv=pass;
        d=google.com; s=arc-20160816;
        b=HkASc+Bw/gFppnKfsL/IXrd81M9f1Gr45bMXT5Mjcs7kl1AH49r4i1srUwV3CIUAU+
         XnktaNWEV4xpN6zM8vRxLJ5mZpUklB6bIG9pGibe44uHIH5oVJ/dhQyL//lqSn9O/HuX
         +/i/R33MiJKWDpFv3cb2Sa01saCoXScNpbPfAA87huCzTH3NHMa4dg/tAsnFFpXnV84t
         VIJsQprmxODF5BidEWrX7FuTu36uRqO2m8oOOfE8Y6JFoagTF5a6JNUkzKhKmaNmMgKN
         ny4w7/4q8H4NMU48MzyZZr+onPiCnlk6onSrGHU8L4/2cZwr/fJLTaZpqBP7z/JUFD24
         2vkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature;
        bh=CeMHw4WyHNQiRAtSxtJxxEmrVxIIKze7uBzXjPosNUU=;
        b=BH2f1g4VfNnVvJU5nJ2IECjziHrGP1IOQ3qhTVZOT/f3BblIHNbCTHO8MuuBd7k3NZ
         WwgFL5tTxVhcNESREtkbELgb5BAHoynrMNuwrMTm2MmcnbMDnu/AZmm2joqHco/MABhK
         68JrJHILYopnF4/Z7g/cjpJooEkMgKVSb1GhFmmypzyt7V3X1WO48SG63bSnruZjz+ro
         DUB/xqJEvPSMcxai6iQF0ZnMFabFBpXfCDIzy1zXLyKUvhrWwZXLxs5y6YsSG1uoyBRB
         8EkVUrAw6B9OtWuhdksS7PfpUWZOUbDgkvRGVbndToVj8qa2gkfEfqRVF7kczLkx2hQJ
         6zpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CeMHw4WyHNQiRAtSxtJxxEmrVxIIKze7uBzXjPosNUU=;
        b=m+sn29PeOBeyExSNywcodR++hR1gDuMQjQR9OeMB3T0enmgZPvcMaFRCb1Shp+hL3E
         K+CWUtnWxGcWHt8Y/8vx5hqZYXpZ1Swi0ltKpZTdn2DNPXaReVQkSd0sMMilUHc1octH
         5H9b6MJP9arFWvHwShgBaIEu6Kot76RHoGuWV+ssQ2h2Vetfe3xTxKNReURhvvOYWfWl
         aHINAVguwwRuj3eRLp0zkLnEQcj6qS+ZObKDlWzUmBu5/EWOXeTjV/Z0q40GvfLTRUvL
         F5QCzmQcBpQ8Mj0RwQEiyEmbwJjgHNrAekz9iqJtFFePN5DC94Nnwoe9kCquZ/os2oJt
         6bow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CeMHw4WyHNQiRAtSxtJxxEmrVxIIKze7uBzXjPosNUU=;
        b=YUvVfJ3vqbobWw1A1ywIQ/C+SUf/vCDRgalNOyZ/tTt33j53Hu4SzU8BO3+cm5ori0
         4sFXs6HHWJAAt49c+CaZsMlYkG27Wn7fQQQunV1Mqynj21gH4orWUNs3paOVN64bx/Uy
         /g4sB+nbN4m27365M1mW9Qgn7A27HYriyXHMdGI2AsigKAMg4eMRzzBvt4hRyNMvU9EB
         UpXC/8skm4R4BOC7r2QWJ0LJHSdswnwDlpX6ljKeDV5ykA+RCkkKrclePGNHtuzQ63F9
         /Gm7Vr892+/oRXTIJnwAoypzPXmn5lGybsiNqGVQYjKDd0lx4omaYLlGGvY7x52s9ocn
         aCsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UO1WL0T59dCkl8r0MBYEqiw0Hygbvp7eapOq73b4j7FyhfGin
	tEonCyh3KxK2RdeyR6MP4wk=
X-Google-Smtp-Source: ABdhPJyGaEBWOADbX6EqPPTU/bnaj87R5Tj5TxKSdrOVwqqyR+Y36FTuunWWSpSsJhyit5kPIXBqmw==
X-Received: by 2002:a05:6214:1744:: with SMTP id dc4mr10100033qvb.40.1616172825620;
        Fri, 19 Mar 2021 09:53:45 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:3db:: with SMTP id r27ls3180128qkm.5.gmail; Fri, 19
 Mar 2021 09:53:45 -0700 (PDT)
X-Received: by 2002:a05:620a:1277:: with SMTP id b23mr9821277qkl.457.1616172825219;
        Fri, 19 Mar 2021 09:53:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616172825; cv=none;
        d=google.com; s=arc-20160816;
        b=gJqkt82//zuRA3uvzES/w2Nx7uXnea7rSf8QFabWkmKmy2ienJOB4o4GKI1+pe46dH
         Li/1av0lm/xsNcz2N8TaNCOJ+KE7V9CORuWms/URIkD6jH1YA0U9I7mce7M+Tl5hqE31
         nAjm+O/8ep0O6fd9x8upYKZjMPEwuLpHtCCY81mOM1GTTTQzRXi9i/a1S6YAcg4ggSee
         0bkdp61pKW7ZDpKzxjpQ+fKuuvPYKA4XvwxzYcIyqfBM7Ut0rX1XIZQSEisp5xDnaQdZ
         KdMMbNKZuQnsgFhXw40SAIQr0kcyi5vCA+uhOGc25E5GEt1ciW/mYxK8/i3MD86RIQRD
         L9oA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from;
        bh=lzESCQTpy2Uq4f8nQRq4rIlNqsJXAgH7c787wHf1VwE=;
        b=qx/oGZO8riIM+3iOF8dwyHxrx29MCvHo730yDLzdGbEIFoh5YFRwWmbFoyeoc4LFTT
         kIW/JFBpRGu5DRQgTo4+vsGS85vgA3/m5Dnz9EwGIzhJAOrB+HqgRmTmD/6Qccy66jDq
         Ulm9/LDnEnwL73bkczPjUysJwG+S1qRzpmPY8FynoDtMEl6vzxbIO+dvYoMHb0Ir3Vwj
         fdeM8nVqVV44aStHdTJWMR2Qs97Ia1FPxVTMpOY7ZUcjBMX7/oT2SWPTLqsdYpdx7HQZ
         XDaiP14jk0wRbrcDyiquyHiQls7xkrOEkXrR+n+0B0fm62hxTN8xYA/bqKBdzB5OhZ8K
         lNfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andre.przywara@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id b4si424026qkh.2.2021.03.19.09.53.44
        for <clang-built-linux@googlegroups.com>;
        Fri, 19 Mar 2021 09:53:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 49F52ED1;
	Fri, 19 Mar 2021 09:53:44 -0700 (PDT)
Received: from e104803-lin.cambridge.arm.com (e104803-lin.cambridge.arm.com [10.1.197.64])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B68E03F70D;
	Fri, 19 Mar 2021 09:53:42 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Shuah Khan <shuah@kernel.org>
Cc: Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Mark Brown <broonie@kernel.org>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [PATCH 01/11] kselftest/arm64: mte: Fix compilation with native compiler
Date: Fri, 19 Mar 2021 16:53:24 +0000
Message-Id: <20210319165334.29213-2-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.5
In-Reply-To: <20210319165334.29213-1-andre.przywara@arm.com>
References: <20210319165334.29213-1-andre.przywara@arm.com>
X-Original-Sender: andre.przywara@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andre.przywara@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andre.przywara@arm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

The mte selftest Makefile contains a check for GCC, to add the memtag
-march flag to the compiler options. This check fails if the compiler
is not explicitly specified, so reverts to the standard "cc", in which
case --version doesn't mention the "gcc" string we match against:
$ cc --version | head -n 1
cc (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0

This will not add the -march switch to the command line, so compilation
fails:
mte_helper.S: Assembler messages:
mte_helper.S:25: Error: selected processor does not support `irg x0,x0,xzr'
mte_helper.S:38: Error: selected processor does not support `gmi x1,x0,xzr'
...

Actually clang accepts the same -march option as well, so we can just
drop this check and add this unconditionally to the command line, to avoid
any future issues with this check altogether (gcc actually prints
basename(argv[0]) when called with --version).

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 tools/testing/selftests/arm64/mte/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/tools/testing/selftests/arm64/mte/Makefile b/tools/testing/selftests/arm64/mte/Makefile
index 0b3af552632a..df15d44aeb8d 100644
--- a/tools/testing/selftests/arm64/mte/Makefile
+++ b/tools/testing/selftests/arm64/mte/Makefile
@@ -6,9 +6,7 @@ SRCS := $(filter-out mte_common_util.c,$(wildcard *.c))
 PROGS := $(patsubst %.c,%,$(SRCS))
 
 #Add mte compiler option
-ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep gcc),)
 CFLAGS += -march=armv8.5-a+memtag
-endif
 
 #check if the compiler works well
 mte_cc_support := $(shell if ($(CC) $(CFLAGS) -E -x c /dev/null -o /dev/null 2>&1) then echo "1"; fi)
-- 
2.17.5

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319165334.29213-2-andre.przywara%40arm.com.
