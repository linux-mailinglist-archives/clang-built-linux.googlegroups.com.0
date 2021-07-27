Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS7PQGEAMGQE2GJA4VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id E31AC3D8127
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 23:17:00 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id lx12-20020a17090b4b0cb0290176d6de7ddbsf642092pjb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 14:17:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627420619; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q9GiisiOC9xCGTKS6is8ADLM+qk+sqlrKS9grXPeN51ywyCfxCzt0Ig0kKj1OjisLB
         VDodKNGPB83dmB4++DIFAQBllYDBscZMyq/xsDUhpDMW/0AEEoPqsMfm0wb5bsCTi1MN
         CSCPjq6qfH9BdrtHvDJHw9o6EUsoHdt5P2+x3KCCyvskpm8xw2QbJ6RyOFGP3Sxybegi
         5s9ad8OnbjpKTrJNEFmSwYhOgtVh/7t3EI8kpjDmAM8TPw/1mwe6uIy0W2B2zUC4LhGX
         V81RYTqtHlRkNNGHygEKuKq+sslgMDQkUsTAp92mOcyoKt4yG4pe4y+J+agJlCDhlzGn
         TB7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CJR6/tIht9rVWDW4+SY28QZRab4ZTA1U1QaGu+RUHsE=;
        b=Yvulkbq5GYW4HrG7FUHMCUGemr/FufGsTUd0HWO9rybv0NlqHan2UUIFZryXPEZmvU
         yef7I/X+3tbastdzVRssUg2sh7BkJHtLNIhYm+UBRTBRz5a+02Tp8RUZRi7frt30mooU
         idWosGJyZtcdr6Q7uX9a3jHX1qYOxok3F6yUo5K/OWL3PzIYyzebbXFee657xmqFG742
         TGB/rFPmcxvQeyTtHsFXozEhtANg7DApqGbLImgFUx/24x0Ex9ELxxWDb87r9iVjaVvZ
         vP//VHzJYDgPaL1NsIEVkqyEteoO1ogSAIplyLAVZEme9XS6LqAuDUyn+Nomm2hksUOZ
         PX5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GWOY5bNN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJR6/tIht9rVWDW4+SY28QZRab4ZTA1U1QaGu+RUHsE=;
        b=p69TB2peAzD0xpD3A+aJfKINTFSjjfE5n/oAtan14xDmletsNrTaVDvjryfkG6wbed
         idS55VEVrbrAONHaB4qJCnp/fFMumYai2C4hHq429fSVcDN1Z4zLzpBTTt63zKwtrJ6i
         HguGbLUlfkh7468qPWMkxgs2mfAQ4bf/bvGoKdg0/pFOdoFRbMh7J36P073cm30M+zM1
         3JF+NGgEGJiAJbRRZv1vWit0ZmH5nmQSDaCamWyH3GOHFdTj3mVg82SCOs0go6simtG3
         K7OqYqfzTFILmIzuzXz+xcVCCarEH4Z8KLp5kFI6Uy1brlvz4dIpp6oJP9NtBFJ+OW4q
         IhHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CJR6/tIht9rVWDW4+SY28QZRab4ZTA1U1QaGu+RUHsE=;
        b=JUyBfnv984CaCy2g8B+5HK3k4/F3sN0bqLJRWF1lwMaTZj4NjFA2FQDQUO2W69Dj3u
         vx9CQxzzReZ/nVXUbViWT5dRfXpyO2BLg8dVldxENDCYPkxdEubGvHFMIUFLmi+zrViA
         /gC97HXEH5EJOCIbu2+mLzmqyMqf1CmFH/aqN9eTGTOljAAmJowivELywn9zNJZR5kQs
         1dc9jGS4rUAsgiODWKeKFOGnopwyWqb5/uuje27N4ohjUI99mn+838CHhgf1Bfs0YQjf
         G9qw0ke3lc+mJM8cF0bjXr5gDAIYk/JAmc0I2ltw3CMMkMU4iN7QegJZ8AA2w3Hq8Dvh
         gKFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5336orEC2Qy2TBxXOiA4xJpiSyvr/WvKiSOc6DHLqPDlP9AsuenF
	Z27HiBCgRVjnV74ND9eaGLM=
