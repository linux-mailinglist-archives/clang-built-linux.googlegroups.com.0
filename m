Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBEGI3X6AKGQEB3ZSONI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C4CA299D1D
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:04:34 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id b139sf231698pfb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:04:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603757073; cv=pass;
        d=google.com; s=arc-20160816;
        b=DltupEsIAmIkbjnZ8BjhOo8Ue3OCSQF9EkgE9Ok9F7DVubZGaG7c52f8fSy4kFMS9g
         TKrLOS70J8zj3ZMT4oRz8qI/LtF/6XGW9g/j+lEjkTC2Ratq5Hn7ajXbRMiZCIVe//Vh
         JcgZN206DxXtvxLpJYyCUEfPHKDeIRR3q3k5MNywIqQ/zPbGTLeXRkBcA973mjPMFYYo
         UCvKfHtucznZHhyh8g0FK/atID6lSgWVQda8EVFuiUDeTiESVfeUHlASxAz/iRdu/YAI
         RANGN5TvBGLcerJn9Z6Pe23yYioeMsbMMGr3vWnrCoA/3o6OpU45geWjkcTWoUCpdfet
         Z5Hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cxuvmoTfxQnkFawwqhDacDY5OnRnHbOHvyYeBqsbeC0=;
        b=xunJcOP32wFzr+xABWfpP3dKHDU5Fm/GgyfMGnxGOK692BgdFL/sRRuVYcubov6oZA
         +S9zXLVZnqJaHrBug5NwIXgZBDbh6vP6P0Z/ZDyMkdHP5Hsxll3p4CZdEEv1SuO1hbqU
         w2V6gOOn9CBm65nhbqgUGgfsEfyVtMjuZe7XCzEA1bAyLpWOLFHTE8VFNFJjyf98Jrcd
         0q9Cq9E8JfOhVhvd/p9y1No76rQbc8HI7fIqG80kHiRcUHVljHorrM7XnuEc/BN7w5dQ
         D1eRSF3W0QT55lCgh4jfZ6hKaoNGgYlkxOaLjbOumEMsuHBQOMHnG6MIBuT/O+384O1k
         8jTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fQHqMgh9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxuvmoTfxQnkFawwqhDacDY5OnRnHbOHvyYeBqsbeC0=;
        b=dg6DnbX5zLz1Dnu7CDcqVdXobQWZ7ep+dpi84zNFZaEZNeN2jHZEeLUhKzzbv/HhO+
         fqokp4gfxyHi4EtkQVHWMMoJHp6fcQmfIBlsI/qYzkCPpe8UzWkMTo2XerKTwtVmpBlz
         D2mB4Z0KRKE51pJ5NDmbys+6ue0XaFeBJMmuGH+Ze/QMIM0BAJXyqGqcdnaJT4UiI9Km
         wsPJqJBO3aNGMRfBapSfwYRd56D2d8D5M6TR/KB6E957/nPmiy5z6tSCSE8QztT4o8uH
         RtBEijSyZUIQtTOCaQhFe74cM8tvX0gNB59GZyF6j33bj1jWcamGXihmoq91ncb447v1
         S3+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cxuvmoTfxQnkFawwqhDacDY5OnRnHbOHvyYeBqsbeC0=;
        b=VBMJ1W6wlNvlzCdpQgYGTOsU1IbZ6wKSGfNdkZXHurGKVQ9iGGTLqC6il1uBMMbBsY
         dkfXMH2agXEmyocTsZPHrIsfR/63xcmhnn901lBxz9mH5rnnJKq+o/giLBVuVSZ1csW5
         owGOziljU/d/fGAvuv77TCGafgwjHFOD51CY/vwduB9pdt6BuBHoqgX82QkoUVbCWkmg
         jn4i8A2IpddmSPMGVxLgujWBAmiKlkEydSo3ym59q4PIqilOVNztlFU6zF3oyD82f9Wx
         tDYUJz1IoScycAQnn9Al0R+Ovsa4fpUu9l9PlaUCYNibIvPAMq4+dP2BipQ+9VgIWARk
         ipdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UQFK667WqvAUJMmev16xikfrxWld4Du7oMWJM4N5ZnzTwCZ+J
	/koVqIkT6RLi/L1YcztALv0=
