Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXEK67ZAKGQESHAUA6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3a.google.com (mail-yw1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 164D0176B01
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:47:58 +0100 (CET)
Received: by mail-yw1-xc3a.google.com with SMTP id w185sf2482136ywa.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:47:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203677; cv=pass;
        d=google.com; s=arc-20160816;
        b=zNgzrZJybJUL4ZxA7iOIlPI8sVQa2HAO9TUiy7xS7Fllai0tf/VCkpZPelroU9Cphd
         ouPYkWqsrfF8Mynl8XkODu+ysmgwkccCIzqGvpWSxSAC0jwdUo1aewbSCz7r5lt6mABJ
         xHfQqmMNVBe6OTx5qiekUU3OSBum4BOTQHoMRaDwJDisVQ9iSc4n0u2sRg+mbzQJi1Cq
         idFZSATwt0tYMPEnife2KKIrOMu9Gd3VrCV+NE4sZeD3cQNMz4s3iVToGHc96UBqDZ0j
         ZveMXdmh4L7R+MGDkhff1unYLJR9ujQqPd04kszgYV9Gv84NUhan+q3lha/lUX+HacG6
         BtwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t0sKeiiJSY/O1drtRv/8iMNVxqDabS2zdxX7pj/MypE=;
        b=jbuMcXM8a1aiuVWLqw5OLhQqomRl1e4YJ0qvpVhe1EXi9DMIoAXWG2+OBe3JQyf4P1
         iz2PL7tgTqdokP/EochT+WM1e1OKScor8PkEFoZnKAG8GmYspVLZ+cQYKRyuodjPOGVF
         bAGdBqY2tKHHiRp5H1hyv3f3mjWekW/3LnXwuiDQITNApfSemwisix3Yi/q07uh2AXzM
         xdJFv8oeVzkTDFi/kgB/rCYG9k1KBiT5gfrKqxeYc+UDR2cQj8af4/buve28nqEBp+Jh
         RLbinQP91lf1zbJXb2C5wLdHbwjHgteC+k1AfVe+OM8VystYmdnbgCuzHg9aSIFGjZjV
         8LQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=geM+gZ+z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t0sKeiiJSY/O1drtRv/8iMNVxqDabS2zdxX7pj/MypE=;
        b=GsqhK1Uk20SmS6oNmPYWdbLDZ+Bfmaw7yBGYI4HkskMByqGQzl3rulGgXEfvozKTDC
         Se6qixgY2mDCMAS04MwnlbKRLQNrwdg3EvYzQcPQLq85H7sqa7nBV6w9dNlItr0Fc76h
         opiCau3qMjt38PhtL0uRbv6h3CoxJakgdRU8T2y8E1epCpvZXOQuHQ3sU/ilCEedRqvQ
         9SWE4MBZ5R/WgJCjx0v3qGTPp7jXP69svea9RhOPhB39e0IJRBTZOBmfhsApta0j9lBK
         Oz+6tFMoGVaajJ/HPTGEgh3KGHc/b6xpK4wU8SyaM7sIovkfYxOCvJ2ewOJNV/2p0is5
         B+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t0sKeiiJSY/O1drtRv/8iMNVxqDabS2zdxX7pj/MypE=;
        b=gZ45KaSU4p1D42eYzfBtV/t/Qn8pK0y7Yl0fEzKsrmntzn1Um5YIWH+Is5r0w1FDWC
         DxrPIkUxNtSEkFsI+aD9joOamTnxUi1wJjX5I0P5jMyBBQQElzATE4EVAOk0jMgAar6u
         cvy1QLPPwFFp9X6HwYvnNWXAvL3hWAG6JwLdRRMpU486DlFktCo7Vxw47XEPv591W9Bz
         KIDGMKjVKOBZJTRUi62GZxypjcP6a8uF2VpyxwjENrfjEANY01qHllore4xFwCG3C2oR
         Ssy126S8G9KizdXuv3ln4lQpiu2/i7jlrQ64DsF6QutObEquv7UV40tVc6zzAxJgvfc1
         SnvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3zcaiCff/XQAV1yU3qDp4W4E4z/YTLh+foc9p5w9axu/KKZDDl
	j9A/nbC117FehzrXSor16zY=
X-Google-Smtp-Source: ADFU+vttFtlNHuoYN9oYCjAi5X+Jxsl+JLNqZ615/ePr+YFxclpcLgZepXSMdsWfyQejMjds0INACw==
X-Received: by 2002:a81:8456:: with SMTP id u83mr2608184ywf.38.1583203676623;
        Mon, 02 Mar 2020 18:47:56 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:a084:: with SMTP id x126ls563000ywg.7.gmail; Mon, 02 Mar
 2020 18:47:56 -0800 (PST)
X-Received: by 2002:a81:7cc6:: with SMTP id x189mr2548497ywc.202.1583203676186;
        Mon, 02 Mar 2020 18:47:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203676; cv=none;
        d=google.com; s=arc-20160816;
        b=EMP15M2u0GjuhYCc9T2mPUNBd/noCaQo3Y7eplQjeMBo8YH8ArrkV2i7KNEI8pIaL0
         DjeeHHZbfryDeRcyKhLiLkVCOU6JIRFaSewYjRZJoMGfDkKIe6xzrSRpDOQYlQ/drOJ1
         EjBzWmGC33wzSPH37nmXKP3S1J3v33cuBtXOTy9j387+BC7CDMwFSOFNVeSgRux5RG0r
         g2FuTxGc/geWVWHHCwkrDzlWPPM+/+rmNttkWUPIG+NTevzaf/VT7kmfOAOe9mUA80NY
         sVEnI3ZlPU1Fd+L+rtl2AMQdwW83RwQvhA8VsWoYVsIccQoqfhxOXyv+WxOAVZI0Y/qY
         0bKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fSpXux1PVIL/V22DzCQPIi4YGUS/ZSrCpIvceUAGZWw=;
        b=hhQ8jeNeBejyhYC6diq65BrjtnAbUuvyXCCWRL3vqKRD5osu6FQbMtSlerICh3s7Vc
         JH51JS0kqSl0dZp2ODs7c5BlmYwxPOCgIQ4UQFG0Jwmnk3Y0r/4nyBtgrdElSjaUvaWe
         tZv3EIR7VflhhGs4k1+QgrgeQSg9ddpLQBqUIXCg4Hw0RKTRAbC2i9DKh+Ve0fwvO0UB
         CzrJ/E1F8bG1Ra0+r9LVDc/uAvNFtH/IdA98TbW8y7VxefSjpQWFykFn6bTsJT65yaEA
         cle0KhSwJIuIUwnjjOCAIw/7SUhv04ETOgml1EyEUloAYlEFNZccAqrkDXYgJVUCVHKc
         GaPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=geM+gZ+z;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u7si1182144ywg.5.2020.03.02.18.47.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:47:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A2BF024677;
	Tue,  3 Mar 2020 02:47:53 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 12/58] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Mon,  2 Mar 2020 21:46:54 -0500
Message-Id: <20200303024740.9511-12-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024740.9511-1-sashal@kernel.org>
References: <20200303024740.9511-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=geM+gZ+z;       spf=pass
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
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303024740.9511-12-sashal%40kernel.org.
