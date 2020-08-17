Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBU6B5L4QKGQEWOBUSNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id DF133246981
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 17:23:00 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id gf16sf10622252pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 08:23:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597677779; cv=pass;
        d=google.com; s=arc-20160816;
        b=qgEDDGM2XxG52Bgk0LquxbzsojiJqWNZEq3zHpSPOo5BThlkIiJmJTqlBMazqJ2c39
         waANcFo1rzX+MPx5AZC1r8mPOPSC+LHxyqR4NnDz/Ea6tltx8/5cNtUtID5Gs9YlxOym
         Y1KdJnVEI4VPLnOoTmLPzqkOFuo5kjOPGcJ4IDrWms/RBbSx85E78c+XovzC3vVyX1O6
         p9xej5XnXkhxUM0KtpIFZd9q24lSTm8+ccE67h0A2BXTIwnX+Oqzc4wCQ/70nNR/nJgk
         7QiozQPx5HBAHSNzDLD7+xKYxsH+U6Em4nl1B7ekh5PtVrs8lo0kfEcVEDf+NIX4bUh6
         Ai1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=/ekfk4G8PNUyKHJNoaHvGSk4tEXwDawjZhiKb/FQ0sQ=;
        b=qBzapYQXswlhoYRwBPCn7kiPIs+ofhE3Kvulv2dMtTuYm0fixKEKAh/7EaK5hsp+Nr
         g60eQq4MR12w+nJbeYrVzJrJwJvs6ONszY5rUbL1/QfeITeAEHlu20YixBmyBjcO6osD
         trL5QKCSsaEFrV24zfNVhRjjrH/qB22j7Mv65F873Wzy16Jx1T+DpXivx5pBUXamovBL
         r2Ocp3LRq76KIIL5RoKI2B33AV9g8JNo3UUZb8VIOyizokSju/en3Nu1Sb15PCBqHDiT
         0Gd3Qa6zkpYIeyCfAT/SYjppt4LQgPXxsCYojRJ3/Oob/gMwza3mnWESrg2b3TaNIq/u
         uvVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ntFytrDc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/ekfk4G8PNUyKHJNoaHvGSk4tEXwDawjZhiKb/FQ0sQ=;
        b=kl8kF9LnPVJq4ubWKa+dGjuZE6J2tWnfKwL5vd1y39YJRpsNDGXe5D8ux3AV6pOzRQ
         B0f05643IpUsz/AZDpfue0nxPPTUkgJh1hRlSJcPtyNiXeeymGMpHrNf6ArqXmVjGr5t
         kmnzY+HwVSlRG8kYBETFE8OpXoj4LxGE61WZF+jD0Tdo7Gk7EjkSrJMVcvL67wDCY+31
         FB5bm5hW69NKlRXlDMUB/apYPdtqXAMNWIteIPJsxkMwLG8wCI6ldH8TBAd0GaAwDaYJ
         jLzHEVaT3Q83hm/hGb9ScGFanD4+ZPmvNVitAC8GDPe1gAvU1QT2lR0pHe7C2Rmm88ZI
         GDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ekfk4G8PNUyKHJNoaHvGSk4tEXwDawjZhiKb/FQ0sQ=;
        b=hlG0F55QOZN8WPlTQL3HwA2CU5Zohavx5MXyZSRwBVUhYehGAnQ02AV/hmg0T3o+ew
         ZZgN7S9+DGjIl0p86YtZmiF/8KQqjU9MrBX254fBzFWkK/rKZV2QjJP94dQVtS13/ylc
         Sl/iq2L/G/EbY41qVFacY9VpG8Vgs8isQWEEankLhhD1fyf1J4HYU5qmdRNGHe7g79mJ
         Blp3OeKnOzJYgdh1WYzUPQTlTHHuugJR1JXoFVv2RxS6tnYSai8+HiT4p7QqNzJJfUCk
         haQnCgbwh6kBMm53ywBYXxX+1VOH7bjNne6LOP0NJdcVweTloazmzjVhUMG0jHdvkPEc
         IurQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531t8SROiRFSQ516fT09yGyrk7jI/J5WdNjyc+zL8K4BMol/HkFy
	aP4hCI6vFwdXIcytGWBLDE8=
