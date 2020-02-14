Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4UHTPZAKGQE2FJFF7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 436BC15DD92
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 16:59:52 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id u14sf7919735ilq.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 07:59:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581695991; cv=pass;
        d=google.com; s=arc-20160816;
        b=RhlSmOPqDdwgb7yRH5KuSrbGpFoiYGav0xqpgyD+UHdidwENCWbS5KdIp2GCDNNSDa
         G9pHoGmjgmckd/FecobITl8Ql+ZnFyyi5Ah9BjNxRm9Apz9c6V2rxLkQiFIuHfNUWxkO
         uv9UXUAEHcC5GVBxVBLyxqVX8tyendJUtKDEZ6uMTp0uZ95pdQ/vNPHHi/OmhbhTjk8y
         JWHZMTy87XoSMM3weIr+bzAuLMN1yEjkeVB50MsvdZeTLfb5/eNSvDFZG1BoOBIGeELn
         edNOGPcqh6PJukqUPquyvZpNgjNFZaHvvuSna56rnxwmHOFYgxXJAMWB0/op38uxUTq/
         ITWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8J8dwG6Hlh7He2JOFwWftwWfG21MU/IK1XmrJeJbO40=;
        b=DwThS7TGVzuP3eMEhb4PE01K2aAlAy7mMT3Sl59H1VfWgGckCZoOOiRnd0NsfgiHos
         ErroAhuRAi6MTAgcJbBd/2DOz/CG5wJoMAAIIMCjqjiBHa8RWAfDtdmIfyZWEuZwZrIk
         QWjUlZXgYbX8fpPU/4VuZ1Z8Lu/Q0PMbhem1rspPqHWuZet38q68sMGmFCeCRxbnB3Ma
         1PatlPjZhW+KhiFcse4AJ6IZF8eM0DP/gyMP00M0VVMrVYDt39NK/V+S3mIIiFtnE/au
         7hOEWMyg1bPR1jDgteTEntVyzhbts1PrrGVyOlGBrdWXVaqfm5fxBK4be3MJP8IqNKcY
         zeVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=om5SD5LV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8J8dwG6Hlh7He2JOFwWftwWfG21MU/IK1XmrJeJbO40=;
        b=UOJIYFAP9QbohwlH/FD1ock/z4LJDa/P3lDzT8Zsfc/cVgor8Q3E0V3Pe+RUFBrxRL
         G2l/e7LmEFVuguSgDUhvS5ChO+jp2wM8cQ5B2xlw0H0HW4OpORIGFdMnMFBcYO6ZRqMw
         7esDVpBe67+e6wdAs4hafOo097wpOzaSc3WmQVCcgbKv2CJKhoZZXP4zJDump//1G8vh
         P98YMCjmqf+EWSsiR+fSAAu9XSbOH/RnOvb44TxdU6rYKMmSrjREKoOZl2IhaniNaWZQ
         W1XElf8nmvkG86nVeCGnSUpN703wOyuCa0Wp5IyQ6ytMMfoxfajd+d7jyeubcLBRYONR
         /ZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8J8dwG6Hlh7He2JOFwWftwWfG21MU/IK1XmrJeJbO40=;
        b=RDj7GZodbI+MH/CTiNvU6WLW9gdEYP2aqX1RX0dWPaDxM6cAb/5DEEmO/qF8EA6xLj
         Rk7ZUXjij2y/vfg4OhFv+CFueoN4sGQWX+63+hgU0qw0M2335LShjkQJY1fQjxnNLgq+
         P5bani6oQAz5uiyrZhXLz5d+r0o7c3lGag7ilv2QR98uS04WEnnoXdPFQqu5NxgnUTjU
         T/qZGAJNILoWgme8Ajtgi8ojZSq4WgCQdx2EWW9onEmfqdGBPs4YDDho68/mPEmbwdc5
         wIECRxe3PtEVyPz40GFxpl0nl9CyCRi2d1GhSQ44eaqgzUqwZKIYHG+vDP2hIfF1pc56
         CtjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX8sxknfw794/Ef2wv4ftYCktF8QfLcCrn1KytrJRAOWEvzWErY
	7ImEQ2lRmYhpkn4i8/ve9Ss=
