Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5EX63ZAKGQEEWB3MNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD62176793
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Mar 2020 23:43:02 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id y81sf1542839ywd.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Mar 2020 14:43:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583188981; cv=pass;
        d=google.com; s=arc-20160816;
        b=BvYpoqJT7RB9PvXfYJ/qxn29NZ6x59PYY1vin1JlYMTq3HzOUN09MIc/7NWJ10Kv/N
         slhaaB1/gcEnYQkWm2zgbJjW//uq0lkLVmwBM4VyJoTsT+Ege/re0ognCrMa3slxPfNp
         sUK7CuDv5NEFqsihHwO60gLKQqzT1ipfur8gWdrL52D7l6w2tV2b2TJ2jyq8AUBp2Jrn
         8Zbo8LcFUgSck0wRc4OqqLSK2mItXd0kCIw7tC+Tdg7LCY8ZZD/KJhJif9GhMkOOny+D
         ETR3yWWokD3CN/a3s5DiwpwNt4oo+4VM6mN7ZLFAEePHAYnxJGWxfBWo4UUwK1Aham4O
         ELEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=nkrZUqCnSId1XDYQOoKaguZvrASzrC984261xXtVIxc=;
        b=stOer8vjQOlEW4rbGLiW+aWu9Az9FtGGdqz3twIKEZc7emhcQ6xNN2OMRK3SwUjNCS
         nzwTnkN7OlhnNSts+Uo1pMsqEs7G7XHYYKyQ4EHQkf+JtjbkymGZhQwq7OnGDx7F0oHP
         cA9twQ53A/vUaik2pbr8HlJliKzSvKtnEkf4FMK8pFQulX3jMPT0d9SOI6Z0QC7b0PNh
         +8ZxiMjvM07G8vaGlja+8P0GgB7fKXAaYXGXXVtZDyPSoSQ9ckwPIRjIPwpE4FHF1cvh
         1w+IgqZVh6hgl+kdvezVSoWabWQWaCEugPsWE/CXJavQyQKd4cyfSKeQiKWu4LqvsfAf
         6MyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIC8CzGu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nkrZUqCnSId1XDYQOoKaguZvrASzrC984261xXtVIxc=;
        b=rxbnvpalqXvDTnEt+PV4UWUY4XxXyr+Uxd+HducYc4wnN8ZROxdm5oQ9tjwvDVowxY
         yC4NRRIx+/0qUuA7kBFX6x3kHFvQ8e7rfzPZ2CH1h0i0UF9Cwu0TD9ytDl0a5QnCzupa
         UWfnGpMu9TKqfK6u6S4aab/qsTMU2IpMHrGNuX0rGe/mbm18gWVyrE9ZCFzbWFrpYH+X
         x0gHrihb3KCxtVccla5qdid5NN0qR6uEjMPq53xnJ6RmGj4CF5wL6OjmdwSlXcnSLeb3
         KPCSPbFYdYW5DjA5uv08O/99S8mZpeIkupmLhVjzCCvQ0tFUfzs7VNLGY7rFdoPHd3j5
         MZUg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nkrZUqCnSId1XDYQOoKaguZvrASzrC984261xXtVIxc=;
        b=jCOoY0MjSSv6kl9dBbaLMXlRpgXojaWfdtvYCYZXiOTm+ym1lxFoD29nEw9hOcdIn2
         PqdnZU62HDdzoT2xgLv7rx0Au6pvHXiuAh1mKMHEavGn0QyKyvLC/yHH5KdttIsWudWz
         kTOY9M+itB7rEMLWHZdhefwWy6yTCeSZEa4lBlHodAnTx+vEreLGpoIujzcBHMCykC2W
         cZ2x8LZhX0ZE/kPP+PxVJBxIWcpy503NCS8g8izK2wU37e5+eYhEmL/q5k7y8NbAkrD7
         T8shCIrSasWHN9gltXsztqCBPxUYhJ2bwMP46wmA0A+FKGaqKw8EllFKEBD8L6iJGs0R
         KXNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nkrZUqCnSId1XDYQOoKaguZvrASzrC984261xXtVIxc=;
        b=dT7uSwXUODUmg+5CfZYrkSAT+zHeCNiXQNQXZ53lKb3M0OEjI+2qBHZxtvi5YM8JvB
         q+wBWKs+Se5zfinq4FbrcUwUebhrKDmeY7S7h1QMKP+QcrVBz77qfpTgKTBCflWQx1lc
         MsoAXia/XRKG6CAWk2TOSNg82g2UTVO7Jag91IPYr8L3XmSy7zu8kjcQEKqQ74/jyIEi
         UpZFxpjM63g8JZbP6KcuImF47uSXP0kLlJ3pk7x3AvwJcGPIn3V22daOetXdXx5QKFBd
         XKaxkDxy9Dt76w7nLGfYaFOhP2sOsZKSX1VQpNWVo67eDvxlOPRUTMzeBgw3ZOx/avmW
         EUIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3K6FM9UsbfRDzxBP1WsvjBL0u1xxzlKXWy0PbWOUv0sF1eVS2m
	NXP9fHFvnEUoY99hDAC9c6w=
