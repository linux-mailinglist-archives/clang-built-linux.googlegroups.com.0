Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBYOK3X6AKGQEMPVVQBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C8D299DCB
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:10:10 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id x17sf7065266ioa.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:10:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603757409; cv=pass;
        d=google.com; s=arc-20160816;
        b=B6bGBzjcuYJZXBbIQbzG/b6+UEg1K+WlInVbgDDBpakaT/L8cdKUphUiIVFAX1ND1M
         IxfbL3xyITCFk8IzviAot9L3X2+Pdn7AfOsnorXiNNBIonvE5piqO+Ch5z3hRqSAwINB
         PEMHLTKmyeROZ0+/hPQOWRZbhW5l65cEyvhXcxnuONnzoy0cP/OqHhZl0Kd00Ww0tGv7
         wzmYEFwjqV6IF7hViW0UB6Oplbaa1lTS/fs9fIIPRmwDNxa/0i0UnltOMUzBmCiSYC5/
         EViUZVha/ijagrbn9xIGJ5hwN4/ukTENR0oTwBVjBYj2xzPrJYUt6EfusASc5XbeIYWn
         3gxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Bqo5E46Vlw6vtPjtiX10v6jHZjznS5Mny3VhbgANj9s=;
        b=waa/tvH73aAye3IP9ytiA0RFx7Yhe+U/rZtHN3yB5F2KkHV4Prsh3gKEUiR7/NSrqW
         62J/teUF5PZBX4P7B/81/it3LTEr0IYINCmvBFmRueE4dTqOg920is4QUmLlBm9xsXYc
         m+XHVH5EJgP+0xW83BoWcSTCPFUGStQgd4fEPeiVEVv1GhHDHCKdSyJHBiWtSgyZsScy
         R7SLyCMZS06Wf2S7S83KSyVM41V3x6Nqd8Oxh88z/YU1ETHdYvDFlKT+nolVYXTDx63R
         zrYMbaiNT+WL4fnojAgCZrrCfNEUVn/NO5wFMbLKBChTg29ZOP7G5jB+v9Q43PIdFnIF
         Gw5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QC/Y0cuY";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bqo5E46Vlw6vtPjtiX10v6jHZjznS5Mny3VhbgANj9s=;
        b=XiSznHJD2lthE0xHepKhMgGi/L6HPstiYim7tLigF7rI1z7sVKrYfEnw8/hTk1ZtrJ
         z5Kfs58HbjLPVPhoLceW9FS9o86L7Zxlt0AsG+6/BZQLohUL8h9fsNwtGHpR5xFmCdV2
         j2fzW0NgGG2wJCbKU1aWvWY/+XlCJdy2aEtlBwYKJtynhzPbMc2Zm0sNAEr2Td4XZo4D
         BuizuFNgeuqm3aOQ8YcThdak+EzRGvxxC3F3iCJ3GjsZ0jp+tPGSJBUPud+8j1CefgGh
         lAllGeSvEcAgWUCvNiJRsi60JC4TDCrUSYGNp1A+vhvHmZSfl5bqoNerC16sEQPSoqd+
         ghRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bqo5E46Vlw6vtPjtiX10v6jHZjznS5Mny3VhbgANj9s=;
        b=DmmMEJ3QPLq61Ya9JTPvMX1fLRwNV2Jlw9UOCFC4PnciD+tlYrPubiHqFiADHbO7YV
         Ku/3eBNXU9J78lXEUuJqfAbeVHfbsrJdGMdffj2PoSiNEuQS1amApWx5w3O6rphuDS3y
         AtZvIIGJXd1ZwL/AMlsuzY8HDW7sZpFIu6J9TQigPjqYGmTlMNcJ3JpgFfNRlJCbNrm0
         kwNJLFRId3imano8ZAJPoWGYEGOGmDtzi3dED+/QRRPzYWs/Z8GtF2s9R9iXaehF8x5d
         74rLaBjpJfxnca0fCErbsoCRIqx20DMVKuiCG95TKLr4U+tV8Xa46pC+cY7Y6Isfz3Ol
         0NMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531u0L/cxYqIF8kJP9CujJ9oRr3gQDMXVTnrYsmyIqRr9WSYdmwq
	TPiOxeaQG+wBRSiCq8raFlA=
