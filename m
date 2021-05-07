Return-Path: <clang-built-linux+bncBAABBAHW22CAMGQER5D2NZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 171F9376C2A
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 May 2021 00:11:14 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id w8-20020a6556c80000b02902072432fdabsf6236581pgs.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 07 May 2021 15:11:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620425472; cv=pass;
        d=google.com; s=arc-20160816;
        b=YDY/HZFLpE3HevVn4TR5dT9hWSRAbiGWW43FX8ADGW6cH2iCajqk6OJg8e+DM2WHKV
         TXpfte2IazVf8uubam6aMSk6nyq3xjKh+gpFsXo5vRcjvSb6Y4LHIQxnsjaXhjAsQ6Nr
         /MQCjzgMtLF3P/KvBHInMSVu76Q6ddMijoxnTN2HMPK2EiOE3NtBA0c+tOpgL0cxVACt
         wvXv1o3kish+/xeucs80CBHk3Ca55WeCzM4DGE4INuJ25m4dX8icHd0uQ5dzzP9087fm
         plHylK5r6buttZ6+odxkrl1BJiU197a0gs7xsn9GN0uFS5pCsBoi5/5HT1aHelZd5YLX
         bdjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=PxlfYo78bdE4AkVwzoWRPtaA/fcycCJHEUNJPAXbjXU=;
        b=RREOH8tbSOiZSQL/n3/hSTwvtS7llJLXrSya7fn9NL7JCaZKEZm/alhsdWFxDpYcjT
         U7jHL87kor1NOvDLDxu05xbGjOQ7+HL/zpWGRdxPmFMKtvycpfD7LLztGTcgl4IBKBmg
         ouyK7Y/fIH+3lJY0Iy6eWKOFi/quMssrhgTGUq8XnxpjSVucigV6eE2DwUaRmIBUVn48
         F/GszSnCbfq0dNIshVbUpYwCoZF3iQfXVTemSCBSRatzRcQjfzngo4/vnx+j8y9wovhx
         RuK/Al2KTPNawDEMLKVDGkP7CUjmnd8jAxsDn0J0ljv5PrrrUfnCyMDbbEQTR+vd8i9o
         JEIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GCuCt/nP";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PxlfYo78bdE4AkVwzoWRPtaA/fcycCJHEUNJPAXbjXU=;
        b=KH5tbZgKDrRP8Q+AnzzxOgvdW/1VwBURo1H5Sn+i3SRvcR3g3PVZASPuxLTh16EOwq
         vTVnr32X8uJQ8E2moY0VujRZ3vwpPCxkCLS/cpidaI9ZVrJVxE2Ns+F4KTyqTGol8KxO
         Qo50JZwtCkiS0cVvPoD3rJOluzuvGrGvzDYBDVqEnvCzEO7OEvZZ2HwoH3DwCDP8C6gQ
         v0nbVyyt6HxS4xN4++tsLeBrG95LyAFDP3F859HE9vM0/Iv9G2h14UFt59jZXVKBE81l
         dz/zX/KmVCZ1dFqoQ9muf3vj5Pq1K7x8F23X08uOAs7oiCcNrgHnCwQicZ5ICLdgk3rG
         I0vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PxlfYo78bdE4AkVwzoWRPtaA/fcycCJHEUNJPAXbjXU=;
        b=m9bgm6SQxLrkWMs0LWtxNS1A9ChL3fEUT8oeRSm8Y03k7isve8J0UcYVNaES4uWzkB
         c02MZYJm16msjxCp/bko7nIW4afhuVQaiw3kVXq2HP/B5BuFnqBzsqp1YuuSGH1EIJsP
         IXgPgi6CKMcgebXQNHgF7ac+seVKuVhdkJTnNMv1yU4gbCqmpFSMUHQOPhYTp4jp8SKD
         rvvOT+zsyxWXalT2STT32r53Vgq0emg0eQMpFarTByU73s8Pb0IC/dE6Qvz2nxHqgK9j
         I8PgOfrPH2PDcmYO/C32ja9JXsXCl40EjyiTo7nOSAaQunnCKW8ujlj6Lybb0dYebyA6
         XW4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321w71wsWVZ4keWRckl/ZSfqcasU/Tpz7TllvTfRuJc2Ez5XIxA
	IutP9gSkbhjoHjaE6oe69jc=
