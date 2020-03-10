Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEEYT3ZQKGQEXUYUOEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA3E17F832
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 13:46:09 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id s6sf5801189plp.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 05:46:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583844368; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4Loksi9zpUtvUu+ZdKLBNaLwItMIO9Ej44jIkEca/SvEjlFuG7bnNrifIIHP13KUL
         rs0cIbaCJLSb7fI+0Eopd0xttjjt9gBPaMnTt3MLrss1sA8qPppnzyXg9/Wsa9dXS62d
         1evVKBN29E6FqUp6kdfcPjFwamQMiPYGThaRfhAvj5Cw5HSCsHynq26N80xVjAL9dcOv
         HYvvyY9A0EYMtWnzqJMdBux01KmMB7D7wJlhBPVwv9y8hlgVEiN3WRxbGPdxezaJSaN9
         WYxhxzJq3mM6MeLNvp76NH06FJSao2+kqA1PNQ7hDDirgpAFCu5ZYDdGz9sW7Xmx8Z6Y
         kA1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=LdgMMnH8EKOoeL/V7Fy6oRo2vTScOmpfHlD7QhdaPFM=;
        b=WPxMR8BuZ1+plWhALqz0Bq9C8dpFWuSp3/5VRzK97OX/wOUnWSKikTr8HJzqMF7+lB
         iMKnCWGPwBcIK2uX8yg51vN0pd5nNGhbmZcfpPoT5C1MAIS6qP0ALjAuL1hZEO19mU5E
         WbK7a86i4g7wnEmPfw6fbAfhPd0JGGnEZ+zjymiwxn37tU81wr6M9zk66rqqUp9mMuMC
         Lq2exQgvGhozUnuvVGKMroWlQDfG5Yq1V5i9mu8YZMU30A+Sh3GiS2sRo+Pya/h6+BnS
         34f/XRV095m93osW8iOS4UGzj6o5FumdvolRUO3gBBB6sg9f1fc/JOE7X4+1kCJyPUvz
         hEbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="I688UE/6";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LdgMMnH8EKOoeL/V7Fy6oRo2vTScOmpfHlD7QhdaPFM=;
        b=ov2kCtscNXqg+J3Z6s90KqdIT2ndqIUH/tkmQfKjINqpjE+S2JgfYLb5r++gFzNoAE
         A3tRx4ax7Qi5OWrLjimkBUYMmAzCjd0Ny6SUclIOMuyHaLLPxvCtI8AuRamI7ahZAYck
         RgIFxzDXcyHVkYvcXkQRRaKTyXwpiYRRmZBNSCoXrCAQRFRHGhqCVmbW8fPIRm+4YSbc
         osNOybuRksEhAXa79tY3MO+YmU8OLWfacm+ZWp2Q91IlOxru7F+0S7EduUyNrbclN9qo
         57vGBcPpLMk3S5e7Ut86cKnpg5bSnffwESXH7JtQ0Gu1KQna7HZsq/qZhpcgF8L1bpwe
         5mmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LdgMMnH8EKOoeL/V7Fy6oRo2vTScOmpfHlD7QhdaPFM=;
        b=NF12PaFH1jVFMyU0ag24P17Uhb0+Rt2b7JLsKf/PvZnQnLoXBqg5/HW25aI3OPHp48
         HuG03BJEet15wieiEbg9NLDvUNIOQS/MZHg1StopAFcN5YhxbY8pPolTmWJF/+LAwx7q
         H5/zI9QWRi8c4Pzed1p+jYEdfoZ7GupFaypBflAnG31S/A9/ZQH6TNVFGwUOmQ0WXXa7
         qlOofJsd72hj/4KeNBKd6/jdAsXPT1yZZzHpnMjZCGiSZzwUg0sLqtVeC5bohU56redg
         UZalCl9TW7dV36auPwH6JmZJOYW05ar93tGLFaVPmwz+LJB760Taq3t9HzFJN3LyVFJR
         NlkQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0hZ1XbznU/c02gmBJviP7FtA9zniFy4CvhbeAnffr1kj9NFxoi
	BrPRKfU5F3EufjQUh+Vdpy8=
X-Google-Smtp-Source: ADFU+vs5T6nB16BW6vvmwJxbqufpwLLj7HuxvuPsH0n1VURvdd28utZtS0dwhYWdNL27YvHNwFO/3g==
X-Received: by 2002:a63:798a:: with SMTP id u132mr21858331pgc.203.1583844368616;
        Tue, 10 Mar 2020 05:46:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b712:: with SMTP id d18ls5959480pls.1.gmail; Tue, 10
 Mar 2020 05:46:08 -0700 (PDT)
X-Received: by 2002:a17:90a:2:: with SMTP id 2mr1625732pja.16.1583844368201;
        Tue, 10 Mar 2020 05:46:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583844368; cv=none;
        d=google.com; s=arc-20160816;
        b=zigrUvqu9dalVSBQe+hzB1w2KIcjA7Yd1K1eOTvQSfv2WNNb82cn5nU2HyyvWtEHYG
         y5QFAxFNWFXgFod1Ih3ZUsHuPyaS2agcwD7hNvYj3bvl80KJQxkLx9eSEAV7qEC9kvii
         n44Sw7zfFrCe5Wdp2uHb/LLqOYPEF0zEAN9y0u9K3aTEfqVuOB3oTGYUPgxizg9UP49y
         IkSQfavVgWJAHnMtf48UztNiR1sChWAHEk9cFxkX4gTP5cmSNttbz6eez6H9MbfK0viG
         +UDSN6/dnFxCbXx53r/mzveK+b9UipZD+Jj9fs/UCdEnOeTTN2klg4QatVJbRA+HmPwf
         EtzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lwncTk34Dw2bZbdhcCl+42JFbOR+Tp0h0D+e/h3zt94=;
        b=ivvpnwBRlS8SCGUeUPOU+5wPVM6EDVvLc1eKPpRcs+HR39phV0aFRIH6kL0/DSjCgv
         AT7wejrYaOYudnucYyKutLyAtPbA87uobsyAOZNm8cHRJEd2F6YM92mkxqwKSRwDdkDb
         eF9Ru41G0G31L/6Rr3iWG0sCDIAS714ffRhL4vNPGEl6hNwxSoI4MNP+NlIA8nDsNgDY
         rI9LfXZhRNMlk47t2GJMKWBMdnPNzN4FvwUM86tF3HzQE5mMB+mOBmNlNIoYxhjKUN9z
         YutRh2MrlXzdfxjMi0oipEHVffgEpXXotLjXmWo2wBk6voD6aC6N++9hAbjysEtnhc8c
         VQBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="I688UE/6";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q19si867578pgt.0.2020.03.10.05.46.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:46:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 79CC420674;
	Tue, 10 Mar 2020 12:46:07 +0000 (UTC)
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
Subject: [PATCH 4.9 55/88] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Tue, 10 Mar 2020 13:39:03 +0100
Message-Id: <20200310123619.853887519@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310123606.543939933@linuxfoundation.org>
References: <20200310123606.543939933@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="I688UE/6";       spf=pass
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
index c8d1f19c9a6d9..10d49d43c17eb 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_manager.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_manager.c
@@ -306,7 +306,7 @@ static int dsi_mgr_connector_get_modes(struct drm_connector *connector)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310123619.853887519%40linuxfoundation.org.