X-Google-Smtp-Source: APXvYqyw83qY0orb79Oh1+mHJl3J8GWj8tSLOotOng10kcJnnoDpzx0XiYtIgUdl6wGIG6CPCDl9mA==
X-Received: by 2002:a02:ca10:: with SMTP id i16mr3229938jak.10.1581695991216;
        Fri, 14 Feb 2020 07:59:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:db04:: with SMTP id b4ls572934iln.5.gmail; Fri, 14 Feb
 2020 07:59:45 -0800 (PST)
X-Received: by 2002:a92:4e:: with SMTP id 75mr3505315ila.276.1581695985667;
        Fri, 14 Feb 2020 07:59:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581695985; cv=none;
        d=google.com; s=arc-20160816;
        b=1Gbq/dLdy8oLPA9qZDCM2kbWe+7FO8XroNji2Gftv8r43PScc1Mqynwy6IuYk5+WVj
         Qih96THitOITqkVPBNARpwqFtd9e9b9/Pcomb58Z4+2Y8BzqtWrge501F4XSitO07aLy
         SE+UckMsdApLYHyWDxw9IbpfTqcigbCV/bwLcURODp6FMlijQzSWvl7BCh6KAMThst8t
         hkO1tv4dPb5jvAW10x7WyHtAdAv9bAVIkXF7PSIfl0f5iCyD9tVUlFYZfocYKwlRxbAm
         d8gV8SAkktT+4+Thub71yE+5sBD1/Zh+Da7CicmgRMvr8kxhC2sbgKHKq3dt9jBUVOAR
         Fuzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m7f7u4WlRDHp66b1aLH5fygdeiEuiTO5CajP6koMv7M=;
        b=f35T9MYX6bBl1ySpzteep1ZQCQJLxIyONgKUGlyrw67nymmzXvaf6FdyLCskcCNBgb
         XduCl4AwaIbAXIFdjCIR7ytzbbjWpn14ffQwUxFkpC3TSurm8ARkJQHiTYg2HfzgxDpP
         WNh+icO1kiKJR/rK31Nv6eUNrjCcJK9p6esrw7BsSx2TcJXzjGzhg7mh+E5wDsimdCz8
         PU6H+B9HUoUuNuBRwWbCbvj9aIMrdnic8PA//GgmndLYB1IzB2kuic/45iwgNl+WQ69T
         1vEi1ncx43yc4lz3G/NsZlOVq6dUhg5ZM9GB3A8D3v8rwGHWG+Ga+NdAY94svo1mYgnl
         95ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=om5SD5LV;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i4si312537ioi.1.2020.02.14.07.59.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 07:59:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 35EF82086A;
	Fri, 14 Feb 2020 15:59:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 507/542] lib/scatterlist.c: adjust indentation in __sg_alloc_table
Date: Fri, 14 Feb 2020 10:48:19 -0500
Message-Id: <20200214154854.6746-507-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=om5SD5LV;       spf=pass
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

[ Upstream commit 4e456fee215677584cafa7f67298a76917e89c64 ]

Clang warns:

  ../lib/scatterlist.c:314:5: warning: misleading indentation; statement
  is not part of the previous 'if' [-Wmisleading-indentation]
                          return -ENOMEM;
                          ^
  ../lib/scatterlist.c:311:4: note: previous statement is here
                          if (prv)
                          ^
  1 warning generated.

This warning occurs because there is a space before the tab on this
line.  Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

Link: http://lkml.kernel.org/r/20191218033606.11942-1-natechancellor@gmail.com
Link: https://github.com/ClangBuiltLinux/linux/issues/830
Fixes: edce6820a9fd ("scatterlist: prevent invalid free when alloc fails")
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
Signed-off-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 lib/scatterlist.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/scatterlist.c b/lib/scatterlist.c
index c2cf2c311b7db..5813072bc5895 100644
--- a/lib/scatterlist.c
+++ b/lib/scatterlist.c
@@ -311,7 +311,7 @@ int __sg_alloc_table(struct sg_table *table, unsigned int nents,
 			if (prv)
 				table->nents = ++table->orig_nents;
 
- 			return -ENOMEM;
+			return -ENOMEM;
 		}
 
 		sg_init_table(sg, alloc_size);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214154854.6746-507-sashal%40kernel.org.