X-Google-Smtp-Source: ABdhPJy83RP1I04TDhXfbC+vsAtQ+PGTW2Mo6A4sLzmZDVovrH67B4+uat+YDkGBTQwDy6H9vk5Svw==
X-Received: by 2002:a63:1422:: with SMTP id u34mr12493031pgl.263.1620425472791;
        Fri, 07 May 2021 15:11:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4145:: with SMTP id x5ls3355483pgp.4.gmail; Fri, 07 May
 2021 15:11:12 -0700 (PDT)
X-Received: by 2002:a62:6d05:0:b029:250:d196:1fc8 with SMTP id i5-20020a626d050000b0290250d1961fc8mr12526162pfc.21.1620425472271;
        Fri, 07 May 2021 15:11:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620425472; cv=none;
        d=google.com; s=arc-20160816;
        b=PldB4uZW3ZftONFWGLIo+GEdII8FQ0zz6JxQ4/NUIQqpdXFPTE7YZBsrHeM5Xr7T3I
         UFdPO76zzHlfmMt8P93XQp70T6dTeFd1ZnjL1rpbqhlWuPivL9N4kUk7cgKRlRMZGdBh
         m+DJvaz2JkfC9nGcYE+lCe93uVaQJ5PkWyv+AkRbihTbHXywoMZLuSHbRdPalzNoI6i3
         It2LWY5a7J7M4NE679eIZGlsQxseD2a7Wda/T3kcFDADfbMu7HYjYpVKIuiRDxGtN+Cr
         Vk5XUQ45YjGwqzViuIhUqK0NlTR7oMpBkAJ43Qg7T7Cb/nx8ffqh5PBPKKSH8pDnAa82
         nHRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Kxusa5rCsCJKOXRp7ciV+M8X95WxpXHCfBJsC6HngbQ=;
        b=ux9jibGrycYoi1eHlCJhmC0I9QaF2QKYOedDp1m85OgqEzhbYjH9AWl5LW8L7Ujzqn
         NKmnkWRIewuOI8vwJDe+oP8EdPKxR6h/pxgLdpwnDeXsAaY8dgX8wfMlLmvp7scUi4rh
         ngnKvBrl5YB1sAfLW7pjmbAdnf5F66F2GBXfzL5B1W0FlifIMH6VONTCgFgJfGe/+EXY
         T0IU5QnOdfw091nW0EXKNdcYEfKIb5XcW0oF3Dn37zgxOcuoBoI1BS7L44TekZvF55hI
         4tr/GHuixoy09yoc60kiV1JEo54pnjTs1X8oZsGlS/EG2ADIPVifF8XMGHzo83SxsDkb
         31bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GCuCt/nP";
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z28si602139pgk.2.2021.05.07.15.11.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 15:11:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1729960BD3;
	Fri,  7 May 2021 22:11:09 +0000 (UTC)
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
Subject: [RFC 06/12] asm-generic: unaligned: remove byteshift helpers
Date: Sat,  8 May 2021 00:07:51 +0200
Message-Id: <20210507220813.365382-7-arnd@kernel.org>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210507220813.365382-1-arnd@kernel.org>
References: <20210507220813.365382-1-arnd@kernel.org>
MIME-Version: 1.0
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="GCuCt/nP";       spf=pass
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
I've included this patch in the series because Linus asked about
removing the byteshift version, but after trying it out, I'd
prefer to drop this and use the byteshift version for the
generic code as well.
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210507220813.365382-7-arnd%40kernel.org.
