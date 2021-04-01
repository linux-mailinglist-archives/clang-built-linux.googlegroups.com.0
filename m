Return-Path: <clang-built-linux+bncBD5ID66FXMARBP66S6BQMGQEL6TS47I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6165035169C
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 18:05:20 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id h20sf2302935lji.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 09:05:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617293119; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q7t6rhlFjPz0QxuuS5IGX4Sscvgpf65jkcIQ1BKKuo3AGkIx9Ywx2CCCyfxtB7mOhN
         GaVmfisui0rdu37jFb4q3O68Zxwok3VblrJQlWx+GkHN2iGFHln0KKQwT397ICteAy/b
         MjdyBczGygjHkrK/KsbMRA5O8YHXjMRWhboB0NSxPDdghVyfu6S+3GY9VCGIF5MLkOws
         qpRTymmJTJ4EgYa5/9h5vH/O5CdRsA5ia6AYroosK3eVrV9pCO/NbzHasRgvSli+plNP
         V8MB2eS+1E7tVr6pD22kqiu5s8ofVriXHsyom3n99EmDOTdZ43cn3VkQqfWhQ0sZ/F8j
         MDlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=PKdvv18Y9AIS9vNyliMhLO3U72R9ME1e5Kiuu9MbMIk=;
        b=K2lov/hsnInENXiywT6D5N4DvTTqtHlFfXjqOB6iIdIP3tsYMnq+gY9ZnS6gmf9jW/
         8z46RN2N+y1teVzBPUBe826rpXy6MeWwjf28DBcbCAfOYsem3O3FqdCyhj6yb6zxQX6V
         Q8odBx0fEvqWgYYeLNgUfoz+x/9kSNKa6fB9C3cZXlQUPi+K3sf/Otxu8p4ts0QQ1Kfj
         Awo8n7Ktnl0Bi0b/DB7oarF3DCseX0aqob6NMYct58Eqx6uIX8SA3s38AaFC1XJRVp+o
         /IBDnrCfwivdgbXZojYtnZ5I0szD3dRPgGVEqu8AkxFc0owq1kn1LsVJ7PygCd3PWxKU
         Z68A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jcg7fuvs;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PKdvv18Y9AIS9vNyliMhLO3U72R9ME1e5Kiuu9MbMIk=;
        b=LpjqxjqnsQC0D3xUyi50pDvAMrZ2/ISFYInV6V5NTTP1Q1vtUR66NIEKJb594CWQS1
         PsJlzGfejz/XjtzwqYDb/SAy6zz/zGR2mpZ5L7km3tF4ljRMpTmMtGM7BO8vlIwVWsim
         v3Mpyph9KtuGMSy4dlE9jEwyPTKxDFoQFUPHaOoF36SB4u3fm0IIu9qRSwFESdBpsRd0
         Jwal89Cq2hH8ftD4x0bSGJj7Y0nuVLvqFZzPkVn/3J4sMWd2gVlhNzhpUSH5XudvFxA8
         SVutS2M2XlNlDqSEmAwxfsGFkk94U0SaPN6GbECAhyc/8TgqC/Dq+hEhei3GJwpwvgaN
         tRmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PKdvv18Y9AIS9vNyliMhLO3U72R9ME1e5Kiuu9MbMIk=;
        b=WsVnOf63Zw8YA3QKemyIuGEGmWvQ7BtxjkRgE4ZY7CW0Q7QXGx5jp7tfdk+CY6j4Pb
         Ta8yw/odl/EgZhZ5NPrmIUy7LKBc0Vs4PzAfMfnLiQMaVLczjzKOmEVz6rp++Ma3/TRp
         UslFv5nCEhHPSPEdT/bh2hU7pTudbSj3YKkUarHJJmH3/XGxW1BQT2k8l3uirBR8R2Gx
         Omfiueh9znfI6mglNiMISIlvM1PVp7Ti9Gf17f03O+reL6Yp4hSy2bTDFLvwDDWUsUzj
         mOzcJDd8mRAPEXUJ5Sy2Job+xltd4CuoKQhar6ReV0Nnnr8yy23gsmi6Cd4jaBcVy+Lo
         5mwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PKdvv18Y9AIS9vNyliMhLO3U72R9ME1e5Kiuu9MbMIk=;
        b=okoJ2zll85GJXaIF1191Z25Je3CZJqIuaiD7cT1r5UtQDY58WEwkdOVxGQfqd3Rgi3
         0gdHu+Jg6NVy3uj+XHb9qiuwBPpH9fhu1rXpIqg2YrBE7RWpTXt4oNVuxIdc6lRxaJIU
         jzidwHoabBcYuRO59dy4Mh2aVsGsx3g860zBOnZhkLWjxRW50veGFoTfIXA2G+PdQW+s
         xvvmoBuER0G0s4FoszNeQc30VYIx6BoHbrYA7sDjy1TO/B+t2vsu3KiI6X6Oeif6BU6w
         y+Ajmj3boUEXjAA4KdYhMYWqgPSNrpOKHSKw4ILuolqO9XQTGqKL+jhIg/AMkrWCeLFI
         m0fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533oxht1jRBtqv3i9249FqY74pbIBGPCwzvFYC5deYDppJWlEmZk
	ASCcmow4eHnBMObfq5hgrow=
