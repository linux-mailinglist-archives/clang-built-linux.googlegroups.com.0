Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBWH7XCEQMGQEM5ANBLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 173E23FCA15
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:34 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id s6-20020a170902b186b029012cbebe7236sf521923plr.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420953; cv=pass;
        d=google.com; s=arc-20160816;
        b=r0PoEAbK6/GWFjNLkbzId+p7f2csKjcT3hVb8gtilnW/E0Hf2zFadm+cEVH2recgUZ
         YqqYhF6q5PSW885AMCCJWEy8Fd0605kDkmZCckgnAqjaVNdv4h3dE+VCAe1SxWOYnkYH
         lLfk4sXE1XFuyxGPT1THPH4q7wveGQR12hgOz9SeDtw/rNPDgvvon0qM1eWbKcyL116f
         3OGGx2yCn8lonlLeRpas2mSWvJVVthhjf9jw0UBdTq0pj7a+jPmFTyHUnY0mCXqh4rwI
         GRNUskJ+mMoe5GONXoOjEsN9Z7n5IhYd/EKJOmii+Mgeg4E5xVrklnB0NF41QtF7l6Rd
         T3rw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=I/NruVQQVXcEGUN8g3V7UiUVfLi18V204sSegGltzdA=;
        b=BnHleFcb/He7nl07J/y7kFXQQrIvM3NUWceBzNfEXDWAQLenzfs6X18qceYQhY2xZB
         eNABo30RHMmkWWIlNqncruxc/2GAFI4N1+ans72YZ8RkLZEekojsLRdOzB4n0FlmeIpB
         CQlSw22fgW+X4Sz0U/frh9dwFlP7rX4kzVu6vSTHzDAs3ssrVzfdLYVWYhD+lwe7WR69
         zrCs+ZsYTvryECP9LZUd0QL3BsFFS8qsLVgeaMGoD4F0ztSFerwNNMQy18u78Uv8pFtD
         3mz+E01c6C3aNY8EBVGIdLGfhGX31Heco1YdIdkHAShSObYNDKsalbRYPP+3MG7HKyb5
         qS2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/NruVQQVXcEGUN8g3V7UiUVfLi18V204sSegGltzdA=;
        b=tXbMboYHST+KC50089Y8XWn3J0Oz0/pPSA9I2gRkqjhNFTcJtLlmrPPBGxMjWeM49Z
         9N5H9ta9GI29+HZAZnAui3Folml/N5kVxQ44SqFEngPiFk8AoaCOiEME+m9RM6jp6UUC
         xWxwFP9c8lblr61xCssqS6xULZtrxZ4LyncL/j/4gn2hjxk1VcgW2OmtsvZjGLzHIfJA
         X6wvymjG74dpqYh42bHv989MKiwGYpi/9zZjN2FJmv7UCjNVX7kDMz4LhrTlapytb8Iw
         Qjr92y6/Xs+OR4NonWplAXnquArrUOCRt6p2EtWN1DteUx6F+2+pdnM+4vtvGitgWeKv
         V7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/NruVQQVXcEGUN8g3V7UiUVfLi18V204sSegGltzdA=;
        b=OSlM7y4H1KOte2cPECoWSIH+tiSKg+9jemVUxng8Tzjl1gq5iFx+3UJPFkCoHBEBXK
         4HOYQsKWacOicbW36AcX0jOKUk44fur4AjqG8JDC9W9/ji8oDaOM9gpfM3plRoWQQ4iF
         cCRW0Ym4pFXfCDLHP+om91Rv0dhuDIKsLSczBh2tUZ2yOHSALp4n9TBRQ5ii4t5Fm+6o
         Ie/EiClYtQxK3df/f4BVs2x4k1zxHe57TYzYr4a0ukPnncUpYnBSyg24qcladYLba1Ho
         5KTyEGwdoKPFP7asPeM/v1M5Vmfy6kvS4ABBQp3JF0+52FLazYavc9ecRw4VyFdFrP9E
         qA5w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530onegzC6zie1IbPmdX5VSNh7ZDeX7NjFTGeZalMuwVbBc/hUDy
	x9tVmbk6wCPabwnYKoL+UMg=
X-Google-Smtp-Source: ABdhPJxUIIE7ULkei43RFMrV9u+XbqXLgF1umSCfZvarBxe1MMBrqN98hhjHPOGyNZZAzYztex/Tqw==
X-Received: by 2002:a17:90a:29a5:: with SMTP id h34mr5978668pjd.69.1630420952856;
        Tue, 31 Aug 2021 07:42:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6643:: with SMTP id z3ls8409847pgv.3.gmail; Tue, 31 Aug
 2021 07:42:32 -0700 (PDT)
X-Received: by 2002:a05:6a00:230e:b029:3c4:24ff:969d with SMTP id h14-20020a056a00230eb02903c424ff969dmr28961747pfh.44.1630420952283;
        Tue, 31 Aug 2021 07:42:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420952; cv=none;
        d=google.com; s=arc-20160816;
        b=WrT2uTNFpsmW8c1FCJsLOkBGacYBh6aCFZrP6ftlh2n+9105S3COwPMy2a3xzsmZQW
         i+dKtBaXblT1Ls3wPdJ0XRbua+jgnfxkKI5Wc0Awcs7Xjz+eXZZh7/h8Dys5t6mk8Ato
         Ax2yApBJTyfAGZvtlX3MweTeQBc9hAh8h3WldN+R749iuA9vNXJ5BEZ4QWBZfW2aLjVE
         C4PLqrTDp/3OJyOaru96Fv4LxEwOTraroMFjXPpa6zPcX7IiFw+FG2sVCwu03hJcELud
         Xue67omXfeG05CaAc8JJQ6RkSP0GMBJRd2ZfWV03AKuzUMOjrvOuIxmIt7JaPYXeOwN3
         LQjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=2nrlM6kjWCfcbH4hVCfjKCo70UkVdDiBRzg6tyZWzqI=;
        b=k40iUsfcDDyl3TmT6LOFRcub0a4oFqu27QuTbRdfWkjlvAotABniEb81J6/6CpRVhD
         j72KS1CF9D/rh9SvHg+a6T89XRqvcHc/j5dQgC0yLFN2hPubiK59v4QZgYxHc6grnFdg
         fZNp0rYoCqfAMEYZkCgvjjptytrhD1tE9kQErf/HNHuTDTwmlDLhcUfeE66r8tdtji25
         NC8H5id9gC1G87n1FyLeUdhUNRi60YeWCcVDt3FNRq7KlPAM6Oooc4pJy8LVou0nH+1T
         HWSLDAUgqcbF9WPa+tUgjOsYE12QQY8RPOv+F3n3CMPp2Q2gejJnAdAhTZuZY4yQLhbH
         JseQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id r9si1031373plo.0.2021.08.31.07.42.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="218533018"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="218533018"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="687735696"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by fmsmga006.fm.intel.com with ESMTP; 31 Aug 2021 07:42:27 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfi002209;
	Tue, 31 Aug 2021 15:42:24 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 18/22] arm64/crypto: conditionally place ASM functions into separate sections
