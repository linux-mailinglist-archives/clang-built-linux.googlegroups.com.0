Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBA4ERCEQMGQETTWGZHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 152213F3E5B
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 09:51:33 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id v11-20020a056830140b00b0051af4c9ee9fsf4704805otp.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 00:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629618691; cv=pass;
        d=google.com; s=arc-20160816;
        b=chIY+4YBK3RWy+FXlnWJeKZB8ZNhRuBM+L88OtUAKfTcaW6r/0bnX2fK6oPfWouRx8
         ELkXBfLb+YtPD6kp3PvxP7IXnvT7aQCnpEkkqNlIgiRVNBjGH/dcRmlwd0OH5VhWx5+3
         b6umQl4NvE7/4FQCgwcJ/djhFbT4gTA472sl+SRY1sq0jsyiKp0v22JlM7Sv6pG5b5KS
         7H1XEg3eRupk+k94lRsNP+0u9C0conoCRQ35bvXc4BlcjiEN9GsyxDUzG5rKefqi1cv1
         cQNF5JBBXeU/EKN8IG7lfQrnnhkaPRLrWW09wrOAsT6KZmt096E24tR+aKbg4Nc2IeZN
         rwcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=5ZVaO+ZQrDst8JHwQj3Q3Id7cw48aXtUiWfVoNZuP9A=;
        b=wpv0RJ6ndweM+zmhdCOxpGcLuEurR02f84QBx2dLWRn/dO9gcPiSKQvu0s3aRKN4oO
         aCTbXY7zVVusLsRH+J6JEBuSxN1GFoIIwP+2j+14Ehfq36C61omhlV0r8q3G1fJqtt1j
         ngkofrjGJNThv74I/ehK2xRPZOY66I/3usp49wloI75/+Xpb4urh/LB/u36JDO2aKlBm
         VBHsTnAXWZvzQfPz/xEKanoQXr4C740JRaUpqE/xSblTXVuDqb0Iv/4RqSGIOBo0O4lg
         q1HTER/79ZokKagBl+1+mGvSHodHqXHSSYARx5P93wQtzrMweANJ9cWGdgiAnCiAtATx
         SmqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lmEkDNTP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ZVaO+ZQrDst8JHwQj3Q3Id7cw48aXtUiWfVoNZuP9A=;
        b=qWdav39j00GnZHlai8CLC9ikDY/CZ2VxQQ5OnEeLinv99bz46yp5D7OxeJm+D/8Tyb
         yOIwGBA/l/6X+ZwUqOxO1VGGPz0RiTNEsX1uUYQeKGAVFK9RYUvimNR2nVgmKk4Ktz8D
         OMcp2NXhTPbvspGQxigGT+09FzSzEDduaW1QhW62FwwUaz/og726X6yp57EewmEB42LM
         uGxu+9v6lLWX+8H4N7QHvzY2nam2tzw2ZK8SS/2Hx2oVc1scwrSlh5NSuhneAPwL9dol
         c/lhVqV15R1Ngjx6hPepJnh3jrCeciYv1wmdkpVIGn2dcSy5UahSJQKEbHzk+K7+OfXv
         K8Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5ZVaO+ZQrDst8JHwQj3Q3Id7cw48aXtUiWfVoNZuP9A=;
        b=g7wOPlOT1Pl7FRyl+tBfceUoVxwMA3gy6NXJRdc0/d5pnY8xSStbDDz1KEW/UUlTVP
         O+Kg0MnUr7RXi8DzHQVztjkSwJpWp7KlFgoZhjy4ga2gdcnZ2o0Zttyc4E7cQpAOPXTZ
         4oNhNodyt3h+y+VKaNYIgxdWba91dNwBtP9C9rf9D5mfFDZkbPPPXeXxWGXXpVUGbhnp
         hF5byagwVrt8/n4Rv3EGQXykTDGxpVGx3yt9tGXmmTHl94DSjDtyRYAtHUGYucGLVK2K
         cOucsmSE2+pGRt3P6hV4E2Ah5KhnvIzUkDBfjh11ojniVIp8u0i+pSSrd2DyLj2CCaDK
         zs5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309GM8KkIzu3MZrBSdXxpy7YpSyOGLS4oQf5ZaJj5HJP72ha2tP
	sYjNpdsLd3Bsi+o2gDWWAH0=
X-Google-Smtp-Source: ABdhPJwotaBd9IClLl4N5s6uYLL0MnC9Mm0/94f+7sttV6kd93nMcaCkb5tSf+WomfToUkPzk94r6A==
X-Received: by 2002:a05:6808:b30:: with SMTP id t16mr8357077oij.173.1629618691678;
        Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66c4:: with SMTP id t4ls3594502otm.5.gmail; Sun, 22 Aug
 2021 00:51:31 -0700 (PDT)
