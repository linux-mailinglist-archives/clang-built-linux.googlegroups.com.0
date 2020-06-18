Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAUHVP3QKGQEYYS3OZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2F51FDDEF
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jun 2020 03:29:39 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id r13sf1915801oic.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 17 Jun 2020 18:29:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443778; cv=pass;
        d=google.com; s=arc-20160816;
        b=xArbhIcgW878A168ITKhu6yLMolSc6NGvt0TdF1AqRACiJBc1Gh2sTzkRqHQK2bdfJ
         t7lnWKNWmW3JWKSxT1ofE386sBAWHUj3HXP4LkLKtwYNND4fFxtebQ/bUbWZMCEx01mW
         JH4UfGFQsMTUyyY4Hht/7qdGxT+TNwtSyxok2zAlsdO3qwy5MfxTo8tIn5T+7hO4Ll4n
         r9050+XO/QH130nanWWP5GUCXZQbcEbjSiQIzFHwyZDFBZ/akcDYhAHgKzY49FOZHGVL
         rBOTQYyrC3YtH9RV6o8I5H0mxsaWuQi6q7PHyWhh1JKlLVOn7g7C8d9nQKZNTVFUdyC2
         g9Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QlK1zFc/01B62MhjPFCuA6LuEUpjhRuDZFwWEIKyCL8=;
        b=mckraULMmWoh7LzdqKYgevSU2ErmRfFhkDQA9gskEtIwlnxgXRzQExezZW/UuHxc0o
         UOFj+4LMy4AoHj6CkIkv6d8u40SHVIX/G54UCYxtDc1JEHSziIGZhbMezanLD5aoI1/k
         pFQPGrMZr+hSTrVhdIp4lSkmhLul+gcK/YhhTpKfoy/foroNyID6vBuSBUyM4WjDagYc
         Urg7Jv83UdIQC/SHXh3PDjtsWEhAe7F2lvLhbEDv+b7RFgrBEMm/MKpPPE+kqvqSSdt5
         seK0WrnGfFtHzUsaqHD48BZc1AR5BkEZ+6sGMwmof+5WqkhYWHiP7YuHPOIPDVA25AHh
         4rGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tLbetyF0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlK1zFc/01B62MhjPFCuA6LuEUpjhRuDZFwWEIKyCL8=;
        b=hDabt23a85vsVKz2A1Z/v4ijFBzAZn1/8uurX+lgTfNEjh/btTrb19QiBCmVAjYhwS
         3FnmaCIyucL5yeUAVhthnGa38AewbffFMC4y9eXCNjzePfUXB9JwSqXYNWADWhR4iDRv
         es3mlBuAtN0xvl+COEgaEUwEHNi0RNHpLe2TKR4LllmjmBS1a1ENNua0IDqw7pdYH1s5
         SJEARZcxQ3OFka1JhYAEuFLDEiCFtjTte2fTfqJ4wZFrw36Acs2jbAdAXpkhBw8UDL8n
         jtAqY2AKx6hpmQJjXfh4hErAAaAdbtNb9D6NxxF/VuktwBB7/gc27G8Ml16Vfk0j7jcF
         8W9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QlK1zFc/01B62MhjPFCuA6LuEUpjhRuDZFwWEIKyCL8=;
        b=iyY/LEeJs/a0jJIa5I/KZOfIEbtQfgLfssTYZia9dgw2LVc0yG5rsVRvbR5XyWmHJA
         smyhTh+BNnV72+2Fn2KKp+2LtOZ28gdlxf+aHmuLetZGRX4sw5/X6tPYCHY9x/V1BdF4
         4PIRfyaB96c+mmk124niQEjpJbMpemPVOx4f51qHszkN17lGignVHNuoMoUiu+RQfZ5U
         M0z2k9JOLAEXpBYw2vGPAv8ddL6/aWfK8oAYBxupMOC7sC2WxIEhXJOH9nm6oz96IF0z
         dKx+/HONWS3YHIiAorgEePp0sl9MPQyEOl9tJ3ynG7et9pigw/+0AX2RuQF+qEqvElLy
         6Ypw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LoMSHLhxQ7xPDgk4im2qcwt3px66yKeQb4LnN1HRppyF97VtR
	tloH3X8Y7LVM/4RhFP6QaOk=
X-Google-Smtp-Source: ABdhPJzWIP3WNUQumoJKbMbAdcqfAlKFON297nBC6EJx0EjMZavGpUiA7iSrMvZAVqdEqsk2dmGKbQ==
X-Received: by 2002:a4a:c53:: with SMTP id n19mr2026796ooe.59.1592443778683;
        Wed, 17 Jun 2020 18:29:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:a401:: with SMTP id v1ls250136ool.8.gmail; Wed, 17 Jun
 2020 18:29:38 -0700 (PDT)
X-Received: by 2002:a4a:a785:: with SMTP id l5mr2056652oom.74.1592443778367;
        Wed, 17 Jun 2020 18:29:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443778; cv=none;
        d=google.com; s=arc-20160816;
        b=To3M55VOSGP4NWUYB+gTG66Mu8KGiMw5jBZoYyUuEDXsM8J/lMtQGQkoc5e+pVFAya
         kqEcwCCVey/ich33iY6AQC7bN976qjQ1hCHbsctse+EWjV09YEcKPDgncuuwMvmUCvU5
         1hZHozhDjc+CDtQIWzp19axKlmonGF/VygIWdElUqy9PW1sXiK+X/9cTKLWV2Sty1zBs
         NY1vN4dSoLI0X7jSqGbvzvsED90k/VI8q7gdYH/T+N/4yaHNY2MweDlhMcYpjEaKgxJh
         pBeTWmFXajt1KmPpziRUeuL9RidwIYiAMgxWGEd3HW9YlkN0HqaowGGPFKnI3OrT/S6X
         Rdaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gnY+XQkwOHC2Tq9NZ0iDsBbN0+z7op0yMoJqBGYqWkw=;
        b=eOrHDJ+ceJcYLLMTiMlG+FnZF90K9jq0D3ZtP5Uv53Mc2rYDiDjXRMiq74gkzPdgMX
         7AgolY1eqdSaO02ctF7j1W3Lim09s/ksPEYrp9peTtgRZpSErdDrAPaS+W83i+CZjGMl
         reIV3tbK/VQQKbXT6dQ3srFS9CG4mikdCPr80z8OnQT4qSurgij9a2iAxyFvA/pQDh69
         JRYjCyuDjKkeqDUgcWpZ9wZpalKlssxY2uEVkZ7a7QU3IssnlVmWT1przSUw4AyoHNlz
         KFspTAdz0cfJ+4f4dS6xjftgIN4DpicHW4Fp0+ubsaAgExeAVLOSROd356C+NSHOVoVs
         nJWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tLbetyF0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o199si81894ooo.0.2020.06.17.18.29.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 93DE122229;
	Thu, 18 Jun 2020 01:29:36 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 60/80] USB: gadget: udc: s3c2410_udc: Remove pointless NULL check in s3c2410_udc_nuke
Date: Wed, 17 Jun 2020 21:27:59 -0400
Message-Id: <20200618012819.609778-60-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012819.609778-1-sashal@kernel.org>
References: <20200618012819.609778-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tLbetyF0;       spf=pass
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
index eb3571ee59e3..08153a48704b 100644
--- a/drivers/usb/gadget/udc/s3c2410_udc.c
+++ b/drivers/usb/gadget/udc/s3c2410_udc.c
@@ -269,10 +269,6 @@ static void s3c2410_udc_done(struct s3c2410_ep *ep,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200618012819.609778-60-sashal%40kernel.org.