X-Google-Smtp-Source: ADFU+vslbj+z/ZFoLRVg3tN4n4PIpVY1KtykdOAhoM/a/prOA8pRcs/lUI1kzCWJjujU9tvSra82sQ==
X-Received: by 2002:a81:a311:: with SMTP id a17mr1643541ywh.484.1583188981083;
        Mon, 02 Mar 2020 14:43:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d648:: with SMTP id n69ls327110ybg.7.gmail; Mon, 02 Mar
 2020 14:43:00 -0800 (PST)
X-Received: by 2002:a25:ca46:: with SMTP id a67mr1318863ybg.447.1583188980668;
        Mon, 02 Mar 2020 14:43:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583188980; cv=none;
        d=google.com; s=arc-20160816;
        b=GnPPgGvCuq+kTjbL1JfFBBYOfntgkakZ6HTLCii8WSR+cYEuC9yVRRYbep3lGNl32C
         2DlxwkIQYv1x49ploy/cteXpMtOH6Ra+zyrKAx8vfj0ygMcXh3aSZUk7Cy2Y2KqI9hPI
         cDaSdaNdin5pl6x1twV/tjD5nlpo5YEUOKpMy0JEMgXXSRHBxsrTqQfNXqA4Y5+jSZdu
         6Rr9AsEDP+ZF4mlVuVRxE5qznVdFvi6Di05s9UsC3pNNb3MTSGPj0Ao34pVPEm2HJd1A
         TEuYa5K6P/YwfpbLTGjkJaTJjkigOv0CXYETVUGiNO8ClWy/zmeIUFDtFL9ZjhyXD4uM
         vJ1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=VKkYrMHc3NgZY6dbFAxdV/unADRxNvh4mhPtiaguI7A=;
        b=rnGeuB1Tp2sR5LqUt8VT5lA33Gtg2LyVQ7i68CdC45JEIXB04Fjzw7WAKYU1oAKMlG
         /qCblNtQMOW2CNufSqWbCIBgw3nVf6lUrMFaemuHncMKfuLX3yBn54DKY75KdgY9vFoa
         GCR9seJQ0uFI6SfY1WZhk/WysXxlPCuFr5xKq6AryI9mu8FYuC7bpg78xVS5Ni3jh3DL
         Vsgj3HoZSWsgNuoXdBT2QzMuDMuvj6Eru7kXdAD3gUMXRTHahmI5FoF3dtV2yrlVS2id
         Lu6Tglcubr4OMnMbUKzk/TPpKDT3BSC+37lHjtT7KKXOBs1LwE37ifYE+52+bsiEffoT
         jrRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XIC8CzGu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id e184si362437ywc.4.2020.03.02.14.43.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2020 14:43:00 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id b3so1052629otp.4
        for <clang-built-linux@googlegroups.com>; Mon, 02 Mar 2020 14:43:00 -0800 (PST)
X-Received: by 2002:a9d:21b4:: with SMTP id s49mr1078062otb.294.1583188980093;
        Mon, 02 Mar 2020 14:43:00 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id z23sm2746739otm.79.2020.03.02.14.42.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2020 14:42:59 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amd/display: Remove pointless NULL checks in dmub_psr_copy_settings
Date: Mon,  2 Mar 2020 15:42:17 -0700
Message-Id: <20200302224217.22590-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XIC8CzGu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Clang warns:

drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:31: warning:
address of 'pipe_ctx->plane_res' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
                         ~ ~~~~~~~~~~^~~~~~~~~
drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dmub_psr.c:147:56: warning:
address of 'pipe_ctx->stream_res' will always evaluate to 'true'
[-Wpointer-bool-conversion]
        if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
                                                  ~ ~~~~~~~~~~^~~~~~~~~~
2 warnings generated.

As long as pipe_ctx is not NULL, the address of members in this struct
cannot be NULL, which means these checks will always evaluate to false.

Fixes: 4c1a1335dfe0 ("drm/amd/display: Driverside changes to support PSR in DMCUB")
Link: https://github.com/ClangBuiltLinux/linux/issues/915
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c b/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
index 2c932c29f1f9..a9e1c01e9d9b 100644
--- a/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
+++ b/drivers/gpu/drm/amd/display/dc/dce/dmub_psr.c
@@ -144,7 +144,7 @@ static bool dmub_psr_copy_settings(struct dmub_psr *dmub,
 		}
 	}
 
-	if (!pipe_ctx || !&pipe_ctx->plane_res || !&pipe_ctx->stream_res)
+	if (!pipe_ctx)
 		return false;
 
 	// First, set the psr version
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200302224217.22590-1-natechancellor%40gmail.com.
