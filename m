Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBCMK67ZAKGQEVQ3O7UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA1E176AC0
	for <lists+clang-built-linux@lfdr.de>; Tue,  3 Mar 2020 03:46:34 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id t26sf551836ual.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 18:46:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583203593; cv=pass;
        d=google.com; s=arc-20160816;
        b=PQxGVVgOQ0kBLPYmTqldSXGzQEsDFeMyAeuaNR92V70LiNncYtL60lek1HI+ihNolR
         cMFfbrcmK4TAWU0m0I9FAFFU9owNAvjJgeX5hoCLJV19GKTvfDc0dDMFJmnHW0Q1H32o
         +2RGcnJmE2kZc2ACyZc0Jzz03rhI+jwvkCk6h2BWI+rZzdpAB102GUYX5xxYtaYCjBtL
         xGu1+q0vXPwm9R+xJaYkTEVoqgkl61EMbdjbuzpDkIfi3ogZlacUm3E/7SLEB5i030cS
         Wxnn7WGqs0cboakm8Tyirq4D04y73sk5gfub8EvP/ydq35l0HfIJ53oqWQ2xYCi7XWOJ
         gypQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CIOyc/t+CEA+P4GLVSPUI94GBueeM2WB4MWc+BzKhco=;
        b=TqCTYQV0lTGu+t7atyrKTCN1T7DLo+92XYREIA8uvtpHDM0RqPcKBdkKhtrwoQhqdc
         VasWz21HIVvBQfdMd+X8ZI2JT3YPPbn3gZgN0O3zbncz/E/Q0C7BO4RzVZo75jSjVd6A
         FQuFNBxOXqePbXyCdYKWG/uvLQPIg+URqHVhSyxgkmenK2MLzXCLTxIDmp+7HeHgZll/
         YtMhAr0wdKdFmkpyULH7aW+y9iYVmIBsFJwlJId6IO6NxvW1XqwX+/CqtWYphxZUMHjN
         ZGZOzQgoWHHC7HBkXYzGb0xKdhynnlpDefw2/0LZREIr0gD4m/mriOnDOeOGxFcX0NPq
         LKGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oJM65QX7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CIOyc/t+CEA+P4GLVSPUI94GBueeM2WB4MWc+BzKhco=;
        b=ZrpWr9Z8XtMdJy0SF4Fkh+EGp78Y49M7mNJHFztAN1Tc8ZfriqYBqMVRitLEigxN6r
         5UoHGFRFmNCMaZV49otf3HYspKS1SiywboojHXFkY6467ZqQDHO60sMVMYXksV1vgd8k
         1bp8WDJwK1xgYmC2A395n5c8fUDsydpyPFzAsc8SGK0sFc6FkS1va+DB8D8pMU2hu2Ij
         nfyZYPFyuCa8o2fvsI8ReBqDXviQFGqfZL7pmJiCS1FOCZF1gVL5qlyiT6eJ2WmIqdee
         i1c3E6vKcMSXY+rWCb6K2iBjzpy4+c5zINOnAcxPE5N8GFjf6Vsf2ra2Oe1Q9Mi2TqS3
         ktNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CIOyc/t+CEA+P4GLVSPUI94GBueeM2WB4MWc+BzKhco=;
        b=Yis+Oy74kOcNxDllqV5ctP9EdgcZqFHnjP+ynqIBFtlMzDISMxqQr4ScXd1bSsBHsK
         o+JNaJm6G0jiE2x28UOlaylBeulZ2oLioaEicixrkstfwbg0ei7U3A2NpRicVzW3kO8y
         +t+dD9zfoH8Hh08mkPW2ymu1ZhxhRSySobPj4LgFuZ3fl8/mOqloZg1KzmPBii/ZrjN8
         +0uybaoqefkcLYW1qIBJQyehmfj4qnnsT4QfvctpKdZXcF6XZ0o3zRIvMXqpAtT4UmQ0
         LxN/5IAoXsSBAwNz0Yb+gGIK3EcxX0AyoRM4VBhYXNLFiZPt967TaXQbP7i0LqndS6mC
         fAKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0WYQDeCP1CeDL4LZq35nzQzpFJwQQMlOv+D2AbANQmEH0uJiIb
	i01vtIH3He5fXYqUZK5/fNo=
X-Google-Smtp-Source: ADFU+vulOS52MOD28SJlHdhLhd3CXGLaqGzh8h6xOy/rGBk5GO8BE6rSo7dl5tmFKkgHtxiz4Z+c0A==
X-Received: by 2002:a67:e342:: with SMTP id s2mr1191439vsm.198.1583203593508;
        Mon, 02 Mar 2020 18:46:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7d4e:: with SMTP id y75ls250073vsc.5.gmail; Mon, 02 Mar
 2020 18:46:33 -0800 (PST)
X-Received: by 2002:a67:c990:: with SMTP id y16mr1232167vsk.113.1583203593083;
        Mon, 02 Mar 2020 18:46:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583203593; cv=none;
        d=google.com; s=arc-20160816;
        b=U45FE5haHgX564GZRA76zf8cfluksgjE+nMzYzuumorPADYKOvj332RbP4ujdnOkI8
         LLK0165oz/AV5bbkprvXC9QEJs46gnS281WVAGmDbbv99rxDsU38RCWg1RkcGyer03ff
         Qdl2Hloh3d0wSexXVx/kiVidK0/JmZIbCxKWYmLm8ei+h+izRnC40sxBVHylRZ53cupH
         FebL1h2vnVSFkZ/mcklU/qc/BUm72XpOsqvDlcNtelQ2rHZj6B2Zoz9EXjLZh3whzf17
         f54yySf8NFx3TX3gOMTJC3gq7HuIitZAdVwk/+ZajD4nh1baGAWy4dIOZhawQeAxYP0X
         x+nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fSpXux1PVIL/V22DzCQPIi4YGUS/ZSrCpIvceUAGZWw=;
        b=Iz/POc52odoF7NuANIWH8YwnL9MibwzWINhOWqLUdTefidPd39S11quyEcoego/7z9
         i3nMKFLq5do+dUFH2mLpdwKXSCwg+mu+zYq7ZvaAcHEP6pUqlWXBk/FXLX03RXbusEo/
         vu2FBuv2n7yhoz7/t2B9R4J1o/DhqZaWkhVTzamCNz3qGPw0ZcLU7FatkDXch0fArUId
         QRV4B/2A18LD55L4LG67ZwBxmXDRyc3H7PiZa0HI84ZDJewG66XxUe6HfWazRwCewyPt
         7A7naNNCKF5Q/b/R5ZXVlby22E2KbL3HE+WJzHYw/oFFvbRNQaeb+Q+fnqj3Nj56+QQx
         Mdjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=oJM65QX7;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r6si768210vkr.0.2020.03.02.18.46.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2020 18:46:33 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 469A424680;
	Tue,  3 Mar 2020 02:46:30 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.5 13/66] drm: msm: Fix return type of dsi_mgr_connector_mode_valid for kCFI
Date: Mon,  2 Mar 2020 21:45:22 -0500
Message-Id: <20200303024615.8889-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024615.8889-1-sashal@kernel.org>
References: <20200303024615.8889-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=oJM65QX7;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200303024615.8889-13-sashal%40kernel.org.
