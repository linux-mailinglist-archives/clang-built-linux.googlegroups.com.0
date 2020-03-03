Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBSML67ZAKGQEULRW25Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id EC559176B49
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:49:46 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id n4sf476880uaq.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:49:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203786; cv=pass;
        d=google.com; s=arc-20160816;
        b=NQWhf6WafcjkdacplYw8/BnHPWly4AoiKr10ZR9K2ekwUoIXOYQRtlJ+znmeWUzBoc
         jelajtjxtaTKzpK1WashH8FQP/xYiQPaLNdSLNFh0DLFbTyBx8qc7jx/8+4ji09vZ00h
         yv57Gd57PTsOSjFyW0zdxQxmg7HhCzKsh7lJVXKhqNY50buydAp4AJnfzX6Mw0uk79Gw
         ix12rceIojJSNuozbO75ykPMQMWMPTp/K3l0OBvPHL0CMBSCoPxHpPiO0mjyyERVOde9
         t3Xv5mRIC6K8OKo2uJsLh7wI1RId4ljjZe7RzfQcPSad/A96LZrQSYJla8wT2MXjlBAc
         DevA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=+MSGVH+BJLLNDPV42dUTKT3ZxI6njp1ZDawPnHlZZDs=;
        b=Okmjf7f1QLANHDiy66DRaiFabgLDpmoz1CpUAFyfBpdCDJI8c5S3L7V/VjcsHF0dRB
         N0lAFELN7xFQp6Z81NxbofhfpeEyy66FXMkwcLFRCz2nhYGjHIqimMDeEUVpZUPBGwzu
         LBTfjt6nKKV/1T6MDq/4E1IVWnwaoo+3nShfqSt2C9kScv+oUOM9leDK9V7HhhV2BZNS
         L1dlDSmfvOrQKR+/rJNtOzx5r5VkcJvlJWlVUMXWMZ+foT7snrqKT0dw/0qUO+LDdKSN
         +uLDh3RqSRVR01hNgG1ZRJSfC+Z1b6F4Ojd5YaOLTwPDCQVG0NU5EJkFXEKpWmw5J/pb
         dl7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C62IeMZZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+MSGVH+BJLLNDPV42dUTKT3ZxI6njp1ZDawPnHlZZDs=;
        b=qdDQGeCzg1W0hGJdb5CQN5wXtpK6HiSsC7UiWEpVc7v/TexRD4/4pA/kgjURTtJua+
         pF93De9JIXAbnb++Om6M9s7dfvxWGj1FWGgxJQD6lrX5i4tOxfuvqjwyr5hex66Ehg7C
         620FBW06TRlMZKUEKS9pCFMYoBNO+6obCUbKVVRfB2MiPglP6We3NEQ0vaRt7gCkzv6u
         6kKgb35IOA3WY+qBzxdK0OZ0loodSXQ28ie2yAOtLWfsOxK18U+02OHz4GFLyIojPnjC
         BDWZ5sjG+dw4/desMNd0doGSCs65L7K332pxDbffcaxP8CNrFNDUGryLARbf2Jdu3OA5
         fCpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+MSGVH+BJLLNDPV42dUTKT3ZxI6njp1ZDawPnHlZZDs=;
        b=oKgn2q7MXQlHY6APn7xx9hahrVO4dwZHy0akQXc5d3d3ZdSkwrInod5Wqv1GW60mNf
         oFacAfh9C4DmkbkwNPd0Y9AByokdSblRBpyDu9ILlTiSWFTNpKbAWeccp2JeWBdX/Hde
         S9/rMoiPdvfjNk/HnSjF8mT4qXA5jbtKwe9hOMr2inKoU0Na3AKYKLONpp1bDQ5XZ+xl
         NI3alRFoZl1j88PuaKYtYzUwSF08i6WCgKHdaJ660zgwJH9EFWH+ISHqPcHdQZ1ECnjD
         nDgansxec5vFobG/HfQpWgKqF09sPVXofpZ+f4uo0HHZdoo/gZyhdCr55t9HjwcijS3T
         Hwow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2NMRnaCjJFxxLIgIYEEowdybj5cFAR/8ykWZH2MVT2y5/gafGz
	Q5XKY9ekaO8Z0iMQG7iHJ5Y=
X-Google-Smtp-Source: ADFU+vsWbJUa2jsUQ3Yg5hEbM/ji82wOWCGJzZsy8EuHPwHvm0dQgpxXFpEz0CmggakxLk1sHO9zvA==
X-Received: by 2002:a67:f5ce:: with SMTP id t14mr1204984vso.189.1583203786014;
        Mon, 02 Mar 2020 18:49:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6122:41e:: with SMTP id e30ls87820vkd.5.gmail; Mon, 02
 Mar 2020 18:49:45 -0800 (PST)
X-Received: by 2002:a1f:a484:: with SMTP id n126mr1726812vke.58.1583203785674;
        Mon, 02 Mar 2020 18:49:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203785; cv=none;
        d=google.com; s=arc-20160816;
        b=AXE05y6G/8By7wDSMZtTudGvo5uoqpWntUbZUSrlsypaxWcAWKTgrwgPYgzUd2Y1h8
         xk4Ea1uzd3uUprzkXYrYsT8TLCPI/CAAY2/1Mz+YNqoM/wGlvZEvEpcxeyCB3eUNkJlT
         sxqZOiDSnHTEXmMZt9bgL0Q83N4aO+dgcjoB1qcvGUI008bS4jWD/4HPAARFhdDR4fc9
         r+YJ02r3I5lUfUv1SDrYm8Q/Lv5ZY4rMlB8TYLRwSg6Ph4gi5+2LLgIaMkqqeTbqfSn3
         ZKY7O3j0lWAojPt3AxAGkpwpTIBX83tLbPJVA7TzrhoJ1xhhIUmlHuVrIJ4t4Yw/5UTa
         hmQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VCbeTBV/HuFNiJMfHGxMLbQGQ1jK/J79W2ZZdXZ/d4s=;
        b=bHuNV2slS1Qnb/tOu66vZgMptCNdlrGEQD8Mnp6wsjLb2PafGogW/okPOoQmFjNHtf
         LcDr+zLqnA7H219bFFEcn20rFKCyLpnFz4fFmbZ/VwWE4cEe77s5847LwFCKEYhJ3uGy
         HkrlZwaxflSBO6jQEK7owu94Rc/I77YUo3ZZprzmx6PzFKoSKBs9M3bZiRXvLuJCPgiU
         TcoOzt83Otm39jAT+jwHXAF6v/Lkdxl6v5CSqyvPzrCw+iDucxvfQ8IzucRQCMtAGXKu
         BXeaEmT8GxR2IzEqXz/uL/bCVb5bkRNe8EStD/LIRV/5lOYQBIUfU+TG6u6VjUKY1/E4
         9UEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=C62IeMZZ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r6si768553vkr.0.2020.03.02.18.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:49:45 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0E735246A1;
	Tue,  3 Mar 2020 02:49:42 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.14 08/22] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Mon,  2 Mar 2020 21:49:19 -0500
Message-Id: <20200303024933.10371-8-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024933.10371-1-sashal@kernel.org>
References: <20200303024933.10371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=C62IeMZZ;       spf=pass
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
index 855248132b2bd..7d46399a39b4d 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -400,7 +400,7 @@ static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303024933.10371-8-sashal%40kernel.org.
