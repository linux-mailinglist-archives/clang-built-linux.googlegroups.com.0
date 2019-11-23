Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTUU43XAKGQEFMVVLJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 002F6108025
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 20:36:47 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id u197sf5974132pgc.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 11:36:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574537806; cv=pass;
        d=google.com; s=arc-20160816;
        b=o/qedFUVDLe2VB14pvHxOEB8WPx7h1XgfbCmJortBdE019yVBMGMVOiU3Xs2DYQDjt
         ZqL2q1pYc5iyXBEOMZ4nT5lpvHYcfuUmO9V4Y4eywCPpSXxy5zHeu9lUjvT5Up7y/ccH
         iF2b6eH0FEnQ5Jhu+BQrhs548p6TGN3GNtva/BaWEdpjrTsyCzVVuqun2GE7sI5qipZS
         2/5ww5E1Y9AgIXEKCXqam5laH1gEgK/q3wzBot816+mu59x6X7i8SYsVyHWnaKNSiXH/
         e24wmatilIztG+rAoDFr/DpjtBfGHYrs9+07fp14jiGni7lDVu7bZ8Zyvg4XnkAodyAe
         wk3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=0Zful2HRdtdaZ2BTjbgG9ANN5dpnUIJX+cmi/9k4AFw=;
        b=bKwROzhT/eJCIGOC6sL5fo7hLnRcCzPyO2WGtQu+csPbBeeMlpu4KPJ+VOU7CWWJOn
         H2s6AO69rPBpqdh71WUdLHBJ7kQ5EuqYDBnJDXMJJis+RtTlxTnur+A1z7RK3s6wlcCE
         htb0j0MhNp+joO/aJ5tc03SpcTJsJ+Dcpp46WL61P/AjiQ/TZoVyPH7rJUMaa+acJppy
         x+8v/xEUAtrghVNXSAkuoQVLmGlrUTOkUKfPaKHSryQ9RN7a1Vv6wJzT4S+0QP0m8RPe
         y90YxhKhYuL496BOnpen8nletqW8NNvgEfJxLE9yDhdLlDC+peiQXQ4pd37AoZn4CS3Q
         QQUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WbGn4JFx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Zful2HRdtdaZ2BTjbgG9ANN5dpnUIJX+cmi/9k4AFw=;
        b=kPXiyPmczxEwrpBTJ55lpnT6Nt6uQSyGVsVm3UqU7SoonVtkFpTHLuUZO4wDQbVSy4
         iWARB9SFrJ93KB0XYdif8xIm8/R2p3nuoYVXwqWHSaifYrgZP4WJzLiPVSwUPPeSKjQ5
         wt2LAf2i14lic4RBXhdQtw6buG4eZOUXV4MLnbhKhNl3Cbrpjq8194OXFzaLYfLRhePE
         pKggABol0GqBn9k3nHAZy3yaqtNU+qR0SjjHtgXs/B2eSxTILxhTHXVC6WrhzeiZ+59B
         NdZwhK4PNz31RnvikNfP5rISKhOH0p0a1LsfSdXJzEvwZGSyIEKEQEvw02Ag1i+LRiFt
         97IA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Zful2HRdtdaZ2BTjbgG9ANN5dpnUIJX+cmi/9k4AFw=;
        b=e/0gKJrJ9S1dx8g2Kl/gwEuD8Ic9w5peTWaLAR+VOOoiHZaC5/P2iKco7YqpnDJZSQ
         DBPnFBWgI7yjo9vZ2CscIfuVfWV1/9DyWRsKMny8R0P57GuQKcbJGVuPIkEg6HF9Nf9S
         eBkpflgadiEDKmFN21VvzbouGeU+XFMUh/Qu09RVu1G35+f7EJuiztU4ALQSBXGRW15m
         mMPGr5AqtpFRPWJQJSPk6lkU4oXFJc6ltmvXRjGveA2MAyzw2BKNzZHcdm8tGxJ40OlD
         EpKbEXRogbKBWLgfMYYr+OF88JFUXJY9a7aYwWVlbuziVTFLE4ZZzXt5yVVKyov6AY4P
         QCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0Zful2HRdtdaZ2BTjbgG9ANN5dpnUIJX+cmi/9k4AFw=;
        b=WBN/J/AfTnQxLvcdMTq6u3Z0VvOqaXfoKEc07NZ5UwFQKzW14cfYniwBmZ7MvDogW6
         /qfERWN1EnCUMjMD59i/43QTwByRVan4HmUhthxAH/S4c0pclO2/EngjIXqPxfDPe1p2
         VDZ4b4I97uYvO7YEmafMVDhCbTsMofwUKqYwkixnvO3m8K46r8pbnUm9+m2xf1PnrY79
         okRUyh9c8itzELaKdSgdeLY1NdNCgkn4eMdERBlbWsHHEIlZDgscL4nAuYixN9B/5U+C
         nnFbnuM3MHX89tJs8rSBufE7wgVVE9aPMe7ONuy1vTBxwNJ0BIiF36L9QtMVfFm6NuOi
         M6gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX2PwahbM4d+8v5fkzZQSxpL5ZI2jwG5RoaYUVQ3ZbPabdyj7m6
	dMXInVwK/O4Ae2t0Pa19nzA=
