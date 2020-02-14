Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBRMOTPZAKGQEAT63YEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3981C15E059
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 17:13:59 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id 36sf5460361plc.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 08:13:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581696837; cv=pass;
        d=google.com; s=arc-20160816;
        b=hIutacfVi0xezUyy4Wu82/YazZOWEAi0qwM/62pKeh3PgT7d15HvKJLVTcZsAPEnrl
         IlPTSNnkeWCymTnMl8Lvx4dYKYlr9uA44Xei9BtiWyn0+bpwT7tgwCUpBGE6P2qR8TWi
         TF5+riAtt8aWfCnZHmEB0avIF5/j2oWq7IIAHU7VSQIMMKWljHtp/0m6eoQ38Pq1mFdJ
         tpwd8lmrf6+Xlb/p7fOGs61mDzMvAQKouqRoY1fgB7dp1ExmW1CUUbPDVX0/Y07WrJTW
         jM4LTng+u3btmwkqUEYynyDC/sTmkqhfKDs74I+hmVwokUwNu3J7r+0OoCCbrWzDPSMj
         RZbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kvwI7naUJ6tdc5Qxf1NHUZWJf/50StKYzeYtdIhwsao=;
        b=Br8ZbSBdUuABpr2V1tuY9SbDg3SKpaI4SdyjNxu0Qbb1uXreg2S3QHi1ejJrcUpt37
         x6ZuVt8qdZRmPFpgbxIswGdf97qJmXcUt+Yz2kkim6UfGv+3tnXA8mFieWkrjACoZl5Z
         wE66OkexTisjfyfGRIwg9NBbyvLS7/96paAtGy8u16cQdNC0GnYaWsB+0xP++cbvTbLm
         MKZ/8K18xFYYiHR628vhwp6LGAXUlfmtXwn6WI+6B9tlS4Bsf8kg3KEBjBNtjeEUVmXV
         dhVzqLnpB+M2hS/L9hhjvzBwN5qVVxZx3fIbECWoto7IiWsYLbAEzXYKD2K7m9MRFNe+
         GR+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dSkYyvCa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kvwI7naUJ6tdc5Qxf1NHUZWJf/50StKYzeYtdIhwsao=;
        b=YreNZFglOVm7PBxnjqPEfGbQ6SvUcCyJ+jL1dBwPR+2hDMP0RoaUIVhuTzEapXxNnY
         MT/VVur6MYQPwygg57TA0bSbGDNJAfp7XBo0cvGRpr0Iqs6UE6h1tQZFTQ6QwVpCkVN2
         HWwq+8nWViefTAct7ncMEQWlqnyPKIM+AQMn6fAMBOQpFFXSyGgP9SxvnQqNOI/KvV5R
         RTCKKmrKsI4tp/c/P+PuRIrgkVGIXG+GBha2MX+ZuIJ4cPowKAPYSk8c8gt+vP7Kothp
         sicIPY6/xmIth7nf/MErVmxXnXb9o81D2IQ+Hqvx78uH1zt422t4t72Yh2qf489wL5Vx
         8SUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kvwI7naUJ6tdc5Qxf1NHUZWJf/50StKYzeYtdIhwsao=;
        b=oceQGr1CxUNcr1gV70mbubMgvsV4tvk7FtwocJ0mHHuTtLX6IJg3NFNgQIRLgViU6M
         JvuJLEnL0ja5Ju8z0tWvHEwtYeCaccF7HvT1OjbyYMrewSJ+JsS2YVYx3rJNhvfqRJT/
         5nbCffeCzcRiRgFZY8k37WPFM+HzbVpKCjHR49IWA/vVDa/6gk+hSLcUeHXX2kqpdJeS
         AOA2Tpk2PS3E8QRxU3uZg0LcL2P4qhbCWIOScaQrohrr22cuK6eVXlUF+KJ4rJvlseoz
         zW2puFtkNGUOtCm/ufP7NLfzHu3jaZNSZUvu3bnGlu6bA1Iea0yrAaxvJS5qLjvb6N8j
         pB1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVLabZxg2NHm7JeCliWx1fle10b1IghBeqpaNGYI5d7F1IhrK5O
	Tm6byGfaC5WJRWbddVlk86Y=
X-Google-Smtp-Source: APXvYqzXtzbLIhOMH/CmgKEy5QpuTKBc14bq7uUWq6Tu9tO/Dkhwr+7WgHsSecHqeGm8xZ1HOeZCVw==
X-Received: by 2002:a17:902:343:: with SMTP id 61mr4109776pld.332.1581696837704;
        Fri, 14 Feb 2020 08:13:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls1755948pgg.2.gmail; Fri, 14 Feb
 2020 08:13:57 -0800 (PST)
