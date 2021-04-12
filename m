Return-Path: <clang-built-linux+bncBC5JXFXXVEGRB7PH2GBQMGQEJX5E2SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EC135CB01
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:23:27 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id 11sf7026201qtz.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:23:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244606; cv=pass;
        d=google.com; s=arc-20160816;
        b=U2siKSb9MPpMK8fe3M70v22l246TsxggXe6zmKf/Y5euil4ghbhwMkzVtVYuGqG7BQ
         8GuYl9r3LZG00Mky3MwOw7DwQusDMNFlRgGkSAC7MIYKm9Pl5O17YGr61SqNOcfoaUgg
         mRpnUW1Qo3mWgubtpKn2zoF/FpKv8yOscLJnlsJKGrrIJu9cssaTBspVlrLEb24+cw+M
         70aapMUAr6qaS/zuP43e+vO4UlamkaU6+Xhnk99Rl+co/pd+r3z+iNvWZBtGkcGQFfNm
         c61omg2rx9C/woymE3E0WHuVoT212OhA8FLVxYWDRR++m4uHU7mwhMPOqb4pveLKBEsj
         OoLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NMbJ6KxaWMGQCoVE7Eygm2xMx87KjZluD2EeAx6GrZg=;
        b=0BHpZAfgNDyMaQlmmfRraKi1lz1d0Q0p7JCRG22/RWFS6VsBp9KN8P8my5vrCmgDPe
         Ie3jW37wix31cWzLxQXda7GUxpFVd9LyO3PA+c67/BK+2RGNck5ZcH9LuuDEOJ4xNVzN
         bR+Xl5oIHPEa8m95xfjeEqAeCbtmL6WQSBq+csjqy48V19hpnNMsgLAIRQpIO7vPaeJ4
         3NAh8xOMHBKL1h0J2HcpqnjPc9ZLn3Q7je9/47zVBXmCPZhnWwAWpeUAa8RZpPZEn5D6
         2q/Blaol4FcJoVZ2lMpL8tV1HN56mgkP3eR0jRjjiS2uVeBrb9pkOPv04RuJbWHwrCci
         lvbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b6fqrzT5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NMbJ6KxaWMGQCoVE7Eygm2xMx87KjZluD2EeAx6GrZg=;
        b=lEZD2QlsBm0iuiY2Z+CWmcdkRKhabrgXS92ovoJfOwtvSQgyREHcnkYXSHVk6/6ArF
         A0YVFOKDwOvmljVB//Jnb6peV7tQWDaShikx3PYTOefcqKsqS7n3TV08DYXeQ1FTJMP7
         roJScxU+rZRWEq+3BrHMAP3ke4ONEsdD2IxpDZKMAUuAsOi0mtPWYKFVbP7smJDiA+Qg
         XFZRTAaZsf+JpgKff3FKSfH0SBCULGtnYa4V8ewUJjLAIs4kjmXB6SMpMx+5CH5bdOg/
         dFBzf1qmhKXwWjyfmj1S8qQ9aqduupQt9B+kG9eVKnhDBHGrBnsN3RW+/cqhYtIK6GEo
         2a3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NMbJ6KxaWMGQCoVE7Eygm2xMx87KjZluD2EeAx6GrZg=;
        b=pSo3bvWfgNxAhn5wJSYh8nXQ/MT/PzOTIjk0W/Jv8Bb4TG4+s3pcz+KUgAqROUhzIa
         PnhPdDBeyX3Y44b8SgccdkncL1jfvZ74vWzRyJcYeiUB25vQ46/c4oHqRrBeOuFzvaGE
         UmidkOid0aNtFXlU5ED0Li5EskdTrwiJhbauZKZ/6RKfRGlOpzOoX14s1XuRRJS1Vs91
         dK+eOaqm7siESYNTDRLPmElhfcUB37OCADZuqymSbXNtVdecI5pjxB1SsqXdkXigjj0Z
         w+AaYAOzCQOaqbiIlW0OOsLtmu/vuJOIrQ8f3IqSxsGWKN3nCM+aBmEx6VjmWbkJHdeW
         leKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xCDGIW8iaZbKOeNB3nQWB5WDhb0prZCg/odFVxMZcD9f0zYJT
	EAnPBi4g8lgZq2qgm5B9TmY=
X-Google-Smtp-Source: ABdhPJzlsrJmDWImAnmMaFCQ1c+TN55SPNXe74yzKvh4FmFkwx9ispZLeAQCdVlhXObYYvTy3o8/Ug==
X-Received: by 2002:a25:4fd7:: with SMTP id d206mr1008826ybb.118.1618244605852;
        Mon, 12 Apr 2021 09:23:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b9cc:: with SMTP id y12ls7716272ybj.0.gmail; Mon, 12 Apr
 2021 09:23:24 -0700 (PDT)
X-Received: by 2002:a25:ca04:: with SMTP id a4mr26946462ybg.367.1618244604743;
        Mon, 12 Apr 2021 09:23:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244604; cv=none;
        d=google.com; s=arc-20160816;
        b=r4+H5RYJilbRn0fsCAI7bdzTY5H2744MmUdMfYqD2DU1MnhtOYJHPFZm8IGTEV0A3M
         donh9nRBTYnLF6/GZ10SsF5uy9kPg2xbz1trODdcuIiVlOz8uNo74cDFsxi43dRhzRey
         m0bzGAS13AfstxtXbyaGmpn6ZuPcB1FtZ9H1SyMLth+O9zVOOuipv6bne0mNqtsAdl/c
         Ss7td2QCXqukgfP+0+gS13tcqomzhQuW8xvC/FneDrzut5dwY/BG2l5hwytUgEWYBJag
         f7hBYe8gxbvRjNDXuWhmVHhm+VsdlFALSZlyeydOrLU4sT71nqlditkR/ohry7OBUMFe
         11Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HGSecMhz7lOHkAP/qd32THx0LUMEfZ2KnPvw37JUfmg=;
        b=HEULe61E3rDnNNsA916paey8Uy62JJrQMcZpCHM5mbwjuUUvSd86RAOcfHO988gqTv
         GXbjjw10WSLMQjlPJwQDtz+O2lIr0GNNEL82FzTP1ybOo08R8X3BtH2JsT4zD9ARSMXQ
         RPy1wEKxem5AUZ4Z0JfeT0iTr9DS+M8+qIMLSFHQnwKFZvc1PSZMvYiNyn/Q+LmVZNBn
         0O73gobkoRdm12oiEenpyW84/A/1v7bF6AHhEYwpU6x9DVR0X44MqSb4PH+JcovQ6iv7
         4zD04//gtkogzJSJ5F79/+cAhTlva1JCC85/vhw9BgZzCRNuVlRALRqZynzWm18c4rXM
         eDJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=b6fqrzT5;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i1si827825ybe.2.2021.04.12.09.23.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:23:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id C92B46135F;
	Mon, 12 Apr 2021 16:23:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 20/51] ARM: keystone: fix integer overflow warning
Date: Mon, 12 Apr 2021 12:22:25 -0400
Message-Id: <20210412162256.313524-20-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162256.313524-1-sashal@kernel.org>
References: <20210412162256.313524-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=b6fqrzT5;       spf=pass
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
index cd711bfc591f..2c647bdf8d25 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162256.313524-20-sashal%40kernel.org.
