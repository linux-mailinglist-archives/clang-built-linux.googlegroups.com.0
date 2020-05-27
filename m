Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVFFXD3AKGQERKVFEYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A0F1E39F2
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:22 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id v16sf3063092ios.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563541; cv=pass;
        d=google.com; s=arc-20160816;
        b=wQapmZtwC8hx7wxy+SlCyMqiZH3+XOKMR2/gaTrFStqArJtKOu1d1nTSKsjgP4bRCx
         e7WTb+iU/BdnQ7XtGTS2NmelbBn8SIh95vreTfBPmY71EJWhOrr/rCfLhPFZftuyKQFE
         SWoMHFOjejHYrKlQiwnqM5DEE3bG4HptI/BBCpSSHdJB/0uCyt+H59IfoClKenILgsxu
         CtK/hZaxvA+h7vf83LksmmTXEMoH8jTmx3791OFLymR7YLuCQ7GKqmo6Fs4xDghQPgdU
         ZVoG+MKmk8lT3CdjHPII80WACOiJeBk905r8Yod6sMrSRcgvENhgqgw/a/8zM2xtMHRG
         WWMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=1Cm1pEz8x8WlAydwWLSC9TaYyvlsOb58MxY0g6wdL+A=;
        b=0GKgUFW1L6FWAxe82BFPMsz38m8f0YwgMt+fRO9lRbTYQaveUPDd8ChH+U9Dq3KeAg
         1Jx5JkmK3MektJOh7ypdnaC52ilycif4FiTJuIgBM5dYdd78xQ3AbdEaUfH5I1Ck+/IY
         NhKLDpu8qWWl7TZCM/RbzzYKmswixb5tCxrEknH7jpreBL8cnC5N6PSKWJDsKz2OXDD8
         UyzNCnPhYyjMvqdDisuK9mO06NSfRnx6IKEep6oEpjXbN5wSSIQ7PST4dqAJ9JgwG/gp
         Mt+Ze9/yQksgFwqbv1IoQ3ywVpEQaRRyb8etFj1jPhwxWIybqPwf5FnGgrsJc8x5Ca9W
         cjhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DM3vqxu8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Cm1pEz8x8WlAydwWLSC9TaYyvlsOb58MxY0g6wdL+A=;
        b=j4QliOX9998L00CcLebp/yZmmBJJtPP5aCk23qkNQBYImiJQnTZNRq5KmQY1DoozmL
         9pV68gYySAKLHNR68TDK/zM+0fPTOTu35XCxJkbjhWEJ3vVztiZ5rL0eJAC+7QzGKBnx
         n80FH1cxbtj0x/cCbaM/dkRN12VuFXc45o9uUH4Ztm9fCXVeXTVaHvIlfRIQrG/Z1zc2
         Aruq7Je7hvY+O5KoVFdUWgC0yKso+1JAv2ACazHn7djI6UEiYlUS0AUtwNf4eVWWFkTa
         LN1zOQ+xFkyupOpaaq08RxY+AOC4P6TB2TzD5ivRnbJItTFaBJt4LDUgX/qpL4N2qy6Q
         Nu9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Cm1pEz8x8WlAydwWLSC9TaYyvlsOb58MxY0g6wdL+A=;
        b=NrjfOuuD3rzvQ1CiO1nSGIOso1+KYxVm7QQoFwPFf6kWKML22ydTPdDyXNtVSMyxXS
         N1puQ84ib6ZpEhhBcI/sh4unOHKNaRW2eouJMXuS1mlwZspJ80+5MIAJ5E9fMqwGsmk7
         wp/JiMJieTPQBe3rTDDMWvPkA6E0QmDiBaIT++lsPFfV2QQ8SY2Bm3UCQk9p2KDxIPPh
         TzwiFvJ0Pdjh7sUlvjgGaIfwIPnSQQlWRZvGSJ28NhNlbiro3IAWmLBgTCnijzOdOld5
         A/5kYw4I/BleTKXLNb4V6mN0b0ZteLvIFBQo7myLFSRLRefkPRJEvTGwXPg5rcvXQAI/
         UWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Cm1pEz8x8WlAydwWLSC9TaYyvlsOb58MxY0g6wdL+A=;
        b=K5n/nhVTAmGj37u9VAj/daVX6NKVCEljk+w2TEZc2ANieqGn0NK44mldTaq1fnAMOg
         6OeQNqcLHTQjeeOI+JFWygJ+ADfQ8EFOjKQAz8nMnIYNrkXADQuFTd9uYtEmQ/PuTkJh
         HISlk9iipwb9h/xqMIDqDO8IvTaFhbjpTWJ6TvyxdTFOaXZ5Q3WdL6eo52F9BDQ6+6tC
         E9huYCE79rsmyy9T+UupxzqH+rSkbsP/bi+dE4JjMnIxIsH37RblqvQUi4FaXCN/17dA
         y52gfAmsc2MNl71srR9E+0d41QJsXn5jxWfijoJBbJSJNFKT8QTcv1iH3R8G1Vr6/hnj
         tZjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Wq9nDz+MaU+OviDP4tNT96e76vDQUrvb+VH5z0JJ8oi6VBCuZ
	vIFFMOODE/2WX2/kWTQCTgA=