X-Google-Smtp-Source: ABdhPJxrG3D9JZOYP1agFKmbYheVFxNb9R8ZCksyQZAgX4friPCsoJDubKuusXqmhSn5+ENItYnZRg==
X-Received: by 2002:a63:f959:: with SMTP id q25mr25999712pgk.52.1627420619633;
        Tue, 27 Jul 2021 14:16:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:51cc:: with SMTP id i12ls96555pgq.4.gmail; Tue, 27 Jul
 2021 14:16:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:24c2:b029:32e:424c:53ac with SMTP id d2-20020a056a0024c2b029032e424c53acmr24746888pfv.17.1627420619033;
        Tue, 27 Jul 2021 14:16:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627420619; cv=none;
        d=google.com; s=arc-20160816;
        b=RYI9APjlYNe2e1aJGCseblPi8zMjeW5JfbL4DNR/wRf29wlQpt7VBLAMb/EG1lkNgJ
         +eET1wimMNJCO80savTz68P/C1h05fZfwwTvmqv8qVZcQ604igs7vPskx35PjAHl1mXN
         YmPVPmtJ1JFNYChId/n5B3V3Di2D0aax0teeuKehx6dBXw/sqKbkzUahR66DtJ/U1Dj6
         bZfNdBdp5s5L2q16NWlH5D9za55K+HZvDbHUdVZi9R/YUBJpICMSZpZPEeYX2QdQHzMj
         XRO+HLQBy/t/3kKYLDyJdj4SdgLYSQGYF3TwH0nMPNHPjzmTCZcXW5evvt18NtApxvTG
         OF8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=db8CMs13sEHX1QrEwLyB80i98nPNa1sx0I+0vCyGors=;
        b=u2qBIOtL+exumjIzTsDUDNQaAHX3/GZcyMvB/AVRYRqldZAX4Vpcaj3PNLSe1q6HgR
         yMicSGmBYsj5sGlP7nmCdy8eFf1TCao8cHrDdL1b9XpydlD3c+6yVd2iopfknklPkPFm
         XcqCyYA5rA2c9hwivS9hp1CRfPkIkICd7QiM9SD5MqbXHNyDP3zMcs3VoRRpF/l/I8dc
         xgx9nfNwU1ADaEQfiHXRBalKvr0fT5WyS4U38HjaiZEA1zITxUMVwaGuFFM1mB27SlSY
         FQl6PWmCdTs7OkQdex08y1kiPqWNwY+vQM7QCoBcQSKJroAV25SNVbJIZzxXwZogOyYF
         K7gA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GWOY5bNN;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com. [2607:f8b0:4864:20::1033])
        by gmr-mx.google.com with ESMTPS id a6si265058pls.4.2021.07.27.14.16.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 14:16:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033 as permitted sender) client-ip=2607:f8b0:4864:20::1033;
Received: by mail-pj1-x1033.google.com with SMTP id ca5so1833301pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 14:16:59 -0700 (PDT)
X-Received: by 2002:a17:90a:d305:: with SMTP id p5mr5977952pju.96.1627420618747;
        Tue, 27 Jul 2021 14:16:58 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k11sm5469795pgg.25.2021.07.27.14.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 14:16:55 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 23/64] drm/amd/pm: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:14 -0700
