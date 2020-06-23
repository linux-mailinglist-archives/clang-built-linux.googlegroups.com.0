Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB266YX3QKGQEYKZMTIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CAC12047B8
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 04:56:43 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id i12sf5354625wrx.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 19:56:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592881003; cv=pass;
        d=google.com; s=arc-20160816;
        b=CNTTg6ld9tvRKA1rmSlYzlGJLAv2PWW283wWK84eE6I50wrpbAY+eoqwtOf7ana8E3
         HiuPIt6GWyVkgoZ6/V+hYxfrv7oKpogtSgvJUJgSsAiAca0vMB5vJBZBi0bcWl8Lqm9B
         /BiKdA4DzrIU7m1ImfBpQQ6OOdrLTM1LQFgQzftMac6cj4PZPvJ0KEGwn13+XM6JH2nc
         FqVjOaMehVSn4b7+jzBR145tckeWOJw61l2A1fYwa7md9Smk+x2ToJADCeGHetp1ZPKl
         vIZNKKmSL/QcE8CicdPdP+Zoer3epR/z5q/hCz/5d0HGBQOcZxg7KXtUv7lGGLTy8Ikh
         fstQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=oDRbUwBpZjuK/eYYLMwD5BqAfMs4jJBwpMR26p9CyNE=;
        b=dLOZS2w9abxVU3STPt/1lOh8Ei0UvKfAVgU0sOTHozUWlHvmQLdR876ZI7yaAY8LHU
         cPk4h4U83oQe42mkMuuak1EKXm10nRJ6+tzrU6m2sk3fLEr6p8jCCagJZtHIgmnirZeM
         Il4n6ISfuKIiMRaYn+Ofu0k0dGtx0I3uBjuM984ZCPx5UCXcsl/MaAQ+z/IAYO3z0+eU
         LGQGINR96OQVst+Y1Sxw9q0w5fS6sD1Q9dONw3RijSn/B4/m7n/vw7UMlkKkZ62fqxrm
         LrSF1cIYtsuUHYtpjgQJYUNGxIDvurJtxEwRx+qFRsjGBhO8JObYaWdO8HzKFXATyD8p
         kq6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vEQ7YxmZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oDRbUwBpZjuK/eYYLMwD5BqAfMs4jJBwpMR26p9CyNE=;
        b=qaGg4cH2/5I/KZas5OnA4KTR6pd4DBfj4fsjgmH7tQr/yataCR3JOehgwwOtj4R4iu
         CPv4Pa7CJXG4OrDK1rICgt9y1Eru7VBBQLFpXn+bEaSODVIC8+rgMAJp7dV4Y3a4H65n
         EWvyH98PGRQgTkvGJmNwggv2Ri2chsgTKCl7YBrVpKPIE1ZkvKwToNoagcUTK6BD1NYD
         dPDMiDXlJq08RKdXo75Ugxiu4pfEgw0x3YKsMdgVfpw7hJ+pKRSavV9+aYZenr81ejOk
         VZZFUVS9Y9Zn+Tk0eHg06C834Uj0rZBl2XLjuIh7YKBXwJcLvRzCxeVWAtm4Ky6AQyjN
         rP0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oDRbUwBpZjuK/eYYLMwD5BqAfMs4jJBwpMR26p9CyNE=;
        b=T9GBnxz2lsD+Dmq2Ky8QF8OmHNJ809Pdk2EBZvGkyTP8hb7B9BIognKrmfRNEqNJr1
         lhyg7xfuneS6egJvBUpv0AKNM5ZoaSXxNF18rdonmROf1VdpPy72gbA0+dxHzzXNR7zW
         iId+cPz+BEMibODPCo+UPBVYxnLjYggsQbCKXeHvN5PDh9pFsGJhr4GtAQuqmnf/QhS6
         SNa29Sc7FUEmcQ0cR3g8l6r4DLncQALlrORCgw4M5DolXwscczG/eYTEO6qMP8+y2uBU
         ZDMbmUn1oiKhkD6pjkTJmSg5Rif6D5GCHB+AOeE74MIzmnhmtUjjTxQ8zf1jJstqQQQP
         BvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oDRbUwBpZjuK/eYYLMwD5BqAfMs4jJBwpMR26p9CyNE=;
        b=mpnP4Omxij7u73SZlpvV7dUpqsmJSs9R4k4Bvnr6NktV3A5DlKVzO5fKKnrXwcpxeD
         reXLWRVLoCR1eMpe4pXqNoiKZaM4TOMfg28UlrhuqBN1oIVt+e0xUceYkk+1I1uoAGiW
         fPwBDvDBDM7fcFiaPFQ+nB/HuP+4X2hneNHVdgOA6u40IvScwxTuQ3fbYHCY6bi58Yu+
         UIJRslmlRgGYBo6o7VNPffEJcPsj9YvQrzf21wSUM0Fo96JxZteUr/beqLw4GQdgoxEF
         I5hcHIhVVhLqaGlWFNisryt92W64SGaMFKL/vwkwx8aGMA2vvlblp3wGkm7Kb2DNj78A
         5jdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tyAKRQeiksg23cEPl8hPpO6aECHH/c+JZ471+CLWWxeH4xB7Q
	ukY9U/V6rp3fzI15I4cIIMY=
