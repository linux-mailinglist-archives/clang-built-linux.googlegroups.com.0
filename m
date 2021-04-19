Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBI6X66BQMGQERGCFHAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 63753364B73
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 22:44:20 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id h6-20020a0561220b66b02901e488cc9b21sf1721398vkf.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 13:44:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618865059; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwar0ROBLfOeitYsBti+m+nU6gNNzf0JsLcsIpkRJ3TkO2qiWFBsJFrqeHd7cfil1/
         fDC9dZdXfYh+I5JOLZUIbROYYdLeNRoUO5r34ZHcMR2lYQGHuehkQp5yz+lGM/KvOAqd
         7EUfp+fMwIhR20nID6GyOeHmoRxnz7lFV1/S38hyDdtRi8txcbfjfxGdvukUoqDxpFL9
         pnQ9ZjG+Q2LzbFCSOHYsr/ovnOr8f/G7zKxWLu9M978qgUFc9/BQIvQ2Mf4376fZjUmb
         ZlVzJIQkm/V9LvWtKMh8P08r7kNCpzRnlKRRxqSECWImH0eFTF+lIHar6sHG4WJHR5EM
         OPgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=k0o5/e/cln7A1Tt5w3H36GvjLSNoDt1/XBote6Sw69o=;
        b=hIDCGDrJK3f6Kj9JdtjSe7oIhg7iKLCc1jNciqrcDFh78RCw8ahkDavlqQPY0PXF8s
         68grlyOAwTAKTKFrN02EmW6aVcjINMmwAXCUX9My/YoUStYLBdDSSmEm/4knbsIEI+98
         /zt9vTMct5VNN4yaGU5zGuyke+1BanPmr3zM4XVS74s6p+2hnugmyU+EOqm0mx2pJu+T
         7eRaz2raH/YpRW4SixtE2feuKbbIexA7vTtqQhiLyT3qEBRdHU1Vj4oNEIj144ogaS14
         1qhm7BwMVfx6Dw7f+/jJJQj3U0LJfBTiEAuRmd1P/YZuiQtQadFZUGS2PJgDL3++OeE0
         wK+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LIFluKIi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0o5/e/cln7A1Tt5w3H36GvjLSNoDt1/XBote6Sw69o=;
        b=S8TvFK8akKm9cFM+wAz0mgcQa6Hf+SDyioHuLQv39Nbhh9jbFrVsESBV0rH88Gp89a
         WZMmEJyrsh96H6vFl55erCjcuT6cKJz4CM8n97rISKQxI/y5bXs7wwICtnMHg4IAnDRx
         Sk+Q9gjBBQOKbIAvv4EZw/cg1LaxUoykaB/0T1vVGWAbOM5rrJVE9+poGcYMQmWBKrdP
         TcT1vzqhPlTrrj2h/YmqF68FwabiiBwcLIpUKPbEKDt16mnYkDOkJSRNXhDAd/ChtofP
         YEBJJbXBRVbA4n6kt6SDBx8SROiT+hKpJDh5gkFjlMcoaBj/bKB6JB+TqsedNu306l9b
         nlqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k0o5/e/cln7A1Tt5w3H36GvjLSNoDt1/XBote6Sw69o=;
        b=qXNEJTDRvcUgDAe5HLjNhz9g+cHFzxs5q9y3TzRHTsP2Xr1FWSjbAUqr0EC7noMdGx
         RSCIqmj/HxFM5J7z+Ndg0PqG4THaiRfjJ8K/+RCxVOU7tLcNQizgT6Saf5NiSAIRgHVJ
         JJqIXHZbtnWqjEhZysPe5t4oXRUnwCJsHjwj0Fli64qcyqjFtkzRyOB1DXIExxltrd7g
         nG+zgGqezm+t61lnLW2RlZL3ePt1eGoZthPYfvkDCSOAcmV6phdu0joBXHkzbTIr40jw
         f0NSAXjB9mRjX7OuEE8wSrBQk1NcZXQ3fGMmX3T7hLrSHGMbaRVZ81XY9vCx1KrPEVbp
         ypzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZNsxm6piCBMt4fMk3gAvz2xYkrjMRq1tt2rFwRv7U+yRK5LpP
	rXuuT37DRUnjFZ/HcsEH4LI=
