Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBHOB3X6AKGQETGGUBTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E812299B20
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 00:49:51 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id e3sf6397704oig.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 16:49:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603756190; cv=pass;
        d=google.com; s=arc-20160816;
        b=QoID+hD2LUhKW60yLavudpc5BGOcTGqaI2ZBL+Ctr7EMPrrEehqKzEvDVFgRZ063Gt
         +zTbiPHmwlU07nV9BqtVNz0he5614w2O66vxuSPJP1Kf/BcEAs/jd+0oCp3pgdppearR
         xzGladB14IYa0tXL3M574oFn5shaWpO3dfarx27Qowx4Vj7rmBz2wpmi7aI+c9Nf3mq0
         Zj7QgwpjxLzy/xufay8k+aKwWB6Fw542+wWlM00oumVAxhEcvQkxgiZ+mXOL3KsENtKo
         F3WD+VoXPsp/sO74by5fVwzC++2HAOPU854sXTNBk7W5osaovP3mC4GdhgVRCQaY9jmJ
         LxJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nRUvxF+Xv/KYpwAU+OZIBRs5bWUvmDQlN9RVxBTsflU=;
        b=hOQJAt9zrmwik7zDn8qqD1bB1tHjFu+yNYD7hUsJKkRBQS2WZzM43s9YzRDduUUN+/
         22LWlY4ZQ6JUFJxjH/AtcgBqZiXqXLPYjjf2RWNQsPWOhjazk104rQQ4pdgSGwFfUmqm
         DNW/oTtXkhIIILgvUFWl+MJONYAnn9aGCQXPCbCftP1iJlsl11UNBl0Dos23wfRPh+Qb
         O3VRM3hIzrgjfYRRmb1aFJ/YIxhKNE3Qrj4aiwq/jVKithZKNTnFy6HaXhXW5S2VJh5y
         Ffxb4C2kCWrSm7JT88N8+G7CmQeJihabd8rWiwzn7t/pR/V1xg8eVsEAV5CSBTeBYwZZ
         CeFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XVxJQetI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nRUvxF+Xv/KYpwAU+OZIBRs5bWUvmDQlN9RVxBTsflU=;
        b=VYjv0hOvNCgcqKAMfqPEinXqMaNVGw3CGSQ0ER733E6vW8KvnsqVRE9/QwBmPz0E3x
         BA7zzjXGc+hDYrnWafsWSB0A6ZRK/GdyCvEC5ieUy8GUOf6MY4QUBunMtBj/MP1WRCkZ
         coDGpgida3hfG/0aaegon8zzLxrmtQIgOS2nWz7yG/tuYcBito9kjX5S17zzWtJC/BN2
         5MG4zctyxsweK0kd0781E0E/d9FPKTYvPQZ3v8oh45v5JNkoUwjv89fNBa8fkBmxvP8W
         inNYqZ+HOWDyB//bPP8X7vyUifg7aIGCh1k6bpI/JX53l4EoWj6YFYn4A0yg9M3UR3W9
         JfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nRUvxF+Xv/KYpwAU+OZIBRs5bWUvmDQlN9RVxBTsflU=;
        b=VrxkXiVABDMYoQYE1Mbu9dtQ8ss0wkzBsY65EG9qLRRVbWamp9YFcgv5e69DNrYUQh
         9SGDDwd4xDp2i/Lezc3pbYAtKpMErY3E/CPT7ttOpFvyZB3sbQDiZXQ3AXcgzQleQOPI
         2+mHRK71+9cVUM6sUs5Y8dwdILKameFqfv3xN79qCz8v8fFhmYKNACjyl+fu2iWAPd8l
         seFh4aowZXyilWpRCf4IUnAuYDL6HYYr+qHDpaV8Dum3cY1yNCrKXOnh8JJmSmkaKuGV
         VgL1tSGsSBLM9NMGbVvgQCgj4CJG1pDcE3DfuJFIhFjfOahrj9kNjic3XLcFo8acXFDN
         EgWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jNPKr67wVEmTw9sZ74h46GnTEfBj8knjSzeL2bgmNbUrDYI/I
	5RBFF4zKyBrjbXJNroqkMuk=
X-Google-Smtp-Source: ABdhPJyRUMdc4l6jSVGSp4C6xTIbGpqwBDPdQhpVBUJ5f/M8Z42nuyQa6UXRfvaIedye1EcXnXIeIg==
X-Received: by 2002:a4a:ea81:: with SMTP id r1mr16995035ooh.16.1603756189704;
        Mon, 26 Oct 2020 16:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d0e:: with SMTP id v14ls757015otn.10.gmail; Mon, 26 Oct
 2020 16:49:49 -0700 (PDT)
X-Received: by 2002:a9d:1d1:: with SMTP id e75mr17111874ote.266.1603756189350;
        Mon, 26 Oct 2020 16:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603756189; cv=none;
        d=google.com; s=arc-20160816;
        b=r2YAX/eEP2oajua85jYvxok0FyMkImHCqv813zl5gsSKdvlaEmBsNQ1iIxsirUwS6F
         yvRThNZU4fYCB0L4Z1JppykhAfrKEmVcgVFnGv94rfMBwUoYoleQRC9p023XTeTmNb36
         DPJ3Vntwgfl7uvZWNk51gCJng+7vAkqr5HGb+uri3Ja3UzalEqOxAaesWTWqQE9uigF0
         YI55qUnj3Wh68H3hTKJ5rV8+ycOxmDjqvOSw23TFk5sZZokfD8/MPBjYo0vVcUq5TgSB
         u0FIqwd8YczaeG6i7Ikmhmp9sCVI9fA58GFttJDrJxmp0TXiVn5eWPCldydKJESItB13
         N3rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RS7LGBcdhBLAUz7cEDroJEIERTkMNVs6B6EG3/7TrFg=;
        b=wwg6aHWWwqqeENafipV+vN/Wv9lUAyeGZAv7ntW+YOaj/M1kQPYB2etr+zntlvQAFL
         R1m02ygMH9kdSvww0YHSNv4LqlKwEkavXhtC3+Vgd4sk+60CkmACIHUwC/WFQdSSJkgc
         XSMG8HyKRKkPMDEIQI7QPvrYQCEJfVp7vFq01U1qF9lEZ8P1zOl3SyCyBWW6sEaUbzMA
         6qsgWoPIVGX/E0m7/ycyS3v3tTuyy4BXe9fQGIqcNuJyChTVMdFzZ3g1FNlZ5aQGstrK
         J+Y8xcpXp3DKhPiluEtIR79P4NBEL4h4Nn/maXnxVJIeuv6gxanyemWo+Tzea3Xr10vk
         zOrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XVxJQetI;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si613609oih.1.2020.10.26.16.49.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 16:49:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 87AC9222D9;
	Mon, 26 Oct 2020 23:49:47 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.9 034/147] video: fbdev: pvr2fb: initialize variables
Date: Mon, 26 Oct 2020 19:47:12 -0400
Message-Id: <20201026234905.1022767-34-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201026234905.1022767-1-sashal@kernel.org>
References: <20201026234905.1022767-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XVxJQetI;       spf=pass
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
index 2d9f69b93392a..f4add36cb5f4d 100644
--- a/drivers/video/fbdev/pvr2fb.c
+++ b/drivers/video/fbdev/pvr2fb.c
@@ -1028,6 +1028,8 @@ static int __init pvr2fb_setup(char *options)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201026234905.1022767-34-sashal%40kernel.org.
