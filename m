Return-Path: <clang-built-linux+bncBDSIRFEA54GRB3VXTOAAMGQEDDQ42GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B608D2FB649
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 14:17:34 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id k4sf5030672ljb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 05:17:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611062254; cv=pass;
        d=google.com; s=arc-20160816;
        b=VHs8Bqwbh3dYluTUHag/xRiv2SCUHwhQHGOQSSnILoPiOciIuW2BPV85hJ5DoVg9Xf
         LCu9Sl+0OTWsS74DTam3+mlCXONxOA/jpo9tOBn9VwIrbU155jrVfvvsP+7gVVkS4KTr
         JbXngZZOsQrmUKVds8/wxQXsuzZhSWRkotGQJs+kXSmj/FkTqAEfvUjDmLZ3svS6kIXv
         IX4aw4YG4R0zRnkJQoHZtSgc5PcE7kblNPsjH+HbohYZ/2B+F4hs9dUD4JND+UjO7nCq
         90uA4gIXLMWfcWGvjlFmd2dgzSFSEPHVGfyGCpDea0Zz9a5cWZLICyeDmBMO+EKd6saA
         Zkcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=bb/v1OZ0k4W93ik60Tey211GxnoB04fVWXoV2WAaD4U=;
        b=0ivwbvIrt6m+KWq3/uiQK/8a8s/2GiebbneK/hdG2ER5xn055VHRJ01HKpAwYmW+OX
         D08Tt4caPddAZBElFhtU8+7qui3wl5Fxtzod2wj38H6UTfm6x9xgLyNaRZkZ776z28QO
         Nfz4LEqBGr4c13oFcVB+GqOwtSnPfRqSNpxOJFKqlQZpJnbfUAavKsSiYTCD3Q4Vfg+t
         Js/v0KTem8vNbRkIAzl7YbKTOE8WLf2mPe33ugseoFusJt4paNTXYep0/Y7myNR40jj3
         Wrfw5+2eXPZHsEIkY9/LweCGtBpZe5P+RA78LMPEuHam+7DJ/RvSdM0wwFgy+jzwh2D1
         JBog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bb/v1OZ0k4W93ik60Tey211GxnoB04fVWXoV2WAaD4U=;
        b=jTZG/59+ejirSHAEuyvAzE2dW+1S29Rq2Z+P7nWrS110JL0JJxjzmnOX8dE+WHJMZi
         ckEcJsqbBQv8hb1VmX+fXdw0ASoY/FcXNP1WLytFIRntNUwhMpfe9ZfXhlgfeNBvt0l2
         s8TGtYWOFiYr6wls4K0nXWi6YbJ8Vd2xgWhtFnO3eJGsDI34/JYXXOR/sp5LhecyzEXA
         dm0Y++LjKEF4FYD4BcYTpiTdG6lfXx2n9l17iDxFMCIrGxHNlbReEuNQDmLusNhXsDvd
         vDHaLGO+5RWkn4G+cRQjLAIAyJRrw6dQFVbBLL+urgY3MJW3ETtqX3zl5DnfzWsarlQs
         T0Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bb/v1OZ0k4W93ik60Tey211GxnoB04fVWXoV2WAaD4U=;
        b=m9mVA5Hb1fQnA7I1LfXDysjLFrGqKdXlLfxXBgz6ojpmICI1vpArU6LgqRwe5Lw3Hh
         yHUyr31j58nmTWHM1mibOM2SPgc5EhWKy9ngejj8UYnF7Oxrm8K2lVrKSGSW8tGaIoTQ
         qv7eCixZhCkY3NH3eXaGHJMVHCMKqHucu3M5vGSjDu/IlKMI90xxuDhgE7awm/ht0n4/
         MdywTWfk/ny5Z7cHWTFbRXOkqnyrlNP68UI5KTFszB9gwSJtAsMoTYtb5EPL5RUcFCys
         lyIE9D8SSDtvDA5tS+pBvoflU+xhVYioGHD3FI314z5ZWmcup5pAcEHAtqA80OyvS8FX
         TrvA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5332u5bLsNmKaq1oFZE2FB4BeksBuAmSFevcILFXnVJbSZNdLOLQ
	RF8Z/2+UbBUZw7G2fieQRiE=
X-Google-Smtp-Source: ABdhPJxp6cemW1BiD/G7kPCAhdZ0PnxdvmK0aPxvkDmUtYHZzNWTNtwgPJ630WqXu+U4APztLoM1gg==
X-Received: by 2002:a19:5f45:: with SMTP id a5mr515958lfj.415.1611062254259;
        Tue, 19 Jan 2021 05:17:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:7806:: with SMTP id t6ls3331119ljc.8.gmail; Tue, 19 Jan
 2021 05:17:33 -0800 (PST)
