Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBT5FXD3AKGQE34SXJRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 025A01E39EE
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 09:12:17 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id v203sf12696361oie.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 May 2020 00:12:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590563536; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRvDJ3zoOLATMSpkJ9boiW/KmKdwW8l/TsKuHTU21hHwLrfq5RylYKWVyLItXKoYUk
         2ycpra7RZrDQj7GbCIQpjgKUuJZOR90fo8kNWvwtbXNb/dEkFwsbpJg8TwfUxn3ycEoj
         mJICqfLANMMCmAjkinQTvXPEkwODunLRrz5Ljqs7bEsPyIb+qqpbQwETqNCKQMvYGWH3
         N4pakoApfTqM1yFbkcN/rGBUIw7iXbP+Ast/hVljuDdaTG3+0pcjQApWuPeuLI4RGEmk
         FGB9MgC4jSdn0QCnI3Q5/RuPOQbgKg2sawUFDcpeJq01RVBEmE++HaElvD7pZi2HXO3h
         fWCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=PhQkC0KGOMyCoMJeil2PVSUWrcqL8yQqFM/ou1ZtVeY=;
        b=s8fpIYJEYHTHlQ8w7ZFYkaLziqKt2gMBpVVJJumZjaf4cqv1/1UbMvSx7JQ7/w9EPH
         xG9Eo3CbhTdSy2GP7rwMk95dbeVJw1F2/ovZee7bPTnos5bYsBmwfG03BJZuvy6AUr2n
         Im9NaxAMECF4Ev2NyZwz1BP2n2Mq5YVAwC91bOoijcPXr4SVe3exoZGdB0DXo9emXpfG
         VAExJNAf3ky+3aJsXhIfDSNllqAIPJaqgbsj9WvBdrCHG2w+G2Iqs2dW3d5JFC8ta8uy
         SM7dw791JdKSl9jSmVihNR7UtJJB1uh9vB1mUnQ7OozKb4cnSfxlRAxo9SphntOdYNPg
         +NPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TF+ZnVGl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhQkC0KGOMyCoMJeil2PVSUWrcqL8yQqFM/ou1ZtVeY=;
        b=Y8FHVRJUZ1uWR1j1tkq7R7lzzDfr8sFnKZvaI8j/JCqcqojqjnPuK3C6G8cXnjjDHh
         2LLZIeRdlfR3GXI8kh8Hq+2JCrV2U06xOhZUODdmxdUKIckenKRTEOLMMCRihrmfFr3Y
         Hhkgcgy5QF4R6x8Z6E64k5Ih3Kn0dUNKNEiYAs//NftJ9EulYQ69QaKUJlpG8VZD9Bc2
         E007hzkiE4UPXdPSx+v1qci5018cWp6QXI2u8XBGPanyHTlOm5HcfNzOsmZG090o5qC2
         ENuHl/OsjfjGrV+icLxsH7N94JskRyT2cohf8BxQgPD3aLQhdAnxcH7yBSY8hI5OR9yF
         45yQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhQkC0KGOMyCoMJeil2PVSUWrcqL8yQqFM/ou1ZtVeY=;
        b=YwVKt6iQs1dOZ0rNO2K7dZAhPyM6efIJOGG8ovSz+UYiwc3ZNxHdD7TpQDQVvV4t/I
         Pq1EVNwvPj5FDMUUHBGxYBuPn7XhBa24ExoPslgQPa82ilYPhsZqpnBfSaptEemuVl8E
         mej/kZ33RlMVAYnZXexcGvsLXfjHLfAa4FIpLeu4n+o2GIdh9RX4HyXAlfasntPOL/+0
         DHHos2zrRIcyXSfVdTM5bxm5d0Zy4CG9g+EBj4ROTuKLbu5NnVWSyFNl/TmoAtxk/1qa
         Ix0CaFMnMpJ1OLKJineK/x4oFG9TSHLkVzWPHVR/4ev3xYneiFgbXXiYt2UBxS3yES8Y
         0DJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PhQkC0KGOMyCoMJeil2PVSUWrcqL8yQqFM/ou1ZtVeY=;
        b=RuDAWIb0S8qSpmGFhHsQUEXMqLBYr4i9WwAvJGB/ZJIWoeNq7gnIqT1vD85qMrVvX/
         exEaXT1Qw728i4czL97rKeYJKY7/zmnexCIhgKf7ba2GXuY55bkS8+LU9ZSJIyPLXaVX
         zMlUOa+0bXszhkbjaz7u193R2He5Slz9zL11DuzQYXehAfqdyFE0uNPQmp6/bIf+/n9J
         n57cl9cafQmqi82r2U2qyaE6b2g4MQP/JwdaJSiYNtjYccD8njknJvEiuXOxH/1bJeG/
         emPfnocsqlBhGvvhSX6wonGYchofN+VL/KLHMKQBMmjesQt7mHUEQZEV95FHt1O+OT9C
         u4BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lApVa4OI8+qrMQ6vetwf3cIOyqxQyf+I/z5HclbNfQjLzLUhY
	gCmB2QA1ZkJW7+q9mn/fGqg=
