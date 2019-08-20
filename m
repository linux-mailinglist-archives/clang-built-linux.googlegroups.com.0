Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYHR57VAKGQE7LKJTAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 570ED960A4
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 15:42:57 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id a26sf3965043otl.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Aug 2019 06:42:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566308576; cv=pass;
        d=google.com; s=arc-20160816;
        b=WN0wLs6C3mhNjbZp7hw+1tSbTNmWt2QBhtq1djazv9CmSZHYNcqeZfX1keZ7Vq+8JD
         +gNIksaTDJ6hv13sFbG7pDi8ov9ix9KZUTVxvb5DBJNQrG8rA0YQAcw/1EpKA7hM+R04
         9jf8qZsAjQiGVSShBXEor00LxLN79yZfaAR55KsfYjYyE0hfjllDoMIWKO3AO/4GEsni
         BCW4dsgwuiK1GVX3suEtpZ/hOiejlIo+xmYy5gKALZYXmFvrKeuDjhehas3TxScAigPP
         o84WMY0rPA9ARNZ2FeNlioT6MLjmRqJNtR8f/LBK+Jvt8wMtVg/onCTDg3nz8KFTHTHJ
         I9WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=FwXLE2AkgvPsVyS25g/3yZnqkalRHbIlDb3FsMlVCzE=;
        b=leaNDVEsfm9U+4PJTPvfOlfFWw1uI9nbIOeVl1J2cK6yVfDXFRIaGdl423OiNTnfvu
         7oduzjd1CHBIvEbWbDG3lQU5hDqjWjxW8iC/6vh69uaEqaFWnevKpabYz2wthYmTZphj
         4stkMkWfpH9IVB+mulaMvw1jABt4Mzc0tOS1yfMT2GK68ZFPj8gLeIf1cIObEuJj0KkO
         eJN/Hpl45lC8oLfIpZ+V8Vui4wq+wOx8FMBcYzdlxWnUbug7i7wva+rq1N6RtdFXshdR
         KGHNp7Mu/U0DXIostP3iRah+lFx4xeM5XMbsqAGyE7iYm+nY0IY60Vp5gsH3oOg26Qkx
         vR1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="R/Lp2AlC";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FwXLE2AkgvPsVyS25g/3yZnqkalRHbIlDb3FsMlVCzE=;
        b=JL0HLVIGpIe+ancskrPr31SlA64GGOYLtaR+YXIn+CbMC37hmzTF8k8//MzdRLplK9
         er7+3o/l3H3KxAUVCAvav2GBVORgXKfvXb7dPLl64JqsyOsfkOZkXlSzbE7nbhIElanj
         gXD8NcH58KhUdIXVH69fkIZSvwIVePoIgs5vu9YjPiNBEAY6mhIgGLd1tW1qgRNvbArB
         Ijza7VBZHgijUqIdOvy7zJH088grorv6eGv3Ue8YWIvG2CiQLRT91FgL13PuRfsDFMP9
         tATAF+qUYpseLLk1Y42uawctqqyCzInKTCpZLZTRFoFaJZYJ/8IZ5fMudJYGgLMboCJp
         IYJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FwXLE2AkgvPsVyS25g/3yZnqkalRHbIlDb3FsMlVCzE=;
        b=oSA+5gml0HTCEYw3i1Q8VvqUea1ScRP5Lc7kqYA+CL0+gwRDVOxvSGta13FylSrODk
         4j3aObbRp6T8PI5UcE+6jQt6lK/DMvoHXWBJl0lyH29Pl3qX58GVkgJXByBQPwKIIUhU
         CX8L2qWjojDKrUmerWAdQpoCO53Jya5TQsMIXOUxBWhZ6kiBB49kQ5q7kE72hQGXTqbM
         WUq3gb0K+T2Xs0C4YgEkOHkX2oRnOKQbhNQNbDFfVlQ+Pkr7xqUl8t4AVx4kJoxKyss+
         gfSt2utEkwwwJJpaziylnNq5quF3kWy7xn7bHka5f9HQ/sEYZIrg0Bi2QY4QAQ6hGPYm
         PNAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW87oyDWejODO0Yhz2yslV4W2tymscvEwKlkyTBs0Ni56gp458V
	YfteDIFygeK7w21ngX+vdL8=
X-Google-Smtp-Source: APXvYqzEsMxLLV3gUW8O05NIcy4Cb4zbSmk5GGFM7CQXjgQuZXfpT5ef9I8iVz9xJT7hTLsXCcZReA==
X-Received: by 2002:a05:6830:1311:: with SMTP id p17mr21658189otq.2.1566308576229;
        Tue, 20 Aug 2019 06:42:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:482:: with SMTP id 2ls3719302otm.14.gmail; Tue, 20 Aug
 2019 06:42:56 -0700 (PDT)