X-Google-Smtp-Source: ABdhPJzcD79P6IpoQyICU5XIlm3/815X7UA1uNbfAPqY6AGNYWUgQNar2oTjRqPtPJd34qJEICf6QA==
X-Received: by 2002:a5d:8516:: with SMTP id q22mr19727265ion.122.1590563540784;
        Wed, 27 May 2020 00:12:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9108:: with SMTP id t8ls1338245ild.3.gmail; Wed, 27 May
 2020 00:12:20 -0700 (PDT)
X-Received: by 2002:a92:ce8e:: with SMTP id r14mr4669368ilo.265.1590563540077;
        Wed, 27 May 2020 00:12:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563540; cv=none;
        d=google.com; s=arc-20160816;
        b=WL8YvKj5I2wWTAZVT8GjcLPdJwnt0oRVDS46reBauzIGtaC7/xUvm33fsk2v+Y/taw
         9Tm3xqFVJNQ/R9EiGl/eFgVUPO/JRM02I3Ducq9S2HIhyAMv2CKjAXsvZ7BWZTM/ekb9
         Kk0WRW7SXyHBdPlBSJuyV42388lvGWJGVSrB1NkT06BK03oXX8hn/Rru1eW48vDcsfFa
         6CTdw3BrtwnPWx3nMyi9P+SeCfHmIfrhW/FfkVCZBnM6m9ulwNmOmDkGXRxAeaEPEQT6
         R+It5K2+21vCp5sW4noF4a6LM7tE3sYHfZsb28Pvr0YbWioicidH2XfZ41wIM7DYsbJh
         Zq/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YnWT8s8ink/KeJFRPdHxxy0KnE9QXS2EIJkcc7O9gtk=;
        b=UDdwvj74EetWqGOc52z2Ho1a4F5KDWZdKSrPjuvrYpMImpSlbyAj2cwXq2iMX1N6R6
         Sn7EuloGynQ4Y9F13ByWSYmmPiZxf7tSmStOmVbZr3Bbbz/+yrojBsm+i0ZHiIKuybV5
         01xwFl9UIfL6Uwcc4WuV+yYSJqz2hrbtHYGdl4nTDUCpMQfu71RvvNamRC9sZfNjnuPF
         Bh4I5rp502CfG5XPCas0dMrui6FC+/cr00pcoFdcs21ThsmHhWrGcQAcC9YSdQGBi9ck
         wpEhd3qUKHEzmmRF4/u8X1OfaMrm2vKRX/ws+lCN3zlLDIiheEI8ePF/cWZ+KkiPaH5Z
         z0Vg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DM3vqxu8;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d3si126732ilg.0.2020.05.27.00.12.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id q24so1125393pjd.1
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:20 -0700 (PDT)
X-Received: by 2002:a17:902:fe81:: with SMTP id x1mr4672432plm.239.1590563539414;
        Wed, 27 May 2020 00:12:19 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:18 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 5/7] media: atomisp: Remove unnecessary NULL check in atomisp_param
Date: Wed, 27 May 2020 00:11:48 -0700
Message-Id: <20200527071150.3381228-6-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DM3vqxu8;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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
---
 drivers/staging/media/atomisp/pci/atomisp_cmd.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_cmd.c b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
index 5be690f876c1..105c5aeb83ac 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_cmd.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_cmd.c
@@ -4264,7 +4264,6 @@ int atomisp_set_parameters(struct video_device *vdev,
 int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		  struct atomisp_parm *config)
 {
-	struct atomisp_device *isp = asd->isp;
 	struct ia_css_pipe_config *vp_cfg =
 		    &asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL].
 		    pipe_configs[IA_CSS_PIPE_ID_VIDEO];
@@ -4275,10 +4274,6 @@ int atomisp_param(struct atomisp_sub_device *asd, int flag,
 		    atomisp_css_get_dvs_grid_info(
 			&asd->params.curr_grid_info);
 
-		if (!&config->info) {
-			dev_err(isp->dev, "ERROR: NULL pointer in grid_info\n");
-			return -EINVAL;
-		}
 		atomisp_curr_user_grid_info(asd, &config->info);
 
 		/* We always return the resolution and stride even if there is
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-6-natechancellor%40gmail.com.
