Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB3XI2GBQMGQEEP4XUCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id E47F835CB9D
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:25:19 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id t7sf2823890otm.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:25:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244718; cv=pass;
        d=google.com; s=arc-20160816;
        b=c3Jyl+/RHZ/2cjA9I+oA8yaj8APDWDGQVjz0aexG1FqeuRuMo4paPkoKhJfiDataFC
         AekIjzPMe4OIcmOplCNGSSSxaLvVc1MfM/4A6IYoQVZLdyNvANF/E07KRBpf6qE6T8ob
         SZBq+ZESGc4HGk/bGeJIYIApdO2nI9IeGKg+vjMqVnN5h8c0sozzL1Gg6Zd2HrGrgHkh
         kb1f2a6riuJj1ldUwYNGw37zzFo0xcXCK14XE1jxvHbMmkkJ37g4VOlyBEWg6RTudMVm
         D/A280jwEfhu+qrE1Esu9xdPB/zgGlwKdhusbgpxjwVrVq/5xV5NxjL04ICIk4shQqiE
         0aCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cEo3KqXrBdQFg2k0rhwXtx8iImn8pibpXQ1QnZloZWg=;
        b=N+YLIW22Nx/Db6uXEsODBLcRCQzlVwitEI6J6IWUq4EDM3bMwQ/Ej5YG90FVA0fZ9r
         tKFE1x7jrPmu3g2Qb3gFNYxd/xWpDrTRQG/8sn6/2vn3XxghClpTkQSNhloIWgkUyF43
         JFD21m5w6SfURDWuc5PsKkIIBXRU3kEsCQoUjvpUnl9cQ1X9jr0iym5Sww2nOAUgn0Aj
         xjm1eB1F91DMVH2xMxJaVz9JLm/ieh6VhvEa1dARoE4OYElU8PPIASxKxMwjqz2CZgu5
         MLyNs61jNiAVLhF0d6MOEn9gggg/I6TlXjYjtPNeINi1Vu6kQNwiT/h+Q3uKAGynF0xP
         bMRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vLF5juid;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cEo3KqXrBdQFg2k0rhwXtx8iImn8pibpXQ1QnZloZWg=;
        b=lGn+imZJA97v/d4zYgcVL/qazQtZNXfZg1y+eN8n+UHxc7+forf63LRuVfmLFBduQk
         MKvKVxl7UNf4RpjnnlvGpXVnPxifoZ3BfadTb7RQzEJXimRP6kbiFaZM4iMJl2p1yCK3
         RS8xMWV0V6UCGUiy/wGeMl2INprlYWyNUXOES4KFio87ZKIrMCKrWO6bi4yW1FRWkutH
         R/+UMclVQcSWAW6ur6yW/CjgH5cjinjEYaPYODkonnhuLCSt6t1aTLhE278aKpJYv8Gu
         qyKCRwBD5FROzeTdz2LZTX9VOpHPCB/ErcLZzCY/Fc06slWvUSxcubhGZsgn6JP5TvEj
         KOVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cEo3KqXrBdQFg2k0rhwXtx8iImn8pibpXQ1QnZloZWg=;
        b=oPWW5ogKOTPaeo7t9U3RhtkjN9EaGiDHrpwfmueXV7PklegELmIOXxeFeIDm+/942t
         Vglx/621yuxCAjibCHVbAmOjExBreB6ot3a/XewfsSTKo88MuVjOjOV66gpDHOj6bnB0
         kf/SGTYwPmJSWQ3zMEcnMR5OG+fPvEZrvC+ZdxHFXZxwU0GMDN55hwPOl5EVIadhO2Q2
         QhG/OKKYMtJrz0G+dKsWHbAg4FBXxLWq5bnNv4VN19XRyNIgbxg35btwpeE2oHRUSFw8
         iqMH+qPxBeEzgPCWq0TIKfH+V9iT5xl4ia+Kv2IF03NlFt+YGMTROhknR+xNOPRxB0gB
         toBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532GRIDrXDDsLqfdwhOV87ZaGWafgdaTN1w/JydFJbkrKoO+90JL
	BC3hWObUWsuCP3AbrcHxwok=
