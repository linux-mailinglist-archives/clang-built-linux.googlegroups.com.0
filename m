Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5UC7X3QKGQEJHWS7BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB9A213BD5
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 16:32:23 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id y16sf31662004wrr.20
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Jul 2020 07:32:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593786743; cv=pass;
        d=google.com; s=arc-20160816;
        b=DuFjf2VICXaWJguZ+MN6QqcVOnV3xxtThKVxvuVlCcC+IJC+iC6TTdZuogEKiI/gyA
         wcHXIC3wEeQ7FOYKI2MBm7GMS1xSE8zL8cInSWOOSAFdTmosnPDJY9tMHvfSwxdD/bsx
         givKvySSJOMqn4qESh5jQrJ0p+9LSoC0VIhUFQmfhyjyOlY+1UaMX4LIq0wlWlXRPhl8
         UoxUR6giZvKrXKV7SFkgKx4yJy4z3wj3cSz4X3i+vkUYOV8yyKvS0F7ECFBV/k/Z02tW
         woCj4VbvHLeZc+tKg8PUfealM+BmYDrtA4C3IcnV3QWAGThWTOi0IGuy9VGnA4+uR7lS
         NGTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=ACEu3fzGkWI5E/MMj1pW5da5KJ6eoby+fMYxJtbeyH8=;
        b=xWMAiwCYAOFbMR4vpjg8QAliU2eumdyC8oGqO47f4YG6weyonsfJVusG7DeaFu7mSE
         kmhk15SDlIM6sLh7j+tJWqtVvUnSC6JSvbrhnUXt5DHMJX9jTb5M4huBUEaf8pQK2dNK
         Akav7HOtrLyeChlcQtjqb4TU7KEeKdBW/0f8Rmqp555zbEnMW/KdmZUy6ElGPg4zZ1yz
         WKuDCRDoKOa1vJ14HF/4aRO/GSQiiulVqAfSd8RHAI+y/bsC64YMTPQuq2m0bWBeQ0Ph
         Lc6C8kfuGz40J1RT1Lo8Vv+iEAKKGxAcUi0xSLEwfObTscyh8F9qiNwtJN9APWqXd4py
         iwvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RQPqUTY/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ACEu3fzGkWI5E/MMj1pW5da5KJ6eoby+fMYxJtbeyH8=;
        b=OJJGwBh9U1Qq/qHG2IQAeq3TD8E6q2ptn/XHFgsWXLy22cns9IJubTwT1hwKxYb0uG
         /vR1qUm5zpVpgw5tc5wqT1VhPVYiKSp08bOuC9aJbClBxa7Lxbq7Qtn0sjWALfe1UP8T
         UKUoVLTB+JfTElsIO6Z3f/8sDbW5Cc0cTFSom0DiPdlW4DHqmZYO/c/xJAF+okK7CBto
         c1mL8eN86rLTeNGNCPCnHNktXJ3ATZISqZ+56ZtCv/RGebKQItrYkA/ANNPY87cJuSHq
         5K7fcPEHxdniZO4ormziGq3RqdhObiG44OWvW54QYcsdqKt3ja81cQNNm14figZ0QZo9
         zjQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ACEu3fzGkWI5E/MMj1pW5da5KJ6eoby+fMYxJtbeyH8=;
        b=dAT/TexLiL5U7Ira6cUhzJWog2tLepU9fFI567bB8FDHKW8i5ZSCtO16W7ZeNaSwxE
         h6nUAVGljTr7vyoQ5WvgWXDzDlKYtmcPL8se6r7i0CL0ckPZhKMsuEjL6FZHPZJGrrjV
         UWXphlDb9T+C+hMEyTtnoqEGmE5HE1NUIRD7zDyzDoeR8JVnmrB1c+98yykwCkMlUvvb
         sHs055a9Vy2cKTyYm/g0Snej2z+0QKGUiDJXDKORNHQ7CuVLhxQTcAu96igIK1xW/PuN
         yVDXnIs/+xA2uoPVFWaskaD/VDs1qaajtggkIJauNImIR9+3FcX8XEG81+7OFYSJFllz
         s+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ACEu3fzGkWI5E/MMj1pW5da5KJ6eoby+fMYxJtbeyH8=;
        b=E5bX+COa4AwJC699DWgr1kFCHw9jvqfjY7L0MagU+gN+GwJA0kEy5QTOyFGWcLS2j2
         4ykfoWL4CAFmY/WXtkjSPPbEKuq3Vgl3rzd7S41JN+tPcybnfhG5USKqx0BZTtBKi7Wf
         z0ZzvBm8ueCwvTGNXDWAxKbLcUR1UKPjICL1BnrEhxjYnpWMKc3w+jr/i5Ck/8FaNPsW
         a7+Kgap1sECqufyOo4OBifAX8RalxPYvHBA7V15khIbcWNODW1TbfWbxevviziTl50IX
         AVEmlowtzotkuMhkS8akWcY0CsNzCTFtzTNf0QrkKAvEhIYuuze2Fym6YdsENVoDrP1r
         A2Gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UXG1hLGLaGTdWtQQgQXmK5HdHQMs4MowE2+w0g5T+yxENTPWm
	X2jkiO93yL8rReeVn/IUfuo=
