Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBOFKWSEQMGQESYNNDSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B233FBAF3
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 19:28:26 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id o76-20020a25414f000000b0059bb8130257sf2417917yba.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 10:28:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630344505; cv=pass;
        d=google.com; s=arc-20160816;
        b=O1AhLVLxW35BMNDLY+Xq4AxwxPKII4QRY/37GXCdaWEM1Q8xbxcEjEa2hrMElGs51E
         ESWn4L7nWngec3dt8/3l+/NtXi4HwXOtJtATD4MhHs8MSmAvYnV5gSTKdtAfTAzcuKOh
         n9JmI9XipnjeGFaWliqT3R09YBepDQHa0d9XY709YScmlodnYM9qqPLYsRgB0wB8DQAN
         V7Ah2GJy/mGq7KNgrYMTvqgi+gWBFzbkC35ZYU+hIxF6IXOt9ePco8QuGASqw6CRxFe7
         CRcd2I3b1jYvOHAuGWilRTlf0Ekn4RtuvwKT1ruTWk6lCjSTh2ss3D30mzTpAmFSctNs
         cC4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=08xKBEygVk52n0PeN9Psfsy8oBBvsNetzZzw6j6LzBc=;
        b=GwM5Vx+JAJG0YL+EKiAy8du/KLR7pVvINxbVOr50ezSZjtitGRwMmd2c2ADu4648uJ
         mAWS1rfFM9+ZTiqMVTHQTZEbQ8n1BfyLt5Irtdh4kD69vru2GgOEAzRxxmLomsBtyD9K
         R8XFojmI8OfQ2NBOzDqaogsP2qOaWtuP5uPGFwpPz7/S1fVLUybcrY0jQkmcVXv6vGjy
         JBxjuR53lnmsFvbEWsSouN7nLif1a0QsZb7Ja1quy5SbBVIp4NoC1gCPYifM1XyxDXBY
         /K0/Lw5USnanJE63aldeLdOPKmrT9UULQrFFkPk4jDcM/Ck5o68MdHX8kXVWJP1utbUh
         WS+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DKia4FFu;
       spf=pass (google.com: domain of 3obutyqckescmldqfdljrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3OBUtYQcKEScMLDQFDLJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=08xKBEygVk52n0PeN9Psfsy8oBBvsNetzZzw6j6LzBc=;
        b=X3dXp/J4vxynCzdQmogIK6SGNpAep0vVL5KMM1bNVMGKCopc5ku+OAtsLvIvCBdpcs
         kt9P037LeMWXTVNSbL+zlJXRmSEsb2vvisM+/aTfgKVmM/bcCTzyi4GnuU0cRiF1thFC
         NVkDsHx6gpHx7iehUBILNYUdgB+TRgiYK5F+R/0VmSSe67pW2SNRGSluGrFhgCed36k4
         RKMxD22zo2ePO7BlLqK3L1MwOofwB5gTl+OvbpmlZEWLXliyh99gBVYU76N5NZqi8IsU
         1bGr6ZkSQOTf9uqRaAal/eFRsjIJP9MII11p1eAxarR1xCzBYGoR3NtO5rOuS+7QQyoj
         l/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=08xKBEygVk52n0PeN9Psfsy8oBBvsNetzZzw6j6LzBc=;
        b=iMTtStoboiQmkL+zR584Wj5PyIFvBCtJFCWlM2pyGdVL/CYxXBiG1UhFop2/mc2cWK
         01QaH/6neBZ9Fm+4GbfiV6JK22CsasQhREU4qToO9yVAefxMPJTnPYSRDvOw/ViuRry3
         KuV2punG9aRPfmSYi63jECebTduz0EnhLHXVTifQ2b6I0LVHRQkUFbK2y/9aEvGjknlZ
         4M7d/e+it9wCXIfuQhWoCODS2/GvVWEFE4FEbG+jwsDIpjO4crHyM5ElRe1GFkRioHkp
         EWAh0ceFB4wSxWwmkddb2SENMYA6IrOarI5f7RthJVgjvfGMkwt0ZGZruKBMaGq41Vo6
         Pxfw==
X-Gm-Message-State: AOAM531XhigYA7VwoSKhWhaY51si3SUNuIj4kOMRl603uPi8hrZrMGLb
	inIx45FFjn8zM7DXkAWCduU=
X-Google-Smtp-Source: ABdhPJzzMNGStG03C25bPycmnMce5SW8vK5fxRvim4uFXA9+JuKJ4/Qa2ESKVDNjPqLjVJs5v0jeIQ==
X-Received: by 2002:a25:6c05:: with SMTP id h5mr23788255ybc.380.1630344504827;
        Mon, 30 Aug 2021 10:28:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5946:: with SMTP id n67ls2917130ybb.3.gmail; Mon, 30 Aug
 2021 10:28:24 -0700 (PDT)
X-Received: by 2002:a25:c2c3:: with SMTP id s186mr23245732ybf.401.1630344504374;
        Mon, 30 Aug 2021 10:28:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630344504; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOE0V2+KOZ4PaUf+iKUPMFnR52e4pDbHz5R4wapkKGuC6wZuovUXCTzCGI/UauRZf3
         tKChn9Qe6U6pbuqvfgalQwYzjx99YfHIE6U7vH0T3YqkfyIzTcAV1DvlocvYW/ySYDOO
         UTvU9dWJVPchLzdOAUXJwoFkmb1GdwgV/cyNQtmgX9/I3Gm7PsgAbnFHhqy2OoSHtEX5
         6DNLDXDWiOvh9pdQP3mKsjZiPQgE9nMMV1PbsMybbBZF0Qf313lNSacUWc9kV9RAPRcA
         qeMX+N0HWlWoEcEz5h6N7dbmkUhBWzJDID7djPhiTUXrq4jNWgdBaYOOtk4tThjF5TBP
         ewYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:dkim-signature;
        bh=kodoJmi6WDuZJrPTFcRxRUB0Jbyp7ZG0JWBLCSvowuQ=;
        b=agy3eqai6dOdthjkzXX0OQsy338UsRka4TUwVt771MoVoeUpURCk9eOemH7a7H9SSc
         L3q0wPUyyYzenYPVyup9Y7FyTuAIX1jwvEOTyCNeS+fR/+AN2A6gXy8DJTkDP7Xgl5Nj
         7641Pyk+ntsYAlJJbhoZw/5iW+QG9ahfEHJHcCKqEm2MovUV/AlfaxMgASixfsM6Q4cE
         JVsz3XktYSGwT8hVgHXFJg5tIgsbB+yOv8+A7wHQu5VQd9ypct8QEWFroyVcL35eMdFs
         cfg1l1CWdOg3AXu8Kw8xvdqOTFuNbmFriV3se23GhlRZW3PdnYfIpvhnYW4nd/5p/r/Q
         4wtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DKia4FFu;
       spf=pass (google.com: domain of 3obutyqckescmldqfdljrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3OBUtYQcKEScMLDQFDLJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id k1si1046271ybp.1.2021.08.30.10.28.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Aug 2021 10:28:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3obutyqckescmldqfdljrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id 15-20020a250b0f000000b0059bcca6ad6fso5982614ybl.21
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 10:28:24 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:200:dd51:f64e:22ea:f5ac])
 (user=jiancai job=sendgmr) by 2002:a25:9847:: with SMTP id
 k7mr24040661ybo.170.1630344504154; Mon, 30 Aug 2021 10:28:24 -0700 (PDT)
