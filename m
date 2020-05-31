Return-Path: <clang-built-linux+bncBAABBHXXZX3AKGQEM6OOUDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-f58.google.com (mail-ot1-f58.google.com [209.85.210.58])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED1D1E969D
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 11:40:48 +0200 (CEST)
Received: by mail-ot1-f58.google.com with SMTP id 93sf2328349oti.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 31 May 2020 02:40:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590918047; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZfbzoT9L2MAMDebxgn6S2pu402TLFoHAcHPxFN7mLtZE3yXkK5YmUQaFdXCU+eWT+C
         Xrnlpap5oGAJH0Uk6rozXE4EVA/UO8sJEmUHJ+Iu6rxXySbRCu5nhTxMxateHs41eIRV
         xssuzpzn0Kf5KvUjn3gVFWwaOKry0nuWURMayeBOIi6suN4YsjMAXiFaGaVLbTYTHwLF
         4mldejd9km7BnORKvuvejL9OznGmFUmsEEF+1pQeDoR5V2mH0u/bGSu/f+AxP7+x2UfN
         OYMnx04K6W9B3zYhS/UtYdMBmr73t6TFno0jTROJsWM6HvQQ0/odHQHUf8mUvs3xdAaq
         MAww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=hcJtrAMAH5cty9p4PlR1+UwYLhfEITyyJsLvWgcdAZg=;
        b=Tcz+E7qLvFpryzOk4C8RxPcmd+i5ZvTuWOTecdEqw3rAUo0TqxHj0qK6lbjSF1ShNQ
         XVX5IpRsf32SKwvUgp3ThP/Hg0i+U+8lL9eKNOkmcQLMqg/GHzDMmkv9b3XyRkvFwO3/
         SS6Rw7omUq7G/UD7YbOmcGGHgKpCSEVH9Qd9sFYzqMzV/PhCgJFBuldSKJb+AxJSHWAF
         BRSY10laJI1LBfQCrBvuMdiRHMtd5koSuYE+jAuI1pAVOyG1PZDy54fCjMiNCJJsx+x7
         MZkE8rVvDc/EhYSbNrHpAYy3GPogKqzURA/Y/Z4liAGQqwhwNdwExgtO1YpvDo3wHUnH
         XJSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y+tXzfQw;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hcJtrAMAH5cty9p4PlR1+UwYLhfEITyyJsLvWgcdAZg=;
        b=ooV33CJn66ppXqV3zh1/8W8R1jU3aj6o2S6JYlLG8F2AfTOHuvrOtwDgK3I8S3UoaX
         DxVwGHWlAaLexBSg7La0SxVG6H57Fv1Kgu1T7Yq48PwJ+k2gPlJbgQjb4ViQDmbOhHeF
         WWmMjnXEpiDbqVqoNRWcr6AHU+DAUS3SA3mF7Xt5bcIAcal48J9y06ANeL+Nv1AZf1yD
         0s5z47NTmmObnOQdL9jsdV8/Niy/b+yHhUcigleWPdBYD7q5jKMvBK3YeIlCvAFSbTFi
         p34OfktNbPipfL5XAAZLNIWg8havNvWAdRGqRy9E1mPCdCHwdb6g3i/pn5oCDshKmaiq
         t94w==
X-Gm-Message-State: AOAM530srO8qPJu/UpIcFSzzsLuN+FvPLmLfMJ6pXi5oe1CSGKxxRv+t
	us4una72IkylkQuNbmGH0hk=
X-Google-Smtp-Source: ABdhPJzG4XXKxRJKTtZyNBMXd07cv55XGdwE9vY4Z5g7ebzEq+I17mv8UkS7Rkg59jKSXBLTEUvbkQ==
X-Received: by 2002:a9d:53c3:: with SMTP id i3mr12239838oth.84.1590918046898;
        Sun, 31 May 2020 02:40:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:309c:: with SMTP id f28ls2171561ots.7.gmail; Sun,
 31 May 2020 02:40:46 -0700 (PDT)
