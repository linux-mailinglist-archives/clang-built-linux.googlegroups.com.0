Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB24F5TUQKGQELFW2EUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FB8767E9
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 15:41:00 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id h3sf14141845vsr.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jul 2019 06:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564148459; cv=pass;
        d=google.com; s=arc-20160816;
        b=GlJ44Z56Y0YhFGxxEcVdgZNbJA7s3AET8MQyKWOXgG4QgSwuNCfs8Cnu0A11WTefme
         CBRT/0cxFQ4PfksXlpYzoI4mGyccnM0vuzHKCB5Sm0ZRm6zLVkK5anN8A1z2f/3z8QPF
         bVxvIchJXI+UB06uC8DYls5QRVePW579n2ZcqrnaIqmIfz5T31OGQNv0Cp8Aj/sUmds+
         6LL83AwjTD2KtUDDjAZPna/N6e28T77nipecMvgi/j8d24pat0R+QmmIBwK2MilRVwpF
         FNtF+XeGO5abmGBqeHUW1Jr+//XXkLt3SJodNvP2zDZe48GTb7ywEYLCFdC+FOMbT+K+
         d7tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=S29UxbUAalYqg8Yr3bp774zgjSudlOOB9I8wvJxWEAY=;
        b=eJ8+s7xoQMoVdeitTI8P3a5hwx+umvbW/3Bh9KqEWFYYUTh7BxTOygZG//Y1Vy7ybq
         4gU4VKOOAiQqh5mJKb19iuUW9kbtgkuxt3eH9RnWzfhotqwPOqkkpR5RSQzTIxbu99G1
         mG2pqKb0Gj0vxGgUs6QHeCeoeFv6Se4ZcHrNxtWlz1W+4ioGZZym3d+wU5sEy1Rhw7fb
         k+1SbQ21xoz/PO5CykS1Bs+xr7V6hByyAMwJVQT8ceg9XCwVrjp+0JNc+3Wx26JaRBII
         Ii6tmkZ4SJCCOmGiUq6601aef6uMGC3Z+qSgOa9MGIaP7sXF++Mj86DaA3dPJPQJqmEx
         1cbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ELrxyKFQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S29UxbUAalYqg8Yr3bp774zgjSudlOOB9I8wvJxWEAY=;
        b=AOI2pea+ZElRCl8Z7z8/nBb4Jny2FfElFpgtdTsnahSxVEtfmb2/pZjBNudtvupGCV
         jQhFfQOb8arQ9gc8TGZ19Mp2ub5+WR3T5xN0gYstn4esainNnpqdH2X5soHnbrV9wgm0
         3xCH8q+7EQb16iXl/6Z8KbuMGGx8T59N7EvBazhbjs5PIH2CTAUlT8MMFYwkKhgTUuhW
         ub0ltBMTRHkf3r8Y4vnYfWMed9RtJSg/EVc2pW4EdPI8L03tAQScfjwmnxnWkuCLNvK2
         NUrjiJsjYFgsOhYiCBoRHyfS+eF7zhH4xL0c1OUaJ29kD/eDsZN2hp+m46P5RzclN1o6
         Gh5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S29UxbUAalYqg8Yr3bp774zgjSudlOOB9I8wvJxWEAY=;
        b=RzTjeSMWQc4udtgWTbTSdwHss8HYjJuQj1my3xhPxTd6ZhsCnSKoPSfE/oRs7AAqek
         fyA7poH3bEtGaPI+254wTwVZqR99cug+ZwZjwD/rMn+4ielCVzgxyGcffEA6SMwFD2/U
         LOzA/ep1LSQum88gh0Ok392irnnQr2GYjocnsfTan2zOt9SPdT/r/ovF1HgbTvmvaHGb
         u7rjVwaFfBGZar0wftzGgV55iPjJ9ZrdPIZsHwBLfBh+AVQ/wKCDEeYvCyTPUMjF5Qx/
         F+Uo/0T/zogCkfL+gYBvPDWdeuwwUBUBB282ysBJflZX6DJUGPPjRI3xE8MyFb6nA+pG
         YDAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWoM2SUnDHPvZQ1qnXItffM3tMJhiml7TPhhql9lLM1oLAQ8LV2
	SwMrYy3uHgpLPDritXD7sFo=
X-Google-Smtp-Source: APXvYqyRm9m0ChgRJVFiI1wTID9jA8P2peU0aRW3pkE9bmtneJKuVI8ZV6uNeedXga8tidm34xNxbg==
X-Received: by 2002:ab0:64cc:: with SMTP id j12mr11619030uaq.110.1564148459474;
        Fri, 26 Jul 2019 06:40:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f795:: with SMTP id j21ls6926984vso.7.gmail; Fri, 26 Jul
 2019 06:40:59 -0700 (PDT)
