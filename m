Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBTUGTOEQMGQEIFK44BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BC93F7E88
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:25:19 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id d202-20020a3768d3000000b003d30722c98fsf784163qkc.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:25:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930319; cv=pass;
        d=google.com; s=arc-20160816;
        b=AIzSd+ClAVuEP7MQui30pgTQ76WmrOuy9/KxMoRxdRewpZmhn1con35qIiYxImLEN9
         4cWfgFlH8thEToLM22Il+cAWohi2YkXyPermADy73Mg00ljgSL9A63qEAkUNT9UH6z6v
         9pNuZVY3dfTz7BOp/q6AR2RrdGoewZ6/vULy3euJWppuB9I+xU5xUTTewoZNX8IMnDsG
         i/6VzurTDBA5JE5WbJHCorT32anCFHaTrrH55fGrZcokhrtc1UvkFWkov8eKRHDVmYJw
         zEPsPv5ad+PtEndusDcKCKPAyDPqyNcPDTwAzQh9Oy7/o69STO73CJshymycFPRd3o8J
         iRhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=5cAzyykV/sgP9Ik+5VRFqi0fszG4agK4kdC54jb+qkY=;
        b=xpZJc7IOpL+M8EC6yYxlzqn6lep3FnObMKKuSfhH9ON5MB83omF3ctypEYLNJcW9Is
         6atsM/bxvGENZ6G6w2QSFvoCwg6srA/t+EDnEMb62XvJEwYr/HbBGTialUnYzQvbPOiQ
         uWVv/M7fZ0QVpIsIbD7OfM6/K7cP51OsE7HHraL17TipGxHxlrYmcsT5Qk8uqGR2EaoT
         H76vcVQmnY7MosoJzB39moJStCmktnCTVglT5/qSz0J9EuTgA2wYdn3WQN9GzsftgLC2
         BQNMlrPPZ6+keWSmAU4a5kJeaf0PgoM5PM1+flHGkWpYwRyZV6XwCaJbhSJfcASGp5xz
         md+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SnTQ1ly+;
       spf=pass (google.com: domain of 3tsmmyqckex8mldqfdljrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3TsMmYQcKEX8mldqfdljrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=5cAzyykV/sgP9Ik+5VRFqi0fszG4agK4kdC54jb+qkY=;
        b=qsx1hvWmIPusgI9U0uGEGMB6y9Hsi0zgN9bJ2p6LjTXE/KhMpu6lHrs2KA8UvBCtXt
         +ZgYSz1bX5iPSVwLZH9SgWxx/YTN2WBREMMNBklrEbNZOXz53PLzdCqQ75Ksd4GI85lY
         P7Eq5yw7D5hx+lyOSjjq58PbXeY4qtZ28G21c6iHs1HA2UdjV1FH+YF4WG3n1Ke7gTF9
         CPs64BnN5+6mYIWADHTqpu3s7HMgS5zUN+MusR0t0p2lUO4gbyKYuzTEEeXu5DcZLOJU
         I0udhcuWEHKFbdUGhQTKo6oNLU5Mj7fXLx8lJ6Dq23hNFrn+JnxtHMK9gYFtccdzv0u4
         85DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5cAzyykV/sgP9Ik+5VRFqi0fszG4agK4kdC54jb+qkY=;
        b=DpJrrZOIfI+qPLCN/lX8ofPwsb2Hi9gBnfgFg8y37BB4otTpojVw0whNnxkHhf3H87
         CyoQ62ObxIeicNOc8b8nrsNIYWDDSDVmOmmtt9EQRL7WJvP/Ym0fHWl2MwfgLlB/3cYY
         TwCt0b5DIFDsqbn/33d43Kwx1xv5xurJrUpn6xZeZBDr+E5Kf68Q/4E07wuPqffpGxIZ
         tLLhDfzHgsxlTilYiBv/Yaiu0N6c1ishC4WG3TFdQIkK2FTkSKxC/9LlFS2pL4Aptsni
         EOpjifVyxzDPoU4np4s6yOFnzmFNdWpgznBqhmAr7UA3+0kkUMghh+4fr39zkn6RFU0Z
         Rnjw==
X-Gm-Message-State: AOAM531c99QJV1mLFkId5VlDgKnKfefl26BOu2zVQGhCdiuyE6iIDlJV
	Q/Pt278PNoU8lKI1AERnkRg=
X-Google-Smtp-Source: ABdhPJz+8SrwpLKNllFz4qAfoBK1SU15knd8yKGKrkV98uoPInkF+9bI0VwBcoJHgWpJv41hKEsDUg==
X-Received: by 2002:a37:a88a:: with SMTP id r132mr875217qke.212.1629930319004;
        Wed, 25 Aug 2021 15:25:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4006:: with SMTP id h6ls2037424qko.11.gmail; Wed,
 25 Aug 2021 15:25:18 -0700 (PDT)
X-Received: by 2002:ae9:f40b:: with SMTP id y11mr849875qkl.107.1629930318544;
        Wed, 25 Aug 2021 15:25:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930318; cv=none;
        d=google.com; s=arc-20160816;
        b=qnfMkhyLohaq4d0oVHR4c3nLOoD8M9AgGEpNWtyBRoQ2bmQGJhslJwGqL1X3b3B77g
         DH0B2Q3LJJDnoZbGFSv7XdJzq4+HAXX1nZXecbTdnbefVZbfPsoUzi6q7pk6sGrpmMiz
         i3ZlkSKT/4tYablTjItJYvBEBzgT8BIQAWNbUpqTN96B8NChEbF3M/NaRIfExXCceDn0
         M79UblL8KP6Nvn3N581ZcrJgDsrAdrx4TcguMh1NGHXdkEOBgOLktM2JzDLbr2sfVyiu
         Qo39N8rClNeUrz1sRMoyFTZboYhxYd/5ss78T82FlYX2vc4daIx+w1iEGZxm8oDCmaQH
         5Smg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:dkim-signature;
        bh=fT/uiX9DJiKWLSrGSaUNQbEmdVHwY+0Iq88fa/vtsiw=;
        b=o876A+zKa+9VPeGT1WVO9grEGccFM1SrFBSUrrDTTA8y1uheGxziEk3aBblbWiSSjL
         YwDF0w7BxwN/OMUjp/JHcpNjbWQki9xgkSDJBr6LPUznXF2WO6YzsvHrpyV2GuzwpN3H
         ikJmJYaRxFdQc1nyfjEAdZx7tgels+XhYyzBmIj2bdVkocVBYOS3ZdHex07p+azMX49f
         ZKqsyL/YVk2nl7HUJ1ova6niP206KHwDp44GnUnQRPEYCOVeEtZUD5D6RLE3ol25glAm
         jpQcMNEgL90RFLA3bAh/CDf+uIy/uqUM3FSHlFF8BB7EpB861FpDoTpLG9MpUkaPSURw
         2A3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SnTQ1ly+;
       spf=pass (google.com: domain of 3tsmmyqckex8mldqfdljrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3TsMmYQcKEX8mldqfdljrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id i4si90168qkg.7.2021.08.25.15.25.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:25:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3tsmmyqckex8mldqfdljrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id r5-20020ac85e85000000b0029bd6ee5179so252766qtx.18
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:25:18 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:200:3664:f78f:3b89:adc6])
 (user=jiancai job=sendgmr) by 2002:a0c:f351:: with SMTP id
 e17mr605774qvm.21.1629930318275; Wed, 25 Aug 2021 15:25:18 -0700 (PDT)
