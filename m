Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBZODVXXAKGQEMOOUG3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B407FA0C5
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Nov 2019 02:52:39 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id e13sf321648pff.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Nov 2019 17:52:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573609958; cv=pass;
        d=google.com; s=arc-20160816;
        b=zKkm/eiYkVSsBxHzhDQ7xCe//Hxn0H1dg6vWk4dD9d2lNMHjdVlRbTR7pn+cIiRAQN
         buOJLMXM/FrSMHei0AWJDo/6u+UAhUN0d8IXtOWhNSX3z0kuYqhEAeFEam1L4xdl440j
         5V+4oO9wr7ENCjgRAEnmGfttbSOiH/vZTuuYFuTJ/nlErpQlSfsoifDX8dI+8yz09WIN
         JS315Jz3afHta2WPNU822RrfjFViuv0zK+thIGL6hzFWsIIS6n74SMv4G5sNJ7kNg8i+
         5B1gbwaqNuzrwY6e3PjOqYER9R7pddXZjVWDOdzgYIclx0eTNZrke8gNFa6OEJsFsYyH
         jtfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KuK1XxacdifQtoahxcFZz4jgZaAT0uAVhXGbadc1FCA=;
        b=ebjuKqC4ztqOYemBiKzYqpXnN6lOfdDdWP0BXGgsjEklJQXhboKEFSMqTADpCJdytR
         CeuLDlnk1Js3tMSgHEJ9K1TSJ/upiCHtWfw9V4CJXtEyy+mHnZPkhdsHPxaL75xM4nMn
         iDWPpVWuX57N866sFGsCOgyEIiDT9g5Uh7rgtg4xSUqz+vHd/QLbj1/STqcASFPyxN3z
         gqCNEtjuooLoTMdwD5VhElfb6L6FvJPwzsxl8AGMgvnSdSiTFHkJnvhU8MiNm4V+nghE
         urCCH/ZNoDbdse77KmqLtRI4vvKUCzS9E1DQcyDbOLLhA91J5W4ndfXgASvmxDs/+JIU
         OXbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="c7iJgZ/4";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KuK1XxacdifQtoahxcFZz4jgZaAT0uAVhXGbadc1FCA=;
        b=jd9h3987Fc6tdGJ74wnXs+bdcI3tfFRpUseWsf6BgYRAzA1Rd5U5w8GpGMiKssDy3f
         x6LT7LHVkoF53aK/PI8TBewGUH+MOjAlOzZ/T3suC+2i+wM/wn7URvqwU4aWD/leEyD3
         YURMPyGD4DSNO57XJ4j0u3hCZz0FROufhMfdM1O/rJh8eubChpBs9VqHHxkcRvgRCqJn
         roLR2XFdci+I1THQCElZSY1MJ1iZwfEzLGkNx2dookEVWr+VUOM4NUYqgFh3eKlmsE/T
         twH56qfbG708XpKgX369l0grUEsiVJaNy1AzBbM2WRCtWAXy9GPHFwVou5AkBRxhuDvh
         e+Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KuK1XxacdifQtoahxcFZz4jgZaAT0uAVhXGbadc1FCA=;
        b=LwpMevIzO793h6XfEWJDHWH7XiiWGwYgFXPSd48Q7LNuIRQ32cyuJXY/IGgUUT7nKK
         5YX7Eg9Swp9jkcmrJqCPz1/VWw9oyz/sBwXuQ/1ODaL4IbuocPxkGV2/UfATG9Mmx4hg
         +La/exkQraaSmUxdVM9rrDMNfIz/zFxK5zr7uJTdm7P/c2A9hDC/WG2VbHcclIy5pSEc
         T0BNcJ/w80gaZEfpetQH95CMu17HX1Y4BQd4ve8LjczxnH7kJiR+lhUztQlBsvt8PXyH
         EoLy0lY7nX57woezlDNB6fP4HeA2UpnKWTMB2bgt/fawSaMJCqSfgDJeLbn0GN4nnQWQ
         ImGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWysuFI0lUC7GcUNQD1iz8PFYKkIXIaTJs+DWG+SUSZlD0VTZbE
	cqHdjCtgvZ3KrNz5tiOd9l8=
X-Google-Smtp-Source: APXvYqwUFVMZAmIfEvoR1U2TfEBir7MgUPCSe7yq5NQyyY0A6veZiI6YHWgDG87iVmxcqY6E962xww==
X-Received: by 2002:a63:f441:: with SMTP id p1mr709567pgk.362.1573609958019;
        Tue, 12 Nov 2019 17:52:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7888:: with SMTP id q8ls159519pll.6.gmail; Tue, 12
 Nov 2019 17:52:37 -0800 (PST)
X-Received: by 2002:a17:902:ab8b:: with SMTP id f11mr1040780plr.16.1573609957618;
        Tue, 12 Nov 2019 17:52:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573609957; cv=none;
        d=google.com; s=arc-20160816;
        b=Q7NSBX8V8KHVNvfZv24bqeQB6YLe3B2Jl41Slj2zXISozbtsamvwuLY8GFiZgt7mVN
         joixZzw9P0SLt4RIMSeUeA3rLEXehHUhPzF+NldTblFmMu6GEDmFshi6Zkq80AEpFlP2
         3cN1qIH8Kyal3ujPjy7EMG4OyQvZtJ0VfFvQGxlaCEdDJESYhacvOc5iAryFgi0iG1qi
         pS+DX5fbUas5HrxUPBUqkBPhO69BhkCy/zVrGi7AOWUEEJYsCIIpdfUrWiKyvTc30wwh
         gzzQuasNIGGj5Rgjbr/vkgSAGTZSH+kqIWk0Nvi5NAuyYfBZC67RvAKLmxTLu517ZB3B
         ubyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PlJkGdb65hTPKPxhjjxX4fRThTjpKmYeB0SCrHXM0Wc=;
        b=rVdIp4O9h/VVYGnnyPgXdqPNjNVfvF770wqeYCncKF54b+BSJ5WgI2nQD0TXL/yego
         KGHYGbE7mWePtfK0yLL6+A/YwrHKoNBtb2VcLBvDZeR1j561uANIZEgQIfm68rWkl9g+
         QwuMUDmJlm/iewloM5WHI1BTZt+dTxIDK/RYJlcSh8vGafU4elUPUiIrqNf3iCszWFIs
         FYQoEIPWnlfOJcR2JVy/Ihb8DufDBgZ0hw/f3GLuJ+0a+BxhjQW+vKSL/x6nrVUex9lf
         4kl7Y9MgT2UzyrTivYfxgcqsWDv8hAoKHu8Bkx6xPNapKSahBFINxJPqnapJMFXypBky
         hQgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="c7iJgZ/4";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g15si20180plq.0.2019.11.12.17.52.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:52:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 69722222D4;
	Wed, 13 Nov 2019 01:52:36 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 090/209] media: pxa_camera: Fix check for pdev->dev.of_node
Date: Tue, 12 Nov 2019 20:48:26 -0500
Message-Id: <20191113015025.9685-90-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113015025.9685-1-sashal@kernel.org>
References: <20191113015025.9685-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="c7iJgZ/4";       spf=pass
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
index b6e9e93bde7a8..406ac673ad84c 100644
--- a/drivers/media/platform/pxa_camera.c
+++ b/drivers/media/platform/pxa_camera.c
@@ -2397,7 +2397,7 @@ static int pxa_camera_probe(struct platform_device *pdev)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191113015025.9685-90-sashal%40kernel.org.