X-Received: by 2002:a67:fb18:: with SMTP id d24mr25333660vsr.59.1564148459225;
        Fri, 26 Jul 2019 06:40:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564148459; cv=none;
        d=google.com; s=arc-20160816;
        b=cZ2o0BiBw2C5Udm+nBq0nGCWk0LKUwO7mqpfgEbKdApEE0vxSzr5gbft2TybdYhQIb
         L2Hqus99t9XmeFiPdnSAZcns8U4+WeYfDhO4amlc3/R9eKpyhCtEY4lpwzA1+xnL0YTB
         VXHZ3wLFWwOqfeMe7mefl5pYWFQM4+9ae55xjVK6iKg/zYiPI+OmPUDPcRu8kQbaM0fs
         zn+96RednLGFU/JmXYcw48bwOJJ88koVSkfphhjIUmCI5xjk+9dXpl9Udtp3B3zoNTXD
         NbHaC1+jWkdrFVo8wNY1r70RJrZ1PPr3QhG/Q0wDd5B/A8Fr6cyZNjqVAly3XrHYkVQL
         U+eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=usjVSK9mfiQuFZBFwSBuMP/3nAEHHdyUsL0h8BamR0Y=;
        b=REQnzzAoAwVoVPgAgwElVfN1xAnQBYvB21NUwrVuZ43L128VOgpjM0t1OCJh2sgZSN
         kRB3SLW7LfGAoZPLGPL6nOXoToyYB/Pcoi7NGl/IeJQ4HHhqLHrAckZudcJVY1t+NqtL
         VgYo5kv22qHKQTDa6Ju6vJnq24Dk6CBz/uQ3usngeK9vXrKQx5SS78BbhLPN919w2qFQ
         KtXzBAz6ZrOEdHIJKh6lHLp65Jiwf+mqawerLN9Zfr1KXLRDLfIkT2pL9jV/R2xINYBW
         kaoIrALT469aLNQ2vxZFrGLrnWw2rBjAd3juLKdsNb8SdyMV6Ba0ea0LInCdtjhlpQBC
         xZXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ELrxyKFQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a128si2403845vkh.1.2019.07.26.06.40.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Jul 2019 06:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9EA4E22CB8;
	Fri, 26 Jul 2019 13:40:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Arnd Bergmann <arnd@arndb.de>,
	David Rientjes <rientjes@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Christoph Lameter <cl@linux.com>,
	Pekka Enberg <penberg@kernel.org>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	Roman Gushchin <guro@fb.com>,
	Shakeel Butt <shakeelb@google.com>,
	Vladimir Davydov <vdavydov.dev@gmail.com>,
	Andrey Konovalov <andreyknvl@google.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 51/85] mm/slab_common.c: work around clang bug #42570
Date: Fri, 26 Jul 2019 09:39:01 -0400
Message-Id: <20190726133936.11177-51-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190726133936.11177-1-sashal@kernel.org>
References: <20190726133936.11177-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ELrxyKFQ;       spf=pass
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

[ Upstream commit a07057dce2823e10d64a2b73cefbf09d8645efe9 ]

Clang gets rather confused about two variables in the same special
section when one of them is not initialized, leading to an assembler
warning later:

  /tmp/slab_common-18f869.s: Assembler messages:
  /tmp/slab_common-18f869.s:7526: Warning: ignoring changed section attributes for .data..ro_after_init

Adding an initialization to kmalloc_caches is rather silly here
but does avoid the issue.

Link: https://bugs.llvm.org/show_bug.cgi?id=42570
Link: http://lkml.kernel.org/r/20190712090455.266021-1-arnd@arndb.de
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: David Rientjes <rientjes@google.com>
Reviewed-by: Andrew Morton <akpm@linux-foundation.org>
Cc: Christoph Lameter <cl@linux.com>
Cc: Pekka Enberg <penberg@kernel.org>
Cc: Joonsoo Kim <iamjoonsoo.kim@lge.com>
Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Cc: Roman Gushchin <guro@fb.com>
Cc: Shakeel Butt <shakeelb@google.com>
Cc: Vladimir Davydov <vdavydov.dev@gmail.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 mm/slab_common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/mm/slab_common.c b/mm/slab_common.c
index 58251ba63e4a..cbd3411f644e 100644
--- a/mm/slab_common.c
+++ b/mm/slab_common.c
@@ -1003,7 +1003,8 @@ struct kmem_cache *__init create_kmalloc_cache(const char *name,
 }
 
 struct kmem_cache *
-kmalloc_caches[NR_KMALLOC_TYPES][KMALLOC_SHIFT_HIGH + 1] __ro_after_init;
+kmalloc_caches[NR_KMALLOC_TYPES][KMALLOC_SHIFT_HIGH + 1] __ro_after_init =
+{ /* initialization for https://bugs.llvm.org/show_bug.cgi?id=42570 */ };
 EXPORT_SYMBOL(kmalloc_caches);
 
 /*
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190726133936.11177-51-sashal%40kernel.org.
