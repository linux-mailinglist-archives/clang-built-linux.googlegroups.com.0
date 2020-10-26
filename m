Return-Path: <clang-built-linux+bncBAABBLMK3X6AKGQENYXXE3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFE9299922
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:52:46 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id z16sf7238586qkg.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:52:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603749165; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4Ywk0k8U8kD6Xyz4qjuTFd1SR+D3RzHWfUTzcdUp/r5j2Gc2KB5wfiHQ5pzVPP7Du
         LFIwn1YOKp0Gx3I2PPhGf43jUgPwWbUh/0O5mfNOtbsdaOfGKrdCc0y4OPuuo1KoQGDB
         x4jc+Xn8E/bt4YaURZWJkoo/EFctAj1DaZvgx52VggbKIsafie7JQc+LGwxkfWK+ZhLP
         M5wQmg6eJb4PyUBFOwjWTxTtr8dwvnuwchEty+oGuxgnZGadR+8xuq6/kngiq4d3C3rk
         pcE54KbePI/V0mJzJTDEy3pzYxuxp+MDNIEX/vmX8Xtk6IZaXAbLoM8mo8WLqgBgT9WZ
         1eDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=4KT9osApmt8pbEABGDUidhL7byB57jW+4PgFXessPPU=;
        b=qeyadUUcitybti5O3bBdq2NHdTpdmEDvGgqUGG2q34ULFZ8A39FYDSjCJSaoHgfqNo
         8N9UaGWtix+DGhr0yk//ijnwrR5WNqhQWHV0Zpe3vT1Ky0VDNoYDz/DIUEhc/H7H+yIF
         TXoZXN0e9olY4z8AnSrkGC7yWdyuF0kNkNFsLzsBaUJ5A4gfrWhYdvShibgfA7MAc9vj
         bjOC0O0o4RKf4Ay2NNi3a2/lQOxK3nqEwc8aOR4yN+oJEFJIZkkBJbZbbSbgvka76TUM
         5tJrNAh0yNAzYTqkAXj6GHbwGTIM+CGgLB0lfdRuyisLlXiJaRH2oTcSFI3F1wqJRRa0
         HPrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wyVVhrq9;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4KT9osApmt8pbEABGDUidhL7byB57jW+4PgFXessPPU=;
        b=Cbcr3dBQQvVLXS8TZf/Tj7QLoyit6s0MqqBIZ9ZYskZEXFaPwvHUNjkg2ImumFn4GX
         OKB+Le2hxpPDo5xLvMvLslaxjyV5YjZgxrhrnzuDA5POjHUwMqoztx14dbmvwyO+JqZM
         2tJAeBO/DD30pRlHwcWxGuz+ViJEYvk+mFavPLQjUQEpq7NCFFeXz0KZW/gM3JBQeFJm
         3yLpJbfRhDpfB4WEaMiYubK0k+ssCoF1rqew7oN9y6Wkk8A+Rw3X4DKV5VfiiwweRrI7
         EgY9Z69Nb2bc+tOI+QN9aLvk4UL9DTlL+f2WOH+IjsEjplvwDeClvY+E3edwrhplKggx
         WwZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4KT9osApmt8pbEABGDUidhL7byB57jW+4PgFXessPPU=;
        b=nNoCZ3rISVJ1E3RkVzS+dyVBmnE7dHDbSaThq+PF0x94p55iaVHew9YbpFwqUi4PM3
         Qq+GDVNFQPTNqTQ2ZxAPDy3+wYdTp/hrC4S9X/NvpNA9zHQXe4Wv1piMw0fN0Mm5R2nh
         MnpzQST7Q+R9gqZAXCwligDShotNX6LeW0WS6hmqI1oRknjFDSkbY23v655aY4fuBRQk
         waSeqdWw84/85dxGajMO2onDvGScMwt8on4KnID+aPZTic1wypGPuw1S757xR2R/l3p9
         4oI+aScJRBJjV0QI6mT4qGCueva2qwayzO0mGT5bQDfAog2DVtDkjCHZP33xymIf9XTV
         Ah3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532o8OZv1g6j7foLdjLlAhVSZ7GQiTVmRRSTrCxmgrGP57aVtOMB
	iMcCyWwmwvWipOfAm/64TB0=
