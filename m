Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBRPDXKCAMGQELM2DI7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECDD370C7B
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 16:05:58 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id b3-20020a05620a0cc3b02902e9d5ca06f2sf117563qkj.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 07:05:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619964357; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ox3k/ur4SK/brtUln81zuQIbewQgd37tGrqEwIAt/lWvWU5rKUzr5PfzaRqIj9/cV
         nAsb3CbqprtBW+mexFF9KZjox43nVqZ2rk8SNBTBBGqrwEC5haXFnk/HronvIefETVzo
         Q+HXprlUlpXZKv5lUmVsyS9pmRnpVhOhJzjqZFAG6NSIn+/gIuf83DhBtxvzNq4ykUPj
         LF0GpTk2t6jJU4rOJd8t3K+1dk/Oyy/yCDo3eosLC1K8T91avLL9NV20gBI5XbhqYbTG
         QgDiwHUyK9SZnZSXXSgOUnJ5Kq0smU9Ltu48s5K678J8pPxyCYBHccoUI7NjX6w2TA+/
         9coQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=86zgIrayw2MtTRrPIg/pBqBVx6E9KixzdTaq2yRyA2c=;
        b=VN6djJA0o4nPZbvqVvM+cy9xPSGRlgw08qTbL570mycSVKb+8jyDes3a29d5brxboQ
         rF4rL9A1K+irW9kUJEJ79wm389ErWe09zUSuNyh6GOtn0xJ/bUtfLmq/WM6LMGCaLSch
         GIkSeToETbcmYaB9IxnFY0PQ8yvm9DcuyVr1uNN+scakGpGD8eVKEk6GZG60M5ExZl3x
         5UjeTNMCVEd4fBc1MehUqu+LYPXk61yKNyWtIiy0t2rJawrhFQDKfPQIlx4gBSyW5b3l
         uQKGaCcJEpMiuCDUAWXFY5JXV9a1WSw0rj/GEPm9amMKMt5bsJ78Ai+vBMrTfm6GKDbv
         4udQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KsZPE++y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=86zgIrayw2MtTRrPIg/pBqBVx6E9KixzdTaq2yRyA2c=;
        b=aNk4qBmG9ddXp/5l0a5vNtyrgXGUX5Fj5budQ4FojRyYkTG/AgyydxXlFmt1NehMZS
         fpyD+dtRpZwZGanfXIS4vBB2StfW5YhgNE5O5hIDCClV9CG4zwAQtXKDQu8/SK7yaYiq
         mLfcq8C+vLfjq8PLQPNyLi6C/R4C8x480xxQTn05EEJ+7yWaHBH6FTiyClboV/i/odGH
         MIsWrFemAmDd+fo5OlsTL891H8IDYT6VuSoCgsuI8yZGGk2f46+QvN0i7BDxzCBB3PGR
         hg4iGSrKzTQpoi42i3vUjcJLVigFyXTYLY5K5zyDwDCr3mVgz/XM43ZS1PyivLX+ZCK4
         ACgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=86zgIrayw2MtTRrPIg/pBqBVx6E9KixzdTaq2yRyA2c=;
        b=n+TG9ltG97UXc6tK+mbuRv8fwxFsT5ZxImwuTLMRgqb74s+s7xl5Js1AZO0yCDOcQv
         UqzRoMJfzaxkkbmJC28YBCue84vbr4JCer/dzbU2m59dsVLOVWx3AYdcdxyXhHrB96/P
         xqDkMFsHe5njtf9nLijSoSNfBDPu8Suw/sczl9GC8JYC6ZO9qwr5Ow1cwppjqobySiqH
         cx/6F1Sv4eP+dXgp8vIxOL7sU5jGmA8vllqXlkdeH5tRSlHZpO4DWKoMtTOqTpbjwXyg
         O7k8aNOQTIKIggA8Udil9cjDODzYRNPhe9L1nPtA8MnboiGU2H0eJFrTfMZdrYVljyPj
         vo+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qMu2N2UG4Z5UcUBZtodGrWY2i4S5JOUWiT1zoYJkZ0A5Rcovi
	wKNDsyFpMfoMlfLfxccCNFw=
X-Google-Smtp-Source: ABdhPJz45BN68qhO1249m1sJf/Oqg9EVLG2ewnXPmVS1zjWpHAPMdRfdk3SC7F8zjw0qq/FgB8StoA==
X-Received: by 2002:ac8:4896:: with SMTP id i22mr12969690qtq.114.1619964357088;
        Sun, 02 May 2021 07:05:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4cca:: with SMTP id l10ls361526qtv.2.gmail; Sun, 02 May
 2021 07:05:56 -0700 (PDT)
