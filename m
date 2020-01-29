Return-Path: <clang-built-linux+bncBCJ7RPMX4EMBBSWOY7YQKGQEUQIVWHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE9514D1C1
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 21:12:59 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id z24sf344755vkn.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jan 2020 12:12:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580328778; cv=pass;
        d=google.com; s=arc-20160816;
        b=sQCAKEIY/T6SiO/qLkXbMnv7ZvjXlk+l3XkCMKlZWxV612i5Jsqv7DA6EPniVCAd4Z
         vhbIBrortafFexTvy//IKtubGEGxNjeylneO8eXxnQXr87601Dyt6A/ETBAYLyLc8zC1
         Il6Gez188ZRatI/G8FSR5KACQhbqSVyzyA8VA4G7kIr6Y4tBEKf/8RMHgPIBkjMewm5m
         5IIPw4DEkQZYj7TsUFh4+K4qX/32mSjoWvD81Km6xrC3j/UTuOwMjGOAxRbO0KA0El8K
         b8/308Q2KNFl59edJVOgNdw4ELCqG9oMhEh7rzjBHvmWm2fQSO6FRDxv2vEH6Sd31mji
         UgSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=0QToDsTKgLtiCmyMxOEKJDdspn704MZ9b+opN7xA84Y=;
        b=RyR3pCSvBvv4VDp6oz1x1Ts+mlguVIBkjLtXv4qEiFfg45AfpwGErqLQ2VB5atUSMk
         qaO84l7ccEL4zeyZ8GDeUxoZFSHWZmNYuTXoYlaHAClvlI+mAaDrfNE9HmNNRp1M6NMu
         tn1OCUTswMv9LSqMMvm48+HdmaNL9GOdwxC5kyIU/m1+WasIylcXQbAR0CKTZj/T7+ut
         z4a2SFs5e3E8Hy+fWyKUByDkF0seQO1GUY3YnEHZtxI34JgVZXAEwRb81FzzQSjDaJgr
         XSogrkzR/HpisJQjwKasT9nYE0aM+Hi4xvDqve5MLJvyiZHs1Gcwsoiq60QP050FHp53
         tIAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MSOBMFCy;
       spf=pass (google.com: domain of john.stultz@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=john.stultz@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0QToDsTKgLtiCmyMxOEKJDdspn704MZ9b+opN7xA84Y=;
        b=fdNd1rus9Vlpckvh108rIhBFv7HjTIqh6VienfW3X5IqJ1DmG5HdIE3GQlzFYCaN3m
         IHBPiFym0dg+yt6IspcVcrjM6HH3aR0ytO7FTINZTt51BbIsBlBwxcpp4Lq/RzSCqCtj
         M0h8rCLrF382zMKM3uxc5p+376eczE5VklK63HB1Y0CjrnzBzKOz6Uv76fSJvDbp8M2a
         L/pCFR1iVzq4u8cwh7DEMDJVeFUo82Knd9LCQHuV7m6WrVu2lEt2ygJXBJF9ZifMnWvN
         ecUNngr15W++aulbzpvEB8A5/jV1G6CfQxOhVcaTEEK81i+Xiu6kCjritQYF+yw66t2q
         Rjlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0QToDsTKgLtiCmyMxOEKJDdspn704MZ9b+opN7xA84Y=;
        b=Z1WOpVfmHaSDm1/2A0Hga6Ktund2h1wo8VtlWB0reUJv7HxpvisM86v5/yRU6DnWSO
         hGUAh32EjraRGzA4wsL1bnB3EOOAtoUU6HrMQ0J7shS3r7pvI8PdixlarRbB2s11lGE7
         em5DOHibWkUfYErupLINRIrwyy6v5ZShedIv6sVvbeGn2WTABqrKyfhTUeU99G0STWMf
         Cb8Tw6c8D68DqjpRp2SUfIzvKBxX5zwILicMBilDoEgwD2uFMAMY7Yw1lN42LeFVl1fo
         ifn5rHPl48VfyBHvv0HcK84WndTz5OFo2YEqQA9WBtb3e43ZqkIBUob25JpBovJp6kf5
         M5Ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXRTkV8dxeNEWkrDx2BaR03SEGdo53be2pqCEBcFyESORkL1i1b
	lFcEYqJsRPn7jL2DdqdepQs=
X-Google-Smtp-Source: APXvYqwFDaiDf6vV5OdojfOp8kkb1/JAr3WOlCDdMi8K+E70LI04vuk9ryonh8e4ToUqSirv4DTd9Q==
X-Received: by 2002:ac5:c314:: with SMTP id j20mr614037vkk.32.1580328778202;
        Wed, 29 Jan 2020 12:12:58 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd2a:: with SMTP id a10ls55486vkm.4.gmail; Wed, 29 Jan
 2020 12:12:57 -0800 (PST)
X-Received: by 2002:a1f:3613:: with SMTP id d19mr576075vka.71.1580328777817;
        Wed, 29 Jan 2020 12:12:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580328777; cv=none;
        d=google.com; s=arc-20160816;
        b=NKDGfTC7Gg9AVyaUZCf1O+dvO4aRKr/OnfnZy9r1ymUQ8OmbkjyvSjrn8drUzfkN5C
         PLCiimEp8j+/H+MHV1jV1cFCqI7gx07P3Kp/zMUxCeWCTYh/BRlKlBXK13vIOvTGMdf/
         vgG/iF+QRKkuZiROMa5kn0w5nmKofEvujA/yP1GVcr3EJOH8SYARA9r3L5Urik5Qjdh/
         qiAG9oonzEXD5Wcr9sp2R8K0lEA4GAIxAIKAF8rKRiGUFghcTF3o8Yyg6UK9Cc3vzLgf
         y4ep1t+qbiC7vl+shpl2uA29noBxKkHO4CIuJcNv/INLVvbE2JE2Q+Gdap4BYszr6TlJ
         TDLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1QswzSwNt0nlyMcQUYRWMFVYAypouu+MHGAuWWfmqtk=;
        b=DTMP+iYazudTMX0bF7cU9kvfx+03J0/BWf5CmjflDEJAhvGvTixLnDRh5eZo0FAx9h
         xFepy0oJSN9sc8MPBAYk28M1/eULLUxbR9AonL0UMxhy8Lt/PwOPPteB6DKKemLks/9/
         V4l7AsVSqMDexMDW6Va2JYSbGsYyjkx1Rq2I+JekqPVNnSzO9TAoZB1MFEsVEulstjpj
         AdJZEsrgyCe0vg9f4g922URtHKrWtDHpuP4Iv6xWeNsNzP0VKXlbM38QoDfvAOq/hlub
         7csmDIjgEBv6q+ZsbdARJkZQTVDMZbiAoicbkoH8RDjxeG0nGlgZuQ13S0NaQTZKye4p
         AASg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=MSOBMFCy;
       spf=pass (google.com: domain of john.stultz@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=john.stultz@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k26si103690uao.0.2020.01.29.12.12.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jan 2020 12:12:57 -0800 (PST)
Received-SPF: pass (google.com: domain of john.stultz@linaro.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id p11so375625plq.10
        for <clang-built-linux@googlegroups.com>; Wed, 29 Jan 2020 12:12:57 -0800 (PST)
X-Received: by 2002:a17:90a:9285:: with SMTP id n5mr1629941pjo.58.1580328776641;
        Wed, 29 Jan 2020 12:12:56 -0800 (PST)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id i11sm3579727pjg.0.2020.01.29.12.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jan 2020 12:12:51 -0800 (PST)
From: John Stultz <john.stultz@linaro.org>
To: lkml <linux-kernel@vger.kernel.org>
Cc: John Stultz <john.stultz@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Sami Tolvanen <samitolvanen@google.com>,
	Todd Kjos <tkjos@google.com>,
	Alistair Delva <adelva@google.com>,
	Amit Pundir <amit.pundir@linaro.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	freedreno@lists.freedesktop.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Wed, 29 Jan 2020 20:12:44 +0000
Message-Id: <20200129201244.65261-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: john.stultz@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=MSOBMFCy;       spf=pass
 (google.com: domain of john.stultz@linaro.org designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=john.stultz@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

I was hitting kCFI crashes when building with clang, and after
some digging finally narrowed it down to the
dsi_mgr_connector_mode_valid() function being implemented as
returning an int, instead of an enum drm_mode_status.

This patch fixes it, and appeases the opaque word of the kCFI
gods (seriously, clang inlining everything makes the kCFI
backtraces only really rough estimates of where things went
wrong).

Thanks as always to Sami for his help narrowing this down.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: Sami Tolvanen <samitolvanen@google.com>
Cc: Todd Kjos <tkjos@google.com>
Cc: Alistair Delva <adelva@google.com>
Cc: Amit Pundir <amit.pundir@linaro.org>
Cc: Sumit Semwal <sumit.semwal@linaro.org>
Cc: freedreno@lists.freedesktop.org
Cc: clang-built-linux@googlegroups.com
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index 271aa7bbca925..355a60b4a536f 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -336,7 +336,7 @@ static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
 	return num;
 }
 
-static int dsi_mgr_connector_mode_valid(struct drm_connector *connector,
+static enum drm_mode_status dsi_mgr_connector_mode_valid(struct drm_connector *connector,
 				struct drm_display_mode *mode)
 {
 	int id = dsi_mgr_connector_get_id(connector);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200129201244.65261-1-john.stultz%40linaro.org.
