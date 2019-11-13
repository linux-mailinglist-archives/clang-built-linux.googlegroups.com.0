Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFOGVXXAKGQEQZNBA3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 798A5FA16D
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:57:42 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id x186sf496843qke.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:57:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610261; cv=pass;
        d=google.com; s=arc-20160816;
        b=tri2XBBeGt6EPbYXcYBh4Zwh7/SKaaZYtGUR8vsaMuIUl5FSeyDoi2N5V3NhhYegKM
         DdzSA1hcqvnfYV22bsbse4NNQYmmyfANmoZZOfFj90rIzSdW7L8zjdXXv32HgltCdPoH
         bXh+uK99+tjLtGplWCYovnaFIW398BGK6aFKOpsGcUA8sTmke3Gar/LTNPMzz6oFNO4k
         YgFZ7AHKVmQcBqeJwYhznr9tJWTxX1zK2fLShfIAIDXViacGXPWCsqBqVFtJAbCP9sM6
         TQGpmn9FXbP1vJ83FQAxv/ejzVRMS3T5JsMoEjauHXm/OuB9M6S6ti4FYFV0RtS0Cqu7
         J9oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=TcN4sCKTMNgnjTkoB1CAmg7v2ZIJRQ8ugPfowqUYObU=;
        b=A/GDWqY/RzKIFZdQChpXCFWhC1qC0C8je8tV7VchB3xUO3i49Y+auViQZIdO9Goo0D
         2o5Vgf8YBxu85orE/IKuCIDmXi9Jg6jo34biWYd6MIXiXnK8rk/FrKRzzou4d7hti5Dd
         QWcWHwl48Ob20VzieOeDXS9jfmOm2QF47197IazFgfZlOXDq1R/S2OniF0CgjMqWBL1B
         /vvNoCsE3D+JVTQRLGcizAFOOVryhLZTiu0ME4dbse0x6YaWKNJg/kc5ldNQlzGdc1kW
         6XK7Hcxw6gx1SNw3FP6V3xAtrxf8Q83LL/RysV1vZ/SFLXxaRKtcWMhM2FnIhKBB9YWH
         P64g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mgUmwHMF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TcN4sCKTMNgnjTkoB1CAmg7v2ZIJRQ8ugPfowqUYObU=;
        b=AFvTGI7sWFvEbHds5OnYP06EglXBBZNCUJklXt0qDBnIPhk0BfE7zW+bJ5k6QsqsxS
         yztUi4W5+N+1Kp2CSn4kwXC1HCLeO0d55OYYi/gPlUAqU0OOsZ/0lUD6DdYUfHhpQUAQ
         EzvBEB6IUMaGBbPHH7vq8gWVlktEGrofEzGzKjF2R7mhKTGs8jQGc1k1Y0BIKaWQJvR2
         QopvkHaFRUCU99xmePSvhbiOs+dVk8kt32lu6Ax6wXh/GZaWS30ZbirEiuSlejyhkIlj
         9BQ38oZsRR9UrRYG10Bs1rwsdT9qyzCuN1nMJdtMqgkLfbxChRnVoX2HUpMDIXaqaSmz
         4hsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TcN4sCKTMNgnjTkoB1CAmg7v2ZIJRQ8ugPfowqUYObU=;
        b=qXO1lgQT6uDWXbkbTIo7U+34ZgKHjsEWJE6eBHKqX8deVt8uGSG80vgCYYH31eiLUJ
         lS5di+GFg5GekODbc1TqQTfwj72sg+/iK0W7vX+RfysrrXMEds4OF0g7BWGi6Vu2wQFv
         ZogQ9+fHKRrmirxrdhGTewf0vkfCwKbl/bLi3Eowc7ZX4UjpOrQJDIUr4jonxHsLVg0I
         LsNxIdFcgh6dBUIfkdnPeapI0oSsxopt9LE/ctqtSvzIytU0xaV6ROHtQTYwqQT30S9S
         MfiF6A+Q/CrZ0VaW9D9hbNEAAt9hNpXZdkpOMzkToZrE8pVv7/9O/hZWHI19c6B7zK0q
         5WEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3NyfLgRtpgzI1HVnboTLUmvCKs6+dZVixoSBsoYvjEPykZTR7
	DG2HJYkSIDo+b49Ar+vkzzI=
