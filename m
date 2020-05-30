Return-Path: <clang-built-linux+bncBAABBBMHZD3AKGQE2QKBSPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-f187.google.com (mail-qk1-f187.google.com [209.85.222.187])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFC11E8E4B
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 08:56:06 +0200 (CEST)
Received: by mail-qk1-f187.google.com with SMTP id j16sf3698903qka.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 23:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590821765; cv=pass;
        d=google.com; s=arc-20160816;
        b=HaiICBSaTrD84vO8V+yx17raGTzTn//i0pbOri6xSetp40mrW4floU4lPlP3ynSN0W
         WPGBmM8YAYz6YVnCcHz+msu2xdO1qUsqR6LxgdJUEqUN5baPmqocuH2YIJ/48K8Q92/4
         NEBz8ABhEnLA8l6eFdj3lHbSpB1Baw+XukK/IYQ8+3U8ijTHB27+20YBjRq5fQCM1qSR
         HmWMR0qYiIp4VKQP60vYSjZIvKnO/68GVI16LDyg1EIPVCQU79X7p+AAi/r7fyHkbjk+
         cq1Q3A2LaYhsKlcAVXVchplcawLdGRayRstrvkvB5qHhb8VywB9UtCEdIUEsHfax0/Ux
         L5ew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=hfIdwAV07pJb1w/MgGrLuKqUYuJ9Xf+IiqEXB32bzNs=;
        b=q7Bsks235ipwgVyIHC9JO5y3uNEPFgKLTJ7+aBT9driW0OTXM5s/928KXeVTOfiK/d
         h/0WLgZMUb09FYOlYh31BALp8qveUzXg5hfdiTG3ckdpMqV9Oc9r0mYYgdM12gp4j07x
         2p2jNEwVO+T4avLFBBzMOyChTk/DCQmE7TPToZUz/p/mUq1sQJ//iqqqWf8hCjF45jjG
         80WaCKrOQTI/J9fRXNvndYXXoC+2FcUx7Fn3iZD5DKoLz1ozpyuV1o5puB3Zd3sB/ilc
         TjQ82+uR3s5sEFSUp9Cp/1YPSP07LsrsWItcfrDdhFAcZICuGs3p7Kt/RAa/wF4KN3gB
         S5qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QrhrVxDY;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hfIdwAV07pJb1w/MgGrLuKqUYuJ9Xf+IiqEXB32bzNs=;
        b=WMVOONJ6cjIYAuuWnfOP0LeUarGVeXi7dtvzJU1Y5qzfrjIAXM8rsZ+91GuqwEU4Fh
         1bj3GBYjgo53zhjLCDMPwyZZqOZm1Bdg4dsVUYe+Z6qeHkio9S1AOc9hO/cZqPmPy7re
         /rV38sdyASLCkrL3lso2mFLyrWzvVdVcz1p81VeMZNr8ZNMMczNPVwoyh0mavlldeNWQ
         tP8sYTB/9v9w4ngH233a5g7qbOoPnk+HTjqmq2tUyyiV25+K3mbVy4Y7P/HrXfVCoGoe
         dfq/HfHr86ycJP8CVYhsCBaI9rzlRlQkySVW7N10TVODjnVqW5CQ9d6JJHFd9nTm9QZc
         XUdA==
X-Gm-Message-State: AOAM530wLBso3zebSZw8zKizqYfKoAWjX/9ojXgYiDcNk1t9STjiOcOc
	7izS5xW9ppKl/GuZvxoDVAY=
X-Google-Smtp-Source: ABdhPJxhvabyT7xeqsZnXp2IjfAuXcCpsxbS2ncH6ZL2NdUZwgrBRrHHDxE/wV3r3Gs/3J/ZJBv3GA==
X-Received: by 2002:a37:a085:: with SMTP id j127mr10650803qke.135.1590821765626;
        Fri, 29 May 2020 23:56:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6654:: with SMTP id a81ls3957074qkc.7.gmail; Fri, 29 May
 2020 23:56:05 -0700 (PDT)
