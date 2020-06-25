Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5UV2T3QKGQEVB6DMDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA04120A6D4
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 22:37:11 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id h19sf947651uac.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 13:37:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593117430; cv=pass;
        d=google.com; s=arc-20160816;
        b=XoA/ee6j/l49EY5GsldYV6O6bBOHCv1S7pLNXbAAWCPKT1S1DyMSmM7gF2VeuCKziL
         0M+1aWQRbTtqrn/aWeyRixCFSwH+DhSAPLtyvSWt0AiqQV2EVn6ZehEmyMK4dQ2BpL36
         OL6gb8wL0Je3WmcvOO7OyVGWv+27Sp2MkOaHMk9lvPxY/BkawmXPTT/pG7vFPK1MairF
         /bIdnr4wQwQNN6fmrbc1NGNaI692E0nCZdRQUXoqcHil/t9Bk1s2WlGZcVIHABfAy58O
         vYCEagzRsp/guRX/vBd36HeyBAuwKM4tj5pp5lYXcCk9MEm9SiSU7zTv+UTXbFmcX76A
         ceRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=jAo1O/in5VJ1Hid/gIXoo2c6FacAx+7I4R4hxZumWX0=;
        b=ZeuqXJpX7s6TK1zCcisShs84bUhrdqeWwk69FSGrYLNyZ5FmO3Q2zKJ/a0kW1iI66a
         RGNAc+DcQt43DXY4eX1TVsZHPtP2UyhhX2t/zApDLqG2iHQ3Ucw8tRuWr3ZGH0IG3Yky
         5zK6+s3k4HzhoFYoPzQnARdtYEyRPglmMgF2Ppc9SqM7mxzWSaq3tLqSarP5b7I8RrcJ
         iztvJKMNQaVYSD4QUd7r2y1ixReDiVsiQU6lSIi8IFiPMcMTADldd0UWhym4RTxDBoZ2
         PCr72y2rFrlKe0f/efqTRby1rHbsSKnTIvHQvTgbBRtCeSE1o761g04Ium2i1VOKbFbI
         qO9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RBKdveDB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAo1O/in5VJ1Hid/gIXoo2c6FacAx+7I4R4hxZumWX0=;
        b=B5ZCa8vTUc6h2PtGsLyZZyICvKrR80t1RYT8rkKgSNkGAPTDYsuhSR235twf8VZVIv
         0G6UcrBk/AbvnMmBaxl6/zUGEC96tlGRqfwuHccGrjlABg2788dYY+rm42VPb2ykKAnl
         xyDbsN0/5zVJj/UmmO7c5Wk8hHDB5L0XPE6F/yyXLtWfOG6FRHDV6IO/CTCzMoTE+qLS
         3Dc+RPFsWd/ig+4+2HBtxftXHbviUW1kLQQ0nWaeMqGveThCC/BirwfN8QbWpzNPwWXX
         IMoKlBJI3kdFyhHvQRqPI9QHo2KfMB6sXnQ3QPzU7xKDbMIaK99LjSt4oGtkmhZgxiaK
         1kiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAo1O/in5VJ1Hid/gIXoo2c6FacAx+7I4R4hxZumWX0=;
        b=R6vqOZTMsd1Od0eYPm893E4dY/NE+rWF4zRW7CmavQZddQTRbmvjnTc6Iaj+/RWwjJ
         gz3Kp7jgUtP3FFIbPOjTam5M/FZSSMcEe+tTWMxCQSUQiR+ngbuyL+3pFt8OwR6UzmXp
         wWV6dYKKuT9R0AV6Ue2Ewb3ssVcAGeiA9n2QNQAcBpu7gsFs2XZ1tRzW6Rg9JRaCAcLt
         SEXkZFKm9KxQ8kpH1MefeCdSsoJWGOrpf1xxiIf/781NIrQNvjJLn4vhJkACCwaS4I1+
         rPsvR0jEn3Ou4vrdzeUQ5/F5jQliWnJqqcu/iUnI6NnfLydjUWh3LsrH5ye5mwN59NtN
         2u6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532y48oOYq7cCDUCI3J0nkC1Urlp81PChdLE+LKKf3VUDRDsH33p
	B3eRSrC1C9z+0Fh1bLZOk44=
X-Google-Smtp-Source: ABdhPJzNgfyZZH768GYHihKXg41ixS/KGYsKOP7WIdYUfE8kClMNpnE/29tR484LiGmiMWsuzz66EQ==
X-Received: by 2002:ab0:7202:: with SMTP id u2mr22185864uao.119.1593117430716;
        Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3749:: with SMTP id a9ls473709uae.11.gmail; Thu, 25 Jun
 2020 13:37:10 -0700 (PDT)
X-Received: by 2002:ab0:70c9:: with SMTP id r9mr23406630ual.15.1593117430307;
        Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593117430; cv=none;
        d=google.com; s=arc-20160816;
        b=SK7NKg5OggL4XeButf8KJBJfdQCMs3n3KB+HdQHXgr5/tynq0F3DBJ0CpxKQwfhtd+
         VxRhz7qoHxtBfteSrxdXFU2oI74n+JUj/4cBJMzwtxLXVqxPFnpV2zI4hOSiK7UYQjXW
         JKw80Lp1RRqatTOrJkddxPrTLwRfj1CBmbdUA4hBOH+wh859/CxUofNIKyhG4qZ8qTnk
         4aO14j2GXiu3MW+s9qyyT6YxuO/vH5Df+srjroxhHG1XSIttGYshE1wvYD01ehbDWlYn
         nHBBIsInkyEAU8P8frcGZKqkF1Zs6fuEzKul0PYTPdAyt4z9p0qsCzRQiy6mlnL9eFSs
         XKmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zH4NCz4WUaJ18HzpAMLRB8JzZlzE4XmxaFkgad5236Q=;
        b=JINyWfWTjCDRdr7DYFOurV19UQBqXFXW5ufvNDrqZozbY5135NfqgLhRTIds+XF9hI
         NCruqoDBCWFgghb7hagFf+qHO79U7jy/iqsE3sZ2x9XKZohASIqWa0+EVhNtdNn7mW0+
         Y6csFt+kQXnSRd+ayBvS9lkQpHWGgrxQRhNDpkwPgNTRGSvORBS3B9KIJnfQTabWIX9c
         SBegfwpjhM45BA0+R2U0I7evtkZ+UB8uW0jG4o0dEpU64OHaUXdkLex2GTHUrnOXgTxC
         3bE5139jLmkiOYOn6doYqrTBQFfxLoDZybJaDvXKOMys4cfoy0Bk4L0dcuS6srchn1U6
         qKNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=RBKdveDB;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e10si161701vkp.4.2020.06.25.13.37.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id bh7so3306077plb.11
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 13:37:10 -0700 (PDT)
X-Received: by 2002:a17:902:dc86:: with SMTP id n6mr35678275pld.82.1593117429438;
        Thu, 25 Jun 2020 13:37:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id cm13sm9447469pjb.5.2020.06.25.13.37.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 13:37:07 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	stable@vger.kernel.org,
	Prasad Sodagudi <psodagud@codeaurora.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Amit Daniel Kachhap <amit.kachhap@arm.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Richard Weinberger <richard@nod.at>,
	linux-kselftest@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH drivers/misc v2 2/4] lkdtm/heap: Avoid edge and middle of slabs
Date: Thu, 25 Jun 2020 13:37:02 -0700
Message-Id: <20200625203704.317097-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200625203704.317097-1-keescook@chromium.org>
References: <20200625203704.317097-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=RBKdveDB;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625203704.317097-3-keescook%40chromium.org.
