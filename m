Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBQ55QLYQKGQEE7RWQRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id DC70313E8E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 18:35:00 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id u199sf22887785ywc.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jan 2020 09:35:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579196100; cv=pass;
        d=google.com; s=arc-20160816;
        b=FDcL1CUoXT4LdZ+5n49qPPc+Zysmx+CtN/CE1Noif1cQxEyvMZ0/jG8C4gHC/Gc9hw
         UNahQFkf3hNWghb0C9zrEhHeYHJaZIMEjFV3YfT1nYVg9l2MVKJCp0gyvQaOp/R251wh
         6M/CcyDyUf51lDcTiSAsAlVzFGrDfYfCu2ErtFaW2MpzuYp/IROMt5tVIoF/5wPAQLH4
         cI9YvXMinwvhrN7zLeP26M8PiE98wJbizru1d3rIB4nEGcmeq7LeRMuKU7vq6OgBF/Vi
         iz7nkVOA9j1a3O49CqTKKGRT2xtCZG8kICfxZAnS4tySxotqfNg8zSJe+P1FPwsBNHQW
         Sldg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JABPD+QfkHVNBWmMYQXQgezCsf/TwYjrCcG7kX1KpTM=;
        b=tBGtJATaX77HTXLa8sMHlzfgCuz+RSGHQ6c5qMNE7BGc3FWBd52e6SjTppLOKMYGxt
         +cuhaLvzEcBkMIP7jnLKqzFKLzNxNF1cANbqU2SWWBudSxfx30FOkFsyARabJtzxCK4M
         IsWGiQNPjh2hBPm9heNswjHqvaO8WUzZJmdJ/jfs0X4qEjwuhinSBInnyNfOR+LqqDFw
         snjIUapz15r4/R8EKBFBzhGMuBmuRiJvCHtp/qgXpJTKbzjigVrBC6yMwtp6kpGNMhDK
         TrF2aJ8qAIWrKS2PzS4iWcXawWWg4SMYq6pfHg0a25G7JJuUGjsnQAiWfCGiPL2Y8y1M
         MLLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bOTsOV4f;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JABPD+QfkHVNBWmMYQXQgezCsf/TwYjrCcG7kX1KpTM=;
        b=AscPwq+gT85FEyX0fHs7xnfIMNIyF9C5qyl9/OUesyX+risuxmHipnb2pL2MYkHVyu
         EllE/UbPMVFueN6md7nFBoBs2Lc2nVVsf/x1LB+xYegJHI6Gcn47lE90VH6D8GLzzHGx
         aa5xZoXkAjw1KNEJx1JtOAmsN5tt+eHODm+zmRRIP2IQfHyxI6I/Kusigltq7UDzRsBU
         9t9HFHU71tyNKJW0fDWf6nvxGBY5OpX9QwzaZ/enAXmpv0gXYIH+z3r9Lmks83WX120s
         Bzim/ZeTxMDDG+A2mgfdEdQLUtaKiUv+SyLArj/Pe153fdvMcRBY8iLGbdTgUMY5Tu6+
         2fGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JABPD+QfkHVNBWmMYQXQgezCsf/TwYjrCcG7kX1KpTM=;
        b=Hh6+Y0kP+ImxouMb11oOifsUX28KAQ6+mXiMbSnfHQFybT2ILW0OFTHIrn1V925xWB
         W4sfXx/PxYm4W9lCGB3wcM4QML4ZH2DS92zeQ/9UE16hgsASfrukgYtCFOzLLDOR1QEM
         70jbgVpCRI53Ad1+iAhTZ2BM+AI7Wq40bfpkEFh+ODeKO8SV4Fk8b2YNs5ynzKPTRMjS
         U6Lh0yqa1Kf2RRaQZ2ejkvDN5mbu5M6ZwjY/xN2AomifQP4NGvm0ijtrViN8gn8u+wQd
         uIq82BpPTMVz4WQCDgXuyGKKy0XW4LGPcTk7s3Y79l1JQss3JLtmgh9cbJx2Er27myw+
         YuoQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV1vkMmLUGrp0or8ctFERbR+xc5nnZlbX8Z/AkdKZtPdG8W7GGQ
	2TrzV5Xa9rpsA3sveEpTOL4=