X-Google-Smtp-Source: ABdhPJzaljGySymhjsK6kQnM7OXYQwjt7UunTF0rPA4Ma7V/ob0sAybaYBzs4BrQqZrQUnc3Dedjgw==
X-Received: by 2002:a05:620a:15a8:: with SMTP id f8mr18959443qkk.84.1603749165384;
        Mon, 26 Oct 2020 14:52:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1132:: with SMTP id p18ls5219581qkk.9.gmail; Mon,
 26 Oct 2020 14:52:45 -0700 (PDT)
X-Received: by 2002:a37:2795:: with SMTP id n143mr20353210qkn.321.1603749164973;
        Mon, 26 Oct 2020 14:52:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603749164; cv=none;
        d=google.com; s=arc-20160816;
        b=QYZ4jI3duO0e7XrwBDBHEAPPBq9SzVmcAumAubw9Xwac2GQTGacrEsZy1biOYD198R
         Piif6F6P8NF5g01q3/1PdVSXSUHMBlcj/eCqKl6qIY1aQcWSYarbz6x44eHEMjmayfqe
         xwGnsyTjYq0XSwZuByznTt3RVUD3Pa2Wfbg+uDJefyl1NHiZU7IrSw4eDbX8WWUGG2ir
         kdBqJJzJOmVt2wAsGCsKF1xo/CdOpyTKFfStpEXhbLn5NHxN3PIiKRi5ByyaiblT4sdx
         hYWZrC2e59DpJMR0WmGpIEzKw0emzE892NWApxw4pL0xyYKsOOM/1lGHXGbcQIpuU6HM
         EMtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=ZzQN8nsMSF9F18blsiJv7J5FGgJ3P4PEEzk2TEP/q5A=;
        b=gnxjZiB7pOhvCe7NnfN1npb5596YZvGmtwxMn1gSQju03em98etMCETNGTd1KSDXJw
         GOdQ4NjHu3ke9sWcdAvoE1NJbLRH9Hpe8otMIpKiAHvZIZDiRsLN84r5lPZ3HjhUY8As
         M3+Ho4E8+Feu+A3CPBfEAYYOJNNnnaeroMDpj4CKYhQ29Fd96DS0kGkbGu5i+g42YpEC
         ygLQ1353GY4xNqRPfAS3Zb5pBVmvpN2Gvm7n9boIYVyXi/rfBfM7D2Hq5qVb3kt+mvwN
         LJlg6ex26Eph5w5MwFMPEQXaIXYD8amTrN7atc+8goxvtbF/SsojVMkz5aDyYmBjNckW
         r5gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wyVVhrq9;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i13si263714qko.4.2020.10.26.14.52.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 14:52:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [192.30.34.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DCA6B20708;
	Mon, 26 Oct 2020 21:52:40 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Kentaro Takeda <takedakn@nttdata.co.jp>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	James Morris <jmorris@namei.org>,
	"Serge E. Hallyn" <serge@hallyn.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Toshiharu Harada <haradats@nttdata.co.jp>
Cc: Arnd Bergmann <arnd@arndb.de>,
	linux-security-module@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] tomoyo: fix clang pointer arithmetic warning
Date: Mon, 26 Oct 2020 22:52:31 +0100
Message-Id: <20201026215236.3894200-1-arnd@kernel.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wyVVhrq9;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

clang warns about additions on NULL pointers being undefined in C:

security/tomoyo/securityfs_if.c:226:59: warning: arithmetic on a null pointer treated as a cast from integer to pointer is a GNU extension [-Wnull-pointer-arithmetic]
        securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,

Change the code to instead use a cast through uintptr_t to avoid
the warning.

Fixes: 9590837b89aa ("Common functions for TOMOYO Linux.")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 security/tomoyo/securityfs_if.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/security/tomoyo/securityfs_if.c b/security/tomoyo/securityfs_if.c
index 546281c5b233..0a5f00073ef1 100644
--- a/security/tomoyo/securityfs_if.c
+++ b/security/tomoyo/securityfs_if.c
@@ -223,7 +223,7 @@ static const struct file_operations tomoyo_operations = {
 static void __init tomoyo_create_entry(const char *name, const umode_t mode,
 				       struct dentry *parent, const u8 key)
 {
-	securityfs_create_file(name, mode, parent, ((u8 *) NULL) + key,
+	securityfs_create_file(name, mode, parent, (u8 *)(uintptr_t)key,
 			       &tomoyo_operations);
 }
 
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026215236.3894200-1-arnd%40kernel.org.
