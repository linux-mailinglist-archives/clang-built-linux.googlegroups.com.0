Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB2WTYX3AKGQE3AYDLZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5025A1E8840
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 22:00:43 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id 11sf1180036wmj.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 May 2020 13:00:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590782443; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+2Smpw4FgU5NCHrB2DJywxiVpRGYs58RWI0X4+lOEzDl4V4dHPMY0BgBFG5U0N/OX
         0SI65IQhnfEAU5GQNAPMhGN5dVvpEmSjteWCGMsJsLsTYis7aAkoYhqb2Irw8bcUYqm8
         EbrrL1ABfjWdqJ1Api87xLbk3dIREUkTQ3dalcah1FqjqGpwxXXqW2ZwkPx3s+Yb2koT
         K7O8QTlPRaEGYig5F8Kgdudec6E3LwmGpS/NV0wA/tgV9D5gIyYcVqUjMz6Sblgzd+RJ
         cUAfg4xEcBaW3Rj0uHiDtga1Z816yiIE4kgqHmH+V80gIdEo2hraYHQkAJPEw6qcK4Xh
         7Lsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HDCy4iIM1FFv8/omIr/nMJZhm5U8kpttYzltPZqqe60=;
        b=VGCnhdS7a0kMMbB9NQGHg+SiN7PK32p81uDDLmx69QcPOb5DQoQfKetugvtGooRLEC
         AcdNQD7ttPXG7I4p16pcLn1LtWcyND7au0HcXBMlUkqoAKi1HQKUtTrCRRU9qRwvG6d8
         TZTxBptKoL0rEQ/30yWnmUYoO+t5whO+NSiE3i+jV0glSyaz0U7LySQps7VWjBsuwxTW
         f1XwD+MrtYh8R7ClMcdLv7lVxdfhQ/+606rTFAYdUwOwEH2wEEc24gt95SvVKqkGTPQQ
         Ykt1tdYtcR1fsVkTwP00YGTUvCeA2tHslrZEa0romaGZnp3cggxwbHoZIppWB47zUIrl
         WtLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HDCy4iIM1FFv8/omIr/nMJZhm5U8kpttYzltPZqqe60=;
        b=RMSYQJCztq2OuKBNkjLFkZLBSIdFzZWPO8qtcJL3OPpqGTekOJHQ3oayEmNJexO1QE
         4oKaS5wbSWhkAmYhXz5/HRUuCuw8ftKC7uTAN9gCopj5xkxrSsqcF0gH7TzxXmcZasee
         cVzQRgudRzDTsoMbwkGDv6Rue4cMC73pCgH3WNvnQyUBWHYL+gC2jY9wsiliYzbUTWNX
         tHRS6eYLz4suWY+GihwEO8wpCEVAKuuKl3/v+sXNR02lTQgpJk52ua4u6wNsk2+LsGbe
         kbeojMNxXcxLfoLm+l1c5UDuxOUtoIunYaaZJAaPUNRdEcYUVOvyJ7++3hi6DasH75jz
         nN4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HDCy4iIM1FFv8/omIr/nMJZhm5U8kpttYzltPZqqe60=;
        b=FcxJPYSAY2qzSOqAFn5GYtsU0zpWspyG2LvVXNlxBG5iRtgqPnZJmpxUO014qm0wep
         GhPo7M+GlbekczRwzA+o7irhINw+S8oz0flcHfF+e4L2OGUxoI5syx/tPWXV43MGcH5h
         YDZdYF0QHOgs/kZW+S3oisgvuVub11mEGrIvCES90cwhkgHXkPzMHh/XQuFzNDCrVps+
         XNQpojT0yqw7oRZ3qVXWISxLmZgkuMC1vWf1e0VUPbMoPwmCxovv1z+B49RETPkPYndb
         rSTgrEKVFm4CbFLajsAYiALmBKVZowQGBVwytVHhE9gpt9PBVtLgr/3dU+Hh+K+2SBoQ
         EQgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531N9Oft8aIrb+r1GMcUK4EFIXjVzVPE9NkuqlbzdYOk5yCBlYwR
	bNkVNwtwByAC3sXciivRS1s=
X-Google-Smtp-Source: ABdhPJy1L3mscgn3eck0emg7rx6yq7/x3MyVhfWxon+XB5mA9k4RDMAJkFE7uHa2fsjk5cQGWUVgzw==
X-Received: by 2002:adf:f889:: with SMTP id u9mr11035898wrp.394.1590782443077;
        Fri, 29 May 2020 13:00:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fac9:: with SMTP id a9ls8565819wrs.2.gmail; Fri, 29 May
 2020 13:00:42 -0700 (PDT)
