Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB26UTKEQMGQEPQEES5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DCD83F7D3C
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 22:39:09 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id d12-20020a6b680c000000b005b86e36a1f4sf291668ioc.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 13:39:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629923948; cv=pass;
        d=google.com; s=arc-20160816;
        b=y7Q8gmpNaHGgfkE2eKUvcokMJE1qwDjAln2bFXcnS/Lx+ZntXX7ZdEzzThJPAGk6jp
         h/osC3h/kqQK1PKpTFD+8Pl4cI3eO9ustkQ7QlPAr2fnUpV7oCJ2uaPHIToWQ2cgL7fg
         6/zc3ESWF5zKqJOqVORye0edaPlt5Y5JoYdJusYX+nqebm14BmD5a3KpLMNU0QVLz5yi
         HqUjo73CrfDQv3G/ii4zMylr0vAdEsJbSZwUGdJPwS4b0VGdG0E9P+d1LwCgDsyt4FSf
         4Uqb399MQE/cMiVBxPvjbCeRuw9fBRP+UAS5Prc6iSb920TixjJEydNNF2FToMG8lUXn
         MeQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=XChSomy/cajnKmEsIqAwoaodyXbZ2p/ZXSlKOS4nEm4=;
        b=VPNxFXcBasCxa6RJf20V+Quze61zxvBa+aX6xwpzDEde5VARKrUEbnPTneFqkWVIM6
         Rs8RsgWn2lkZTbPOnwTvBdkqx/C2H8IDuDLPQtbakkAjL7vM9XfdjAqPmxqJvIqP9Teh
         svfxOu6uQbmdZQGpsi3utIXgsCqGosQS5h76gl5f5A1aYmnWtDFJen2psx7p07dZWhpx
         ZvlS7UqNrHSWZ3tMkVDJJb6SdQfmsRRoyHApCC9wRkp9ZNIWAfFUV2dxkFfsYx8OU2nK
         wQHS11IC75/BFczPcrRLzztjiFaMWTR/UvaSOP3WoLHwKPzXt1D0B47wk3ET/Jnh5y9u
         P4jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j6yDQ7pw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XChSomy/cajnKmEsIqAwoaodyXbZ2p/ZXSlKOS4nEm4=;
        b=le4oRJhCt1sb9gTSk+buwW9CzZ2FO9FbDnkVL87dJ45Ran5lE751Jt+KBBPCAyzZ1T
         PSrSiVP/vR0/lNv6RlBQUX4js9Bbg4405jHY85NRhaQW9ZMVTwAqcuzXb9BIS72rKtZ9
         im+bjFsCA/nLBOjPm4BIFG0naK5vYhC5DzyaMhH9hhrxDqEJ7mXZtXbmOjEO27SRJuc4
         zWOBytyyre4VRS/Q4KdhZvFRW4L+oGyqWF1VDQLidckxHaKiqJTAxYrixc2eBH3EMgbf
         riSP2BPtk/20CUc+O2xyOcudea8ilpP5bVT5wgw5QtnksjVLBulYxzjEcafTRx55BeG+
         P8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XChSomy/cajnKmEsIqAwoaodyXbZ2p/ZXSlKOS4nEm4=;
        b=imeuYLyf0Q7DvsAni1cS6doReXARPq7JzWnhPepZqmJnZROe7ujMt7mmpUFTHAzy8O
         pBmEN9eV77MMjqh4B6DQ/8mehdbclPPyh1DbLKbCCTfLGy7n98JNxFU+uzHWve2YhWjA
         btt9hy6+8sq1HzMckxSiMGXmZfVAthfDArnb3X3HUnDe3Ln/k99KIcVVt1ngrGyd40e1
         KBWdVxZzkC4V4NMXSMZOFshoD9fng2GykaWDwvkLtYeX7VZfcD4MxLlqb+PIsMH4CuIf
         T4oRvZMfLKsm0ojp/cPP2mrEKMBIz3MCSYJ5xK+AsLpt1AmCBUP7A1PisNkyUMpsATHt
         CnBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cx8KbjSFtU7sdSLRKtQSI+A8r81E8qc5lFCrnpo8vjqZN4rr/
	s4Ls9fjqBa5IcTv9oi0gtEE=
X-Google-Smtp-Source: ABdhPJzaf804bKHbSEGNVLwmUc+JbIX/FUyMmZQLEe+qm4fOmaEGJRatWayVQoXo/DJRrcTxygfLGA==
X-Received: by 2002:a5e:df0d:: with SMTP id f13mr305204ioq.108.1629923947848;
        Wed, 25 Aug 2021 13:39:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:c55:: with SMTP id g21ls501773jal.4.gmail; Wed, 25
 Aug 2021 13:39:07 -0700 (PDT)
