Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRNGYP3QKGQE5EWOS3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id E643E203B82
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 17:50:29 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id y133sf6422356lff.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 08:50:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592841029; cv=pass;
        d=google.com; s=arc-20160816;
        b=dWO6Fv2CZyXgMC6NYgTsz/Ypiw39zZ0jT35poAWM+fILd7+GsUWwF7FFk25bLPj4fo
         xxwfqTP8VAaxgcoTAK7YaerOHFdJKxXrx/FnCcodTvVr5NT4ZtMFBB0a+9qnMf+NIBj6
         cwuXXzpRxhSbNx9HiO/rSKu5VhTf8WPK+W2b7EvWAG9Sr7OhqoPTzoupgQQEyRjMdU3c
         orhQ/IGJWZWBbnHkzctDq0wIT0GGH3I9wor7cwCoD2tCDz2s70bMgMHvS/wMFMRfsKe0
         tQiwTdWeQfc290o7aBWnMYsiiTXXodXN+C0y+4kuy98utOdtJpYlaU5klWujiZ2Cv02B
         iwdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=KEl9yxdQ2SPtT0rRj19Ut0i2gvQijAlylR1YIZIL7x0=;
        b=H1+GhAp9MWE6ovZS5urFsABTSbJIH/2NVAEamBxeo9sGe6x89oSiyjUU/wl8xsQzUe
         19CVfJOqh/G9qAp8Ozo+WEroP1lWyrvxSSvl3hX3eByeMgoUKNIbhLt0uv2dr5Baw3ne
         cyfWIltnXTBYZDVoKmL4esqSSD2I4T+SyL60TtOVZfBjT8YlBuqdDIANEkFeSHoO0LOr
         LbgMPwTgF3qIxm3Im9ka5rR8P21eofYsi2pyUWR+XWw3EPBmjFLZYma4ULQ5dTIkc7E8
         e0sqG6d87me3U6ikeZMjYxwFnnx6bdjWfhHfSJT6Ll2Sq2iEmH7g1cYFZjQvvzpY+mnh
         ju/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G7XYSMvo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KEl9yxdQ2SPtT0rRj19Ut0i2gvQijAlylR1YIZIL7x0=;
        b=q5oSo4PxSzysbogrvvpwAQ791DBg6BKVkvvjzHeRLcnz1DgIWOYRO+Sy+jfpZahDR9
         SrHkd2tqb1rK/J7jvI0wgZJm146thD1eGcN8qCOpS6LqFr3jznJJfqK7Jo4tkYe6K/u4
         a1F7+Dt6Ppp2nk6BlvRDeSSNWqH3jkzI1bJDDF6w4t8uYLZN2DuYIQ8BK3JAKGtEwZjB
         RODsWht0jZW0BzwJxMso8loISd1l5nnbI+UJ2JC2ljzwAZj3UxDRuoF/CQ2iAb98u349
         Er+DpMbD+Syn2ZGW4z/gcAijuVaFESRCzMP7sVj4HHvCm+rbG2+/ebpwo9olHFgLMzNw
         m9ZQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KEl9yxdQ2SPtT0rRj19Ut0i2gvQijAlylR1YIZIL7x0=;
        b=njyKQrYkp0SpB8NzLVbC/RBpfUJ/x5eqIet12dqnLJjfKS4CxBuxXGipNj40TIi58o
         HutXkjgqM1+GcODj49KUqWDKy3NArtEIosFMh2nlq3YatlLrM/GJ1V53cC0mUuDARXbW
         2/WIQWcCNNLtue3QHVbXHF6IwIBzxtiDKMj33O5LuFNbdIIeXMjITzwCWXWwkFhtmNoe
         KQXu79I7AOyZpKmuQSOcysnFGtwte8A9yWyGgc/xiTh/YYo3cqktrMumw2cBXVDHswnr
         lamv06lqfzTZvBN3HV+qLN84r5UKEGJjJmhJJe5AKzCoHtnrYqcWU10mBGj/LOITgCPp
         wZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KEl9yxdQ2SPtT0rRj19Ut0i2gvQijAlylR1YIZIL7x0=;
        b=bCj4984t5qd9DN8JZC077fRdwypOmDY+Wvhf55W7+Qjdek/vAtWb/PAoVAd71mLYHG
         aIOe8EzVjBO9bXwMRY1kqs7avgdnfqbCIvuB03PoCJhIYCppI7/tLC052aclKbrb5zei
         f6hetpgc70saXUWJo3ZRdf9XkKPgHZv05so01RFdBhvMYIB7cd2rLj+EhL6C0uhip/nx
         9yBvjLv4hBg7kKOolVkUOHx2xrIWc0Q/zdVJRcJ2U1appSjuCzijOyxey2iGNBcfZM8I
         76Au4bxEkxFvzqCM4oX77ez7AO5/ss/gh5eLo6R68xFNWJLzzQcLK/pUH7CNU8L7WZQr
         wCtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QufZRCR1kQkt9tkZ58Px7NLyBznDX1QeJ6QYSQJGMPvbfEQCK
	2fbmWhaXuuXafs4C3UT396A=