X-Received: by 2002:a05:6000:ce:: with SMTP id q14mr11067074wrx.105.1590782442650;
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590782442; cv=none;
        d=google.com; s=arc-20160816;
        b=Iczu/gmiRPPA0aa0BVArSj/yICC5agf6PaNl4dHtSWHD4fBlrWRjvNF87Z9q5y1VPV
         dNw5OvQ1T2lJh0cGaafSh8QUxenLk5BDKM9cV3J57MMjp7R1nFat0KyYQkn84QY/Y0UZ
         7XeibhAS0eu4wB6Gc3owJT1Zwrtjw4bQ/rC7KUuM+j/7ZM0K6URJIra3xOD+e7avCK2G
         DmBQVainxiGEAV8gIoRluz30SEXRfSivVAFTe22A7gGk2rWb3wxOklCY2FwNsyHahpyM
         tWQJdKKdlb3Ibvh4+dxJQBd2cgtTvZMYyzbkbY4kj5PlRMikI7yyh6LKZcXQ5Ocp1ELL
         5fQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=K5jfI0cNqU4zl4G6mURe/z8AXvDUdRoz7RhPv2+yH/c=;
        b=W+hNCU/tU0v+E/GI5UFDNUCmeRZH4rWJEVjRVuKNthC/eHu7vKqx8nXxG1Rab4mzgA
         P90IAEOh7dQhUiVi8kXnWReqaBwCgqbn0yGw71sMtUgNbCtXN8L3xa5WkJPqGi5Iz/bM
         KDKnox4/bASug8SB0ui/lOcgkWAZi8MVsWRALD/vNRWH9qvwn5xx3tJMhrWC5ABlTIQv
         wbHunlcfjnWd8+m8v/hH3kTHUirNdqYcXfZsAJWzrMUCDlvI7bfYMYuZzfB9jd71zcvG
         VlB6uhJNuF45cGOSoygOsL+1TBwABqcWNk++x6fhbM+m12NSkXLAWQSMJ+ZJXX9au/Ac
         ld5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id m17si224696wrj.1.2020.05.29.13.00.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 May 2020 13:00:42 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from threadripper.lan ([149.172.98.151]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MyK9S-1imwbt0Oxo-00yeuk; Fri, 29 May 2020 22:00:41 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH 4/9] staging: media: atomisp: fix a type conversion warning
Date: Fri, 29 May 2020 22:00:26 +0200
Message-Id: <20200529200031.4117841-4-arnd@arndb.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200529200031.4117841-1-arnd@arndb.de>
References: <20200529200031.4117841-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:qWBqLiHAEPDMF8js3BlDSPtIsv7NefuRl9Ih3YXihEz3ytqwK7I
 95pwIVpN2VK2c6MErMz1nU1mqoSwXJZ4oreJOy0xL2phOWMHcUrB6rNLLn3e/qEBBzYsS81
 tCgb/sdTaV85b0SQpiut7Q2R2d230ZF+dUvb77YsIW7R1Uz+1iRLVu9ZEj+sAJOEKZN3QeP
 Y9Z7KixTphCsicYvRwfpg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ElPwMuZ6EYA=:0afz9AlQbCrElA4/wPvPtt
 I8ZVINFuuOu0sb0PG4sb88XGYuSFmLYxK911LA6eDkfXasPoS5F0s+NL6Fcg4ExHQIMpOijg4
 YBr0uyt7M/yh+nEFrnEmk60iNgmBumR4US/B+RrKhJ4wLeM73A9MU7OcAhRegL4sdtQhO1B6l
 Nls2QL0fKd2PBW0R/IDTen/u0pfGjJ7AW0eW/022wQaW7dpHKCXqgwFbORCECWTjAkZNgXK8s
 RioqNoWlKhifzzPbSSFw0zg0TEtL2xoa8bCICFUjV9k1AFHhJrii1aj8VJUUG+IhGcrCxpg7R
 8b1nABsEqSYDyb1aQU1IZsklEjVEOip6Pa0XV6qzLYxIlMaMLzNnsLG0js7E8VvLkxkQuNZJL
 BoQ7DayVfuIkT/iA/xioZ9xSUzJy3Z0KCoX7KQzWFWe6tFdtS5h70i3xlZ/068EAZJeWuy1mx
 2M59u1tri8c8dJpM54fAJQLixVfN91s2DkEO2z7GimRUaIulBeUH/XxZX4jysiiJAZf4UecCQ
 vRyja1RjxpbWLDX/WPOc+Jus3RKAnleTwgHjJ+FHUnQMT4dH+gNhxzGq0T9Ft17w0q3YuC04s
 x+SIvCPSzL799skAtJDgxPqKuXyOScaj/SldgErWCTrpwEFDuSIMUo70DOGsHh+XGwus1gk5n
 K7hfDKlSvK9TA3wBueZX1Puke5NcxdlXFt5z+kG1ZI6vLiSi1W16RSAdXdeDn9MRqXGTKt36d
 21eLKPhNBs88rTvd8mnZjBT7Q/Dcwcys8bhN4wFy7n1leMS0otcgwuFd4JzrrLcXBV41TTMHw
 q2n7yBgknNPAruPsYYXpqqrDRw35/ewn//GLRvDMyVE1/UF5i0=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
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

clang complains that the type conversion in the MAX() macro
contains an implied integer overflow to a signed number:

drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c:129:35:
error: implicit conversion from 'unsigned long' to 'int32_t' (aka 'int') changes value from 18446744073709543424 to -8192 [-Werror,-Wconstant-conversion]

As the conversion is clearly intended here, use an explicit cast.

Fixes: 9a0d7fb5ece6 ("media: atomisp: simplify math_support.h")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 .../atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
index a9db6366d20b..613bace0522a 100644
--- a/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
+++ b/drivers/staging/media/atomisp/pci/isp/kernels/xnr/xnr_3.0/ia_css_xnr3.host.c
@@ -126,7 +126,7 @@ compute_blending(int strength)
 	 * exactly as s0.11 fixed point, but -1.0 can.
 	 */
 	isp_strength = -(((strength * isp_scale) + offset) / host_scale);
-	return MAX(MIN(isp_strength, 0), -XNR_BLENDING_SCALE_FACTOR);
+	return MAX(MIN(isp_strength, 0), -(unsigned int)XNR_BLENDING_SCALE_FACTOR);
 }
 
 void
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200529200031.4117841-4-arnd%40arndb.de.
