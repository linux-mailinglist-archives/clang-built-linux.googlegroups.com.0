Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB5EL67ZAKGQEUYU2WRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id C155B176B71
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:50:29 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id t26sf555223ual.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:50:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203829; cv=pass;
        d=google.com; s=arc-20160816;
        b=lo8sudzr4eTOMY9EcdGCSh9/95BlUi1kqOpq9ymEHuzqtKcMCJbPPgas8iDa3S8Dv2
         Uqt0zX1xnlFGGOdLDVbjYOZfkQxYPBWNqn9SOmArnxT8IA3m4IFe8iE5wtrCtdGtfhGU
         CVoM7DAenyYNpYIYTW0bTk1aQDjo5jTMCw5oqOe/XWgEyET4UyqlxMHvY5c5DPOatfLs
         A3YfFNbeHUVGraDO7f8+FqtjtTe2XC3B/a8zxDLHux3fr5Kv07vmZE71i1dn7dKJDzao
         cn7JmFVFyP9KjGAiKVjh810A4ikxLUMGbVWeBeWCcLSdee7VVP2jDE95hcT+EEEBcneS
         0Leg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=FJNDk/xEndxpsrXULCI9BwPfhO+aR8YX5979h8eEpHs=;
        b=I57cz4ILRAwSDOXkB8lrx1bKvszM9mE0XEEIOpUDZpdoK4plauojtAWVnX8tXByEit
         MTpWqPiqGAGRzVtWaBPs6uk1o7SFi0hOx3pnmAk7iClYRdTE96whpkIRAlfYD1i1eQEp
         7c65Tgc4gYgFtQm5WE7tIf0f8itqqqupTzLtcKq23t2gXzWU9cA5Nu9oC7gfqyEWPMWS
         vKjJnckyVxBKptf+nlMT5gQXUyVHrVga25yoH3rmaiQMmPgcuBOjPgYtUwzafUK24ml4
         ywbZztWZmIlRV8hAhcjUJsuxbqnvEmJxiEdG9ga2WCijs/3HjMcLcKdT7gv1UBAPhsr5
         lS1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J+FrvuZQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FJNDk/xEndxpsrXULCI9BwPfhO+aR8YX5979h8eEpHs=;
        b=cP/d/7l+6ibtuVKQJYjuBdTW8/YJU0j8wJj9+1qOZpSgmRpWjFCTFkmlyVcivTWmLP
         CXvPs3xXmUAONQ/Fea/A3bcvxVaG175rieY65e0KPFbVpJupHN76BaG3dCdvvDtfRoUs
         H00aoHIDOcxmeNO9890EU6rWtBYhKwDeLz6m50JDFk4uUcedsmg2oewvBaeHTw204zyT
         N5fHevpsxsBgI0Q8RL8iSzD1InzK7Te+IQCzAsvfbaXwoDEnc8Ya9/BDLYG67aJLQ2tN
         wVl2TyJoltYEaQqImrvuZjXlivM6VA7K+VXg5zV1m4WyrpiQZ26Jgj5fkyHmh9m1oVH8
         PlfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FJNDk/xEndxpsrXULCI9BwPfhO+aR8YX5979h8eEpHs=;
        b=P6TdLh/dMDpQrg+KtMvlOKE/vjawQeyhZnO9gGS6fVrH3/SrvN/jnMIGnNyvX20Q3B
         WtbEeF+rReGEZLLENsuC2vNLH3c+lgp5xkHVyMicAmfqbSqYIF9v1oLltHF3/b35CpsD
         izBt0YNhRIAfxHP4Aac91SV0tTG7x3UKEoH5n9OZ00pK4brfDZMU+vWucn+8B6rhJ3Mn
         2E6yxkBdeAVPftVidpfC1tvbtZkFGQ3bgNTeWcmPTHhN7zpK9gi3hjaZa/hd7ySIDfIq
         dPmvVUzP/TgE5bce43UUWINu4loCXX7G73VZ25Y9F393gbetUBFb5nkk1qbtXYqEndFF
         bFkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2cd3gw6s1o3IC5r3EWSnxHffLViVFugnpE3Q9mMQb30iLSQfo8
	tetuDUGHr1YrJxM2qeuNF58=
X-Google-Smtp-Source: ADFU+vsXY6lm8EIput0z41sJ5l0XTFGOtr+Q7qg4rCUM/Q3u+jwIre10vU9GRP617Iyhiw8RLI4ZKQ==
X-Received: by 2002:a67:e097:: with SMTP id f23mr1127969vsl.122.1583203828845;
        Mon, 02 Mar 2020 18:50:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e30b:: with SMTP id j11ls246024vsf.11.gmail; Mon, 02 Mar
 2020 18:50:28 -0800 (PST)
X-Received: by 2002:a67:7c4:: with SMTP id 187mr1277947vsh.216.1583203828472;
        Mon, 02 Mar 2020 18:50:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203828; cv=none;
        d=google.com; s=arc-20160816;
        b=N8cAZj1u+ajqUjuyMWqPpfbt7YOllXENbmyHGSdKurS+GnwFtVdLCx3Y9EhomP4cBp
         y6webRKFRX1jo1TRi4LNsDt9dPQVvWjDOFWDsU7Ewy7iTQTnUS4V/ZAmVAk7tmqHCsi5
         qDPGxqj1OvQ/En0RjJlm2f2xD3z3epxWfXMAxI1jN9eqLXHOqgzXkPyqoGYsqKpqF45b
         wP5bv1Ixa1HVouuJf07zpC3mJ/xHP/hDGLzgOm0hpYMCylIIcsdytUsYauEccYZoceId
         xSpKTV2Q9kZXvz1mnbBe9R9NUmHaadr2jv4tiEACk19cW6dz3QcDBnNuAXYBiDaL1Us6
         sRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y97xzBky6nCGuQWBMEwwb9JmST0xNqNORUom/cBJ5O8=;
        b=RZZrvoHE2JJrz0A7g+PJp/C9NHrEeRTGojeJWr1ieOub/fG5yc3ZHWQcaELVKP4ycb
         PS1DkkuGhlHosiyiUo70zBDMX6Yovu4uks6OXdEf6OU7ZKQr2elBVjAs3rMpjj6OKAA5
         dqBgdU6KdMRZdJYTcEGhx8bCf1j71TkJIX26syG8mEpRpeDVCNxeRMMGrz+ccJ38q4uf
         MRReAJOUA4acPvN2RudtW6EsAKpwjcdRmbcbBpIuEqdP7pQE7XswfdEeR76bShr2rems
         O4g+zlVNfqkstHAF5yq7u5JR8/OhvfSq67Cj5PcV16e7K8bW4kIRLTHXbiO7rweiS9MR
         PmzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=J+FrvuZQ;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f20si341172vsh.0.2020.03.02.18.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:50:28 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C901C246EA;
	Tue,  3 Mar 2020 02:50:25 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 04/11] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Mon,  2 Mar 2020 21:50:14 -0500
Message-Id: <20200303025021.10754-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303025021.10754-1-sashal@kernel.org>
References: <20200303025021.10754-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=J+FrvuZQ;       spf=pass
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
index 0455ff75074ad..439dfb69e2ef8 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -302,7 +302,7 @@ static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303025021.10754-4-sashal%40kernel.org.