X-Google-Smtp-Source: ABdhPJwDQljQ34B1x9Z+hFn5ZteVcYWl6z/UpVQGKxqfCmGSHuwSbn2gDvq5o0kFING23k9/GNMLJw==
X-Received: by 2002:a2e:b0e3:: with SMTP id h3mr9492950ljl.16.1592841029347;
        Mon, 22 Jun 2020 08:50:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9718:: with SMTP id r24ls3365674lji.3.gmail; Mon, 22 Jun
 2020 08:50:28 -0700 (PDT)
X-Received: by 2002:a2e:8110:: with SMTP id d16mr9251611ljg.12.1592841028595;
        Mon, 22 Jun 2020 08:50:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592841028; cv=none;
        d=google.com; s=arc-20160816;
        b=O/xaG4AV9kmgw6G+T+iI5WYV3ijq3bHPBRpcQm115x78nhW8W4+BnJKsNg2di1oZ9L
         LPDnUnO6rmtl2l41+9FGdgjCu3eNJ08zWmYcm0e3xUWLja5FkpEHCBdRwe3gw1d2iZGO
         eExgyOW/RDOt41gLOXitK55C/HngUm38nY11371ujTYa3RonZnTlTYOihJuPWPcyqLY+
         ldv8qnFTsso/tK5k9lfWrwDWHpVmtTY4jBNHxLJyHAYMnRo+yHvrTyhBIpOLO2U29J6U
         zdWq0hp5UHE1k6frgebl7arvvKSooDEKq9kPtuvI53Lxdd9NIE8CohyKnOM7mcbn5jqP
         +i7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=A9RIkDdR+eW81+khisoGH0wOpXlMTKss39s/rvDLd5c=;
        b=PB+O8Gqof91GxBtIEFhnuiBAkyrliumSRD3mRD7+c7724vwds5fiJK3INXghntabmm
         pxsE9Xn089he0MzKQZfIqmt/UWKS0jBvXV5Mxw3gtZYr4iLbB3PKysb65FF+F+cn31FH
         E0K4nzMVfDeXe7ZT9ZlJQIdKsLC0NkSLxJ8P+8e7CVLPVul4OWTWhh2WxFXsrRw+JFIO
         Gemqr9+bc5CqOTfcvb3pCwwqVdxa3rHEl3mEGMXKBFuLjOgxUEScAekRdN/chYzt95PV
         8L+6i7D14JJ0nPicJvUfVWYRItfkm2Z4A3G4zzf/CBwL1RpOdWtB4FQ51EQaaMBUvoJM
         TZiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G7XYSMvo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id b26si41344ljo.6.2020.06.22.08.50.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 08:50:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id g18so8140326wrm.2
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 08:50:28 -0700 (PDT)
X-Received: by 2002:adf:edc8:: with SMTP id v8mr18278992wro.125.1592841028007;
        Mon, 22 Jun 2020 08:50:28 -0700 (PDT)
Received: from localhost.localdomain ([46.114.108.171])
        by smtp.gmail.com with ESMTPSA id t205sm1190169wmt.8.2020.06.22.08.50.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 08:50:27 -0700 (PDT)
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
	Craig Topper <craig.topper@gmail.com>
