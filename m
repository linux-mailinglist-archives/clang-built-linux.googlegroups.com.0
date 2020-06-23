Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBH7DYX3QKGQEFEMKJ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 613C92047C8
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 05:06:08 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id m16sf2958774ljj.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 20:06:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592881568; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ul642HSAY7PgX+D7V4pkUbmgRrJTqkRTI+1uOlESTEDjK4WLkcdjurd6Aqnt2r1RUf
         buQNjNpoPYNmavPCbO+p0WwDSGr/Gdzv1f3imbcV1g+wOSLBJzRwJ5uykl3UnLaVqtd8
         0qVmlfl+wT/HE6VLNafyeHmBsd5Be9tkEXMHJ1EWemUToPcc6gEHF4IEnbQcAOF6tA8I
         eq/4cchNs17o6siL5UZp/qsQgPz9+fFtma8/lC2bwdUIjIGRMPtLAZGHr0r1YWFLG+x1
         IOhqOtwTOfdvbojYkeB7iqidHezHKLwsW+cukHYgyhlNFulWGf3QF1zGtM+OMytQOaXm
         Y1Hw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=8fBpBXNGID8msHI1+Ulx5sgPF9/qZ8NF7iyATmEWSIQ=;
        b=G6ZE+gWp4Xa7ZjRUrgtMCbwFMl2v1GrL8Kslds1PtdgE64z9QPzv+IOEpbHITUbh7i
         +a+iZ+cb2e1VcEFPAXqUW2pwHauj5f4kceJRXF7HK2CDGHfZ5Nn4UdDzcyBbTFizSKtE
         /JxsmDz+SZNSliAbyy/T7vexXlRroZxWkLycNDd4Ewpm3O/Xhq1LLFcuPJjkkTSLH3x1
         nX4N1wmfuZimAMUuootz7sakN97cnFKNEIqY/jR8C8NePmyqddmpOhpdSwIN9G1/iRpD
         s1Sv7HqgBkAbnJyCo+XrXJVfprsFd8FjcX2Vuy5GR9CmMUUpJVzzOEkplmqzpnZ8/AI9
         WR5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XqiDAsWS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8fBpBXNGID8msHI1+Ulx5sgPF9/qZ8NF7iyATmEWSIQ=;
        b=HpQCCaIQ3dqWhnkzahnMtHJl0QeaQj6bvO6ZlDkEwm0vb+7QhRXOSHjWzT55VkDxlD
         BMPYGeMUvjzPZGYygmRsXBigBbSR1G6lrnsTslqcoBh/7mMKsP9MXc5mPoZN7SNDc6Gf
         6Ch48EzxRi7cNvxEJ59R0si7s3jRH9LvHJIJ2/Gi7CL+Eq51Mv/MFfHCm4asWWJwSGd4
         bwB4bqO93+WVNOa9/0EaW0SVuIH7BTtqERRzK3oS7N/2lGrHh15Re6cBYdeus/JH7uwx
         yNyOugyrmfHGvckE1AKceB5V5Ss6Q9m/W1kpOe+BJvntXBf2T6ZesV+tR84V9IabB2bp
         4bTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8fBpBXNGID8msHI1+Ulx5sgPF9/qZ8NF7iyATmEWSIQ=;
        b=knWT6EWXCYiX8NRqyfl0L6a0JrpIA+IMF1Cr4gOkCeg5D6HuE5fJO3qTA3oMjX30p1
         DHiFF96VgT4hD0fGAuvUXjqKGHu3ev14K9IIBOCPEIprCOfrPXoZ5F13JbrSeo6/ivSP
         G8flFffjVeHX37b1QCbfCnJXEPWl/P613msBzqzbdhtVrnqHFmkQzraN3w7hYLYO/+RK
         z7cyBOWx5iochRlapu7sB35VXehqmeT6efx7ll/HWDe7Wfu8EyM7iI4+nHfe4pzL4wHy
         KVNIWg6neQOxWp8IlZRtijZT1z9qdfyMvTa+QZ8Zy3yB21KyCC3iwWQH+sbeoYYDPLQT
         kkIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8fBpBXNGID8msHI1+Ulx5sgPF9/qZ8NF7iyATmEWSIQ=;
        b=HvYqNYoR5T0XcFWt34YbobKtm0qU1D4PJAIqDpDoYLXRpTjbbdNHRLfa9lN+pWBB/K
         bKIoUELQvmVnQgCFVlE2hNUWWfntSnvAatNnd/zuNST2/P0vlqTzXbn6R0wUw9h+Llpp
         RRg3a0FuDnySSPA7R0WC1e/ScGj3o908I47rRpGCIV3aKddIQDkd0fqIQ3ZFhTX89YCG
         1XMH2JJpX2rDihRLCLXvnCvl1EtJQJBbq+ZdWUueyahd6Mb2O8b9FzGClB8nMNlA0I/w
         N1PIAdJDkpkRRJ2+N3xtAGuDvPbcGI4v+19bUJVWQnRbVC8qu4gvLvKGkYwUKtpleQRe
         Rd/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xflGXUS/5YVEvJ4DdMM8NzLabDgvKP6CX7X4jfCMTAZ/NQ1ky
	yIsvSR24x39FfD2TkADfQCE=
