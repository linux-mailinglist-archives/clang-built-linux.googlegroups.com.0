Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBD6L3X6AKGQEND4PTZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id B3DD2299DE5
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 01:10:56 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id n10sf3557085plk.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 17:10:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603757455; cv=pass;
        d=google.com; s=arc-20160816;
        b=pX9wRU68ktaj435/MS0aXQ787ffVMAC6qkrPe4qE0B/CUSzlp9Ysz9wB7iE5yYGboq
         WvHm+zw7G1V6XgmkwGdRf6JDSCjYDMGYYG177jOemWaEb7w6wMCoqnADBjJYkC2d7FuO
         S6pCB1HE9y3zJg92DN+0bMMnTfBQQNTflkSCp3lSYMA9NtCNrPD+ZC85iCYF92g7JoTi
         1CYTqNaA+rFh1BvxgVxEFd0EqT82fxR/joAZEe+krmjpZGGcKDXDo8YJ4lQwnFrFgrvw
         m3spt6G50LgI+/AYNhP9mgkNW6h/uOCnUwBlIZ7wSJo3LVUfF6rxiZshmQ3yxV2waN1+
         873g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=umVoMVMOE4oXexhfSL/QjtxBjwcCTzSmshwuqI5AVr4=;
        b=mAk78MKipOUhtlgsligo/H4cf6jobFOT8G8zmzeP5HoxvJlD9SCyh7ZBIg32qnMFzU
         joOXuANfxDfT64hzb/5QPBMuDIoOWxTEbNkK+Ey5kbTrnHP4WPFSRzV+Sulf6QUuP4ud
         0JkOzJL9Zve8wpTcokwvmY/pY2sWuubnaCWXDpRSqyHlB9FvInr0cPcneMqPLiQ4t7U3
         G4+hv9R4AmtuGJTdgVSjUJmmV3NNrMO1evGdpnpw7Tx+ui4qASyUh0/Po3uGLsHmmgdo
         duSaKLTkJvAWGA9RO4c5oNDCu0XGV72BzsD2igIFFbVdzC0VPw0XVbK2Ja8vtPn89WtN
         mItg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=svCFrTVq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umVoMVMOE4oXexhfSL/QjtxBjwcCTzSmshwuqI5AVr4=;
        b=Urlk4+KXBXYL3nIW4GBIoCyywcAQ9WbJXoKOVlRCG85mJ3Hgz741XyfX8BaYZCrPa6
         mzGanEeknlzyi6nFe3+yHC+y4j7l+2vtmP7J+LuJ5r+FnwNHE8LQ9c5/MvIcdyojAIei
         O++dX7EhCOS+lUYngPxCTr6IYpMSZ+CaSGlypTUN2FZWkgdtq3TEQ9hxGbZJCL2DMI7p
         H9aLS5SQ/b9pIpej5vFd8omVGcEixM5Chx437R1jqcdX6vV/K0cHqNLdqjLoyfbFrGZX
         lWjBJDPrXfR1Jy+1F0QHQ0Od9OGuLZRJzv5YZSTB8Wf385VsJBZkMltyYnbV1BsSEB2b
         KsEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=umVoMVMOE4oXexhfSL/QjtxBjwcCTzSmshwuqI5AVr4=;
        b=cP1RDp/LPpkBrr0Mumzj20NOR4WXbI+HmNv9hQamZnxejeDVCDcZ6p/FLlGI9ZrMN0
         8+zUqpef83I5jH52fpdLdJhw/wEBBp3dZx4tOwC6MG9LO7my7TLuZDmxsThKdGq53yhd
         muo/f5kaJuqFWYrsTDayIJAOiP2jRfx53RUaz80VGSWZnH//bIjeEOMFkn1/FfI0xcQY
         Nvxuv/OidB1Hxws8gJtvJmLTCScfTSxv3gyJWXOn+aqZZzHPdmuXzy3AAvz9CDSxAaLw
         rPDZGRRHCgfM1qAxL70GN2POa+ijdoVHNvEUgRhF+Nnb2ReQY+II+C5Cad+plKmiz/ov
         7UBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53233gcEitVfsHbtzt1tgA/B4ixtN3miKMb1amXH+hSIgXhnZfuY
	4jQveBw1W4Qvi38Jue18bFQ=
X-Google-Smtp-Source: ABdhPJw3uHQBx0nWTwacqbUOOJPDK1SOknfqbWDY2Bm5Z1giTwBNl5tRWdqI+Xk8qI5WLuCErnIaHw==
X-Received: by 2002:a17:90a:4493:: with SMTP id t19mr23510127pjg.128.1603757455429;
        Mon, 26 Oct 2020 17:10:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:ec1:: with SMTP id gz1ls5283228pjb.3.gmail; Mon, 26
 Oct 2020 17:10:54 -0700 (PDT)
X-Received: by 2002:a17:90a:1f07:: with SMTP id u7mr23578399pja.69.1603757454752;
        Mon, 26 Oct 2020 17:10:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603757454; cv=none;
        d=google.com; s=arc-20160816;
        b=wiZcCIpQOGUw/i2uzKzh/oJUzybUxx6vt7qNsrLukSYm636+1ULA+l3vp338OcifX+
         eJnjurwxndpUlnT2t3MBJY5Sg//YT2yaS4jokxh/Sqo4PdwuARmdN9QyeRgyDyWxiP+j
         txG08FrjHcnz+RM82YQ9CetgwKRsM3Bw6vXdAfJ++vZlCMT8xNnceDdeHnVP8O9nHrWl
         w8MKySEMvte+ty5G3e7hRXBps6U/C4HZvK2jKIVUNXbczhu/6d3jq7nQnyvw3zB+h2Wf
         5cej/6IxZQ+YZb+lkdC4UibGH/ZYVOJ2Nqtra53dVyNVcDbvXTQIfOqdMlk0N1rh47XW
         D6Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=alCscD9a80rbCjCL8vK3r5surS7ha+9N3WoEU4E069Q=;
        b=mNwWW7ayAc8cSziIisrwcdjjQhTooSNb9/qCJ5XAVL/CN++CpaEH01/f/2blQnOEl+
         dynaewHrUFyp4QYPVbktz0VeaZPgdgvbR5t7ftk0jYznmQ37eDeoYn3XpS43feZk6HeM
         4J08maj1TBv7zmr3ZQKMKtwC5urQYmNcjwHqKnrRaKs1S70Ax54I8XYQbN9ex2B5e4XP
         85+pI4olvZsOHa4o44ZxU/JMh5iSRayuoFenqr45InnxpmYMsxkujTCkltFCE45OZM5d
         tAmdhoJDZ0Yr2Y0pxtD2v6NgVge4nC/pBkYLIy7bIo954OY7Ev0yY0Er12KQZsie3P0K
         NSAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=svCFrTVq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v8si757430pgj.1.2020.10.26.17.10.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2020 17:10:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 978F221D41;
	Tue, 27 Oct 2020 00:10:53 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 08/30] video: fbdev: pvr2fb: initialize variables
Date: Mon, 26 Oct 2020 20:10:22 -0400
Message-Id: <20201027001044.1027349-8-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201027001044.1027349-1-sashal@kernel.org>
References: <20201027001044.1027349-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=svCFrTVq;       spf=pass
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
index a2564ab91e62d..27478ffeeacdc 100644
--- a/drivers/video/fbdev/pvr2fb.c
+++ b/drivers/video/fbdev/pvr2fb.c
@@ -1029,6 +1029,8 @@ static int __init pvr2fb_setup(char *options)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027001044.1027349-8-sashal%40kernel.org.
