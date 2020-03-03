Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBIML67ZAKGQEACWK3KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D0F176B2B
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:49:06 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id b15sf545133uas.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:49:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203745; cv=pass;
        d=google.com; s=arc-20160816;
        b=xRXo52LjuFayr25+WhoGp53AgJtqubiRBLj11Ysr4juGsUMmHRhMAEf8OpBCpsEf6A
         wEIiAWAggHW8n53l7Ki27CSta1wku0PzM3EJGUweJpDRlACI27qPYIl9MF0O+aQy1JmD
         rWjOjdr2DaTxY7UaCSx5GmKJgPvPq9MQspxEp0jcK+oOVc+EJKtOJy/nzYiZQx+xDaYC
         cVsIvon3CtHK+C/hP1mbZw+vD62igSrzRsLSEVLGSJUhJU0qnrEN6ZI5eOzczhbvrihE
         SMdSn0Zfw+efAIYOY70sZ6DzCpGc6LwofE6/CjEW8RiM6m8YY79SIaK4yP6lpvncovr1
         CwwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YoL/nOqgIAEI07VXZ/k4wKs2H1PMh7ePwP3tQRGy/1s=;
        b=IV9kALDUpHhTcuQOtDt4Zvv8/S4XG5ojjeWf6qzAKORLZwc9sv1LbXZ7AMFwJ65lho
         6fVphJCJKlxCKe+mEzXhdFF4WECPf8v+FvtuX2tR62mhObFcDEeQi7WQq1rWjknMr2mR
         eBjtoxOxwSuoycwYEw9aCc7INrHhZCN33/0BNHcPsVGa+dxH67fMFhOEjeJRR543iaz9
         FLYjJBknqwJWUuJOiWeVjp9wNJtPc0h4E0wRBTk+7Cnx7xSQQ+V3ayVEyLo+ddDxyzbD
         ruS3sWihAU23Y1ZRnM101ZaGzNU6N1RKfVd4Rej3T/V9Q0OC8WJGwJ0cXd/LIFx+zFUt
         VYww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WKXXbeb+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YoL/nOqgIAEI07VXZ/k4wKs2H1PMh7ePwP3tQRGy/1s=;
        b=hk7O5JUihtT79b+5FJDwve4o2pjmPIPpN5CCfyH9ym1FZxeVaUYJSRxuTXHcuCU9rW
         s1FMlMjUu8JzmxTpx50acb+PnIm+SX02zHr5YmWB7juLJpQu2TPF5u3EUq704FGIiKr5
         BwhqnQQe4/V/imKxAmVwVhYiJ9Muyu2P+8fsjyVbyba1pUwE6/9ynDIZgHLoiUKnnWPh
         rSjDYpWHKOjIeTSIQQXFqoD4O+b64Cw0urQ0BeXW8K2mDt0hGlNjqzkeDq0GQqUB6rI3
         pmT06sQxAWoh2db4pGzNHIlgIMQCeUNdtOQFoJdXOCdg0jfFuS7NtfWat9f4iEQ6qRGz
         9mRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YoL/nOqgIAEI07VXZ/k4wKs2H1PMh7ePwP3tQRGy/1s=;
        b=sFViEi1uAG07YKk9mmHc7F6C3th/xvqItvv2nEa9vdfYiPJ85a/IhuUZIbgWmwcsUC
         9/y4j7NaXX9NO3WhiJoa6Dl2T/2jzYOAxI1Phq4tJ+unluD0H4kuVHg8jeFha6zPkkZF
         ED24GDTIuKuVFnoZtSCSI2FsZzSDLvoeGVQ+nMRGWuP6xavEn8QiXsvm0eAB8Ue+LDpE
         kHn29e2h274IOsGydEUbMjK0bWwsuCRXEoTqW34Ja8BGkShcaP3TAIcgD5gd6R6t8Xql
         /E6U2TUR5EqCpXq+rOuQC/s4hCo6Rk8e7DOF1rem4o3GdeVoIbJav/wC9Q7wrV8BgeAp
         FWxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ274H3CN0FK5R8IyZWBY5752Zx+HLDQLQRyo0zZmEKw2K7apYYp
	xmKPvINGXErshikJMqIf7/Y=
