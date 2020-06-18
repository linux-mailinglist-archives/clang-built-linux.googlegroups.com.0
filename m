Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWUCVP3QKGQEAPUJW4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4511FDC8F
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:20:27 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id i5sf1444154uae.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:20:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443226; cv=pass;
        d=google.com; s=arc-20160816;
        b=xokrK4JYlEeScrzwvlXRYwScGYnCshy0/fMKaVr5Wbt4cyeMxAtRBvM6m5EMD4cwdW
         Cb6WrlsUehBc5RZd0oaAffvpZo7AnmQ+0VW1REBJAJq9aretxwlPFtEHo2sdjXXiyZL4
         X3M+vvI1ntIYFGHOECHUC/xtfO0erRlDUTF85diwOjimmFf6Syrz11blT03HZzFubsQt
         C06oOsqF38AAJfZqTZ7+EKshtOOpxriIWgs4in6DMo3/O93Kq+LUmQOd7pnhVSdr2zxQ
         7RWy6W1wWAfwkgRE4TNcqzk2B6sRfw9ctQ5Rqv+zPROXZEgtNUUgEReQ1lhFxw4AAdD1
         nqCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ALO6wvtg6h1tZQKlXESZbc3R/zGV4MN5yZAB3aN8cnc=;
        b=TgsSJt95M45L+vYP8DPhzHkrXFlnk1cRX9+nubCNNCiE30Ca44FS5M/+PyhDPTckOT
         CGzKziLjtg9Ri/WrG2iuXkK1VTxhBF6MjPYnJlLpcDiZh5VGXjki8zT1cXA15ckxOm3f
         gtvNdSlBr3paFzRqFzsC5Rjn97wRLsW4QrOwq6ypIYjwmEupv5fWqWjmpk+oPpmH4FtM
         kgHVwxlUeIw4XBFvZrECq2pS65N4sPYoUsSm5c50x/tEqLr3f+UKPuDd1mtqwDgV4NL9
         PQ3ZwTbuIuXnY7i5o/8XDs0+AUpKfPAG74YfwaphkDXvqF9Njk8VEB/1APwa/qJ84d8r
         Zs+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YJm5q1VF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ALO6wvtg6h1tZQKlXESZbc3R/zGV4MN5yZAB3aN8cnc=;
        b=UD6I9/9MKvtisOXWePTG8Eg7fxuZTIJlL8nXOmSh8gCg6JHCyZBTX4/YxUDhIJ7gQA
         ArLJ+Myi2ffBSY8R3rfkMM25MwNkZBTSdjqMEdMJRge6wIpMuNN4iUcilnPCr5G+ErDO
         KggDHx+7qHuVpIkR5g2zLqRdVTw2OOWR0foZH3agBZ0+VlHpfEfyf+AWP8FUAXMUY33Q
         HnJ2ea2696xjfJLsoviZ36kvWHcV/qjeZq2hWt6Ssl1HfYt/snzwS0iuDIKl/oMpiimZ
         4VH5RUrCPTke82RD51CXIkHFOT8/tJx4uY0XYoi221WvKAKJkiqrUExTtdfKAu7Re12S
         tmaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ALO6wvtg6h1tZQKlXESZbc3R/zGV4MN5yZAB3aN8cnc=;
        b=a4tFQ/Ys98hDkMBGVWHEzCJXynvRmkvd1ljYPve1X+J2aAfa0gtJxtutROFeiGJteE
         8l362wPJSg9gAel6kt1nqjBS13roxMLgdkZtWr23JGdmOA+RU5qARVjBJiB0APs5rR35
         DWA2s4VfqVs8VGAOFLuOTdiuZstuZ9JGUQzE2MY6aqTLwBzMBXn9T/2K+LNLy73r/nNL
         jKX1a6pPMQoQsNLn3fiO81U4xmeswGwu9U/79hdoQEoYtyZCXqqgg8XpDjfeWXX3GwU+
         9llAAyYUTw4Wpr/OoV8+UR8ir2rU7Zn7kNcJU64dcxyxYBNAvwTN2Awjwh0eXTC4rGEp
         LJgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ys0EEskrKxthW3na2ZLPMZ8cCdULDpu8VVvTI08v9//CjZoWX
	GYaTUSA4+izj6WuftqJs26w=
X-Google-Smtp-Source: ABdhPJwrSIp24jQTBTWUj1dGRp6o60QbvV8Uzz/MvZlafzRn5b6hpBfJEChkfvJJccwpQdVO9T7I1Q==
X-Received: by 2002:a1f:ab0f:: with SMTP id u15mr1598013vke.99.1592443226746;
        Wed, 17 Jun 2020 18:20:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c093:: with SMTP id x19ls525728vsi.6.gmail; Wed, 17 Jun
 2020 18:20:26 -0700 (PDT)
