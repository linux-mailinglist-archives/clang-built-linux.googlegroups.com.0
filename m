Return-Path: <clang-built-linux+bncBAABBPPJZL3AKGQEKO7JX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-f190.google.com (mail-yb1-f190.google.com [209.85.219.190])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CF91E9366
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 21:32:14 +0200 (CEST)
Received: by mail-yb1-f190.google.com with SMTP id v128sf6144581yba.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 May 2020 12:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590867133; cv=pass;
        d=google.com; s=arc-20160816;
        b=vvcyzpHvm6VQsFaEJadNTveLu5mcIJNrlCfBNJKqztwRyMaE7gWqfaCUyZdJ2ppJdN
         55WmzQIpUdxRGHBgPE6gWhJq784U8BRSf1XACQoqAa6d0F8NezguIe1E7tQLcSgImiFn
         pQUO+Vvk566aVocTYeLhKQCc1FYvmw4GiExHq7+iAbG5aJbaxF/xoeJyIpafl0InKapM
         qSixV92eeDjviaLAqX37NmgBaG/ZP1TJQisk1tMWkSFvtz1NslxqkiNB/o8AL/Z/VdNs
         9dSPs6yeoP3oHMGGPcOR0HcqcXHOznDGcU4luM5Bu2qO4xgy6Ik5Czom3BeVmcxKgTz2
         osQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from;
        bh=D5MtYpfnMTsgLwXgSpRxzR5Icpf0JHJeSiWUQxZ3utw=;
        b=bv4C+gj3UJ9YqU8iLV+JTO4lrSt8qKLUvipzryEiHlXVjILaJmOOagJtVmLlBrf1Mk
         gm+kvj8HE2LrSiDP0RrCfFzvvhdDDZW8HzlWiaK26Z3jofV0zdOJtHmSZKl718KGvo+T
         LRV6YbXXa++BSfTn2dLyfiKhDrOIHcoqhpLv8PVDWce9w1wFfQhhoeCpKlG81FawYKnG
         k2CxvJr+tRIJFvGCdQ70MK0aWSEQ3DUjWhTaQHDb/BPMvZ7Iv3dRCCoXMbJ1MPI+wywY
         r0Q50NGXChOkrTvmT05ZM9KQ4OcgJx6AlrmItaPKjAGaqBHbidEOm/9RfklN+OlQag+c
         +FBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mhnd+zlJ;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D5MtYpfnMTsgLwXgSpRxzR5Icpf0JHJeSiWUQxZ3utw=;
        b=tVfs3Z1Gwge/gu6rIWKEDz4vmLMeE9GZnEU1aYdq8zZcsunJbtx/5T8qnZaulahZ6h
         qiBYRJCrTGbrq/S/2GVwee+n+G0mDXDIMl6/htNe5Kk6b2tIGf9flsMnAuqrwTmztl4/
         jhPD5T5m0oRMvbroQDCqDBl9J83bb00voVCForOliEDJ2mkY2+1cwFpfREWoMCDXOWOj
         fEwlm/UoZEIyHwelBkMn58Km6bTH90/Cz0XQmAzLSeHaEL7c7sU/NSHqI80m+bJ0lpBz
         3nvoZOQZVZ1yh5tgPHzJ7lPxxhwNra5xTSImic+tYq4pHc1rtouOjTzHRmqht8Q4IFqX
         QC2w==
X-Gm-Message-State: AOAM533SqPzwYTAyMc+WqPCs9FzGvFB8hDZRcVMY3MTi4N/Q2LkTi9lA
	eZOAbFaLrmoyRMHQWCzRLYg=
X-Google-Smtp-Source: ABdhPJwliylNxFXxac+U1oUfMc/SMAs4S7YTqpdRXWrKN8Q8sTulPCINYVw5brO/H7vtV12TtCQ6sg==
X-Received: by 2002:a25:f206:: with SMTP id i6mr23592514ybe.415.1590867133103;
        Sat, 30 May 2020 12:32:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8684:: with SMTP id z4ls3741036ybk.4.gmail; Sat, 30 May
 2020 12:32:12 -0700 (PDT)
