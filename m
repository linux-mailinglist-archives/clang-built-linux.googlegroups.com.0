Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLOVYX3AKGQE24Q7G3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDA01E886A
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:03:58 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id mt16sf2653022pjb.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:03:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782637; cv=pass;
        d=google.com; s=arc-20160816;
        b=vkQhK0ED/dXxjXhjQkK6wW9lTcNH5h8c8k6wHOGmd/3QNDmNGZrPIuXRHNP5T5rC2S
         75bkUZ7/orRMucybR7rAz32pNaTwChrLzdS6lYshWwW7ZpX4yLEXb/jK3xxlPuSslxYF
         8epoMdzBH6Q2c3rMbEvtHOW0UPK6muqES7QoBW2fMhCXiw5VXuRPkhJWvqmQSCtZCbKV
         9aBDOGOQ9a3K8KEMN8H6+BtFEoBYveN20vuqQJnttlNvemf9a3Sxa0WQ/mIhoqTi/5KV
         4L7hgj4MSnZ39gNDUKyI899KsY6Dn3PJNe7uFZOgH407dISNcfpo0buAxvGUrPexncOe
         9IjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BfMI9lnq5E0sb1s7PmBxN9gQPJzH5qe3yImT7W6aXSE=;
        b=smtrpt34J/QfC1gw3yCUqAQeDgvEKzoJkaCadWDHtngGEbo/C3Wihg/0YRofeJ4HI5
         CfSAuFKeoYRznGFfAtLCz9KQUPmi0ybkuIBalOr17vsJFq96hLeLGTOrPuLLcIDpZkRY
         N7UvJFcPHs+ONrfkHJcNYy81wCKvFLmE0xYOlT+ZI206T2a5PeXdL0H8FOxoitc6I2iO
         pwBF2Y0gcFpj8+ylNGISMd9Lqd3AqiYCEK7HLGHYMQZxWMuvC/oYhXyGW19b4zhoS0Xv
         OC2wGkPT7T9qY37B/zSPxX8MOF8KjcyQfXBQ3f89glNlPgR6lNnCB2rm3vvAYGrZzWJC
         nz7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HjzFMoyG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BfMI9lnq5E0sb1s7PmBxN9gQPJzH5qe3yImT7W6aXSE=;
        b=RzLj6tQp9byuLnKnuBNbWDGc4u/gZF4f+K7mSLsGDTsnmdFhfe4g3SdKi5DW4/Bv7g
         keKVZHKvo/nqMHXUQDxLq+2ZndxhbadTpWCQEymVW1jLwrSeaJFJ+b6zBWe7To7N3N0L
         2U45QdzMx3+w4GR/OEYJRqhcSIwoyHB8XJ3exGJPW5upERweWG/Q/Jrfctugv57RFKSY
         b7u/60WOQPYfpXr3kZIDuNvXpqFKIoRanXoyUYr6WmNsZt/hjF4zK6129vogtVBFAsAk
         09StU0qXCtuLiAxBn2EUlfpqLjImqi8GEOMYc0ft4ggWhitysXBu71O8fFJvcLERbABh
         UPBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BfMI9lnq5E0sb1s7PmBxN9gQPJzH5qe3yImT7W6aXSE=;
        b=icnhSNZ8tOWy2ke3/mNs2ymc+C1rlp7GVKqMzWOuaO90FIO7cXbvGewWudhuiNbWkX
         0WmbzN87W7NFmyxPelRraX1iHeOND3DHF7yyaLlT05qi5kx0c/LDiQuczncbCwLb5NOu
         2XbQw4UKA2WTemh79ZbR8PthFybZ4xMTtW8SrUOoXN9Y8CFrKFOZnVDIWarhjgHyTD9Y
         8UwJA46mehFy8WKMcDgQy0YPwstqtR3UV4papJf/bD2+OWqQPQ3PI8b6hoMeKzX9uVsK
         tyjQvYj1NK0PrTOIjK7aOXNA1DTft6T2hCK0QML8jSzb6Kce8/NqN8GUhTcfeJa5yq5a
         /nrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309Ko+NJPvKbRB2k4HDWlFnThWFqcdwaeJQ5cu7U3LZJ9nexPPl
	zxx++q9KNumspE5p9batDz0=
