Return-Path: <clang-built-linux+bncBCM33EFK7EJRBU62R3VQKGQE6R5XL5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D1C9CCED
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 11:58:43 +0200 (CEST)
Received: by mail-wm1-x33f.google.com with SMTP id c14sf6432683wml.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 02:58:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566813523; cv=pass;
        d=google.com; s=arc-20160816;
        b=pKRgDXIlexCZ4Y1wI8y8Y+hxJykKePzQCMJwCEhNCI/BSi7Mx3qyMaqpQChwflwviC
         yXgfqFatcfHYxeuKGbJdOndeNqhqdxCAfaaaNE8z4bH7xwvLGTVXqUlHPjiVqYtxpZ4Z
         AxyXc2IIp+MDrA7eM0pHBDv18BohMnHrAa4+uSBJAHagQBUZ/cJ9Y42o0NVnZwkVu4y/
         RsFBaCIghDgKr6E2zge1UJKQfcUhrDRtXAj/Gbata5KgXhbco5ZipONbMi4mhtYfxNsP
         Ho8AYt9OI49lJBOLES6G9quqpvTD1LHofKn24vi//M+xsrCk5tvufzBhJ0nrn9JLRK0J
         RWnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=DCfycJ4DVSRESlSt5HTHqzXLPzjPZ3aFropMsCWcctk=;
        b=QNCWKAqaAoKm8tID/a2RJbjZX9HIYqs1EZwhHsf3ZQsbZSrTS8E4hf9SEmoqEx+08R
         aWhkMqab9X2E4S8rgOTq7mWU3bnrtMj2l7F9TJwaIMEFhX/0bT882G10o8gDv+ZX5DTH
         ZgX3TFPNo7TS3rf80Bowpmk1HulS9BIIhe9trHoxhvkqdHaERmPbzqiYfNFdKCrnambg
         njTA+9ljK91h291u1LPKBExTj/3pm8zDWaB2admJLrU5AF9OWQoQpBTcN7IkHK5YfuFd
         jjIPAC/2Xod6tkgESR1NSMJVL5HmgZ/wA07bG5oL4plqYDAKfpCmpTQ2AwyuDc4MD99g
         bRVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rwcggUp0;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DCfycJ4DVSRESlSt5HTHqzXLPzjPZ3aFropMsCWcctk=;
        b=hY2qgONy/YCwlzN/Xz8UHrmMIZgEUi9Ko/bQL6mS6EK97PMspRmm02VAlC0InuyUbq
         j10wbKrLVuoUU8zJKp5r3ZCYlGXYNaZLMeVH7mbfY4QJH3CiiD4pxHWrWtiuJ820/H4i
         VkIt4seevqPCE1ZTjnfbrcf+FDfmK1jz0NKpj2LT8vkhgSrW1wFyXZEyvrritjf6G+m2
         bfPlOrn/zYkR7VqT8fou5z5PB6eIumy/MKD1Dxj0aXhUGpPT1J51naYKCkMJfPp57Dkw
         PvZS7+it+io+FRu6zOYJJb3kmAOCVCXyov9ryPoqAPjSez2W3w6PbtOIaHTozf3xz/Vl
         QCVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DCfycJ4DVSRESlSt5HTHqzXLPzjPZ3aFropMsCWcctk=;
        b=dHUjdXhfOt/gsi4Eru6Jy0wpfd9tbp4bpJ85io+/Rx36ua84mimcDujHJw05HAfWNM
         9DPBI3mf9g87DAtcNTPjVrbhKnWkaN9SUrZe1e99QdEiHy24MVo/a1A+H5x8b7hWH/lL
         WEQaheXMSVfwTXn6EmO2x5eqNjPfrGVNSbbza9G7+W+jG49ebeRiL3on5tSZdNjO394R
         p24zU/4ZCC6oLv3zAQ5idnXj5fhOrf4xc+6R2BaQgGM5ahSdYrvNXizzIgeJRUrb5F9S
         /LFAHD9EfAGFjq/ZfvrHzJ79O48QADxN8BVHBqmaI6YeMp0UOX7rFJVYz/qYCjUcYgS9
         vhtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DCfycJ4DVSRESlSt5HTHqzXLPzjPZ3aFropMsCWcctk=;
        b=eVzkCK7S40bp/Qi/cjWJu9gCx/q7xcyukn5EhtQZe+url6JPr/bQaSP41cW6zHgCFF
         iDaQ8rbStVVyn5pe3vYGmCmXRMR7I7t8h81S/gqwIWDkc2krpQlTUu8a3TUQFDBlit77
         2vvOralD0kUwHG6p78p2AQ905RcpksXDYBpZ5XSPbizlcdC346/e+11aMySr9dtYyc6s
         pDwdOG8Pp2IIUOIvZUNzbO8CktxKavPchGGyb/yu7HpAmsMMqIlqGs02PM5/0k4MvdjO
         sFR0oAQt9AfyJw5Qm2tlPoqZHvEUhCOb3ESLpenOHYBQ6gh8EaxTmAVq1J3eP8rwrvFp
         LoMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWb5KR9NlVxqsdG4Sgo1BdvQmSha2s/6+PDs4Umsvzl1GU2N4BU
	ggR/tUKf8rtayZiDn12uhXM=
