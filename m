Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBA6E3X6AKGQEFAFGS7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAE6299BFF
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:55:48 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id x17sf7044617ioa.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:55:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756547; cv=pass;
        d=google.com; s=arc-20160816;
        b=oX1bEvLRwHN3w8bIwufJUez6GwoRMtfL40C+p1wSnAleVScgpeE3adc3MYvfyQGDKw
         tQ2WdKhqtUveyR0y3Ixcq3MyZoKMQEe9+Ji5tGq88e42Ss1sck1RE7StmDWsstj+U9nQ
         ckevWguiRkrPIvFKufKW+o+OL8h3F1Sw4PzbB7PsNBR1mJM7lJxtAfpdyaCj4CgNWeq6
         oyCE0V/D+kkBxuJmT+Tfnp29XIU1a/ZStXTPh56TwqDu4LB8121vDcRgnAoM3BvJSM1F
         yP1ZHjvKoDiN2ZeS7esZEIen+ysRCGmX8/2Bd4USwxVPYBDqA4f1+Or/mTKRU8YDUPXU
         /bPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OUmfi8hbkHcmM5NanilbPh38aWGZZHURiLfKzwP6rWI=;
        b=jI/ZerMHONPDX0+e7KnD8vBK0Zg8oVNPTxQ50FCv47hJWrridIFq6Lt0iCMGZUeGoR
         HGLXSmVkyhLI/ZsFMF7/Zs0gKRzRuJax5tK9W9WJ232di9W34OWYuqjgmh4QeMXU0zjP
         K87SvykcEdp5Zf+1dfvhw14qUULCwDOnL+P2k2qvEd8hfPiWriA0HyBlpw4hKRpTD5xY
         lA4Igi2ycWNCK7SZ/exMgiBxYwI6tCJ6tnY045W1TWqVjk87glIKK8kdQSAewu8v9HFy
         x/KiK88pQLmwhEWHDEE5CrKSw+0MkBskA4ByePdiRJmG4oA6iK+JxHylJQZHGpbjzc57
         No2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QtopRAX/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OUmfi8hbkHcmM5NanilbPh38aWGZZHURiLfKzwP6rWI=;
        b=WiTjikV+XGl+ZHaPkSQdFgsW/HlL9QLQvBOvgqy5eEKCYDPDk4sfsiGpiLvvixsHva
         u5tss5aCli6KbiqDqlKVXH5DsKD4WlM3RkeHd84Z/02PnmNh5H2HNk+lzKZ5JF+tYe26
         9nZ0q+UGkFAWZ8ajh1RXqsT4/CUMear2+BAOvZedN7h197L4gvCB5vH8FQk9gK/kAbND
         7lnfT8l1OXv9RX7032WqMB8XiiRh76ZD6PF4CujxzbtjeX8HW8uiOxuSADjYsD3YMfBA
         3nRu4h124s1n8FLuX380kW0mAcod7+vesU9faB0VAetk8g+1LMLhGIH+QPwcBS65EvvT
         vsuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OUmfi8hbkHcmM5NanilbPh38aWGZZHURiLfKzwP6rWI=;
        b=frLsAgIDc25tUlagOIBeZ0QR09bGVDw2tVLwIxXk5+n/y3Hq9MjSJCZifEUo+KxC8s
         I5PpG2V53NMZPlpfLowJ8rfttUSrdK4OV9YPjOsSdbocOQPSbvVr4ZHYamO9nXzbu/xN
         gVnhSlXG6jkZD3e912XTYZN8Zv//U5e+Z5iAwNzN5HNJADVUFDBdUSPFn4l85UyioZmh
         iTNRbq+6wB0WyCJ7AuPX7uQfE0JDAY9tJa55dRHCXM/yJUupw+wU6hiSoO9LvRZkQW9H
         vwcEKLQLd1KJEn1MhNtu3pWfe3Lte2N+5sq3TpPdbeQXRUtOA0HGEstsAq4YvFzZFlLD
         1/0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y3fFeDDPtobjGbittp2vGHIaER/KjVgFx0UZH6qCvSw/CrU9o
	6h17xpLokGQJYNvlsdHyd+4=
X-Google-Smtp-Source: ABdhPJzI/fKPua6poAJ6o/2ysS6xW9ILEXrkjgHUERg5x9ZeZoKYbKhL8p/4RW1Rebt7GhZZnOklsA==
X-Received: by 2002:a6b:7841:: with SMTP id h1mr12398707iop.72.1603756547798;
        Mon, 26 Oct 2020 16:55:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8154:: with SMTP id f20ls1557719ioo.11.gmail; Mon, 26
 Oct 2020 16:55:47 -0700 (PDT)