Message-Id: <20210727205855.411487-24-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Developer-Signature: v=1; a=openpgp-sha256; l=9262; h=from:subject; bh=ELu/4WSY3rbbc3e6mnbh27qh1PLcuIwUnaACOi4RQcY=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOFJv5WnR7sn1mtFkKeG0XEr7rFPErTrPNncdI8 nbLR12KJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhQAKCRCJcvTf3G3AJsR8D/ 9wZ161Upx2yiLo9WehBNhdepCoZIfK0ycr+o+YhGbFvIGHLX2Z/6CVTnO6oGmJhsrVbt+2nrrheUTv 8j7E+ffPwgNTUcJd8NXpFT9iui/NcLA8Yykf7B68HUXIlmENHMzE7OS29F6gOvqpuAocWp2XWkcFiL otEujZfJsmIdWxZhrOSSm850OaA3vK59G4R6x/nQbmZcTEuIsmnLAoSu6mxNQN8qfCo5+sTSnF3v2R JF91oAQ2cCf5Z2zYOFs/fY6mGfUVCy0oO/l4oZvnjGjWbHkr8bCYaQoMKAFt+gt7iCU/OQTfLYPVa2 62ogAYAXdveR8zzIITEVXrNMgpDA0PITtHEc3kSIq3iBDlCEKukUEznhPLc9L/KjJW4PDa8fphg2Yh Gekz7vZ+GJglawP6/OVsDHYjB+sVivtpueU6OrZQwDrIvls+2tBdhvYA2okrLoYv5QVghtQ5MteFgB QkVkfYyxoLj7VK3aJ9d3T602EK7C0ydm4p600HlPmh4c2j/2hlxA0edgA+/VxOFg8egmS6zr2IfSBD Eq4LZV5dvDAu9vqC6ypQ1LW/66+iw/9YGt0GJiJCY+arODnVFg6+4d9Q4V19RVMN/Hh+K9bnt0M/+J H7XpAuvLYZW1lukZMvCpZapOsvBI4BUSGa3FwriGOeJJSW/+YzrhY/tlrGCA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GWOY5bNN;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1033
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in structs:
	struct atom_smc_dpm_info_v4_5
	struct atom_smc_dpm_info_v4_6
	struct atom_smc_dpm_info_v4_7
	struct atom_smc_dpm_info_v4_10
	PPTable_t
so the grouped members can be referenced together. This will allow
memcpy() and sizeof() to more easily reason about sizes, improve
readability, and avoid future warnings about writing beyond the end of
the first member.

"pahole" shows no size nor member offset changes to any structs.
"objdump -d" shows no object code changes.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/gpu/drm/amd/include/atomfirmware.h           |  9 ++++++++-
 .../gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h    |  3 ++-
 drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h  |  3 ++-
 .../gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h   |  3 ++-
 drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c    |  6 +++---
 drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c      | 12 ++++++++----
 drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c   |  6 +++---
 7 files changed, 28 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/amd/include/atomfirmware.h b/drivers/gpu/drm/amd/include/atomfirmware.h
index 3811e58dd857..694dee9d2691 100644
--- a/drivers/gpu/drm/amd/include/atomfirmware.h
+++ b/drivers/gpu/drm/amd/include/atomfirmware.h
@@ -2081,6 +2081,7 @@ struct atom_smc_dpm_info_v4_5
 {
   struct   atom_common_table_header  table_header;
     // SECTION: BOARD PARAMETERS
+  struct_group(dpm_info,
     // I2C Control
   struct smudpm_i2c_controller_config_v2  I2cControllers[8];
 
@@ -2159,7 +2160,7 @@ struct atom_smc_dpm_info_v4_5
   uint32_t MvddRatio; // This is used for MVDD Vid workaround. It has 16 fractional bits (Q16.16)
   
   uint32_t     BoardReserved[9];
-
+  );
 };
 
 struct atom_smc_dpm_info_v4_6
@@ -2168,6 +2169,7 @@ struct atom_smc_dpm_info_v4_6
   // section: board parameters
   uint32_t     i2c_padding[3];   // old i2c control are moved to new area
 