X-Google-Smtp-Source: ABdhPJwG7ngF5qLX3T8xixFAt1dwEwm6yM1mn9SKrZOfVl0VituiFsRK/ssnFht54TfgxTnWGHSIIQ==
X-Received: by 2002:a54:4109:: with SMTP id l9mr1804151oic.26.1590563535847;
        Wed, 27 May 2020 00:12:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:524f:: with SMTP id g76ls2624923oib.6.gmail; Wed, 27 May
 2020 00:12:15 -0700 (PDT)
X-Received: by 2002:aca:1a18:: with SMTP id a24mr1883649oia.99.1590563535550;
        Wed, 27 May 2020 00:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590563535; cv=none;
        d=google.com; s=arc-20160816;
        b=TyzZTbpGcxbi/Q9x8ICHDoREu6qXbd+5wWD8m90+NhHCusbzPASIKHqAANZbvhrTOl
         dREjOHmOU/55hDpB8xBc+PhvOkv8x/s2Q1rN8VFTK6vWEbWr5NPJ5SxUgASF7JyQgWFo
         TnkAUM695Gm7ITNR5vOCpPLVcRS+NJJiAL1b1k/636j81Wf+7QWiYsou+Gwb3eDf4xOn
         Zco6hKTkAnM56v9+oCvMedTVPoCsxOv+HyZm1rAp3GBqNH/n8pkbFppyFza/ahwmHfJl
         ryDzdA3RoVhHMhuRRTqJ/anYfMOxdql7K4Izy50JFBJadpdsirhRCK/Ygnh88Rn/XlAj
         7+WA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TS7T0GnvahIo34Ueh1mEB91ydpyvQ6Kv78CuMyjghNI=;
        b=CqFUGbD31V08EhbIToVBqJAZlMQ/GoVXge2zAjvYsnMRZHO3UVuSWcfhtoi8JJahU2
         +6FusQGY7CDRN4TEhNTU79w3iiJHfxaiz2UzlLL8CYIORmg2xRCBFnRA2TL6qG/Laoxs
         1SObFNFTLX8ho9KLSaTzQJ8KyIe/uZowzU0p/HunxmjCntoUKYW2YEaZ+9Hh21AYJcoh
         IPHaj1hoIDI819LQS7B3GKv4bjH/FeUXKxk2Q8UbBPYbonWdTB+8eCuik3nnI9ne2f7e
         n+vgLq8IehU8zVJBCPbCBIqIDRBu8Q5NLBKv97VO4e1sRMvuaQZr3uRyZe+Y5BlPz4xH
         La5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TF+ZnVGl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id u15si197555otq.2.2020.05.27.00.12.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 May 2020 00:12:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id r10so11350244pgv.8
        for <clang-built-linux@googlegroups.com>; Wed, 27 May 2020 00:12:15 -0700 (PDT)
X-Received: by 2002:a62:a50a:: with SMTP id v10mr2720546pfm.134.1590563535044;
        Wed, 27 May 2020 00:12:15 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 10sm1306431pfx.138.2020.05.27.00.12.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 May 2020 00:12:14 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 3/7] media: atomisp: Add stub for atomisp_mrfld_power
Date: Wed, 27 May 2020 00:11:46 -0700
Message-Id: <20200527071150.3381228-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200527071150.3381228-1-natechancellor@gmail.com>
References: <20200527071150.3381228-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TF+ZnVGl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/staging/media/atomisp/pci/atomisp_v4l2.c:764:12: warning:
unused function 'atomisp_mrfld_power' [-Wunused-function]
static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
           ^

Use an '#if 0' preprocessor define to hide the broken code, leaving the
FIXME comment intact, and creating an atomisp_mrfld_power stub function
that just returns 0.

Fixes: 95d1f398c4dc ("media: atomisp: keep the ISP powered on when setting it")
Link: https://github.com/ClangBuiltLinux/linux/issues/1036
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_v4l2.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
index c42999a55303..41aa6018d254 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_v4l2.c
@@ -736,6 +736,8 @@ static int atomisp_mrfld_pre_power_down(struct atomisp_device *isp)
 * WA for DDR DVFS enable/disable
 * By default, ISP will force DDR DVFS 1600MHz before disable DVFS
 */
+/* FIXME: at least with ISP2401, the code below causes the driver to break */
+#if 0
 static void punit_ddr_dvfs_enable(bool enable)
 {
 	int door_bell = 1 << 8;
@@ -820,20 +822,23 @@ static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
 	dev_err(isp->dev, "IUNIT power-%s timeout.\n", enable ? "on" : "off");
 	return -EBUSY;
 }
+#else
+static int atomisp_mrfld_power(struct atomisp_device *isp, bool enable)
+{
+	return 0;
+}
+#endif
 
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_down(struct atomisp_device *isp)
 {
-	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
-//	return atomisp_mrfld_power(isp, false);
+	return atomisp_mrfld_power(isp, false);
 }
 
 /* Workaround for pmu_nc_set_power_state not ready in MRFLD */
 int atomisp_mrfld_power_up(struct atomisp_device *isp)
 {
 	return 0;
-// FIXME: at least with ISP2401, the code below causes the driver to break
 //	return atomisp_mrfld_power(isp, true);
 }
 
-- 
2.27.0.rc0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200527071150.3381228-4-natechancellor%40gmail.com.