X-Google-Smtp-Source: ABdhPJwhC/ctrR09AQs+ZnXac0Kw12MjVnw2nYpb6tMYkjMwiRz3f+vFvZhkmjMLZHZsMpl6E13onQ==
X-Received: by 2002:a05:6a00:134c:: with SMTP id k12mr10023155pfu.313.1590782637700;
        Fri, 29 May 2020 13:03:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1415:: with SMTP id u21ls596607pgl.7.gmail; Fri, 29 May
 2020 13:03:57 -0700 (PDT)
X-Received: by 2002:aa7:8d8a:: with SMTP id i10mr10094007pfr.193.1590782637314;
        Fri, 29 May 2020 13:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782637; cv=none;
        d=google.com; s=arc-20160816;
        b=aksTuIzAX0uvW1e+QtEf3MfgWX5QN3KJm+9VBU7hw+1Jc+6l5sIURifaYFgpJvpjaR
         wI/pnulUahmQCT+vAtkooYjPnGFrJXRQ3ySYfYf7e6Ck2PC1bW6ET2G6ui7yQaS/++OE
         yIaGza00fU1OdENKSXY4jea2YGiqz3u5UMHnNfntQ3lRnMQ7zHvY0psZBE+nhT8rylwP
         UVYjq0gYOPjcXAol1qYr+xi4gw27NeTqYBqdOsYTnQIXxEupL2alCZQXmYVRZPE9ip4b
         GphIyCjNJu5Li50uFY6wWwxYZY+TL28k258ATiy/6qsEn+FDRHP5MqMVfNshfi7UoTgH
         rL+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zH4NCz4WUaJ18HzpAMLRB8JzZlzE4XmxaFkgad5236Q=;
        b=YqRDVHKVNz8zgz038RUA1bM63Ai2qxpNz9VxLKuPK3LPAqc6tIZI6yyPBTpibetklY
         wvyz8DLLYEckLLgPip6MaJu8vjxO1hUVsfkYI9zAmPfGjK8cfqfPTT/AgFWYbZM51g7H
         Mt+7DBfbVBzlwRbYlxLZFfff2gaHQC8thb5ONWEgjtkNenQHJEg4IBqyZ/44FN0+wROp
         w/nmJEuXoIVb8Z28PXrdJ64/3pO83L2PxrVkczzxjoOQzYlbS4kEibCj5Uf7b/oEWvGq
         IfOLs2raPLWHrHVI+9V/ioDMP0grNKOttNGlfUX3xHtnkH1ebTPZU765uh/E+lpp9F/1
         alyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=HjzFMoyG;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id m8si567694pgd.2.2020.05.29.13.03.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 May 2020 13:03:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id s10so446295pgm.0
        for <clang-built-linux@googlegroups.com>; Fri, 29 May 2020 13:03:57 -0700 (PDT)
X-Received: by 2002:a62:e419:: with SMTP id r25mr10194795pfh.82.1590782637067;
        Fri, 29 May 2020 13:03:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o14sm8055147pfp.89.2020.05.29.13.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:03:54 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	stable@vger.kernel.org,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] lkdtm/heap: Avoid edge and middle of slabs
Date: Fri, 29 May 2020 13:03:45 -0700
Message-Id: <20200529200347.2464284-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200529200347.2464284-1-keescook@chromium.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=HjzFMoyG;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Har har, after I moved the slab freelist pointer into the middle of the
slab, now it looks like the contents are getting poisoned. Adjust the
test to avoid the freelist pointer again.

Fixes: 3202fa62fb43 ("slub: relocate freelist pointer to middle of object")
Cc: stable@vger.kernel.org
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/heap.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/misc/lkdtm/heap.c b/drivers/misc/lkdtm/heap.c
index 3c5cec85edce..1323bc16f113 100644
--- a/drivers/misc/lkdtm/heap.c
+++ b/drivers/misc/lkdtm/heap.c
@@ -58,11 +58,12 @@ void lkdtm_READ_AFTER_FREE(void)
 	int *base, *val, saw;
 	size_t len = 1024;
 	/*
-	 * The slub allocator uses the first word to store the free
-	 * pointer in some configurations. Use the middle of the
-	 * allocation to avoid running into the freelist
+	 * The slub allocator will use the either the first word or
+	 * the middle of the allocation to store the free pointer,
+	 * depending on configurations. Store in the second word to
+	 * avoid running into the freelist.
 	 */
-	size_t offset = (len / sizeof(*base)) / 2;
+	size_t offset = sizeof(*base);
 
 	base = kmalloc(len, GFP_KERNEL);
 	if (!base) {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200347.2464284-3-keescook%40chromium.org.
