Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBAHK2GBQMGQE3CPVC5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1746B35CBE2
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 18:27:46 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id o8sf8660644ilg.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Apr 2021 09:27:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618244865; cv=pass;
        d=google.com; s=arc-20160816;
        b=iqIlW6WBCiWXNc2rUEHIiOC06oMs18BxVD7yN7nlQDy+oVQ8x5uO916ZyXqJK5m5WZ
         SXRqto2AFeIY/rkjt6aujF/cWjUCbUD7AUeONcv1dyE8f3RLEt15WHADdcvi3wIo37eN
         jiNB5NFU7LfXx9xx6/qfoEmMsQpwa6QCVSpyrOH8tnvEOB3OhXblSGr46tQXrcad6Q0x
         LtNWM8HZNo27RYGzxThVZnfuBStAHeuTiHKLNM3SoSifD7dRcl/CR+/Kdth13cLKuDNF
         M7KCciok52PwBqfHqKbMk9EPcH/IYwpRjBB4+TM6D4ETRxD7HrrqXLXgoWc+Eds9VZuE
         ih9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wSpKkamzn3nFs+BpF0fKlJNDy43aIiuDJE1aw/g21Is=;
        b=BBUeBGDCBjURAtJjkcV0LVbtOUhUrz8IWTMQXfrhv7/b8D/Rfv524jSyczZZgMuuSu
         Y2n6+LLo0NNkRQA/wS7khOgP5CDR9LAZpz4SxjK1N9y79flObCkRDdIU+jQcTMmjNJHT
         3AHIGZ6TU2lHmElVVAZcII/nUjsyJGqyFsnut8hhbAmPoo5T+HRnUYXOvGTZf0QLTaQy
         U1Xc2o/kaFwID2KqFLAOlWJITDDNK+L2+FEvHe9RvlQGrb/bcbfM4IIwNkwSzE5xU6e7
         vDBQh4fUxktwtNHkqn/MdfY0uss4LZC04UumHeM8m0PYrTB+I2enY+67FF+svxFDEelp
         QDuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nVzdaU9+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wSpKkamzn3nFs+BpF0fKlJNDy43aIiuDJE1aw/g21Is=;
        b=tXzBFThpbqfmHVpRR+CBENyJKyIYRnEU0ektVLhoTHONeLlU9D6QFbnF5rSHsQkwN2
         68LJKpsSZgNSlO8Ub3YtKJHoIQa6mN0LrVacAzqMtDFUq4sq42Ti/nAwTeQNuikuA44R
         6M7novK2gVHDhD3atq1ffGMhqfYM4vAV3lqGh05p2Q6hvuLNKDCsOYeNgxymGbr3uwaL
         NOO4jjtUe/xdt+fa/6phCNlMQR/QPdKnBwMFhZZbwTLQja3wlbQ2Ixj1mr2aZSp0+0Uy
         v0/jSqVKHUZm9mdQ8XPCxF/uh1XB1XKXp/uc976e9f63ZbBeGj4yjPg7wEF/D2SXkAaM
         fQPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wSpKkamzn3nFs+BpF0fKlJNDy43aIiuDJE1aw/g21Is=;
        b=aYvbIMPpg25KzAWho5PhMdIExC7C9WSBPdWJor0nlgMU2RZ3OUwA9+VLQiwC25LMRB
         L8Y26BYpDn5cI7/XS0pf1O4ThH6S30unlv/lG0YKfEkpioO/WPoPtOVHjbyic8SKXwEt
         ie9WwilVtGExu2fiDr+S2cN7fkvt/wZwkLqXfhPZSobyj6VESU5POStuTXalD+XSSZuh
         dfh+Hs9ZOKcPY1AUytWRc53o4mZEgr9awVRZlDA6shxtYGL/xB7D55uQhZby74MAqO35
         nfWGJC9tKVPzMg53aXfWuBCPM2JasdO94Etd6WjdnWMcgWkXa0C+lJdt8ZnXdbMxkwnK
         ZUKw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330L0iyahiWFXRQFOjTsu1xizhTQ43pN9iH8Gg4JWTZv1WooO6O
	M7iR8/GyJvQywTn3y2VHSoo=
