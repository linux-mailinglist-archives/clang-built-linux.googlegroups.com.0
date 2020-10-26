Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBWWC3X6AKGQEB53QC7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B82B299BB0
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:53:00 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id t1sf6318468pgo.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:53:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756378; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0M4py0RXPInVWRD2a3z75M49CRfLX53omM3rQLTCAeHsDKLdR+W7U8IkdSwgQuLQt
         VFazgze3tJbneclRNsqqjATR830gWSoGNdMRSvkyvBf/8GYBS5/ZvekW4Wr/V/wlst4y
         iattD0lhGGIAj+aczOziQx/S8WnYt++gZhDWvO2/KVXBj/EzqlCry3AmrsJVpb3ygu5g
         uQxYEHPi9YgHeA1vk0Ncqt7sjNb36d3P4fMAz7zatEWNkU8mvWJUgJir6Lla1yQDnblQ
         ZZg6HB1El/8FVzV7AgrirWKAvof6tWr+z1r/lgMBUCFmJ/NHItucZBaSQp+Xq9JEB6G0
         KJUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WCGtxumlr6AIxa1FOjdG9n4hRoK15gNcOPyFeBELkMs=;
        b=eXwZLZ2ktosiFSGy9ob5qS338z9iiNNNI8KCq8I7Wo5b6J0ae1B8XXRIRaWgrjwnB7
         cFG7rA5xJQOoEujCzFrPBk6Mo5/q3Avjmmf8rf2j0Pm1zqUNdaDXsP21emN9mXLTn3Wa
         nS2kgtZw8ky4Z2Rerkez2DqlXuJOQSM9x1HOafppi2evJRPZc8O7q1Em+rX1UUjj77vw
         uFWNaymvzf4hXTSAkdM6q91p4gHcKN8OIGtqp9SaGdAnEhDa/2jbJvDfO0URFWGr5yH+
         tNsDjC5DWY8lrP+fL+oILuev/4jJwYwGSRRq6hNS5IEzNV6RhX1QZ5CZyJFLYylC7mEU
         rqGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="t+///11N";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WCGtxumlr6AIxa1FOjdG9n4hRoK15gNcOPyFeBELkMs=;
        b=OR7Y9duPiYTiUoXs5uaJCRDvbbTeukQwH9c5cVOcL6JSOFHiE0/roTl5UWKsO/fHSx
         znaCFcpAPhxjEd9wXvoN94S4yCckNDmKMbMdcmMrnTwGUiTvvdKe4LClOPrOgEmQ+8l6
         NcXGXNkNrN/4lU3q+ZTip6NnrKogo79NWfPzIvg8BjtTz+K/jbJv3dMzykMsI8nsUCAW
         Yow9/foRkokrvfC1OCttgtRbC+EKWMiq0MoD1knLPM8VABzFVdwTfnPE+9YxaGZjflyj
         aZCW/vB72YalMEk+hapEvl9bCMIkZYXDG/8nAkUHpO5ksilSO44RAJFnS3QBM165YXSr
         qpSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WCGtxumlr6AIxa1FOjdG9n4hRoK15gNcOPyFeBELkMs=;
        b=sF9QDFqe2EtZBgnCq1OndrX+outwIX/L2vjW482JTYMsh9EMi7YMvyLRT7/avaMyG8
         CZZZw8oYhSHqn/21lkp7HuBrBIr53XdGx2GPilhZ9OP2yT+UYenaO1v8wE4sjaLz+ePB
         dfeBrkS67QA64/NB6jCi07MdlaoKlK6kMD9X5qmL7jG8sL5HfZXCiDmUtj3MnGevg+7o
         mm6FQJ40KCYHuCQbdnH8mpqSyfNcmlwFqD2b1zWR/yaMwdhzH9fbtLPGx2P/HSQ9vkJm
         swHTnTOXjDN97+KWXYshbKcIq84OgLA91A89akG/rvBMSd10dSJaTqCfVrgY6tzgWSdb
         90pg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HHOfoplcVcxyyTQTTr4ETBmRvws5VfZc+m0AQUEyD5BFt28W3
	B92cSVqbh1gqVPmd4r2QyNA=
X-Google-Smtp-Source: ABdhPJyXwhutNOga5SKC5BwP66D9ZBfIJHoklt74nwuRNGJMCQbp6WbHDChRfq3gnqC9nOwhuq+aPg==
X-Received: by 2002:a17:902:9890:b029:d5:e447:6b32 with SMTP id s16-20020a1709029890b02900d5e4476b32mr126062plp.51.1603756378803;
        Mon, 26 Oct 2020 16:52:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c90c:: with SMTP id v12ls5257612pjt.1.gmail; Mon, 26
 Oct 2020 16:52:58 -0700 (PDT)
X-Received: by 2002:a17:90a:1690:: with SMTP id o16mr23067500pja.148.1603756378267;
        Mon, 26 Oct 2020 16:52:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756378; cv=none;
        d=google.com; s=arc-20160816;
        b=y/FRu/90tHkg2UhPNbfLDr/b6IntZmfZmWaQUXdXtc57BOup7WtDGTGibVEL6iimPn
         Zv6g0O1eHj15d/AQP+CpZovhKYz8RSFV/gZdheuRc9u2lOWYkc9U5TvjCGB5i2E98NBf
         XSGPDGPdzki2/DjuJZlzwAiuwNCQzNtaBZxnJqXEDBxSlHAkkbEiObr3PnrcJKxZ6CiR
         vQjMMpc0PZvKcq/O9M01aYFlKQTYC2k6C/gq9cBZR8g/GOX/fzykHrABcuVMEvxWiVM3
         vFAn0tDLekeKRWsUArwPCd1fSh3hnnFdvuE0Q3a5j9B7RdE2W423Olt8CubY+YxYVVwl
         s0Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PZIuY3Hcs88dWitGLBS/gfE5DODZ8em7DeSwFn4oOf8=;
        b=v2c4zW9i8txN20FDw3QTaXXPxaBXKyYcaUQvezVPU7cRXnsRCgSLfuLKz3/SQi0u5N
         ZzpoZjbTM1yxY/rvsIv9RUf8a9DnM/Tp3l2CNxnf8BLNI1+ncr5vuBsg6vKtYTH23AW/
         oMyoxL1C2c0y1ErxNULfpqEbgPJne7Nuw7VeJwOtLUWnzs5z/3vt+uGhWaTSt6spzfjF
         DI0SKwyqn64ZgfU3I/rNlIhxkNNyjWLlOtMdm+3XPA6qxs2BfDxernPab4BuOinl2KXR
         dTmLBZ06Sk0NzkLuzutQsj9WLlR/HnvUHQbpWNxUVIRiDinUKMS3Nu+urw4+a3XOworG
         8/Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="t+///11N";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a2si496943pjo.2.2020.10.26.16.52.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:52:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E7AAC21BE5;
	Mon, 26 Oct 2020 23:52:55 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.8 042/132] media: tw5864: check status of tw5864_frameinterval_get
Date: Mon, 26 Oct 2020 19:50:34 -0400
Message-Id: <20201026235205.1023962-42-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026235205.1023962-1-sashal@kernel.org>
References: <20201026235205.1023962-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="t+///11N";       spf=pass
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
index ec1e06da7e4fb..a65114e7ca346 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026235205.1023962-42-sashal%40kernel.org.
