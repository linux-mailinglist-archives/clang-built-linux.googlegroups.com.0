Return-Path: <clang-built-linux+bncBC27X66SWQMBBE5F3H5AKGQECB5BKSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id AE33625FD32
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Sep 2020 17:32:36 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id w24sf4011185ply.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 08:32:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599492755; cv=pass;
        d=google.com; s=arc-20160816;
        b=oPuPLv0PFM8p0KrtEmzj3nNWlx6JijQijhx2w7F0F7gE5brZncz+N/m0dinBvV/71W
         HhNy5Gu2AeiLr0Lz8UysGu+wctYiRkLPPbdzLqXbobXguJy9Ohkc8GE+YyH8D9q0D0+a
         yink5SQYCzH16PurcXIc9B17Iszbcz5Zvj9N+RZBQDvscbBSSQeNmsIZy2U9kcGJYoI1
         tEkWgJg5POD9JHGvra++EI+bgbBtibI9E+ATLUwzOQhLOPxwJtQQKcT4rJWQEbpZ2PYz
         maBRjSgZUI8ypgz4fsrtRRW/1Nt0IgtMA8BXH4QlgfUcx9GP5e/v8w6uyybhoPsTh9MP
         AaCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=sf9Xcr8f0cVS/w0mHC3+KK8R85fxUZ5gDp0FYnx++bg=;
        b=lEa82Emj7VEguAyz0Z29tzDRd5Wf7W57VK0qbT0NHPbU7nyeZKl2Gvqz8EajNFSlNb
         8zopaYE/ukgX4UfjXVAL9FJu14Awx0UHkPTUdsq2va30QNVYbxuGKc/oTCIElhQfeDAE
         UUdHgrL0dK/zDWLCZJScqT0b1bQt9BfJdwtapk5Z7aHD1bcdnoGl4Q2pAuaLtiXrhtWg
         8Q7ZnJRgGQ0XrYRcK6s9LCwgn/6RMBP9FXfn2LaoYIRNBqdSSvABLmTtD1Xhw1SX4Dm7
         iVDErRx0Y6dFen8Mcw7fXOG7HbcTcu2sxXCFteibFhCleNhOnCeK11x2Q8+X6HEB+v6I
         tyig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VE1u5ML9;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sf9Xcr8f0cVS/w0mHC3+KK8R85fxUZ5gDp0FYnx++bg=;
        b=Nv8vPBdoJZfzx/G9kKTnOwyNpqTmzia51ROq18FxGRuPwuTw0WutD0rRR/K2zhT+QQ
         bAfY6f2KiERxb3ezX4dkQPxW9A13Ro5wN3V+iJ709G/xnlv1a8uXx/PLkfWcAqoEfWgb
         UOTJtp5lULV2tBZ+iHFEsSe1MHQ1Venu1oniePLjQlPyDO7Cvgty1wkI7liHNWein3ot
         MiEHxUuD8SYN+y9sRLvJQSeh9IetRff/RicE2uFa308T1vXbXPOBBwuzvd/8eVhVBYVG
         3pA0RZNcXMRuE56NOAC7RtoiPLc4ojbxZdHBtMWwyPif57mXb9hKyLabbGVkDNBlkkAz
         l16Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sf9Xcr8f0cVS/w0mHC3+KK8R85fxUZ5gDp0FYnx++bg=;
        b=TSJjHXpmV0deylzpyg5OZKnAII4Jg38VSxt1m2lSD0n6fVtvm+4PTI57CXlo0WfoHi
         FsxGpUE9Q9izMPzyg5RNZympnQhjvw4bBAuPh/W2/RNk6QCbyNpOYtt96XHi6llAsVmH
         2buE9+cSTZlrhPaThNr6sEpChNsCy9eMt4ohxCVCF0Mg7PNU+OpRL588i2Ij0UvS6D6/
         QP9dumtYtUeuYVNBJwuohqBlrXLgM/r8A0AAfFWDR0C+BIt5scbYP9JVwTOSa6PPdSgz
         SxYJ1RviJEdZoRTX9LiNJouJkzi5qMoIdBinhVmfEZ//ED0Jaw4b807TzEP9Ba9gJxTt
         ps5Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533c7SZ2mdh6LbIezshMU3GjBkgyY7mv7hWgwf78rpdwnoRCNcUQ
	UEbs42cjeIU4ewdDAfxanoo=
X-Google-Smtp-Source: ABdhPJzCxrjTT4661d+9vD2XWWgTgP6JI/Ihu7KLRerA6ei267K/qzTtrhdwTgUX/Z63ZotjngeXnA==
X-Received: by 2002:a17:90a:9915:: with SMTP id b21mr20960326pjp.109.1599492755445;
        Mon, 07 Sep 2020 08:32:35 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls4915934pgk.4.gmail; Mon, 07 Sep
 2020 08:32:35 -0700 (PDT)
