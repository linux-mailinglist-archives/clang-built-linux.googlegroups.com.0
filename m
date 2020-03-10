Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBC5ET3ZQKGQECIURVJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36817FB2B
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 14:11:40 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id p7sf9765984ilr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 06:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583845899; cv=pass;
        d=google.com; s=arc-20160816;
        b=S8vbOb3jhF2seOxbJI8kcx+8xBVwGaPvWmveNB+w4JLRZkxzJUOYTgheoeZjfpf9xB
         Y3lgRXViWABzjBYHqL5PvwuARQ6n7j3VJVOvQhmSa0NQB3255D9fpUCsvI7nyiRzzd7a
         aqARvSkFtJ4uXKp7ObVFIIFg3ZVfhNBXYr2mI8U9H5nWVFuMGBfr+fKNDFTseXQtAHYB
         n+byFRs32YRogQNp8PF1Y9JV+CdRJpORo4u1w3ZMla0hEfvyoQ/nLWx4i1uJdPqiV9TG
         j7S1o4+8Z4IvwkA7JSc9Dz1+8wwGab3lbe5YoftmFKW1FD0+CVUHzRKgflxcykBwob+V
         ku6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=+Lzf2medD/ii5OXI0PlvJfrZtvI9pqftk61FNO9UWQA=;
        b=OSPL0BfKEGh4mof4mOmEIyR6K4Byal1H+jMUyO98wqM0VYvI9bovxAB2OYIGlZwaeu
         Bfk8T1U+daS1ffnqVGAlfrIhyqi+XQCQauGryTv5N4eSATHNdrFzRAbGKUsfQhaQK/0Y
         PY6++xc+QbKS+mWRAUc+ew9hp+xkyqbOqbw1WAKQYJJu4NK78ODLTf3GaF3ix5xOBIpQ
         TOsSLgRvRLdMaXMhi7bhA3E7UdnOw6oPZyMpgUqVKKajDyd11V2k9E4iDFL+akHCFxxw
         2QiKpKOEQyT59w2CJvVupLYLDEq+uJsxM5ibUKeZ5raF26IuXZV1r1mzHiLsA2EZagXt
         TOXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xJMJmdsH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Lzf2medD/ii5OXI0PlvJfrZtvI9pqftk61FNO9UWQA=;
        b=dtbgFQ5EOzRMW1zLpQOq3ME851lx3yUhCkjg85Zc6ZkgLiWNsP7JI8OI2RpZVBAp3n
         AfMHbz+Qc5bjAgwVzAR2Xze2dsNTAI/K95GxgwVYPzl//e3J33bJ+plvP1s2AVW+7+mv
         kpTVGo9adVPI3vG+fkk5px84QDowO4edKSxoi3rIV37t7KMyM2vm3FD7vse/c0uwfOA5
         sE45h4NycobwKUEkaGIbhmDVBp4okIik/rGQhgy7ayBxvZZOdy3h4qoA+W86LIwg312b
         w9M+qhtTIgWfzDTJhCF+aL2eu5UXCiRCAssiDJXJ0g/mkbP9XQD0PHUKRWG/CJZoNBXX
         ty5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+Lzf2medD/ii5OXI0PlvJfrZtvI9pqftk61FNO9UWQA=;
        b=ekhHYemUR/F3ZQR7leoKl6CxSzqEfpAMBjmOay+U8i89NPtDeRe7yOXTCNK3qSSpR6
         3IEmOqrLGo0sA6tI8O65pnHYkxvNFiNnOOuJVnKmU+16QyCHiMFcMkFtjZjNUP4yQuZQ
         guOjG0z/xT+GcTxym6bNpIfBqnZqChniqqVS487jeG8TI6gFJL3mYs5Ir8/vA9Q8guho
         FmmFgQJGjXEU10cx75dkKZZ6qtp1PyfUUuc98hb0t5nKZRvc6lm4WOJkMkIWGQDGSugD
         l6MV/HIZ5cUOs/b1oIYJbkQl6ROhThzf8A2DwhY6/laRQ9OgKrU0DG8f5M15K7IlRo0/
         rjYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0T/FGgWzZIRn2Gk02JmmhukQrI/uQDASlbHmafY7Z8eWW5kcvr
	N7WXbfaWPqilpPGnG1wvV8k=
X-Google-Smtp-Source: ADFU+vsFNTcQXLukYDBk1Ft3PtBWiaUE5EiH3Ri1RpTSnhfmBj1F4jHJsGRNNc67bSXxqMm0HBLRLw==
X-Received: by 2002:a92:860f:: with SMTP id g15mr19728084ild.297.1583845899131;
        Tue, 10 Mar 2020 06:11:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:cc93:: with SMTP id s19ls831785jap.8.gmail; Tue, 10 Mar
 2020 06:11:38 -0700 (PDT)
X-Received: by 2002:a02:447:: with SMTP id 68mr20313348jab.7.1583845898752;
        Tue, 10 Mar 2020 06:11:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583845898; cv=none;
        d=google.com; s=arc-20160816;
        b=i1R5dlcl6vVpH5VRVgnpTkkuctJByini/DJCdZcX/uJUnTJsFth8AqZw+fgOxPq3bX
         ieCF6L1xnCzL04d5EqjM28GSJqR/tjae2TtnvVxR4r7dfu5B3iEYRLmCOr2edaWqlzxS
         oaryKYBCyJXPIVzD33o+FUeL4KAZ+aWZ6vZrTOXmsXq6Kl86VzW+qfAeT6OkX05Bejib
         96yNpQrWoXy6RDtF6gQgTv2UigvxSOyRj4eIeliW+1y+NFQn6SvXuvJsNZY8ZCsa1zRh
         lOj31V4B7t9JsEC4597zHvWoiIfzRDw4u2l6YD8rmiJgXDMN4Vlol795cC2QxryHr0Zt
         MS+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iDk/FiDIryRLL3O2R1bSrcbSwTG/VT5pskyXb2rY16g=;
        b=mzkmbVBuQdlfaz9CKX7XPCiJdp9FWHNgWEU43xh1kFXg8couibtrBQERC/PhFKIJjX
         sRWlCZT1UdgUG6alt3dvBIz+Rgk6c4633wk3uzQSTrUFRpkbzu+Hx0abstrA/woflHnu
         8h/mGg362FyJ4nggU3e9ke2ijs4PIrGaOhpIpBl90nm/fq0oA1gm4Ol8kDLr0MCXZyqe
         SZ1LUCP+nBhmbOhde2aOeduUOf6hSlz5XuL9GjM7h2+K3ViBPNw0TaGu454js1cBz76G
         9d7lyc0FT3Xa3JN64d9Z3cWpxZteNsx2jmRlOeuCt/T6u+5R1L4K4+aJpGaBhfL+qv60
         qSpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xJMJmdsH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t64si592426iof.2.2020.03.10.06.11.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 06:11:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 97B08208E4;
	Tue, 10 Mar 2020 13:11:37 +0000 (UTC)
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
Subject: [PATCH 4.19 14/86] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Tue, 10 Mar 2020 13:44:38 +0100
Message-Id: <20200310124531.562308450@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310124530.808338541@linuxfoundation.org>
References: <20200310124530.808338541@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xJMJmdsH;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310124531.562308450%40linuxfoundation.org.