X-Google-Smtp-Source: ABdhPJymNSQe4WPZxw1rPOKELgcjJKwp8kDIj/6YFJuq+q3LLv0bz2o6rGbnrrGvfS6b1Z9MrrV5XA==
X-Received: by 2002:a17:902:b68d:b029:d3:e6e4:3d99 with SMTP id c13-20020a170902b68db02900d3e6e43d99mr98590pls.62.1603757072844;
        Mon, 26 Oct 2020 17:04:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b093:: with SMTP id p19ls5110201plr.2.gmail; Mon, 26
 Oct 2020 17:04:32 -0700 (PDT)
X-Received: by 2002:a17:90a:c293:: with SMTP id f19mr23626477pjt.2.1603757071199;
        Mon, 26 Oct 2020 17:04:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603757071; cv=none;
        d=google.com; s=arc-20160816;
        b=tInqSihZ2ktyVzfB/m0nNMinLL4X6iQ5eLElnQN+wnktiki9aZ3Uwx1Z/ietf3CBdY
         jsrPZT9Owvvx5rz3sbU3hqvg4Y6AzeCXVdTxCe1vIn5Xs6sfZ6+aftC5WMqVuMwdHFfP
         AEKOaR3aEjwFcaN4EnGt9Rc0rI2DLiStvwDMn/BBlz5kLqSwcg/HHf+5jrvV8cxNSWx6
         KX6QU2npB+JPT1mnpnqXoa4mduqiv4vmTu7m/34YLY7ImyLHjgZkGH+44x+t44PiUyME
         Jz+BOHhDHytu1wYyyfKPdlmedc8xgdUqexiFqWrk+1y3buyIZ27kTQgkrNS0fmbo9ufx
         hGQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ABHZ8ldTTRomMSdlxR9K7lVVvQu3qNQWdtH4OYjYEYI=;
        b=nS3WGGZgN2FvyitFsyR5A54wkB6tuq0XFzpgpTWwndkHAbAPDfvXT8EWbCwaxQZR4B
         s8iIUS7L6MFl7RUZ1umfWJLnHAnwAjFX3xnZ4qbFjXMPHlSh/cAxinxMq0mA4MBnjzWm
         g2G3xpgngT+UTrHfOARmy3TuQ8DrivJBl8JJCnZQPP2m1Pmliabl1NOyykpQz5El+DSI
         /QS8t/t+gLUK3TQMJc86C6TzRfGNzjtMK5yxYqvDt4jIykKU/WcC5vuySyxiwSOkLBRa
         HkmirLWHfFN6aAaKTMFYQ8JZl0oMNx9YP/H1dD4qjhv6F7ZNNu2XmJIUG7v4NFxiZ+zb
         XYMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=fQHqMgh9;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t13si652216ply.2.2020.10.26.17.04.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:04:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF80121707;
	Tue, 27 Oct 2020 00:04:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Sam Ravnborg <sam@ravnborg.org>,
	Sasha Levin <sashal@kernel.org>,
	dri-devel@lists.freedesktop.org,
	linux-fbdev@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 12/60] video: fbdev: pvr2fb: initialize variables
Date: Mon, 26 Oct 2020 20:03:27 -0400
Message-Id: <20201027000415.1026364-12-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027000415.1026364-1-sashal@kernel.org>
References: <20201027000415.1026364-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=fQHqMgh9;       spf=pass
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

[ Upstream commit 8e1ba47c60bcd325fdd097cd76054639155e5d2e ]

clang static analysis reports this repesentative error

pvr2fb.c:1049:2: warning: 1st function call argument
  is an uninitialized value [core.CallAndMessage]
        if (*cable_arg)
        ^~~~~~~~~~~~~~~

Problem is that cable_arg depends on the input loop to
set the cable_arg[0].  If it does not, then some random
value from the stack is used.

A similar problem exists for output_arg.

So initialize cable_arg and output_arg.

Signed-off-by: Tom Rix <trix@redhat.com>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Link: https://patchwork.freedesktop.org/patch/msgid/20200720191845.20115-1-trix@redhat.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/video/fbdev/pvr2fb.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/fbdev/pvr2fb.c b/drivers/video/fbdev/pvr2fb.c
index 8a53d1de611d5..3fd2cb4cdfa90 100644
--- a/drivers/video/fbdev/pvr2fb.c
+++ b/drivers/video/fbdev/pvr2fb.c
@@ -1027,6 +1027,8 @@ static int __init pvr2fb_setup(char *options)
 	if (!options || !*options)
 		return 0;
 
+	cable_arg[0] = output_arg[0] = 0;
+
 	while ((this_opt = strsep(&options, ","))) {
 		if (!*this_opt)
 			continue;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027000415.1026364-12-sashal%40kernel.org.