X-Google-Smtp-Source: ABdhPJze2VTc8ap9iYlwx2c7f5bl0z/ASIcLU+wNfLqJnwx5tMk4flEkmOuw5KF5Dn1W6BcVHzpzgw==
X-Received: by 2002:a1c:2183:: with SMTP id h125mr39337999wmh.83.1593786742899;
        Fri, 03 Jul 2020 07:32:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82ca:: with SMTP id 68ls1571388wrc.2.gmail; Fri, 03 Jul
 2020 07:32:22 -0700 (PDT)
X-Received: by 2002:a5d:55cf:: with SMTP id i15mr40414509wrw.204.1593786742306;
        Fri, 03 Jul 2020 07:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593786742; cv=none;
        d=google.com; s=arc-20160816;
        b=BCGBwZFsLapETL8bpRlPZ++TwNadIX5cceEWcEg+2o/X4phWqz4lz18Jht1uNB34aH
         tELJpjldFHpL7JWWIqOaNuHpZfG+URjegiIisdB4V9qHFe6nPTJKfq4VopWDSO8Qd8Ns
         zhDlVm26xWaP08+fil7L/lbavysH631LHm+LpqVArzFttpljmkrF+DLzxlzOb3vwu11U
         tK9Pfyk5nLSZIqrg+Rj/DmcEHhjZ5e9XELG1QIu+j/ZutJlbnZQ4qabsVMegoyoLl2ml
         aJZFPxtXxDnMy1FzQEBIn28UA5pnANQsUOSH1kEnNm7FSR2x4ttjLe4SLGV2eBG2qsf8
         l1CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=aBK4xIyiQPwE9WexL/fXXMXlCGSw5m4ZqDOwI6txEYA=;
        b=W5uFrVFd4lc2Oqm6jBN3LLJH6VweaFpXXfkrjxj6ESdnAyHtEnCzD5qD80EOpqD1iR
         J1sERZ5CYsgurN6ULqJbMkjiK38xgsD8iXVmIM32SOyLpcvyXI01Fvd846H/6RpoReR4
         5mfcxXRSRwTCgN23u9a4eTyX/SbFKYanAK7PIs6Yy+TpL3hdhQJRe8cReQB6fLTeyuZE
         A1ed6fkMJDz6HFxce9u1rPLmhclwXEtBsyXCdyew34BmnD6YsbbDLpUp+MEUUT4aN1KY
         5JDs4QF9i5RNr7CrzGSFZTPdKP4iPFbuAM6Decmjrhg/RD+3gPrW8F1E9u7j309+q2xb
         I+2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="RQPqUTY/";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id 14si670769wmk.1.2020.07.03.07.32.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2020 07:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id z2so10664032wrp.2
        for <clang-built-linux@googlegroups.com>; Fri, 03 Jul 2020 07:32:22 -0700 (PDT)
X-Received: by 2002:a05:6000:1006:: with SMTP id a6mr35476948wrx.332.1593786741925;
        Fri, 03 Jul 2020 07:32:21 -0700 (PDT)
Received: from localhost.localdomain ([46.114.106.37])
        by smtp.gmail.com with ESMTPSA id z16sm14116810wrr.35.2020.07.03.07.32.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jul 2020 07:32:21 -0700 (PDT)
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
Subject: [PATCH v5] x86/crypto: aesni: Fix build with LLVM_IAS=1
Date: Fri,  3 Jul 2020 16:32:06 +0200
Message-Id: <20200703143206.3994-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="RQPqUTY/";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
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
Link: https://bugs.llvm.org/show_bug.cgi?id=24494
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
Changes v4->v5:
- Drop "5.7" tag from subject line as requested by Herbert Xu
- Add Link to LLVM bug #24494 (thanks Nick)

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200703143206.3994-1-sedat.dilek%40gmail.com.
