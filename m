Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFGTRL7QKGQEPBBTMAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 765CD2E123D
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:21:09 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id g26sf12803127qkk.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:21:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608690068; cv=pass;
        d=google.com; s=arc-20160816;
        b=yFLW2/AR6x9H700wcsumeWluoJR7dklE9swaAuAxzN+FhEqy2wJmaFIvN5KmaQCXfl
         zIQsgDo9WeSWvyXwvlUjpZYpamy6VaXD9Y6DRte9webXKczSPyGY8H6bIGOj+fulPzaK
         Eysfpn2r4lR1ntFrQFkD6mSZZyDJnU3QQ8mebJqpnMayrNkZ5n3XJYzEadTY5t8TiKyw
         IfCu6Seof0J33EFvWJc/lURA8l+6A0FXTtTY/KGNOo575bRkCYb/QcYbaCcir7qZh+oM
         ipKc84dH8S3DfmuYdkyaBIrn1M8wqY/2bf1G74ISgxV48pD66f7tkgpvzaDY9Gux2RVi
         a+Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WmcY94oMedPlQd00/veE8arnS5Czl+BeWFlvOatCxeM=;
        b=IoW8TV/8baX4QbS71eYEIpseOqbZhwTE0ULad4aVRGMB2+T8Coh8ST880/xs0PmiU4
         SwgLViRSUmnwot86SbZVvQtIXgmOs2cKr54rAeFqsmAelKgrA4ra3fhoWXckkrND1bAQ
         cr9F0oSaOa/QaQmrjQUNKM7X7JDVQrwh8Poz8mDthBTtF6rJAOXdXnGjxObesKRr8GCv
         FeURbkG566La+RZaw1spMrEkL7je/eYT1d+33+QwAZ6noTtAs1QfSNBpuMGzMFhuPISz
         LWmQiCE51+KlUlMZLlUyqwpPsfp8U9kOAgx/wMp1k+DQfwM18iSVxP3hVdpJW0S3WfkS
         /YLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rKpzl2HE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmcY94oMedPlQd00/veE8arnS5Czl+BeWFlvOatCxeM=;
        b=lG259SolDzpjnD7Xa5NJFFncSe1lZsFT0vyg4Jb4ZH+ItTBBxXBxjX2Bd/pN+88kgm
         +oEWLdTaug6HPf6bOXBNfjXlizb4kS5nRe5IrxK2LuHPLsHAFlbFkkjEnYS+XvtboP1I
         A5AAd7irhljX0v/951SGhL3VoAphADMpH7MUTFUQjjPtUxMvfAle73m8mthQ9/jhFI57
         n6N0Bb/VUwZMzHBKjNP2MD2rim7+C7AyFxJ7Dg11Zde40cqaXaZUj9k/kqslyfOs3Om9
         2Hqi3i2+5ZcMDA8/weiRLlHwAVZDapFf3Lng74WDEmKQHyEb9NuZcowyizzrA08pPSc5
         iNOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WmcY94oMedPlQd00/veE8arnS5Czl+BeWFlvOatCxeM=;
        b=lBAbcUI7n5UBX+A4npc4NAfiyc1dC15qT+WZ0JoYzMMdmFZBkCkqTBHRqilr1DqmF7
         etIlgNaX1wh8wNgt9vdvZZlCHFFDdOG+62aUGHY0E8YZdD+hSL4Hbi57NWzs/RUnzljc
         XYA9p7XYTupAEGw9ieqDKoUDxYKzkm4Nw8wq064CuaWBNDxmnQ/cWRXOCut6xF2/maol
         E3y8Or1Idx+ShnD4Q2xqTVq/XnNnOCbuXuZdi+J6KjcoKfAd07IgHEEAyjAcmA9HAES+
         6gCBLnSbK4o/5fyzKA2zHaxr+em7vrjaQjEPjafJFFCc9PaICDMahst5vRK9Xf5DpoOE
         T8xQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CldOTzhHXKHhty3/czF9WQKv1QiZz054qaLuq1efu/PAYsLpd
	sJrJo/ZeJmcWM247BQSpSzQ=
X-Google-Smtp-Source: ABdhPJwuO7O2/W+BrfvgK/CeA9JanpBNfefZABnDY8+ZoQHpnajMZegscw6ZRB06pVkgUXITF4oBeQ==
X-Received: by 2002:ac8:488e:: with SMTP id i14mr23340094qtq.372.1608690068270;
        Tue, 22 Dec 2020 18:21:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b8a7:: with SMTP id y39ls5317758qvf.5.gmail; Tue, 22 Dec
 2020 18:21:08 -0800 (PST)