Date: Tue, 31 Aug 2021 16:41:10 +0200
Message-Id: <20210831144114.154-19-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.65
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

The resulting LD script generated by FG-KASLR script contains a size
assertion for the input .text function. In case if it's not empty,
the build will stop plug a potentional layout leakage.
As FG-KASLR for modules tends to be arch-independent, we should take
care of the modular ASM code of every architecture to not break the
build.
This is the ARM64 part.

Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 arch/arm64/crypto/aes-ce-ccm-core.S   | 16 +++++------
 arch/arm64/crypto/aes-ce-core.S       | 16 +++++------
 arch/arm64/crypto/aes-ce.S            |  4 +--
 arch/arm64/crypto/aes-cipher-core.S   |  8 +++---
 arch/arm64/crypto/aes-modes.S         | 16 +++++------
 arch/arm64/crypto/aes-neon.S          |  4 +--
 arch/arm64/crypto/aes-neonbs-core.S   | 38 +++++++++++++--------------
 arch/arm64/crypto/chacha-neon-core.S  | 18 ++++++-------
 arch/arm64/crypto/crct10dif-ce-core.S | 14 +++++-----
 arch/arm64/crypto/ghash-ce-core.S     | 24 ++++++++---------
 arch/arm64/crypto/nh-neon-core.S      |  4 +--
 arch/arm64/crypto/poly1305-armv8.pl   | 17 ++++++++++++
 arch/arm64/crypto/sha1-ce-core.S      |  4 +--
 arch/arm64/crypto/sha2-ce-core.S      |  4 +--
 arch/arm64/crypto/sha3-ce-core.S      |  4 +--
 arch/arm64/crypto/sha512-armv8.pl     | 11 ++++++++
 arch/arm64/crypto/sha512-ce-core.S    |  4 +--
 arch/arm64/crypto/sm3-ce-core.S       |  4 +--
 arch/arm64/crypto/sm4-ce-core.S       |  4 +--
 19 files changed, 121 insertions(+), 93 deletions(-)

diff --git a/arch/arm64/crypto/aes-ce-ccm-core.S b/arch/arm64/crypto/aes-ce-ccm-core.S
index 99a028e298ed..e9a7c7bfecda 100644
--- a/arch/arm64/crypto/aes-ce-ccm-core.S
+++ b/arch/arm64/crypto/aes-ce-ccm-core.S
@@ -15,7 +15,7 @@
 	 * void ce_aes_ccm_auth_data(u8 mac[], u8 const in[], u32 abytes,
 	 *			     u32 *macp, u8 const rk[], u32 rounds);
 	 */
-SYM_FUNC_START(ce_aes_ccm_auth_data)
+SYM_FUNC_START_SECTION(ce_aes_ccm_auth_data)
 	ldr	w8, [x3]			/* leftover from prev round? */
 	ld1	{v0.16b}, [x0]			/* load mac */
 	cbz	w8, 1f
@@ -81,13 +81,13 @@ SYM_FUNC_START(ce_aes_ccm_auth_data)
 	st1	{v0.16b}, [x0]
 10:	str	w8, [x3]
 	ret
-SYM_FUNC_END(ce_aes_ccm_auth_data)
+SYM_FUNC_END_SECTION(ce_aes_ccm_auth_data)
 
 	/*
 	 * void ce_aes_ccm_final(u8 mac[], u8 const ctr[], u8 const rk[],
 	 * 			 u32 rounds);
 	 */
-SYM_FUNC_START(ce_aes_ccm_final)
+SYM_FUNC_START_SECTION(ce_aes_ccm_final)
 	ld1	{v3.4s}, [x2], #16		/* load first round key */
 	ld1	{v0.16b}, [x0]			/* load mac */
 	cmp	w3, #12				/* which key size? */
@@ -121,7 +121,7 @@ SYM_FUNC_START(ce_aes_ccm_final)
 	eor	v0.16b, v0.16b, v1.16b		/* en-/decrypt the mac */
 	st1	{v0.16b}, [x0]			/* store result */
 	ret
-SYM_FUNC_END(ce_aes_ccm_final)
+SYM_FUNC_END_SECTION(ce_aes_ccm_final)
 
 	.macro	aes_ccm_do_crypt,enc
 	ldr	x8, [x6, #8]			/* load lower ctr */
@@ -212,10 +212,10 @@ CPU_LE(	rev	x8, x8			)
 	 * 			   u8 const rk[], u32 rounds, u8 mac[],
 	 * 			   u8 ctr[]);
 	 */
-SYM_FUNC_START(ce_aes_ccm_encrypt)
+SYM_FUNC_START_SECTION(ce_aes_ccm_encrypt)
 	aes_ccm_do_crypt	1
-SYM_FUNC_END(ce_aes_ccm_encrypt)
+SYM_FUNC_END_SECTION(ce_aes_ccm_encrypt)
 
-SYM_FUNC_START(ce_aes_ccm_decrypt)
+SYM_FUNC_START_SECTION(ce_aes_ccm_decrypt)
 	aes_ccm_do_crypt	0
