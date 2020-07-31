Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNONSL4QKGQEYDZ4NGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D636234E54
	for <lists+clang-built-linux@lfdr.de>; Sat,  1 Aug 2020 01:18:15 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 37sf7116200pgx.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:18:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596237494; cv=pass;
        d=google.com; s=arc-20160816;
        b=bTL8sdYtqDsF1y3ebnaDTzizETkW/7BAP3UMzDetNlT9IM4QBM1bhfTr88TS7gHLvm
         Va/aO4vEuDMO5qr9DIAsbzy/UX6SnMn08dCBmo8jF/lavztgKbP0U8yWD4jj6iGdigoD
         B0Tq4EVO62RbBOdzTdXVxX/CrmKpY1wJkaS4+Y+1uoyhH70ILEzGscpCZIF6AxxJatzj
         p2myhC+b9E/N+bIzK/37JbMBZjsOG+Qd9Ta7/H1vUH5evJmRFUdadR1MnEeqt4WddCtw
         BCXJuBn8fu/Ye0NxSFNOfQUIoVEOf6R7kNOZ20HE2OPkNuHkJfBz9x2qw/Q6l7Tz6LVw
         e58Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0ASUzL+glG/TAwY7vUy4EFajuU33qQ4lOZGrWYSL2ME=;
        b=sPoIU9n6QoM3buNYg3AohqgR/2lSKT+RMGn7IG539PjVQpGjNSRaR+apxKyIGro1BQ
         +AKL2Q4j7vJghNaQO5SGW/BNjlMm+OgpNhyf+WGwg33tEASQitsg1PrOI6fxdEPHishJ
         hxIxkdKj1isE3TuhDFSURWbXz20GLsRN40WQI0X4yhEyc55ncCvVsDTIe5uMfHPJFpT5
         uA+5I62CchezfG7tQEeHMHK9pUIMyl3jx9wnDorzz8TCF8Rjdbt7Jm+EbNTLKTLXANPE
         Nm9s3/0pSh8mUipTtk42wwWDqDiu4WfMOuenWjccwuwvYax+FnzN/d17UgBaLVS353Ka
         uLUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Acdhtx1t;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0ASUzL+glG/TAwY7vUy4EFajuU33qQ4lOZGrWYSL2ME=;
        b=e1gilK5WeMHlsJPpaKQN+TYCGIELFRs9xRSPdtA//J3LfEm9Axr8r0cM8XP/Zd32cI
         zxyiEo9tvtdSc7guV6fvnUxVhAeaIKNmMLB7PYxIhvPvKb5n9FyfRFBSuMv3KQ5YzYsa
         WeTi3JZFgJx3zDMtTsCs1gQ9YoK4yLu75lO99t8FUMrPXDXH0P1GxqMYPOdyzkL/FmG4
         ExohhQ4sftq9j8nt7NT5OGI8r4oCW8HgU1CKgGRAn1Mc1sxsetB1VVQ1/16fN5bYqW75
         GjUyuMFwc43irHv8iz4SL8QGxszPrA5XGWuEEb2AqoUfY+xKyQ74GxsANlvJL4/6No6w
         MYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0ASUzL+glG/TAwY7vUy4EFajuU33qQ4lOZGrWYSL2ME=;
        b=L3VAVt7nfc0Ltv9IImt2iCpKuhk9dVi5o+MgcZN0apSgh3lZlovcdAThkD+dlgFLGN
         89lElOPXQIILlDN9aRSTn7v0Ee3F8cK0veZ4grVIn+rF5okxr0MAIkBgkx4E0w6CDDRp
         lUpJAt6lykw5wU65peVrExuBCK316a4nFqPtUCkyWfnJ0I+DfmXyqqP359ZuF4Nho+dE
         2NL2rTe3gT0B9Arzq4w/Q0TdnSv/wwKv/pwqwYTf5pKW4PVvA4XyAxqJApFFKGTMuDuj
         dSwaeK2FT8/w7K9LkeXUS5HGL6rp094Ch+Ey+W82OuxjbvXE8I9jnljF7YekpU+CIz9C
         l0dA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530k8xDoCBsnoF1YFwkgfkjPMFxTQVifwVu+RLme2b2xDrL1XwXQ
	8cxNl6yU73SsKSUgqP/BUt0=