X-Google-Smtp-Source: ADFU+vt1m5ccPYHpBlKni75Qluxl0tc8byUK4LIO1TcrCCkwCDZ3fOxU8FOk91e9o9dm8C+wFJfXTw==
X-Received: by 2002:a67:df97:: with SMTP id x23mr1191248vsk.160.1583203745415;
        Mon, 02 Mar 2020 18:49:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f94a:: with SMTP id u10ls253511vsq.1.gmail; Mon, 02 Mar
 2020 18:49:05 -0800 (PST)
X-Received: by 2002:a67:e097:: with SMTP id f23mr1126183vsl.122.1583203744985;
        Mon, 02 Mar 2020 18:49:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203744; cv=none;
        d=google.com; s=arc-20160816;
        b=IvORRkoh+Y1EXN7/TKcqHsD+7zL924xzu62+juuz/nRM3j0cGMs+rFzrrNYnTSLcqg
         S1KCoE5zfrRJC4hTKitWxJGfqQkAGkvPOkrdcdTh+hYv4e3PpH+g5YXrNDJET5ENVpn3
         OorFQCK2/x/aXmuWrSFBO3CF/KZ7K42R/LFoBaEodX4lOHczmwbm+Sz3CWqdbo7t28nc
         4fUxJDnoSx9smnWHwcEh0wrt9yJ0csWlfn+rt6nK/MThEsI4nf424mNZUtEq+Y1K7c76
         1lyzOghG+0dl7Wmj44lI767FgHTKZl3VOvXk5nxMf4OUFGf9rhkrcpplRy0nB8IjVD50
         5V1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iDk/FiDIryRLL3O2R1bSrcbSwTG/VT5pskyXb2rY16g=;
        b=ukEWGr9hjwMTwr1JuXvwL53x+KAYx7TC4/Vy84wiCOi+wWSyFEfjTMjNIxYp+yd8F+
         00LKampwKRBKE2f5F+GsA1cpDD+Hm/FKG+kJToMvZk5GiY/sfbsamnOt3ZdnSmiGaYKO
         TJmMOXtsCr1ix+sHDLHlKat7bzrpYXWY96uszQfAKeSea98IIpoEqImGHk4RjZd59QAh
         RmOyLr6sDe8XfjTqWp629C4UxsxJKVYu5S99xvOWJQdREPTk6r/OYo38KFpkYr4w2Jg+
         R+z/3UPZJofxodL+2hu+dBtPYoJepVgxbPabwbhcCef8fztsfbYtPptQgLszvpZpkKZ9
         veWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WKXXbeb+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h6si1033882vkc.3.2020.03.02.18.49.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:49:04 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 53B1824686;
	Tue,  3 Mar 2020 02:49:02 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: John Stultz <john.stultz@linaro.org>,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Sami Tolvanen <samitolvanen@google.com>,
	Todd Kjos <tkjos@google.com>,
	Alistair Delva <adelva@google.com>,
	Amit Pundir <amit.pundir@linaro.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	freedreno@lists.freedesktop.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rob Clark <robdclark@chromium.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH AUTOSEL 4.19 09/32] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Mon,  2 Mar 2020 21:48:28 -0500
Message-Id: <20200303024851.10054-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024851.10054-1-sashal@kernel.org>
References: <20200303024851.10054-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WKXXbeb+;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: John Stultz <john.stultz@linaro.org>

[ Upstream commit 7fd2dfc3694922eb7ace4801b7208cf9f62ebc7d ]

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
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Amit Pundir <amit.pundir@linaro.org>
Signed-off-by: Rob Clark <robdclark@chromium.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/gpu/drm/msm/dsi/dsi_manager.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_manager.c b/drivers/gpu/drm/msm/dsi/dsi_manager.c
index 5224010d90e4a..bd66d2aac41f7 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -328,7 +328,7 @@ static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
 	return num;
 }
 
-static int dsi_mgr_connector_mode_valid(struct drm_connector *connector,
+static enum drm_mode_status dsi_mgr_connector_mode_valid(struct drm_connector *connector,
 				struct drm_display_mode *mode)
 {
 	int id = dsi_mgr_connector_get_id(connector);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303024851.10054-9-sashal%40kernel.org.
