Return-Path: <clang-built-linux+bncBAABBBEHZD3AKGQE3BLT7JQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f56.google.com (mail-ot1-f56.google.com [209.85.210.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 209D71E8E45
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 08:56:06 +0200 (CEST)
Received: by mail-ot1-f56.google.com with SMTP id m22sf2374907otf.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 23:56:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590821765; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHc3TSc0v9CxAG0ZQlufLXTiXnDB6uOQ0RmrLwcTEjZUREO/FhtPCGfFf33V2yeYEV
         8grpy3WjboJhCwWN+w7eum+jrvNCRM5CWbmn6uLtttflaSUH/My6XzIdY59pz3bu55HK
         mfYVH2zPi1DhFJHnbNwKuXGate4NV6FQ41sLXNhT+sWqdKv+vAnoZZXt2RhM+ydjpcEE
         yf8dpMQY9agHdhlhLY4zBU5129EogbLFkBpUSCTDkdvQpF3uerPOkATIbL5ZAgMMNBmP
         qWbI/1jlPW6gCL8j9aZ8Y/h0bL+IQJPSPMbZcJQT5i9vKxPMLKvHZ1G+xM58WHFEEFZA
         JkXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=rJAhd0NC4ASkWrE7v+/30unlxnlvFKtN6QrvtBToVxQ=;
        b=e3c7WRnIoG9fbo9L6222Y6wGWuYHQBD3vTaJSJt0gI4WXf03bjJ9HqP0j0lHg527qx
         7vlqHGhBLxIM7B803xPa8YJ4sUy+BytN0MXN1wlrsf+2SeyT+Za/7DbTvOnzS9TiJhwj
         sg6ETV7heMbh1sJPu9YInQdnZmQNxNix628kYjHNKgI+r2jh/si7Srm6XIPlFoX9U7pe
         aV1jJDbZFJSlKzY60V515P0BDr9mUZq6YrBmFj23Gjbt8VvbU6dIDy6pOQH3Et5blh1N
         7xrX5sYsGnnsn1GacGcBe+mbcbCd1cRV3kg0mombEPcwowTZadMiYq5v9tZLjM/4+x/l
         OAgg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Uhj8ubLW;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJAhd0NC4ASkWrE7v+/30unlxnlvFKtN6QrvtBToVxQ=;
        b=RIpGwc5kqiFARPKbWDfqINMDhJfK+0xgaY/4kOB46nstev7kmWfRGp/u17cCI/bZFN
         0B/2+WqA6mbBvU5lVagIyvA2O/bUPOivcrX8E2CSLMH6wUM5rVzWLKOuASIV2GBhEi3y
         /xrRcPuIFWZWmba1yUmzNLog5cqqFCL5bFhqvV769jfSfe79IQYLeRHkJ7zfBfee6OCK
         peqwVcblo3R9loSWzGmiQSPNrSAGEnu4bxt1b2Q/BTEQE14UtJSPPHjwnln6QczkYq0M
         af2MxEDBIj4qx8WR2Udgm/ZAKtM6Et6QnPiURFFh8cyAddGOY6gGejwewgW7lRjB8pk0
         Nuzg==
X-Gm-Message-State: AOAM533VTxpK0ZiqGLEVHqADlNPKHdw5lpVeLG9IEup/lz0psYtJvdJZ
	LO51x4Y7sRZr0gmhcVU0ic8=
X-Google-Smtp-Source: ABdhPJz98Rsv1l06FAjtRcOY3rUCZIJQedM1JXdi0IPsE5kelOJ921eSfgN+00jFcHRYgt4TBPcMfQ==
X-Received: by 2002:a54:410b:: with SMTP id l11mr8828240oic.1.1590821764923;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c295:: with SMTP id b21ls302212ooq.4.gmail; Fri, 29 May
 2020 23:56:04 -0700 (PDT)
X-Received: by 2002:a4a:9290:: with SMTP id i16mr9664419ooh.62.1590821764625;
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590821764; cv=none;
        d=google.com; s=arc-20160816;
        b=PqV/Y4Wqfq9L38u6rGLHA1mFmk0M3UDLcnoPSkhDL+rMFZ6SVrtksmFx/z9hpxJ9Jk
         ZUgVkDFmJiSowmXUr2FVsghnvSBAo/V6oj4Aqc6ZJi+rph8fZp5T41I8ZdIV7kubnsOR
         YnNEbd5WZ2cSlW5KTEau9gftQzKdM/cPV3meDc6pGug2KCdtlAS10r78dtF14vQeuPc7
         FdfChBNUGyIVClTjtVFI6ZQBrxd+OKdsqpQMrN1pyTPEn5rth0Tz2ArpOAaocW329nrW
         xYPR+FQ6qI2jX76qeMm36CkQJF1rNNvWp6D0aJ6+EG6aBe/4U6Edw5of+wvHakDuisev
         Q2WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=aoDJhe2p+/L+leLsks+zL9A0jp4SiK7+78ALQqr6x4w=;
        b=U6iKY8rPK0grp1cYOakfLc7nLizA2/rcm68ZCN0PsBaB1fCDmIWBoO8jhv2ovQZKyF
         lLWUnsCiF84Z+gt/TMNXnjT5rRhaeTpsNd7V+M1gm1TxcEAuBEfkqUjU5BKUOSkchynN
         BGNeaW4I5tQjynIiphNJDNX440eLSCuHJI4Lc1rk5MisQA8H1S2phwNtJn1gx2zHNkQy
         5sMIQUoWnOZE20UNOr63JhZZgRjfKJ5Z1GYdYT64Jur8BUorb0BFkMX6OWOrROE7ZZmg
         tf7y4nuw+2xnyI7dX7b4LlGZWjsjlLtUkdL6xUa2scOnwlAllPDk4FVShEc77A8pyMEn
         IlMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Uhj8ubLW;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e20si851686oie.4.2020.05.29.23.56.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 May 2020 23:56:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9926721789;
	Sat, 30 May 2020 06:56:03 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jevPV-001hpx-HO; Sat, 30 May 2020 08:56:01 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: [PATCH v2 24/41] media: atomisp: Remove unnecessary NULL check in atomisp_param
Date: Sat, 30 May 2020 08:55:41 +0200
Message-Id: <3d2b4d8162c9b52b9510425265c5580928ab7cca.1590821410.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590821410.git.mchehab+huawei@kernel.org>
References: <cover.1590821410.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Uhj8ubLW;       spf=pass
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

drivers/staging/media/atomisp/pci/atomisp_cmd.c:4278:17: warning:
address of 'config->info' will always evaluate to 'true'
[-Wpointer-bool-conversion]
                if (!&config->info) {
                    ~ ~~~~~~~~^~~~

config cannot be NULL because it comes from an ioctl, which ensures that
the user is not giving us an invalid pointer through copy_from_user. If
config is not NULL, info cannot be NULL. Remove this check.

Link: https://github.com/ClangBuiltLinux/linux/issues/1036

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 4913469df2bb..5f34e7586ee4 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4270,7 +4270,6 @@ int atomisp_set_parameters(struct video_device *vdev,
 int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		  struct atomisp_parm *config)
 {
-	struct atomisp_device *isp = asd->isp;
 	struct ia_css_pipe_config *vp_cfg =
 		    &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].
 		    pipe_configs[IA_CSS_PIPE_ID_VIDEO];
@@ -4281,10 +4280,6 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		    atomisp_css_get_dvs_grid_info(
 			&asd->params.curr_grid_info);
 
-		if (!&config->info) {
-			dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
-			return -EINVAL;
-		}
 		atomisp_curr_user_grid_info(asd, &config->info);
 
 		/* We always return the resolution and stride even if there is
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3d2b4d8162c9b52b9510425265c5580928ab7cca.1590821410.git.mchehab%2Bhuawei%40kernel.org.