X-Received: by 2002:ac8:7f04:: with SMTP id f4mr13023898qtk.88.1619964356621;
        Sun, 02 May 2021 07:05:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619964356; cv=none;
        d=google.com; s=arc-20160816;
        b=NsZzcTILfR8BQ9CbkrnZLhXa8cpDlfMcpXxTYtlWhxGVuKVQfk9FpNPr2i5IWtlKpY
         m2OSLYK4eprMr91dSZ+JFOTej6yxqX3kxnzjw6md4nzUDFag6nHzn/Cu8/Kq0Bd+qgvS
         z2lFOCBgHU3MvLTgEfKufzv0WcYomvSvfVaMpRwYbuojDSKcN9VB6xKEKgkU3wI1t+KV
         oHZdquwATaSad41HolN7uZIiNdJYnvwBMDTJ3dnQ1VS5flXzkbPDy1oe6+e2Fw0908H3
         tyKuETGDcu3i5bLxNllg6EpxA2yH6mHj3VV58qx8Axq2x1onn8J7HB7/ey+3wXKurf/A
         /+Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=yVVPrmr9/HBWd3KfVHvoyUx5GK90KWfjP2hXmQROKTc=;
        b=rgXrmaOamDbVy7x+5JLWITysf+XbdPQ/sAMmW5BtECoj6DGdPv79CCJ9nTWrU7V3QE
         7vhQWmO4sI36dz2/A/70TreXIDJ/FA5QtxhEVoDNdnkJn+KqwkLKROxfcx1R9gTqYrMZ
         VZ/Q9wM3ckmZFe+e9a0x7JbRTGc8raVQLEqn2dFRwR5ebdwoNE5675nymC3SYldvtLOt
         kgJ3rBVU1hGlwBjFlp5a7CnGrqAegxlr4IakjfKqRZG9XHBCs/eE/uv+Wkv1ssEyd4RL
         ByIEvofX3WcMGg3Vdn8y6rZN1SCtkM7Ci9gX6q0PnwtLQdROAHt8sW9R00Qvh5KEz/ZK
         R4FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=KsZPE++y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i128si899333qkd.0.2021.05.02.07.05.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 May 2021 07:05:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A60E4613DC;
	Sun,  2 May 2021 14:05:54 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: John Millikin <john@john-millikin.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Ard Biesheuvel <ardb@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 08/16] x86/build: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Date: Sun,  2 May 2021 10:05:36 -0400
Message-Id: <20210502140544.2720138-8-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140544.2720138-1-sashal@kernel.org>
References: <20210502140544.2720138-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=KsZPE++y;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: John Millikin <john@john-millikin.com>

[ Upstream commit 8abe7fc26ad8f28bfdf78adbed56acd1fa93f82d ]

When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
contains additional flags needed to build C and assembly sources
for the target platform. Normally this variable is automatically
included in `$(KBUILD_CFLAGS)' via the top-level Makefile.

The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
plain assignment and therefore drops the Clang flags. This causes
Clang to not recognize x86-specific assembler directives:

=C2=A0 arch/x86/realmode/rm/header.S:36:1: error: unknown directive
=C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real_m=
ode_header
=C2=A0 ^

Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
which is inherited by real-mode make rules, fixes cross-compilation
with Clang for x86 targets.

Relevant flags:

* `--target' sets the target architecture when cross-compiling. This
=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
=C2=A0 to support architecture-specific assembler directives.

* `-no-integrated-as' tells clang to assemble with GNU Assembler
=C2=A0 instead of its built-in LLVM assembler. This flag is set by default
=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
=C2=A0 parse certain GNU extensions.

Signed-off-by: John Millikin <john@john-millikin.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://lkml.kernel.org/r/20210326000435.4785-2-nathan@kernel.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 146aadeb7c8e..844d5a72d2ad 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -41,6 +41,7 @@ REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMOD=
E_CFLAGS), -ffreestanding
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -fno-s=
tack-protector)
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-a=
ddress-of-packed-member)
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_s=
tack_align4))
+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
 export REALMODE_CFLAGS
=20
 # BITS is used as extension for files which are available in a 32 bit
--=20
2.30.2

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210502140544.2720138-8-sashal%40kernel.org.