Subject: [PATCH 5.7] x86/crypto: aesni: Fix build with LLVM_IAS=1
Date: Mon, 22 Jun 2020 17:50:18 +0200
Message-Id: <20200622155018.6043-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=G7XYSMvo;       spf=pass
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
1. GCM_ENC_DEC dec -> GCM_ENC_DEC DEC
2. GCM_ENC_DEC enc -> GCM_ENC_DEC ENC

With these changes I was able to build with LLVM_IAS=1 and boot on bare metal.

As llvm-toolchain I used v10.0.1-rc1+ and v11.0.0-git pre-releases:
1. release/10.x Git: 2dc664d578f0e9c8ea5975eed745e322fa77bffe
2.       master Git: 8da5b9083691b557f50f72ab099598bb291aec5f (default)

Just for the sake of completeness:
1. CONFIG_DEBUG_INFO_DWARF4=y
2. OBJDUMP=llvm-objdump (passed to my make-line)

Please have a look into "llvm.rst" kernel-doc for further informations and
how to pass LLVM kbuild-options to your make-line.

I confirmed that this works with Linux-kernel v5.7.3 and v5.7.5 final.

NOTE: This patch is on top of Linux v5.7 final.

Thanks to Craig and the folks from the ClangBuiltLinux project.

Cc: Craig Topper <craig.topper@intel.com>
Cc: Craig Topper <craig.topper@gmail.com>
Cc: Nick Desaulniers ndesaulniers@google.com
Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1050
Link: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/kbuild/llvm.rst

---
 arch/x86/crypto/aesni-intel_asm.S | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
index cad6e1bfa7d5..983eb2eec51a 100644
--- a/arch/x86/crypto/aesni-intel_asm.S
+++ b/arch/x86/crypto/aesni-intel_asm.S
@@ -266,7 +266,7 @@ ALL_F:      .octa 0xffffffffffffffffffffffffffffffff
 	PSHUFB_XMM %xmm2, %xmm0
 	movdqu %xmm0, CurCount(%arg2) # ctx_data.current_counter = iv
 
-	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7,
+	PRECOMPUTE \SUBKEY, %xmm1, %xmm2, %xmm3, %xmm4, %xmm5, %xmm6, %xmm7
 	movdqu HashKey(%arg2), %xmm13
 
 	CALC_AAD_HASH %xmm13, \AAD, \AADLEN, %xmm0, %xmm1, %xmm2, %xmm3, \
@@ -1596,7 +1596,7 @@ SYM_FUNC_START(aesni_gcm_dec)
 	FUNC_SAVE
 
 	GCM_INIT %arg6, arg7, arg8, arg9
-	GCM_ENC_DEC dec
+	GCM_ENC_DEC DEC
 	GCM_COMPLETE arg10, arg11
 	FUNC_RESTORE
 	ret
@@ -1684,7 +1684,7 @@ SYM_FUNC_START(aesni_gcm_enc)
 	FUNC_SAVE
 
 	GCM_INIT %arg6, arg7, arg8, arg9
-	GCM_ENC_DEC enc
+	GCM_ENC_DEC ENC
 
 	GCM_COMPLETE arg10, arg11
 	FUNC_RESTORE
@@ -1719,7 +1719,7 @@ SYM_FUNC_END(aesni_gcm_init)
 */
 SYM_FUNC_START(aesni_gcm_enc_update)
 	FUNC_SAVE
-	GCM_ENC_DEC enc
+	GCM_ENC_DEC ENC
 	FUNC_RESTORE
 	ret
 SYM_FUNC_END(aesni_gcm_enc_update)
@@ -1734,7 +1734,7 @@ SYM_FUNC_END(aesni_gcm_enc_update)
 */
 SYM_FUNC_START(aesni_gcm_dec_update)
 	FUNC_SAVE
-	GCM_ENC_DEC dec
+	GCM_ENC_DEC DEC
 	FUNC_RESTORE
 	ret
 SYM_FUNC_END(aesni_gcm_dec_update)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200622155018.6043-1-sedat.dilek%40gmail.com.
