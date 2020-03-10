Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBKMWT3ZQKGQEI4HREGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB6317F7C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 13:42:19 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id g5sf7235773plq.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 05:42:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583844138; cv=pass;
        d=google.com; s=arc-20160816;
        b=ttdxq1didEiN6vEhNM9xoS3tOT75FVmDmDf5XNfB3X74+nBS1z5sJ/ZOpknl2RNbbW
         N5W3DkiS3S0Ewl/QuP6ld6Bufako8xWSMAyFUnFlN4DaV2qVM89kQnQtrwa8spIlSj+e
         Egz1YdSEP9kN6scG+E1RukRnB1xuxvRpgjCDINBVQ6G+UCkSx2NJybsXuIOLE1lrv49b
         hZxSGXQSZ7qvyV5sv+H5/U2IY8v0sDKlNyHsv1MuAaIikKE4jsIr2jjq79cr6zil/s6f
         1vmggNgN0P3bS8I4YAqvd2AWyvqk5jvl8JSOK/XlrCvqqAf1BnMnO8ssDF70TYj/r+QQ
         5oJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=FNBOK4S3HfM0RN0pCBzbJe/QI03C5u4NmgfS0sHOM30=;
        b=g8TLPhkHXqz8SVFCjpBX5EFpv+IpJsARdgyPWghlF8B8A/rsyFJbknPMfROYKqhk/d
         3VCUU589ETxYls7NLW8UL/rFiHcH8Kdc2A6U5pZ0E+ZHQQu/pdh9PlALiYhkY0lk5AFJ
         pd6iEkLkANSwTaRIJnqlApXMsR92HKPFJd7UV2lLDOqZyM6N28tFbHwT+5Kgr6CN0hjx
         A6duFdValuDsnraYLZKHgHVJGIp4/p4cTTY2+0J8hGJ9/nZXIMhjILVjPGRQaPh1bdek
         ZFOF9nqqOdGBdG9dRRjKIio1kgddlgW8nvXx6lkriufqfyZP8wSfZ9bK2+CjRFZW/iqa
         3SFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XIVyB4Dr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FNBOK4S3HfM0RN0pCBzbJe/QI03C5u4NmgfS0sHOM30=;
        b=X0DTbJfgMJbKlatR7dM5m+R2ZQlI7DsFXtrsw9o4zqzys7duCMJYQuD2Yo2VlZLAdT
         yrshqwOoZVOljau0I1h2N3wQVYWl2G4inWdjbL8j3oVoGmCuYwnCXIgzL6mqvpgCTX3J
         4BRd9GMYvuN85IlCt0v+FEusG3BbsbYEx91RPHeJnQktmQgKCfH93WvwgFeWOShGT9lc
         x26uY2NkydLWYgmpHilijXwrDCJaj6TJ0t6ubKroMnHmu3q5LVEIEQ7CrO01BGJ8bWdR
         Uj6pi+O1yIuRL0Mm5lIB9rItoIzWhe83B9u1GgEbdqQG7FQln2sAH8EQ7TtZaHunCsLB
         jqxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FNBOK4S3HfM0RN0pCBzbJe/QI03C5u4NmgfS0sHOM30=;
        b=tOwTCZPPYz6KtV1173rCsmMzkwG6kucAixRPZYcOTuFKfu6LmdQ552gm4+e2RllZtG
         mZabMa4zPLVlLRMaqh9hzPHqvbt8a+G7Eu0236wJBiu73ulaX92jlNDtAH5DPSqt6fYQ
         q+dcehxF7k858SlfYctWs/vW/odk/UZu2VU6eFhDTFGThGgqy3vRBU0zN3skpUVq6e/g
         ffX1gi23fjhDso7gr0l02fV+YW2hdwoQCghSz8fEGnf/s7nLKPNyMUg+0KGeHFSMu7Sx
         lx8HWwnLy9SQCc1qw+Y6dRZqFVpKAXPFRMnPs5QNIkKWqEUto+hN/HhW/Dq1yE511+hG
         li3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2fYWLMV1taJikJnGvLum21oIGii2/s19Kr+CwsrFhk5o4IHHdo
	e/o8BW8Cz0mQn8Xw4wmGa3Q=
X-Google-Smtp-Source: ADFU+vv/5NQyd9A3LbHhPQMtIEpc7mV+nYd59gTEPbAHS3vYoVLqVP10BA0Kghmyl99xh8swsAFECw==
X-Received: by 2002:a17:90b:14c:: with SMTP id em12mr1660498pjb.22.1583844138013;
        Tue, 10 Mar 2020 05:42:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4c8b:: with SMTP id my11ls13330pjb.0.gmail; Tue, 10
 Mar 2020 05:42:17 -0700 (PDT)
X-Received: by 2002:a17:902:2e:: with SMTP id 43mr21145613pla.326.1583844137515;
        Tue, 10 Mar 2020 05:42:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583844137; cv=none;
        d=google.com; s=arc-20160816;
        b=L71rW9GGLOCloxTneD2TK9fw+gfKQRxzkd795gYZG7j39JNhQW6fV6j8iaqEaYe7+J
         +h3x7EzHM27OY4t9x9Y98CqtZs1nwrpQrRYRKm/2zYLll3hXI2OPR9+VxqhB12+mlRmi
         gwIlJSMBeIKrRdNWpRGxR3J+iKgK/2KV8iDB9T85npMwjEk+BXVLzlOvuLKY7uCDm4lv
         HXB2pMSZ7Gasf93XpoiQUGVZpJGvd1lua8hzHvAKHrPPDSgMrc2s4dM2IUWGWK5KjMcp
         RGIbBAtpqrCd4ZPAJEaGEVNf7JB18gn4D0qKEVYjaQq4jup0DrcZAWZUcr6slxwPWUNQ
         yYqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y97xzBky6nCGuQWBMEwwb9JmST0xNqNORUom/cBJ5O8=;
        b=H0R6O2a6y6cFTKi2157pEbAFgx3L6j3YBzKanKJ9hdm2KQ5pG/cjPdUm6IkU7JW90S
         wOJrdujiPr4RtZsd/FC1W3EPUVePJ/qijCf2UFKf3csUMlE4TEqDFFEvoTVdP/58sM5O
         MW8GZForzM9pghOaF6x3wF4LSUYLQP8xa4zI8hvJC9O7dzdtDrUTuvmyGTq0JI5uc1u1
         8CTDh+fEDq/oYklfm71nYX+b94T2kE3/fuk3+SwmPHqb1DYHjidwGo1qIk/ROv9UTGSy
         6CUrX6nP/1U+rZItwLNV2Yx0CSpxwcpQKA9XGJnNlVUMVqClCI9FB1YO2RKs+36URid3
         P5zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XIVyB4Dr;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q1si296495pff.4.2020.03.10.05.42.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 05:42:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C2AE6246A3;
	Tue, 10 Mar 2020 12:42:16 +0000 (UTC)
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
Subject: [PATCH 4.4 43/72] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Tue, 10 Mar 2020 13:38:56 +0100
Message-Id: <20200310123612.064015342@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310123601.053680753@linuxfoundation.org>
References: <20200310123601.053680753@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XIVyB4Dr;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310123612.064015342%40linuxfoundation.org.
