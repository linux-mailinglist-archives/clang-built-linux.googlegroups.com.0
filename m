Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBDHSSDVAKGQEYRWD4QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D02E7F896
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 15:22:21 +0200 (CEST)
Received: by mail-yw1-xc40.google.com with SMTP id v3sf54973815ywe.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 06:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564752140; cv=pass;
        d=google.com; s=arc-20160816;
        b=EGK0tO0AQdS0qOPmVCexY/OZYTzfHVV1tVqxGlKgAEg4tzSNSPmQyP8kDkpHuJQ3oZ
         +puDALL8gH5Qoh0zzRLw6FJIk5Z5AIgOrmMgecn8jvCz+JDPNgZwTnJcShj6MsotYWkt
         YIDNOEtq57UTqDTKK/PeAscqENImur49p4feVCSGQpBFChpIv002DVLC1F29DWsPo1AF
         8iGImlY3/mhjiOrYqym3cwd8z8/BkNR1F0WoD1dC5Eg16Sh9EtQxe4g6rRAsWivfPRow
         ZVGT6e+DEZ0I/TmoIFbVD/9StXydRuolwyimR1lsxnd4/2PqRyBF4Nl+BvcUGxmMLum8
         26Qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=hRNjw88YK7M0DZ4c/wyu759/9BRJeLVsQwiJvGs3s38=;
        b=daJSpOPOm4AnVsf/zPXO20aEQvqRt6lxrOrXE5jTLrx6R9eBBg31uRpv4BNYJgjGDd
         HcyzSDFyo3vSxjvMyu9SPfF8nyhXDNfG7q2koHcvhAbh8J3RKSryoae2snI0+sx5yrHF
         g8GEWHtK7uCRZ1HYFVdbnum1oTo1t3UN4sdSgJpqF8XT6jLbKkoLvmsguIvfF3Gvbq+t
         A+rbleqTpwZvfMtQKhRVwWRdw+kmnyuXPCa/zhg4tHEHqSkTCh2KGZyKyf03Nit2Ne7J
         2Uu6b9QiJXNCAYk/1tNkm69/irpxgPsShGf4KhxpU9rmrqU/ilM3d3kHieOxXGZlgizg
         SmRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wKg9xc9z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hRNjw88YK7M0DZ4c/wyu759/9BRJeLVsQwiJvGs3s38=;
        b=XgzGtqbvhRf/vomv8s10/AzClxPayZGvrstFH2+bRArBfNQpUvjF+XjVs4Q5awZsxQ
         8WStZO/rkNSBRZqe5PPPicm7ClBJj1da/BQ46dVwL0BKtApxbu2zSMcuEvzeFbZNvmee
         rf2FE+XcKgayGY/aJXRG1376f1GvaRVPIZ+jK8nfGMjkJBPi4ndqnGMoYAzC6zdaT/UI
         M8g0S+UWsoQQ6xl5gZVMiDt4ni/nZsADOwqdQ+jwzZnOpUOSMb9TT0YzPg9NLiwZfyha
         rdBoQXSliiLx2MupThYvbyhYnKZMEEobPb50OGhYCOdYAT+s9N9aaSg1g9Nv3xBapDcy
         P/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hRNjw88YK7M0DZ4c/wyu759/9BRJeLVsQwiJvGs3s38=;
        b=nTYKmEZvSoq0f7X+BA588f0jf8qiyU+JdCTAHLQZpSyhhIUB6oyDwNaKPtQMM8KoNG
         a37nagAwYwVAuuQcP3kvLSjpCILwLukPGDGn2eySQ7rt68PH42yFz0BBSCv6fQTSUHId
         dKM3kXYgC4fTJH3r4dCBtQJEhR/G/2pxnDhSs/Rth+C2Yhu38hsrMF0KlLrU+83rsVRk
         QX+8t9xSv+b6iFhYquznJbwCMvgZ6hv8W9ZwJArfRrI2B3cWTdzidrEOHfvs5voCCNvm
         RWVV2VWQv0ixSDU3OJNif7QmGZ83slBvfBT0TH9UcvmXTUczwWqhZNUFWC/B5mrkpFHv
         qUhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUB5bOu2n4JR5tOAiwOWkfBv+Y90Zx7PydTn6Iq3Y005rmDeCt6
	6Z3me2pnBCV04i94WypPplY=
X-Google-Smtp-Source: APXvYqxb5iN3+Rbb104JKYIhlo4s1AgneOMurzucdsqB7u/81J+6hCl3RLRx1XSoHuYwZ6s2mf85Dw==
X-Received: by 2002:a81:8207:: with SMTP id s7mr78385896ywf.250.1564752140474;
        Fri, 02 Aug 2019 06:22:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:14b:: with SMTP id 72ls1031816ywb.15.gmail; Fri, 02 Aug
 2019 06:22:20 -0700 (PDT)