-SYM_FUNC_END(ce_aes_ccm_decrypt)
+SYM_FUNC_END_SECTION(ce_aes_ccm_decrypt)
diff --git a/arch/arm64/crypto/aes-ce-core.S b/arch/arm64/crypto/aes-ce-core.S
index e52e13eb8fdb..abe6ee0501bf 100644
--- a/arch/arm64/crypto/aes-ce-core.S
+++ b/arch/arm64/crypto/aes-ce-core.S
@@ -8,7 +8,7 @@
 
 	.arch		armv8-a+crypto
 
-SYM_FUNC_START(__aes_ce_encrypt)
+SYM_FUNC_START_SECTION(__aes_ce_encrypt)
 	sub		w3, w3, #2
 	ld1		{v0.16b}, [x2]
 	ld1		{v1.4s}, [x0], #16
@@ -34,9 +34,9 @@ SYM_FUNC_START(__aes_ce_encrypt)
 	eor		v0.16b, v0.16b, v3.16b
 	st1		{v0.16b}, [x1]
 	ret
-SYM_FUNC_END(__aes_ce_encrypt)
+SYM_FUNC_END_SECTION(__aes_ce_encrypt)
 
-SYM_FUNC_START(__aes_ce_decrypt)
+SYM_FUNC_START_SECTION(__aes_ce_decrypt)
 	sub		w3, w3, #2
 	ld1		{v0.16b}, [x2]
 	ld1		{v1.4s}, [x0], #16
@@ -62,23 +62,23 @@ SYM_FUNC_START(__aes_ce_decrypt)
 	eor		v0.16b, v0.16b, v3.16b
 	st1		{v0.16b}, [x1]
 	ret
-SYM_FUNC_END(__aes_ce_decrypt)
+SYM_FUNC_END_SECTION(__aes_ce_decrypt)
 
 /*
  * __aes_ce_sub() - use the aese instruction to perform the AES sbox
  *                  substitution on each byte in 'input'
  */
-SYM_FUNC_START(__aes_ce_sub)
+SYM_FUNC_START_SECTION(__aes_ce_sub)
 	dup		v1.4s, w0
 	movi		v0.16b, #0
 	aese		v0.16b, v1.16b
 	umov		w0, v0.s[0]
 	ret
-SYM_FUNC_END(__aes_ce_sub)
+SYM_FUNC_END_SECTION(__aes_ce_sub)
 
-SYM_FUNC_START(__aes_ce_invert)
+SYM_FUNC_START_SECTION(__aes_ce_invert)
 	ld1		{v0.4s}, [x1]
 	aesimc		v1.16b, v0.16b
 	st1		{v1.4s}, [x0]
 	ret
-SYM_FUNC_END(__aes_ce_invert)
+SYM_FUNC_END_SECTION(__aes_ce_invert)
diff --git a/arch/arm64/crypto/aes-ce.S b/arch/arm64/crypto/aes-ce.S
index 1dc5bbbfeed2..909d2dcf0907 100644
--- a/arch/arm64/crypto/aes-ce.S
+++ b/arch/arm64/crypto/aes-ce.S
@@ -9,8 +9,8 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-#define AES_FUNC_START(func)		SYM_FUNC_START(ce_ ## func)
-#define AES_FUNC_END(func)		SYM_FUNC_END(ce_ ## func)
+#define AES_FUNC_START(func)		SYM_FUNC_START_SECTION(ce_ ## func)
+#define AES_FUNC_END(func)		SYM_FUNC_END_SECTION(ce_ ## func)
 
 	.arch		armv8-a+crypto
 
diff --git a/arch/arm64/crypto/aes-cipher-core.S b/arch/arm64/crypto/aes-cipher-core.S
index c9d6955f8404..e47c0aef7a7d 100644
--- a/arch/arm64/crypto/aes-cipher-core.S
+++ b/arch/arm64/crypto/aes-cipher-core.S
@@ -122,11 +122,11 @@ CPU_BE(	rev		w7, w7		)
 	ret
 	.endm
 
-SYM_FUNC_START(__aes_arm64_encrypt)
+SYM_FUNC_START_SECTION(__aes_arm64_encrypt)
 	do_crypt	fround, crypto_ft_tab, crypto_ft_tab + 1, 2
-SYM_FUNC_END(__aes_arm64_encrypt)
+SYM_FUNC_END_SECTION(__aes_arm64_encrypt)
 
+SYM_FUNC_START_SECTION(__aes_arm64_decrypt)
 	.align		5
-SYM_FUNC_START(__aes_arm64_decrypt)
 	do_crypt	iround, crypto_it_tab, crypto_aes_inv_sbox, 0
-SYM_FUNC_END(__aes_arm64_decrypt)
+SYM_FUNC_END_SECTION(__aes_arm64_decrypt)
diff --git a/arch/arm64/crypto/aes-modes.S b/arch/arm64/crypto/aes-modes.S
index b495de22bb38..5f7a43fa8438 100644
--- a/arch/arm64/crypto/aes-modes.S
+++ b/arch/arm64/crypto/aes-modes.S
@@ -22,26 +22,26 @@
 #define ST5(x...) x
 #endif
 
-SYM_FUNC_START_LOCAL(aes_encrypt_block4x)
+SYM_FUNC_START_LOCAL_SECTION(aes_encrypt_block4x)
 	encrypt_block4x	v0, v1, v2, v3, w3, x2, x8, w7
 	ret
-SYM_FUNC_END(aes_encrypt_block4x)
+SYM_FUNC_END_SECTION(aes_encrypt_block4x)
 
-SYM_FUNC_START_LOCAL(aes_decrypt_block4x)
+SYM_FUNC_START_LOCAL_SECTION(aes_decrypt_block4x)
 	decrypt_block4x	v0, v1, v2, v3, w3, x2, x8, w7
 	ret
-SYM_FUNC_END(aes_decrypt_block4x)
+SYM_FUNC_END_SECTION(aes_decrypt_block4x)
 
 #if MAX_STRIDE == 5
-SYM_FUNC_START_LOCAL(aes_encrypt_block5x)
+SYM_FUNC_START_LOCAL_SECTION(aes_encrypt_block5x)
 	encrypt_block5x	v0, v1, v2, v3, v4, w3, x2, x8, w7
 	ret
-SYM_FUNC_END(aes_encrypt_block5x)
+SYM_FUNC_END_SECTION(aes_encrypt_block5x)
 