+  struct_group(dpm_info,
   uint16_t     maxvoltagestepgfx; // in mv(q2) max voltage step that smu will request. multiple steps are taken if voltage change exceeds this value.
   uint16_t     maxvoltagestepsoc; // in mv(q2) max voltage step that smu will request. multiple steps are taken if voltage change exceeds this value.
 
@@ -2246,12 +2248,14 @@ struct atom_smc_dpm_info_v4_6
 
   // reserved
   uint32_t   boardreserved[10];
+  );
 };
 
 struct atom_smc_dpm_info_v4_7
 {
   struct   atom_common_table_header  table_header;
     // SECTION: BOARD PARAMETERS
+  struct_group(dpm_info,
     // I2C Control
   struct smudpm_i2c_controller_config_v2  I2cControllers[8];
 
@@ -2348,6 +2352,7 @@ struct atom_smc_dpm_info_v4_7
   uint8_t      Padding8_Psi2;
 
   uint32_t     BoardReserved[5];
+  );
 };
 
 struct smudpm_i2c_controller_config_v3
@@ -2478,6 +2483,7 @@ struct atom_smc_dpm_info_v4_10
   struct   atom_common_table_header  table_header;
 
   // SECTION: BOARD PARAMETERS
+  struct_group(dpm_info,
   // Telemetry Settings
   uint16_t GfxMaxCurrent; // in Amps
   uint8_t   GfxOffset;     // in Amps
@@ -2524,6 +2530,7 @@ struct atom_smc_dpm_info_v4_10
   uint16_t spare5;
 
   uint32_t reserved[16];
+  );
 };
 
 /* 
diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
index 43d43d6addc0..8093a98800c3 100644
--- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
+++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_arcturus.h
@@ -643,6 +643,7 @@ typedef struct {
   // SECTION: BOARD PARAMETERS
 
   // SVI2 Board Parameters
+  struct_group(v4_6,
   uint16_t     MaxVoltageStepGfx; // In mV(Q2) Max voltage step that SMU will request. Multiple steps are taken if voltage change exceeds this value.
   uint16_t     MaxVoltageStepSoc; // In mV(Q2) Max voltage step that SMU will request. Multiple steps are taken if voltage change exceeds this value.
 
@@ -728,10 +729,10 @@ typedef struct {
   uint32_t     BoardVoltageCoeffB;    // decode by /1000
 
   uint32_t     BoardReserved[7];
+  );
 
   // Padding for MMHUB - do not modify this
   uint32_t     MmHubPadding[8]; // SMU internal use
-
 } PPTable_t;
 
 typedef struct {
diff --git a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
index 04752ade1016..0b4e6e907e95 100644
--- a/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
+++ b/drivers/gpu/drm/amd/pm/inc/smu11_driver_if_navi10.h
@@ -725,6 +725,7 @@ typedef struct {
   uint32_t     Reserved[8];
 
   // SECTION: BOARD PARAMETERS
+  struct_group(v4,
   // I2C Control
   I2cControllerConfig_t  I2cControllers[NUM_I2C_CONTROLLERS];     
 
@@ -809,10 +810,10 @@ typedef struct {
   uint8_t      Padding8_Loadline;
 
   uint32_t     BoardReserved[8];
+  );
 
   // Padding for MMHUB - do not modify this
   uint32_t     MmHubPadding[8]; // SMU internal use
-
 } PPTable_t;
 
 typedef struct {
diff --git a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h b/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
index a017983ff1fa..5056d3728da8 100644
--- a/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
+++ b/drivers/gpu/drm/amd/pm/inc/smu13_driver_if_aldebaran.h
@@ -390,6 +390,7 @@ typedef struct {
   uint32_t spare3[14];
 
   // SECTION: BOARD PARAMETERS
+  struct_group(v4_10,
   // Telemetry Settings
   uint16_t GfxMaxCurrent; // in Amps
   int8_t   GfxOffset;     // in Amps
@@ -444,7 +445,7 @@ typedef struct {
 
   //reserved
   uint32_t reserved[14];
-
+  );
 } PPTable_t;
 
 typedef struct {
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c b/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
index 6ec8492f71f5..19951399cb33 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/arcturus_ppt.c
@@ -463,11 +463,11 @@ static int arcturus_append_powerplay_table(struct smu_context *smu)
 			smc_dpm_table->table_header.format_revision,
 			smc_dpm_table->table_header.content_revision);
 
+	BUILD_BUG_ON(sizeof(smc_pptable->v4_6) != sizeof(smc_dpm_table->dpm_info));
 	if ((smc_dpm_table->table_header.format_revision == 4) &&
 	    (smc_dpm_table->table_header.content_revision == 6))
-		memcpy(&smc_pptable->MaxVoltageStepGfx,
-		       &smc_dpm_table->maxvoltagestepgfx,
-		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_6, maxvoltagestepgfx));
+		memcpy(&smc_pptable->v4_6, &smc_dpm_table->dpm_info,
+		       sizeof(smc_dpm_table->dpm_info));
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c b/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
index 59ea59acfb00..cb6665fbe319 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu11/navi10_ppt.c
@@ -431,16 +431,20 @@ static int navi10_append_powerplay_table(struct smu_context *smu)
 
 	switch (smc_dpm_table->table_header.content_revision) {
 	case 5: /* nv10 and nv14 */