X-Google-Smtp-Source: ABdhPJyioLAkTTJZMlYozFC8qG5TYfJCIClfdiPYBE3sjKJkyW5l1rBWz5LL3UyPfOYkwR7NLVl2+A==
X-Received: by 2002:a19:c755:: with SMTP id x82mr5968417lff.149.1617293119868;
        Thu, 01 Apr 2021 09:05:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b603:: with SMTP id r3ls1387399ljn.5.gmail; Thu, 01 Apr
 2021 09:05:18 -0700 (PDT)
X-Received: by 2002:a2e:b4d5:: with SMTP id r21mr5759243ljm.157.1617293118474;
        Thu, 01 Apr 2021 09:05:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617293118; cv=none;
        d=google.com; s=arc-20160816;
        b=WC5EbE4I5rfZR4u3z/xOKplF7kpMijR3pqwX2VHtDsIX/dcUBvfoWUD2hD3C4wrEri
         efLxHwtxjHzEdYd7TZntgWjRjZCmoMj0BVPPkz3Yho2WmqxsnPGJJquY1I6D68z3gEto
         tgl06INmhec9SJhG/LE8/JlKEVQzRyeSHSvO9CmDuZRB64zNAbAyMCRR0JT5tk1Gvtbj
         XJj7zHost+PI1XKJIPisnDpA4W5cSbVqb6HLhyJN9VFcNk30F1D7otHHkVPGlOJo7Aek
         NdTBhdluRZpHRcMOLc4rMDnec/jwqpcuSAKHb1ILloO9Win6NF7FalSVK8Xjx7UuwMwg
         bgGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=fqynJVVZ2cB44xaw315Sqcrb3lwmjqvG2iG56aPW2jw=;
        b=S1ozz9+QOlz73Qz7mEkfZ9gaRVofVMLAyqTeEOUx20PhDoiN31k/5NRlD1xqlfjyxP
         3sZVL7eJDl8GvDUqgzdFJ1pjbqRa2g4U0wbLhls8kTl9srCpIgOlgO3OdQgMppplEMq+
         8yBvEkWpfEqQoQ8a4eGrXZ+fjryLfLeRxnCgpDC5LafdReRrvGFYmjMx7dSQ7lLnyujj
         vH3f9mU6wCARJfWGrbhmjEk5Gl6ADGf5cGCugY2MweVwsOnfszF49d+PUpLNI2yX+mcY
         RLPWfqrkF6t4ZYdWj+MSgqGnr+TfkGxrL8lJD5ZVe9KvdoPtAhw0h5TiMdpm25fJ+3Zn
         AgCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jcg7fuvs;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id q3si626224lji.2.2021.04.01.09.05.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 09:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id u10so2816607lju.7
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 09:05:18 -0700 (PDT)
X-Received: by 2002:a2e:2a44:: with SMTP id q65mr6064094ljq.238.1617293118156;
        Thu, 01 Apr 2021 09:05:18 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id f23sm582226lfc.283.2021.04.01.09.05.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 09:05:17 -0700 (PDT)
From: Maciej Falkowski <maciej.falkowski9@gmail.com>
To: aaro.koskinen@iki.fi,
	tony@atomide.com,
	linux@armlinux.org.uk
Cc: linux-omap@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	maciej.falkowski9@gmail.com
Subject: [PATCH] ARM: OMAP1: ams-delta: remove unused function ams_delta_camera_power
Date: Thu,  1 Apr 2021 18:04:34 +0200
Message-Id: <20210401160434.7655-1-maciej.falkowski9@gmail.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jcg7fuvs;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
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

The ams_delta_camera_power() function is unused as reports
Clang compilation with omap1_defconfig on linux-next:

arch/arm/mach-omap1/board-ams-delta.c:462:12: warning: unused function 'ams_delta_camera_power' [-Wunused-function]
static int ams_delta_camera_power(struct device *dev, int power)
           ^
1 warning generated.

The soc_camera support was dropped without removing
ams_delta_camera_power() function, making it unused.

Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
Fixes: ce548396a433 ("media: mach-omap1: board-ams-delta.c: remove soc_camera dependencies")
Link: https://github.com/ClangBuiltLinux/linux/issues/1326
---
 arch/arm/mach-omap1/board-ams-delta.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm/mach-omap1/board-ams-delta.c b/arch/arm/mach-omap1/board-ams-delta.c
index 2ee527c00284..1026a816dcc0 100644
--- a/arch/arm/mach-omap1/board-ams-delta.c
+++ b/arch/arm/mach-omap1/board-ams-delta.c
@@ -458,20 +458,6 @@ static struct gpiod_lookup_table leds_gpio_table = {
 
 #ifdef CONFIG_LEDS_TRIGGERS
 DEFINE_LED_TRIGGER(ams_delta_camera_led_trigger);
-
-static int ams_delta_camera_power(struct device *dev, int power)
-{
-	/*
-	 * turn on camera LED
-	 */
-	if (power)
-		led_trigger_event(ams_delta_camera_led_trigger, LED_FULL);
-	else
-		led_trigger_event(ams_delta_camera_led_trigger, LED_OFF);
-	return 0;
-}
-#else
-#define ams_delta_camera_power	NULL
 #endif
 
 static struct platform_device ams_delta_audio_device = {
-- 
2.26.3

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210401160434.7655-1-maciej.falkowski9%40gmail.com.
