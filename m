Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBLMZT3ZQKGQE6JCGEHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EFB17F883
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 13:48:46 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id w197sf20623976ywd.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 05:48:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583844525; cv=pass;
        d=google.com; s=arc-20160816;
        b=j1foSzEE19LIq6vR5bfRdmr0Rw8cfC1o5SQ1DY1LtyrXL6I3gsyJ5eBILzMa3qulWw
         T6TdDMSMOgUhEqj0hs3Nl0COZy0zIYa122ScaxGsiij8KdblaiLeRjIvcofprFy8lkeK
         5PEMZU58z805qLU5TNBnvl34KQ9CAOQQLF0tJTiAjb6O5GysZatCwX+AjP85aAYLgWcw
         1ONgy5OBZ/+z/19hEgsIKb9cOX8W63W992yhq6XHwLnhyQCgQwWXAQJ0b5ipz7ELug0T
         cVl4C1s7zP4KP4+UKOBSviB1ZuasKuGpvAudHmuzcowtRbKxbq9Wxk6J3nzYOpxZ6Z87
         V0LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=jrYQKt9DVDCgSafy0PuDeoJi6c1b9uUVJsEZX0+XYMU=;
        b=gJhCMOdsm/LFdBXYQY6bnW3LYtQ7coG5Xs+Vl4NCOu5tvaMFfZC6ZtahAg+9AOFCMz
         rUilEV37EZG7Mg4rwBa+AF8RmnpC9Zzhx9aszooaCtYNDhF6wPYcVsJ26HfIwFSeL7nV
         LdeRYzbXUxmNYT3kWEJcQt3IDkHyxRvVHZrwwYv4zjWII23PCZg894dYISle9dORVdi3
         2wqxZXxpMyYc6xJ24evMeLpuvnhEWvQp3/P9+qDFyakuMO986Km8ZipBMCPeAeSBTlDD
         fkrqJAMk5F9L+93KNeZku2kRzCRdjdVkycF+cOKVWo04VmjpMetZ4vBqMoYAVm0YPOGe
         pIUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t+lSk7r3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jrYQKt9DVDCgSafy0PuDeoJi6c1b9uUVJsEZX0+XYMU=;
        b=TXHtSbjDzDK7oBtglyqHSCKDSkiI/woM5DIyNv42YkNyiTuLqiM8KQLoXB7zxdd1qL
         vmE4ZPm6Ebvj4zAH53Na9UMPPaI5fRrIBQm8lBkMvAd3rB8Vg8VIyiQ76vcv5jCI71og
         ZBO20CFIbRFz187EpXpDEjYmV3LLuP2iO4xYXt5Gsq/T293MkawGeiAt3HG2E7B68BXq
         +A6S+X1kW/ILv2wE6QtNNVR13LHDj4fSBSIxuKxyGUG8uOMd40knnauZ9tyJgDPyDyuG
         6xrHcis/L83uiQGAsxXt/YN1j6UA6qKTbb0cdsA74azxOMM7bUpEeknp+lWIPjQqGP7f
         imTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jrYQKt9DVDCgSafy0PuDeoJi6c1b9uUVJsEZX0+XYMU=;
        b=Iw78Rq+ew7OphBZlV5Ii85IG70QnmiELuN271dWIVame7CcH6of41TJf+NiAgRjTBa
         mBcSrF/9ORQQxcSTE7Bknyn6hU9w4M8OxE8jO+GW9Px1m6n+AF9neQBPSVsu1OZIGlez
         jhNE1QQW3KAgjZyuc7ypfl84GlQ0onRBnXA4iZmhMIm710vEPlu2K6Z2XLll2LRzIROK
         NDrRdkVxbqZBxqy0OzKvNji2NWgxazAC7CiIUjqoWIdci+XiTKPX7xepwPQe0/1F8ekG
         rHZeNvxyPeEN4DigMzEHMRJ+Cs/PO901jpQ/0iizqv614HDxLc9cEQFliRopAsBvJzgh
         gDig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0IdjmHJK4dPz0zSdtgJg+CMh/bxvfSEmwtTe5p3DhV5VveJgrH
	fq01QN48Vn/NmIFKIAoeyPA=
X-Google-Smtp-Source: ADFU+vvjSKYNSPaMO2f1cy232oN7JGVfKAmcNSA17M7BkBEeorIQsaIJL6Ye/V1nSl7A4wu/vLXcTg==
X-Received: by 2002:a0d:cb4b:: with SMTP id n72mr21884409ywd.128.1583844525453;
        Tue, 10 Mar 2020 05:48:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:5789:: with SMTP id l131ls3601952ybb.9.gmail; Tue, 10
 Mar 2020 05:48:44 -0700 (PDT)
X-Received: by 2002:a25:bd4f:: with SMTP id p15mr10697265ybm.406.1583844524618;
        Tue, 10 Mar 2020 05:48:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583844524; cv=none;
        d=google.com; s=arc-20160816;
        b=aYfPvDGMlKCX5//SI/xkTnZR24zDXVIYib2W1fA2+3qNBdIuLj3j1x0U0HTkHzMNuf
         dCRen8fHxf1LtSunN6QVkXYn/8ycay6AmHb/R71xQNTqFGdRzXtPBskgTApq6M3IM5QF
         /msk6faoeoTTmn3p9rwsToJNUW0e0teef+5it14PFeydOcoxsBDqpyKG0phXYZBmkLyA
         CpoYc5aBw6IqTVDZSQz16KJ8nqrPf5IHq2HbHqo64bcyrERshigSmmuZAzwgUnvEzjC4
         aJu+UcPDrjm7Gp/KUNvfENUzpQwp72vDdLWkepGRhAFlnI4NATXwtJbz/2wc2maLogXh
         Li8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fSpXux1PVIL/V22DzCQPIi4YGUS/ZSrCpIvceUAGZWw=;
        b=UM06TRyzS2MFq/wmcXyDG17N3ET88G7dga0qUbXO3ez+f3Q+hzxdUMznCwwpsHnAGU
         NPB3+OurO8jGaD76ON5kpY8/T2uNAdfUuVLvQpYkRjYCyPu9nWI0vMMkp7+TtUI4GdNL
         i4UeSPonrQbI9pS7fLhcmp93pOAH3m+wGkx+8hW6AoPE7XjDO38qUtC/rr3vEojpv4Y8
         GG0jvCBBMeaxxxkS71US1LgbQgePmJuYQ4DT2Z99+qCbPyKsNxGGDc/jGRuufZSQAy5L
         3qB7yfbld0j/LBBpj/1CG32HdhYuZmnU/eV52I+pnsf7ScRcEHPfAdLEZ/gw59Q58y5y
         5w4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=t+lSk7r3;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b127si393115ywf.1.2020.03.10.05.48.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:48:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4D8AA2468D;
	Tue, 10 Mar 2020 12:48:43 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Sami Tolvanen <samitolvanen@google.com>,
	Todd Kjos <tkjos@google.com>,
	Alistair Delva <adelva@google.com>,
	Amit Pundir <amit.pundir@linaro.org>,
	Sumit Semwal <sumit.semwal@linaro.org>,
	freedreno@lists.freedesktop.org,
	clang-built-linux@googlegroups.com,
	John Stultz <john.stultz@linaro.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Rob Clark <robdclark@chromium.org>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.4 023/168] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Tue, 10 Mar 2020 13:37:49 +0100
Message-Id: <20200310123637.984749460@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310123635.322799692@linuxfoundation.org>
References: <20200310123635.322799692@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=t+lSk7r3;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310123637.984749460%40linuxfoundation.org.
