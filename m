Return-Path: <clang-built-linux+bncBCM5BN4V4QDBBAUSRGDAMGQEJDL25MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id B030B3A31E4
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 19:16:51 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id d18-20020a170902b712b029010f71d164c6sf1443067pls.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 10:16:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623345410; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qc5asK3vesb1cyA0mk91X+VstdxuE8QgowK5jAeRX8Tzpc9oNwAkCQf2c/y6G6nGto
         GXTlVnODe8JanFTOYpZzBI38g+5WdW10GlKkgybGGaFkOUWimDxGZi4Y9SCaGUJeX/0X
         OTXtjrbWuVSE9mGk7hF9K2va8Suw1BO5mtCytQ5fPhfepLs9Xqxp3fAfx4Rz0JyaA4LQ
         i4SRueICW/pGLCD/ozoUYBsS18zm/WRlnw3GepYxYDI8Qaw4LzeESLUi452pxjJjaW+h
         b1fQnZ0umoynNVkig5NEZFZuV2XGV6duoSNE3HoQNiXtPxHMClAY2fIYI/xV5MohuSrV
         FCww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-filter:sender
         :dkim-signature;
        bh=KiukJ3x/2lWxowSga8tu2g/JbiXyFsuL7ehvEy7boM4=;
        b=NHcI/7E+1GiW3u0Y9QbeXQWkJTvRHHz1q5DbsvfM346bjJaDQfzvP+qcc7OETXEwOn
         Zy/kvSH4OuBp26Ocm1SUXCXnSiCK5CC8npSa9rwfgtlZzgLr1AW8pvBqlV9l+qQ9nUIO
         GeosZjXQsENTs/VG0tu9uAJtk5XsgRGwdPuy0AfOEXDblYfFvi7TsS2u01ZIPvrdUp12
         1RIpfcWqQMKp2UXkRoe5SGEf2IL/I4yUbUaZ4hX1pCq/nb4HakJHaQcmVW7FhFBnRarG
         8SO/6r9tMapDosdeoUSOS4sFW/kH/fvooFj80Kvy/8mfVlT+IkOknSWu/ctTQYXPit19
         FREQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=qfxZdiGH;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KiukJ3x/2lWxowSga8tu2g/JbiXyFsuL7ehvEy7boM4=;
        b=Y5O49h1gHaQ8PHqAX6iFstC8NUle6knRLe2etKWyA/df0e4XIq82f7mtlYEU32R9Wb
         e3u9tb9kXR9+Y+T4AvlQ0NaVa52thzI/hA1kBMiJnHoeo8qdGeo596X1NyjGWl3g60PX
         LUGg4CWD9l8ehK/kMLTaGNvS8Pk0T7YN5bPLhVwcv73TPejEIy32Evd/pufMobDuMhyA
         mHMnHXz2uiGZxIT0VX3lWTqHH3dFUatSenx1TdTdAx2nJ+rCCf7wbf5Cfb318wpS0gKL
         OAS0aJ5p/ZbZMi/lzcrcQuHwHuC2rL7rA2GUNY9030jarr43VB7HhV0toj4rKOtE/TsI
         M1Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KiukJ3x/2lWxowSga8tu2g/JbiXyFsuL7ehvEy7boM4=;
        b=W83GOcUyoUvnIMsOLLyqfT+Lpdjvszx1KRcTyw4wtluMWoClWXtoF7+uVnZfsv6vwP
         1xfTE9amq+60totiU8AJlpoDyTTFSHbWh04IhNX/fnNCngG+IiJELgvFAdQyX9kVWpdp
         4pQSJSHb+uJONarLb94Zp0v/FcbQxCg8FQc9k6o/1PF1JdPcVtVOyOh8y8kkHg20IMcP
         RIM0LGNYikxXdf87PjOidgFN8VlV+h82IyjzLwwVYA6uF1T6emIS0WuixSE3NgXAvTqM
         mK/CBjkvjKgXpTRDbV0K19N2wDdi755f8SBiDWNl1HnmFT3SYZPNv8BpBfunXt9lA6Zi
         MV8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hCyWPRKk5ZBNnn3a3W36iKs+ExG540Jl7rrFXoEFlPctf79pn
	3DkrOifQxu0+WHFLvgWIA2E=
X-Google-Smtp-Source: ABdhPJwIZTQE1HnDblMUH3cOC16ewXENnaPsif2cdYo+TL8lTtStMfc0CEzI9cPtjxy9qD8pQvSRNw==
X-Received: by 2002:a17:902:e5cd:b029:112:7879:4e6d with SMTP id u13-20020a170902e5cdb029011278794e6dmr5707236plf.58.1623345410107;
        Thu, 10 Jun 2021 10:16:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1d2:: with SMTP id e18ls3832678plh.6.gmail; Thu, 10
 Jun 2021 10:16:49 -0700 (PDT)
