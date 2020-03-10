Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB2FCT3ZQKGQEAPHD3NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id F374417FADD
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 14:08:57 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id mp23sf490911pjb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 06:08:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583845736; cv=pass;
        d=google.com; s=arc-20160816;
        b=MnzT5UrhKSvVx1angbVzuOwjRxzdCdvT0xXqiYxNSwtf3qqiy8fUHswysoD2g4Tc7e
         pbciO0AHVVG/dXsI22e9PnW4Kgiu2S6YrxI1gphm9jhvuj73Lgzayu3wFV9O57PWWSYM
         WYBef8RhAGbFfjgi2+E875J4gPyTa32dGt4pif4WiewpBi6S7t1uqT7/EFEGLTnqYqzN
         SlVyKnG9+q/wHBvfqRTi6iK0j6Myn783j+Ez9wTQY12yFm2PJLdlMDbDmkVZg5IzC+R8
         LhVyztzu8zokogfpVpDV//qrXaqij4MW3LJg/w5+42s0HuOKzHo0BOzq55tgcJUM4hcv
         3Jqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=lk5DrNS+bIzTi6jYW3B23iMWQo2oxFVlzLQWt5X0sT4=;
        b=xzlIfOjaIHILhMHqrB7kulpbfYuwWVO392IqZiGRRMUaSSCbTyJi1/AFkvX8Qs+5cO
         tbSWUxksUF3uf9sYZtlIf+2mtNYU1/XQ+6c6vRyAGC63jtgtS569R68JK7s7/3jU3+bm
         nwchTqmF7hb6rowleOY8N619hcvZg2VwyJfdeYwk+qH9+BUZDpsCteh+gXEqQOrn2o9Z
         debkTpSaBP6Oqe4mccsIoeKxB+fKI98KaHflnUo6QOA9Hed+Kabpjd9cKptZfRAHT95z
         L/bU8BafjZHzcDbrEMqpVt6SY6nnAgGPDsizT0SR5Suu0Rz3XJ2s5ulG7eMSiipqyTug
         j6kQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wRIM90pR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lk5DrNS+bIzTi6jYW3B23iMWQo2oxFVlzLQWt5X0sT4=;
        b=PRyo3yMDev4REvFkexvwGZEUz877dCA5M/frWAuIvmBPpt+kSBn+HmCzqynwsdM/qn
         kXmifVYiHiKnTkOem1g2igoMGqflW6iwVI1nMwqk1cFoxKjJP9q7vYCCZXKMwHGiVWmO
         7op4eEoIQacxiDSa7TZnTItFXHDqb3oddEUu2HY+hOfljBjKZXJbb7DJKhzf5RiOV1Hm
         wBMjzWTmrVe6EaGTlaB+2Lzj2I7WIOVi3s78SFhfRUef4RG0eePvCY4MLZwQiEabNb2/
         EgAHImet5ewVy5WMyILt6FEwPeMZBuUYoklH74mUCl+r0yPm/CJs4yNix+D16XdZINFf
         /45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lk5DrNS+bIzTi6jYW3B23iMWQo2oxFVlzLQWt5X0sT4=;
        b=rHHMq3AF1FswWL2z4tO0I6POU0tDUNp+Anl0uNkYTLodLUQCISBMbL7YnQG/pjxfK5
         bZ2G79+u5WcZ1ufVstZpD04DDhRGLXxa+a+TDrPe5UUb5FdDSEcU027Zn1SgOCssSyMd
         9jagbHrx4sD71WjlpEZz/Oh1CJM3B2zuFDWzxj9RvLagTAoPhGR+9E01/aFIu84qTjzD
         KaZaw0DfPWQfJhhoF3fApMFn5vM9yDWWL0bcBrMK7YSFC3a8AZng8B1wRMsX7ROgsEyz
         ZeR0Y9lVvL9tBjBgu6I7eHCb/cUN2U6VElK2ToXXRntMvrDbK7S1IS3AyrRFFudH934U
         zvtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2Su9SfLFEJCgwmkzqS4Nzrcczb8tlMq8fQaw0/76u5D1iKbqaI
	b7nr89tSYLZzodiV9UgFlC4=
X-Google-Smtp-Source: ADFU+vsfm9zlHI2ETrLiEdk0egI/jMmbM4TLzyrK/WGPZ+TEGyhmv6JrcOlzxBkl3l1QJvmX0Nzzew==
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr1703264pjk.134.1583845736593;
        Tue, 10 Mar 2020 06:08:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:898e:: with SMTP id v14ls31362pjn.3.gmail; Tue, 10
 Mar 2020 06:08:56 -0700 (PDT)
X-Received: by 2002:a17:90a:b10c:: with SMTP id z12mr17081pjq.119.1583845735984;
        Tue, 10 Mar 2020 06:08:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583845735; cv=none;
        d=google.com; s=arc-20160816;
        b=G0Jd4B7m/sXRC+7AaYhWS8VKPbPXlYwvR7YINvenGvfmeXNkfcWs29FAhukW41b3cJ
         Bq7B/h8xhQW6sch2SVzOysmzJXOM0pxppbTz3U69yVVhETmmLCJ00qCHB8HuO9JujmbF
         fVGsUZOdsAKtHtO/pJc1acuj9ZHt2ljfqyWAUu1BrCbqkqTwI/4YSsh77nparzDmnuz+
         OhK6Dq1XeTo8hS90vAhMZlDzynu/i4Ct4L6eD16PRB+/aD3iQUQOWNMZ1LusWjCkcQDW
         Gf9ao8NjChWhF63WRwC/mEtcyV/X/UcXn1bLUgX8FcJB42LYRRNOeBY40t11rC+bPNXL
         xD0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=VCbeTBV/HuFNiJMfHGxMLbQGQ1jK/J79W2ZZdXZ/d4s=;
        b=ddrsEIPYV8o0LyMNaiy/if1FMYGuZCWAf/wPzWWdyvLdQbCQDILtmIgBACwYL0Lf4I
         n/HsjdaRslw3dQ2Obam3CL4sVlRmf3T3O847ZWO7fXTL8wFfBrbpyIBULmQTnzTzOL3Z
         iVBhEfRobsuyUEIE+CY8xtH0b16nimo9BGhI7ZyYbd8e0mrJKxhKGCo8CgpYoCU4heMq
         IocbRh/AEySPRQTwdDvBaHODcvDYR0CwOv+NC40yvbJWehjAUJq63DAMCXSFqu/qLpJd
         UR6AFC/Kw7GdtlPPo3WSvqqpyj/ZhsmqSqq4w6h57YN/axQo/E5CzrQUShtGxSx6b7yO
         abvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wRIM90pR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u19si775469plq.4.2020.03.10.06.08.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:08:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1F65C20409;
	Tue, 10 Mar 2020 13:08:55 +0000 (UTC)
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
Subject: [PATCH 4.14 080/126] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Tue, 10 Mar 2020 13:41:41 +0100
Message-Id: <20200310124209.027712466@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310124203.704193207@linuxfoundation.org>
References: <20200310124203.704193207@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wRIM90pR;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310124209.027712466%40linuxfoundation.org.