X-Google-Smtp-Source: APXvYqzIhZmolfNFosVedVCyX3TgihcnXyIKmP+wfb8uUAjtB/bFSg6DzdfYhj6JaFJrerPHk9gOmg==
X-Received: by 2002:a25:b786:: with SMTP id n6mr27302814ybh.347.1579196099924;
        Thu, 16 Jan 2020 09:34:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:cd7:: with SMTP id 206ls3677566ywm.4.gmail; Thu, 16 Jan
 2020 09:34:59 -0800 (PST)
X-Received: by 2002:a81:6d42:: with SMTP id i63mr28626733ywc.164.1579196099537;
        Thu, 16 Jan 2020 09:34:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579196099; cv=none;
        d=google.com; s=arc-20160816;
        b=pzd4YkOkAQjNgfUNhZNL0AOQ/5/4829IT5OS/a39ihDSxSTnPm/YiSd1sUm/tuJm3M
         qJwbfGkiDVgzY0mzsPoq7IbROk0jiU2eb8e5xF5JvABtg4j5nOlattpAsKPcsM/pimSq
         m4rIX0mV1ItBexAWuPBuJcOTC25mr9r9bnOn1haxDe+ukp9J+aI2YYp1sJYHSwWHERKm
         B1gCfmTe1X8sjHiuPCu+XGulBouHu4+vwSfb01/zmwxEZreLTwO3DXd/M62CrmkVtAyK
         9IMOTid5pEGPvb81THZFn7ocFH6/PyZy36xubggukIbdK9M14sbcxaWhI5C/HVOx1AbI
         0X8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=bfhVc4i97TSTEG/4y8yiHUjKG8jv/jDViMmXEhQ6EX4=;
        b=xiMg8Jtp0ZyO0MDwgJVHfTsIywRUhomemnsB5OoGqt+w5QXGIKIw2hx3YarfhU1rrm
         VepTjBV5YQ7q7tVl48VcDD+A8C78DoV2JFoDiO4IN4BEZdpfa/7GlSBOKP0P9hhgCBY2
         bawREuB3O896PS68HZtAPs/vzZjqGU4kvnb5ypQ/p9mOMJmCe1iZzbxGJVMdvkbbQoMP
         6/B9ZWBnI/6mq5nuH3zbI8eDX7ZvpyI/ydIqaUMBGsDQOAswUHuGXgljb4xoDiYNryLp
         o3yCo8mjnB/MTIzzovpwtljeCjRBpLo3HZEFD+D174F2X80aYG2pG/bJ1xeHa3FHGDWC
         kR9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bOTsOV4f;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p187si1051240ywe.1.2020.01.16.09.34.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:34:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AD87B24683;
	Thu, 16 Jan 2020 17:34:57 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Colin Ian King <colin.king@canonical.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>,
	linux-crypto@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 010/251] pcrypt: use format specifier in kobject_add
Date: Thu, 16 Jan 2020 12:30:44 -0500
Message-Id: <20200116173445.21385-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116173445.21385-1-sashal@kernel.org>
References: <20200116173445.21385-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bOTsOV4f;       spf=pass
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

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit b1e3874c75ab15288f573b3532e507c37e8e7656 ]

Passing string 'name' as the format specifier is potentially hazardous
because name could (although very unlikely to) have a format specifier
embedded in it causing issues when parsing the non-existent arguments
to these.  Follow best practice by using the "%s" format string for
the string 'name'.

Cleans up clang warning:
crypto/pcrypt.c:397:40: warning: format string is not a string literal
(potentially insecure) [-Wformat-security]

Fixes: a3fb1e330dd2 ("pcrypt: Added sysfs interface to pcrypt")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 crypto/pcrypt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/crypto/pcrypt.c b/crypto/pcrypt.c
index f8ec3d4ba4a8..a5718c0a3dc4 100644
--- a/crypto/pcrypt.c
+++ b/crypto/pcrypt.c
@@ -394,7 +394,7 @@ static int pcrypt_sysfs_add(struct padata_instance *pinst, const char *name)
 	int ret;
 
 	pinst->kobj.kset = pcrypt_kset;
-	ret = kobject_add(&pinst->kobj, NULL, name);
+	ret = kobject_add(&pinst->kobj, NULL, "%s", name);
 	if (!ret)
 		kobject_uevent(&pinst->kobj, KOBJ_ADD);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200116173445.21385-10-sashal%40kernel.org.