X-Received: by 2002:a5e:961a:: with SMTP id a26mr12215957ioq.48.1603756547349;
        Mon, 26 Oct 2020 16:55:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756547; cv=none;
        d=google.com; s=arc-20160816;
        b=wQxbnvVdiNddjxOynsBRTdse9NYJrn0TBMjlymnDhT3TmOrnuEuxwITiEZtis5ETn9
         a/Kavb55eEgj239s/m7qiDoipcX8h65p3wJwtO2w85PUCn6DJsTksPytg2rglMak3WTD
         wyG6a829H1QYprdrw3ViRzTsqiO2j6EaxRY7c9JQAwGrBNhLiFDccGVaorE0CoFOdNYp
         BdJfk6HgFOu78iZb+Sg1gwCc/qZrLP1CaXFRwkoauKp+frAvh6ygFuIrCqSzZN0cUV2p
         cxO9MLqSzQioqKr7hUdzKqAszvaWnTe9weR1KPWA27Cz3Tr5yG7kVKhp6gEu3ODR+A9l
         gecg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=8W5KvzsbLI1RZgacQlF1ElBzX1kftMdHd8mhXKrOp1s=;
        b=NYLBHJ1ci3kDIuzLUW/kY77vNwlKJUWngbu1UW9Mj3FlhjbmoJZqMRcHmtOhki/nBr
         5wwXAO9pWBc3IPiQpoNkL7mQ+LXSqtNqVyvla+COOkjidJwvqgAlicluyNjOY9c74cNz
         DOVzibncBWWcbMmqw5TQCrNwfmjOS1vCM9UdBMXFJAXsjCbdBQ70SOuz5nDA+JKMaQG+
         BjYifSr8JujymFQZ1TPZ8JU/JeZVwH6dA0vRfTAgWwJzq9hTu7if4mhBRCy5m5oWKWQE
         b7iXHzlzzn04a38H86/J65M7nGI0AWwLjLgV/uScGyD65eSI6AbTQkB59JZpajPKeOMd
         14NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QtopRAX/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p5si204351ilg.3.2020.10.26.16.55.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E3A1122242;
	Mon, 26 Oct 2020 23:55:45 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 24/80] media: tw5864: check status of tw5864_frameinterval_get
Date: Mon, 26 Oct 2020 19:54:20 -0400
Message-Id: <20201026235516.1025100-24-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235516.1025100-1-sashal@kernel.org>
References: <20201026235516.1025100-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="QtopRAX/";       spf=pass
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

From: Tom Rix <trix@redhat.com>

[ Upstream commit 780d815dcc9b34d93ae69385a8465c38d423ff0f ]

clang static analysis reports this problem

tw5864-video.c:773:32: warning: The left expression of the compound
  assignment is an uninitialized value.
  The computed value will also be garbage
        fintv->stepwise.max.numerator *= std_max_fps;
        ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ^

stepwise.max is set with frameinterval, which comes from

	ret = tw5864_frameinterval_get(input, &frameinterval);
	fintv->stepwise.step = frameinterval;
	fintv->stepwise.min = frameinterval;
	fintv->stepwise.max = frameinterval;
	fintv->stepwise.max.numerator *= std_max_fps;

When tw5864_frameinterval_get() fails, frameinterval is not
set. So check the status and fix another similar problem.

Signed-off-by: Tom Rix <trix@redhat.com>
Signed-off-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/pci/tw5864/tw5864-video.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/media/pci/tw5864/tw5864-video.c b/drivers/media/pci/tw5864/tw5864-video.c
index 09732eed7eb4f..656142c7a2cc7 100644
--- a/drivers/media/pci/tw5864/tw5864-video.c
+++ b/drivers/media/pci/tw5864/tw5864-video.c
@@ -767,6 +767,9 @@ static int tw5864_enum_frameintervals(struct file *file, void *priv,
 	fintv->type = V4L2_FRMIVAL_TYPE_STEPWISE;
 
 	ret = tw5864_frameinterval_get(input, &frameinterval);
+	if (ret)
+		return ret;
+
 	fintv->stepwise.step = frameinterval;
 	fintv->stepwise.min = frameinterval;
 	fintv->stepwise.max = frameinterval;
@@ -785,6 +788,9 @@ static int tw5864_g_parm(struct file *file, void *priv,
 	cp->capability = V4L2_CAP_TIMEPERFRAME;
 
 	ret = tw5864_frameinterval_get(input, &cp->timeperframe);
+	if (ret)
+		return ret;
+
 	cp->timeperframe.numerator *= input->frame_interval;
 	cp->capturemode = 0;
 	cp->readbuffers = 2;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235516.1025100-24-sashal%40kernel.org.