X-Received: by 2002:a25:3758:: with SMTP id e85mr17049305yba.93.1590867132789;
        Sat, 30 May 2020 12:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590867132; cv=none;
        d=google.com; s=arc-20160816;
        b=xBV/nPubKubc9/eNJJd2Jbe85ANltaigP8u0xdH77gGAHHZppHnQRkG4VzynEVKvYl
         eAfrIUdm5GjYKPUK2x6BXd0drKIVyneP/TVcyiIMOqiht65U9sdIJwJgO0nPOKjTD/wP
         eC1a0GgjoZ8+qJZhIAiM22nTRbcUT2sfWaaKOV3lw4fh6POKlLeUFG99DecK+YfMAt6E
         9pf90y/Sk4+kenwwSXlQYmNjq+/QEDyMIBphWXDlyHbJhdh72f2L3/bHfJ8A1yqbdLTx
         xc/tncNXUxpqOn5wdpxhhYYdGj9Rz3LrEpfkhc5vB+WkWEWesj4I8XKI/fNMhcQN1S2R
         aaFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=C/U+GpnB4+UpuMBp7wIvv91MuMec7rvhQ/wCdJvK5x0=;
        b=ylxv81zF2dZKLcRS9ryUw7MHTTNLgcz331fimqXVWaqn5wl60sQ2WdI5pXzRICJWr1
         mCymccx6mRnJFWXJe9hL65z2WQHqGeiGypYdFXNuQo2/PnPNhv2qhi1OjKQhfruFiGGq
         gg+K21AWwJPem4Mhkk3N0GSQqm8QhYJ/z1KH7ztjdOesV6n3BrPALjWHHW+bFbcrkqec
         mzWPv0op8jCrszByRDV6l+1XP39A7MN67IPzqu2WHfFqDZwOcV0+6RDLh39W8MEaWgF+
         Bzz8+EYADOhBfaSzQPePzyRwillMJbemf7utZUOYU6AuelsqfPsXx+Jc1ctCvHeH1KgC
         rlrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Mhnd+zlJ;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n63si399467ybb.1.2020.05.30.12.32.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 May 2020 12:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail.kernel.org (ip5f5ad5c5.dynamic.kabel-deutschland.de [95.90.213.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6CCD4207BB;
	Sat, 30 May 2020 19:32:11 +0000 (UTC)
Received: from mchehab by mail.kernel.org with local (Exim 4.93)
	(envelope-from <mchehab@kernel.org>)
	id 1jf7DF-003LJ8-AF; Sat, 30 May 2020 21:32:09 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jeremy Sowden <jeremy@azazel.net>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 1/2] staging: media: atomisp: fix stack overflow in init_pipe_defaults()
Date: Sat, 30 May 2020 21:32:07 +0200
Message-Id: <998be18f43c17b201495b3df427a40520398c44e.1590866796.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1590866796.git.mchehab+huawei@kernel.org>
References: <cover.1590866796.git.mchehab+huawei@kernel.org>
MIME-Version: 1.0
Sender: Mauro Carvalho Chehab <mchehab@kernel.org>
X-Original-Sender: mchehab+huawei@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Mhnd+zlJ;       spf=pass
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

From: Arnd Bergmann <arnd@arndb.de>

When building with clang, multiple copies of the structures to be
initialized are passed around on the stack and copied locally, using an
insane amount of stack space:

drivers/staging/media/atomisp/pci/sh_css.c:2371:1: error: stack frame size of 26864 bytes in function 'create_pipe' [-Werror,-Wframe-larger-than=]

Use constantly-allocated variables plus an explicit memcpy()
to avoid that.

Fixes: 6dc9a2568f84 ("media: atomisp: convert default struct values to use compound-literals with designated initializers")
Co-authored-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 .../media/atomisp/pci/ia_css_frame_public.h   |  6 ++---
 .../staging/media/atomisp/pci/ia_css_pipe.h   | 15 ++++-------
 .../media/atomisp/pci/ia_css_pipe_public.h    |  6 ++---
 .../staging/media/atomisp/pci/ia_css_types.h  |  6 ++---
 .../sdis/common/ia_css_sdis_common_types.h    |  9 +++----
 .../runtime/binary/interface/ia_css_binary.h  |  3 +--
 .../pipeline/interface/ia_css_pipeline.h      |  3 +--
 .../pci/runtime/pipeline/src/pipeline.c       | 13 ++++++---
 drivers/staging/media/atomisp/pci/sh_css.c    | 27 +++++++++++++------
 9 files changed, 46 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
index d822aa235ffe..96c86f0dc81c 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_frame_public.h
@@ -122,8 +122,7 @@ struct ia_css_frame_info {
 	struct ia_css_crop_info crop_info;
 };
 
-#define IA_CSS_BINARY_DEFAULT_FRAME_INFO \
-(struct ia_css_frame_info) { \
+#define IA_CSS_BINARY_DEFAULT_FRAME_INFO { \
 	.format			= IA_CSS_FRAME_FORMAT_NUM,  \
 	.raw_bayer_order	= IA_CSS_BAYER_ORDER_NUM, \
 }
@@ -185,8 +184,7 @@ struct ia_css_frame {
 		       info.format */
 };
 
-#define DEFAULT_FRAME \
-(struct ia_css_frame) { \
+#define DEFAULT_FRAME { \
 	.info			= IA_CSS_BINARY_DEFAULT_FRAME_INFO, \
 	.dynamic_queue_id	= SH_CSS_INVALID_QUEUE_ID, \
 	.buf_type		= IA_CSS_BUFFER_TYPE_INVALID, \
diff --git a/drivers/staging/media/atomisp/pci/ia_css_pipe.h b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
index 9c0c4ccf4571..bb0abf9bffb1 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_pipe.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_pipe.h
@@ -40,8 +40,7 @@ struct ia_css_preview_settings {
 	struct ia_css_pipe *acc_pipe;
 };
 
-#define IA_CSS_DEFAULT_PREVIEW_SETTINGS \
-(struct ia_css_preview_settings) { \
+#define IA_CSS_DEFAULT_PREVIEW_SETTINGS { \
 	.copy_binary	= IA_CSS_BINARY_DEFAULT_SETTINGS, \
 	.preview_binary	= IA_CSS_BINARY_DEFAULT_SETTINGS, \
 	.vf_pp_binary	= IA_CSS_BINARY_DEFAULT_SETTINGS, \
@@ -65,8 +64,7 @@ struct ia_css_capture_settings {
 	unsigned int num_yuv_scaler;
 };
 
-#define IA_CSS_DEFAULT_CAPTURE_SETTINGS \
-(struct ia_css_capture_settings) { \
+#define IA_CSS_DEFAULT_CAPTURE_SETTINGS { \
 	.copy_binary		= IA_CSS_BINARY_DEFAULT_SETTINGS, \
 	.primary_binary		= {IA_CSS_BINARY_DEFAULT_SETTINGS}, \
 	.pre_isp_binary		= IA_CSS_BINARY_DEFAULT_SETTINGS, \
@@ -91,8 +89,7 @@ struct ia_css_video_settings {
 	unsigned int num_yuv_scaler;
 };
 
-#define IA_CSS_DEFAULT_VIDEO_SETTINGS \
-(struct ia_css_video_settings) { \
+#define IA_CSS_DEFAULT_VIDEO_SETTINGS { \
 	.copy_binary	= IA_CSS_BINARY_DEFAULT_SETTINGS, \
 	.video_binary	= IA_CSS_BINARY_DEFAULT_SETTINGS, \
 	.vf_pp_binary	= IA_CSS_BINARY_DEFAULT_SETTINGS, \
@@ -108,8 +105,7 @@ struct ia_css_yuvpp_settings {
 	unsigned int num_output;
 };
 
-#define IA_CSS_DEFAULT_YUVPP_SETTINGS \
-(struct ia_css_yuvpp_settings) { \
+#define IA_CSS_DEFAULT_YUVPP_SETTINGS { \
 	.copy_binary	= IA_CSS_BINARY_DEFAULT_SETTINGS, \
 }
 
@@ -157,8 +153,7 @@ struct ia_css_pipe {
 	unsigned int pipe_num;
 };
 
-#define IA_CSS_DEFAULT_PIPE \
-(struct ia_css_pipe) { \
+#define IA_CSS_DEFAULT_PIPE { \
 	.config			= DEFAULT_PIPE_CONFIG, \
 	.info			= DEFAULT_PIPE_INFO, \
 	.mode			= IA_CSS_PIPE_ID_ACC, /* (pipe_id) */ \
diff --git a/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h b/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
index 17b0941382bf..4affd21f9e3f 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_pipe_public.h
@@ -149,8 +149,7 @@ struct ia_css_pipe_config {
 /**
  * Default settings for newly created pipe configurations.
  */
-#define DEFAULT_PIPE_CONFIG \
-(struct ia_css_pipe_config) { \
+#define DEFAULT_PIPE_CONFIG { \
 	.mode			= IA_CSS_PIPE_MODE_PREVIEW, \
 	.isp_pipe_version	= 1, \
 	.output_info		= {IA_CSS_BINARY_DEFAULT_FRAME_INFO}, \
@@ -203,8 +202,7 @@ struct ia_css_pipe_info {
 /**
  * Defaults for ia_css_pipe_info structs.
  */
-#define DEFAULT_PIPE_INFO \
-(struct ia_css_pipe_info) { \
+#define DEFAULT_PIPE_INFO {\
 	.output_info		= {IA_CSS_BINARY_DEFAULT_FRAME_INFO}, \
 	.vf_output_info		= {IA_CSS_BINARY_DEFAULT_FRAME_INFO}, \
 	.raw_output_info	= IA_CSS_BINARY_DEFAULT_FRAME_INFO, \
diff --git a/drivers/staging/media/atomisp/pci/ia_css_types.h b/drivers/staging/media/atomisp/pci/ia_css_types.h
index bac0a41add92..6e34d401f9df 100644
--- a/drivers/staging/media/atomisp/pci/ia_css_types.h
+++ b/drivers/staging/media/atomisp/pci/ia_css_types.h
@@ -392,8 +392,7 @@ struct ia_css_grid_info {
 };
 
 /* defaults for ia_css_grid_info structs */
-#define DEFAULT_GRID_INFO \
-(struct ia_css_grid_info) { \
+#define DEFAULT_GRID_INFO { \
 	.dvs_grid	= DEFAULT_DVS_GRID_INFO, \
 	.vamem_type	= IA_CSS_VAMEM_TYPE_1 \
 }
@@ -485,8 +484,7 @@ struct ia_css_capture_config {
 };
 
 /* default settings for ia_css_capture_config structs */
-#define DEFAULT_CAPTURE_CONFIG \
-(struct ia_css_capture_config) { \
+#define DEFAULT_CAPTURE_CONFIG { \
 	.mode	= IA_CSS_CAPTURE_MODE_PRIMARY, \
 }
 
diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h
index c92f5836059b..c2ec30b4abd4 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/sdis/common/ia_css_sdis_common_types.h
@@ -197,12 +197,11 @@ struct ia_css_dvs_stat_grid_info {
 
 /* DVS statistics generated by accelerator default grid info
  */
-#define DEFAULT_DVS_GRID_INFO \
-(union ia_css_dvs_grid_u) { \
-	.dvs_stat_grid_info = (struct ia_css_dvs_stat_grid_info) { \
+#define DEFAULT_DVS_GRID_INFO { \
+	.dvs_stat_grid_info = { \
 		.fe_roi_cfg = { \
-			[1] = (struct dvs_stat_public_dvs_level_fe_roi_cfg) { \
-				.x_start = 4 \
+			[1] = { \
+			    .x_start = 4 \
 			} \
 		} \
 	} \
diff --git a/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h b/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
index 560580023b29..b44099dbdacd 100644
--- a/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
+++ b/drivers/staging/media/atomisp/pci/runtime/binary/interface/ia_css_binary.h
@@ -144,8 +144,7 @@ struct ia_css_binary {
 	struct ia_css_isp_param_css_segments  css_params;
 };
 
-#define IA_CSS_BINARY_DEFAULT_SETTINGS \
-(struct ia_css_binary) { \
+#define IA_CSS_BINARY_DEFAULT_SETTINGS { \
 	.input_format		= ATOMISP_INPUT_FORMAT_YUV420_8_LEGACY, \
 	.in_frame_info		= IA_CSS_BINARY_DEFAULT_FRAME_INFO, \
 	.internal_frame_info	= IA_CSS_BINARY_DEFAULT_FRAME_INFO, \
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
index 1f4afd163ffa..18a7d18e197e 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/interface/ia_css_pipeline.h
@@ -57,8 +57,7 @@ struct ia_css_pipeline {
 	u32 pipe_qos_config;
 };
 
-#define DEFAULT_PIPELINE \
-(struct ia_css_pipeline) { \
+#define DEFAULT_PIPELINE { \
 	.pipe_id		= IA_CSS_PIPE_ID_PREVIEW, \
 	.in_frame		= DEFAULT_FRAME, \
 	.out_frame		= {DEFAULT_FRAME}, \
diff --git a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
index 29207fe120a0..4b8e85bc2122 100644
--- a/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
+++ b/drivers/staging/media/atomisp/pci/runtime/pipeline/src/pipeline.c
@@ -665,6 +665,8 @@ static int pipeline_stage_create(
 	return err;
 }
 
+static const struct ia_css_frame ia_css_default_frame = DEFAULT_FRAME;
+
 static void pipeline_init_defaults(
     struct ia_css_pipeline *pipeline,
     enum ia_css_pipe_id pipe_id,
@@ -677,10 +679,15 @@ static void pipeline_init_defaults(
 	pipeline->stages = NULL;
 	pipeline->stop_requested = false;
 	pipeline->current_stage = NULL;
-	pipeline->in_frame = DEFAULT_FRAME;
+
+	memcpy(&pipeline->in_frame, &ia_css_default_frame,
+	       sizeof(ia_css_default_frame));
+
 	for (i = 0; i < IA_CSS_PIPE_MAX_OUTPUT_STAGE; i++) {
-		pipeline->out_frame[i] = DEFAULT_FRAME;
-		pipeline->vf_frame[i] = DEFAULT_FRAME;
+		memcpy(&pipeline->out_frame[i], &ia_css_default_frame,
+		       sizeof(ia_css_default_frame));
+		memcpy(&pipeline->vf_frame[i], &ia_css_default_frame,
+		       sizeof(ia_css_default_frame));
 	}
 	pipeline->num_execs = -1;
 	pipeline->acquire_isp_each_stage = true;
diff --git a/drivers/staging/media/atomisp/pci/sh_css.c b/drivers/staging/media/atomisp/pci/sh_css.c
index 31a13a486b70..9c754e29fa00 100644
--- a/drivers/staging/media/atomisp/pci/sh_css.c
+++ b/drivers/staging/media/atomisp/pci/sh_css.c
@@ -2231,10 +2231,17 @@ create_host_pipeline(struct ia_css_stream *stream) {
 	return err;
 }
 
+static const struct ia_css_pipe default_pipe = IA_CSS_DEFAULT_PIPE;
+static const struct ia_css_preview_settings preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
+static const struct ia_css_capture_settings capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
+static const struct ia_css_video_settings video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
+static const struct ia_css_yuvpp_settings yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
+
 static int
 init_pipe_defaults(enum ia_css_pipe_mode mode,
 		   struct ia_css_pipe *pipe,
 		   bool copy_pipe) {
+
 	if (!pipe)
 	{
 		IA_CSS_ERROR("NULL pipe parameter");
@@ -2242,14 +2249,14 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
 	}
 
 	/* Initialize pipe to pre-defined defaults */
-	*pipe = IA_CSS_DEFAULT_PIPE;
+	memcpy(pipe, &default_pipe, sizeof(default_pipe));
 
 	/* TODO: JB should not be needed, but temporary backward reference */
 	switch (mode)
 	{
 	case IA_CSS_PIPE_MODE_PREVIEW:
 		pipe->mode = IA_CSS_PIPE_ID_PREVIEW;
-		pipe->pipe_settings.preview = IA_CSS_DEFAULT_PREVIEW_SETTINGS;
+		memcpy(&pipe->pipe_settings.preview, &preview, sizeof(preview));
 		break;
 	case IA_CSS_PIPE_MODE_CAPTURE:
 		if (copy_pipe) {
@@ -2257,11 +2264,11 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
 		} else {
 			pipe->mode = IA_CSS_PIPE_ID_CAPTURE;
 		}
-		pipe->pipe_settings.capture = IA_CSS_DEFAULT_CAPTURE_SETTINGS;
+		memcpy(&pipe->pipe_settings.capture, &capture, sizeof(capture));
 		break;
 	case IA_CSS_PIPE_MODE_VIDEO:
 		pipe->mode = IA_CSS_PIPE_ID_VIDEO;
-		pipe->pipe_settings.video = IA_CSS_DEFAULT_VIDEO_SETTINGS;
+		memcpy(&pipe->pipe_settings.video, &video, sizeof(video));
 		break;
 	case IA_CSS_PIPE_MODE_ACC:
 		pipe->mode = IA_CSS_PIPE_ID_ACC;
@@ -2271,7 +2278,7 @@ init_pipe_defaults(enum ia_css_pipe_mode mode,
 		break;
 	case IA_CSS_PIPE_MODE_YUVPP:
 		pipe->mode = IA_CSS_PIPE_ID_YUVPP;
-		pipe->pipe_settings.yuvpp = IA_CSS_DEFAULT_YUVPP_SETTINGS;
+		memcpy(&pipe->pipe_settings.yuvpp, &yuvpp, sizeof(yuvpp));
 		break;
 	default:
 		return -EINVAL;
@@ -8769,12 +8776,16 @@ sh_css_init_host_sp_control_vars(void) {
 }
 
 /*
-    * create the internal structures and fill in the configuration data
-    */
+ * create the internal structures and fill in the configuration data
+ */
+
+static const struct
+ia_css_pipe_config ia_css_pipe_default_config = DEFAULT_PIPE_CONFIG;
+
 void ia_css_pipe_config_defaults(struct ia_css_pipe_config *pipe_config)
 {
 	ia_css_debug_dtrace(IA_CSS_DEBUG_TRACE, "ia_css_pipe_config_defaults()\n");
-	*pipe_config = DEFAULT_PIPE_CONFIG;
+	memcpy(pipe_config, &ia_css_pipe_default_config, sizeof(*pipe_config));
 }
 
 void
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/998be18f43c17b201495b3df427a40520398c44e.1590866796.git.mchehab%2Bhuawei%40kernel.org.