X-Google-Smtp-Source: ABdhPJzz5BxGyAj8IdxshNQl+1aVJU4f+1Dk8CGU1MB6Wb/hmE9gMtABgaKYuOtlaZXUFkygGPiOqw==
X-Received: by 2002:a1f:aa43:: with SMTP id t64mr17636258vke.22.1618865059333;
        Mon, 19 Apr 2021 13:44:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e941:: with SMTP id p1ls878435vso.4.gmail; Mon, 19 Apr
 2021 13:44:18 -0700 (PDT)
X-Received: by 2002:a05:6102:6c3:: with SMTP id m3mr16229332vsg.6.1618865058872;
        Mon, 19 Apr 2021 13:44:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618865058; cv=none;
        d=google.com; s=arc-20160816;
        b=cRcKCvAbwyodeHB5v2R7ZrjMcmzuTMI0G0X9E1ii1BelrbqBWJz3W4xw8tsSpeczEZ
         764rh/IzZ2XSxuKrCVBDOxtpuSv20Ms4ApK43zplVdFVy9mJCTDpCyNtIwW9p6VlHQyH
         1p/b+qX11OYULK/vdC78IRdJQ9vo5e4LKvmrOjJv6AJoZ6/Tk33rqWqvUEVKyGxiuO/n
         6sMTUUakgjqqkXqCUiHb88ebCzYxOrSs+C1ZmvmUGu1XU2WeRpMm5CN9J2UOzkCbE1RW
         qZWa60/bhGi1bRyoT08pWmyO8tQNjXLcUC2Cg3CNhr+wYgU8kWifaUtq9VhwmDh3JCOS
         0lPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FfJ2kcX/cDPARvKDyRfhZ3ZbdnKordAyQTnrTIh2yOQ=;
        b=KfLZ7462sZfG1sVzl3Z/KaGhdstdg0QqbO0NI+H/bzuLyoSmM+jf8ndbskMxUf2OC2
         aENRaRCdSlFxL/Od4gZ9qkRg2/ulrmaw29d2+BOV0h4IGAokOCogVtqdPNXo2DGS3N5y
         +LiBlF0NlK/nsXGeorotzlZE9Q74Ubuha+8hH30xn/JL3mnNFJ8gDjpXQ5whf8r2kru8
         KgyUj9YsvG5CXZWvyJRcVQ27IsNoI0tZUwNnbX3dhFS9DXex2r8RVuCUzMJLqX7OQz8U
         ATiwqHptAEr20M/GgiqtRBfQwAA6zfdlk60hG0J4QlxPB2HfPcN/9yfJcKvroNq9ZIZF
         VB8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LIFluKIi;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 27si738894vke.1.2021.04.19.13.44.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 13:44:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD2B2613AB;
	Mon, 19 Apr 2021 20:44:16 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johannes Berg <johannes.berg@intel.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.11 22/23] gcov: clang: fix clang-11+ build
Date: Mon, 19 Apr 2021 16:43:41 -0400
Message-Id: <20210419204343.6134-22-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210419204343.6134-1-sashal@kernel.org>
References: <20210419204343.6134-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LIFluKIi;       spf=pass
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

From: Johannes Berg <johannes.berg@intel.com>

[ Upstream commit 04c53de57cb6435738961dace8b1b71d3ecd3c39 ]

With clang-11+, the code is broken due to my kvmalloc() conversion
(which predated the clang-11 support code) leaving one vmalloc() in
place.  Fix that.

Link: https://lkml.kernel.org/r/20210412214210.6e1ecca9cdc5.I24459763acf0591d5e6b31c7e3a59890d802f79c@changeid
Signed-off-by: Johannes Berg <johannes.berg@intel.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/gcov/clang.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/gcov/clang.c b/kernel/gcov/clang.c
index c466c7fbdece..b81f2823630d 100644
--- a/kernel/gcov/clang.c
+++ b/kernel/gcov/clang.c
@@ -369,7 +369,7 @@ static struct gcov_fn_info *gcov_fn_info_dup(struct gcov_fn_info *fn)
 	INIT_LIST_HEAD(&fn_dup->head);
 
 	cv_size = fn->num_counters * sizeof(fn->counters[0]);
-	fn_dup->counters = vmalloc(cv_size);
+	fn_dup->counters = kvmalloc(cv_size, GFP_KERNEL);
 	if (!fn_dup->counters) {
 		kfree(fn_dup);
 		return NULL;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210419204343.6134-22-sashal%40kernel.org.
