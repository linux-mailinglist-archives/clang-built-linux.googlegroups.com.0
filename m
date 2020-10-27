Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEWL3X6AKGQECYRVV5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa38.google.com (mail-vk1-xa38.google.com [IPv6:2607:f8b0:4864:20::a38])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C83299DED
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:10:59 +0100 (CET)
Received: by mail-vk1-xa38.google.com with SMTP id j129sf4309836vkb.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:10:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603757458; cv=pass;
        d=google.com; s=arc-20160816;
        b=LL2bq9Tfwm8rfpx00Xo64Ml8JTbMbnYHnuC0vBHbsj0DoJoTi88pXYvB6C+4ptD6+F
         DdrpTV7DflCvVqp3wrbUkSIXF5bynwWmuLc/P6hw5kk0BnOVwvhj+iirJDYA7LGu+qrR
         JEsQjymi7l4AnlKc+05UsZTH/7C1+6HKDUa6Kwf9cKlPnpnk4rpBBf9jFswLacFW8AlW
         50Ef/v6ljnzxR3xFnJYafgVU5N7zaITnFztxMkycSe3U6dZ8UEWd/kXgxWhp5/Yonj12
         fR5sqSeYDcihfRKmSKkxXELiIENFpQL+m56ukwEYYF4wRqdpcg/7BhD+LsDgppVrfCzF
         V9AA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=twGT/BoKMKdCBK4Uln7L+hqrNFXVoVFyT4MwxyU20qk=;
        b=p20KKnwyW6IoY0yccyD8vbAGwC1iCo75qiKA3ZF15Hd6Kpv6b6Va5b5eR7szm0afWT
         t3uzMq6q5nx5a92AQqpnGHjvx3gnAw7R3pKVW5LCi4u26lZ3PgA0CPlQXndCt10Xsw3s
         z1fVdTY5IIt/jtuqdQ4YFgmLV+QvNC1wBXzSjY10XdPAPvBwAbAnqvv4YQp2o0S0+xW0
         /VJ5C2TCjPWJSzXrDJ49jMsuWWpuAEWewUxD4L5q1hQ8q2L4U2AL1Yxqt+7pYeSFEzRa
         LEsQ8EWfTtJ0rn2L0gPexfRgvj/O64/j5dkDD4NUITz3YFf+1ZzDNBhLVDdqK5CqRBlc
         QsTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bJ5aXXYD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=twGT/BoKMKdCBK4Uln7L+hqrNFXVoVFyT4MwxyU20qk=;
        b=rPxco5B1jbrD9CEecCBzz5bWI58OjUpmh/iga2LPO+pK8GI+7Uh/3hVwChz/GPKOK5
         AkU5fyJ+XUMfvmGyuGij+QNCpoxoBbw4owNkKk1v1rxnEk3ntH3ncq4XKjKEFTGRiUsR
         qYLqd0x8HClVcjrvXkzPAb/aszmg+k2IsVYQcZMVwvd4nv8UE6DTUUdF+cBWVmFgGtVc
         ntXb4wJPVaCx0pbKdIKw2itSu2vcT+TaTKsDofNtRXnXecIx+w4GlR6QJOlTKswoJbLv
         2xp5+OOAfe2vKKV0As95JPlPBAXd7/jwSeIj3ltXMt4Bdv2VZHRZfxfgXnEkRWi1WA/g
         xCjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=twGT/BoKMKdCBK4Uln7L+hqrNFXVoVFyT4MwxyU20qk=;
        b=FGSOKNCdiMdqO7FbgU6CtQFdvBSriyoEAUPz8vMTy3/CUbdc75mFTGDqnB70uRNu7Q
         1CEQhNjgMBz/HkRJnNApbYku1UAVYc38ufPZEmQjHbQZYXBY9T+OJ+UudkTBRjlCC2lN
         I4YkgF20iXtwPL7auGs9GfseI2NHDU4ZrCUq4PjtA5fr7pU9MxudMj3M/adtXSnnum/U
         yZlyXs9dwgP6y00IQvMOq/FM7ujHwzIo8JJe1ZoYhNQ2aX8ocuBZyf2bKU5Iu5PIWkAI
         9aP4xmGbzpFll7lT7YYXR1jcsUxuZ+APDECq9z6aJxR8hYf8olPNpIE5Ab3PQ/SkDG1V
         By5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/nbQvY52S0cMhVVlgmsslXXk6ZLBKP6JZ6a2xg2rMnJXAOE4b
	Yv9z7t+sqzTxTfEUDiTeshc=
X-Google-Smtp-Source: ABdhPJzGr7W2BZ/iFb3WV2ZEkpF0YXC2ijEm/LH/EIIxvv7R5E5jhonGpO8NeFRnY/QhR3phaswgpQ==
X-Received: by 2002:a05:6102:408:: with SMTP id d8mr1739vsq.41.1603757458309;
        Mon, 26 Oct 2020 17:10:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:318b:: with SMTP id x133ls522367vsx.0.gmail; Mon, 26 Oct
 2020 17:10:57 -0700 (PDT)
X-Received: by 2002:a67:3143:: with SMTP id x64mr39340vsx.12.1603757457824;
        Mon, 26 Oct 2020 17:10:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603757457; cv=none;
        d=google.com; s=arc-20160816;
        b=ylyj+KJyhVxQJAb/1J7Ogi/rKM6f718rsygNarkBROaNRgU2pNAWi0qezBrJAAg6hV
         daii5Q32iuTT4nFjbAXIGp5gTszqbRiniXy79bqMVpi3QGchKH7AWMMjuBJzbG8q+Fff
         IuDmvTgj375GBUWgVXwNNYSMCTnvvoQETETXkJgQR25sVDxabJKgTLgzSEbyJMPmFw3f
         BfMz37DC29GcdiBMOFnephJLPtr9rBpDOkueRyltIvMueqquqzPl21C1uxlNtyXm1X8Z
         9stkPDdxjjQbWLlufOUFFIZIBAzZeT0DI7x2Cu9nsc4F/NnliER4zUJIyx58a0bzMtDl
         nZNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6xxVslesWSX8E2Yn7rY2GJI0L0UEHfERktxcskkJWpc=;
        b=hBkpDBHjndmi/I40PKp8AhgeoiaHRqVX/NXFB/78LpMnsqpNHmmGI30E7ODlFpPiyH
         RGwlPXrzOdGG8zpLQKbiCA36AfMPbRaySALosnrZj/UO44zqX4+OCHLv+KNbzTLYINw+
         CGURIjdCns9YPA3mG464e5ITp/7p2kKiCKx8eHQmRTEDDHdbgqU/GbjWIn07Jaari3/G
         qNdfRFB62YOmugk3wPHzWLW/zor2BPrm+3Ej05iVBmrYf9+ZoRpfEKNDOHOrnZ9+UBNp
         bBf34baWSuhO5I75fziXCZ07fj8oKu4iLS3ZXXV3vdvgTdrcHcHaYuB8XLrFVAz1TJp2
         nGDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bJ5aXXYD;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s3si641767uap.0.2020.10.26.17.10.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:10:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 19AE821741;
	Tue, 27 Oct 2020 00:10:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 10/30] media: tw5864: check status of tw5864_frameinterval_get
Date: Mon, 26 Oct 2020 20:10:24 -0400
Message-Id: <20201027001044.1027349-10-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027001044.1027349-1-sashal@kernel.org>
References: <20201027001044.1027349-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bJ5aXXYD;       spf=pass
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
index 27ff6e0d98453..023ff9ebde5e7 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027001044.1027349-10-sashal%40kernel.org.