X-Received: by 2002:a05:651c:202:: with SMTP id y2mr1926044ljn.162.1611062253208;
        Tue, 19 Jan 2021 05:17:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611062253; cv=none;
        d=google.com; s=arc-20160816;
        b=Xzd6YCkFQrrAPgbbRwDE62gUJ3YZdI3LnMSUrj7uTpAFWNMuFcL6tJiC03oa/0sWml
         huNQI1si5g2aRyQznzpn3l1rB44Bv8cwRoowdy6Ehe60PQzYX93vfHI37xsksHczzOTD
         4lYxslrOiUe4ITvwgf1epG8LXyQLp137J983g+bYJlfJrdMCQF/5uo3zMln8s+eDX3Xn
         cop0DQawmy9tyJpypDTIAs6TL3Ij6m3qNNnzeGTIh/yGMvr8aIhby+qVB/JN2nOZ47yN
         n5HZGVGkOGugCOnlLVuiFTX+6v70udvGo1aA9jvSnUrwvFqFm9QRVU9oIxJbfjGub3FC
         MaRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hlS3Sknu8hUQPnz1MRlov1O+XRd2hcGfShWoQFazYbg=;
        b=Gy8jeuH/yP7fg/hBfdGiiQqgXFPfW/nnbkKt62u/MoojI+3lwe15al+DvL9ac/75xq
         LfEQF08eukehE14JD9bWRKtyu5kiMd5UGBoYO22XkniMefSZXL4M52S8PkUborz3GsbE
         d1gWd3YabsfGXYQk7e3f36nvai64fGH0+TeRlz0/21WhacoQw2cyyEBSt/0YaS7Gka86
         FE8mE6R3BXjOy5HnXkFOLYCRnxKKoYpoHP7R5QpNi/MeGNLsefDS0uEOrvU4+aMCw3GL
         qdLmKQBlfe/ev7WYJuA5OwKees4yzJ7Kt7I6XlcYy2L3HSAiW0KdWfmmZR4q3KiY/aSC
         2szg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id t65si784676lff.3.2021.01.19.05.17.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Jan 2021 05:17:33 -0800 (PST)
Received-SPF: pass (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aratiu)
	with ESMTPSA id D0B0C1F451BA
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: linux-arm-kernel@lists.infradead.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel@collabora.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
Date: Tue, 19 Jan 2021 15:17:23 +0200
Message-Id: <20210119131724.308884-2-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210119131724.308884-1-adrian.ratiu@collabora.com>
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-Original-Sender: adrian.ratiu@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of adrian.ratiu@collabora.com designates 46.235.227.227
 as permitted sender) smtp.mailfrom=adrian.ratiu@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

From: Nathan Chancellor <natechancellor@gmail.com>

Drop warning because kernel now requires GCC >= v4.9 after
commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
and clarify that -ftree-vectorize now always needs enabling
for GCC by directly testing the presence of CONFIG_CC_IS_GCC.

Another reason to remove the warning is that Clang exposes
itself as GCC < 4.6 so it triggers the warning about GCC
which doesn't make much sense and misleads Clang users by
telling them to update GCC.

Because Clang is now supported by the kernel print a clear
Clang-specific warning.

Link: https://github.com/ClangBuiltLinux/linux/issues/496
Link: https://github.com/ClangBuiltLinux/linux/issues/503
Reported-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 arch/arm/lib/xor-neon.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
index b99dd8e1c93f..f9f3601cc2d1 100644
--- a/arch/arm/lib/xor-neon.c
+++ b/arch/arm/lib/xor-neon.c
@@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
 #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
 #endif
 
+/*
+ * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
+ * compiler does not produce vectorized code due to its cost model.
+ * See: https://github.com/ClangBuiltLinux/linux/issues/503
+ */
+#ifdef CONFIG_CC_IS_CLANG
+#warning Clang does not vectorize code in this file.
+#endif
+
 /*
  * Pull in the reference implementations while instructing GCC (through
  * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
  * NEON instructions.
  */
-#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
+#ifdef CONFIG_CC_IS_GCC
 #pragma GCC optimize "tree-vectorize"
-#else
-/*
- * While older versions of GCC do not generate incorrect code, they fail to
- * recognize the parallel nature of these functions, and emit plain ARM code,
- * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
- */
-#warning This code requires at least version 4.6 of GCC
 #endif
 
 #pragma GCC diagnostic ignored "-Wunused-variable"
-- 
2.30.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210119131724.308884-2-adrian.ratiu%40collabora.com.