X-Google-Smtp-Source: ABdhPJxYLj5iMOFdugI4khegdnx74sMDWNfIKDfnLJNdm5aoiFofMcLT2I7VVOpWQIXgrfbyCPLLuw==
X-Received: by 2002:adf:f751:: with SMTP id z17mr12734441wrp.114.1592881003174;
        Mon, 22 Jun 2020 19:56:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a94e:: with SMTP id s75ls596978wme.3.canary-gmail; Mon,
 22 Jun 2020 19:56:42 -0700 (PDT)
X-Received: by 2002:a1c:2987:: with SMTP id p129mr21975829wmp.49.1592881002629;
        Mon, 22 Jun 2020 19:56:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592881002; cv=none;
        d=google.com; s=arc-20160816;
        b=t/7Ph7MnQ2CYomzKAlq6lj29/SVsAlzfrTZ9/XBkLrJ84E4m8cPHzy0S1haJV9wgix
         CZCPvP252PB6QJyFnoUw6dEP9tRxF48ub3rpVn/teoOmdwUy9URjyK1PN6CQrz9Nw6M7
         D/yyRtOtlgYvaG37UxpnbNdKtc5h3Z1niGa+3j2+f618jagsOCm1JRqhmO7g+VzZSX3W
         a70u2XrmVSE4HN0TzZDBGEPqYu4bj68MbcbOUAAzDpp5p1eR22PshfjDcenmsmnGJUO4
         aun5YdhMwCiCt13+xU5Xzucj0GCraUnzvdJAy15aVqPRptdcf5BT2qTv5DbnMIPamTXA
         tCeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=q/BofogEfeQVfNgtBmc2nr4iEEvcla131+c62MG7kwA=;
        b=lzI19+lEpWQbY4IEUeE+S/VXAtLnCnc3X5E16jTnDIsFvnebLGzC4PU0Y4jpzjiNFZ
         wJYo7VMDv9OXPdZxqlIklauX62QRADQkgpeWIBgPifSys3uvDiCAjGDT06n/o6DCBH5V
         0t4O6RUY97mvFtL7S3/Q+7Wqk+NSxq1Fukm9aRaj94GfKHLk/YgnJQE11lQL7Ax40gM9
         cB6gmooyyw8t5hG+ku2Lyk0EnCxItG2HlVSyU6ah986rTycXh3hq52NkOP9M4bzkBCle
         t40GiIlXvm+XDqlhJgaekrOZnfvQqc1As/udHetg11OWlykLtie9OAmPASrZWqsr2GcO
         gLJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vEQ7YxmZ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j70si109000wrj.5.2020.06.22.19.56.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 19:56:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id g18so9825162wrm.2
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 19:56:42 -0700 (PDT)
X-Received: by 2002:a5d:5191:: with SMTP id k17mr14638169wrv.20.1592881002258;
        Mon, 22 Jun 2020 19:56:42 -0700 (PDT)
Received: from localhost.localdomain ([46.114.107.138])
        by smtp.gmail.com with ESMTPSA id 33sm14071179wri.16.2020.06.22.19.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 19:56:41 -0700 (PDT)
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
Subject: [PATCH 5.7 v2] x86/crypto: aesni: Fix build with LLVM_IAS=1
Date: Tue, 23 Jun 2020 04:56:28 +0200
Message-Id: <20200623025628.18467-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vEQ7YxmZ;       spf=pass
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
Suggested-by: Nick Desaulniers ndesaulniers@google.com
Cc: "ClangBuiltLinux" <clang-built-linux@googlegroups.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/1050
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200623025628.18467-1-sedat.dilek%40gmail.com.
