Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBB5H632QKGQEOSA74PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 107301D39CD
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 20:52:56 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id b137sf1716924vke.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 11:52:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589482375; cv=pass;
        d=google.com; s=arc-20160816;
        b=iKye7nVFs/vsSFYhjVAuQuIDB0amXS+EuuWJ+mUQ6S2AKA16m41m/GK+AGSIpp0z+d
         ARt3IL67BtpbLHeSMK3RW+/mkjpmQBqfePsrSyrM2t5dFMVAid5VAdhC7U/TjMSbrVzi
         iZA3fKxSlLLkWO58MK5v9f8ciUBKk/O1WA7pSq6K6gq/g0edCfv+xBnBkgkJt0YSmUSA
         q9b6Ht7IBqpHo1N8uGQdBSLbmIvbelpIIUhug4eZazTFzaiXtmiqFktDmoUuoAhtcqqu
         MAURU0Q/RWj61lRK6Pnfr5A7lCd+DKOAs0k8B8kMsm1hjgvtAekfC8HFfMJt7hN6YSaV
         2B3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=9RQrux2Uy1TqNNntIJhB5gLZYlhJBMHnXnU2KGtIXsI=;
        b=qjUap1Sm3EuYM3HKu3i9sijLzrfRriddIIfCfqcXCb3rByOK5lh7mZa/Zts9R4mqdd
         qPxMPqEljA2/M7Dqb5T1d7L9Plnp3Y9NiWeoyxOEnfgnErgLX6DR8JZUi/hC4yEzoSHj
         Mdd6TWT4l8u1p4DJYEpsMcPRPNFsJrScTUkjwCdxrmMovggZE0wQOdulARi5oYhQP7SL
         vd0S7Q9VNAZH8FM5nCnKYKmyuHuUF7mZTD+IhD8H/dJekpUrthJROvRvoxKUZ1jRY2KD
         X9RnMNgeMW6Dc9OayJEhmx6B0FXayY8Q42ABdbbtS5Q+cgWVee/wxkR7tweX83hk4Rxj
         9/5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M3EqFsbs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9RQrux2Uy1TqNNntIJhB5gLZYlhJBMHnXnU2KGtIXsI=;
        b=UZGVlRwfU8wnuKr3S1e8R/WX/t5GcJzLc7UMq7UTts7aHnKSpCXcnJNjd5qgttDJme
         biMIm1RyYnCJBI6wQpro4hwjL42tNBuHk9Y1sosu9ZyE8TsOG9MYZFEnrHZGYMJ7XFcK
         V+O09NuqjaLXoFdJaltUokZhsRLbzuICJD6HNteVyBb2tEpsiRDhoKdz7+56kf4KR7wg
         VHY0Pfm2e5d95PXCp7enO4kfXkE+vho1cZlL+Fsywr/oe6PqUT+5tNqJI8W4AGa34ycU
         A7FgF+qIslNkSL4XuUtgF3CQGH9s4hN3AKNIiyczCyp0ydD2OPQfpUCQWGDOj9fZ8f7u
         VAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9RQrux2Uy1TqNNntIJhB5gLZYlhJBMHnXnU2KGtIXsI=;
        b=ildBfzvKkZ5DSoz4UiBUsZFckNTkGwrffhSmBYZEghfRg9/cV/3Ah+bqK0NSBLnUyB
         HPJ6+vg1gKS5j4baMzM9ndHQeZdNcwKSNZ3uCAjWJ8ZqbbBe6Om3fxobivmaOTkjYkr4
         H/JDbkpg8Q0jgLcsWzq8oUQj4U2k0L0ANXTdsheyZ6h/hu86nl7Zwmy9EzuBxhfW8N4H
         PQQ4mK9aWj5eTyIovod+8tm3cohNKz0PsqgJlC8emcCVjaUjFVJSXUlOiZ2m4aHFso1k
         IC5qVP5+wMoMINdrG3X2L9XFyYUMn0z4eJDZIqp+P3cFB53biqXr1+pe6goDv2Vpt2aP
         c0Ow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+aZa3+6MdxhSx7zp4c1ra6BJdP7fQMHuoezMF6/YszoDKDiS+
	cxCZkx9bSTUCLBLsF+KTOuU=
X-Google-Smtp-Source: ABdhPJxSB4znIhMW2hxsPZsGkzR0dIRRqmEGhGrww69IIidadc27g1TKpsgOAG6Ro7/39G9BLCJSNg==
X-Received: by 2002:a9f:2492:: with SMTP id 18mr5426144uar.2.1589482375106;
        Thu, 14 May 2020 11:52:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a78e:: with SMTP id q136ls213278vke.2.gmail; Thu, 14 May
 2020 11:52:54 -0700 (PDT)
