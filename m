Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOOK6KEAMGQEGF4NQ7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id DBFDB3EFB8C
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:14:18 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id p40-20020a056a0026e8b02903e08239ba3csf708933pfw.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:14:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629267257; cv=pass;
        d=google.com; s=arc-20160816;
        b=YOQuKNmyNA8cWiSKFMOmccMJhgLkGLUxn8X0z8xLgh5ZFciXTavCYMr/850gaFQF8H
         WWzo7jXE8HOF1SJG8ZUybMYdQQ4DnF0tEl2tP2/x3FNfbBgii9i4gZuGdJQCUBXuqC8j
         3wv8V6FDt4mvRuAB9BFbqUZ6b7ZE4LLj91mYb5HcTklxAB0fORLe270CMzVyU1TdaIid
         6WO4HHqpl+RiWx5xqlGBM7SqJq2TbH+iL4GJweOpIXVfMJAnoKCw+CzWeHEXv4uTbu0n
         oeFqgd2e+3n7k7HqH+EmLnWlvdcnvfaniW5GaeCzuKc0R7fXg9aWILP4cmX/EAaGTm8H
         NUXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZDynXBEDbEtf2DViRTY7UXTF4xhb7ONLDUhWio1jV6E=;
        b=kQKHxf/1bXTN7NqD2cZsSaX+h+zcCHTmtVdm77evjkPDm0q5Dkc/2gJDG4wTSjC1OZ
         mSVo0o6g+o+dflc5wxLqdPU6oAAM6ohMcbJXQEAYYLW5sktvYn9p5EkWlfNfTCgNwIpJ
         Q8r3LJDdkz23sl8/FDda2KfifxaH2FZ0Jeya9Aa5U91T5FYXJsVhaFmNq/d6f5fBBIhk
         WEKW/IDrggqAyATKBkiRV4M4cRpW+kpy+k8UPkYzPJ/P7RQIA/clN+1g/0jdik3ApyP7
         6o8xnPi6B95hJkDNz4Z+VUmzVAAWCYfbpITleL/GvYOYlGLQ5aa+OYokRTpfSy6Lvxwo
         1Lvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lFnsOWBb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZDynXBEDbEtf2DViRTY7UXTF4xhb7ONLDUhWio1jV6E=;
        b=UFMxSTZgWP4kxDkn9Ff9BBN3gWTsgL+vzqu4atkz1t0C2XPfe+fAubdH1aKlktriLR
         HhaPJYagU4M4BZd7DIWmXNU5hNK1HmXQHJ3VbirUBRfTOtE9VDMIoJoPiVfsqfwWZG5y
         fd99XLPyVQo7v7bCVWpenwiqM2Z8lSsy0bsBMA0Y49J3F5nA07gfuC4hwp8bWh+L1bOv
         NwypEpz6f1TnSVecv3rNiUQRn1ydLN0sl5KCOiLCXJMZOuX0/CDUwFUsOCbk2gbIohJh
         6CJ8wENJZwYzasuZX9M5MNmdVfQfvOWbYt8zXMlfmJG19aiZMJMn9BTSclUN1sQb8ya8
         OUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZDynXBEDbEtf2DViRTY7UXTF4xhb7ONLDUhWio1jV6E=;
        b=Vh5QsG5yKvPFoGfDYID4Lj9894ClePVN0pfCnxqspu67jlvd2gAEICgLp9MEPQ5Mrz
         42ljxYPRTTyTk4lMz4K/tavfXLOhdV63VoE4hidqpnq1qlgwqPKyn3o06k1P1/ti7yOj
         Re7skgmOcjwf8mrSdGz135z4dcSLaEr6WVYuKNAuEW695Wpik5bcc9EwQZttAxdSbX36
         PqWz1N3LZy5dJIYKxneDBGLDq0NFc7nWlE7qEDxKQdHn10Yh3ZnCvirEIo1T9MAa2x9J
         ijy2C/BC2EhxNYcPBOC3CybhITpSyIicW5tqCpZuLI7hE8DI1YLg/YXl2u5+I/w3WN0e
         DO6A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531PE6nWUDo9umDCZ0Kf4HyG6VU6tvqOxby7FlZm4v1SuuMN0FZH
	MNMkof+0DLdCyDd6lq6JM/c=
X-Google-Smtp-Source: ABdhPJyUxzuelJS1Nvz0UDFBJxg9WeO7/OXPImBtEv1+a9QT74YdcCi4zcryhDULnVS2UfDn6xXD9w==
X-Received: by 2002:a17:902:e744:b029:12d:6479:83a3 with SMTP id p4-20020a170902e744b029012d647983a3mr5882275plf.30.1629267257624;
        Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:218:: with SMTP id fy24ls2224711pjb.3.canary-gmail;
 Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
