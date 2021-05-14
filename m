Return-Path: <clang-built-linux+bncBAABBHUW7GCAMGQE5QFH5GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC8D3806B7
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 12:04:16 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id h17-20020a0cb4d10000b02901c51890529dsf23439602qvf.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 03:04:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620986655; cv=pass;
        d=google.com; s=arc-20160816;
        b=U9wn7M2k5cpZlqF3f2KQMxtXO107LOHzh95aZ7OCVxSkZ+uOvzRJqow53EfJmiky9k
         VLXgr6bysSBfvAhRSs6tAdCIehJ/m8C8nDCDJT7E1sdPekqhB4V1lx71Pr9zQl9wdg3c
         yReAoeZau7NHTxOvzg45GL700MZ9+LBygfZ8UfWr7StWuwNQnvIsw7jcZ8M7LZZeCuz9
         uIXBkCFRxrJOj+2T4VTuUfW96CCaVX44dbVceD4zHEzbGkHXY0dCVE1ix03HlSZlDM8h
         jluYhGzNMNP4lYSwFIzeftFcu7h5ZaCXq+V5Jz66iHLrrHU0H+0jNI29hq+VhJhzytoy
         b4sQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=V04nWbpTWajtZLTKuDNVVO7tBVtwjjioPa4RtKfeZK8=;
        b=KoaTD8TIPB4nXYIm/WozE10xZPuJ4tw0ztiW76b2dNbTIYlkAYR3w/jZg0f2ocuWYz
         Fjvw5caj7HQ7dUCDCW/4xsnfDOnBuhf53X5Awf67HkyMZx2knmt5CHYcD5nbT4EsbPeO
         sunF8f3TArPS33ep7MXe4emcP9OJslBCQuTpLalpCEM1mzvW6IXQSdVHwgiOrPrsDQgC
         LwabUiORyYrvox9hhtiSyC8+TPXbFirOdcnc0sY0crmX9PjbFOEXYbAORK8fwKoLkqKz
         gD8Q19iUvErKOJPd3oV6exMymjVLGlNRzL0HTNIUj6A1fzCJpcUSD52WIPgNyS4PFaCN
         f50A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Mrb4cX8J;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V04nWbpTWajtZLTKuDNVVO7tBVtwjjioPa4RtKfeZK8=;
        b=mKkmJoQJANTmzb/RczpVFAglyHmi6Ger6klxC5boqRfRoeIACyi3aBGD00CgY0AZD4
         ji8TAzJkRCx5e1A7cwhlII8RnNYAmkq92/xiMX7DVsiZV/ebSjWfMoAKSAO040vyEFz4
         AqvvoDkrHC1NS9uw8Vl22aAW6/RJjR1w+KpT/nZerPxMdx5lg8m88bHSSk9wpCDkW5kF
         o64yFmRttHfemNt4M9Y8T4M0ePhnx5TwLM/Swsv5cpfMua9jgriRuRN9jilz262NaQHa
         bl5DThemxjMTaY/tJV6d+Zqe/2rEdpdt44W3awxuoaNMIqtVl079WThyZrT/dQ9WGy29
         V6DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V04nWbpTWajtZLTKuDNVVO7tBVtwjjioPa4RtKfeZK8=;
        b=TnxebPol06GSAyfILFGs2PK0dbEqirz5LnjrtWkFrkLkbZc43JPI7Ip9Q0SwN/Pi/7
         LLqJoFr3tT5A2C6ZmevsEHGU38D+V/bYbdZgsxP1ZlRsXJxfIASmmvfloQAXokKOt2WA
         6HgIe2dCbL5AK5cNKgC02R9w7kv988rMFx0yxx5O9Q0lhx/df88E+6dB1ncvfOKL264g
         rP78Da0MCsvvNJ+XexqthnU2RT/2e3x34TEK5hcduD631yTRwsJujCAmZztT6jAdVKYJ
         z12+05ugBQxOLxEkoqJUbZnIjoqUzD8TiJv9xTXwcfSb3LEmF1juzLy5EchzLMT3fIoE
         zVzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KRyPP7pCICBZAPHZ18x+rOeOtTwImySAIHcF2dph9lPdQ3tQb
	h8ttzQTRGWboZPmK9bKG5ZM=
X-Google-Smtp-Source: ABdhPJyuKC0xZD3br5pxXALG0tva5D2xyxlTpxUEX32ddKJ34voalNLo93ZtZP5zxop1wawGvU6a1Q==
X-Received: by 2002:ac8:744b:: with SMTP id h11mr43694219qtr.199.1620986654927;
        Fri, 14 May 2021 03:04:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls5635473qkc.7.gmail; Fri, 14 May
 2021 03:04:14 -0700 (PDT)
