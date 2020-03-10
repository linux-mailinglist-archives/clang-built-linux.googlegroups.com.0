Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBAM5T3ZQKGQENHIYDAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CAC17F968
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 13:56:35 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id n4sf2037553uaq.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 05:56:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583844994; cv=pass;
        d=google.com; s=arc-20160816;
        b=OtYAgBpRUiZY912Wn2Xs//Qj352fQRb2WMN0BUs0CwyQHGvymKfD0RSjilB4C+zNuQ
         9jTr1YSC8QA6qXzWnsoijV8ACR+rBzMqQ0d15sm2DiR7+MMnn5QvwHaOnnjyUzdF5IVK
         pm1MUWM1jo9qeqFAqTYG2HYDwcuYJfFX6bpIqRTrQ3S0/oM8M3qh8aXzFvQO20UVHqCS
         e0j9qvJKAZTywubJBkeO3CPlstsxHZniotWEVhOvXVAX9fW4DI+qflAJBSRb1yIvBnrM
         OLhy2aRsGYk580aYeZI8U7NUiYFL5ugjF99czC/Ih0+Xp4kHUAycISMjuwkPF6KZRq9J
         Bp0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=rX3IPu2eAupPP9wohxSk6LBXRvOv/VlxK75HNEdRGAE=;
        b=sHF3z25EmKXSEV+vD3j/vWDURHCRrcCqFKp3vsS/SScS0AglRlRTI9kqI6aq1Na6FV
         s8UvJOrQjgS6BGu4Eg1NEhVcCrf7GvLbQ8DV4JmsNZtSz7oBkSwo/3OWMmuVEAyLvTTS
         OeyhzyJAXflFchT+swmvyGv+/of3km6VF/3AbnXl+opLHTxZt/JWYISd9F6K03lytph3
         KvHZTzZxSdgtBMiOC5Os3gyCpKfIkcg36Xa3M2MCWwWBk8ZA0ciPjs4CTBFKcaouFJKQ
         zpEvGBb/ON75b/ILFukK0JpAEGBdoC/0pVw0+oBgHVlxGz8OjvzrZuD98SbfLRzK6Ntb
         j6lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wFgEGdxg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rX3IPu2eAupPP9wohxSk6LBXRvOv/VlxK75HNEdRGAE=;
        b=NPPeAt0xwwjwqm9IOeXdy/F5QjRcSfKkkdCLyXlXteCHlN15zPBHEkilpnBGIaGYzb
         l6aZNeupirrt0oL99WBFFeb0TJZqqXsZKwGhabhJU1dvI5jRN4CyCeC0tVDFqigK2pan
         KAdhU1gOyMgL7Tbx+H/2TRbNtQYrq/SbTyDDF8j2NNY1Zncmil/d/2A9WS2KHLcCLnRZ
         lZAbUPnZ9IHSTsP8lB8bGZFpv2D0rtLqbPNa3oPgsWKjBinvSWM03AXyqy9Uvyk4fn2q
         mvuIQTiQu7ioyyH3gZYoF+giFb6myhcr3blBmP0pkLYkv9Q0FQb49vQFNIs0FnrdVyOE
         y7Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rX3IPu2eAupPP9wohxSk6LBXRvOv/VlxK75HNEdRGAE=;
        b=F0tJhyIRbkC/HH0nuZzMXCPmZuNB/PaTy9cHp1JgtOc2wpiKKOWDSlprOiFUn6tKbJ
         r29x0ajxirCOmcTzV7u6PKzu0ddx0rXZHUkzkTJNisqXkHFBvHY1qZXoe3mfmkXYM/ak
         j3+v4ptquQzO+zgqOhadURP4EZ/jwU6oKR1JfYwIe/Dofk6dA4dNxRE1ErX1deukdvZW
         z/wgWeAcJYUSGKZ8Mx73Y3c0rJDEzmqcLfDDmqCy5K0ZY/ANOwt9iG4ny8NQUIxvE95v
         KPC4ME82MqtivdOTRJ7n753mPa6AcbTlO5bBzKqbZXJAvV13ogx6Ym0cTqEGxoP9uZ6D
         V1eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1iUozyvoWMv1czzC8u/QhHWl1QlO81YfDt84mzy/LpJfi8D0XT
	LcjcwWumV6EGsOyNUJY9Mw8=
X-Google-Smtp-Source: ADFU+vvWBxGLkJUkH3y1NO1k9583e7IBGygdpk/cEmahD+aDlO1DDY932/7PFgBwDvNrCtMbsf0W6A==
X-Received: by 2002:a67:73c3:: with SMTP id o186mr4767996vsc.52.1583844993996;
        Tue, 10 Mar 2020 05:56:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2261:: with SMTP id v1ls1185094vsd.5.gmail; Tue, 10
 Mar 2020 05:56:33 -0700 (PDT)
X-Received: by 2002:a67:f6c8:: with SMTP id v8mr12815739vso.147.1583844993592;
        Tue, 10 Mar 2020 05:56:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583844993; cv=none;
        d=google.com; s=arc-20160816;
        b=zDfWa65AKuCprecNBcm3KYKo+1EJ/qja4+un2iPNH1mWPLQ+zMSYyAknRy/X5gE4Wd
         jgiOd0ZbeakrXQzB3W2AK2PrKf7s7O5crMgHFU+Zs6TBfA80Lusi6tJNEKZgCPv8lmeR
         vYee0LWd8OBpWnPksIzh3GV+SCbwveD9Rhlj6uHex1O3M2v871ltUVuuj0xDL/agdq+r
         cTut2Z5LGonyAnZSZISxeBcrL86QCYYCtpzOyH+KElx/U7uJ+9AfHmSNtSCZRYf3FB4w
         hshpBG6Bp1pI56qG1cVPiisrOp5OmVMp2Nl+FE5Y3JDYa5bfaMYImixkT75tAngdKrKB
         Y/qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fSpXux1PVIL/V22DzCQPIi4YGUS/ZSrCpIvceUAGZWw=;
        b=EBxR2D1z+Ja4SRHGAhR+IEArKNq0uOAkrosQp9w1kPORKA7ikGbC8hX0l6yhnCk3h0
         KhNbI2dGBT5snY4qoUTexRToxiBrgFnSBEqF3zjbt6XFyA44ZloQ3LPxUo72tB02taIX
         1xVZM+RgZ1bZsdFkFAsUidaPw78BWFWfCYe5UycHls8xTN+yXOvUzQibroHt6Z+lDgnA
         q0Sou4IY1QEMhDxEOnJKvepS/slV7I6zOi5IFQT5OCKKSDSe3sJbhJ9OniJuusoGIF0h
         dgurlJ7y5xiJuGLGL+B+kQvoDFQBuwmSRzix8n3tMznau8EoTUbAPu/BSzF902iD8ze5
         F0PQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wFgEGdxg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w69si721657vkh.4.2020.03.10.05.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:56:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0D69D20674;
	Tue, 10 Mar 2020 12:56:32 +0000 (UTC)
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
Subject: [PATCH 5.5 023/189] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Tue, 10 Mar 2020 13:37:40 +0100
Message-Id: <20200310123641.816284321@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310123639.608886314@linuxfoundation.org>
References: <20200310123639.608886314@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wFgEGdxg;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310123641.816284321%40linuxfoundation.org.
