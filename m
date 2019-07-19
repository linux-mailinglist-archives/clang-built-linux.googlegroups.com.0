Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBK4AYXUQKGQEVQA6HZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3B46DA12
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Jul 2019 05:59:41 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id e39sf26302302qte.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 20:59:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563508780; cv=pass;
        d=google.com; s=arc-20160816;
        b=OPo3xe/BzMosYDpvi2tfe5/sKZ/OkhrcypoIv3RiGDO5vNc2HF3oQ4o4TYixs58rA6
         RUbxceDb4kGuorHbG+VmBy5UyLt9CK+WU2d/358d7i+rG6BbCd6YuVi1CLh+e64EOMQD
         28QgYQBQ4OOzkjyL69rpt7OPseuYPxvMsBNTgJ6QCQxLCL8feIyGXxF5F6fbShJXsaTQ
         t30cjPikVBynzm/TwRUH7ScISm/i0jTzYgvi13XMjYML464BtEutj90aDCU9mdv8GXmX
         njrEvM/OjvZBTEjWJvE527ckyLAN6u8A7abgQEvJEJuzzW/3zrvo85oTgR+RnIWGtrA2
         roOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eMAOwgrveHSbqDicut7vljefNtIjJr0QxYvk074LJ/Q=;
        b=eeVTdT/7bS5CPwdy3bZfYnfu9CQNVOpMoNOra9EY3fev8usKQH8nGjm5sgrHlQyLok
         v5p5H90AfYpsa1/7PjGAImfmFlxzmqjQSdI4EXSorSg3GW5JWGYalqRPXywDiSGt5vNd
         aUhZf2w4j3rIWmUZh7gPnAD2yNbn9n8nYxJvIvmc3lv5ab5i+LmltInIM2UqYDA/PmD7
         2txBWmqZXgpr713oEL8nKYXGoiOXIfv2yotOxWb/phSqadnvzOxM1EP/YH7eT2I7a8cg
         0EkZ/vOpuHO5JulGVoTL3mGjktB89MD3GzjSDQfDmyc1ZwyhU+thJXYPdbJ8gPd0wEW8
         vGDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1lG41vMU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMAOwgrveHSbqDicut7vljefNtIjJr0QxYvk074LJ/Q=;
        b=slS/ew3PybzCmbvG/vzwEZBkSMGROy1v4eVrRprdOhZutT0Cy91K/kTGVD18VrcT4K
         UjBP7bdENJuTTEtpSqSIYt3zxDBnwbUv6DwDyd3gi8GIh+RSOP5H+rm8PCK622QuU1nm
         ZqSUjOyY7DTlT1lbAhrRSYU+mPcBqU9EuC9AU1Okp/BWYcB/DWtGlM8wUIsmevKy9Gw5
         lG3iMHlmliGZa0lnOzbLkA2m+pdKvAw+n0xtJicJPiHtM1oVgXOP3u7GUkosbGtubZ2O
         bJ3gneY6tYqWKoNrWoXpIoxQv02lXuZVSkFvg5lBu/9EbthAO6tOacrtuliEdb2tBjar
         WDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eMAOwgrveHSbqDicut7vljefNtIjJr0QxYvk074LJ/Q=;
        b=jGQXPCkkolL22sdDjN3+qWJOQr7iEKi9je0MEw5FjblEHOoXkAJWvNRP0zF1HErwbB
         z0seIP3gzRDu++llsbVyrFmEP9+2EA5piOYT/kbyhPZaJr3whI+V8dUFKjiz6DCLlacZ
         E4qbNEcRy5i0Gmn4sTgbboWU88WTS7qQ5+NUxMdab6Iy0yZlPmgrfkpEdlrQkPzABkE5
         HmpiwEsXZU+usUtgby49X1Q+7yXVcn86cycEopmuIj6w1yhj5y3sauRrTvhb3hGTD+V/
         dJdT4BULJiM2JCUgMXj0tFIGpOt++kL8m8RUXpqUhzkE4ZZuiewcXIkdoLcJM5l3iNcQ
         Hr4w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWiCJU6WT5Fd4HIxK22jmZU9a+tWkpTKCHAHxKj1+Qmm9nAF75y
	b2VB0vxm5oNNwt+mkKZLrH8=