X-Received: by 2002:a81:54c2:: with SMTP id i185mr82498535ywb.155.1564752140071;
        Fri, 02 Aug 2019 06:22:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564752140; cv=none;
        d=google.com; s=arc-20160816;
        b=h4Yl0eh7BfNa5M6/F9ueJeCqISP4ht804B2a7DJemUXdosG/2jbrCWGGdbXmNb8jRE
         NB5FXl34He/kNA8b0wGq/TevYms1C4jblaQnwym0kZ+uZk30X4mW15tlfCGfiSpKhrvc
         +HnJrLA8S7TsvMmqz/1Xk/ywoZiAm9Upy2ZD657lmsnar2Lqy9cCEHHSsiYQi6NNyI07
         8upwGUOLAea1muDw8KzebiHGy+sGdKc09s6Em/UbcNSUl/n29geIuhlPnJkX5EoJsfxn
         w88POVeFruW3+3NbKWuBY3P8gAxFoHcF+0Rc/kUA1nAHvJCVwg1X6w5cE8f1MB5+cX6s
         WHaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=QCn0pYfx2gcE3PSiquCpMeG6kIwsrA4F+feP+hB9VVM=;
        b=s6iuOFQzAiFA1rc/jvxjpqfd0ZGtuBgspoz/eoqlGsvdomm1ph4BbWT8vIIi1NSBnW
         B7TYSUc2Go2Lfa/FMj9FHHBcFPuxu0i0ZjatQ9U7KJKAEv/5eXuIgUyYUMbDekHuywZB
         V4TVXVr34BgYAErPD6pMlyA4DBJ/W+xzU+0Q1Rq1wrlMM9d7j2IavxZLzpsAf6Ighief
         O0zdmS/Lvrv3r753ZvihorkQixkoRTJ0a0QBl6f7kQn6f25f5qmSRn+Zro4CISjHU/qt
         Zz2xP73U8YVbiw+1hDMZB/ZQUC00Zf6WEx7BvQlbSMx+9HL7yeIW79T0+ECMLrM8+u9M
         f5GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wKg9xc9z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f131si3122530ybf.5.2019.08.02.06.22.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 06:22:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12EBB2173E;
	Fri,  2 Aug 2019 13:22:17 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>,
	Roland Kammerer <roland.kammerer@linbit.com>,
	Jens Axboe <axboe@kernel.dk>,
	Sasha Levin <sashal@kernel.org>,
	drbd-dev@lists.linbit.com,
	linux-block@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 57/76] drbd: dynamically allocate shash descriptor
Date: Fri,  2 Aug 2019 09:19:31 -0400
Message-Id: <20190802131951.11600-57-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190802131951.11600-1-sashal@kernel.org>
References: <20190802131951.11600-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wKg9xc9z;       spf=pass
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

[ Upstream commit 77ce56e2bfaa64127ae5e23ef136c0168b818777 ]

Building with clang and KASAN, we get a warning about an overly large
stack frame on 32-bit architectures:

drivers/block/drbd/drbd_receiver.c:921:31: error: stack frame size of 1280 bytes in function 'conn_connect'
      [-Werror,-Wframe-larger-than=]

We already allocate other data dynamically in this function, so
just do the same for the shash descriptor, which makes up most of
this memory.

Link: https://lore.kernel.org/lkml/20190617132440.2721536-1-arnd@arndb.de/
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Roland Kammerer <roland.kammerer@linbit.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/block/drbd/drbd_receiver.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/block/drbd/drbd_receiver.c b/drivers/block/drbd/drbd_receiver.c
index 90ebfcae0ce6e..2b3103c308573 100644
--- a/drivers/block/drbd/drbd_receiver.c
+++ b/drivers/block/drbd/drbd_receiver.c
@@ -5417,7 +5417,7 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	unsigned int key_len;
 	char secret[SHARED_SECRET_MAX]; /* 64 byte */
 	unsigned int resp_size;
-	SHASH_DESC_ON_STACK(desc, connection->cram_hmac_tfm);
+	struct shash_desc *desc;
 	struct packet_info pi;
 	struct net_conf *nc;
 	int err, rv;
@@ -5430,6 +5430,13 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	memcpy(secret, nc->shared_secret, key_len);
 	rcu_read_unlock();
 
+	desc = kmalloc(sizeof(struct shash_desc) +
+		       crypto_shash_descsize(connection->cram_hmac_tfm),
+		       GFP_KERNEL);
+	if (!desc) {
+		rv = -1;
+		goto fail;
+	}
 	desc->tfm = connection->cram_hmac_tfm;
 
 	rv = crypto_shash_setkey(connection->cram_hmac_tfm, (u8 *)secret, key_len);
@@ -5571,7 +5578,10 @@ static int drbd_do_auth(struct drbd_connection *connection)
 	kfree(peers_ch);
 	kfree(response);
 	kfree(right_response);
-	shash_desc_zero(desc);
+	if (desc) {
+		shash_desc_zero(desc);
+		kfree(desc);
+	}
 
 	return rv;
 }
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802131951.11600-57-sashal%40kernel.org.
