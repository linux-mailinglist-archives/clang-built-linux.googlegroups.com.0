Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBA6DZP3QKGQEMOUEMVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A2B206B95
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 07:15:47 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id l3sf1985980wrw.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 22:15:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592975747; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pb5jmk9YvUPgXIyAb2nG7xzJy6sJiXVLsiuyrZmwdxv2NgxJ8fk1pi6J64x46Zhr+C
         trcJe1VuNDD3XbnGbZ+Kn+Z74cpJhUGrAREMLoXh/YhtYGYtb4A3xWxoaHnhasJyi2hX
         qlyJcGDnlRJKDy+UgYnMc9DyFyoFYqCIE5xeIaZOqKhlviCcWokxNVEapuRdckTZiPQe
         r/sJUJl2Ogd3QrU6Oqqq/pM1hih5nW16yVUpuqk1SPbBRARkhEGxN3ihVEQFvr7XWKzh
         6lU6jV5WkHOppJhwxrAkpbnvI1ctOyxCmIf3+G30YK0kzRmj596KLF1fFanZXUSJGLIU
         56fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=l9lFZ8F/BMgMW+jPI/2mx6/sj/i08xUjz14InqpLZ0A=;
        b=zFDLgVG2HGwo1pWMfVET7BbwIyxayi5VL8pYE/15v9I3y9bCAsdI7SYwxKBl+ALmFi
         D7ru3n2uZMP7CYy5sFhf9pBiUcG6+56YAODa5/9wmutoRkp5uttZIkmIX3M+OFFEqmaV
         xSSk8FdPYRjYz9C/gETxyRxgoo9BV1H8XIfYFgs1nQYSYacqN0vTl9wNo7CeYiqjTQm3
         XRLvMMAcVCCr0Q+qw/n3jZyzGWjqrzNGC4Jqc2d9EJF84bFp52SKrulE84LrzYW6tXn9
         sTCpIWig9redmJJY1rtE5jL5TaCdlvKtEWQpEq1od7QnSCRqD4PrBQlMlfPVdimDS86s
         Uu3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhBYWGte;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l9lFZ8F/BMgMW+jPI/2mx6/sj/i08xUjz14InqpLZ0A=;
        b=LVBeAZf+0hQmwN2BNlUma1JnSjRtj3vd6yh96+Ph3xDluq7a7jer10QtkJE7/6anqV
         Cc5SwIQY7gNPAaXZnGC8ui16qMz/qywimbP/S7a6eKiOVaeQvQiFZ8IsVaW+D/LqXgpr
         5AJ/WCnaArFPkQQCpszB8KuIn0moYfITvzbDvIVFWeEeES2rFuzXNNYql8xBeAc1FOKY
         fK4r4BVjQgU7TaAljT7brdAcv/ADWrCjfzQEuoSKlcRSOgyhdsFQweufJl99XMvPQ+Av
         0Du4NQHH63wfvftZerzL5Y/K1W/LvI7aBr+F264PIO9kVozP/He0APv5gzI/bLxSA4Es
         xniQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l9lFZ8F/BMgMW+jPI/2mx6/sj/i08xUjz14InqpLZ0A=;
        b=SgmGs++nKTLsW2pn8hkcktpf8Bkm1IFthcpGwduUZ6K4/dDBGTdO+xhHiGYosDFZPV
         I3GEVdgzw/39cVW+HA+G/OSJyJ8xQgFkhUCTx1pldSuYpxGgpBOcRDguPlyaiK3oLhJD
         4p1oyRSQKxtc2N2G5ZYYfn4A8HiQ/ySEB2s2132gNzTDCEmbHLkh80TZKQsc6FONOPNE
         VulS4Fo+0j08qnCXGhSYacMG3+sdjwRuHwLr8s03CRWHfShV7HeijRj4NTnmNsGczhE9
         8juuWpV4iQfDijPd8GNsO8NJLOP0Fu8v2jTLvhfgYdaSlq+v+AfuEaE76HDnzRum8ccQ
         /gDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l9lFZ8F/BMgMW+jPI/2mx6/sj/i08xUjz14InqpLZ0A=;
        b=S9H72bkbZw1LNCl2U6RezIbTBKkc6YFQPGGGSxk9bhDEAhnAYRWwUmh8h9KuySru33
         GskkZRWxfjO9fHVB+RjXR3E7nvDQ6ftb0o2JnDb63C7rBucLKR8tjy6lOPjdNrTgyOnH
         0qj29NyA73E+riBM2xcMq/3BrAlGXZs2IjppsqQy4C3DkCivGMfqfevu9oaIDU1wzvuN
         MUGnXbPFIIt0elja9xeFzN7fHQAlwIKQnecOPKSnzakOWY3R4EhUKdBnQgphEc2baECR
         04CZ69bAYRGXrQhECENilytPacDabjOMz6bIqqUfXJZ+2DfBEayD7ng09l8AMjfuUjMU
         zVcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532yAAcnoDO/w+XdrSEIvNNBDRSVmGQ0wFddo4vuqY2GxX2foglh
	KRxOGrsAgJejUpm6GJALUDI=