X-Received: by 2002:a63:d25:: with SMTP id c37mr16410328pgl.403.1599492754963;
        Mon, 07 Sep 2020 08:32:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599492754; cv=none;
        d=google.com; s=arc-20160816;
        b=jseXEMn3H8EY9VVJzw2WPduMn9Rd/6VpbDHg0zOgcrKjF/pwK5d4qLvx3cQcxDnUpD
         SKdplxtYupX8CVgDXRSZqyXOidwPUrRCli/Zb9DLkDvyxYh1Uh9hjHsos0cE6gdlLqyl
         b5ZBRhJ+KWV5fgqqcKIsj64kOH6DdWbs1Pivd4TbJVGtaN4I7BhdenSJNQzAQcLBupnE
         NTY3jaC41Ewr23j7BAncCh4iBOgwhFGtVPETP9zj4eE2JQy+I38hB+U3iL2SS1b0/e4n
         ktMbBEqfKOuAa82WwF4pq0lBZO+9CgVo4ZZuTecifmoXjJ6VtGw8qzjTXEkXSCkNEJLq
         7sWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Jx39sfWEMhw3yDr9IheMM4E9cWZEdDmaYIX39EHEZnM=;
        b=rrgaDTCpRdtMS6GIxNYKxoFnu2ZuOoWxoMoOY8rrVFFi54H/9RKen4hyJHjuHvoYE4
         lg/p28PvwxOA+dESBEFXjQcsPabvhGhtUq0P0a3caie2MplvKbOo19HHK5uc160YxKUV
         3ZYZW9SukTpedcHaflCDAM6xV6o61V5NflqFE27O/5gdaxMR7VcjG9GW9rmva0TYotPF
         EyRPPwmMj/gjKKEbuna9s+8fZh/Ib8VBm3CcAeGLuEYXlM40ayUeUQVUgUiVutC4vqIf
         wq5T564Nzm8ALHVBusRfFUoD1vPhpnginKQA5AWVgFsBpmejRQ0nEnnpX1loZITAbJ3I
         A/jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VE1u5ML9;
       spf=pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id z13si755081pgl.5.2020.09.07.08.32.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 08:32:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-55-f52qs57FNGCbgw6P-oZSSQ-1; Mon, 07 Sep 2020 11:32:32 -0400
X-MC-Unique: f52qs57FNGCbgw6P-oZSSQ-1
Received: by mail-qk1-f197.google.com with SMTP id v16so7696620qka.18
        for <clang-built-linux@googlegroups.com>; Mon, 07 Sep 2020 08:32:32 -0700 (PDT)
X-Received: by 2002:a37:a781:: with SMTP id q123mr6664206qke.436.1599492752077;
        Mon, 07 Sep 2020 08:32:32 -0700 (PDT)
X-Received: by 2002:a37:a781:: with SMTP id q123mr6664170qke.436.1599492751534;
        Mon, 07 Sep 2020 08:32:31 -0700 (PDT)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id m64sm10888198qkd.80.2020.09.07.08.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 08:32:31 -0700 (PDT)
From: trix@redhat.com
To: tony.luck@intel.com,
	qiuxu.zhuo@intel.com,
	bp@alien8.de,
	mchehab@kernel.org,
	james.morse@arm.com,
	rric@kernel.org,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-edac@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Tom Rix <trix@redhat.com>
Subject: [PATCH] EDAC: sb_edac: simplify switch statement
Date: Mon,  7 Sep 2020 08:32:25 -0700
Message-Id: <20200907153225.7294-1-trix@redhat.com>
X-Mailer: git-send-email 2.18.1
X-Mimecast-Spam-Score: 0.0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=VE1u5ML9;
       spf=pass (google.com: domain of trix@redhat.com designates
 207.211.31.120 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

From: Tom Rix <trix@redhat.com>

clang static analyzer reports this problem

sb_edac.c:959:2: warning: Undefined or garbage value
  returned to caller
        return type;
        ^~~~~~~~~~~

This is a false positive.

However by initializing the type to DEV_UNKNOWN the 3 case can be
removed from the switch, saving a comparison and jump.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 drivers/edac/sb_edac.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/edac/sb_edac.c b/drivers/edac/sb_edac.c
index 68f2fe4df333..93daa4297f2e 100644
--- a/drivers/edac/sb_edac.c
+++ b/drivers/edac/sb_edac.c
@@ -939,12 +939,9 @@ static enum dev_type sbridge_get_width(struct sbridge_pvt *pvt, u32 mtr)
 
 static enum dev_type __ibridge_get_width(u32 mtr)
 {
-	enum dev_type type;
+	enum dev_type type = DEV_UNKNOWN;
 
 	switch (mtr) {
-	case 3:
-		type = DEV_UNKNOWN;
-		break;
 	case 2:
 		type = DEV_X16;
 		break;
-- 
2.18.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200907153225.7294-1-trix%40redhat.com.
