Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBSMETOEQMGQE45SJCAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CC23F7E4D
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Aug 2021 00:21:04 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id t2-20020a9d7742000000b0051dd85217a3sf300320otl.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:21:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629930058; cv=pass;
        d=google.com; s=arc-20160816;
        b=VeFA1p+mz/kO+iV7CopUm2LNarhbJdPgECJrnUdkoYObYDEd4qEiz1YiA1HeEMSfPe
         PfJaGiErXQrao28ss6YiDYUDBBh2nYq+UZkBdAuZvFzo7d7aBlJqY6Xl7Fj3EjU9na+e
         tkkTut25r5m2ky0PoQDxSLdB3R6WjYcdu49GI0T4jm0JdEsyOjUElMazEf/91R4eFWws
         7Z2a7NCnbHF/hxYP1XUeqRF4cib//AUUHQrE/Mmvj+d7HfKYTl0z51+uBFWcttjeiGs/
         2tGgWHVPumq1cGLGBLfiv7WyHUDerrm+WqdlgWjUlphuqdRZHGQfWXycyBl1IhsxoZYi
         9vFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=FgHUNhU0oXQpN/9msxqRVVE3+10gPuLCoomhWm1PoX0=;
        b=uBz3g+tNv2Vg/HFqHXO9nsboU50FLR2rN4WBdPNxK1DSZYMhGujHDDoEs/XTGyanFG
         rvfG4MYpBVajjXwRoQ7g1ALhxDo2H/jrRjELtVV4uxpB0P24OALzGPByBiCcMy4dbwyO
         WEHrnZ5yodO9EtGmVEt82ZYH29KtH0C5zdE+UomKlkxnNJ5gxMBANvT3lJAKdvP8g6yY
         CPa29Nb7BR1duakEOiLWEubcxJFHopHgQCsI9/sPNgl3feYlRlsYHPqrtqJu7HAq8s2w
         Wu9rMhKh4XUNqsxa96FN3YplYfNBtTqQEr4MsikC5I6XPSx3ua9lX2OJyDdSUaGl5LM1
         A6eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VWNy4eOv;
       spf=pass (google.com: domain of 3scimyqckexgfewjyweckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ScImYQcKEXgfeWjYWeckkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:message-id:mime-version:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FgHUNhU0oXQpN/9msxqRVVE3+10gPuLCoomhWm1PoX0=;
        b=fqaPfmoBbirc42M/nkeR1H0M7X0Dh4/bLVT2kFiqC/F0T34sktkJReVjbklqA71Ztw
         t9KBHcKzNo4RSFAQY5yi+HDYy/GbWUNaIkkexa2WFHRIHdaVRKxWjAIzONpvz7tH9jhI
         KmMOpZuQYYtsVyhJV3OoI5EuZmud5wzdbX5PRyto+BU+EwnwVCHl+g2bu/D9BZ+acdm5
         GZzevOWirPJEbCfWHFqIw9G3i62EKRJ7lGvO2ut2wV1hRJsoosErvFycnExQJvGVPvfD
         OuHbV4d9PtFFtl1Hz12HlV8l30o60rwKgI7V/NU4ZSJuxYdQKe8mbLgkjAwRwGcwveHV
         YOEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FgHUNhU0oXQpN/9msxqRVVE3+10gPuLCoomhWm1PoX0=;
        b=QVF+jNkQz1kJg8yMXuCFSBWk7WS1KXGcdVOCYixLz4j4OEIS6j057/QS3zRCk1uEEv
         rPMRwa7nGVc7vGjCI6M0Yc+hWHLuOuopDBvf+U4/4nG0Knpw30cLXHdM+zjlIhyzgdHR
         ydxZiGgeloBodsclLocHUC+V7jwm+fh6ZMM8DnguWAYl6kTy30vwwzmD1ZPO4gs3llqA
         TaToGrtO6mfIYwHYgazGaBX5vpYvUD9Auy7MqWcpcHAegfelKIcbnuMcY1xNsjuk2/L9
         AqStzV7DKaSLzYd1JQB0ZrUGceSLvq+QmWDAQ3dQjdO1PdEPqs4qCmQyT9qHurq33JuG
         KCQA==
X-Gm-Message-State: AOAM532f3SdDcvT0D36OLZ2jPbObFvWx3BnVtqgb+7YW6HP3/16rwmvF
	CnkPsgU0UQThJSNdH3XKCSU=
X-Google-Smtp-Source: ABdhPJxmI1u5whAw49w5mjnF1oQbDrWJESY7jg+HcFZnoV0bVOcAU7BCpC4tUUlQlhu/TdgZqvBPgQ==
X-Received: by 2002:a05:6830:1f59:: with SMTP id u25mr527916oth.321.1629930057922;
        Wed, 25 Aug 2021 15:20:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5f89:: with SMTP id t131ls588517oib.2.gmail; Wed, 25 Aug
 2021 15:20:57 -0700 (PDT)
X-Received: by 2002:a05:6808:296:: with SMTP id z22mr2905665oic.99.1629930057588;
        Wed, 25 Aug 2021 15:20:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629930057; cv=none;
        d=google.com; s=arc-20160816;
        b=Jk71gGnpQ6+x3wGRTrk+eC9e21Bb5Ux5fbqBHzE9PgrL58vz2800y/e2gfUZiKy5n1
         hGVPS1OP9sPREGV/gahbV4Xss3/38d8toTCvS41ILhPfS8BR18Y7Ikdcq6RzrEGEu6yU
         tj5mzLLQU5SEW/kt3+MSzMtE9hhYUnpCNHNNtI9BdELv6JEvJZNBEz76haAdLGrxFlMK
         sooswe4UnfcXnjfd+d7Y50Ks2k0h4dqizM44706m1frVkNEfkaADNBUg0Ot7eUg6XbFW
         ZUuSWhWYytfxI+OPLS2yr8/pHZI7J72zzDPl99LCjmeFdGwGWaO+3fa3t2rD3zo/o1w3
         nfnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:mime-version:message-id:date:dkim-signature;
        bh=BXmW2RjvQEh9Bli/X6dqHjbl1+e3RPnk9A5yhhpZXUk=;
        b=GLfzfnIp+BiiyzV6mCQkWEA8d/2e+mXD99Dh9P8/0A6fe8fDVoM4F7xvwNviBu/ObR
         DIhdN9wYnu/ZM5WYFflL+CMVcv1+iKCPXGH8s97lfaJOVcJqaToxRZnSL7V6A/QW3oqE
         cvnSyup+H/JnaBj9WBLuvZl4TWCB8uU9KagjQ7lf45DixJ/7tslneUKONTbFNNyLvSEO
         YLKshM3DpzeKHQC8KZlJ2hL0MhUntLQeggSrc9vYYS9ROwzs9qG63a57GB5JjKontTjr
         Tej+btCKOKHJOVf/GMNvWCi0bz332FFJxeiHPzX0Xd8AvTOilhEVIX6zwsUFwgwO+48h
         LHyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VWNy4eOv;
       spf=pass (google.com: domain of 3scimyqckexgfewjyweckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ScImYQcKEXgfeWjYWeckkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id s20si124086ois.4.2021.08.25.15.20.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 15:20:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3scimyqckexgfewjyweckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id q9-20020a252a09000000b0059b9b61f6ceso1006663ybq.19
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 15:20:57 -0700 (PDT)
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:200:3664:f78f:3b89:adc6])
 (user=jiancai job=sendgmr) by 2002:a25:ea52:: with SMTP id
 o18mr1346886ybe.150.1629930057109; Wed, 25 Aug 2021 15:20:57 -0700 (PDT)
Date: Wed, 25 Aug 2021 15:20:51 -0700
Message-Id: <20210825222051.2106481-1-jiancai@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.33.0.259.gc128427fd7-goog
Subject: [PATCH] coresight: syscfg: Add initial configfs support
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
 header.i=@google.com header.s=20161025 header.b=VWNy4eOv;       spf=pass
 (google.com: domain of 3scimyqckexgfewjyweckkcha.ykiyhwjc-xqehp-hejqtckkchacnkqlo.yki@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ScImYQcKEXgfeWjYWeckkcha.YkiYhWjc-Xqehp-hejqtckkchacnkqlo.Yki@flex--jiancai.bounces.google.com;
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

This fixes build failures with -Wimplicit-function-declaration, e.g.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825222051.2106481-1-jiancai%40google.com.
