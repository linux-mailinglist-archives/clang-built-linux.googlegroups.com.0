Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBPXJ2GBQMGQEZDZ2WRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C72B235CBA9
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:26:39 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id m19-20020a0568080253b0290159f06ae389sf2874223oie.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:26:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244798; cv=pass;
        d=google.com; s=arc-20160816;
        b=NollucwMwLrkjsMqsLcYEWEGaU9DuPwyWHn4auzN1/WUZKMuyTi4rA1cAHQ3fiLeVF
         opNWq+Sz143pnDmM0yWrfHaLpe+dpcPcvJxNP2g017+mlXTKmJWVGqfQy2NIgm18TorU
         NUmOGJlp0ST8BerzzHGzyrvnrtnhR0DtjRwj4oIetqWiZdwgNAbwNa0pJ06vO3SU5ta/
         0oiQCx0RGWZGRI0SxyK8Aj4TNnvmVWXpZVuJrp6zx7Sk/a6pWuT163NDTVVQamcSQLHv
         ihttRhS2Of47b4h6H9c2KT84XCpeXtfjl1WXiphPJixYZRBrSEnzcK64hdk37ogpMBsP
         +Zcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oyfN/frwBunelhO8sKQRWd12BrWb6bUA6M/k5UofUIA=;
        b=fHwvY29GmbDZJwvhZC5yE0BdTfzzJAECKs2oNXaThCKZ1/XMGX51VZAbVvO8yyT9xg
         mvYk8d94jxTD4zFQxH2IBZ6GBw4JVN+u0MINOofElg//8H9UUf26YtLrJW2zi1QNl/sV
         qDfvd+baVVnWMo89HvNOYZ5UECi5ICucY+6f2zdHqhX3MgTFwefLZhv5Joca8GUrYRJ7
         eF3C1CuRZnCa8NanQB/Jk4tqrKfDA1gf0k1pu+NLbGoLb/+mbY490ch3Hzmxi9R4uFDe
         jcw9lrU+hHUQRzs3sryGt0taUq/8a4K6CbZJJCxe1JYBdcPq6BbUPqfT5q+h4NgV/TKn
         XTzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="muCagJ/U";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oyfN/frwBunelhO8sKQRWd12BrWb6bUA6M/k5UofUIA=;
        b=D9sdUjJ/VbcREBo0Y1DAtfuo5vvqXM7uBZ4mITMCpJkCe3ZYfDFR7CaErk/iHdWiWB
         yhKPrkOwIDI9kD820cljiACYnpv6029bPZShIIef2d/0DXoNTz3IyHiR/ZXPxecWsXdo
         ytm/17ds+0u7MXxgznh72RC0/tqvJa7uSWsFdb5mNLogTNz+3C4Rb3NOUQ/AAcz0jBgF
         2HgaquZTLuNAFD6nvtuvar0zDCFedkI4i8oRKvVwDDKBIRVwvnSJ/Dw9nZIauVHzke+o
         0HzpEkjUcPrFejdbtMJeALkDbiP/MtyB5fj3wpC966xE5O24VGvHNc7WYAq+wGN1i1AF
         /xSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oyfN/frwBunelhO8sKQRWd12BrWb6bUA6M/k5UofUIA=;
        b=LTYfmA+/sDGFfVRlga/+awP9SJI4P4wHgOOjVy5zRV1sKEx5va+TVq8itLYChUrRbD
         uU3inD1eKyJetUYDccbr7jGujNdE+1uSw/nb+PcqIT4Hzi2VBLnD/pnMLYTuLMZF/iDi
         GEL9r1D4rasZ/kwkZPkBPg+F0N7OvvQFyVdplhz1+FWcGHbCyuZRMD1VKpUhrFtQ9hTb
         5coAN3Hqv0Z2heRnwWqvrZBoh3ceGXyBWbDhQmEZBk/vv7WC6B8A1sz7Iu43W07OxDM6
         ihbNLSk3BEw3xc7NEaiXX5UXMBpUfNTRsR1lTus6U8jV8mlfql7FLY5M3s+RL4eJi42f
         7oQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xZdtTiqNtIFuDp9AjXkJmpaPIbjN2mmevVuMZKSz1yhI1iqoW
	CiH2uurJAoRVDxI5MiOl6+w=
X-Google-Smtp-Source: ABdhPJz08spqQQ/IzZT7AkAA7lvxm4rUO+wHn4rLbR/HeBakfEKIBsLAqo7haArsEdli1lu0FpTq/g==
X-Received: by 2002:a05:6830:2487:: with SMTP id u7mr8490659ots.171.1618244798721;
        Mon, 12 Apr 2021 09:26:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dc45:: with SMTP id t66ls2689825oig.1.gmail; Mon, 12 Apr
 2021 09:26:38 -0700 (PDT)
X-Received: by 2002:aca:3007:: with SMTP id w7mr10096533oiw.115.1618244798400;
        Mon, 12 Apr 2021 09:26:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244798; cv=none;
        d=google.com; s=arc-20160816;
        b=zFjj+jUxdSC9iNpXEqiQ0QK5rXSEW1dw6gsl9rRrC2HB5k4SWJwthJZiDgwyV0ZykP
         AXDbWypTE54xotJGALIE5HztLWyh431bGWaD73kQLfuWNtnNZrhZfPlzmbevyqxq69TM
         hQMYYKsbhn/YjY0ZEHi2P1fNPNSa9TjZFJUVhtObQVYKOwpKJWmTP3iFai+2M4yKr+na
         sfsvbChrTbD+8pqeOAFIxSJYBwpxIyAhLW3wXwj0BwrjEVptJ3obZ9/fvd+EwWobn84T
         LZDTbT/UfEEgJmOGn/cwssSJo7wQAfUOmyPsDKRzr2xjz8LY09ot7EXEWfjp1/Cyh79i
         1csQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0BPMkeRQuBphuD9QWLURL60mzeAamGiZT8Y7i4XsGzM=;
        b=wIUD/Su+WM6sgr5NQNsbpPOeA6u2MMvAWFgPbNSlRF90C5mraFjnnlALf97c0Aoo0A
         6F9fGpJHTR3F2EmLtYxpEjKp8vZq6MdBxkgJX6TwTa8qNRpoNBHla3vfXm8VZQa+c2YW
         uBFLvOBeGjAB5w/TEqsHT/aeMIV7P6NJIIcBLgjU/5qJKYKzZaDawrjzJXwnAI/UZyWF
         Tpc9pLUh6xwEXkss+ehGhbBXriHyqzAIic58KaIxu5zqWnOecXlFc4RbY7atKs1KqmHL
         iRPRar7v/eSEvppcljCHXV/I7ylTs2tvJdVuEKblZbOc75KjJqZz4FozeVT9h0nddk8S
         XVEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="muCagJ/U";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k10si681053otj.2.2021.04.12.09.26.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:26:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CF109613C2;
	Mon, 12 Apr 2021 16:26:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 05/25] ARM: keystone: fix integer overflow warning
Date: Mon, 12 Apr 2021 12:26:10 -0400
Message-Id: <20210412162630.315526-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162630.315526-1-sashal@kernel.org>
References: <20210412162630.315526-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="muCagJ/U";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162630.315526-5-sashal%40kernel.org.