X-Google-Smtp-Source: ABdhPJyDe4s9Es0jjZTGE+7tZfyE4K7GL5cblvz5j+GQEpXJPLGvDb1aMwF8Pcyp3lblAaG1H4KwLg==
X-Received: by 2002:a05:6e02:672:: with SMTP id l18mr22977052ilt.271.1618244864745;
        Mon, 12 Apr 2021 09:27:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1584:: with SMTP id m4ls3961242ilu.3.gmail; Mon, 12
 Apr 2021 09:27:44 -0700 (PDT)
X-Received: by 2002:a05:6e02:12c9:: with SMTP id i9mr24441266ilm.276.1618244864380;
        Mon, 12 Apr 2021 09:27:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618244864; cv=none;
        d=google.com; s=arc-20160816;
        b=I3qJ2XqVrF07xJwp7TJQF4XcjlqiCchYivxYGRdk8St7QGN5A/T3aZVwBOy5cpo9tj
         FAJvEhVQ4b2979gRi/RYVP0Ffl1qTsXyT+v9SbJrlfpy0oAl8mEm7PlrPiW1WXnsP7cR
         VmtpG/fLOsdhaysxl3lesyEKO7hBnpUmemksZOp5rQJSUbOtkfDO7etSsOme06i0Z7M4
         Vt0tmnxRO3RbHMNIqH9QlCEHBx47wCa5MXYnonIha9jNzhLn07GzAn7CIwxFOSKu3npk
         gh+kFEMBw8vRR6iywbfRp4VpGYP4AzSmJRS5wvxU8/c+j+PRUYQpWD2RNmZ9AP/ox3CE
         XSHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VEnSCmR2w/+gmRmre/9decQN8gAWlnAIe9gT2e2RXD4=;
        b=xBYUBQzpUS2cNG5lFbG8EGL2KgBF78tic1Rk8x1D3tDCdAv/B2HZe+ApShUTMer1f1
         5+etx4SgGup1o+0Iti38xprNyYxs1gtofYfPUisgzS+wWW/qlalxBarACUoPC/HXBzXP
         gLJQ+Z071f8j/eie06sKrfFkqN1d+Lrqyay9w5w+WLULraRo2k2t/Aw543yHBXXS06jN
         nHRyqjg3buVDz2S7Ky4ZQTe8OuYUC4T85Ns5tobBSmyH7qFHPjZ4x8xGdzDVtu2tYCtA
         MvEon7zkEUUPM7ETozerZyBLP5alJgljvKW0f7y3nkC25tUwASArJzzOVoAb4rPOJ5aZ
         kU6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=nVzdaU9+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j1si113240ilq.0.2021.04.12.09.27.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 09:27:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EFB49613E6;
	Mon, 12 Apr 2021 16:27:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.4 05/23] ARM: keystone: fix integer overflow warning
Date: Mon, 12 Apr 2021 12:27:18 -0400
Message-Id: <20210412162736.316026-5-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210412162736.316026-1-sashal@kernel.org>
References: <20210412162736.316026-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=nVzdaU9+;       spf=pass
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
index c279293f084c..0f1f5c4141d5 100644
--- a/arch/arm/mach-keystone/keystone.c
+++ b/arch/arm/mach-keystone/keystone.c
@@ -71,7 +71,7 @@ static phys_addr_t keystone_virt_to_idmap(unsigned long x)
 static long long __init keystone_pv_fixup(void)
 {
 	long long offset;
-	phys_addr_t mem_start, mem_end;
+	u64 mem_start, mem_end;
 
 	mem_start = memblock_start_of_DRAM();
 	mem_end = memblock_end_of_DRAM();
@@ -84,7 +84,7 @@ static long long __init keystone_pv_fixup(void)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210412162736.316026-5-sashal%40kernel.org.
