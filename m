Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB3FD2LWAKGQEGYGEUIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53c.google.com (mail-ed1-x53c.google.com [IPv6:2a00:1450:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B89C87B9
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Oct 2019 14:02:52 +0200 (CEST)
Received: by mail-ed1-x53c.google.com with SMTP id w12sf10728817eda.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Oct 2019 05:02:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570017772; cv=pass;
        d=google.com; s=arc-20160816;
        b=DxUd1dRQucWur+TVpNgmaGKCSEN8y+gZKmel2SIk7hLUPedr3k9pGAVSk93REmONLQ
         tZNh9ekw6DracqgJHrXcXe6abnvKKcF7SUwv5TusQ4/gzSAa1wD4hswICHKgAabaptSv
         z3M7+0YkqeRuyZmAi38pSE7APMWvVmyvBw0QFiscs5YBoSotJCpvsJgDMkCbDBsj/z84
         wqu1naEexYNs3K4q7sSv7U0xZGTIyxE5GljCf+8f/t5x3wOzrpjOqKI2i0lACWPn59Cc
         IGXCM2FnofSo7mZbwv35jUqqa1DZJj+OhfCdgYB7AnUSqm/0XWp6DKjGUGgvjFUmpi9U
         5oJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AsEbHhhiKc6e4DXuxS+GC/lg+zRvczujOTt1zBuLWgQ=;
        b=riVXglUNYVDuIrZfPD0XGS7UGPtijrVI1mI/Pl9SNYlzzyzw4lHLqttmSnNMCCkxca
         HK4fadv+KVbNwJ1MHEvCkRvaUIRyFuAL3e1yLG6lmfbM65RDBMyaSkL7vwyxpiW2Hp+j
         9eR2ywXQmul0ruw38P4d2FuMhT07WTumsHtOGKd2VisObJcZKKBWkZ+qfkNDTJSIpLxL
         dpE8XGflzu7w8dQwWJOmH4//UOV4bbcmLouM8G6cMnmg8ahDVF6BtS+ec+/z12pUuSx3
         Pu1fSOp/NJwUU5Da15YX5OVP91HfAuO5CS82ZGLBTMHXCJkE+5KvqkqE4OkCmrBahDPp
         AvMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsEbHhhiKc6e4DXuxS+GC/lg+zRvczujOTt1zBuLWgQ=;
        b=tVOYDLPx59cjwhnhNkEo0YwiqNOcvFpisC2uuVmAzmxdbT1reJ32+Pzv0oMekuUr4f
         4FYW5Kdq7CD6f5DfejR71pxsIcsGp9u9+RTH1tCE5aQzHzPBj6lWhvp3atkOyFnBAiic
         LfNDtmIC8f95OTJtTx6tBRMUTTVyXe8+dmvSM3jVbNyZMUcEfRPDyUUq+fmdW+Zzhq/q
         Y/H7O8c6HrMm2g1XhjA22FP2ab/DKKab+23DQEmFoLHfUggywELWC2PAIdDNmmBhfnxo
         CsM7SgKCR1KwThNhCsR+49hCkC0vOiJDWVvNYHBon1EYqUIe6Mpqr3VOSzOE6w8OCp9n
         hjcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AsEbHhhiKc6e4DXuxS+GC/lg+zRvczujOTt1zBuLWgQ=;
        b=r5HFkCfh8Y5l96R6cvq4J/CxvBcAXpPG3P0E1mh35KjFdZd3aSX9woBtYgL/kLnZdf
         AGjOfpnvEwW3wxjNo2dcHaIQ1FxT1WVqDyhdcwfOR7sIOxCZHtSxpmva0LIa17JrYp79
         r92ar6etg52ed/Ax0v/jLgOsqV/MBqS1w/RWJKLn7cSs1mxGx7D1WbVszfWPmwGShB1Q
         Fj0+WXOZXaYBBs3bK6pdSdjFs4waq5LuWEU6pywo47ibrinArWQGf7e83F6FrwiDumwH
         CLOooZtvc9qFDZII0RmyxcGk8mOIW0wyzUYIkcDe7eyOJwGtW0VWkpcshfwhKOo8qUex
         aKvw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWsmKj/0TUUcWLrm/Fhniu9ilhGzR/1lbODbrrTOwccDQN+G3Dm
	7yqNdxYOSeXYCr1Tp9+dsrI=
X-Google-Smtp-Source: APXvYqzwuZDBvWIGEBrISDsFeTfTiZ+32OnDLQPifJurdkNv4ktZUKBoancwwib7+5AiJxNKcBjAkw==
X-Received: by 2002:a05:6402:1583:: with SMTP id c3mr3351883edv.286.1570017772308;
        Wed, 02 Oct 2019 05:02:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:cfc3:: with SMTP id i3ls498407edk.9.gmail; Wed, 02 Oct
 2019 05:02:51 -0700 (PDT)
X-Received: by 2002:aa7:df8e:: with SMTP id b14mr3332420edy.65.1570017771876;
        Wed, 02 Oct 2019 05:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570017771; cv=none;
        d=google.com; s=arc-20160816;
        b=fNSCVrq2wJQRrrl6G3gkjvl0vWhEyqCf7HeY7CAddq6qqRD4VlvpYVeFvor2URlZUh
         c49qrVIrWCmkmhaOIo9zQ+ucWrKp+d2Z6Xr2EXCR3DetjKvY+11OZy0DD6GSt8AB+PaH
         GQ1NUqW56b4UkvXphH0tBL2Oo5Q22Pi9mu9vBEqpW70Ciyl9TnJMuZrd5aXMo6FCCfZ6
         DIsVP2qPw+UlE9NLWwDWBrb8klAX0txR4pGb6MHeqYM23jr1r+i24qSqWfOTHtkcL29u
         PyMT2FS2Mbo89faTSO/Zon6qvrH7dUcFnfFX2c2UFqEsZWhDS7saBDtLIcI3fR1pFpvE
         e51g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=0DhDzISlFC0tr3bP+kfYIUV2Q7xgXOElc0fWnMU9BhU=;
        b=bxMLLO5LEpNAvarRXcG7ZjgGevuWhVd3a2YrOI6PaNVzZDe1lwN2Yjd92ve/g+LcVf
         m7vhcsRKGtgeDfIvI3GviLnRXTAKHfWFVM/FDQlAW44pdgJf98F/3vfiTbKTdypCqq4+
         +HxVcx0YLMAjsxGxhwkm1MfHac8u7fEgfdxFPWJuc7y/Gpk3BRYb4LU/EoiIS2I1ktkp
         P5tZsSRCW1+3IWGoCVhKI85E3x5kH+fz9a/jgPRs1B7zJU1ka9bCc7R6SF6LtSwK6cGC
         KbfDtjw7CGvKSXIT/X5GTKYH2uuK+D660UvevKA7RNHdbX9ePaEm9Lz3W6zp+WVbJesg
         ZeKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.131])
        by gmr-mx.google.com with ESMTPS id q8si999472edn.5.2019.10.02.05.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Oct 2019 05:02:51 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.131 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.131;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N6srH-1i4Jx02kQB-018Nqd; Wed, 02 Oct 2019 14:02:49 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Alex Deucher <alexander.deucher@amd.com>,
	Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: clang-built-linux@googlegroups.com,
	amd-gfx@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Arnd Bergmann <arnd@arndb.de>,
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
Subject: [PATCH 3/6] drm/amdgpu: display_mode_vba_21: remove uint typedef
Date: Wed,  2 Oct 2019 14:01:24 +0200
Message-Id: <20191002120136.1777161-4-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191002120136.1777161-1-arnd@arndb.de>
References: <20191002120136.1777161-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:oBjKGQ3jYf0A2J2ocemwNHrJLF3mvVMEn6zOLTNAGubueuLRYyk
 BpOHFj8UwLoAn+bAxDpM0Us8z6MwyTwhFaeTAJtXgpd1gN2qJVEkpNfIB76daOLbh6I9g1g
 ahi1mLhjBji4qSGK5wctAS/ZXegSzGKfel5KNAxFR+4Ew0SuQO7JYnxKngDUC1t/3w0hgkw
 0QdnYpJY4kkYs3R/f4iCg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:eSQ5Yr5a9oE=:9FRtoMlN7bwSrOG9f5YY1I
 bpZ3Qlyhsku0LcpbDJu5j1GigQk6vUWd/VoWhAWdlLLxtXK+BCdOiQtpfBiQFZdP8FLJ26cuR
 kV5qGa3w8U+kaC94DSFBi0lHTB2sNsHBjsd2p8WvqTLIZwirBsTcidrQkvC2sa1DPz0RHHLd8
 U9Vnvws8HuDgF+P7zwa3qcikMwSX3nStW4yO3wtkWdKwr6Uglr1x0i8/QF3LCtLtK4FEzrZVg
 bM4cQCIHQZpPin18GxcI5pwvpk2Qgoml/0vjZaUvLxFLn2V4iCWTtG43DqQmNKwH+Uu5EPbFE
 XKXWZUhX8b8lTqAqeEI30b2ahQc932Gp2k9HLD4BRhgWp8Ig9EQRTUgQKWSsTHSTnQtU1cNv+
 4wMcWJOh0Doxtl6hUiJzmGCWOFc2YYIcQ9ELhsb9uoUBPdrVP4Cjrk1ffgCIZs6HhA7bvk7NE
 EZVguXf2MjBwrvsRdR3dXp5q2dELksAz89Tywytd8DQjNspuSufMllFGCsbJxVOgVSEnevN5g
 fKYidaTAnk8c1QQo9w9YM1DRwbCfHfDbJUTn+5ROSNw8cDuvGt7AjNVZUyBKhRUS3S6hrk7I5
 34ybrIVzQiMV1ahqKIPXzQ0zPNdkHLSJNEc5Zt0ixZByldmxHwcytbpqPiVd3k++zjnk1lmAh
 Cmv0SEdjvSfss1GwwRbvWZi8aTQH32JG2l9zkRPg7Dnv9F3dDWn4s9meRO7HnvAqZHffcxad3
 vMQ1fsnJ20Ma1FOm07EGM6aLkWoypGrNlbx+lKhhjGOg0kBUxqdy1pVidgfcwS403HhTEwiuL
 BlKxnY8Yx/kkAUL/1tXVJvhmg2XNXfg78iWD6M/9MmC8aZWKvP915zIr6FNADpRBtcjNi4JOp
 8nnSZfI7XGVLOMcy5tjQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.131 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

