Return-Path: <clang-built-linux+bncBAABBSXX32AQMGQEXRBTYZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D853251DC
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 16:01:31 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id 22sf4188294qty.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 07:01:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614265290; cv=pass;
        d=google.com; s=arc-20160816;
        b=E8gMKOkIFCKUcrXwhCPSck6Dcd/cz4yURtOGa+lBw0/f9yXohC0K4VZdGAzGBw5tdb
         CPKXI01Cvp6T3naWc7HcXYyOLmSNC3PWfN/KDJzl6+UN0OFfvyT7uerrsw9mXclufMRj
         N10FpftXeonJRsnTE5BwvYTIncN0UmO2JAqPDZ2JHNQNFvTk1ukcWIEAjG90RT+oDTIN
         7JyR2eTe4TfL4xxTW4huXXoUdX88uyG50VKg7ACIZsuJ3eXpMNLqVNF5p9YqTMF/jCfh
         nb0Z4Rn5mDENusX5WZJrsaxPM3ix06JlW5/+BlKHcVpYxfRbHFFy4zWl2pxCI7rJntUf
         k3Rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=lSi8GHF3C/DFqdNmwYQJoIQ/l7CG7RM0xXdNOpnEX0Y=;
        b=JyWGNGtKEsFf/fLkH1XfsYP1XQgwawmWKzLp8IAuaDPqmRpbnTf004ZTDpawy86q6g
         kgFskFfNQbsmyR7BCVwSZm08Y0XmAZG4twAljj4gEJj1BkjTQkMvNBpWyWnfE+XZYM6n
         19Kk+zwguZoMhoDOMS5p8T8eoCuBHvT6q+Ioi3GtLRsjocLxNcmV/ebhgqysk0GbNuD1
         YOriFJRx6ErN9tICElue9m8SYeGJfKzk9qYw3OVfcqZkrRquvyJsWA+mygwW3ozDx9RO
         x61BIow5bKGT6JrFAbKSDJOjVOU0wsYjantNOe6C2MadxrVWk93HUm1O/qYIiE3XeX1s
         DCbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jYFhNaZb;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lSi8GHF3C/DFqdNmwYQJoIQ/l7CG7RM0xXdNOpnEX0Y=;
        b=jltGlJIjFg9bagY/sYwMfcjBrRFITwu40cLRq4La6o3VzgFhHy3xgNr/e9WJgbYeIa
         SC5QUIZpGIZBn2yMQoTdu70LdYLF6XGuEndEIyVkMLS2GxcCcb2hb5q6ylWVC4T5fE4K
         JcG/r7CIQ/73/1I9mGxfkum1JX8eljU5vomWm0q5n8nSE19HgXOSWCn+rWyRGTS75FPX
         y7zz02z9/76eoOTdbUrG7wujc5OKsr3Zk9j78rz5EOilHzFKbIPAbtS1powrNW5zDWGH
         2i4GNTRVE/Z1ZeEhQjAVJA802KxX2AhxAs50KfkwZUjv7uD6Emgduh0fnwaMknkdRFPy
         jRMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lSi8GHF3C/DFqdNmwYQJoIQ/l7CG7RM0xXdNOpnEX0Y=;
        b=nFh/0XaW/XRlCmIWiOZ2pN9fHlWQrLNyRyr8/WICiYqFKy5ehT3zaU7NDIQLn8hHb+
         ZcH3+kfm1sEKj81YSuToOGEFQi5m+C+o7qfaNg4qW4Fc/WXkga/BnzNVcRIlXbsnQ3LE
         c3Me6iXbqDEpaQviATg8MuaibTRvKBE9RJX4b5RMAUOlyVofZ/5UEOAYU1JaLe9bjEyP
         EwcNhWNSrHLBMYW1W5QI3vuJcrKWlpSxmrG9YnHZ39swOsfNNuqaXlvNpnutcWunN6ng
         c1aE7FsJ4knAb1tlZUtEd1CdLnvq9IJGyDqeNcvLcrK0eEFPZSCdxJHQ8bpBjAR1XzvL
         3TlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NVyrbcYxW8Rwl44Ij2E8Tzgx9xr+J0/h64xOs9JxFXLtiDape
	KpxBbFd2Yy5OMeACJju13Lc=
X-Google-Smtp-Source: ABdhPJwLZCByJacXnV72ZuAAWawuRMoHADaCpInjZvHyJJW6qkLoWCYN2mvgw7EocpslTCr+2gq1/g==
X-Received: by 2002:a05:620a:88e:: with SMTP id b14mr1946033qka.166.1614265290203;
        Thu, 25 Feb 2021 07:01:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4682:: with SMTP id g2ls2221603qto.11.gmail; Thu, 25 Feb
 2021 07:01:29 -0800 (PST)
