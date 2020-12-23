Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBBWRRL7QKGQEUNCRJ3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB922E1199
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Dec 2020 03:16:40 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id 14sf4328595uae.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Dec 2020 18:16:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608689799; cv=pass;
        d=google.com; s=arc-20160816;
        b=j92D2qvxKcDkW1GzNHwSqJjpuTm9MAJNtZG1g8DC0hMY/Xu5m23JL2QVxsaZDjw5wg
         tCbE9NlUyICVbfgOY5W7B1XNYGo5PKj8jhyw+Rov0w4lb2ONifI6RWXFGh4mSVVJC5bK
         RE54LN1mmlB61HAFWK5BfCVThmnDMoYnWoNW5iavSF66lSUeEpHrMTHnVx72qV7W1Gi2
         vGRj6LJakNIDuhV45ITvHPvxKGDQSgis2piLVYDTSJiF1pODmXCiFW1fD36ARC5B7M5s
         hMoDNm/cLsfXB1a2+tjKVW92MZzfwtWJ8+KUD3nJeV9pvpJU4mUkMAfTT/pJONLw4pf7
         dxXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kSMuQuKXOkOupazCJQuUk9v0xodakyu/op0xgqODYxE=;
        b=PZAiebR7TfSb8jHBNzzrAptToMN2yrAHBr2MPojAcSmgUfNzeSmVaDDyZxnvIZOAcg
         UU6n3FBVZCMNhZoNLtPPU2zFrcPOOYMqumL5Uot6WNxlKNmJ6F4Q2QW2g8I2NzQvQWI5
         BCjugb747tnbANnYmUIqK4Hrn83OtQN5WeoYqbFOi4r8PT+B91C4QVGbbNxtDmhleOms
         1BLcCZNV8XqjcLL+Nny88XQpwylZNajNtBUaOZ8q8qfMIPC4yss7lH7ps1C5+Itg1vk6
         TmGf04PFHWl8WGnc+4xSqh7zelvrjlWvNld7AtdZGf/zCDJMWx5qXQU6XJ62SCfSLh8y
         2wdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=H5AHmza8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kSMuQuKXOkOupazCJQuUk9v0xodakyu/op0xgqODYxE=;
        b=EDoA9xATiD/qOii1B3ixWxRZ7LtlHpk3a2rpqgRGk4il/sqjP7H8wSuArckGaMMd1k
         b9635SC+QlR1mvSwKnwoR4oNDyQAxSR9ppfwznMf0M1ahka+1RVQrSYJlpNlsgLsLoJ+
         NVH4voKDEn7bZtsODTA8v93qkczC4TkaqGnJVZwBZuVEmM5686JeXHm46mXQTpR5AhI4
         efU+XulcGPIrMuMLf4KZciSXGkchoVRyQPSMEG668kBb7gSm9HNM58eOuMLMgrVYvDPM
         IZE+/WBDcrzh9S9UrzYn9iZrWgoKQ++prW5Hp35tHY8d8Nlhq3P9Yi1lGPdhK5OSPITc
         dLEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kSMuQuKXOkOupazCJQuUk9v0xodakyu/op0xgqODYxE=;
        b=uR6y5sT3EfOapOjiV0UUbQYKEWxim+vUU3RhJQcUkitCKh1XDs+/nM93YRTEk+SSkS
         JDsss1TFM+638cy/g5OBH5Qog8XYAUYlDDY01+ekPL1XhOWqihGFSzBZTYCS8ruq8i2B
         W1I/VlK5aPQXZXEA2qvK27afYuwIcAP1fVZPtpDCCfCOOpP/q+A4iuDRqFNIfd6q1X7i
         EGwlzr5bSGMgGQP2Dlk6JBYDzLJy617bS8DIQ4ZPQiPdc+xjT3GU6IICqN9vigGQ247v
         8oK/1YVbijEhR0dWUTKp1ztmX9h2yqsacd7yXwviQ0dXbhM546JlhggFROx792Mq24ZU
         YhRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wmkNILgsW4J7QgebBBq9ZOpjcCUXX43Sio1Hdb0BEfgPaD4ag
	pGjACmzzdIsRN26lOOqtfZQ=
X-Google-Smtp-Source: ABdhPJwyoL+pjA9W7xkAfupV1Y8WrXY4BKvD7e9lOR70g0/i8aNOgJXe4f92dlFA7bWy5xA0bLVQFA==
X-Received: by 2002:a67:1785:: with SMTP id 127mr17043634vsx.1.1608689799061;
        Tue, 22 Dec 2020 18:16:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls5409825vso.9.gmail; Tue, 22 Dec
 2020 18:16:38 -0800 (PST)
X-Received: by 2002:a67:8a8a:: with SMTP id m132mr17748119vsd.31.1608689798725;
        Tue, 22 Dec 2020 18:16:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608689798; cv=none;
        d=google.com; s=arc-20160816;
        b=UvLzQzQz/tOWg92rmunx18yunFNj6Lk1WBTPXA6gb7C+5H9tibiKBKYiCl1tQ4Joel
         R5AYziwFYFTiuKiarYeIEtMmpWNq+POEJf8aC4ewMwcLUmPjqwF+cffltHYN1Ii8H0kS
         u1+1DSiJH1IYvEftBOzDe+q5Oiy0xBBMMpt0N/BcQRvCRwSypmjEvIIm3vTiVevn98f3
         6wIp8YhVgU/Rxk5kZ2tDIsq1nn9Dsx3dI6nhB+R8N3xzaOjoGTeDdUvz5Q3uhyR0w5pD
         VsvC5dpajGeVXFp/n0zwVj5pqBis3JSOODEABwS3N+tJhhTxDiS5tzzv7jT/iHkTtRIp
         fezg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=cDHOOZ0RDdB6sRTU3W8x7SM06RAaTgZUhr60yNkY+Jo=;
        b=nFHQuvYQ2Pgq9WAD1ybVa1JDyZP9+XtkvqBGuRorAqGiA9Qh+ZxarTLpFn6ADrrwkn
         lzPkDXKF6qg7ukhPeamJPkel5kCwVkb+KhY6U5cxKGwbQ6YMdcqoA4whZFBOUPXlTXQv
         8VFmZ2zSvGrVuGNNv009ARcAHWcTLGoR0ylOe3fJoLGc5u5nmhDKHlMCyE2Vt50K4gUC
         DpsWlKu/rMJIAuf8zb/pTU8be8PIFhWPHiECP31ueGDxjTV6l3y6SaLSvUErrw98DTOT
         jwzgTE/4sUUkkc01XLe+RCgXrrpgyD2MSE9b5ssbJFWuYUTJw+xazrNrhB5i5isSEbr2
         3qNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=H5AHmza8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y127si1350677vsc.0.2020.12.22.18.16.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Dec 2020 18:16:38 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id D5D822256F;
	Wed, 23 Dec 2020 02:16:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Sasha Levin <sashal@kernel.org>,
	linux-security-module@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 008/217] tomoyo: fix clang pointer arithmetic warning
Date: Tue, 22 Dec 2020 21:12:57 -0500
Message-Id: <20201223021626.2790791-8-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201223021626.2790791-1-sashal@kernel.org>
References: <20201223021626.2790791-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=H5AHmza8;       spf=pass
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
index 546281c5b233a..065f4941c4d8c 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201223021626.2790791-8-sashal%40kernel.org.