X-Google-Smtp-Source: ABdhPJwGnCds9IdDYY6blSIjO8pvmcrxE18KPKC5qgZboS1GAmoedqQ/ZYs4nFv31CM59vqK7OFYLA==
X-Received: by 2002:a02:cd2c:: with SMTP id h12mr13557223jaq.138.1603757409196;
        Mon, 26 Oct 2020 17:10:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9d4d:: with SMTP id k13ls1481958iok.2.gmail; Mon, 26 Oct
 2020 17:10:08 -0700 (PDT)
X-Received: by 2002:a5e:dc4d:: with SMTP id s13mr12220817iop.139.1603757408733;
        Mon, 26 Oct 2020 17:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603757408; cv=none;
        d=google.com; s=arc-20160816;
        b=z/ixhV7Wcv8jQuQ3hwmH0q8bKc2IgSyC4iKHIkMy1v0rbUuJF3EGjQEeqATzv/bcKW
         4DLNvArc7Nkye0eSzhxvGELPGM6BAWRsRptVCo6vsNbkqPzbJ02h1cbS7uwmRDfiXgL5
         Ex2WoZQRaXoysKJ3+w2hvcSMn7mCyFsOrIOnlCgi2FSep4uwbIZBzdx6ZGHrKFHoM/zq
         lRisTDGkF9OPz7Mc5xTY3xGMWqhaTbyW1Us96lYLeuc6J4LQdjMGxq6CtZSld8z3axJo
         eXiUg1EqbGkgdPAXyIq5lGhHTIm867c9xdQrmReCre8+sBmk9TXd71w3ML+O5iTMCk6u
         sfMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ay1PY0pVy18c8lXL1KJxDi3Hf0ztuawRrB2jHfl4O2g=;
        b=INwxjbgo5oTGW6U6UGusWS9fxLfmm97yG3tgIH2I1oCN+pxzdlY8SID20rxmdx8uig
         5U0+8gYj/I6avY1CZ8RFLyXHHbRrWcBAfOc6J8Wc35H+m/Jsz8Bkl8SA5LjWVitX9gEn
         FNuC0/x6xbi7eAZoBY5K/YMqPmEhFohuoqYxwKxn1c2cSuKtqOy/3KG12UKd6M0smI5a
         bfuIhvWG6bmDgmzbJrn8CQyW2UQSC071rcrguri8S+azT/1i3FZHVA8vFuz+Hgv5RD62
         wE6ydbP70yx1u8WTerV8SD4RoH2qW8NFmu7nsc8BKhTebohxUhmmpmIdUBHOjV51JQun
         5yYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="QC/Y0cuY";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d25si653789ioz.2.2020.10.26.17.10.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2C32121D41;
	Tue, 27 Oct 2020 00:10:07 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 17/46] media: tw5864: check status of tw5864_frameinterval_get
Date: Mon, 26 Oct 2020 20:09:16 -0400
Message-Id: <20201027000946.1026923-17-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027000946.1026923-1-sashal@kernel.org>
References: <20201027000946.1026923-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="QC/Y0cuY";       spf=pass
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
index ee1230440b397..02258685800a7 100644
--- a/drivers/media/pci/tw5864/tw5864-video.c
+++ b/drivers/media/pci/tw5864/tw5864-video.c
@@ -776,6 +776,9 @@ static int tw5864_enum_frameintervals(struct file *file, void *priv,
 	fintv->type = V4L2_FRMIVAL_TYPE_STEPWISE;
 
 	ret = tw5864_frameinterval_get(input, &frameinterval);
+	if (ret)
+		return ret;
+
 	fintv->stepwise.step = frameinterval;
 	fintv->stepwise.min = frameinterval;
 	fintv->stepwise.max = frameinterval;
@@ -794,6 +797,9 @@ static int tw5864_g_parm(struct file *file, void *priv,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027000946.1026923-17-sashal%40kernel.org.