X-Received: by 2002:ac8:6683:: with SMTP id d3mr2734604qtp.228.1614265289792;
        Thu, 25 Feb 2021 07:01:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614265289; cv=none;
        d=google.com; s=arc-20160816;
        b=TsAmPo0EbscH2VAjYVoMylq1bIF9JXHEmqizfqpi4F7V2rRqrysQSt8ARcPC3vaNj7
         +iimMfLHUOjGPXr/a/JdHGQHP4QaakLhag3FK4/p4L424Mxjck31HlLd0kgbvKGLDy4G
         hvk6y2nFOjFFZ+JRfFwC4PGMWCFbYkhNxIJ9UpiBlzShJpkLrkfWAv483XlV9nSdGiYK
         5YaL0R6IXt6q3WHzRv4wi85j6mUKWmHqHjMCQDCZqBclL4NtYDFeGFb/yHfVmh2m7f6i
         jKsd6+ASGWqJcD0yIDLenHeekwTJR/mX2Uft/czdw+0ctj2QliqhhPLlgBS/FjdoWXe/
         J2cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=RSiMkQQAD4g37YIV2XairHN4MTTyveFbUEB68NNJT90=;
        b=I0cbCTiLwXDsCcpohRRNgxWbad17VhLdnSu4qeSj/e6TMqiwiWGS93mql2zRjtDsrz
         E2xbsm1RtCIDkgzw2/dEGq3lhbatPrr8OWneyHgT68q6iSy9lNE7s9zbbYflRswN9pr2
         VBYzOlGJ0qYNv4R3pWJHNu5t8xXUoVpeF5B5IeIiD2UETf4e2YC+WdsS+5ys+34w2FpP
         GolxSDQ9O3Z+qWbEIt5HyV5PvilSzZlv50SuW/lupqlP86cOGkDzMC+Lirzf2oaGReNx
         dLOFdGYFRVkHkAhKKEdAUyQGLms6mcd8NBN1mQohNfTQCQpLgxrjVQ7f6wfeMAdsfzNE
         8Wmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jYFhNaZb;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d12si239048qkn.0.2021.02.25.07.01.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 07:01:29 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DB3B764EC3;
	Thu, 25 Feb 2021 15:01:22 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>,
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
	Aurabindo Pillai <aurabindo.pillai@amd.com>,
	Stylon Wang <stylon.wang@amd.com>,
	Eryk Brol <eryk.brol@amd.com>,
	Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>,
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>,
	Simon Ser <contact@emersion.fr>,
	Qingqing Zhuo <qingqing.zhuo@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] drm/amd/display: Fix an uninitialized index variable
Date: Thu, 25 Feb 2021 16:01:02 +0100
Message-Id: <20210225150119.405469-1-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jYFhNaZb;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

clang points out that the new logic uses an always-uninitialized
array index:

drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:9810:38: warning: variable 'i' is uninitialized when used here [-Wuninitialized]
                        timing  = &edid->detailed_timings[i];
                                                          ^
drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:9720:7: note: initialize the variable 'i' to silence this warning

My best guess is that the index should have been returned by the
parse_hdmi_amd_vsdb() function that walks an array here, so do that.

Fixes: f9b4f20c4777 ("drm/amd/display: Add Freesync HDMI support to DM")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c    | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
index b19b93c74bae..667c0d52dbfa 100644
--- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
+++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
@@ -9736,7 +9736,7 @@ static bool parse_edid_cea(struct amdgpu_dm_connector *aconnector,
 	return false;
 }
 
-static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
+static int parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
 		struct edid *edid, struct amdgpu_hdmi_vsdb_info *vsdb_info)
 {
 	uint8_t *edid_ext = NULL;
@@ -9746,7 +9746,7 @@ static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
 	/*----- drm_find_cea_extension() -----*/
 	/* No EDID or EDID extensions */
 	if (edid == NULL || edid->extensions == 0)
-		return false;
+		return -ENODEV;
 
 	/* Find CEA extension */
 	for (i = 0; i < edid->extensions; i++) {
@@ -9756,14 +9756,15 @@ static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
 	}
 
 	if (i == edid->extensions)
-		return false;
+		return -ENODEV;
 
 	/*----- cea_db_offsets() -----*/
 	if (edid_ext[0] != CEA_EXT)
-		return false;
+		return -ENODEV;
 
 	valid_vsdb_found = parse_edid_cea(aconnector, edid_ext, EDID_LENGTH, vsdb_info);
-	return valid_vsdb_found;
+
+	return valid_vsdb_found ? i : -ENODEV;
 }
 
 void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
@@ -9781,7 +9782,6 @@ void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
 	struct amdgpu_device *adev = drm_to_adev(dev);
 	bool freesync_capable = false;
 	struct amdgpu_hdmi_vsdb_info vsdb_info = {0};
-	bool hdmi_valid_vsdb_found = false;
 
 	if (!connector->state) {
 		DRM_ERROR("%s - Connector has no state", __func__);
@@ -9857,8 +9857,8 @@ void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
 			}
 		}
 	} else if (edid && amdgpu_dm_connector->dc_sink->sink_signal == SIGNAL_TYPE_HDMI_TYPE_A) {
-		hdmi_valid_vsdb_found = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
-		if (hdmi_valid_vsdb_found && vsdb_info.freesync_supported) {
+		i = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
+		if (i >= 0 && vsdb_info.freesync_supported) {
 			timing  = &edid->detailed_timings[i];
 			data    = &timing->data.other_data;
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225150119.405469-1-arnd%40kernel.org.
