Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBI7HQGEAMGQECRJUXLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B713D7FBB
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:17 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id s24-20020a5d92980000b02905505ef33aedsf151641iom.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419556; cv=pass;
        d=google.com; s=arc-20160816;
        b=XzPE5QRt/ypE6EckCuUN8ZcIlLhm/BH5aHvMD7N8JhVKk2oGKt/regymtY+S6cQK7e
         40/ahsMMeFOer/kfh298QTkPjwltEw5LlpQlxyQjhT0asb6iYkWmyl51df87Lyuo+GgT
         5SVM/iNkSl9vmDqxWjxdHwn7G0UrmqakpFP14n8tnhh+4A99J2wIgwZCu/X7L4pXfESp
         fRDGvIwNhJ8gwDum4dNY5E9NyST9yk0P4iZ5yGZV/x3XvjiAKqpzX6X+iu4wbh92hJei
         SE2ZJr584a7g/W78JITos+xDgheDcoVPgduysdU9ONkbmrWM79lZxD4CQ7t9VGMF1osa
         2hLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Oy9bV0RXYxglqFaiQMVlZf9zQ8bF1lzLuLffMZG/X4I=;
        b=VihVryyzBhDxRPLa564OBZHVq2soLRvYgtCpATYzuCveXDxYS7Yitfd+Szc1KZcfh6
         G8unDDpDYM1VvZgcXc2pNdjw0I83xRAjBI+boc9hwEPWr/MdhLlHqyKaPDMBTQC0o77q
         m+YSuciYg3lJna4zh8E4KFVHosneR3mqJtVc8qg0mjsQSukHDArxU/I27VctyFP6pR3i
         gEVYbeQsC25DVgHbjeG/O7sXhrgRCqhFwOz7sn2rR5uL7XUZAImjXDp+7cCA2n1A2Tp6
         xn1oRrxFumsWmJtlTimXZjxRHzSfBhK0tChlvCxBxwaPsVBOkNi01a1E2/GNZH1X5d5N
         kc8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=F8BhKjlE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oy9bV0RXYxglqFaiQMVlZf9zQ8bF1lzLuLffMZG/X4I=;
        b=ar+nmHikCIRiDOTvfeD9DB9EfjU9IO74iC1mQEdGKGQdwTinia9eaS9CTQ6cWjrMKt
         FNl0USJg/5HMVGfPlABSJvExesOgWJDdPTAsHn4lwF3wER6+edjTJchfyYFas1uvbs/k
         WyTjDj3CBe68tHlUF2AXTxS7j98cF2SMkmVuNbUfnOjmXb3reHNRlBgozkGGpIoN68OD
         yo1GUhCuYtTkfhr77cIrCmH9cBvBc3ZCCtkuj6WysLACQC7NfVWO0jA/d8InuJibSe5O
         dpvaO/0RtO8VzYPPZCrhX+bnl7Hh/ItTdUEJ5ilw6mrcpNNPlLIDiR8qCAi+3KyVCyU5
         4HdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oy9bV0RXYxglqFaiQMVlZf9zQ8bF1lzLuLffMZG/X4I=;
        b=RrNiIBUHIv5OZe6Hd4bx06qmTu2tuowMImTCDTqaTFN51YKYwnkiyPJt4EpUxGfy/S
         YaFBcaUlDj7mVa0O6IiXy67q0dvmTUU6S4QlHi5UQSC0rX84IBpU4zQJ283EbTyJnAj4
         i71IW94gNgJnP5uUTx5H+QGrmLZoSjQP/mkDodMNm9Waomvdd2Jdz4rVV4zn6S2phH0f
         2DcNJW0ZeioCAlNG7hUGLOrLWYYnjJrenhMD8lxGcABq8PrHT0u4cEvustGt+VLMFFPI
         wPRu7+OxqGl0mRJenab8RSnuYjNbIwpSIBIyceNOTkMgPN1PUCcZleGbuCwrXlPhSsev
         yrrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530J+NXFo/j+159pc+CzP5dOzWaO1ok4SvlN/A1iYg1FbHbtlThc
	ivGZohsbOT+D1d+YNZqQvog=