X-Google-Smtp-Source: ABdhPJzHXvDOMEkYWhF5Zt5aFsQXqwmUPd4B4nFVd47x8T9WnWh7G8F12pOeaZmQMBq95AEUJSUSCw==
X-Received: by 2002:adf:dc42:: with SMTP id m2mr30840342wrj.342.1592975747449;
        Tue, 23 Jun 2020 22:15:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aace:: with SMTP id i14ls1121592wrc.3.gmail; Tue, 23 Jun
 2020 22:15:46 -0700 (PDT)
X-Received: by 2002:a5d:4607:: with SMTP id t7mr21133294wrq.251.1592975746771;
        Tue, 23 Jun 2020 22:15:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592975746; cv=none;
        d=google.com; s=arc-20160816;
        b=ZUGZoh0GxAJUYp6i/cOC1pyprbB4elNymMaqVkVfPU1bAozgbRBF1w4j7skSOQR3Lw
         A1usU/e2iKL2N9DkClEGQTkQQSdt7xsGXP24iEah4gl5LsQ37SqKGQ+VnxtouIDREWiB
         P52AWY48bTRvHcUT1uMBI9g9kWwMGOeH362tChmFqwbIDwPxva+jhVrUPbutgeBF1z4O
         O7rfK9tKmwzveuvgivw7w24s1egFoU0GpKQ5ydmxp+YSo/w+0D5zqXdbfLNUhymranXD
         gIQG89B/h2eG7GgaKGoKHNgebKEZI8Gum0DnAaZ2lijPsQaW/0A+6Q3rNH4RufvuA6Ph
         qtGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gIA/ExOu85ZSunscHkuj5kA/ZoCm0L2G7SDD9aGfW5M=;
        b=EXUmvHrFGj9f2DQ7aNNqYZvrTtmAoB1iIKAXJcvuoYRaRTatbDSHNnsh146lSmKYWU
         ErXT39Jf4AVMEi+yHDRzomLsYy4Zgi/Tsg6rMitY2qv4lKVWnNYGjUOjkDnMnqX3DyfM
         B8Jo3d88Jmu74eq9hsKVOC3YEVhpLfNIcqXPvyLkx04x+DWUq1Xu2IqAJDtsMBb14mAP
         7S/tnpIsRTHBUszQJEoK+y+e55IZA9lfp1dfGcx6Y4nwg16Caxv8NRrTn1AY2O/Cwgzg
         gQfsADL3+8hPrRPiERKGBneO8purZlDElXE+6C0vQyvaoKctB53mrSijDLUFUtqD5xRP
         ScQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhBYWGte;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b6si875757wrj.2.2020.06.23.22.15.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 22:15:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id a6so916646wrm.4
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 22:15:46 -0700 (PDT)
X-Received: by 2002:adf:e60e:: with SMTP id p14mr4723451wrm.31.1592975746408;
        Tue, 23 Jun 2020 22:15:46 -0700 (PDT)
Received: from localhost.localdomain ([46.114.107.103])
        by smtp.gmail.com with ESMTPSA id f2sm6137195wmj.39.2020.06.23.22.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 22:15:45 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
	Craig Topper <craig.topper@intel.com>,
	Craig Topper <craig.topper@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH 5.7 v4] x86/crypto: aesni: Fix build with LLVM_IAS=1
Date: Wed, 24 Jun 2020 07:15:38 +0200
Message-Id: <20200624051538.5355-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MhBYWGte;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

When building with LLVM_IAS=1 means using Clang's Integrated Assembly (IAS)
from LLVM/Clang >= v10.0.1-rc1+ instead of GNU/as from GNU/binutils
I see the following breakage in Debian/testing AMD64:

<instantiation>:15:74: error: too many positional arguments
 PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
                                                                         ^
 arch/x86/crypto/aesni-intel_asm.S:1598:2: note: while in macro instantiation
 GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
 ^
<instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
 GHASH_4_ENCRYPT_4_PARALLEL_dec %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
 ^