X-Received: by 2002:ad4:58c2:: with SMTP id dh2mr184835qvb.4.1608690067933;
        Tue, 22 Dec 2020 18:21:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608690067; cv=none;
        d=google.com; s=arc-20160816;
        b=mfAWIz+xTbiQQwCmom9kBBRbQwMq1HD7nwwCgBzpvQBpNgV1dtzoxfSW6WeL8CPi2p
         A9bJMhDKLiL2E1xrUKGo9Q0EUAckmZub/k1zWbf3pFxHx2zER6A7+i7GegeRrH7O+4/V
         lEAjyH6/b+esVgP6HzKy446KGRj7htZliwketHZbvLerSaR1iZuOSVpSCpffKaxEBdxI
         wrfpDs9u8qiCy//jNIkXOxUzx68BFORVh5gPFKxPeaRU3tzzcsGvNL8GiUEg9f+EB3sh
         dYP6BU60HECLGKHmb9r0VQ/pVA4X1kTDUHBc0GSSSr51FSAKIBbq6T5Y0fG9sCMzo2+A
         dvmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Eo01LujnAjyYclvxNSYTCWJUtlHFvM0mjsrTYHPT8V4=;
        b=T7B4DSXCfkVT6iBF3B4U7z4J0SrnP7dNCckSWO5IsyBeayprSaxnqTm7wLcjAYKxvP
         jLQg6R/Re8JGdVAYY/Pf7y+9oVbmJ24AXq7+NU2Bt8hEL8C+SXVXoTi2xc4P5GBlVtBA
         wdDdLBjHGWwAdzPScqhLidRnL+Kr0ZuQaMduZI/avdFoQXlz8Ah2x7QpeGC+3UzbX0Y9
         TOjYSZ/5JlZDfxwQpbJyfD/po3d5AusubGREajv7DPhBkTX678tOOJqrzfNxjQlfn8Gm
         1EimCY9nVu3NaK1Dd88wuZytqijJu/BRJDTLdOZC75pvA9MMEPFyUVkVisAzAHqROI1t
         WfEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rKpzl2HE;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l32si1634881qta.3.2020.12.22.18.21.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:21:07 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EC3EF2256F;
	Wed, 23 Dec 2020 02:21:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Sasha Levin <sashal@kernel.org>,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 02/87] tomoyo: fix clang pointer arithmetic warning
Date: Tue, 22 Dec 2020 21:19:38 -0500
Message-Id: <20201223022103.2792705-2-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223022103.2792705-1-sashal@kernel.org>
References: <20201223022103.2792705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rKpzl2HE;       spf=pass
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

[ Upstream commit d9594e0409651a237903a13c9718df889f43d43b ]

clang warns about additions on NULL pointers being undefined in C:

security/tomoyo/securityfs_if.c:226:59: warning: arithmetic on a null pointer treated as a cast from integer to pointer is a GNU extension [-Wnull-pointer-arithmetic]
        securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,

Change the code to instead use a cast through uintptr_t to avoid
the warning.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 security/tomoyo/securityfs_if.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/security/tomoyo/securityfs_if.c b/security/tomoyo/securityfs_if.c
index 1d3d7e7a1f055..6f1161f4e613d 100644
--- a/security/tomoyo/securityfs_if.c
+++ b/security/tomoyo/securityfs_if.c
@@ -131,8 +131,8 @@ static const struct file_operations tomoyo_self_operations = {
  */
 static int tomoyo_open(struct inode *inode, struct file *file)
 {
-	const int key = ((u8 *) file_inode(file)->i_private)
-		- ((u8 *) NULL);
+	const u8 key = (uintptr_t) file_inode(file)->i_private;
+
 	return tomoyo_open_control(key, file);
 }
 
@@ -223,7 +223,7 @@ static const struct file_operations tomoyo_operations = {
 static void __init tomoyo_create_entry(const char *name, const umode_t mode,
 				       struct dentry *parent, const u8 key)
 {
-	securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,
+	securityfs_create_file(name, mode, parent, (void *) (uintptr_t) key,
 			       &tomoyo_operations);
 }
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223022103.2792705-2-sashal%40kernel.org.