X-Google-Smtp-Source: ABdhPJxdTx45/OwtAz6W6dit9cWORlG1+mw0gsaPkU5QGEFuOcmBd3LyArrfKwKADWoBqVQZ36xMBA==
X-Received: by 2002:a02:c8d0:: with SMTP id q16mr23188096jao.110.1627419556009;
        Tue, 27 Jul 2021 13:59:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:2c11:: with SMTP id t17ls389847ile.6.gmail; Tue, 27 Jul
 2021 13:59:14 -0700 (PDT)
X-Received: by 2002:a92:c989:: with SMTP id y9mr18230883iln.183.1627419554423;
        Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419554; cv=none;
        d=google.com; s=arc-20160816;
        b=JhJYFOoBwN1d8Xb6j8tMhZ/yVC6kErIpjYbeOab2KpIxvBTxuQWD1tH9RNU9BrrlLY
         DI6l+p6JtvqgF2Zt7Qu9eJJz9Y/gMdEaPrZpBFRjXrkTxhqFJH6o45JZKFEwF3TH//MJ
         kazgGW5kuYpd3gnHPGJBMny1Ms2tTER1p1rNJ+HdNXjeCuQ68Yl/Q2zFxkSzd8gZoPvd
         UCQCKyT/BYkI3cc7ao7w3CY+giJt4vBFlpkvV6iqUNRI1olkLEOvNvW5xsynsCniDJcQ
         Izzk70ngffxu3HAD0WZFIU/24mM8D1a6+G2T6GeC44p1RYzmHE2Y0OPR129IkF1Kgph6
         tkGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5dgtbc2dgc03WrB3zCW8xCKeemPdJxAysWeYGPrb2AU=;
        b=bl6O4HVd8BXxBIs2y9iKKokA1UBixmq1DmsdAmexd+P8sl8szAa5BCJxe4vMecEvpK
         TIlxz4BrStIHfOBS8h+4058qLMRLDMyrmyonC4EwC+rwcCUoqfrMpkI9b8ORRxI2ps4w
         fpDaaXfamCr+LO2tPdpodjY06oVIkTgh7+wKDTbjtVy4PKyyXLbmupd5rnZgJsOYCSRw
         qxEn4/YVKswxC9ZaNklJ0Ee1kDScXTDpk7zXbjaPgBfvUQWCCVtvGR/iOV/kR9tdgRnT
         uiskgDWYqkxIjYBvv1BxHP9CwBWS2d0pPm9VXkU/cRu4zWSTW9k8xz8WMPcP97DmrNZb
         7KTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=F8BhKjlE;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id q12si362317iog.2.2021.07.27.13.59.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id m10-20020a17090a34cab0290176b52c60ddso988088pjf.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
X-Received: by 2002:a17:90a:9511:: with SMTP id t17mr6099598pjo.194.1627419553892;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id j185sm977660pfb.86.2021.07.27.13.59.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:09 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 25/64] drm/mga/mga_ioc32: Use struct_group() for memcpy() region
Date: Tue, 27 Jul 2021 13:58:16 -0700
Message-Id: <20210727205855.411487-26-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4623; h=from:subject; bh=k+K5bstPCbcyrh+sSnGNbOYkreiUUA/e+oUv7j7SsRI=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOF7lb8jaGmB5ldx4AxyJ1hPHdl4meiY4XD8VCT /iMBLayJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhQAKCRCJcvTf3G3AJvoJD/ 92twoEjqLmo87BW6EPdn7+I36/Lfz4+EvdPI46UzDmOPeZZUdda/FVtlnjMfEf8Q7C65xjksxGuB11 ICT3mXYX/OI+OAHyDSDJYypVceEdn64IHFBqpq/oGwo5Yb3yImt3/puNdHix7T+reDMD9k3/10f1ea 64Pu/new1rtTnvCeLNrJVYFxo0r1FdR5tKQNjHTB90tHMLn2iIIKqbGXb20uLxtV+x7a+H7Us4Yvg3 jBkDEA9pd2OgCVOKGOgKUslD+d3uAxjiRTujQwyQFyuAcD0eO5bQmNCY2KVkY+N60I7KJX/+7VpO5f qXqg2QaavL2tumHBfYyNzwOsb6LN7zfwVX0ckRUzhnavSPV/D+qSZF3dIhW70wEeMyjzR0utNMhCoC xrhy6krEgk3kh6c5GIkeWWNBw1+HaHq84ZW7T0ZralGra2hddUdIcxJyigKD3DhXNPHoV1jCEMnjsR j27XJySoAwc8IRtRRcu1+lBrjuaYvhUsBhqRGiDppkxlrH8BYE9FWSEkYmo2/nR/nqvaO5kWIGopgr mtojfttWXR/DK1oruTB5GXelPdoUZCcw1LKaQBQtAAO+8wvNFMXwZCmCS87o/0cJrigkN+rbxsB6Fr kAar1dAvIQiU7igsE6A2DuLJrW43uIMso5wzoAuX6TFDDP3PcPS65gbtCqYg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=F8BhKjlE;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1034
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