X-Received: by 2002:a17:902:a710:b029:12b:9b9f:c461 with SMTP id w16-20020a170902a710b029012b9b9fc461mr5861012plq.59.1629267257095;
        Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629267257; cv=none;
        d=google.com; s=arc-20160816;
        b=rGZvhYOQDMx5usHXt9wxFJAwQPZnIn5g86Y00qHloPINgMqPgeohwwe+8JI6FCPCBB
         0u1PM0MUOOstyyg5EMnuf1CTD2vOS0FcnFmKumt9uKbuiGyu3PpXxOxotPMlru7mUTHk
         myaYSLG3u7qdfkhszdbJFoSq2njqAuArodY54WW3nwUbG+chphxmNb4au3RZJTYl1Auo
         b8XBv0o0ho9cyPRCYXiMkYHJ37I+SEuePUHC/g1/K6MKJRqdUy6n8jyLqyd8bHySZsQb
         Bi3sw1yPjhYtSYQpA1i+5dBAdQr7hTUFJpWxiJp9vk2vEOjSdbP5muHk9Det2aDyig1D
         lCyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0MMWsXNyPTiNeiAP5gS1SC+QG9nXJlmhwzZVB05s6vU=;
        b=Yhiw7P4UzzbL2ZF8tcQaZlmPYHPEH88OV2/08GBH46IU9/1SlUBWZYnkKXUNkUEP4m
         YW4gYm+dUIv5zX1df/s9lsz/zgaVL8LU1036yTyv4roH2TLfQXg+SEj295e/2BSxHvbm
         6pBci1YqgjCGss0DYWkNLH0P9YXn+vOb41Hvs1IhPMjNPg2bUS32rS3bxva6LKzSN1nP
         sslXACz8aIx4YynZ2R+PlBbiJW7QupQYD47ItgDB5RZ2zayyDoaHlh4G0ZEkpuMAtzMm
         02LppZpKDexiBLwhF9BDqdn5suSCvvoJsxEYX4aL7xRzLskEZ7mHsMOHbH9levCzpbSi
         j5dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lFnsOWBb;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com. [2607:f8b0:4864:20::636])
        by gmr-mx.google.com with ESMTPS id k15si139673pll.3.2021.08.17.23.14.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636 as permitted sender) client-ip=2607:f8b0:4864:20::636;
Received: by mail-pl1-x636.google.com with SMTP id a5so1150449plh.5
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:14:17 -0700 (PDT)
X-Received: by 2002:a17:90a:f3d2:: with SMTP id ha18mr7684231pjb.232.1629267256892;
        Tue, 17 Aug 2021 23:14:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y64sm5430806pgy.32.2021.08.17.23.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:14:15 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	David Airlie <airlied@linux.ie>,
	Lee Jones <lee.jones@linaro.org>,
	dri-devel@lists.freedesktop.org,
	Daniel Vetter <daniel@ffwll.ch>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 20/63] drm/mga/mga_ioc32: Use struct_group() for memcpy() region
Date: Tue, 17 Aug 2021 23:04:50 -0700
Message-Id: <20210818060533.3569517-21-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4026; h=from:subject; bh=qstupb1mRvuiCQ1RTR6k6oV2NxQS+tS8y2enFqRpd68=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMiDAfxk4XGgNDwyOny5QMoIdZacepKSLc24F9z Lo7XG+GJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjIgAKCRCJcvTf3G3AJh6oD/ 9Ovp0Ql0AYVAVX1IIx8UFncQNMHylWbLYYu/pPeuq//n2vP3YxPODUvUsOhKeGvOP827UQo0zYW5iy tgiG1WBc8ebgh5QPmWb88QrAINPUhtbBp+Ot3NMw60te7sqbHEXsxkZV30DmTsosmCxyISKjyVvCWu k9+q0dosQewqL6/+1hWYp1uFW9SNaxLwoQPTdmTeeACtkvBcffo8L6czjWkLiNyOMCTdoqoQssvvRu zHaZ9swQIAAFRlHyaIwcnYCD8acVZhrpgLkn3SFlhEWx/CsFsuWCNm8ykKqoemb7waZs2mfagTLdNd j9c/hMpmgkGT5eBVZm8ZZc0VIpiQDZFHDrAdet4mxrXfRctgoALoLZZXdvZ6hovyaCJEmAL4dpEmzB SfbVedU11Uqk4gqtVGAPiExd0oEsgw9aH5Yi6f5Kq0NHSdjbUKSXAMoY/rdvqf/QkxZBOmr8Wsmgyh uaHkoAimq3GMz0bp3wb+4kSgsFxg4xCu45/FPrJc/fxu4K2kRpOUDG1wDjMc1G1trTeP21//dqz/DY dcmxUTtVuVe2fPww119RF2WXn3/GxtNi5RK7uTtxCgWr96J2MocjYw5//xWdXRfEEWLjXFK52hcX2N rEw10lDXzkEK6IQwMathNTugVFdbD4ID3UeC/FzYInnBnFPluTRksv4HTSmA==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lFnsOWBb;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::636
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