arch/x86/crypto/aesni-intel_asm.S:1599:2: note: while in macro instantiation
 GCM_ENC_DEC dec
 ^
<instantiation>:15:74: error: too many positional arguments
 PRECOMPUTE 8*3+8(%rsp), %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
                                                                         ^
arch/x86/crypto/aesni-intel_asm.S:1686:2: note: while in macro instantiation
 GCM_INIT %r9, 8*3 +8(%rsp), 8*3 +16(%rsp), 8*3 +24(%rsp)
 ^
<instantiation>:47:2: error: unknown use of instruction mnemonic without a size suffix
 GHASH_4_ENCRYPT_4_PARALLEL_enc %xmm9, %xmm10, %xmm11, %xmm12, %xmm13, %xmm14, %xmm0, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7, %xmm8, enc
 ^
arch/x86/crypto/aesni-intel_asm.S:1687:2: note: while in macro instantiation
 GCM_ENC_DEC enc

Craig Topper suggested me in ClangBuiltLinux issue #1050:

> I think the "too many positional arguments" is because the parser isn't able
> to handle the trailing commas.
>
> The "unknown use of instruction mnemonic" is because the macro was named
> GHASH_4_ENCRYPT_4_PARALLEL_DEC but its being instantiated with
> GHASH_4_ENCRYPT_4_PARALLEL_dec I guess gas ignores case on the
> macro instantiation, but llvm doesn't.

First, I removed the trailing comma in the PRECOMPUTE line.

Second, I substituted:
1. GHASH_4_ENCRYPT_4_PARALLEL_DEC -> GHASH_4_ENCRYPT_4_PARALLEL_dec
2. GHASH_4_ENCRYPT_4_PARALLEL_ENC -> GHASH_4_ENCRYPT_4_PARALLEL_enc

With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.

I confirmed that this works with Linux-kernel v5.7.5 final.

NOTE: This patch is on top of Linux v5.7 final.

Thanks to Craig and especially Nick for double-checking and his comments.

Suggested-by: Craig Topper <craig.topper@intel.com>
Suggested-by: Craig Topper <craig.topper@gmail.com>
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1050
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
Changes v3->v4:
- Add <> around email address as desired by Nick
- Add Nick's Reviewed-by

Changes v2->v3:
- Add this Changelog

Changes v1->v2:
- Replace Cc by Suggested-by for Craig
- Replace Cc by Suggested-by for Nick (dropped Cc as desired)
- Really follow the suggestions of Craig
- Drop unneeded comments for my build-environment and Links

 arch/x86/crypto/aesni-intel_asm.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
index cad6e1bfa7d5..c216de287742 100644
--- a/arch/x86/crypto/aesni-intel_asm.S
+++ b/arch/x86/crypto/aesni-intel_asm.S
@@ -266,7 +266,7 @@ ALL_F:      .octa 0xffffffffffffffffffffffffffffffff
 	PSHUFB_XMM %xmm2, %xmm0
 	movdqu %xmm0, CurCount(%arg2) # ctx_data.current_counter = iv
 
-	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
+	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7
 	movdqu HashKey(%arg2), %xmm13
 
 	CALC_AAD_HASH %xmm13, \AAD, \AADLEN, %xmm0, %xmm1, %xmm2, %xmm3, \
@@ -978,7 +978,7 @@ _initial_blocks_done\@:
 * arg1, %arg3, %arg4 are used as pointers only, not modified
 * %r11 is the data offset value
 */
-.macro GHASH_4_ENCRYPT_4_PARALLEL_ENC TMP1 TMP2 TMP3 TMP4 TMP5 \
+.macro GHASH_4_ENCRYPT_4_PARALLEL_enc TMP1 TMP2 TMP3 TMP4 TMP5 \
 TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
 
 	movdqa	  \XMM1, \XMM5
@@ -1186,7 +1186,7 @@ aes_loop_par_enc_done\@:
 * arg1, %arg3, %arg4 are used as pointers only, not modified
 * %r11 is the data offset value
 */
-.macro GHASH_4_ENCRYPT_4_PARALLEL_DEC TMP1 TMP2 TMP3 TMP4 TMP5 \
+.macro GHASH_4_ENCRYPT_4_PARALLEL_dec TMP1 TMP2 TMP3 TMP4 TMP5 \
 TMP6 XMM0 XMM1 XMM2 XMM3 XMM4 XMM5 XMM6 XMM7 XMM8 operation
 
 	movdqa	  \XMM1, \XMM5
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624051538.5355-1-sedat.dilek%40gmail.com.
