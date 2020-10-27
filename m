Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBGGI3X6AKGQEJJ5XXUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C97299D23
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:04:41 +0100 (CET)
Received: by mail-pj1-x103a.google.com with SMTP id v10sf3755370pjk.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:04:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603757080; cv=pass;
        d=google.com; s=arc-20160816;
        b=O+6n5EQSteY1AIyupGbpavgRtFYiBVNWOlu8kJTWpXmNl3FvVx72DGz0o8BH3wy1dy
         4/JrREnfVJJskqhS2xnx8EEYr3+MbfxZlt8084zgJp1oPW0WMTyj+0pTL4RK86D7rxOm
         L1Kl5cZi68+OT6wl+Ghy6qkOcv/V52IdYhaQMJctzl0Blv9aKrprJvW+7QaxL7M/VBn6
         Sch5S+JmWbC6WW71tUCswxSdkFtBxsm/grpukfcwMaWfi3O2Uz/XXT5BAYin2LSTsOeO
         01XBlxDsc22+ahHvJuVh3BbCdjyO4t4nkjOQHDYBnwu3SWXHVZohyRr61pk01cM3StUK
         Wvrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ExXfojo1TBozrKtiTdpXkDzWW8vMrgdxasXfwNPwEg8=;
        b=EQdBnO9URPyH+KpWmCXQ8vY0xMjlL11tzs8kTYEKoxQw6gRLZxuUbzhJjPhI0FzkBH
         /IXfCcvCQ8BZLdcyDh7Fs0vDg5j8Wv+fyU1cLuXCAE2rTggYkboD7MiyTFMbXUWYxECk
         IHNQ6MGfZqYhDW4ZmqFoY+ai4aL5gG9BepU8LSYP66OWJN8lEz+ow+zfcFHYbx/v0j0r
         9udc9Lnyv1qWvio+yufAoKh9KkLshtlNQX3xXTHQ9HLgpbG87aOejDSqeVrGa0eodSex
         xY/OEJdITBdI6TbbhnKpwrgM2Hgxx6wahOdnmVceCZRENTuROsQQsjZXyby0VuwtpBZ8
         PvAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="uSSPA8V/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ExXfojo1TBozrKtiTdpXkDzWW8vMrgdxasXfwNPwEg8=;
        b=l0sWZETr4WyqRE4+mj5oUxSgNRCT/W9cKJ0azwqyDCHh3s6PefzfciG5EJgJqAuLiu
         kL1wifx0JVS/RqLhPY1qE57O0IiCPn/AMdC5AwUlaMA4tCR9DkRcZ+1/4sfMBp2M1cPY
         LymqvhR/LdJVkbkFMJ1fjUytKElrf5bNz0unPGMPtMBLHAdX9CKTg5eGj52RJO7aXzqO
         FltYq8b6DwKpC1wsXjRU0oH7bSpOpdrqnVHN7U/NtaoIRTO2j1+OcYu0KNkxpZFrgzzB
         CAX7hs4CnkTY2VVniwvAt5QOIDHDzBs8yQ/T21pnmi978ieJK8SAWr5JmT0Amg0Teh8s
         eNRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ExXfojo1TBozrKtiTdpXkDzWW8vMrgdxasXfwNPwEg8=;
        b=cJbEAWTVee5/5bFsrkL1wgLcyQ+mkdg34blx55qfWHyqu9fVRxGH+a8KZA0/H698TP
         GsdI3ulbz9gJVV44iEkN8BI4OtmSFabF7TdENZLbnf22SMTTLYnimp4HQ1Drd4XULudo
         tZGn2JW6nup1fddCsphOHkS7p87QOFMCuTl0zN7+iIlsygjpFrmDAMH3LBIwyGhET02V
         absf1OqUq/lrxqnh58IJRr9muWA+rRPVhOQU0/aecrHgYCuY1MTh3TRLO/tDpwPvJWz5
         6Jf7X4QYeA53aopgJFCWGDxVI/wIpyVlxXsAo1La4hJeeqxqmMdUSikppv8OW/n+Dl3F
         dgzw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Hf8UQEsAgT9Bpue/YoKzfpBWuuC881egnv77+7QJaiXljN2vS
	IT4TTo9xs94YdRW2SDUh5Y0=
X-Google-Smtp-Source: ABdhPJxi38YUe6eBKKZvQleSGRVkwbxy6fQsp33MEcpcK46DQ+owRrMyM6DlhfsjZQ6ybJLd9om8gA==
X-Received: by 2002:a17:90b:3882:: with SMTP id mu2mr9581301pjb.112.1603757080504;
        Mon, 26 Oct 2020 17:04:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7809:: with SMTP id p9ls3014917pll.7.gmail; Mon, 26
 Oct 2020 17:04:40 -0700 (PDT)
X-Received: by 2002:a17:90b:111:: with SMTP id p17mr23429737pjz.159.1603757079961;
        Mon, 26 Oct 2020 17:04:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603757079; cv=none;
        d=google.com; s=arc-20160816;
        b=Rz+pXxm3ElPuhmb3zPXyPOh78nBytU2h4vrBayeNtrOD+hXYQ2Vz4wiNU3Ug9a9in4
         Re1rpR5DYGpLGiXmRET9oCnbzrLz6ddHoaId9N3za66rx0lQgY8msAh5MK6Bxq/cTbFP
         JiBKeSqua1HZiI9PRSgXxOZLN/rspPDwaFL99NGHDfWnqZhtNgm3AjAl/2JAD5X9inGX
         kB/kaGGQkPzMdxbzrhaO0j85R13mdhzbnix/1c+J0mIZC4djfH63K1QyxU47KWuyxmDs
         HVnihsKtW25JNKdJTpFHRJLGFsvRJY2JPN5yEROwLUR18Q4sxeU9orSSXgH+PGq4htxX
         1IWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6yJ92tSTwIUAHGAA+Z1Jrv2ahCdnWPbKm/51TuIyEgs=;
        b=YpLARo+iYtKGXYGbbNjzGphaLyrdzTbEVaaIhmHp8jeOKSuHqB7YsiXUvr4bBNeNQm
         N59gbgoSEnzE5y339LLDpe4R43B7L20pP2wxf/AkeOYdR5TH0275iVO7P9r5Nfy9kyhf
         I3cyDS7aLtV16nvykM/pIiML/M6yIoMbhBaDCbUzEZPBiChaJuGvlLvrq91HXdn7b5f8
         H7qF6CX9AdAkqLGM9TOXWt+Rl6iytBlD09ZxaUEG8pO7QrZzJHPZA2jl+fQJh6IX4GQi
         ek4vlz05NYDUZ0vNj/ZgdmsIEUJzkro3QNck6NX93BfLclhgXUYKy7xxIkhi55E0de8S
         /NBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="uSSPA8V/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f189si657102pgc.4.2020.10.26.17.04.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:04:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B654820882;
	Tue, 27 Oct 2020 00:04:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Tom Rix <trix@redhat.com>,
	Hans Verkuil <hverkuil-cisco@xs4all.nl>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-media@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 19/60] media: tw5864: check status of tw5864_frameinterval_get
Date: Mon, 26 Oct 2020 20:03:34 -0400
Message-Id: <20201027000415.1026364-19-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027000415.1026364-1-sashal@kernel.org>
References: <20201027000415.1026364-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="uSSPA8V/";       spf=pass
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
index 6c40e60ac9939..b0f8d1532b700 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027000415.1026364-19-sashal%40kernel.org.