X-Received: by 2002:a05:6830:18ce:: with SMTP id v14mr22754418ote.199.1566308575977;
        Tue, 20 Aug 2019 06:42:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566308575; cv=none;
        d=google.com; s=arc-20160816;
        b=tYHJkdEkRcaE138TsQaJImd6kxK1Dn0mRz7eJYm5rILkOAJCsXsfob0HD861p1UFNB
         h/SjGFXuyYA7z+tfIOx4g7eDe8V7U2eEEQDDmj526aD/BOoGvGkD87oIHVvZ29EVCkep
         gJphAgqkdextRYClF6CwEIhKE2vo+yby48MqCmmScKUhKBps8qASRfZVCG02tZyq/iq+
         qu+TQmGkHNc4pry5zpSRWGe0NHMHFq9PtDEMhuvXGREq9h9EA9fpAvyzwEHV0IWdIGlI
         3mO4cBFJ9mZvsExzX6n00qb1KLSCLoZvR3xeWE34xTqioNoyhdqqLSAA0ufa8CGXenuv
         zHUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wsYzkkekcS/bxZ8+yPnfstfrLZFl9Dv7mF8YWmf7624=;
        b=QBQ0ogkTYGbg8tc5BHypiNojJ9KAdu981bFBZTLDhCoHPZitpKq5M9xxU5zGcItwPS
         IpfkqciHI892TuHYPHcsEx7+Sg2i42+mcWs6g4NWRQ6VMQIlCJaRc6PEKG6TTxT9ArPZ
         I9gzKHNJF6fdFHF7NIOeTrUBYfbmdSAa9i906uHZluEVp5v4+gECWCs8nX/9013+gxdu
         JKbcj65fI3bAUlIOjCFGt1/QIwvEpMbeb4hwUP2mnihrrALNBIP33lWqX/B7dKi8XuKW
         MI4c6AD64Q9cvAJkGoDq4DVNr/02idg7SMKsKTeIYnvZ0ku3Hxhvsl7noJpHRhX/2HRn
         SLRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="R/Lp2AlC";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f16si754192oib.0.2019.08.20.06.42.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Aug 2019 06:42:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [12.236.144.82])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6009622DD3;
	Tue, 20 Aug 2019 13:42:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	dmaengine@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 01/12] dmaengine: ste_dma40: fix unneeded variable warning
Date: Tue, 20 Aug 2019 09:42:42 -0400
Message-Id: <20190820134253.11562-1-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="R/Lp2AlC";       spf=pass
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

[ Upstream commit 5d6fb560729a5d5554e23db8d00eb57cd0021083 ]

clang-9 points out that there are two variables that depending on the
configuration may only be used in an ARRAY_SIZE() expression but not
referenced:

drivers/dma/ste_dma40.c:145:12: error: variable 'd40_backup_regs' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs[] = {
           ^
drivers/dma/ste_dma40.c:214:12: error: variable 'd40_backup_regs_chan' is not needed and will not be emitted [-Werror,-Wunneeded-internal-declaration]
static u32 d40_backup_regs_chan[] = {

Mark these __maybe_unused to shut up the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Link: https://lore.kernel.org/r/20190712091357.744515-1-arnd@arndb.de
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/dma/ste_dma40.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ste_dma40.c b/drivers/dma/ste_dma40.c
index c2b089af04208..90feb6a05e59b 100644
--- a/drivers/dma/ste_dma40.c
+++ b/drivers/dma/ste_dma40.c
@@ -142,7 +142,7 @@ enum d40_events {
  * when the DMA hw is powered off.
  * TODO: Add save/restore of D40_DREG_GCC on dma40 v3 or later, if that works.
  */
-static u32 d40_backup_regs[] = {
+static __maybe_unused u32 d40_backup_regs[] = {
 	D40_DREG_LCPA,
 	D40_DREG_LCLA,
 	D40_DREG_PRMSE,
@@ -211,7 +211,7 @@ static u32 d40_backup_regs_v4b[] = {
 
 #define BACKUP_REGS_SZ_V4B ARRAY_SIZE(d40_backup_regs_v4b)
 
-static u32 d40_backup_regs_chan[] = {
+static __maybe_unused u32 d40_backup_regs_chan[] = {
 	D40_CHAN_REG_SSCFG,
 	D40_CHAN_REG_SSELT,
 	D40_CHAN_REG_SSPTR,
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190820134253.11562-1-sashal%40kernel.org.