-SYM_FUNC_START_LOCAL(aes_decrypt_block5x)
+SYM_FUNC_START_LOCAL_SECTION(aes_decrypt_block5x)
 	decrypt_block5x	v0, v1, v2, v3, v4, w3, x2, x8, w7
 	ret
-SYM_FUNC_END(aes_decrypt_block5x)
+SYM_FUNC_END_SECTION(aes_decrypt_block5x)
 #endif
 
 	/*
diff --git a/arch/arm64/crypto/aes-neon.S b/arch/arm64/crypto/aes-neon.S
index e47d3ec2cfb4..9c8d6cccd2cd 100644
--- a/arch/arm64/crypto/aes-neon.S
+++ b/arch/arm64/crypto/aes-neon.S
@@ -8,8 +8,8 @@
 #include <linux/linkage.h>
 #include <asm/assembler.h>
 
-#define AES_FUNC_START(func)		SYM_FUNC_START(neon_ ## func)
-#define AES_FUNC_END(func)		SYM_FUNC_END(neon_ ## func)
+#define AES_FUNC_START(func)		SYM_FUNC_START_SECTION(neon_ ## func)
+#define AES_FUNC_END(func)		SYM_FUNC_END_SECTION(neon_ ## func)
 
 	xtsmask		.req	v7
 	cbciv		.req	v7
diff --git a/arch/arm64/crypto/aes-neonbs-core.S b/arch/arm64/crypto/aes-neonbs-core.S
index a3405b8c344b..582343f18ad0 100644
--- a/arch/arm64/crypto/aes-neonbs-core.S
+++ b/arch/arm64/crypto/aes-neonbs-core.S
@@ -380,7 +380,7 @@ ISRM0:	.octa		0x0306090c00070a0d01040b0e0205080f
 	/*
 	 * void aesbs_convert_key(u8 out[], u32 const rk[], int rounds)
 	 */
-SYM_FUNC_START(aesbs_convert_key)
+SYM_FUNC_START_SECTION(aesbs_convert_key)
 	ld1		{v7.4s}, [x1], #16		// load round 0 key
 	ld1		{v17.4s}, [x1], #16		// load round 1 key
 
@@ -425,10 +425,10 @@ SYM_FUNC_START(aesbs_convert_key)
 	eor		v17.16b, v17.16b, v7.16b
 	str		q17, [x0]
 	ret
-SYM_FUNC_END(aesbs_convert_key)
+SYM_FUNC_END_SECTION(aesbs_convert_key)
 
+SYM_FUNC_START_LOCAL_SECTION(aesbs_encrypt8)
 	.align		4
-SYM_FUNC_START_LOCAL(aesbs_encrypt8)
 	ldr		q9, [bskey], #16		// round 0 key
 	ldr		q8, M0SR
 	ldr		q24, SR
@@ -488,10 +488,10 @@ SYM_FUNC_START_LOCAL(aesbs_encrypt8)
 	eor		v2.16b, v2.16b, v12.16b
 	eor		v5.16b, v5.16b, v12.16b
 	ret
-SYM_FUNC_END(aesbs_encrypt8)
+SYM_FUNC_END_SECTION(aesbs_encrypt8)
 
+SYM_FUNC_START_LOCAL_SECTION(aesbs_decrypt8)
 	.align		4
-SYM_FUNC_START_LOCAL(aesbs_decrypt8)
 	lsl		x9, rounds, #7
 	add		bskey, bskey, x9
 
@@ -553,7 +553,7 @@ SYM_FUNC_START_LOCAL(aesbs_decrypt8)
 	eor		v3.16b, v3.16b, v12.16b
 	eor		v5.16b, v5.16b, v12.16b
 	ret
-SYM_FUNC_END(aesbs_decrypt8)
+SYM_FUNC_END_SECTION(aesbs_decrypt8)
 
 	/*
 	 * aesbs_ecb_encrypt(u8 out[], u8 const in[], u8 const rk[], int rounds,
@@ -619,13 +619,13 @@ SYM_FUNC_END(aesbs_decrypt8)
 	ret
 	.endm
 
+SYM_FUNC_START_SECTION(aesbs_ecb_encrypt)
 	.align		4
-SYM_FUNC_START(aesbs_ecb_encrypt)
 	__ecb_crypt	aesbs_encrypt8, v0, v1, v4, v6, v3, v7, v2, v5
-SYM_FUNC_END(aesbs_ecb_encrypt)
+SYM_FUNC_END_SECTION(aesbs_ecb_encrypt)
 
+SYM_FUNC_START_SECTION(aesbs_ecb_decrypt)
 	.align		4
-SYM_FUNC_START(aesbs_ecb_decrypt)
 	__ecb_crypt	aesbs_decrypt8, v0, v1, v6, v4, v2, v7, v3, v5
 SYM_FUNC_END(aesbs_ecb_decrypt)
 
@@ -633,8 +633,8 @@ SYM_FUNC_END(aesbs_ecb_decrypt)
 	 * aesbs_cbc_decrypt(u8 out[], u8 const in[], u8 const rk[], int rounds,
 	 *		     int blocks, u8 iv[])
 	 */
+SYM_FUNC_START_SECTION(aesbs_cbc_decrypt)
 	.align		4
-SYM_FUNC_START(aesbs_cbc_decrypt)
 	frame_push	6
 
 	mov		x19, x0
@@ -718,7 +718,7 @@ SYM_FUNC_START(aesbs_cbc_decrypt)
 
 2:	frame_pop
 	ret
-SYM_FUNC_END(aesbs_cbc_decrypt)
+SYM_FUNC_END_SECTION(aesbs_cbc_decrypt)
 
 	.macro		next_tweak, out, in, const, tmp
 	sshr		\tmp\().2d,  \in\().2d,   #63
@@ -734,7 +734,7 @@ SYM_FUNC_END(aesbs_cbc_decrypt)
 	 * aesbs_xts_decrypt(u8 out[], u8 const in[], u8 const rk[], int rounds,
 	 *		     int blocks, u8 iv[])
 	 */
-SYM_FUNC_START_LOCAL(__xts_crypt8)
+SYM_FUNC_START_LOCAL_SECTION(__xts_crypt8)
 	mov		x6, #1
 	lsl		x6, x6, x23
 	subs		w23, w23, #8