-		memcpy(smc_pptable->I2cControllers, smc_dpm_table->I2cControllers,
-			sizeof(*smc_dpm_table) - sizeof(smc_dpm_table->table_header));
+		BUILD_BUG_ON(sizeof(smc_pptable->v4) !=
+			     sizeof(smc_dpm_table->dpm_info));
+		memcpy(&smc_pptable->v4, &smc_dpm_table->dpm_info,
+		       sizeof(smc_dpm_table->dpm_info));
 		break;
 	case 7: /* nv12 */
 		ret = amdgpu_atombios_get_data_table(adev, index, NULL, NULL, NULL,
 					      (uint8_t **)&smc_dpm_table_v4_7);
 		if (ret)
 			return ret;
-		memcpy(smc_pptable->I2cControllers, smc_dpm_table_v4_7->I2cControllers,
-			sizeof(*smc_dpm_table_v4_7) - sizeof(smc_dpm_table_v4_7->table_header));
+		BUILD_BUG_ON(sizeof(smc_pptable->v4) !=
+			     sizeof(smc_dpm_table_v4_7->dpm_info));
+		memcpy(&smc_pptable->v4, &smc_dpm_table_v4_7->dpm_info,
+		       sizeof(smc_dpm_table_v4_7->dpm_info));
 		break;
 	default:
 		dev_err(smu->adev->dev, "smc_dpm_info with unsupported content revision %d!\n",
diff --git a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c b/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
index 856eeaf293b8..c0645302fa50 100644
--- a/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
+++ b/drivers/gpu/drm/amd/pm/swsmu/smu13/aldebaran_ppt.c
@@ -407,11 +407,11 @@ static int aldebaran_append_powerplay_table(struct smu_context *smu)
 			smc_dpm_table->table_header.format_revision,
 			smc_dpm_table->table_header.content_revision);
 
+	BUILD_BUG_ON(sizeof(smc_pptable->v4_10) != sizeof(smc_dpm_table->dpm_info));
 	if ((smc_dpm_table->table_header.format_revision == 4) &&
 	    (smc_dpm_table->table_header.content_revision == 10))
-		memcpy(&smc_pptable->GfxMaxCurrent,
-		       &smc_dpm_table->GfxMaxCurrent,
-		       sizeof(*smc_dpm_table) - offsetof(struct atom_smc_dpm_info_v4_10, GfxMaxCurrent));
+		memcpy(&smc_pptable->v4_10, &smc_dpm_table->dpm_info,
+		       sizeof(smc_dpm_table->dpm_info));
 	return 0;
 }
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-24-keescook%40chromium.org.
