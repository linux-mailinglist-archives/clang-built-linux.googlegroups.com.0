Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCEGVP3QKGQEHH3AYYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 519141FDDA1
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:27:37 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id x22sf3298714qkj.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:27:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443656; cv=pass;
        d=google.com; s=arc-20160816;
        b=RX6anQEha8SBMUSlxgHwdzIRAMojym6JLZ7deTFGMVjU1C2vJFF7I4SvRlarGQlE1T
         I1lbD5qjzLdoow22byOWxQIfh/7Qx1koVv/wR1ZCTPTj3lou69/4IIU3LEuZwCcB+jC/
         YLO/lr1UGM3JYWmFbZUoUZ1l7XdAk8YPrLT8jX73SzyM8rK2NURwNPvv9i7N/dIjyjmf
         fjFTStF+JDM/NoT9SeWiepadtdobAH84Jlhw96UTuoqXcdDXsUGy/c64U147l67NSQ3T
         v1avbGS1TSV9HbCv2UkvMPY1dXMjB60TmZwo7mAJ4XKLwDAJ9zs4znA4cWutqdLWdmJB
         SXMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3Eu+53MJvribhr08q3trivRI3Xg75p04WVYZ8iB4zEE=;
        b=Ju3sYnoqRzZg4/1dAl37U4aQoZRZVgXXQgSc5Ty9NmsfnpA4d+XQn0rNzWYDHLr/U4
         wTNgvCcYRlpicthvS+9xY9pRq4w6BZbivoU444MxkfSNvlHcHgd71zZyy3hR/ra2quhl
         i4waYKYScmefS+AaQt+LOyv9FASHqfZ+QpeYr4xxjBT+rrwRUiuaG5fM2vagtvD+aWso
         Op6CzSG4qqmN1Iuy4y9Rq4A4q+U//eoewFDEv0B2f7jVeBBWSE6zThUqWhPBfF5wOifp
         7KnRD1Z1j5qms+eMJ2u/EfhTWfPwV7/Tyo9xWacgdD117v0zA/i1D2OqBM6+eJs+TmU7
         pFzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x0Rer1tw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Eu+53MJvribhr08q3trivRI3Xg75p04WVYZ8iB4zEE=;
        b=hScQK3mqI8+PiJnPLhXiYYw8L3TYFrWDRQcTtwvIrib1fQA9Yz9mtXIGf33pR2QjA5
         KC2/sB0adb+gI4bdpuOnRMT+ibmKy+QSgkx7nuvR9t2+1cKlxnmMRR75QwKdAr4uNhUk
         zXojqO6LMwef/H+VJ3YGxPMmD6fP8sU5iIGCxqhZr5nuM/l8fUcrT8S3Uid059ymJDCO
         W1+GUw6jGk7/Xl4azHoJ6wPffypcyOwezNIJtUx8KBA1o6xEtfMTDZcK8vuT3vQy16pd
         2Ftc/+AZ7WXorFPebcdvaRzRSL36CLeB+g+eKAbAiba3MmhQZHAGEDYH+tX+V9FhiIxn
         w6Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Eu+53MJvribhr08q3trivRI3Xg75p04WVYZ8iB4zEE=;
        b=LgLJkP+JZ3dzRAoKVPZwnXPyGG37dJSwxaJDD+9vky7Zk+3IgFi48UMhKZUHbpiT4X
         kD+NCqX5sb2vz8VTZTRsc3s6s98/45OWuTjKoJHNU4oNjw8onpCTx+yFopM9c3gn5igK
         8hJ9bj79MjbRuYNCKTzGUE4UJYqskjc3L4cvRwddygjNMjb9fqsqNqAeIgr7atxj/tf2
         k1AmcXUR2VUccp2N6qEktYizePFK0qDHJG8A9HN74zQ3Y7PLCd2LrJURnZcb2Mh4BAvt
         32B42CRPchwGbz3Jdhzfa9DlMqyr24kj+XpWcpCduzWLtV59x8R33o1sPabh5UwVOwq7
         N59w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lcwxMCWIo/Ne699KLxeeaL7vt7+w5ZutTA7BphDZJHssgFkS5
	DwIPc25zDZsSezyMJlo3mzA=
X-Google-Smtp-Source: ABdhPJxX3cm4ZwCRF3OJmEenT6FpfNno190MN/hbZtaw1HjsYc9SXgmrq40zJ2rIiIz5fTPlrJ3YTw==
X-Received: by 2002:ac8:4143:: with SMTP id e3mr2060763qtm.28.1592443656412;
        Wed, 17 Jun 2020 18:27:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3f02:: with SMTP id p2ls1506217qtf.8.gmail; Wed, 17 Jun
 2020 18:27:36 -0700 (PDT)
X-Received: by 2002:ac8:260b:: with SMTP id u11mr2083862qtu.380.1592443656085;
        Wed, 17 Jun 2020 18:27:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443656; cv=none;
        d=google.com; s=arc-20160816;
        b=NeKtkBKYGfcoNA7z2ALYAB6ouKViIp8O97VsxiR1xbvpaXT40fi8Sg9kNqp5Y5MTDt
         JB3H3gLbVlpQqDLXLgfyjUGppMS32BPZoNvBzbezdYsVaR/CFt5glI015mLNyG7XmuqE
         iWerYucRXrlNlc8EOGpXV7fOBJcJFCQdmNpJNQ97JWkZ4wdis3uOMg4GoVySpp0s0SQY
         vW2PSiZWRzW606UJepQSE2gnue7oTqF46u7O23UcdxdkmTpCAAuLCoTNCnRszUX8a3yj
         Ddhdza0FziLkdHHe79B32rt2fMqQ8oVIj+1Z9e/wcoh3Npnyi9HWJjffZ1izZhbx6UdM
         XStw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=sUXWXZoIsOMH07wlqTknqCbW6gNN1Dn4T5ABjeU6Sbw=;
        b=WdUQiHeJQD7YB5qqHbVcGs62uFgUthjO8JGLtgr7khC8qk79C/ZCB0w2LPgKdgSdge
         E6/pqIINB623Gm9wYhdYtRikijkzUk+CLzaQCdjn5eg4TIpcBHL5qQxcoIq02QT8DYh8
         jeg3TOMux9ehSAo1vI4jjvqdRJ8uu3QiBQZk3IrkYGiFBfUHZo2RWRdnNnGbGZ5fUSq7
         XiV32z2XZOIRrAEAnFG1ZAxuO1VNIhJayrFa5fTTT8ijWJmjimPWSMH8JyoPoSgdc5db
         rRZSiITCtxO/u3Ph4jzP0SmWgYP0RxYLH+iffHUuN+8eBWONhnszElR6/aHOlKZIfaTq
         IJ8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x0Rer1tw;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f23si89682qtm.4.2020.06.17.18.27.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:27:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 24DB6221F7;
	Thu, 18 Jun 2020 01:27:34 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 074/108] USB: gadget: udc: s3c2410_udc: Remove pointless NULL check in s3c2410_udc_nuke
Date: Wed, 17 Jun 2020 21:25:26 -0400
Message-Id: <20200618012600.608744-74-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012600.608744-1-sashal@kernel.org>
References: <20200618012600.608744-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=x0Rer1tw;       spf=pass
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
index 394abd5d65c0..cf12ca567e69 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc.c
+++ b/drivers/usb/gadget/udc/s3c2410_udc.c
@@ -268,10 +268,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012600.608744-74-sashal%40kernel.org.
