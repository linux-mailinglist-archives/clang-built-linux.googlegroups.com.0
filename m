Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYWL2H6QKGQEYPKKLMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D657C2B72D9
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 01:08:03 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id d206sf107880oig.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 16:08:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605658083; cv=pass;
        d=google.com; s=arc-20160816;
        b=QxkNYPHsOkqrmDwGP3Fa3ar9/Uo8Ti2LbJ4IjOf3FEJd6U/BjW8g1T8+MpQZrmC6g9
         r37CW7rJOlNpEmrqwaJxTa9PZaslMfqRsInWm+yFAgv64uXFbnzJDRhOr9wSjvg5GD5k
         4GW2e6Ilsab3oUW2Ngx9+o1O/7nawo7vg9sZk7N96vJahhvORbT8/Fa7nGtiOzrfUj5G
         o9WWFDGkzAyIZLElcUhx3OLsQE8JZdvsvGGra6cFzv7jU7e8Gdt0QRIUhVEuoi1KG57I
         7pxB5pADopP7EnFlpQNNm8C6qO0z5IByT3Jm7cKmXAIl6+Ali5Ymns06SYEEbSO9RpsC
         6C8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=cSxi/glei0BdYjqkmYNwMb2Kilib+ZWkYJpY6YkkDcg=;
        b=rKQk9ekR2mkNDMRdXenZA2LeFchZighmZHgEbGbp9cXNJdjNp2aWH/9J9qKvugOE5O
         f4WurureEuvCcp4Yqoux55ARlJ9bSoC5xkXqcDXUV/N5CJKuRAyC2YHrwrgUoPDPnabt
         ZZzZPDeGjbpheJ0s4+IxJFLvd6bwYwNXBz1/8It/AqEpTEpGf2/V9+zfANPvKpghgM8N
         pWLwo/spKtZ2OVCZoHJNs6E+EQnhQGESAXQaaLEY9XMWuNfmaS/VDiDP4VQ7mwganqzN
         7oc3x/UhLslNJBL3YVQ11OvK208CyZ9RW40DPaAwTm6C7kqYgPICtXKyR+0j0EU273ci
         rPMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eHi14+wz;
       spf=pass (google.com: domain of 34mw0xwwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=34mW0XwwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cSxi/glei0BdYjqkmYNwMb2Kilib+ZWkYJpY6YkkDcg=;
        b=AH3b4O3NKG5FrpCQixXUxflUwDpoMATvIa4nsxn9KpRbMIA4NR2/Ph/6Al0wZsx/ma
         5NoBcRh1G54OPRKa5fRFImqYwf8xydc/5jyU+NAoPWDLxMkJgGVJKDotWwPsYMdwduqr
         cQBBVV/R/jwZ2QWuGLuymdsccrgHtnXObrfUUkw+xag6vnhZ/nhoYlPly9tfKSiG9SL0
         tlRtoEgSWvjMZzH0yASzkYCEo/xw6w2RiBjNvlyrRH3Rrt3/oogwsAO5aXXb4MPa8zHW
         lufcQJA+rEt7SG+lFj7J5S3G62Cq4rvFqAcOrLNFFcEqhjycqbr5gOdQW7bRt2/svSc1
         bdxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cSxi/glei0BdYjqkmYNwMb2Kilib+ZWkYJpY6YkkDcg=;
        b=r10jKVO6O0skFoBxW6ITvibCL6fdannM+HM5HpgnLcmMiZd0RVnZVSb89/kHViS1Nw
         x6BHvi5Wbugbm8CXhG5/+6kqBmffd9x7hbsDVGHA9ReZwkog4RfNYOBXy9rty87SIGES
         J9SY1KU/SqiuvOUGv96Ic9NWVjQ+zVzHHweS0cSHgoASQuveDs+Q/W9SSTKIJawDLITV
         quayNLIg/XR4B0F2bGLjH7P+iYtTSLkMAQLGMaQGWxQ+CcPYr3NQATVxvxzzZD9iJSb1
         AkhCaD2PG19w7OZ+nBXq5Frgt5YjMFA+XqJlpQJca56voAk1CYagVIL6wJ7Cms1fx5uS
         3X5Q==
X-Gm-Message-State: AOAM530VkogaqM4JA/NFCgHjQP+GtI2UOv/gwMhcNy4O4oNEbpCZsiGk
	OW7xNqIdNByQfW9HxAdmIPQ=
X-Google-Smtp-Source: ABdhPJymIdgKPWiChzUK2yobwbC8c0c1KwfTjZKFVMqiXWoWmjrO63a6rULBAYwHxUw0KuMDEwHPAw==
X-Received: by 2002:a9d:6f12:: with SMTP id n18mr4609196otq.24.1605658082879;
        Tue, 17 Nov 2020 16:08:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:d658:: with SMTP id y24ls1126830oos.7.gmail; Tue, 17 Nov
 2020 16:08:02 -0800 (PST)
X-Received: by 2002:a4a:e1c6:: with SMTP id n6mr4741427oot.68.1605658082489;
        Tue, 17 Nov 2020 16:08:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605658082; cv=none;
        d=google.com; s=arc-20160816;
        b=u79kTLsBerxHSyjzf9z0BeWppvajKrTohRTVCs6yXVu2xhU8/30HYvTmFyOUmbpJTi
         NNAYZQsJnazPDOiLz6CexsPk/OmJQtuY0+buNogsvw00HrGYmrl25p9nV1AkAdeZV8pR
         CmLSFymmwtzcu4fdiUUKqyhoiJmLy0M8xcRmTiws7Z2swpZPFppZhTl6lqbdsMiQ3/xi
         5zEAnSATWqJI4dIotsWfog+tR0jVpi5av6BTF5ZlNJagDVSX8bwAkzstuCfyLVRaKTDe
         fBhSbVlDsFm0GbjHzXdIk9Z5rTDfMAj3HcC0EZHOgOyhR5AuYGRNtaTmJieoux39o21B
         W2NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=60RDm9GZdiDvHOVTVOgnNPhDb7lpPTDsg7QOSfebuy4=;
        b=07hdOAQ5oOE3EHQpPf8uviwpQRkXnJYFKfNVnU6SkI+e0tV9K+Aqx1rI5Ty61MTPy4
         1nj9Wq2ONFoM0k1om9KAmm9qN1TA9DS7NwWDuhqxp5anmKHepiKrGlTVXzFtpIwEORqy
         XihiHOsUx1fU+o9Y7aPK8PUVzR8O76d3/73O05f6QveBQC6Z7zNOIjWQ0YpERn8WMJLI
         OIrBQXW3c9cPZTwb88djD+pDvNsK737Oo3d1F3fw2EF5lMTTsYakZwtIKxq74WnB66Gu
         6BeU1AD6sIwVAth22DeD9krHtuB/C2yZeD5Imw1Wap9DQBgKzcIVvRhMkEeCR7utW6Wo
         1aSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eHi14+wz;
       spf=pass (google.com: domain of 34mw0xwwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=34mW0XwwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id o26si377012otk.2.2020.11.17.16.08.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 16:08:02 -0800 (PST)
Received-SPF: pass (google.com: domain of 34mw0xwwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id m17so230385qtu.11
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 16:08:02 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:ad4:53c8:: with SMTP id
 k8mr1987233qvv.40.1605658082001; Tue, 17 Nov 2020 16:08:02 -0800 (PST)
Date: Tue, 17 Nov 2020 16:07:49 -0800
In-Reply-To: <20201118000751.845172-1-ndesaulniers@google.com>
Message-Id: <20201118000751.845172-2-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20201118000751.845172-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH v2 1/3] powerpc: boot: include compiler_attributes.h
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Gustavo A . R . Silva" <gustavoars@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eHi14+wz;       spf=pass
 (google.com: domain of 34mw0xwwkaimuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=34mW0XwwKAIMuklzh1suplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

The kernel uses `-include` to include include/linux/compiler_types.h
into all translation units (see scripts/Makefile.lib), which #includes
compiler_attributes.h.

arch/powerpc/boot/ uses different compiler flags from the rest of the
kernel. As such, it doesn't contain the definitions from these headers,
and redefines a few that it needs.

For the purpose of enabling -Wimplicit-fallthrough for ppc, include
compiler_attributes.h via `-include`.

It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
-include compiler_types.h like the main kernel does, though testing that
produces a whole sea of warnings to cleanup. This approach is minimally
invasive.

Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>
Acked-by: Miguel Ojeda <ojeda@kernel.org>
Acked-by: Michael Ellerman <mpe@ellerman.id.au>
Link: https://github.com/ClangBuiltLinux/linux/issues/236
---
 arch/powerpc/boot/Makefile     | 1 +
 arch/powerpc/boot/decompress.c | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
index f8ce6d2dde7b..1659963a8f1d 100644
--- a/arch/powerpc/boot/Makefile
+++ b/arch/powerpc/boot/Makefile
@@ -31,6 +31,7 @@ endif
 BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
 		 -fno-strict-aliasing -O2 -msoft-float -mno-altivec -mno-vsx \
 		 -pipe -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
+		 -include $(srctree)/include/linux/compiler_attributes.h \
 		 $(LINUXINCLUDE)
 
 ifdef CONFIG_PPC64_BOOT_WRAPPER
diff --git a/arch/powerpc/boot/decompress.c b/arch/powerpc/boot/decompress.c
index 8bf39ef7d2df..6098b879ac97 100644
--- a/arch/powerpc/boot/decompress.c
+++ b/arch/powerpc/boot/decompress.c
@@ -21,7 +21,6 @@
 
 #define STATIC static
 #define INIT
-#define __always_inline inline
 
 /*
  * The build process will copy the required zlib source files and headers
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118000751.845172-2-ndesaulniers%40google.com.