X-Received: by 2002:a05:620a:1230:: with SMTP id v16mr43826946qkj.14.1620986654536;
        Fri, 14 May 2021 03:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620986654; cv=none;
        d=google.com; s=arc-20160816;
        b=RPvtPzNJaA4cqo7G0qyE6WYHst0tE8FcULb9v7y+ND0coGig3RqwTqSUL+53YLm7M6
         EtdTA9H+6XmgKC7I93QpOJ3b1CaMPdGWB+zXZfvXyV3DZ6WlMTwjHmDhlfuYKZecA2sx
         d23+cEOiIRRoehv25ALpIu9tYY5y7fI4ML30XMhMq1V+AcgtkBOobevrGR9qWp9MoITk
         VthugaYXnvaVJi8SgdOa7car2v5m2gv9CxPRLibDtQxxaApUO401z3g9XEYOVB1JlbGU
         7sZm+U/gZ8zLvd0IicVBpOw5PAHLWnaQNPBv2WUVOA2KdFa6pCnF3MU33AB4cGHcPq/w
         5AAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=KQ1g7Hjq/MuXuVbJNuf93hkuWB+PVm9hgi+G3spR9V8=;
        b=r4DIo2Wy8Sc9OLOQqp8InBS2+vShad8vFLBUb7A3ioXMEYskZGCuPw/6lD58pDlz5n
         fr81sMafjUPiuWcpI54CHFmmDD8lQ6/7SwowHoLRApdwHbqgJrMONBB+EHdg9JXnVtB7
         69d9UCuzbVHd9LBEJAIEIvMflvK56LfN9wYMBcBp8iFcTCP3Uhzz6yXoPjicFgwTH7sP
         E6bIM5BXasqix8dmHz0Mf0D8D8Ws07MPGAlcbf3pw8YO7diuzQ4hZhtCuVmeXQ7/8MDK
         IGoOpeF+xiy4DkylqW9TQ/Pgv5m4Ck7QwDBgjWwClYWNAC+JoA6PQwz1mfs6mF/fhkF6
         f5Fw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Mrb4cX8J;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si567784qke.0.2021.05.14.03.04.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 May 2021 03:04:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8FCA6613BC;
	Fri, 14 May 2021 10:04:11 +0000 (UTC)
From: Arnd Bergmann <arnd@kernel.org>
To: linux-arch@vger.kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Vineet Gupta <vgupta@synopsys.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH v2 06/13] asm-generic: unaligned: remove byteshift helpers
Date: Fri, 14 May 2021 12:00:54 +0200
Message-Id: <20210514100106.3404011-7-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210514100106.3404011-1-arnd@kernel.org>
References: <20210514100106.3404011-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Mrb4cX8J;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

From: Arnd Bergmann <arnd@arndb.de>

In theory, compilers should be able to work this out themselves so we
can use a simpler version based on the swab() helpers.

I have verified that this works on all supported compiler versions
(gcc-4.9 and up, clang-10 and up). Looking at the object code produced by
gcc-11, I found that the impact is mostly a change in inlining decisions
that lead to slightly larger code.

In other cases, this version produces explicit byte swaps in place of
separate byte access, or comparing against pre-swapped constants.

While the source code is clearly simpler, I have not seen an indication
of the new version actually producing better code on Arm, so maybe
we want to skip this after all. From what I can tell, gcc recognizes
the byteswap pattern in the byteshift.h header and can turn it into
explicit instructions, but it does not turn a __builtin_bswap32() back
into individual bytes when that would result in better output, e.g.
when storing a byte-reversed constant.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/include/asm/unaligned.h       |  2 -
 include/asm-generic/unaligned.h        |  2 -
 include/linux/unaligned/be_byteshift.h | 71 --------------------------
 include/linux/unaligned/be_struct.h    | 30 +++++++++++
 include/linux/unaligned/le_byteshift.h | 71 --------------------------
 include/linux/unaligned/le_struct.h    | 30 +++++++++++
 6 files changed, 60 insertions(+), 146 deletions(-)
 delete mode 100644 include/linux/unaligned/be_byteshift.h
 delete mode 100644 include/linux/unaligned/le_byteshift.h

diff --git a/arch/arm/include/asm/unaligned.h b/arch/arm/include/asm/unaligned.h
index ab905ffcf193..3c5248fb4cdc 100644
--- a/arch/arm/include/asm/unaligned.h
+++ b/arch/arm/include/asm/unaligned.h
@@ -10,13 +10,11 @@
 
 #if defined(__LITTLE_ENDIAN)
 # include <linux/unaligned/le_struct.h>