In preparation for FORTIFY_SOURCE performing compile-time and run-time
field bounds checking for memcpy(), memmove(), and memset(), avoid
intentionally writing across neighboring fields.

Use struct_group() in struct drm32_mga_init around members chipset, sgram,
maccess, fb_cpp, front_offset, front_pitch, back_offset, back_pitch,
depth_cpp, depth_offset, depth_pitch, texture_offset, and texture_size,
so they can be referenced together. This will allow memcpy() and sizeof()
to more easily reason about sizes, improve readability, and avoid future
warnings about writing beyond the end of chipset.

"pahole" shows no size nor member offset changes to struct drm32_mga_init.
"objdump -d" shows no meaningful object code changes (i.e. only source
line number induced differences and optimizations).

Note that since this is a UAPI header, __struct_group() is used
directly.

Cc: David Airlie <airlied@linux.ie>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: dri-devel@lists.freedesktop.org
Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Daniel Vetter <daniel@ffwll.ch>
Link: https://lore.kernel.org/lkml/YQKa76A6XuFqgM03@phenom.ffwll.local
---
 drivers/gpu/drm/mga/mga_ioc32.c | 27 ++++++++++++++-------------
 include/uapi/drm/mga_drm.h      | 22 ++++++++++++----------
 2 files changed, 26 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/mga/mga_ioc32.c b/drivers/gpu/drm/mga/mga_ioc32.c
index 4fd4de16cd32..894472921c30 100644
--- a/drivers/gpu/drm/mga/mga_ioc32.c
+++ b/drivers/gpu/drm/mga/mga_ioc32.c
@@ -38,16 +38,18 @@
 typedef struct drm32_mga_init {
 	int func;
 	u32 sarea_priv_offset;
-	int chipset;
-	int sgram;
-	unsigned int maccess;
-	unsigned int fb_cpp;
-	unsigned int front_offset, front_pitch;
-	unsigned int back_offset, back_pitch;
-	unsigned int depth_cpp;
-	unsigned int depth_offset, depth_pitch;
-	unsigned int texture_offset[MGA_NR_TEX_HEAPS];
-	unsigned int texture_size[MGA_NR_TEX_HEAPS];
+	struct_group(always32bit,
+		int chipset;
+		int sgram;
+		unsigned int maccess;
+		unsigned int fb_cpp;
+		unsigned int front_offset, front_pitch;
+		unsigned int back_offset, back_pitch;
+		unsigned int depth_cpp;
+		unsigned int depth_offset, depth_pitch;
+		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
+		unsigned int texture_size[MGA_NR_TEX_HEAPS];
+	);
 	u32 fb_offset;
 	u32 mmio_offset;
 	u32 status_offset;
@@ -67,9 +69,8 @@ static int compat_mga_init(struct file *file, unsigned int cmd,
 
 	init.func = init32.func;
 	init.sarea_priv_offset = init32.sarea_priv_offset;
-	memcpy(&init.chipset, &init32.chipset,
-		offsetof(drm_mga_init_t, fb_offset) -
-		offsetof(drm_mga_init_t, chipset));
+	memcpy(&init.always32bit, &init32.always32bit,
+	       sizeof(init32.always32bit));
 	init.fb_offset = init32.fb_offset;
 	init.mmio_offset = init32.mmio_offset;
 	init.status_offset = init32.status_offset;
diff --git a/include/uapi/drm/mga_drm.h b/include/uapi/drm/mga_drm.h
index 8c4337548ab5..2978a435dff9 100644
--- a/include/uapi/drm/mga_drm.h
+++ b/include/uapi/drm/mga_drm.h
@@ -279,20 +279,22 @@ typedef struct drm_mga_init {
 
 	unsigned long sarea_priv_offset;
 
-	int chipset;
-	int sgram;
+	__struct_group(/* no tye */, always32bit, /* no attrs */,
+		int chipset;
+		int sgram;
 
-	unsigned int maccess;
+		unsigned int maccess;
 
-	unsigned int fb_cpp;
-	unsigned int front_offset, front_pitch;
-	unsigned int back_offset, back_pitch;
+		unsigned int fb_cpp;
+		unsigned int front_offset, front_pitch;
+		unsigned int back_offset, back_pitch;
 
-	unsigned int depth_cpp;
-	unsigned int depth_offset, depth_pitch;
+		unsigned int depth_cpp;
+		unsigned int depth_offset, depth_pitch;
 
-	unsigned int texture_offset[MGA_NR_TEX_HEAPS];
-	unsigned int texture_size[MGA_NR_TEX_HEAPS];
+		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
+		unsigned int texture_size[MGA_NR_TEX_HEAPS];
+	);
 
 	unsigned long fb_offset;
 	unsigned long mmio_offset;
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-21-keescook%40chromium.org.