X-Received: by 2002:a17:90a:4e0f:: with SMTP id n15mr4304311pjh.167.1623345409528;
        Thu, 10 Jun 2021 10:16:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623345409; cv=none;
        d=google.com; s=arc-20160816;
        b=To1Qwq0tAE409omJbSMsE/mIzC8x9Y7XStR+QWWFphVKrWg7osgefHo+QdAZ7W7PKS
         uSdgNXRVNSMdFhpOnGabErwY6FyAdB3BYcRWDo/D+WZ+YIOlnBiwTZuo7SGtjpETCDFn
         sJ0t6I/9ui+xq/2Q99K4LfJJcLi2xEhGBgVBRkZFr4jWgfU8/MLz4p+d7+oM84DfncH2
         71/VwNW+9K+mXsW9hi3cCSPqVXBHdUnOKyJQY2udH8uQlSri5FAKCzfneJbO1pT6cyER
         bT2CIfQUPn2ErdiWSdXAhMHYpwQYNdamKAI/ylMy6bJyVLooFLY4ECUsADmlnPkSkbS/
         79Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=xrcK9iOXmTh55gmK1vfkC1viqRPFZ9noMB/T92243/k=;
        b=EIvIulVej8vbplpvF3iB3kx8Og3ZL8Zl2vhGLgjYHbIxEY6R1blpC5vm5pkw7Q2ZWt
         /joUX3NKC6O8sXHBGcDf/sgGnkh6KgwF5SqFibxcYrZKPywc1CHcVwrgjAhyvSiOdigX
         y7wBPw18ak64Q+noFrDpqouLJWeiVciasXW/EU+gEkuaXcGuCQJu3/FxdbqAU1H7kUNm
         +I/c4Urk3QYvAgwv+jOVEHAor77QNHWXS8S0mNNVhP8zDtTfvD+AsGkyGDCf13JNg7eS
         EF7R3po0k05ItcaaUeNrwPvSKzGJ78NcAdm39I1SeJSZoA6foxQJs0nVaTakjILQ4AqQ
         Qh7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=qfxZdiGH;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id b18si359158pfl.1.2021.06.10.10.16.49
        for <clang-built-linux@googlegroups.com>;
        Thu, 10 Jun 2021 10:16:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Received: from localhost.localdomain (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id DF1B420B83C2;
	Thu, 10 Jun 2021 10:16:48 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com DF1B420B83C2
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
To: zohar@linux.ibm.com,
	robh@kernel.org,
	bauerman@linux.ibm.com
Cc: kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	linux-integrity@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tusharsu@linux.microsoft.com
Subject: [PATCH 2/2] ima: Fix warning: no previous prototype for function 'ima_post_key_create_or_update'
Date: Thu, 10 Jun 2021 10:15:53 -0700
Message-Id: <20210610171553.3806-2-nramas@linux.microsoft.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210610171553.3806-1-nramas@linux.microsoft.com>
References: <20210610171553.3806-1-nramas@linux.microsoft.com>
MIME-Version: 1.0
X-Original-Sender: nramas@linux.microsoft.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux.microsoft.com header.s=default header.b=qfxZdiGH;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates
 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
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

The function prototype for ima_post_key_create_or_update() is present
in 'linux/ima.h'.  But this header file is not included in
ima_asymmetric_keys.c where the function is implemented.  This results
in the following compiler warning when "-Wmissing-prototypes" flag
is turned on:

  security/integrity/ima/ima_asymmetric_keys.c:29:6: warning: no previous
  prototype for 'ima_post_key_create_or_update' [-Wmissing-prototypes]

Include the header file 'linux/ima.h' in ima_asymmetric_keys.c to
fix the compiler warning.

Fixes: 88e70da170e8 (IMA: Define an IMA hook to measure keys)
Cc: stable@vger.kernel.org
Signed-off-by: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
---
 security/integrity/ima/ima_asymmetric_keys.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/security/integrity/ima/ima_asymmetric_keys.c b/security/integrity/ima/ima_asymmetric_keys.c
index 1fb0b0e09559..c985418698a4 100644
--- a/security/integrity/ima/ima_asymmetric_keys.c
+++ b/security/integrity/ima/ima_asymmetric_keys.c
@@ -11,6 +11,7 @@
 
 #include <keys/asymmetric-type.h>
 #include <linux/user_namespace.h>
+#include <linux/ima.h>
 #include "ima.h"
 
 /**
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210610171553.3806-2-nramas%40linux.microsoft.com.