X-Received: by 2002:a37:a648:: with SMTP id p69mr11351577qke.190.1590821765325;
        Fri, 29 May 2020 23:56:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590821765; cv=none;
        d=google.com; s=arc-20160816;
        b=CzmnOznHUQoef4w1umQofw1bd5j8BVm/y46HrHCl2IRYNAP4zqgEjDMvfIJMxz/Kne
         44urZQfAd8jSOtMvQhX02CP9gyV8xRb7wFwSOqkpgzZsKaCd5qyieLaiVHFK4ZlzdiMO
         rBT1OUMQNNba6qmojb7SCVDQpXF28wcIyUC1hbnnnFXv4hovquIhx9/sNHa84CRTOXql
         JGbzeDO//O7WjzbJtAF0/6+N20PnY9qn1sjoum3+ZoR6M5qyl64EdwXgt1uwKrRpXqiD
         X07N+iuoW7X6GVWDJ7C8kWjw55572gHajIWiS0kbWd7xp+0kWcvFif5xRYacMxBf0YS/
         qyvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=dh3mMeri/9dQVkmFSM8JoOT9vmPhmw6AMtc46xM3lhU=;
        b=M1/75yRMkZsyazvIet4NM7aURapl1USjcMS2yy3r+MsT5N/HEbWB9M5xMNhv+5snQC
         x0gj/ZD9gLusnI370GdXgyDp9qE2azfYPvinwQhsymX/lPh46HJQeQNUE0xVAuaZ6dNK
         vYjzW3T6MP4hrlgrKEulC7ta03SUTakrlkntFQwvqCVvfmTuektIX6a+YJchQJhyqMiG
         RfR4px5dW/bewSybvCZHfEV4/Fijn2WUpAJ/G6rbUMqsHvU+xYXlL7tC7pSjoUWRPokJ
         Bz6Ku7jgnzfzwONDBWMR+b6OOmpMAr8Qhck2SRGzSKMHpaPrkDcZ+WXoCDSIbRF4tbRk
         36iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=QrhrVxDY;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w66si703724qka.6.2020.05.29.23.56.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 23:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 975DD21775;
	Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jevPV-001hpj-DO; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v2 21/41] media: atomisp: Clean up if block in sh_css_sp_init_stage
Date: Sat, 30 May 2020 08:55:38 +0200
Message-Id: <19d491af1c88d2b2f04a26301aabb05d233c2e28.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=QrhrVxDY;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
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

Clang warns:

../drivers/staging/media/atomisp/pci/sh_css_sp.c:1039:23: warning:
address of 'binary->in_frame_info' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                } else if (&binary->in_frame_info) {
                       ~~   ~~~~~~~~^~~~~~~~~~~~~

in_frame_info is not a pointer so if binary is not NULL, in_frame_info's
address cannot be NULL. Change this to an else since it will always be
evaluated as one.

While we are here, clean up this if block. The contents of both if
blocks are the same but a check against "stage == 0" is added when
ISP2401 is defined. USE_INPUT_SYSTEM_VERSION_2401 is only defined when
isp2401_system_global.h is included, which only happens when ISP2401. In
other words, USE_INPUT_SYSTEM_VERSION_2401 always requires ISP2401 to be
defined so the '#ifndef ISP2401' makes no sense. Remove that part of the
block to simplify everything.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/sh_css_sp.c | 27 +++----------------
 1 file changed, 4 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/sh_css_sp.c b/drivers/staging/media/atomisp/pci/sh_css_sp.c
index db543c3fec51..4f58562fb389 100644
--- a/drivers/staging/media/atomisp/pci/sh_css_sp.c
+++ b/drivers/staging/media/atomisp/pci/sh_css_sp.c
@@ -1027,34 +1027,15 @@ sh_css_sp_init_stage(struct ia_css_binary *binary,
 		return err;
 
 #ifdef USE_INPUT_SYSTEM_VERSION_2401
-#ifndef ISP2401
-	if (args->in_frame)
-	{
+	if (stage == 0) {
 		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
 		if (!pipe)
 			return IA_CSS_ERR_INTERNAL_ERROR;
-		ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-	} else if (&binary->in_frame_info)
-	{
-		pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-		if (!pipe)
-			return IA_CSS_ERR_INTERNAL_ERROR;
-		ia_css_get_crop_offsets(pipe, &binary->in_frame_info);
-#else
-	if (stage == 0)
-	{
-		if (args->in_frame) {
-			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-			if (!pipe)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+
+		if (args->in_frame)
 			ia_css_get_crop_offsets(pipe, &args->in_frame->info);
-		} else if (&binary->in_frame_info) {
-			pipe = find_pipe_by_num(sh_css_sp_group.pipe[thread_id].pipe_num);
-			if (!pipe)
-				return IA_CSS_ERR_INTERNAL_ERROR;
+		else
 			ia_css_get_crop_offsets(pipe, &binary->in_frame_info);
-		}
-#endif
 	}
 #else
 	(void)pipe; /*avoid build warning*/
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/19d491af1c88d2b2f04a26301aabb05d233c2e28.1590821410.git.mchehab%2Bhuawei%40kernel.org.