X-Google-Smtp-Source: ABdhPJxArPtMuJB0EFSJimEtST8fj9scV5F5YBdMWocx8VeWVGpmk9uFDTfwuzwe0b2sdGxByPQvlw==
X-Received: by 2002:a17:90a:b986:: with SMTP id q6mr6351911pjr.54.1596237494002;
        Fri, 31 Jul 2020 16:18:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f450:: with SMTP id p16ls3490435pgk.5.gmail; Fri, 31 Jul
 2020 16:18:13 -0700 (PDT)
X-Received: by 2002:a63:b18:: with SMTP id 24mr6030984pgl.406.1596237493620;
        Fri, 31 Jul 2020 16:18:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596237493; cv=none;
        d=google.com; s=arc-20160816;
        b=jt98TUPgkdWIpOCmxhilgo3+QcvBOkaTwosR/z2N6xmVuk0iIQOjsZ/F/Lk/PEpSul
         LOfq/uy5kLAuJongOHaPm1VSaMBVcyG+ip2ooaJUgzhhienP50up3QRCiou7iFkPk+aC
         hsVfZJhrdTACszGJsTDB995o3OXTSq/r9lU0NkT2VhJgce2CxRsQiIbDXchTyzIICbZG
         Ry1xMGVLebN9WEcg5E3NkuLMh1jeb7J7SyF14VCFhrBmwfHZv6ONt8zhGGgkQVw2OPHB
         dXPeXmISJbBIDnaMKaP9scAGyAgyrOTR7YcYpjBd2M4j6ufxzp9GssbdF9QaphJL6P/s
         +UTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=DcAsy2Kya2vQqvsN7ZPWA8EbcQkwVEcJexXEETLKJik=;
        b=jYBaM2P5qjHH28pwC65TnRVYg8lXpsGnpvhM3H22hIvl7oHZzgXlZu4laBqCX71wej
         fMpGVMxpNq2oeZdlAxGWPeczTxY+YNCJguYxFKivha758nyor2Up7yTvv3DodINtiGYe
         AAAOnKVgWY8zm6Q/XVxq4kzA4Wx2bCd/+kThWHXhyUbhIlJvYert58wQaqoM/o/UKBva
         5EMl41AxjBi8iWsdyb06P6uDD7EggLM6uhMICqPKw8dgub0EpPa1uls4BVZC7auzFlg3
         MohQBJIUlYpCAo3zlSIz6Q1YA3yUmKW+FOJolNxBQVlJXJ541R5pdPed2UkbcVxwUKTA
         +2nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Acdhtx1t;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id jx18si412249pjb.1.2020.07.31.16.18.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 16:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t10so12775743plz.10
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 16:18:13 -0700 (PDT)
X-Received: by 2002:a17:90a:8d06:: with SMTP id c6mr6370143pjo.137.1596237493405;
        Fri, 31 Jul 2020 16:18:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b21sm11163353pfp.172.2020.07.31.16.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 16:18:11 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Thomas Gleixner <tglx@linutronix.de>,
	Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 29/36] x86/build: Enforce an empty .got.plt section
Date: Fri, 31 Jul 2020 16:08:13 -0700
Message-Id: <20200731230820.1742553-30-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200731230820.1742553-1-keescook@chromium.org>
References: <20200731230820.1742553-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Acdhtx1t;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

The .got.plt section should always be zero (or filled only with the
linker-generated lazy dispatch entry). Enforce this with an assert and
mark the section as NOLOAD. This is more sensitive than just blindly
discarding the section.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 0cc035cb15f1..7faffe7414d6 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -414,8 +414,20 @@ SECTIONS
 	ELF_DETAILS
 
 	DISCARDS
-}
 
+	/*
+	 * Make sure that the .got.plt is either completely empty or it
+	 * contains only the lazy dispatch entries.
+	 */
+	.got.plt (NOLOAD) : { *(.got.plt) }
+	ASSERT(SIZEOF(.got.plt) == 0 ||
+#ifdef CONFIG_X86_64
+	       SIZEOF(.got.plt) == 0x18,
+#else
+	       SIZEOF(.got.plt) == 0xc,
+#endif
+	       "Unexpected GOT/PLT entries detected!")
+}
 
 #ifdef CONFIG_X86_32
 /*
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731230820.1742553-30-keescook%40chromium.org.