@@ -787,7 +787,7 @@ SYM_FUNC_START_LOCAL(__xts_crypt8)
 0:	mov		bskey, x21
 	mov		rounds, x22
 	br		x16
-SYM_FUNC_END(__xts_crypt8)
+SYM_FUNC_END_SECTION(__xts_crypt8)
 
 	.macro		__xts_crypt, do8, o0, o1, o2, o3, o4, o5, o6, o7
 	frame_push	6, 64
@@ -851,13 +851,13 @@ SYM_FUNC_END(__xts_crypt8)
 	ret
 	.endm
 
-SYM_FUNC_START(aesbs_xts_encrypt)
+SYM_FUNC_START_SECTION(aesbs_xts_encrypt)
 	__xts_crypt	aesbs_encrypt8, v0, v1, v4, v6, v3, v7, v2, v5
-SYM_FUNC_END(aesbs_xts_encrypt)
+SYM_FUNC_END_SECTION(aesbs_xts_encrypt)
 
-SYM_FUNC_START(aesbs_xts_decrypt)
+SYM_FUNC_START_SECTION(aesbs_xts_decrypt)
 	__xts_crypt	aesbs_decrypt8, v0, v1, v6, v4, v2, v7, v3, v5
-SYM_FUNC_END(aesbs_xts_decrypt)
+SYM_FUNC_END_SECTION(aesbs_xts_decrypt)
 
 	.macro		next_ctr, v
 	mov		\v\().d[1], x8
@@ -871,7 +871,7 @@ SYM_FUNC_END(aesbs_xts_decrypt)
 	 * aesbs_ctr_encrypt(u8 out[], u8 const in[], u8 const rk[],
 	 *		     int rounds, int blocks, u8 iv[], u8 final[])
 	 */
-SYM_FUNC_START(aesbs_ctr_encrypt)
+SYM_FUNC_START_SECTION(aesbs_ctr_encrypt)
 	frame_push	8
 
 	mov		x19, x0
@@ -998,4 +998,4 @@ CPU_LE(	rev		x8, x8		)
 7:	cbz		x25, 8b
 	st1		{v5.16b}, [x25]
 	b		8b
-SYM_FUNC_END(aesbs_ctr_encrypt)
+SYM_FUNC_END_SECTION(aesbs_ctr_encrypt)
diff --git a/arch/arm64/crypto/chacha-neon-core.S b/arch/arm64/crypto/chacha-neon-core.S
index b70ac76f2610..34a3087055f8 100644
--- a/arch/arm64/crypto/chacha-neon-core.S
+++ b/arch/arm64/crypto/chacha-neon-core.S
@@ -23,7 +23,6 @@
 #include <asm/cache.h>
 
 	.text
-	.align		6
 
 /*
  * chacha_permute - permute one block
@@ -36,7 +35,8 @@
  *
  * Clobbers: w3, x10, v4, v12
  */
-SYM_FUNC_START_LOCAL(chacha_permute)
+SYM_FUNC_START_LOCAL_SECTION(chacha_permute)
+	.align		6
 
 	adr_l		x10, ROT8
 	ld1		{v12.4s}, [x10]
@@ -104,9 +104,9 @@ SYM_FUNC_START_LOCAL(chacha_permute)
 	b.ne		.Ldoubleround
 
 	ret
-SYM_FUNC_END(chacha_permute)
+SYM_FUNC_END_SECTION(chacha_permute)
 
-SYM_FUNC_START(chacha_block_xor_neon)
+SYM_FUNC_START_SECTION(chacha_block_xor_neon)
 	// x0: Input state matrix, s
 	// x1: 1 data block output, o
 	// x2: 1 data block input, i
@@ -143,9 +143,9 @@ SYM_FUNC_START(chacha_block_xor_neon)
 
 	ldp		x29, x30, [sp], #16
 	ret
-SYM_FUNC_END(chacha_block_xor_neon)
+SYM_FUNC_END_SECTION(chacha_block_xor_neon)
 
-SYM_FUNC_START(hchacha_block_neon)
+SYM_FUNC_START_SECTION(hchacha_block_neon)
 	// x0: Input state matrix, s
 	// x1: output (8 32-bit words)
 	// w2: nrounds
@@ -163,7 +163,7 @@ SYM_FUNC_START(hchacha_block_neon)
 
 	ldp		x29, x30, [sp], #16
 	ret
-SYM_FUNC_END(hchacha_block_neon)
+SYM_FUNC_END_SECTION(hchacha_block_neon)
 
 	a0		.req	w12
 	a1		.req	w13
@@ -182,8 +182,8 @@ SYM_FUNC_END(hchacha_block_neon)
 	a14		.req	w27
 	a15		.req	w28
 
+SYM_FUNC_START_SECTION(chacha_4block_xor_neon)
 	.align		6
-SYM_FUNC_START(chacha_4block_xor_neon)
 	frame_push	10
 
 	// x0: Input state matrix, s
@@ -790,7 +790,7 @@ CPU_BE(	  rev		a15, a15	)
 	st1		{v28.16b-v31.16b}, [x7]		// overlapping stores
 3:	st1		{v24.16b-v27.16b}, [x1]
 	b		.Lout
-SYM_FUNC_END(chacha_4block_xor_neon)
+SYM_FUNC_END_SECTION(chacha_4block_xor_neon)
 
 	.section	".rodata", "a", %progbits
 	.align		L1_CACHE_SHIFT
diff --git a/arch/arm64/crypto/crct10dif-ce-core.S b/arch/arm64/crypto/crct10dif-ce-core.S
index dce6dcebfca1..54e121a56895 100644
--- a/arch/arm64/crypto/crct10dif-ce-core.S
+++ b/arch/arm64/crypto/crct10dif-ce-core.S
@@ -131,7 +131,7 @@
 	tbl		bd4.16b, {\bd\().16b}, perm4.16b
 	.endm
 
-SYM_FUNC_START_LOCAL(__pmull_p8_core)
+SYM_FUNC_START_LOCAL_SECTION(__pmull_p8_core)
 .L__pmull_p8_core:
 	ext		t4.8b, ad.8b, ad.8b, #1			// A1
 	ext		t5.8b, ad.8b, ad.8b, #2			// A2