X-Google-Smtp-Source: APXvYqygRTZIp6jw0T4SF5eW75NN+yFBdE7FZsGsB5uwFKBeSNUz/UPaoGORJYrxc8M3DibObUm4KA==
X-Received: by 2002:aa7:9592:: with SMTP id z18mr25349700pfj.176.1574537806180;
        Sat, 23 Nov 2019 11:36:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e70a:: with SMTP id s10ls3129939pfh.6.gmail; Sat, 23 Nov
 2019 11:36:45 -0800 (PST)
X-Received: by 2002:a62:3644:: with SMTP id d65mr25803361pfa.225.1574537805816;
        Sat, 23 Nov 2019 11:36:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574537805; cv=none;
        d=google.com; s=arc-20160816;
        b=db4umUhlceomag5ekGJlEmgP5xF/OG2G1Rz3NQ0AQgjxh7PNLncK3YcfFCn8gjKVOT
         3/degOHBzo02/ANDwwhT3xAjX9qB/t/YaVpmkh4/vpTkgfzsOOUQYMnFr84kCvbtKhu4
         +/WcRGA/hNhLbEbhCtMHRHZLzACaWpDts3jMj1QIlbgzdDrqvtNnV1QpULlUg+DP83eH
         P+lMSPwA7PjNJ4JSXhcPtFO8PRh9Bs6uU5JhfAA7W/rarC6h5EF3zrgap2Lce1Bci+69
         8wWgduWBUFmTkTMRmH+vbd5bxaZFMkmUN28B4dtTamhFtsOOf2AHcLJ9QtVJt32JyW+o
         +vNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=oSQc37dqCsKmcQ7zoyXBibnTMKn/Bl9FPXqYEwoE1CQ=;
        b=e/5QzhZQTXeE9kBLzcmvBdQ5Q5mBJYerEo1Za7iNdExjD7SmuuvMIRDNCaUi05lz0w
         VU9peKCy2BU2VIu4s8zogZvPS1vMizEhoef5KvIE40Uc8YKwz2g9Hy8NaRiYdhEAWRl4
         LIOOAF0ZLkziECjL7FzALaiSBqKSto6WTDx+pPmKGv+Copvs7AbI7wOTpUFmXLNL3uY/
         iYfQFrkBe70VQUDmnf9IprSo5tlBwNBoP+WFe3aJB2Rri48Huu2ofMORWkZVLmjh0E1X
         Zazkt6tZ1PMhMwK92rAR/Gi9lxNjJreIKydm7GMWU5dSdxmxX2LH98sEAANB512PMAW2
         agqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WbGn4JFx;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com. [2607:f8b0:4864:20::241])
        by gmr-mx.google.com with ESMTPS id l7si90104pjy.0.2019.11.23.11.36.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Nov 2019 11:36:45 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::241 as permitted sender) client-ip=2607:f8b0:4864:20::241;
Received: by mail-oi1-x241.google.com with SMTP id s71so9567072oih.11
        for <clang-built-linux@googlegroups.com>; Sat, 23 Nov 2019 11:36:45 -0800 (PST)
X-Received: by 2002:aca:1715:: with SMTP id j21mr16374553oii.6.1574537804955;
        Sat, 23 Nov 2019 11:36:44 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id q3sm551968oti.49.2019.11.23.11.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Nov 2019 11:36:44 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Harry Wentland <harry.wentland@amd.com>,
	Leo Li <sunpeng.li@amd.com>,
	Alex Deucher <alexander.deucher@amd.com>,
	=?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
	"David (ChunMing) Zhou" <David1.Zhou@amd.com>
Cc: Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>,
	Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>,
	Nikola Cornij <nikola.cornij@amd.com>,
	amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] drm/amd/display: Use NULL for pointer assignment in copy_stream_update_to_stream
Date: Sat, 23 Nov 2019 12:36:39 -0700
Message-Id: <20191123193639.55297-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WbGn4JFx;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::241 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:1965:26: warning:
expression which evaluates to zero treated as a null pointer constant of
type 'struct dc_dsc_config *' [-Wnon-literal-null-conversion]
                                update->dsc_config = false;
                                                     ^~~~~
../drivers/gpu/drm/amd/amdgpu/../display/dc/core/dc.c:1971:25: warning:
expression which evaluates to zero treated as a null pointer constant of
type 'struct dc_dsc_config *' [-Wnon-literal-null-conversion]
                        update->dsc_config = false;
                                             ^~~~~
2 warnings generated.

Fixes: f6fe4053b91f ("drm/amd/display: Use a temporary copy of the current state when updating DSC config")
Link: https://github.com/ClangBuiltLinux/linux/issues/777
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 drivers/gpu/drm/amd/display/dc/core/dc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/amd/display/dc/core/dc.c b/drivers/gpu/drm/amd/display/dc/core/dc.c
index c7db4f4810c6..2645d20e8c4c 100644
--- a/drivers/gpu/drm/amd/display/dc/core/dc.c
+++ b/drivers/gpu/drm/amd/display/dc/core/dc.c
@@ -1962,13 +1962,13 @@ static void copy_stream_update_to_stream(struct dc *dc,
 			if (!dc->res_pool->funcs->validate_bandwidth(dc, dsc_validate_context, true)) {
 				stream->timing.dsc_cfg = old_dsc_cfg;
 				stream->timing.flags.DSC = old_dsc_enabled;
-				update->dsc_config = false;
+				update->dsc_config = NULL;
 			}
 
 			dc_release_state(dsc_validate_context);
 		} else {
 			DC_ERROR("Failed to allocate new validate context for DSC change\n");
-			update->dsc_config = false;
+			update->dsc_config = NULL;
 		}
 	}
 }
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191123193639.55297-1-natechancellor%40gmail.com.