Note that since this includes a UAPI header, struct_group() has been
explicitly redefined local to the header.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 drivers/gpu/drm/mga/mga_ioc32.c | 30 ++++++++++++++------------
 include/uapi/drm/mga_drm.h      | 37 ++++++++++++++++++++++++---------
 2 files changed, 44 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/mga/mga_ioc32.c b/drivers/gpu/drm/mga/mga_ioc32.c
index 4fd4de16cd32..fbd0329dbd4f 100644
--- a/drivers/gpu/drm/mga/mga_ioc32.c
+++ b/drivers/gpu/drm/mga/mga_ioc32.c
@@ -38,16 +38,21 @@
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
+		unsigned int front_offset;
+		unsigned int front_pitch;
+		unsigned int back_offset;
+		unsigned int back_pitch;
+		unsigned int depth_cpp;
+		unsigned int depth_offset;
+		unsigned int depth_pitch;
+		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
+		unsigned int texture_size[MGA_NR_TEX_HEAPS];
+	);
 	u32 fb_offset;
 	u32 mmio_offset;
 	u32 status_offset;
@@ -67,9 +72,8 @@ static int compat_mga_init(struct file *file, unsigned int cmd,
 
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
index 8c4337548ab5..61612e5ecab2 100644
--- a/include/uapi/drm/mga_drm.h
+++ b/include/uapi/drm/mga_drm.h
@@ -265,6 +265,16 @@ typedef struct _drm_mga_sarea {
 #define DRM_IOCTL_MGA_WAIT_FENCE    DRM_IOWR(DRM_COMMAND_BASE + DRM_MGA_WAIT_FENCE, __u32)
 #define DRM_IOCTL_MGA_DMA_BOOTSTRAP DRM_IOWR(DRM_COMMAND_BASE + DRM_MGA_DMA_BOOTSTRAP, drm_mga_dma_bootstrap_t)
 
+#define __struct_group(name, fields) \
+	union { \
+		struct { \
+			fields \
+		}; \
+		struct { \
+			fields \
+		} name; \
+	}
+
 typedef struct _drm_mga_warp_index {
 	int installed;
 	unsigned long phys_addr;
@@ -279,20 +289,25 @@ typedef struct drm_mga_init {
 
 	unsigned long sarea_priv_offset;
 
-	int chipset;
-	int sgram;
+	__struct_group(always32bit,
+		int chipset;
+		int sgram;
 
-	unsigned int maccess;
+		unsigned int maccess;
 
-	unsigned int fb_cpp;
-	unsigned int front_offset, front_pitch;
-	unsigned int back_offset, back_pitch;
+		unsigned int fb_cpp;
+		unsigned int front_offset;
+		unsigned int front_pitch;
+		unsigned int back_offset;
+		unsigned int back_pitch;
 
-	unsigned int depth_cpp;
-	unsigned int depth_offset, depth_pitch;
+		unsigned int depth_cpp;
+		unsigned int depth_offset;
+		unsigned int depth_pitch;
 
-	unsigned int texture_offset[MGA_NR_TEX_HEAPS];
-	unsigned int texture_size[MGA_NR_TEX_HEAPS];
+		unsigned int texture_offset[MGA_NR_TEX_HEAPS];
+		unsigned int texture_size[MGA_NR_TEX_HEAPS];
+	);
 
 	unsigned long fb_offset;
 	unsigned long mmio_offset;
@@ -302,6 +317,8 @@ typedef struct drm_mga_init {
 	unsigned long buffers_offset;
 } drm_mga_init_t;
 
+#undef __struct_group
+
 typedef struct drm_mga_dma_bootstrap {
 	/**
 	 * \name AGP texture region
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-26-keescook%40chromium.org.