-# include <linux/unaligned/be_byteshift.h>
 # include <linux/unaligned/generic.h>
 # define get_unaligned	__get_unaligned_le
 # define put_unaligned	__put_unaligned_le
 #elif defined(__BIG_ENDIAN)
 # include <linux/unaligned/be_struct.h>
-# include <linux/unaligned/le_byteshift.h>
 # include <linux/unaligned/generic.h>
 # define get_unaligned	__get_unaligned_be
 # define put_unaligned	__put_unaligned_be
diff --git a/include/asm-generic/unaligned.h b/include/asm-generic/unaligned.h
index 374c940e9be1..d79df721ae60 100644
--- a/include/asm-generic/unaligned.h
+++ b/include/asm-generic/unaligned.h
@@ -16,7 +16,6 @@
 #if defined(__LITTLE_ENDIAN)
 # ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
 #  include <linux/unaligned/le_struct.h>
-#  include <linux/unaligned/be_byteshift.h>
 # endif
 # include <linux/unaligned/generic.h>
 # define get_unaligned	__get_unaligned_le
@@ -24,7 +23,6 @@
 #elif defined(__BIG_ENDIAN)
 # ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
 #  include <linux/unaligned/be_struct.h>
-#  include <linux/unaligned/le_byteshift.h>
 # endif
 # include <linux/unaligned/generic.h>
 # define get_unaligned	__get_unaligned_be
diff --git a/include/linux/unaligned/be_byteshift.h b/include/linux/unaligned/be_byteshift.h
deleted file mode 100644
index c43ff5918c8a..000000000000
--- a/include/linux/unaligned/be_byteshift.h
+++ /dev/null
@@ -1,71 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _LINUX_UNALIGNED_BE_BYTESHIFT_H
-#define _LINUX_UNALIGNED_BE_BYTESHIFT_H
-
-#include <linux/types.h>
-
-static inline u16 __get_unaligned_be16(const u8 *p)
-{
-	return p[0] << 8 | p[1];
-}
-
-static inline u32 __get_unaligned_be32(const u8 *p)
-{
-	return p[0] << 24 | p[1] << 16 | p[2] << 8 | p[3];
-}
-
-static inline u64 __get_unaligned_be64(const u8 *p)
-{
-	return (u64)__get_unaligned_be32(p) << 32 |
-	       __get_unaligned_be32(p + 4);
-}
-
-static inline void __put_unaligned_be16(u16 val, u8 *p)
-{
-	*p++ = val >> 8;
-	*p++ = val;
-}
-
-static inline void __put_unaligned_be32(u32 val, u8 *p)
-{
-	__put_unaligned_be16(val >> 16, p);
-	__put_unaligned_be16(val, p + 2);
-}
-
-static inline void __put_unaligned_be64(u64 val, u8 *p)
-{
-	__put_unaligned_be32(val >> 32, p);
-	__put_unaligned_be32(val, p + 4);
-}
-
-static inline u16 get_unaligned_be16(const void *p)
-{
-	return __get_unaligned_be16(p);
-}
-
-static inline u32 get_unaligned_be32(const void *p)
-{
-	return __get_unaligned_be32(p);
-}
-
-static inline u64 get_unaligned_be64(const void *p)
-{
-	return __get_unaligned_be64(p);
-}
-
-static inline void put_unaligned_be16(u16 val, void *p)
-{
-	__put_unaligned_be16(val, p);
-}
-
-static inline void put_unaligned_be32(u32 val, void *p)
-{
-	__put_unaligned_be32(val, p);
-}
-
-static inline void put_unaligned_be64(u64 val, void *p)
-{
-	__put_unaligned_be64(val, p);
-}
-
-#endif /* _LINUX_UNALIGNED_BE_BYTESHIFT_H */
diff --git a/include/linux/unaligned/be_struct.h b/include/linux/unaligned/be_struct.h
index 15ea503a13fc..76d9fe297c33 100644
--- a/include/linux/unaligned/be_struct.h
+++ b/include/linux/unaligned/be_struct.h
@@ -34,4 +34,34 @@ static inline void put_unaligned_be64(u64 val, void *p)
 	__put_unaligned_cpu64(val, p);
 }
 