@@ -194,7 +194,7 @@ SYM_FUNC_START_LOCAL(__pmull_p8_core)
 	eor		t4.16b, t4.16b, t5.16b
 	eor		t6.16b, t6.16b, t3.16b
 	ret
-SYM_FUNC_END(__pmull_p8_core)
+SYM_FUNC_END_SECTION(__pmull_p8_core)
 
 	.macro		__pmull_p8, rq, ad, bd, i
 	.ifnc		\bd, fold_consts
@@ -465,21 +465,21 @@ CPU_LE(	ext		v7.16b, v7.16b, v7.16b, #8	)
 //
 // Assumes len >= 16.
 //
-SYM_FUNC_START(crc_t10dif_pmull_p8)
+SYM_FUNC_START_SECTION(crc_t10dif_pmull_p8)
 	stp		x29, x30, [sp, #-16]!
 	mov		x29, sp
 	crc_t10dif_pmull p8
-SYM_FUNC_END(crc_t10dif_pmull_p8)
+SYM_FUNC_END_SECTION(crc_t10dif_pmull_p8)
 
-	.align		5
 //
 // u16 crc_t10dif_pmull_p64(u16 init_crc, const u8 *buf, size_t len);
 //
 // Assumes len >= 16.
 //
-SYM_FUNC_START(crc_t10dif_pmull_p64)
+SYM_FUNC_START_SECTION(crc_t10dif_pmull_p64)
+	.align			5
 	crc_t10dif_pmull	p64
-SYM_FUNC_END(crc_t10dif_pmull_p64)
+SYM_FUNC_END_SECTION(crc_t10dif_pmull_p64)
 
 	.section	".rodata", "a"
 	.align		4
diff --git a/arch/arm64/crypto/ghash-ce-core.S b/arch/arm64/crypto/ghash-ce-core.S
index 7868330dd54e..a69c1d4479db 100644
--- a/arch/arm64/crypto/ghash-ce-core.S
+++ b/arch/arm64/crypto/ghash-ce-core.S
@@ -350,13 +350,13 @@ CPU_LE(	rev64		T1.16b, T1.16b	)
 	 * void pmull_ghash_update(int blocks, u64 dg[], const char *src,
 	 *			   struct ghash_key const *k, const char *head)
 	 */
-SYM_FUNC_START(pmull_ghash_update_p64)
+SYM_FUNC_START_SECTION(pmull_ghash_update_p64)
 	__pmull_ghash	p64
-SYM_FUNC_END(pmull_ghash_update_p64)
+SYM_FUNC_END_SECTION(pmull_ghash_update_p64)
 
-SYM_FUNC_START(pmull_ghash_update_p8)
+SYM_FUNC_START_SECTION(pmull_ghash_update_p8)
 	__pmull_ghash	p8
-SYM_FUNC_END(pmull_ghash_update_p8)
+SYM_FUNC_END_SECTION(pmull_ghash_update_p8)
 
 	KS0		.req	v8
 	KS1		.req	v9
@@ -602,20 +602,20 @@ CPU_LE(	rev		w8, w8		)
 	 *			  struct ghash_key const *k, u64 dg[], u8 ctr[],
 	 *			  int rounds, u8 tag)
 	 */
-SYM_FUNC_START(pmull_gcm_encrypt)
+SYM_FUNC_START_SECTION(pmull_gcm_encrypt)
 	pmull_gcm_do_crypt	1
-SYM_FUNC_END(pmull_gcm_encrypt)
+SYM_FUNC_END_SECTION(pmull_gcm_encrypt)
 
 	/*
 	 * void pmull_gcm_decrypt(int blocks, u8 dst[], const u8 src[],
 	 *			  struct ghash_key const *k, u64 dg[], u8 ctr[],
 	 *			  int rounds, u8 tag)
 	 */
-SYM_FUNC_START(pmull_gcm_decrypt)
+SYM_FUNC_START_SECTION(pmull_gcm_decrypt)
 	pmull_gcm_do_crypt	0
-SYM_FUNC_END(pmull_gcm_decrypt)
+SYM_FUNC_END_SECTION(pmull_gcm_decrypt)
 
-SYM_FUNC_START_LOCAL(pmull_gcm_ghash_4x)
+SYM_FUNC_START_LOCAL_SECTION(pmull_gcm_ghash_4x)
 	movi		MASK.16b, #0xe1
 	shl		MASK.2d, MASK.2d, #57
 
@@ -696,9 +696,9 @@ SYM_FUNC_START_LOCAL(pmull_gcm_ghash_4x)
 	eor		XL.16b, XL.16b, T2.16b
 
 	ret
-SYM_FUNC_END(pmull_gcm_ghash_4x)
+SYM_FUNC_END_SECTION(pmull_gcm_ghash_4x)
 
-SYM_FUNC_START_LOCAL(pmull_gcm_enc_4x)
+SYM_FUNC_START_LOCAL_SECTION(pmull_gcm_enc_4x)
 	ld1		{KS0.16b}, [x5]			// load upper counter
 	sub		w10, w8, #4
 	sub		w11, w8, #3
@@ -761,7 +761,7 @@ SYM_FUNC_START_LOCAL(pmull_gcm_enc_4x)
 	eor		INP3.16b, INP3.16b, KS3.16b
 
 	ret
-SYM_FUNC_END(pmull_gcm_enc_4x)
+SYM_FUNC_END_SECTION(pmull_gcm_enc_4x)
 
 	.section	".rodata", "a"
 	.align		6
diff --git a/arch/arm64/crypto/nh-neon-core.S b/arch/arm64/crypto/nh-neon-core.S
index 51c0a534ef87..cb354d3f7e7b 100644
--- a/arch/arm64/crypto/nh-neon-core.S
+++ b/arch/arm64/crypto/nh-neon-core.S
@@ -62,7 +62,7 @@
  *
  * It's guaranteed that message_len % 16 == 0.
  */
-SYM_FUNC_START(nh_neon)
+SYM_FUNC_START_SECTION(nh_neon)
 
 	ld1		{K0.4s,K1.4s}, [KEY], #32
 	  movi		PASS0_SUMS.2d, #0
@@ -100,4 +100,4 @@ SYM_FUNC_START(nh_neon)
 	addp		T1.2d, PASS2_SUMS.2d, PASS3_SUMS.2d
 	st1		{T0.16b,T1.16b}, [HASH]
 	ret
-SYM_FUNC_END(nh_neon)
+SYM_FUNC_END_SECTION(nh_neon)
diff --git a/arch/arm64/crypto/poly1305-armv8.pl b/arch/arm64/crypto/poly1305-armv8.pl
index cbc980fb02e3..039e6a9ce68c 100644
--- a/arch/arm64/crypto/poly1305-armv8.pl
+++ b/arch/arm64/crypto/poly1305-armv8.pl
@@ -48,8 +48,12 @@ my ($h0,$h1,$h2,$r0,$r1,$s1,$t0,$t1,$d0,$d1,$d2) = map("x$_",(4..14));
 
 $code.=<<___;
 #ifndef __KERNEL__
+# define SYM_TEXT_SECTION()
+# define SYM_TEXT_END_SECTION
 # include "arm_arch.h"
 .extern	OPENSSL_armcap_P
+#else
+# include <linux/linkage.h>
 #endif
 
 .text
@@ -58,6 +62,7 @@ $code.=<<___;
 .globl	poly1305_blocks
 .globl	poly1305_emit
 
+SYM_TEXT_SECTION(poly1305_init)
 .globl	poly1305_init
 .type	poly1305_init,%function
 .align	5
@@ -107,7 +112,9 @@ poly1305_init:
 .Lno_key:
 	ret
 .size	poly1305_init,.-poly1305_init
+SYM_TEXT_END_SECTION
 
+SYM_TEXT_SECTION(poly1305_blocks)
 .type	poly1305_blocks,%function
 .align	5
 poly1305_blocks:
@@ -198,7 +205,9 @@ poly1305_blocks:
 .Lno_data:
 	ret
 .size	poly1305_blocks,.-poly1305_blocks
+SYM_TEXT_END_SECTION
 
+SYM_TEXT_SECTION(poly1305_emit)
 .type	poly1305_emit,%function
 .align	5
 poly1305_emit:
@@ -258,6 +267,7 @@ poly1305_emit:
 
 	ret
 .size	poly1305_emit,.-poly1305_emit
+SYM_TEXT_END_SECTION
 ___
 my ($R0,$R1,$S1,$R2,$S2,$R3,$S3,$R4,$S4) = map("v$_.4s",(0..8));
 my ($IN01_0,$IN01_1,$IN01_2,$IN01_3,$IN01_4) = map("v$_.2s",(9..13));
@@ -270,6 +280,7 @@ my ($in2,$zeros)=("x16","x17");
 my $is_base2_26 = $zeros;		# borrow
 
 $code.=<<___;
+SYM_TEXT_SECTION(poly1305_mult)
 .type	poly1305_mult,%function
 .align	5
 poly1305_mult:
@@ -306,7 +317,9 @@ poly1305_mult:
 
 	ret
 .size	poly1305_mult,.-poly1305_mult
+SYM_TEXT_END_SECTION
 
+SYM_TEXT_SECTION(poly1305_splat)
 .type	poly1305_splat,%function
 .align	4
 poly1305_splat:
@@ -333,7 +346,9 @@ poly1305_splat:
 
 	ret
 .size	poly1305_splat,.-poly1305_splat
+SYM_TEXT_END_SECTION
 
+SYM_TEXT_SECTION(poly1305_blocks_neon)
 #ifdef	__KERNEL__
 .globl	poly1305_blocks_neon
 #endif
@@ -888,6 +903,8 @@ poly1305_blocks_neon:
 .align	5
 .Lzeros:
 .long	0,0,0,0,0,0,0,0
+SYM_TEXT_END_SECTION
+
 .asciz	"Poly1305 for ARMv8, CRYPTOGAMS by \@dot-asm"
 .align	2
 #if !defined(__KERNEL__) && !defined(_WIN64)
diff --git a/arch/arm64/crypto/sha1-ce-core.S b/arch/arm64/crypto/sha1-ce-core.S
index 889ca0f8972b..2ba5f8ea39fc 100644
--- a/arch/arm64/crypto/sha1-ce-core.S
+++ b/arch/arm64/crypto/sha1-ce-core.S
@@ -65,7 +65,7 @@
 	 * int sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
 	 *			 int blocks)
 	 */
