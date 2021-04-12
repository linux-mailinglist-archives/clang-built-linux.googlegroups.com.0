Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBN7I2GBQMGQERFGUKQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A2835CB6D
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:24:25 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id l2sf947970vst.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:24:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244664; cv=pass;
        d=google.com; s=arc-20160816;
        b=fDEqd6oqxNx6n8OzC0LcKW9r3siVd/CGBGJZjhPC2y0PYCpB3sRuxpKKutobldq9fq
         iyhNIvpPshfgfM7D4HV75Uwcc5mtII657PuAFvZhuXB4UPhtoQcRwRA1oK59Z3Yxd43s
         UeMs3jCKFNX2Y0KAZD39FXTdXKq0Ta58SgCoro+SjpPlwgoAxAIz11l4l7j/r1JHbmGn
         wC4WITUlDVF3H7H2eyyc0GLVpgqZZD8bo4/sDF8XejY41oRk0XNHDyXxybuFSCBjZx/M
         fpmbdWUd5SbYj6ZyzJKxY/XcHuzM8nHWP+JC1us0PRk/HManyXcKINjAjFF7SxDNzA4f
         1+gA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BOk/KvDf9DBQ+h/pJxlV8thrz2DynHuMzxJyz/Vm7hk=;
        b=QYatxdsDQombceSfWlzanIp95F52dXtYQB/sP/i2n2rEsgzrOK8YAN81HHpyW+50a/
         W75OGXwwEGiObvTLqkBHRVVcfpSv9DO8FjrhG7Xyb8vFLmqHn8/2mjtkXL1OeK+sz7XJ
         VTpKhpEruZ0YZamZ0mpV1HOcavDlQyrSEEkf/MyZ4Fb3ewYePfJu1qUaxLeITl+dvUvJ
         Cq5osJ9Rfa7rh7Gzqmmt8LmWa9NewXgq97rFprqcoArm5zu+J0coWaNt3eZL8fP5VpRo
         5ewy+z9xNDoEdHn2ZJFHcwj0iC1gfjb8IcvVt9vAy5Heh6TDfaZHRH49MXpFFHvsA249
         59mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="gAb/cXD8";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BOk/KvDf9DBQ+h/pJxlV8thrz2DynHuMzxJyz/Vm7hk=;
        b=HTXL25GR3DBOySAIyX0G2NKodlEO5lpaRGpYLO5+vO4qiORUt8vJU8+aa6h2Nvg9Mk
         DrNrnIr6oCnF+9PCtatm3nU6s/SBnDlzfO+mPnS2axHk4nc7awjeUUNMagCP7hnnUeMU
         M6Vtttk5carKmpxUsEpWcLZZzcFKaCB+xrYwOdnpkYSP4Ms6JQfe5j9LbX5Rx5BXAGk/
         gWvxiqSSF0CAiIH1mUgddwTF/bwdJuqZanCsuyDL8uMEcIBmyszub5iu1WH7H8pA7ZSm
         SMk+9i5i9vmU9snl790ir4mOB9778TOMXNCtKXtpivQcnXjRN/XIClN5m50rZDB1nTVe
         A7+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BOk/KvDf9DBQ+h/pJxlV8thrz2DynHuMzxJyz/Vm7hk=;
        b=PEXtVCqKfcT+9HyL4JfdV28lXP7pZ3SyNtYSX987NLsAfNOZZIxgyiBF/SuXwL/868
         OvdNhb0EQE5wcdKhIrFpmulXMUERm9RPghlI7q7h0BtDzxW3WUPf72V5w3iQsHOJnYjz
         Ytsne3HMZOUzBEoApByWHN1T2qyafK0zogQH0ZzqnsHeZKhSavtR2cRkIQpK3arcg05K
         sw215hCVEXIxigX65LciNXBBzyHZozqK+5p5mJJ74bFqjJffka6TiaiEXp8WUqj4Z86o
         p9HVExglZynLXiutQrXzwypGDfbbR78RSULQd8ntEprCAtQg33KG3WYubvSPBoY6T8y5
         BEQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XzXstuo6NoAsLGQhWlBj3/lVVi7Mq5KTfMVBBUUt2u4gsGExl
	zdJnpvFY0eLTLvyr8tbS2yM=
X-Google-Smtp-Source: ABdhPJw28qTV9G16vF4Ov6XMd0CZu4cpK1ZT5I5Ka4bMCKGfEON55lvaC4eeFtGLS2GzvxdILblWxQ==
X-Received: by 2002:a1f:2516:: with SMTP id l22mr2640540vkl.25.1618244664068;
        Mon, 12 Apr 2021 09:24:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9985:: with SMTP id b127ls796704vke.4.gmail; Mon, 12 Apr
 2021 09:24:22 -0700 (PDT)
X-Received: by 2002:a1f:d382:: with SMTP id k124mr20756371vkg.0.1618244662913;
        Mon, 12 Apr 2021 09:24:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244662; cv=none;
        d=google.com; s=arc-20160816;
        b=yE+lm8+GNUse0SKR4b0DwZQuBy2TaqlfKKvwHI49F1xo22Y6slvqxJsOCnYiYPyDNL
         24pIT4Dx0HikzXVJggB/yVVmPnA2F/Z/vBIoUJzjm/JU/2U8wk7oWWepojdPdvV1VOHq
         auWXXHijJ2Tx9hOzj5F3DCn13Z+ScVaJVQ5ZF94uhndrQK3+SeUJr7x3Xtifi6A05yhw
         feOpwd0A1Nmze4geYyIP5qzq2GoAVny7b7nla7kOCJOxsILkZ5gh/MHCvlsSObYFxwTX
         tZqt6fNdR9hRovkwPt4aQDNVSqRFFhZVVh3gtphqpDBAWYb1vDedPzg5w2p9+xrI6hv8
         BC9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=w+BoW5Kpcs2fs8Jj5nQrJ0bk3hbZ3Q3GqeBb1nmyV44=;
        b=CZnIxhjy7xkwLH1aMFZW61FaRWDLbXCZzsjV9CzJGmV79a4uIbPhgUdP4GNDOiMjV/
         abMtFg+/IkqS7dlxF2I0OYA6DtQvzaJjDIn+mvVYUj0exaPx+HJsquXC2G3/4Zw3+IOh
         64TOKWL5Fve/C7keKcc3qvWSSw4QlEua9lf/Ysi9QnCNxeR4lA9qM65hKzyWXIwplkav
         b1SL0ICGnaChzcimDWYHLI5RHlDcNcAiKfzxHwYAlfDS2ZAmlPDoiyyec4YoOwGu//au
         VvKk3TFQhXY+vQRN8LHsFOkN+UqpWKTtrL89Bl3Im794IxP3TYV3jN4Xe1t4dB6zGGes
         VOyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="gAb/cXD8";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u13si771811vkl.5.2021.04.12.09.24.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:24:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0CAC96135C;
	Mon, 12 Apr 2021 16:24:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 16/46] ARM: keystone: fix integer overflow warning
Date: Mon, 12 Apr 2021 12:23:31 -0400
Message-Id: <20210412162401.314035-16-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162401.314035-1-sashal@kernel.org>
References: <20210412162401.314035-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="gAb/cXD8";       spf=pass
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
index 09a65c2dfd73..b8fa01f9516e 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162401.314035-16-sashal%40kernel.org.
