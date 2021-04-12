Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBG7J2GBQMGQERTIQTNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id A048035CBA4
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:26:04 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id w16sf831514uaj.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:26:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244763; cv=pass;
        d=google.com; s=arc-20160816;
        b=B1B5WQSDRp693P70KGJRxFvb01MBPWvKLiQJHiDAv6fAPy6xeYW1bRWIQDZPN71/C/
         YRFpNc73rGpXheb6Q1CkQAQ9i6SYtyfyxX93vULRMZ/Shpi/gIR2p4RJTQn1LQ4u+IKb
         WFGS9l24DV7JiKru7bz68F2wwJ7pkkziM4fvTtCn4ZFYNVemnus+Zpy/07omp8dYVbwr
         6oTqzC5yg4ybBmXMgwNSx+FvkiBAHjb3BDgo2mBWXiznx/YdTTfwXgOL9rphs/w4nKX5
         zXYism9c4tUBKbkfvX84gkSb7MPI37Y43af9RSRoN9HvEaCym5pm8s5WLLI1snZanIT4
         U8kg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=M3NOByYAJPyY972yCiFTZ+i6C7FHnMh6+n1b6OrOXl4=;
        b=PsMlxGoHP619Bg51Fmm9Rm+pV9riW2uCv5uaZV+guDxoQxP8ZnUGDZ1/7KseE8ngjU
         bALjTBPqas2KwDMCd3fO3C029JOIs+lZLJMRQObcYUF7NjOc2rk7nmYlTdu3zvqAvavx
         NFO3PGxdxwYxEQ4sU5uzky/JYLKfaEUR/4uIQpfvIO7jp43PJXLAsihC8GK4UL5b6Hke
         PaH1cWAnug1BvyX/jvj3t44q+7Q+UTRo8SDjqcrAkLbF07NQ0yyU/bj9fCUPQZqMokG+
         SZ5bDENXQkYv1OWewKSkFmAY1bsWQ+KEkRVbxqvAIuhRtT0cd7MtNhw3cViROqLUUHql
         4bsw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="A/kh9wvM";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M3NOByYAJPyY972yCiFTZ+i6C7FHnMh6+n1b6OrOXl4=;
        b=OpieH5TwLqRSRTL/9J+/I9lU09EPc596iehApGNAG41X17NoHuAPbKulEObHzkMbpU
         mgMLZrH/vW27MDB0G2PubiTWIE19gjHp11+XrnaV+UA8+9L12pq+EzUyj8kq3UFWIEMp
         xQA610x8xIKFpSJH0cQ5AYcU8Gzwj0kg9yoAyDF8V08TSnPmfri2J63dL9eeYK2k5/n3
         VOeByoQJ27/lsPNFiWha+wjfMx4xNpM6KIsepVcu7T6CIbilCKylw3pTmB3bNM/bsiDi
         Z5YN5tBh6dDi1sdePiX3dXi7He2IefGrzHcbTb318rAGki4CQVC2BWyV6R77dcRbUoce
         DKvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M3NOByYAJPyY972yCiFTZ+i6C7FHnMh6+n1b6OrOXl4=;
        b=hye77UJ6JKC5XQOOIyCvtZd65KT4KtY5Z9b2SeUQTlpfeRfG5RhXGsSfFE1MzBajFH
         fG1Pby0Su3bn31McYPHfLH37w8YyzKB5oz7olKeij7Z8pG76PCUzhTqFwpcVo9y6zA5R
         iYz2LOOhZ7j9iq4+BbeXQQ7Zk1BC4Wxs/6xXEcjMlhvvSJ58se7h11lHq/AHjrY0uwvk
         SvMNUKPy8tc7JbZzC6nLmjksTKHe6X3Ro63bR8Gz34xHhpTEODzZynSi947rQu2u0efj
         I/itmWfgd9S3pRvMpqWI5mXsXPCDYdOGCZDD1FcB8gsW+BomgiXnY0gEhE2yqc2OMg8o
         Jr/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ObyuwWCjU9WqllrWH1vyvzdkLbpvFmhwsd4Yg7txZqe7KnLlX
	j7t5bjPiMofIIH4sYLHuYAI=
X-Google-Smtp-Source: ABdhPJzrF8ug3TG5Mftv1fCVh4Z8Yf+fpzdSHCF/tYWWCqg+areP6N4syvoCXRD9uY4Ba6ZLasti6A==
X-Received: by 2002:a05:6102:32c7:: with SMTP id o7mr19240960vss.20.1618244763661;
        Mon, 12 Apr 2021 09:26:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:555a:: with SMTP id u26ls243073uaa.1.gmail; Mon, 12 Apr
 2021 09:26:03 -0700 (PDT)