X-Received: by 2002:a05:6638:3789:: with SMTP id w9mr247739jal.131.1629923947568;
        Wed, 25 Aug 2021 13:39:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629923947; cv=none;
        d=google.com; s=arc-20160816;
        b=tA9MExShUzRXlwIbazvQ+pghqVwzOeeFFGgjiINSH4MMeDE0wlboQ/xSElsaNpMfJ9
         yBM9q9SZwKKnS+ig+gBeK/85ODr4ykMsxfNN1Y83BMlq51F4sMYr/uAQhbpAX09eBiPH
         dVMFX6reDv7OAkMYApQWsFcxhnRBesv1ohL9sZUIgHpkxbt6N4JCBHc3tGutL/Bfd4BN
         L5+iWCUehadbyJFdQoNAmG4tHIiUxPSKyWgLfcLOuZUZWQU0aDbjUZQt0uZ5ElDe8OwV
         k9bzzqdFCEtSDK3M2YEJwmj2BHVfJxuUsBDrVNJ2+J8LpooJL3NcKy4MbZgEEND1SAhA
         hpwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=1Q1zvtsNDLtiZ0DEFxhSXRtdOtKxi0Tk50mX7IC912o=;
        b=M2paY2SnJcDaxjHsU3lCAQzKbE+CDegCS0sgTNLbDwPuySOl3ayA2Ab7fS3SPDp2+u
         oRrVkEAJlUcre7P0TtxKcLICnW7N7LaD0f8XB7hqqgaXVF1OxDLZbWt8pbgf/DWsByl1
         3OLFqKHCWi9nYARBtmUIqCHasMfM7Q+SVhtmYKZGdTaDC5hiq9lG5BKFwBOIuHQ6PWbW
         nZQZBb8qK0VgDH3Z/I+ftFOu+XrEYHJlmj9ZKFbohfmZHUFgdvtJXXsIIdb6kPMvo5AX
         zVzmZWxogUTJ0J5blnx894MRVFp+0ej2FqbuzfX2A7gaMCCOl/zIgq912JzyiQsEREpv
         YknQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=j6yDQ7pw;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z12si112668iox.0.2021.08.25.13.39.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Aug 2021 13:39:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id EF503610D1;
	Wed, 25 Aug 2021 20:39:04 +0000 (UTC)
From: Nathan Chancellor <nathan@kernel.org>
To: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>,
	Tianjia Zhang <tianjia.zhang@linux.alibaba.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	llvm@lists.linux.dev,
	Nathan Chancellor <nathan@kernel.org>
Subject: [PATCH] crypto: sm4 - Do not change section of ck and sbox
Date: Wed, 25 Aug 2021 13:38:59 -0700
Message-Id: <20210825203859.416449-1-nathan@kernel.org>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=j6yDQ7pw;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

When building with clang and GNU as, there is a warning about ignored
changed section attributes:

/tmp/sm4-c916c8.s: Assembler messages:
/tmp/sm4-c916c8.s:677: Warning: ignoring changed section attributes for
.data..cacheline_aligned

"static const" places the data in .rodata but __cacheline_aligned has
the section attribute to place it in .data..cacheline_aligned, in
addition to the aligned attribute.

To keep the alignment but avoid attempting to change sections, use the
____cacheline_aligned attribute, which is just the aligned attribute.

Fixes: 2b31277af577 ("crypto: sm4 - create SM4 library based on sm4 generic code")
Link: https://github.com/ClangBuiltLinux/linux/issues/1441
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
---
 lib/crypto/sm4.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/crypto/sm4.c b/lib/crypto/sm4.c
index 633b59fed9db..284e62576d0c 100644
--- a/lib/crypto/sm4.c
+++ b/lib/crypto/sm4.c
@@ -15,7 +15,7 @@ static const u32 fk[4] = {
 	0xa3b1bac6, 0x56aa3350, 0x677d9197, 0xb27022dc
 };
 
-static const u32 __cacheline_aligned ck[32] = {
+static const u32 ____cacheline_aligned ck[32] = {
 	0x00070e15, 0x1c232a31, 0x383f464d, 0x545b6269,
 	0x70777e85, 0x8c939aa1, 0xa8afb6bd, 0xc4cbd2d9,
 	0xe0e7eef5, 0xfc030a11, 0x181f262d, 0x343b4249,
@@ -26,7 +26,7 @@ static const u32 __cacheline_aligned ck[32] = {
 	0x10171e25, 0x2c333a41, 0x484f565d, 0x646b7279
 };
 
-static const u8 __cacheline_aligned sbox[256] = {
+static const u8 ____cacheline_aligned sbox[256] = {
 	0xd6, 0x90, 0xe9, 0xfe, 0xcc, 0xe1, 0x3d, 0xb7,
 	0x16, 0xb6, 0x14, 0xc2, 0x28, 0xfb, 0x2c, 0x05,
 	0x2b, 0x67, 0x9a, 0x76, 0x2a, 0xbe, 0x04, 0xc3,

base-commit: abfc7fad63940b8dfdfd25da6f0fa813d9561645
-- 
2.33.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210825203859.416449-1-nathan%40kernel.org.