X-Google-Smtp-Source: ABdhPJzp2PyQRlJqQT3csAQPrAiqvTVvB+6GjZRoJi5sqO8aCJIYGHqH7blj0YUnbKY2QHHMZHDjdQ==
X-Received: by 2002:aca:dd44:: with SMTP id u65mr19694336oig.172.1618244718735;
        Mon, 12 Apr 2021 09:25:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:480d:: with SMTP id v13ls1984742oia.5.gmail; Mon, 12 Apr
 2021 09:25:18 -0700 (PDT)
X-Received: by 2002:aca:3983:: with SMTP id g125mr19847946oia.88.1618244718388;
        Mon, 12 Apr 2021 09:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244718; cv=none;
        d=google.com; s=arc-20160816;
        b=cZ6CdVfIhNrkxnyPkw3essCbNKpcBTNIghycG6wl477y0/YraQJw4y2xJF3PqgOJiH
         XX+XcTOJVTbMRUw23ezKy701Ea++aMafeS48CcBQmaWvpHDVR4shE7HEwqO8Nuc0DgpS
         ML7ZosX4fn26yJMI0ORcRFjBlYx9nkNcg5uhdSugWqkaFjCuqS6eULhPu0rMsxt0dOCv
         utshpN+PdU4LjiAxJFy9akU+A2rJpyX0fa21BTkDcztsIatO9gwhapGk6kofcaCUsM/3
         TswAfaiAtCxqy2HdMWDuIr6oEt8rMjcUroF0M7b2h0oRzGAoH6GxzrgY5F2ceHSPPo8T
         2K1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FwcIDdsegnGCXCqnBoygOLgRR9sFCJRpRFHHcyztj/k=;
        b=jXIlPz7GWuNBZyihl+ADg6U2nbMm0eQHgYerQBD2bNgihlGL3IxaeS4RebClSK9qI2
         CQdx9XpTIP8Bfv/W0wQa1zB/QWyHONmPH79vUbyVwkW4GZwcaJCCB/WOr1b/DQ/ugxx6
         Ykf48CbFqpClyY6/tQSnErLtmcVJePgRkjOwuCk32U7LUdw0s6uolmEuLXRdwVTxPn8l
         rCy051/YNerRIOQUUEmaXilsC7KLYyyDZC06erp0t7aFmflX0Sw1V1bX7JeGb4+l8luU
         WUJZzt5UiVm0ijlzFKeJYEkQi1LDvqpzxTZJMbBWuKLEQARpDL6a4cYSriLoXbeRsNsN
         4gnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=vLF5juid;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si854522ooq.2.2021.04.12.09.25.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D37176139D;
	Mon, 12 Apr 2021 16:25:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 12/39] ARM: keystone: fix integer overflow warning
Date: Mon, 12 Apr 2021 12:24:34 -0400
Message-Id: <20210412162502.314854-12-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162502.314854-1-sashal@kernel.org>
References: <20210412162502.314854-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=vLF5juid;       spf=pass
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
index 638808c4e122..697adedaced4 100644
--- a/arch/arm/mach-keystone/keystone.c
+++ b/arch/arm/mach-keystone/keystone.c
@@ -62,7 +62,7 @@ static void __init keystone_init(void)
 static long long __init keystone_pv_fixup(void)
 {
 	long long offset;
-	phys_addr_t mem_start, mem_end;
+	u64 mem_start, mem_end;
 
 	mem_start = memblock_start_of_DRAM();
 	mem_end = memblock_end_of_DRAM();
@@ -75,7 +75,7 @@ static long long __init keystone_pv_fixup(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162502.314854-12-sashal%40kernel.org.