X-Google-Smtp-Source: ABdhPJytOgwNf3x1P0aUYFLmTKXJUxs0nZjA9UpVXTQf8Vpv0TlyC3BzMnss5qoJ7kPPFnyTnvUS5A==
X-Received: by 2002:a62:1c0f:: with SMTP id c15mr11394499pfc.235.1597677779470;
        Mon, 17 Aug 2020 08:22:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c8:: with SMTP id j8ls7144140plt.8.gmail; Mon, 17
 Aug 2020 08:22:59 -0700 (PDT)
X-Received: by 2002:a17:90a:b88c:: with SMTP id o12mr9229744pjr.187.1597677778958;
        Mon, 17 Aug 2020 08:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597677778; cv=none;
        d=google.com; s=arc-20160816;
        b=rtIpnBWCbnlnltiSX3T7aet9oy7ni2CoyYsPlnb2yi6sSIgdYF9m6i8HS1Dj8pLwsx
         FwBeWTKt3MDwI7bojahFWkVMgD39mofdAgEXlV4CRHdrrVXNU45tZDEZEEPa2gPF1QCV
         oRhFBcb3G5+5PsBR+Oth9OfE3h7E3vwxhxaJtZeUUZzYE8XbjFdG7jsE0GeRtNqlAjJZ
         F9Oy4g1YPY8ZGAGp/pomlqweUkbD57PLmvgoARhzgnha8TKj3WVKBNlQEF5OgtfSwyjJ
         1OPED0jJSOdZblBUrC6npBs4MJZOPU5/oK/toxTKBNyWg1qrZLzCAmHVb2yA6ioSbrlO
         gVBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iX+hY1md/YHirUoJLEg4yy+YuIT6T57ViKEpb8mi73E=;
        b=pNZ70vZpd2+lla+kUQUiXp2Bzbc7f/t3EMJ36u5BoBu6IB1ebNQagrL9rSgfk5vh6E
         8Jp7VKcRRVQLA4lbzadFuu/o9AZXfNwSHjXdAgxidqV6eNQKhHsBdfqBrG/SVQrokBqA
         TkISllUIml39/y4uA0sVTIhzCE0bJxYebYkmXM1lreP5t0um1sWJCOZwKl4paUu3vhNv
         Md5R9oXUE/8/uYib4g8iIK0K47YMcGEc1l7pBi8z8pJc5EFJVBBW4pIC4onS5fEDaFCW
         OXcVcPzAn5iA8lmJ5MoIrVJNj0nczwJwilSL5Tudt1fnW5A0nxEByXkYTLyrRCZyGJ3n
         Cnqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ntFytrDc;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a24si933808pfk.6.2020.08.17.08.22.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 08:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2D18B22B40;
	Mon, 17 Aug 2020 15:22:58 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Craig Topper <craig.topper@intel.com>,
	Craig Topper <craig.topper@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"ClangBuiltLinux" <clang-built-linux@googlegroups.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 5.8 087/464] crypto: aesni - Fix build with LLVM_IAS=1
Date: Mon, 17 Aug 2020 17:10:40 +0200
Message-Id: <20200817143837.955169107@linuxfoundation.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200817143833.737102804@linuxfoundation.org>
References: <20200817143833.737102804@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ntFytrDc;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

From: Sedat Dilek <sedat.dilek@gmail.com>

[ Upstream commit 3347c8a079d67af21760a78cc5f2abbcf06d9571 ]

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
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/crypto/aesni-intel_asm.S | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/x86/crypto/aesni-intel_asm.S b/arch/x86/crypto/aesni-intel_asm.S
index 54e7d15dbd0d5..7d4298e6d4cbd 100644
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
2.25.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200817143837.955169107%40linuxfoundation.org.