X-Received: by 2002:ac5:c0dc:: with SMTP id b28mr4941599vkk.76.1589482374788;
        Thu, 14 May 2020 11:52:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589482374; cv=none;
        d=google.com; s=arc-20160816;
        b=BWjqDFXRgrUoPyLF/NlkUp7Kk0vUxtCJ0tRSbXYMFU1m/7SYL/XEvNSB5qPE6/3uD6
         rGcJmRKDSjORb1xtZ3WIMtxqCW8STF4d9+flE9ZW2z+TAHVmmpTgburY5ThhD9errAev
         cQCrTfaaSgC++oQD5+BaEgghi1E7cna/vGxWvIaeo1txdzbqGKynYUb5p+eggtWepbSz
         shibnBJqKVGgp/LRZhIo05jU+xKjWiQo/q7TNiWPbyDOpeJhecex7hZO9P7g+xZLuukG
         yd50bh6r6or3BZBQfOIszmiXalrD9fRqVb2gOUk+wdFmRXrX+XG92GM8Qk8raUwJzXL6
         pt/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=BPNtmFgM0FP3sA3VjSAo5cGfTkrQsj8MLQro3ZO7N7Q=;
        b=oT7mk+U5Xoh+hTGezzvo51zGieFSOvHljRTqHYTOLdRr5kBDdJ7m6n5IafFhvSmhLV
         B+o/1cKc9VkqndW8i4PNM6zgzVePLVuDvFoF3Io6OlCCZ7T8EBHkIC1lvoZo0R0ELD7i
         HCs2WWz8m91vs4TND7qwFW1FqszOaBSwc4SWNsqEiDsn17npV1PNOajVcMLilzzC1jYp
         KZcz9s/F8+D8xIIG1VLaj/TtiwYlQyraWUKeLQw3JVyRhu3KLzDKuFsv/IIiR5QFv54H
         Phd8/FDjsZv3FBrLd6abbQW2b7D/YXuJYJo7jwtm6LFBH53pNY7nUIzqQTPrkMhubRrv
         MWYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=M3EqFsbs;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c14si292541uam.0.2020.05.14.11.52.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 11:52:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C261B20722;
	Thu, 14 May 2020 18:52:52 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	Arnd Bergmann <arnd@arndb.de>,
	"David S . Miller" <davem@davemloft.net>,
	Sasha Levin <sashal@kernel.org>,
	wireguard@lists.zx2c4.com,
	netdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.6 51/62] wireguard: selftests: initalize ipv6 members to NULL to squelch clang warning
Date: Thu, 14 May 2020 14:51:36 -0400
Message-Id: <20200514185147.19716-51-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200514185147.19716-1-sashal@kernel.org>
References: <20200514185147.19716-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=M3EqFsbs;       spf=pass
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

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

[ Upstream commit 4fed818ef54b08d4b29200e416cce65546ad5312 ]

Without setting these to NULL, clang complains in certain
configurations that have CONFIG_IPV6=n:

In file included from drivers/net/wireguard/ratelimiter.c:223:
drivers/net/wireguard/selftest/ratelimiter.c:173:34: error: variable 'skb6' is uninitialized when used here [-Werror,-Wuninitialized]
                ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
                                               ^~~~
drivers/net/wireguard/selftest/ratelimiter.c:123:29: note: initialize the variable 'skb6' to silence this warning
        struct sk_buff *skb4, *skb6;
                                   ^
                                    = NULL
drivers/net/wireguard/selftest/ratelimiter.c:173:40: error: variable 'hdr6' is uninitialized when used here [-Werror,-Wuninitialized]
                ret = timings_test(skb4, hdr4, skb6, hdr6, &test_count);
                                                     ^~~~
drivers/net/wireguard/selftest/ratelimiter.c:125:22: note: initialize the variable 'hdr6' to silence this warning
        struct ipv6hdr *hdr6;
                            ^

We silence this warning by setting the variables to NULL as the warning
suggests.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireguard/selftest/ratelimiter.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireguard/selftest/ratelimiter.c b/drivers/net/wireguard/selftest/ratelimiter.c
index bcd6462e45401..007cd4457c5f6 100644
--- a/drivers/net/wireguard/selftest/ratelimiter.c
+++ b/drivers/net/wireguard/selftest/ratelimiter.c
@@ -120,9 +120,9 @@ bool __init wg_ratelimiter_selftest(void)
 	enum { TRIALS_BEFORE_GIVING_UP = 5000 };
 	bool success = false;
 	int test = 0, trials;
-	struct sk_buff *skb4, *skb6;
+	struct sk_buff *skb4, *skb6 = NULL;
 	struct iphdr *hdr4;
-	struct ipv6hdr *hdr6;
+	struct ipv6hdr *hdr6 = NULL;
 
 	if (IS_ENABLED(CONFIG_KASAN) || IS_ENABLED(CONFIG_UBSAN))
 		return true;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200514185147.19716-51-sashal%40kernel.org.