Date: Wed, 25 Aug 2021 15:25:14 -0700
Message-Id: <20210825222514.2107728-1-jiancai@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH] coresight: syscfg: fix compiler warnings
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: mike.leach@linaro.org, dianders@chromium.org, mka@chromium.org, 
	linux@roeck-us.net, manojgupta@google.com, llozano@google.com, 
	coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Suzuki K Poulose <suzuki.poulose@arm.com>, 
	Leo Yan <leo.yan@linaro.org>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SnTQ1ly+;       spf=pass
 (google.com: domain of 3tsmmyqckex8mldqfdljrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3TsMmYQcKEX8mldqfdljrrjoh.frpfodqj-exlow-olqx0jrrjohjurxsv.frp@flex--jiancai.bounces.google.com;
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

^[[1m/mnt/host/source/src/third_party/kernel/v5.4/drivers/hwtracing/coresight/coresight-syscfg.c:455:15: ^[[0m^[[0;1;31merror: ^[[0m^[[1mimplicit declaration of function 'kzalloc' [-Werror,-Wimplicit-function-declaration]^[[0m
        csdev_item = kzalloc(sizeof(struct cscfg_registered_csdev), GFP_KERNEL);
^[[0;1;32m                     ^

Signed-off-by: Jian Cai <jiancai@google.com>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825222514.2107728-1-jiancai%40google.com.