X-Received: by 2002:a67:ec48:: with SMTP id z8mr1712297vso.44.1592443226403;
        Wed, 17 Jun 2020 18:20:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443226; cv=none;
        d=google.com; s=arc-20160816;
        b=h0nEcEU6WyEaM3SajAwXG8qnNWgacyWwe1Da+hhFd38qRVicPFHaN3KQ5+29jMYqJf
         RqfuYHet02PVPkCb6lRLegML1Iguzc/TX4WNj77aRpayf7dWkrXFFDxbS3IC5ysN6tm1
         a1GP4ikr3GsoRWuPaGEL2wK9xmTinI4v0YT5evkft3X4Eyq634JpHJTJo629wQW76ARV
         EKDnD0216tL+2v4YxNoIIfo9WpbhFGXvT7pWpilmxUnQC8EJrcNg1/4zd13OsT4rMTHm
         nnhuRmHWcl/AsKLJ0yg2mebsduzbW7jT0DOuwVxx/XbDdaygP+8iKfWMMQuALIcpDGS7
         3VmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=/gCiFFO4POpnd7jloTRIQh6L6dnEp2ZR6v1WNNs3pFs=;
        b=o/iRIq0c4uCYcWUg1Jdqy954B6I76p+fMGFm9d6Sa5oNRHaQ3dcJbq9YVkLzaqg6PS
         RSbgDgovksPqnCGYOAqU5nwaR6HtaZ2dXhxAgNIW8ojgBEYo2+e8WwEoiEaE/lcE3IdH
         6phRoDltRUk9oxp/VOcOJFnQwT9hrpSrNUt485Dn2W+AaZR82sSGFFkfN/MGjmdHVD+q
         NCJxGOvRjCY7afJwsdt+SsA1pHZ66Fl7hNcovbqd6sZM3hPFwNh/pdQgp1ya8XfpXOmp
         1whWYiinG2wq2pzJe7dy7lw5eSYv2zrO4EfcHeTzS0DWG+fhvDkT4suTAnYPL9vqwE+t
         1dyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YJm5q1VF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t9si106442vkb.1.2020.06.17.18.20.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:20:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7E76520776;
	Thu, 18 Jun 2020 01:20:24 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	kbuild test robot <lkp@intel.com>,
	Felipe Balbi <balbi@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-usb@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 179/266] USB: gadget: udc: s3c2410_udc: Remove pointless NULL check in s3c2410_udc_nuke
Date: Wed, 17 Jun 2020 21:15:04 -0400
Message-Id: <20200618011631.604574-179-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=YJm5q1VF;       spf=pass
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

From: Nathan Chancellor <natechancellor@gmail.com>

[ Upstream commit 7a0fbcf7c308920bc6116b3a5fb21c8cc5fec128 ]

Clang warns:

drivers/usb/gadget/udc/s3c2410_udc.c:255:11: warning: comparison of
address of 'ep->queue' equal to a null pointer is always false
[-Wtautological-pointer-compare]
        if (&ep->queue == NULL)
             ~~~~^~~~~    ~~~~
1 warning generated.

It is not wrong, queue is not a pointer so if ep is not NULL, the
address of queue cannot be NULL. No other driver does a check like this
and this check has been around since the driver was first introduced,
presumably with no issues so it does not seem like this check should be
something else. Just remove it.

Commit afe956c577b2d ("kbuild: Enable -Wtautological-compare") exposed
this but it is not the root cause of the warning.

Fixes: 3fc154b6b8134 ("USB Gadget driver for Samsung s3c2410 ARM SoC")
Link: https://github.com/ClangBuiltLinux/linux/issues/1004
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Felipe Balbi <balbi@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/gadget/udc/s3c2410_udc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/usb/gadget/udc/s3c2410_udc.c b/drivers/usb/gadget/udc/s3c2410_udc.c
index f82208fbc249..5dcc0692b95c 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc.c
+++ b/drivers/usb/gadget/udc/s3c2410_udc.c
@@ -251,10 +251,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
 static void s3c2410_udc_nuke(struct s3c2410_udc *udc,
 		struct s3c2410_ep *ep, int status)
 {
-	/* Sanity check */
-	if (&ep->queue == NULL)
-		return;
-
 	while (!list_empty(&ep->queue)) {
 		struct s3c2410_request *req;
 		req = list_entry(ep->queue.next, struct s3c2410_request,
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618011631.604574-179-sashal%40kernel.org.