X-Received: by 2002:a9d:7e92:: with SMTP id m18mr12418746otp.145.1590918046588;
        Sun, 31 May 2020 02:40:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590918046; cv=none;
        d=google.com; s=arc-20160816;
        b=ijCOdt0RPKxgvSD5QKRldmdaG06P5fLLVF1e10F5AKQfO/kBKCefB0NMsr3a+VoQIf
         MQiOm/Q/s+F/jrtZRWfHkdh+8esQ0HNbWgKhRA1hlcU0TcAfoeMcB3SoGXuVhOemjDZL
         f6l5A7ldEvaRuASLSlDb6wPH7If70XTQqMlzoh/VjAAkPGQECUmuSl0So7lomxvKiofn
         AH/RdiNZkiatrXHLXiMs48tY/MqBav0DKH9QUnlvfqiSwuwJYHpQYS99UsG2uS5s8JBx
         c/TUjrdGjHENOEAZixJM2kr/+s9owndxXAfzy6IqRXaKxu9FAbL2E8CTQIgZjp01v3vK
         nh9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Kaz4CNotc5Z+GijPD7fSE+u15j+0K0AQ4k0CPItHcN0=;
        b=eAHHY7Xs7TKwTmF4Kvtuwwd0K0cOqvEcgYBCQMwc02FWoF7fPa4QbYoKduZN2Y7S1s
         /44oDFtW1GlIiCCux36A5MddSTTqjO36hhe1Vn39uIVXSu3VoYMLAN3SG9R+2jhWfKMZ
         rXXqwrL1cWvcfB4peJumkeJ+3t42bsvWgTy+llVZXay2WEJPcsz4IlSPkPHREufGpBA4
         E6Xu4egLo/S3K8pGKUoOZoP0/SKAcgtq1ZljTmU/c+583SfddAiTGIaIqv1hLzpAKi06
         rZ2qarGj41aFUnYaSdduyxZs2m6luzTaNJ0oMeimBvvwmAaX/IUGuUSBPcf+UUkRFhyG
         y3sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Y+tXzfQw;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si1267428oth.5.2020.05.31.02.40.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 May 2020 02:40:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6E4042076B;
	Sun, 31 May 2020 09:40:45 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jfKSQ-003TMZ-D8; Sun, 31 May 2020 11:40:42 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: 
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: [PATCH 2/2] media: atomisp comment an unused code
Date: Sun, 31 May 2020 11:40:41 +0200
Message-Id: <2c7e69c6503ceef7a7d686d9eacf6dcff4b62d79.1590918032.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <1e056919536d65daf06091345a62523f827fde7a.1590918032.git.mchehab+huawei@kernel.org>
References: <1e056919536d65daf06091345a62523f827fde7a.1590918032.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Y+tXzfQw;       spf=pass
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

There's a different table for some BYT variants that depend
on something inside a FIXME ifdef.

Place this also inside it, just to shut up a clang-11 warning.

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index 094a2886bd62..5ac63c77570a 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -392,6 +392,13 @@ static const struct atomisp_freq_scaling_rule dfs_rules_byt_cr[] = {
 	},
 };
 
+#ifdef FIXME
+/*
+ * Disable this, as it is used only when this is true:
+ *	INTEL_MID_BOARD(3, TABLET, BYT, BLK, PRO, CRV2) ||
+ *	INTEL_MID_BOARD(3, TABLET, BYT, BLK, ENG, CRV2))
+ * However, the original code is commented
+ */
 static const struct atomisp_dfs_config dfs_config_byt_cr = {
 	.lowest_freq = ISP_FREQ_200MHZ,
 	.max_freq_at_vmin = ISP_FREQ_320MHZ,
@@ -399,6 +406,7 @@ static const struct atomisp_dfs_config dfs_config_byt_cr = {
 	.dfs_table = dfs_rules_byt_cr,
 	.dfs_table_size = ARRAY_SIZE(dfs_rules_byt_cr),
 };
+#endif
 
 static const struct atomisp_freq_scaling_rule dfs_rules_cht[] = {
 	{
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2c7e69c6503ceef7a7d686d9eacf6dcff4b62d79.1590918032.git.mchehab%2Bhuawei%40kernel.org.