X-Received: by 2002:a9f:31f1:: with SMTP id w46mr19894329uad.136.1618244763182;
        Mon, 12 Apr 2021 09:26:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244763; cv=none;
        d=google.com; s=arc-20160816;
        b=SIUnfr+DqdE/ThlYE+oUxvFeJ1EpNY2DviKjJ9iUIFNgdMslt5DvRBNU84zVDJhyx6
         4Zt+eSm9GetXgQHOxNeY/eiMeEURd2+G+dicUhQ3ZnQBqx/ZFQGpfRUGZIwjPxjGku8I
         KSwSXKjkKhgUuIBjevCTSVlCCnRXnqqN0Wt0l88akkRm0woDxxNs+O7GwMasjpTS/qam
         yF1PXIl3eq+kwvBEy36jUR3z/L8ldazJ7WDm4Ib0rQcTvBoLiblXMUe3uiYjxUKL45Qq
         hz/YJyLNJJrC0QbQ0ctRGHGan3vOzkkc4EMvlsZfmAp4MI9msFE3HRy3josSIL4WYjuB
         9peg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0BPMkeRQuBphuD9QWLURL60mzeAamGiZT8Y7i4XsGzM=;
        b=KPhbIZJ6zM6eUQ99em30kXgMViMM6a2r+rao/2cVnJNfs3/Jvj9eCKprNOt7iBdqCm
         vGVtWPVeHn+xxLbAvr9t9jdjN12tO5WjHJVQIBggwhZNw6UMgIUa3Kx9e+caF5XRmbVD
         5UvIAUbu/P5Zv0gieV2OwKO7A5OpbteVUHiUPOAaW8FYCifZjtBST8xTF6y92qDzjAO1
         oSQDMnZCgyayjCZj+W9zc+4KryeW/Tk8aqnuF2rh3EopmeyEUdchYJg6enDKcAjzZ6X3
         Wp6gpDcAjmiUhb+aFRWgIe4ApezOSTTTm21DlBBFp0eBIPtAGAgN60QV66/HISg4pdUD
         JbwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="A/kh9wvM";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t16si573069vko.2.2021.04.12.09.26.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:26:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6656E613AC;
	Mon, 12 Apr 2021 16:26:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 07/28] ARM: keystone: fix integer overflow warning
Date: Mon, 12 Apr 2021 12:25:32 -0400
Message-Id: <20210412162553.315227-7-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162553.315227-1-sashal@kernel.org>
References: <20210412162553.315227-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="A/kh9wvM";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

[ Upstream commit 844b85dda2f569943e1e018fdd63b6f7d1d6f08e ]

clang warns about an impossible condition when building with 32-bit
phys_addr_t:

arch/arm/mach-keystone/keystone.c:79:16: error: result of comparison of constant 51539607551 with expression of type 'phys_addr_t' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
            mem_end   > KEYSTONE_HIGH_PHYS_END) {
            ~~~~~~~   ^ ~~~~~~~~~~~~~~~~~~~~~~
arch/arm/mach-keystone/keystone.c:78:16: error: result of comparison of constant 34359738368 with expression of type 'phys_addr_t' (aka 'unsigned int') is always true [-Werror,-Wtautological-constant-out-of-range-compare]
        if (mem_start < KEYSTONE_HIGH_PHYS_START ||
            ~~~~~~~~~ ^ ~~~~~~~~~~~~~~~~~~~~~~~~

Change the temporary variable to a fixed-size u64 to avoid the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <nathan@kernel.org>
Acked-by: Santosh Shilimkar <ssantosh@kernel.org>
Link: https://lore.kernel.org/r/20210323131814.2751750-1-arnd@kernel.org'
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mach-keystone/keystone.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-keystone/keystone.c b/arch/arm/mach-keystone/keystone.c
index 84613abf35a3..79ff5b953431 100644
--- a/arch/arm/mach-keystone/keystone.c
+++ b/arch/arm/mach-keystone/keystone.c
@@ -65,7 +65,7 @@ static void __init keystone_init(void)
 static long long __init keystone_pv_fixup(void)
 {
 	long long offset;
-	phys_addr_t mem_start, mem_end;
+	u64 mem_start, mem_end;
 
 	mem_start = memblock_start_of_DRAM();
 	mem_end = memblock_end_of_DRAM();
@@ -78,7 +78,7 @@ static long long __init keystone_pv_fixup(void)
 	if (mem_start < KEYSTONE_HIGH_PHYS_START ||
 	    mem_end   > KEYSTONE_HIGH_PHYS_END) {
 		pr_crit("Invalid address space for memory (%08llx-%08llx)\n",
-		        (u64)mem_start, (u64)mem_end);
+		        mem_start, mem_end);
 		return 0;
 	}
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162553.315227-7-sashal%40kernel.org.