X-Google-Smtp-Source: APXvYqxBmsjfjN5DsnLFzuGd0QVhU3CaMMrRvZYrZT6DiexdYzC2i1vR7sByewZ6tIdr9R+cNOQWUA==
X-Received: by 2002:adf:ea01:: with SMTP id q1mr21976548wrm.271.1566813523099;
        Mon, 26 Aug 2019 02:58:43 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7713:: with SMTP id t19ls6082406wmi.0.gmail; Mon, 26 Aug
 2019 02:58:42 -0700 (PDT)
X-Received: by 2002:a1c:e710:: with SMTP id e16mr21200681wmh.38.1566813522530;
        Mon, 26 Aug 2019 02:58:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566813522; cv=none;
        d=google.com; s=arc-20160816;
        b=ZChBJLxUPT0eEwR+9+M3eQergec6LS2J/UjWuCZBESfrqdjLTRXOlSrFV9sJEJVugE
         PWwlFEUSyGKSUBRMt17E7ntXcWseB2UoUMskLQ18FQcFLX2dmHI9HhXEObaLxuBC54HA
         qYo9rb8mcJvyYzMI3ffcvEJTa4xoO44jcSWwUoUG+9To48NG65+OISC1oo/Naoxb14mw
         GTsiOybG+En2LaI6vz4zwSHKwzI9+4dN1uMQ2K4lw33ibwW9KdBx2zx2rVZADVpEFOvj
         juceQRhNKNQQmXFYa9YmN5e18MqZVsJw5fPbSHl8JBCUDf+gZO8zhb5fir19ahJbP/1u
         dofQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=AoSobNwrgWG+0xMdeEJoRWL4tyvVfhtrdTcQZJSWFp4=;
        b=EiSo/ZVG32NpcWbvvZGNaxPZFjFiIa6poUXxt5VYql4h+PtfBShTsyLOCeMiYMNkjj
         Y3Oi6KIVhxRKCCU8Sb9U2k5wl7YN8vldyUMpbLry4/DJ/ttwnRipXwBmtpkyYEugtwgi
         oJumfV1m+7Sb1UydKHrOYfmfPomZAO4K0pd9k6j0QuHb0S8R29yHzT0QK8gg1flFgWAQ
         yzLXhQLavigxP6BUUIPHfxZMhIFI7vkdW3kxHSyojL+SJ0C5EldjZztYEwr7rL2z8NXV
         w/rdVaAnrIfK7MXZo44DPB4/uvjlIpRT58dJVpRrAYPpyq42TgwzidUUZibFeXuwFB8h
         tTbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rwcggUp0;
       spf=pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id w17si634866wmk.1.2019.08.26.02.58.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 02:58:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id v15so14845931wml.0
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 02:58:42 -0700 (PDT)
X-Received: by 2002:a05:600c:114e:: with SMTP id z14mr19782960wmz.161.1566813521900;
        Mon, 26 Aug 2019 02:58:41 -0700 (PDT)
Received: from localhost.localdomain ([2a02:a58:8166:7500:a940:180f:b044:ac12])
        by smtp.gmail.com with ESMTPSA id 24sm11025551wmf.10.2019.08.26.02.58.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 02:58:41 -0700 (PDT)
From: Ilie Halip <ilie.halip@gmail.com>
To: clang-built-linux@googlegroups.com
Cc: Ilie Halip <ilie.halip@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] bus: imx-weim: remove __init from 2 functions
Date: Mon, 26 Aug 2019 12:58:28 +0300
Message-Id: <20190826095828.8948-1-ilie.halip@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: ilie.halip@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rwcggUp0;       spf=pass
 (google.com: domain of ilie.halip@gmail.com designates 2a00:1450:4864:20::341
 as permitted sender) smtp.mailfrom=ilie.halip@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

A previous commit removed __init from weim_probe(), but this attribute is
still present for other functions called from it. Thus, these warnings
are triggered:
    WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:imx_weim_gpr_setup()
    WARNING: Section mismatch in reference from the function weim_probe() to the function .init.text:weim_timing_setup()

Remove the __init attribute from these functions as well, since they
don't seem to be used anywhere else.

Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Reported-by: "kernelci.org bot" <bot@kernelci.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: clang-built-linux@googlegroups.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 drivers/bus/imx-weim.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/bus/imx-weim.c b/drivers/bus/imx-weim.c
index 79af0c27f5a3..d82e8c00523d 100644
--- a/drivers/bus/imx-weim.c
+++ b/drivers/bus/imx-weim.c
@@ -76,7 +76,7 @@ static const struct of_device_id weim_id_table[] = {
 };
 MODULE_DEVICE_TABLE(of, weim_id_table);
 
-static int __init imx_weim_gpr_setup(struct platform_device *pdev)
+static int imx_weim_gpr_setup(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct property *prop;
@@ -126,7 +126,7 @@ static int __init imx_weim_gpr_setup(struct platform_device *pdev)
 }
 
 /* Parse and set the timing for this device. */
-static int __init weim_timing_setup(struct device *dev,
+static int weim_timing_setup(struct device *dev,
 				    struct device_node *np, void __iomem *base,
 				    const struct imx_weim_devtype *devtype,
 				    struct cs_timing_state *ts)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190826095828.8948-1-ilie.halip%40gmail.com.