-SYM_FUNC_START(sha1_ce_transform)
+SYM_FUNC_START_SECTION(sha1_ce_transform)
 	/* load round constants */
 	loadrc		k0.4s, 0x5a827999, w6
 	loadrc		k1.4s, 0x6ed9eba1, w6
@@ -147,4 +147,4 @@ CPU_LE(	rev32		v11.16b, v11.16b	)
 	str		dgb, [x0, #16]
 	mov		w0, w2
 	ret
-SYM_FUNC_END(sha1_ce_transform)
+SYM_FUNC_END_SECTION(sha1_ce_transform)
diff --git a/arch/arm64/crypto/sha2-ce-core.S b/arch/arm64/crypto/sha2-ce-core.S
index 491179922f49..6c1a4a128355 100644
--- a/arch/arm64/crypto/sha2-ce-core.S
+++ b/arch/arm64/crypto/sha2-ce-core.S
@@ -75,7 +75,7 @@
 	 *			  int blocks)
 	 */
 	.text
-SYM_FUNC_START(sha2_ce_transform)
+SYM_FUNC_START_SECTION(sha2_ce_transform)
 	/* load round constants */
 	adr_l		x8, .Lsha2_rcon
 	ld1		{ v0.4s- v3.4s}, [x8], #64
@@ -154,4 +154,4 @@ CPU_LE(	rev32		v19.16b, v19.16b	)
 3:	st1		{dgav.4s, dgbv.4s}, [x0]
 	mov		w0, w2
 	ret