X-Google-Smtp-Source: APXvYqxHJ664vg5VuHB8F0tRSO+aumdy4GyAmAp/M6aQjB6nW9G3BJ58retsbMUKvPM8fWGpNPf9ag==
X-Received: by 2002:aed:2a75:: with SMTP id k50mr432709qtf.346.1573610261557;
        Tue, 12 Nov 2019 17:57:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:341d:: with SMTP id u29ls240482qtb.2.gmail; Tue, 12 Nov
 2019 17:57:41 -0800 (PST)
X-Received: by 2002:aed:3f2e:: with SMTP id p43mr431950qtf.338.1573610261278;
        Tue, 12 Nov 2019 17:57:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610261; cv=none;
        d=google.com; s=arc-20160816;
        b=X0OOsfsBF0G4uPNfoKMFPWEZ9yicpqlvDs+ZFPrBivC8lGiARCluMeJRq+JMuZJ0k4
         IRO5rmZfPNjlqaK4cY7hNmgBlHGwNZruVV9MUnoOS4lx3mDtzpqRykuGIXnXhG0K5zxH
         Hb+wDiw7m1Adl7nNb+GRln27c8I534UKlBp+M9t7+aKDHo9HdUkD054RJCMV+fgoVe2P
         31/Qb6nQDupD76Im4p3IyWCbGDeP5aGG2zqsV2xHWgifWUXhsOZgeHSKL/+u7o4yc0P4
         aucXiUUAPTgaLgdixpTmQgUZMyg3K9Yp6j6Ny2XZ7/uKBATTEzD+s+4Ygvbul1GCz0d8
         2Wcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=xwTSTY1rmoLu9VYf7Yd7eqsZpy/t1CbJfY7FGPCp+Kg=;
        b=sRlnbq4IOWEkHpgLcrxxzS3Yh8sQ2BL6FQ2FWoKRul+AMs9OjiT/zpheAqtUutQsEk
         dMOL+GIYqQwMu6rkeBYcg1wQREaUrV7pq9bTR8GP1UUjTuCh9aRvMpIwHjCpCx7LywTV
         PZgXkvS5tO6tOjqmziSTozFfwoAwM1bXGYH+tp72o+rSZggEIiBFi1RDevFYKs9Sjkq2
         mfWsfViOLSMgbYuxbbyuM1OlJsl//YAZ6BQ+9UAabKkdavwhrLSKhOqibIcq7fGLfwap
         L884gew/X0lvIVk47ojrNdrBuiKxX/96rO6CBSOiolxZr6cOfdv3xd5Cl32NEWSgtPKz
         4yYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mgUmwHMF;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a189si46726qkb.4.2019.11.12.17.57.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:57:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 414082245A;
	Wed, 13 Nov 2019 01:57:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Hans Verkuil <hans.verkuil@cisco.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 052/115] media: pxa_camera: Fix check for pdev->dev.of_node
Date: Tue, 12 Nov 2019 20:55:19 -0500
Message-Id: <20191113015622.11592-52-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015622.11592-1-sashal@kernel.org>
References: <20191113015622.11592-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mgUmwHMF;       spf=pass
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

[ Upstream commit 44d7f1a77d8c84f8e42789b5475b74ae0e6d4758 ]

Clang warns that the address of a pointer will always evaluated as true
in a boolean context.

drivers/media/platform/pxa_camera.c:2400:17: warning: address of
'pdev->dev.of_node' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (&pdev->dev.of_node && !pcdev->pdata) {
             ~~~~~~~~~~^~~~~~~ ~~
1 warning generated.

Judging from the rest of the kernel, it seems like this was an error and
just the value of of_node should be checked rather than the address.

Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Hans Verkuil <hans.verkuil@cisco.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/media/platform/pxa_camera.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/pxa_camera.c b/drivers/media/platform/pxa_camera.c
index edca993c2b1f0..d270a23299cc7 100644
--- a/drivers/media/platform/pxa_camera.c
+++ b/drivers/media/platform/pxa_camera.c
@@ -2374,7 +2374,7 @@ static int pxa_camera_probe(struct platform_device *pdev)
 	pcdev->res = res;
 
 	pcdev->pdata = pdev->dev.platform_data;
-	if (&pdev->dev.of_node && !pcdev->pdata) {
+	if (pdev->dev.of_node && !pcdev->pdata) {
 		err = pxa_camera_pdata_from_dt(&pdev->dev, pcdev, &pcdev->asd);
 	} else {
 		pcdev->platform_flags = pcdev->pdata->flags;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015622.11592-52-sashal%40kernel.org.