X-Google-Smtp-Source: ABdhPJwZgmz8Qn2jMEJNSZlLu7Wb35ry7ZU1i08Y6C0+WQo5AYGFBzWFloI7K40+Uko53GQ/ma0EFA==
X-Received: by 2002:a19:7002:: with SMTP id h2mr4507654lfc.62.1592881567838;
        Mon, 22 Jun 2020 20:06:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9597:: with SMTP id w23ls3640274ljh.8.gmail; Mon, 22 Jun
 2020 20:06:07 -0700 (PDT)
X-Received: by 2002:a2e:9a05:: with SMTP id o5mr9969005lji.60.1592881567114;
        Mon, 22 Jun 2020 20:06:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592881567; cv=none;
        d=google.com; s=arc-20160816;
        b=B0epVT+ntmlHd5Io4YFIbmHpOZ6KzrE+mLRtdxQ0ViZH8BJvcipwRAg1KZHJourKFR
         DSuvXxzP5t0GnsUZ/PDLvCUbPtXbn8LTqV6qdUz2wWUPHA9pUceodOnZu9+D0km247nH
         MmLG9jI/wnumpXFDPlWT1yTY6YinU7y7BJjyNlZgvBWWL+awEoQzsQBVXNh4HxjvDoQ4
         n+dYau5BCumh52XI1DLTnLrinyl6NYj5JmT0NLTE7E/+4YuT9NqCg6helKHVALFdW1mZ
         izBv7QJtJZYE4bLCFVFI4+hgmBRQu3QY/X67IFz21lE5yeD78PMZB2KzMiJHvLl5cEsU
         ucOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gDFZJhziI4bx1fhA+zo/2xzJxyNJbKp5Ip/Ak0hTxhc=;
        b=XVNc2WDlQ6IyVOXICDywjvVCEmlYcqjgEQ3vDNPG6W6h8codDLgxZurKztsKJUhUt4
         1UsxZjG2GGrXJNHRBLigQ6IkJRQkS6wA45lxOk4SwhXh9VdXvG2FG1o7u7VfaC+a9prR
         rtNqpnjTcmh9VtpLRgdOwvt/CRIwy/hnLY6kHGqa0ueyDZTHgJWYOOtND/R4LfVm7G3M
         GADtDkkUomzyWPV+85TsRxthWcc8RufTJzFqi+o6Y20FFK3G0icZhpHR0djmTMMftIQw
         q0jwVfoS8eiTfe4Q31xqvqQGDbmsQ5Tp/4KD+X2Sgb9SIJ3Iv4SUWIBS4pulqtxhxaj3
         VF0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XqiDAsWS;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id j14si773891lji.8.2020.06.22.20.06.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 20:06:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id z13so7136095wrw.5
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 20:06:07 -0700 (PDT)
X-Received: by 2002:adf:ded2:: with SMTP id i18mr22937284wrn.109.1592881566579;
        Mon, 22 Jun 2020 20:06:06 -0700 (PDT)
Received: from localhost.localdomain ([46.114.107.138])
        by smtp.gmail.com with ESMTPSA id z9sm1666015wmi.41.2020.06.22.20.06.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 20:06:06 -0700 (PDT)
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
Subject: [PATCH 5.7 v3] x86/crypto: aesni: Fix build with LLVM_IAS=1
Date: Tue, 23 Jun 2020 05:06:00 +0200
Message-Id: <20200623030600.18848-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XqiDAsWS;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
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
Suggested-by: Nick Desaulniers ndesaulniers@google.com
Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1050
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623030600.18848-1-sedat.dilek%40gmail.com.
