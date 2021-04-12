Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBYHJ2GBQMGQEABHC6EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFED35CBAD
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:27:13 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id 5-20020a170902e9c5b02900eac913a9adsf3173671plk.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:27:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244832; cv=pass;
        d=google.com; s=arc-20160816;
        b=FH1uriFFnal6h8pwMuDFJUWCafrTCW/8/zUMziJLesk+mN+47y6V/y+tJ4AVvDzALH
         3ZX2ZyweaaiWU/jVo1lw70YORSHvQl3SMlRH9kLDtaL8nsujsKsW7NlIiiTMm6RAcOG6
         55OlS3SW1DoXaiKNaWlCYighViGPDuZpIZi0d6CJ7oCUlQm89r1gJ8/TcPI4EPdz/9+q
         ABn17KWz6Yjxeoqszd+p1k441g+JDF6Afkb09YxNgqlw2dfWHg1k6yQba8eXWA/yBxzv
         G5HcFWltstwWDURK8NUStAy3HRTRkWbhzTm4yR1FB05WF64UglYRcTOUq6wGWBI4dNIS
         kaXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KIgN67CMAJCZ0WJGzwwKqWwng348joCynEAp/vXUqFQ=;
        b=e5ZPeHS1rtdZTAz74g8hcGpayDKzNwhFcwM01nmArZ9AUxEG8ujpms8z7Xc36SBJIo
         mBkswSix/5xg/GHbBdiO7T10Jgkm8xMTH1mSeVnEvM7oZeOpNg8eGJTWSgCsSmpMdLsG
         uRXi7FKC14M4OFJCENuWCcInIIKjTfArW3PubFPDgdx2Y/LN1IJXwqwY+lNdED7YBC4x
         c/zIFzvjhgKosII+0K2KUDQq0x1fCZNCBRfZ5MyLajQ2hexMgqUkl0FsA6q0t1OTz4gp
         SiOo+xO6rOyxcxXMUlrrEfIpQYGWcIozXNdfAdx3f7wxLscsLZAMRsgyWwviqNzWBfiO
         AAoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WliBzPiE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KIgN67CMAJCZ0WJGzwwKqWwng348joCynEAp/vXUqFQ=;
        b=lM9VS/i+xakmC0AHhAhtkdnpBHOB4V7XYCy9XfaW+zlXJaHAHpmrjsfpowptmSjQyO
         vdE9/p65rEe9+Cn42ZkUM72YeRixC0B8QtgerclhbPmpQDxxQ2zY1rAnJuh4i2QvCNCf
         NJdpjZQqsTmA42cbQJsi1C/g+icewFXZWONiwNOwv4/zrYMLJa5nXFoBgvJPlPT1FrgW
         CghPp4vcZJixcO0dE/OQmTtpO6FIkNefrKGy5D2b36E1MV8fpdXtSf+ApnayitPRfEta
         ee1ddU/uz92NvGXPw2tTcGPrmouS0XQL6cgAIH+sKEZffNkdxQaDNUt0oMkL4MSCCrHr
         fmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KIgN67CMAJCZ0WJGzwwKqWwng348joCynEAp/vXUqFQ=;
        b=sm26B9VVcv+J4JpSMQZdvczcEJZ+S6r5rcybIddTIkNzXaIxC8H2SDkArLi6meuwKE
         +so5Uo8xraJYIXPasL25Xz6Q3+KkTU51WQCHP7iE90ItGKK9ZccqG76q6HeuJqJOBDRv
         VLQSGxWOhbfqjEY7EoG2OGYNOvOWwM07cT9JPW9SX6sxkx2u0jS5FLW4czSvRUv89es7
         hhEaGJRDKv/FMLDCYjxv0sn7QqRd9xciDaeKVqwsi+IOfMWiCBjhEF4X6k//ZVXdYF00
         jUfPqQe+3GS5G1jSOo8fRtVuJ7vjNm2wSCcxapSInNGBWge682b4h2x/iCautELVIY6S
         ViUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wQ+sg9R72N2VxS5L4X1tfCDZZoX+1QiyMySPmuCEZNxhck4pH
	02PC3jjYbXjbWAFgfdNAypw=
X-Google-Smtp-Source: ABdhPJx+jOB6gly2OHxFhGqLmdVBa5fHpCWSTTPxNnem+xW5Nr+1D81gmXFAHdW5KPFoRpaTuooCDw==
X-Received: by 2002:a17:902:8504:b029:e9:7aac:a092 with SMTP id bj4-20020a1709028504b02900e97aaca092mr25174228plb.12.1618244832410;
        Mon, 12 Apr 2021 09:27:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:4ec2:: with SMTP id v2ls4161195pjl.2.gmail; Mon, 12
 Apr 2021 09:27:11 -0700 (PDT)
X-Received: by 2002:a17:90b:fc5:: with SMTP id gd5mr28998099pjb.108.1618244831835;
        Mon, 12 Apr 2021 09:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244831; cv=none;
        d=google.com; s=arc-20160816;
        b=GvU12/CZ0rHz1g4iynJVoM+0zuMJ5QjgR5d7h0AZAgG/BlOzNNJkD9SVWMwqf046bT
         CDup5sEUldQdoNO1o10oZfqkL0Oihf5AO8qmu8hJ5rl/9+Yzv4K7eEAKn/c2qndQPCDX
         okun7cO/LmAbz/SfpTv+vVBsSUJYwiHnGHraqFrYjCMEYlq+TB9JlpcalCLlr9UKmW2p
         z9aqUq5CuJGGd0JV4CLgKz37v2yOmzpyMF6wPsGd5imrzELA1MW32dNbNNEGplrvdgys
         ppvftrElBk17ioA3v6KS4rXzKTtPUnm+1mJB+9GwP8H1VAfAOhwF73I30WAYcOeDmmeT
         F9Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0BPMkeRQuBphuD9QWLURL60mzeAamGiZT8Y7i4XsGzM=;
        b=G9g1qDUqpzsS0s4sYkbFa6tGclAi2gPsMlXKsAimh8TnoAtKS5gUzJQVxrUdfwxShV
         LEksfSo8c+52AjgVY5K/grfoI9FNNjGVXjvJ5E6/EBPoBMn39ZcpzIATh6ewPuL9H7Q1
         NBkfAt46Tx3bhv9p6bX1Qkjh8d3Jud12hJjdKRO//0dM6efq9Yrf0uUD5wJDKDHBEAoP
         eSELADnay71zrZIoT2DeNqVYic2Mrfm6zjloEeo02Fs864vBLT3Cy2Op+J+A8Fy9ZDuC
         bZfmc3suc+RBIQNEwIAtnDQlVh5rxqXUweMq/LAnBO/GylmZD++W+pYhWTzz4ObCGvaj
         /Nig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=WliBzPiE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si951285pga.2.2021.04.12.09.27.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BF60D613CB;
	Mon, 12 Apr 2021 16:27:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 05/23] ARM: keystone: fix integer overflow warning
Date: Mon, 12 Apr 2021 12:26:46 -0400
Message-Id: <20210412162704.315783-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162704.315783-1-sashal@kernel.org>
References: <20210412162704.315783-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=WliBzPiE;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162704.315783-5-sashal%40kernel.org.