Date: Mon, 30 Aug 2021 10:28:19 -0700
Message-Id: <20210830172820.2840433-1-jiancai@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH v2] coresight: syscfg: fix compiler warnings
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: mike.leach@linaro.org, linux@roeck-us.net, dianders@chromium.org, 
	mka@chromium.org, manojgupta@google.com, llozano@google.com, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Leo Yan <leo.yan@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DKia4FFu;       spf=pass
 (google.com: domain of 3obutyqckescmldqfdljrrjoh.frpfodqj-exlow-olqxajrrjohjurxsv.frp@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3OBUtYQcKEScMLDQFDLJRRJOH.FRPFODQJ-EXLOW-OLQXaJRRJOHJURXSV.FRP@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

This fixes warnings with -Wimplicit-function-declaration, e.g.

drivers/hwtracing/coresight/coresight-syscfg.c:455:15: error:
implicit declaration of function 'kzalloc' [-Werror,
-Wimplicit-function-declaration]
        csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev),
                             GFP_KERNEL);

Fixes: 85e2414c518a ("coresight: syscfg: Initial coresight system configuration")
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Jian Cai <jiancai@google.com>
---

Changes v1 -> v2:
  Format the commit message and add Fixes and Reviewed-by tag.

 drivers/hwtracing/coresight/coresight-syscfg.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-syscfg.c b/drivers/hwtracing/coresight/coresight-syscfg.c
index fc0760f55c53..43054568430f 100644
--- a/drivers/hwtracing/coresight/coresight-syscfg.c
+++ b/drivers/hwtracing/coresight/coresight-syscfg.c
@@ -5,6 +5,7 @@
  */
 
 #include <linux/platform_device.h>
+#include <linux/slab.h>
 
 #include "coresight-config.h"
 #include "coresight-etm-perf.h"
-- 
2.33.0.259.gc128427fd7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210830172820.2840433-1-jiancai%40google.com.
