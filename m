Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBMOHVXXAKGQE5SNN5QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A2F1FA1B3
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 03:00:18 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id d144sf492969qke.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 18:00:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573610417; cv=pass;
        d=google.com; s=arc-20160816;
        b=QPcNjpz0vTfVgO7+VkKWIix19oXjLpE6R6cnXTbpyArIf+jI2xjN4hHmVCj3CvQg/t
         ZKiu1T8OXzoebimvJWZ+e8KGbgHygVkcZ6ThnhvB0UQoenMwOACxDc5cTDb3YUkUzJSC
         Lj4b4CtuZz8yhlafjuZGdvDPJVZEgLvb1yuS0SZczkF/Q0rRgbXYo6QWgxWuiT3VuRNv
         VFsnNRH5xsLas94KITTrFc+6wvitnGLuQjupUk2575psItprOAKkndWcIaSkmJJMo0M8
         i7pSiy64rLYkAspDPcp+RwAzW2vftoZIRac3y1tnW6hqZnhshW65Etuc9K9HTTKn/EAq
         Jshw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5MDgh3TpF3IuKDOfUF1cG2jkDkf0Rj2nK03nqbFWKVg=;
        b=XQvY6v2TiCaqm5AQxZqrKeBlC3opQw94BwKaokHmjpbxFvBQMcezqBWwfPxyNPsS7i
         9o4DVtcpA+/p3jGVv7Yn6RKwEtB1wrdpzOIPe1VjjE9oZ27RdwHepKmLd6qTP2T//VSz
         enKE2FZIMGT3E/slgcOTMQbPYv4xCoweOj7XZqVcm7aXNpWTwEzCJIkM16Oyedo7NL1m
         BohqYgVOODkK03QQmRknH3pkQDni2wdOq1xwg8dLthI+KVEJCLRCtG0VhYJxNcHgiI74
         o5McP775AkzTeA8PKblvE4sg8R3TQj9vk7Ovxss09SEZdC+00ZO6N++fngTxdAvYQL8b
         EGcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Up4va7JQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5MDgh3TpF3IuKDOfUF1cG2jkDkf0Rj2nK03nqbFWKVg=;
        b=XOJjkifM2AUGlpyDV8eOyfAdTavgq/nfdkF8R9+5QOhVdAgJb1pxWg0qniXLB5efrJ
         sXfi3lt/wqkEsv2x988Z4Ph+uTa0T39LZn1VTefL9h1j8HnIw2XRtPrUfd1y8AOiJ+Cf
         vW8mqtk7Ax6JJqMgkBBlhGJiDk64D+UpUuYzsQrtgDH5Z2r7YIClDe4NT+P2K18smyF8
         0N1EuS0HcvZu9NJcJJqly7f6EnxKItbtk3n1ICRKbTafPkU7OF+d/jwqDWeQXvQ4wjVy
         1/YIePh251lETp2s/wks+/9Xe/B4HdxvtGGxx2r/AmuRdM8AtuNnaBHIsdg4KhCA7Fc9
         nCvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5MDgh3TpF3IuKDOfUF1cG2jkDkf0Rj2nK03nqbFWKVg=;
        b=Uuu0qcdHpelCWGbYPA3LJVwULi+hORZkfBcfUNQIe8QQYQ+DXe7h2DOcTjuJ1q6HVq
         HdObXydK5aAGm5lbVXrnZZKpfteR8MZQ8EAVrnn9SA0hS5aRLHWD+a2rDiJglEfhXzsV
         z/TkdOIrEEpwYNPB/66mQombX2+hMiItjB0dO4hVRP8WdFzZVEyPUBwfn5ZQy8lKsO71
         +xLLJUUZ5fXMI+p+E1Bxgmh+bxrkALGz9uJeWQH5VBCHkZJQcJGOntHnKjH+RoPZl2eb
         i78GeFDtDgiVnVnzOwhZlR8j809QxtLl58thYU4a/Uco9W+Kw5DZ7MNnfpG8MSKef/IT
         AZXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUIEYeejulNiMAMEneB+7EcxMLmxmVeLg0qSnRlLD6pABS89kyK
	knmYRYWWJBSePMmtRpVkTF4=
X-Google-Smtp-Source: APXvYqwzcSJV4d6GXD5g41GVcHsZLvus1y9jKEQxH/t4r3xOQA3/upiFXqt7LhBVt3fiB8+HNIDRZA==
X-Received: by 2002:a37:4884:: with SMTP id v126mr491130qka.45.1573610417386;
        Tue, 12 Nov 2019 18:00:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3014:: with SMTP id f20ls239754qte.4.gmail; Tue, 12 Nov
 2019 18:00:17 -0800 (PST)
X-Received: by 2002:ac8:7186:: with SMTP id w6mr442869qto.220.1573610417055;
        Tue, 12 Nov 2019 18:00:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573610417; cv=none;
        d=google.com; s=arc-20160816;
        b=IdK0dzBefw7aHYhTSI8N4W9a/dkKeI9riOhUA2/Ra3SrUEbXH8udxIbUuG3FnjqmH3
         NpAWu3gHj+pPcHvghHtEMUCdtZoADVUekTH+arWANKz1cmqFCZ3PJGD/gO34tzSj6hd7
         dtYPB07udv0Xms8mw8jnR9RywsVpK9ddO7llBLRClgXQzKchZ+uUaHerHxnThkdJZzzf
         t+gx7Zfi3bfqlRy7vM2ja7+xhWQm5CX8EiTGxeT7R2jmgmKIYJImMb/gh0pxaDw2uAon
         MxXC3C6sTtPL6FBy1QI+fVs4CD3wh0M0XNTD/DVz7OaoBjs/Pcf51umBjY5cSx/jajtT
         fvCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4KD2h7QbavU0t3bYWMXgF/lCWd1hWy3l5kGdNX96w9w=;
        b=RdWLZbdLDZFIUeF5HLXafax3RFQTnxy+yQGB8AJRwQxrjHfvboFBZobvDs8DRdfm7U
         ijPSkdpJuXIUuLYZaseeX7lgsMNrZ07tbF6FVARkMqHghwge7+Dz1dhvMQdhs1Dx9q++
         Y98kJVhVuWntmgtn7buRZM4A85PKDNmOdE8tFWmcV0JgSiZeXzGh4Lp+J5fmOzZEYpno
         gDRcHb+EEZ2LlzVQEWxTnjLbcvkboDIvUqrDf7vJSyhM5c38gUdcq4mDkhxjXecP2X+w
         voyXRg1gXpWlQeYX4fLbOu0DsK9yiIdyc2osmX4Zfy0QVxmULmdtjLDGgI0BDhvO3Wgw
         k47g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Up4va7JQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j40si50387qtj.4.2019.11.12.18.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 18:00:16 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F18982245A;
	Wed, 13 Nov 2019 02:00:14 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 27/68] media: pxa_camera: Fix check for pdev->dev.of_node
Date: Tue, 12 Nov 2019 20:58:51 -0500
Message-Id: <20191113015932.12655-27-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015932.12655-1-sashal@kernel.org>
References: <20191113015932.12655-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Up4va7JQ;       spf=pass
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
index 390d708c807a0..3fab9f776afa7 100644
--- a/drivers/media/platform/pxa_camera.c
+++ b/drivers/media/platform/pxa_camera.c
@@ -2334,7 +2334,7 @@ static int pxa_camera_probe(struct platform_device *pdev)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015932.12655-27-sashal%40kernel.org.