+static inline u16 get_unaligned_le16(const void *p)
+{
+	return swab16(__get_unaligned_cpu16((const u8 *)p));
+}
+
+static inline u32 get_unaligned_le32(const void *p)
+{
+	return swab32(__get_unaligned_cpu32((const u8 *)p));
+}
+
+static inline u64 get_unaligned_le64(const void *p)
+{
+	return swab64(__get_unaligned_cpu64((const u8 *)p));
+}
+
+static inline void put_unaligned_le16(u16 val, void *p)
+{
+	__put_unaligned_cpu16(swab16(val), p);
+}
+
+static inline void put_unaligned_le32(u32 val, void *p)
+{
+	__put_unaligned_cpu32(swab32(val), p);
+}
+
+static inline void put_unaligned_le64(u64 val, void *p)
+{
+	__put_unaligned_cpu64(swab64(val), p);
+}
+
 #endif /* _LINUX_UNALIGNED_BE_STRUCT_H */
diff --git a/include/linux/unaligned/le_byteshift.h b/include/linux/unaligned/le_byteshift.h
deleted file mode 100644
index 2248dcb0df76..000000000000
--- a/include/linux/unaligned/le_byteshift.h
+++ /dev/null
@@ -1,71 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _LINUX_UNALIGNED_LE_BYTESHIFT_H
-#define _LINUX_UNALIGNED_LE_BYTESHIFT_H
-
-#include <linux/types.h>
-
-static inline u16 __get_unaligned_le16(const u8 *p)
-{
-	return p[0] | p[1] << 8;
-}
-
-static inline u32 __get_unaligned_le32(const u8 *p)
-{
-	return p[0] | p[1] << 8 | p[2] << 16 | p[3] << 24;
-}
-
-static inline u64 __get_unaligned_le64(const u8 *p)
-{
-	return (u64)__get_unaligned_le32(p + 4) << 32 |
-	       __get_unaligned_le32(p);
-}
-
-static inline void __put_unaligned_le16(u16 val, u8 *p)
-{
-	*p++ = val;
-	*p++ = val >> 8;
-}
-
-static inline void __put_unaligned_le32(u32 val, u8 *p)
-{
-	__put_unaligned_le16(val >> 16, p + 2);
-	__put_unaligned_le16(val, p);
-}
-
-static inline void __put_unaligned_le64(u64 val, u8 *p)
-{
-	__put_unaligned_le32(val >> 32, p + 4);
-	__put_unaligned_le32(val, p);
-}
-
-static inline u16 get_unaligned_le16(const void *p)
-{
-	return __get_unaligned_le16(p);
-}
-
-static inline u32 get_unaligned_le32(const void *p)
-{
-	return __get_unaligned_le32(p);
-}
-
-static inline u64 get_unaligned_le64(const void *p)
-{
-	return __get_unaligned_le64(p);
-}
-
-static inline void put_unaligned_le16(u16 val, void *p)
-{
-	__put_unaligned_le16(val, p);
-}
-
-static inline void put_unaligned_le32(u32 val, void *p)
-{
-	__put_unaligned_le32(val, p);
-}
-
-static inline void put_unaligned_le64(u64 val, void *p)
-{
-	__put_unaligned_le64(val, p);
-}
-
-#endif /* _LINUX_UNALIGNED_LE_BYTESHIFT_H */
diff --git a/include/linux/unaligned/le_struct.h b/include/linux/unaligned/le_struct.h
index 9977987883a6..22f90a4afaa5 100644
--- a/include/linux/unaligned/le_struct.h
+++ b/include/linux/unaligned/le_struct.h
@@ -34,4 +34,34 @@ static inline void put_unaligned_le64(u64 val, void *p)
 	__put_unaligned_cpu64(val, p);
 }
 
+static inline u16 get_unaligned_be16(const void *p)
+{
+	return swab16(__get_unaligned_cpu16((const u8 *)p));
+}
+
+static inline u32 get_unaligned_be32(const void *p)
+{
+	return swab32(__get_unaligned_cpu32((const u8 *)p));
+}
+
+static inline u64 get_unaligned_be64(const void *p)
+{
+	return swab64(__get_unaligned_cpu64((const u8 *)p));
+}
+
+static inline void put_unaligned_be16(u16 val, void *p)
+{
+	__put_unaligned_cpu16(swab16(val), p);
+}
+
+static inline void put_unaligned_be32(u32 val, void *p)
+{
+	__put_unaligned_cpu32(swab32(val), p);
+}
+
+static inline void put_unaligned_be64(u64 val, void *p)
+{
+	__put_unaligned_cpu64(swab64(val), p);
+}
+
 #endif /* _LINUX_UNALIGNED_LE_STRUCT_H */
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210514100106.3404011-7-arnd%40kernel.org.