The type definition for 'uint' clashes with the generic kernel
headers:

drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn21/display_mode_vba_21.c:43:22: error: redefinition of typedef 'uint' is a C11 feature [-Werror,-Wtypedef-redefinition]
include/linux/types.h:92:23: note: previous definition is here

Just remove this type and use plain 'unsigned int' consistently,
as it is already use almost everywhere in this file.

Fixes: b04641a3f4c5 ("drm/amd/display: Add Renoir DML")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../amd/display/dc/dml/dcn21/display_mode_vba_21.c  | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/dml/dcn21/display_mode_vba_21.c b/drivers/gpu/drm/amd/display/dc/dml/dcn21/display_mode_vba_21.c
index 46cda85d3d63..998970e2f84c 100644
--- a/drivers/gpu/drm/amd/display/dc/dml/dcn21/display_mode_vba_21.c
+++ b/drivers/gpu/drm/amd/display/dc/dml/dcn21/display_mode_vba_21.c
@@ -39,9 +39,6 @@
  * ways. Unless there is something clearly wrong with it the code should
  * remain as-is as it provides us with a guarantee from HW that it is correct.
  */
-
-typedef unsigned int uint;
-
 typedef struct {
 	amdgpu_dc_double DPPCLK;
 	amdgpu_dc_double DISPCLK;
@@ -4774,7 +4771,7 @@ void dml21_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_l
 				mode_lib->vba.MaximumReadBandwidthWithoutPrefetch = 0.0;
 				mode_lib->vba.MaximumReadBandwidthWithPrefetch = 0.0;
 				for (k = 0; k <= mode_lib->vba.NumberOfActivePlanes - 1; k++) {
-					uint m;
+					unsigned int m;
 
 					locals->cursor_bw[k] = 0;
 					locals->cursor_bw_pre[k] = 0;
@@ -5285,7 +5282,7 @@ static void CalculateWatermarksAndDRAMSpeedChangeSupport(
 	amdgpu_dc_double SecondMinActiveDRAMClockChangeMarginOneDisplayInVBLank;
 	amdgpu_dc_double FullDETBufferingTimeYStutterCriticalPlane = 0;
 	amdgpu_dc_double TimeToFinishSwathTransferStutterCriticalPlane = 0;
-	uint k, j;
+	unsigned int k, j;
 
 	mode_lib->vba.TotalActiveDPP = 0;
 	mode_lib->vba.TotalDCCActiveDPP = 0;
@@ -5507,7 +5504,7 @@ static void CalculateDCFCLKDeepSleep(
 		amdgpu_dc_double DPPCLK[],
 		amdgpu_dc_double *DCFCLKDeepSleep)
 {
-	uint k;
+	unsigned int k;
 	amdgpu_dc_double DisplayPipeLineDeliveryTimeLuma;
 	amdgpu_dc_double DisplayPipeLineDeliveryTimeChroma;
 	//amdgpu_dc_double   DCFCLKDeepSleepPerPlane[DC__NUM_DPP__MAX];
@@ -5727,7 +5724,7 @@ static void CalculatePixelDeliveryTimes(
 		amdgpu_dc_double DisplayPipeRequestDeliveryTimeChromaPrefetch[])
 {
 	amdgpu_dc_double req_per_swath_ub;
-	uint k;
+	unsigned int k;
 
 	for (k = 0; k < NumberOfActivePlanes; ++k) {
 		if (VRatio[k] <= 1) {
@@ -5869,7 +5866,7 @@ static void CalculateMetaAndPTETimes(
 	unsigned int dpte_groups_per_row_chroma_ub;
 	unsigned int num_group_per_lower_vm_stage;
 	unsigned int num_req_per_lower_vm_stage;
-	uint k;
+	unsigned int k;
 
 	for (k = 0; k < NumberOfActivePlanes; ++k) {
 		if (GPUVMEnable == true) {
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191002120136.1777161-4-arnd%40arndb.de.