X-Received: by 2002:a9d:7a8a:: with SMTP id l10mr23686087otn.256.1629618691264;
        Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629618691; cv=none;
        d=google.com; s=arc-20160816;
        b=PTDhMihf0gBl0/E96giUNeWojZVElS+CuDc6Qqk2pMdzSQsTuLLmuV/HnAdf8yYnN9
         QqTxTg1qK1hqblqRct9ngPPwzhwbio7GJh8/RATfp5UB4VJsbGMAkmCXTlfCmq8L+N0P
         XdVT9GliblwkZFdrv5xE6RXXs8XdxF3r8YkNWROjotFJxCr0tjmBv4dT9YkUR/bDFdgT
         0ZvwDLdTRZMiDyUNvJjz1iea7rfxMAS4OltrshTk4h14M8G63qtLWZHJT0runsKHpUMb
         5x/3zQkfrNdfCaRsbKKDGmdRoKqO8hXp1mjIAEVuBHy3ZpvRbBuxZRPZ1WKURVVccl7s
         kfkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fzauuC8ic6euFu2nevB4hJA961dHUsCKyfH8JaAaPYw=;
        b=tusY3wz8jSwn4fDOIQPk2H5ekwD/wK2OrKa16fhNeJmt8zqcO4+MnE823nMD/nrEYb
         Sc2XEHugYBn3b7tDrMEZAtfEfVxiwmzyxoFJQeqmY99D5Nq+gbcTKpZPofg9sM25Jsey
         SL7a9NEXzqMCrXGceK++TTI88WSgw2ORZvWq+NLqAxQ/uYufKAneG3YJlxq04soRlvwv
         3NSIiMHS2r1v8OyDL0acKVSvidSjncMezmthvtA9K6gh002eDcsYPQEUU+8Z9ktlatmI
         J29xF2Tj3wovtQY2ASzyH/omC3cOWzkEB3WeB0N7AtcYsYtsrcLggcBwSsgRZI1kQVa+
         Y6zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lmEkDNTP;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id j26si978284ooj.0.2021.08.22.00.51.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id w6so8363344plg.9
        for <clang-built-linux@googlegroups.com>; Sun, 22 Aug 2021 00:51:31 -0700 (PDT)
X-Received: by 2002:a17:90a:de04:: with SMTP id m4mr13568742pjv.187.1629618690696;
        Sun, 22 Aug 2021 00:51:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u10sm12058480pfg.168.2021.08.22.00.51.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 00:51:29 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Daniel Micay <danielmicay@gmail.com>,
	Francis Laniel <laniel_francis@privacyrequired.com>,
	Bart Van Assche <bvanassche@acm.org>,
	David Gow <davidgow@google.com>,
	linux-mm@kvack.org,
	clang-built-linux@googlegroups.com,
	linux-hardening@vger.kernel.org
Subject: [PATCH for-next 08/25] drm/mga/mga_ioc32: Use struct_group() for memcpy() region
Date: Sun, 22 Aug 2021 00:51:05 -0700
Message-Id: <20210822075122.864511-9-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210822075122.864511-1-keescook@chromium.org>
References: <20210822075122.864511-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3914; h=from:subject; bh=uOOrsewr644NJeAzCYidrEKEGv2vRVphg8eu6V3X6z0=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhIgH2xzLlFJ+4mCLkGozhJQQt38rzB4tGqclcqzBH ivLGoy6JAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYSIB9gAKCRCJcvTf3G3AJrhbD/ 4pWHRzwDefaEhV+PtbfMW2oQ842w5wgZtULGOftua+s5ddfdO7zhR49LWA+pkGRcCPN1X8PZdqCQoC o32unro6Z2bE/zYqsOWBK3jbO9m+ag7kRx77bouZBKVr/n1vP1DUo0NqDHENxyFa6Iueut7BbVorms u9Jl+/0s8YfVcLNh1dftEErGbN+jNgO8w3Y8b7PJdQdpnE0MSLlk3iLCh7665wNIRPFtRv0qGUQVdG Foj8o43KymbeBHJMcXi+7m67DyS3UyyUIrBJ9hOZaaaS5dTS3JlYJ1vb21Zuv3TL2p/MB+IglbJ0g0 fclaVrLvClh3TIs9oBKHlCXdynkzx9fXYFQVe1te2tY/uwcCb89HW70CW7NqXeDNEuAwb7fltPusYm y/U0s45WLu03V2qRWSm3CWW8Ikh4zwQYME29KsTumgj3q3WRQPutyAPG7NoS7v61mer+w0GLNOynS8 QiafvGY3P7ySMBQOhXtgw5i1reEED28wNoK70Fmozlpc0J8jTcur78j/ggGLda1Yz2oSvaI/qNGeLz VfB6ccEIrzqEksr7BpVpEdGnQzKBlM5qnew3YQSRf21S0yupCAtH8L5I2YWKnlJ/DugUTLFAUL6yhM tLtA4h+B8xHbrX9z9dkNkYiNzS1OJIrir7f4tW/bR0wyuEBNDaLg0BYBGGKg==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lmEkDNTP;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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
index 8c4337548ab5..bb31567e66c0 100644
--- a/include/uapi/drm/mga_drm.h
+++ b/include/uapi/drm/mga_drm.h
@@ -279,20 +279,22 @@ typedef struct drm_mga_init {
 
 	unsigned long sarea_priv_offset;
 
-	int chipset;
-	int sgram;
+	__struct_group(/* no tag */, always32bit, /* no attrs */,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210822075122.864511-9-keescook%40chromium.org.
