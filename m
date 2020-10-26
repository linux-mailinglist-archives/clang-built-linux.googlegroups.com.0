Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLWB3X6AKGQEE3SC5HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 306A6299B2A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:50:08 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id c4sf7046137pll.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:50:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756206; cv=pass;
        d=google.com; s=arc-20160816;
        b=x1yd0jJyyUYDnZL1ZHTAcGKSAjnRRmqHctrdu1I4E1+XFRMf9ZQwleugC+R3ikBwi2
         hlt+7cTX1q/RbmjrQp1UAm7V6q+igFffzwACArlFhlVRv+FdJaSNmgLDtaUvlHddRL4N
         jA6WYXsGBDYDULec5RUqHw95yHz9kGlYCuLzmM7VpWCWIvznlt+kuVk7hhw3/Ah8mxJq
         HlhinPaoVZRHOcLOnDbDizn9jZ3IwjtCC+qRhxRTvwZV+5n/kSoqTx1pQuGB6cDTYlz8
         bVmQyUXXQ1J0AIsxEsYTd1y362SlknFfsf0KJSuPXjYBjXYGKZV2IvrlusTVcmJGGPNO
         9Hkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=BU1i7pRLLjOrR+ZlIrF82cJUsvRypAQbmIUf/rpGsw0=;
        b=qFcEP9krMVrdfLBXL4IDFPqYRqvQ+Jc0UMZGvrBbej984Zcix3mZ4kyrZzZYAToxRR
         PFV9Q9mfq2fxKo5ivz6CAUDlDEriMmiSENwd4F1X4RnbKI1Psk2J1SrYmTFyu9jf+LnL
         Fjv4u7CCye/8Rfme0pUdO3iZtrbr8w491H8NGZAR4zek6gD3i83HLYb5t9/etucAATPA
         sKAZhcVlxSazdxRfy7ziegqSV9TN+A0aEJyBMbIyJu942L7VdQKtJtNhGPrKfKkBDUPF
         xIwoGaU4GUD5sb8mqCJYQ37OStfP5CzHHgbjmbjLwgCkwW1eM17Tz5ZLxQWyJkUehNbq
         azvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j42e3FcW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BU1i7pRLLjOrR+ZlIrF82cJUsvRypAQbmIUf/rpGsw0=;
        b=FK1hRTecqhP+6pNDLuKTMUNFab2TRcLMU3CMbScnyB4SqrQuoU4m5vflGPSlHoY0sp
         0CBV6nfOlsENHCWpAKA6TskEQvGpUpr67zq2HWuqFFUdnncQhAEUCmzeLP8QQlaIa4kU
         FniGKYBXldljcr/OPhQZ8v7cxrxvNteId58ozBlUQ0yf8AghqcjsBA/x3TaYioSW9An+
         bgm9JYFZVHRND1KuNoejMAScyB/sfBQndUAAn1ZavJPnh6IlfRT2bVaxceEvgfCm/Msl
         VZsF2hDy+azztrxpQ/25F36fkvzwKQWc8/nfeKqqmHiA/jrg2rsesvehhx/E3eYf4Hpp
         RiHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BU1i7pRLLjOrR+ZlIrF82cJUsvRypAQbmIUf/rpGsw0=;
        b=K8zd8rLjKTkQfXUTygSsZlFIHeCShcvRPHx9jmkHHkrKZP8Ve41JLQn1HVEGtAPOZ/
         LQVWDXzI0ZBoG3+dG+yGLLhAK8Y46rizZTzerMi22BD4mny6dyWSC18AgGS0p73UW1+e
         Db1PXDnFlo6gt/z9LAxXbnJTFl16KNcDTN65ZLmB73P4DCe+Df8V2Qte0o1SgpvZXbxX
         POWtK73DIr6wirnvXh81XJDaHBOQ3gOHEQ0nCendTR53WcMlNcvZoaeR9g5NKVZadXDO
         cyc3yM2EckTyTZCUuZt6iQpKrNmbNsTdq2IqQujOsrG8YXiACE9U5PvfJPAF66bmWV88
         ubxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533thpw02bGL37TF5E7X+xRwYbHM+IcDql+HCZHnJ3ff2zTCeoDK
	4qgY+YCawfzyQZHl/HoUffU=
X-Google-Smtp-Source: ABdhPJzLKEqXYi+pKA+PWA57FPOm7WljYbZcJUYXuhCpmDGQjvnvYj4JXNuOBvtaHWbOc4VBAXAO3w==
X-Received: by 2002:a17:902:724b:b029:d5:a5e2:51c4 with SMTP id c11-20020a170902724bb02900d5a5e251c4mr39524pll.80.1603756206767;
        Mon, 26 Oct 2020 16:50:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3c5:: with SMTP id 188ls3537997pgd.4.gmail; Mon, 26 Oct
 2020 16:50:06 -0700 (PDT)
X-Received: by 2002:a62:42:0:b029:152:4ed9:1f6d with SMTP id 63-20020a6200420000b02901524ed91f6dmr152130pfa.32.1603756206216;
        Mon, 26 Oct 2020 16:50:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756206; cv=none;
        d=google.com; s=arc-20160816;
        b=ffRmEbNV3bi4lLyKAJKtOk+vwHXKLWuI6nIqZlFbhCs47I9jbhpIYjkkDBy5V4Ps9j
         d55+Cgv9IGKkh7VDNBvKl9NhqCThYk+kjRbsLAvK47RL8R15mzVSuCMj8tEZo3XQOcZm
         lpGlBMI8FhUJ9wXjOTk4LmLejumpIX/P3r6F/zl5STKuRPZnA3kAKuC6WZ/RtmIbAUWN
         0TLB7nVJ9ndKl8FkH6OlhS9vtvBJ+k0b3JD3iQcIWaMlJ0xR79BoZ/fJHnI/VmYjPd6s
         wy4zoo4QLRvqZ09tI/dspt81F67lG6aVnO6FCKp1dD8LxMMSJP4Hii/coCFg48N13YxU
         H0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PZIuY3Hcs88dWitGLBS/gfE5DODZ8em7DeSwFn4oOf8=;
        b=jRXt77YShIqzaazVoqhQ3MZLKejJLvvLo6TuPmp+24tWFz/rQ0rthdjREUUa+ooDhO
         IKgmnd8dpRK7LZwhF6So/TWhso7SB8an4g1LAMPA/EKAHCUDB0nkQ8CSjsX6b1Q1AHZD
         vFrFhbepcIjEPzlQQQzpZXZW1fMg5FlO+cxcyPNp79WW8LrmbOFO4ZuN1bpF0a9hFdym
         BwxLA1XvVmYew8S7ZuMKuTCg9hhyq87YIok8FP1PjyjJKhzcaPfmbnBzHi9Fa9axAMTY
         MGYJClLuLncD05jPOFjHnhRa/75uWwSBMRAfphmXfL0hMdGSq8k8Y1isUa6MOyQLpoTQ
         a+IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=j42e3FcW;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l7si647456plt.3.2020.10.26.16.50.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:50:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2AA8120872;
	Mon, 26 Oct 2020 23:50:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 5.9 048/147] media: tw5864: check status of tw5864_frameinterval_get
Date: Mon, 26 Oct 2020 19:47:26 -0400
Message-Id: <20201026234905.1022767-48-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026234905.1022767-1-sashal@kernel.org>
References: <20201026234905.1022767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=j42e3FcW;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026234905.1022767-48-sashal%40kernel.org.