-SYM_FUNC_END(sha2_ce_transform)
+SYM_FUNC_END_SECTION(sha2_ce_transform)
diff --git a/arch/arm64/crypto/sha3-ce-core.S b/arch/arm64/crypto/sha3-ce-core.S
index 9c77313f5a60..6105cc815c9a 100644
--- a/arch/arm64/crypto/sha3-ce-core.S
+++ b/arch/arm64/crypto/sha3-ce-core.S
@@ -40,7 +40,7 @@
 	 * int sha3_ce_transform(u64 *st, const u8 *data, int blocks, int dg_size)
 	 */
 	.text
-SYM_FUNC_START(sha3_ce_transform)
+SYM_FUNC_START_SECTION(sha3_ce_transform)
 	/* load state */
 	add	x8, x0, #32
 	ld1	{ v0.1d- v3.1d}, [x0]
@@ -197,7 +197,7 @@ SYM_FUNC_START(sha3_ce_transform)
 	st1	{v24.1d}, [x0]
 	mov	w0, w2
 	ret
-SYM_FUNC_END(sha3_ce_transform)
+SYM_FUNC_END_SECTION(sha3_ce_transform)
 
 	.section	".rodata", "a"
 	.align		8
diff --git a/arch/arm64/crypto/sha512-armv8.pl b/arch/arm64/crypto/sha512-armv8.pl
index 2d8655d5b1af..7952696d3c88 100644
--- a/arch/arm64/crypto/sha512-armv8.pl
+++ b/arch/arm64/crypto/sha512-armv8.pl
@@ -195,11 +195,16 @@ ___
 $code.=<<___;
 #ifndef	__KERNEL__
 # include "arm_arch.h"
+# define SYM_TEXT_SECTION()
+# define SYM_TEXT_END_SECTION
+#else
+# include <linux/linkage.h>
 #endif
 
 .text
 
 .extern	OPENSSL_armcap_P
+SYM_TEXT_SECTION($func)
 .globl	$func
 .type	$func,%function
 .align	6
@@ -285,7 +290,9 @@ $code.=<<___;
 	ldp	x29,x30,[sp],#128
 	ret
 .size	$func,.-$func
+SYM_TEXT_END_SECTION
 
+SYM_TEXT_SECTION(K$BITS)
 .align	6
 .type	.LK$BITS,%object
 .LK$BITS:
@@ -354,6 +361,8 @@ $code.=<<___ if ($SZ==4);
 ___
 $code.=<<___;
 .size	.LK$BITS,.-.LK$BITS
+SYM_TEXT_END_SECTION
+
 #ifndef	__KERNEL__
 .align	3
 .LOPENSSL_armcap_P:
@@ -637,6 +646,7 @@ sub body_00_15 () {
 }
 
 $code.=<<___;
+SYM_TEXT_SECTION(sha256_block_neon)
 #ifdef	__KERNEL__
 .globl	sha256_block_neon
 #endif
@@ -736,6 +746,7 @@ $code.=<<___;
 	add	sp,sp,#16*4+16
 	ret
 .size	sha256_block_neon,.-sha256_block_neon
+SYM_TEXT_END_SECTION
 ___
 }
 
diff --git a/arch/arm64/crypto/sha512-ce-core.S b/arch/arm64/crypto/sha512-ce-core.S
index b6a3a36e15f5..7d34aabb3daa 100644
--- a/arch/arm64/crypto/sha512-ce-core.S
+++ b/arch/arm64/crypto/sha512-ce-core.S
@@ -106,7 +106,7 @@
 	 *			  int blocks)
 	 */
 	.text
-SYM_FUNC_START(sha512_ce_transform)
+SYM_FUNC_START_SECTION(sha512_ce_transform)
 	/* load state */
 	ld1		{v8.2d-v11.2d}, [x0]
 
@@ -203,4 +203,4 @@ CPU_LE(	rev64		v19.16b, v19.16b	)
 3:	st1		{v8.2d-v11.2d}, [x0]
 	mov		w0, w2
 	ret
-SYM_FUNC_END(sha512_ce_transform)
+SYM_FUNC_END_SECTION(sha512_ce_transform)
diff --git a/arch/arm64/crypto/sm3-ce-core.S b/arch/arm64/crypto/sm3-ce-core.S
index ef97d3187cb7..7be60c41e36d 100644
--- a/arch/arm64/crypto/sm3-ce-core.S
+++ b/arch/arm64/crypto/sm3-ce-core.S
@@ -73,7 +73,7 @@
 	 *                       int blocks)
 	 */
 	.text
-SYM_FUNC_START(sm3_ce_transform)
+SYM_FUNC_START_SECTION(sm3_ce_transform)
 	/* load state */
 	ld1		{v8.4s-v9.4s}, [x0]
 	rev64		v8.4s, v8.4s
@@ -131,7 +131,7 @@ CPU_LE(	rev32		v3.16b, v3.16b		)
 	ext		v9.16b, v9.16b, v9.16b, #8
 	st1		{v8.4s-v9.4s}, [x0]
 	ret
-SYM_FUNC_END(sm3_ce_transform)
+SYM_FUNC_END_SECTION(sm3_ce_transform)
 
 	.section	".rodata", "a"
 	.align		3
diff --git a/arch/arm64/crypto/sm4-ce-core.S b/arch/arm64/crypto/sm4-ce-core.S
index 4ac6cfbc5797..5f64ed209a26 100644
--- a/arch/arm64/crypto/sm4-ce-core.S
+++ b/arch/arm64/crypto/sm4-ce-core.S
@@ -15,7 +15,7 @@
 	 * void sm4_ce_do_crypt(const u32 *rk, u32 *out, const u32 *in);
 	 */
 	.text
-SYM_FUNC_START(sm4_ce_do_crypt)
+SYM_FUNC_START_SECTION(sm4_ce_do_crypt)
 	ld1		{v8.4s}, [x2]
 	ld1		{v0.4s-v3.4s}, [x0], #64
 CPU_LE(	rev32		v8.16b, v8.16b		)
@@ -33,4 +33,4 @@ CPU_LE(	rev32		v8.16b, v8.16b		)
 CPU_LE(	rev32		v8.16b, v8.16b		)
 	st1		{v8.4s}, [x1]
 	ret
-SYM_FUNC_END(sm4_ce_do_crypt)
+SYM_FUNC_END_SECTION(sm4_ce_do_crypt)
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-19-alexandr.lobakin%40intel.com.