X-Google-Smtp-Source: APXvYqw37ocbs12OcYxCjkrzjZURDTtYA6xI6WLW0gM1AkcTxu9/WEpPJ91U374FiGkBFuRMzP8Lmw==
X-Received: by 2002:aed:2063:: with SMTP id 90mr35008245qta.307.1563508779948;
        Thu, 18 Jul 2019 20:59:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4c97:: with SMTP id z145ls3804322qka.2.gmail; Thu, 18
 Jul 2019 20:59:39 -0700 (PDT)
X-Received: by 2002:a37:80c1:: with SMTP id b184mr12394504qkd.381.1563508779740;
        Thu, 18 Jul 2019 20:59:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563508779; cv=none;
        d=google.com; s=arc-20160816;
        b=UTX8qhTKkydf10Coa1SwwCZmOJ47ehoYaGaPyMKzrqP+MnaoecnmzTesrmAEP/kQ0X
         2gfelx7G1XNj9T1zCh5/OkjfVi2glRkS9dHZILoT/s1htJnjYiHKvIJassRi8uYsEs99
         3SzYERl9yUecxPZvQ7w6jqnywHee2yxctgDlbDS26KBB5LlKOoPGuzspeJgBMpRf1K7v
         akthSaoIodwsis3XxGNdOKaHD76tWTWuBLujVzBrj0AehOjtjOeirLNnPRPnzgtCY4aR
         xzPV53ldXNO6pHYEk/IKXahL087Qe9KSnBuM7jThcAhJiEbWGbUOB+JxWljNbphy8kH8
         MARA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5Dlo2RJJ/18ZqwPEw8FfDZRRTHMTwRVAM6gbQPEsYpo=;
        b=notOB4uXojIT+LBd1F2pH5Kqp+VL19kg0R+n+DklPCw80WcPEsoctykyvR2v54l9qY
         pmRNtveMssKUr5ESXSkgvbsYEAfMPNb7NaTDttroqiSAn5KuBgJrtVuR/L/v7E3hZChF
         Mi9k08RK+nj329R4bmPC91PHdFprKq04B8qoApyXS3MlXj6E0FLb7bb2gob7klASGuWF
         NjPx+RVxnOOjZA4qjXHFyiJQmXKRav+CKoV8LpQ7Y8TuzrX56B6xsB3wimS3xvzSa+Vb
         fn9x7Ni3eSDGkQjyEByb30JtrFILUc2jPo/4p/4JvAmV7CbWCb/d3qOP4lbjOp6B9MqH
         ZzRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=1lG41vMU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u204si1184416qka.6.2019.07.18.20.59.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Jul 2019 20:59:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8CD5D218A6;
	Fri, 19 Jul 2019 03:59:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	Matthias Kaehlcke <mka@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Alexander Duyck <alexander.h.duyck@linux.intel.com>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 085/171] net/ipv4: fib_trie: Avoid cryptic ternary expressions
Date: Thu, 18 Jul 2019 23:55:16 -0400
Message-Id: <20190719035643.14300-85-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=1lG41vMU;       spf=pass
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit 25cec756891e8733433efea63b2254ddc93aa5cc ]

empty_child_inc/dec() use the ternary operator for conditional
operations. The conditions involve the post/pre in/decrement
operator and the operation is only performed when the condition
is *not* true. This is hard to parse for humans, use a regular
'if' construct instead and perform the in/decrement separately.

This also fixes two warnings that are emitted about the value
of the ternary expression being unused, when building the kernel
with clang + "kbuild: Remove unnecessary -Wno-unused-value"
(https://lore.kernel.org/patchwork/patch/1089869/):

CC      net/ipv4/fib_trie.o
net/ipv4/fib_trie.c:351:2: error: expression result unused [-Werror,-Wunused-value]
        ++tn_info(n)->empty_children ? : ++tn_info(n)->full_children;

Fixes: 95f60ea3e99a ("fib_trie: Add collapse() and should_collapse() to resize")
Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Acked-by: Alexander Duyck <alexander.h.duyck@linux.intel.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 scripts/Makefile.extrawarn | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
index 3ab8d1a303cd..b293246e48fe 100644
--- a/scripts/Makefile.extrawarn
+++ b/scripts/Makefile.extrawarn
@@ -68,7 +68,6 @@ else
 
 ifdef CONFIG_CC_IS_CLANG
 KBUILD_CFLAGS += -Wno-initializer-overrides
-KBUILD_CFLAGS += -Wno-unused-value
 KBUILD_CFLAGS += -Wno-format
 KBUILD_CFLAGS += -Wno-sign-compare
 KBUILD_CFLAGS += -Wno-format-zero-length
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190719035643.14300-85-sashal%40kernel.org.