X-Received: by 2002:a63:3154:: with SMTP id x81mr4404502pgx.32.1581696837324;
        Fri, 14 Feb 2020 08:13:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581696837; cv=none;
        d=google.com; s=arc-20160816;
        b=uRKHAICN0DA8I83PWu74uE1wXL+6uEFJJbGuJL3/msvN2folB3bBWDxH0gKUN6sHbk
         whjjlncSSQY6gTgrqcHPEu0zxaeRH35250h3Pjt1RE1u644WDkNMJsfHzC2vsYls5cZC
         7WZZWWhxuGOq7GthP7e+/wW/kF/gk5ZWV7zBwo6U/D7itlIIdGHSDxYynOHP/nR3OBfz
         snloDTTkajjkWvR50BOWdT32gDVHYFzJKF33qPgrwyZmEiHap52uy+ohieBv7tOmGBgY
         imJ+k7giNNw3lOup1zj2pDIF0gLD+SUwtCoxAO5zobfRYqM1hUQzF08z3EFd6PlGJjr3
         R+8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=RzwMerbGjKih6eNkTOIuxnOfHAB7ptBzB+9MYhTvQyY=;
        b=GhcYCIj9vDVrxyWzFE+CB/VAWGvQuyYpx2tbGXvqdM86sf4wIjO5tULsHI+J8HQaps
         9cPZJmatKE4M+pM+IV6tkzGu2oR642EiEZUDY203D3k/BhWOKmCXcYMnblXslGc3c7Dg
         F9lULnspxCi5pm0Kxyl4iYeBIWpU32hM9+ANWi43Ttc7BovJr2jYkOvJa5rsTRjZhWbX
         BCcWx9AcDD0Jgf7nmEvdmsi1yTn3dUNExlOZuhCdCW7dSjS+38ECBrmOCKpFdxFckL9v
         fDXjQXi0Y8iRrlcgpTeQwK8aDokW0piy4z+06Q+4495OITBdO6dvML7jpF7F4qwo9bsV
         Vziw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dSkYyvCa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x11si18609pjn.1.2020.02.14.08.13.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2020 08:13:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 45FF7246CC;
	Fri, 14 Feb 2020 16:13:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Takashi Iwai <tiwai@suse.de>,
	Sasha Levin <sashal@kernel.org>,
	alsa-devel@alsa-project.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 101/252] ALSA: usx2y: Adjust indentation in snd_usX2Y_hwdep_dsp_status
Date: Fri, 14 Feb 2020 11:09:16 -0500
Message-Id: <20200214161147.15842-101-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=dSkYyvCa;       spf=pass
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

[ Upstream commit df4654bd6e42125d9b85ce3a26eaca2935290b98 ]

Clang warns:

../sound/usb/usx2y/usX2Yhwdep.c:122:3: warning: misleading indentation;
statement is not part of the previous 'if' [-Wmisleading-indentation]
        info->version = USX2Y_DRIVER_VERSION;
        ^
../sound/usb/usx2y/usX2Yhwdep.c:120:2: note: previous statement is here
        if (us428->chip_status & USX2Y_STAT_CHIP_INIT)
        ^
1 warning generated.

This warning occurs because there is a space before the tab on this
line. Remove it so that the indentation is consistent with the Linux
kernel coding style and clang no longer warns.

This was introduced before the beginning of git history so no fixes tag.

Link: https://github.com/ClangBuiltLinux/linux/issues/831
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://lore.kernel.org/r/20191218034257.54535-1-natechancellor@gmail.com
Signed-off-by: Takashi Iwai <tiwai@suse.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 sound/usb/usx2y/usX2Yhwdep.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/usb/usx2y/usX2Yhwdep.c b/sound/usb/usx2y/usX2Yhwdep.c
index c1dd9a7b48df6..36b3459703640 100644
--- a/sound/usb/usx2y/usX2Yhwdep.c
+++ b/sound/usb/usx2y/usX2Yhwdep.c
@@ -131,7 +131,7 @@ static int snd_usX2Y_hwdep_dsp_status(struct snd_hwdep *hw,
 	info->num_dsps = 2;		// 0: Prepad Data, 1: FPGA Code
 	if (us428->chip_status & USX2Y_STAT_CHIP_INIT)
 		info->chip_ready = 1;
- 	info->version = USX2Y_DRIVER_VERSION; 
+	info->version = USX2Y_DRIVER_VERSION;
 	return 0;
 }
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200214161147.15842-101-sashal%40kernel.org.
