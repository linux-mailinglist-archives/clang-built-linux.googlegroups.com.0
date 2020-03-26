Return-Path: <clang-built-linux+bncBAABBDGD6HZQKGQEL4GLKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0169A193A22
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:22 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id a30sf2075692uae.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnIVZPF/w8hNG+OIK8MLqzuX9naWIEOS312ztsFd0PCj/8ojR4d/nVM2aVT5Q87VFo
         Kj4e1ADfGlF4fZB5U+hQH5o6fHpkFDa8qdgNLJl9vJymvpcMATKgnLlTgFByHMTTglTs
         xUCPsbGnBl9w5GJ9pSeXGBHgu/MoKB24wDyySbNd26+7AJKuXKdJxKcUXAQs2XMieFDb
         VL7nNiGKoMP/6XKmGWQ0uJ+GwVQtQRONObnSeLGPnO0YLBFZvS3cd4pv7H7XxoSHtt0R
         mtV2XSz3Hitl+g6UMtpv3HuKQnjiep+I+Q+973V2FFVDt0Px1vcnd98vKZhS8RU35w0M
         PGkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=MR3Nx3HsSsoFrrbjfRSKUMzfsanMrpjcoyFG8/hyZho=;
        b=Kr0yik2Xw42k/T0JT5CTQHEWSvgDMdbTzDh6pgX4rDIOMbkDtO3uJsvHIo0x6OCjWs
         4I6HIbaaxBAsDNSvxmAU416wLb3FFcrke8+h994jFx3qV9nefYQcE6lOhJb+pv0BikVC
         kuEGJuxOlwvdzxzapT9EgIPooA+MUPHN4jZssUtG+uoRnsswFSGFVzgpIF03OeoL3Bou
         +bVhok5kXVKpImzj+V7S7HA38eYG1bnI7Uvr/XO7byOa5RjGXO/KtpvzDMJN+0tvilmZ
         /lOYx3u0gCZ/mQ9fvuiingj9McxRbnnhbSI2h1xv1Ehr4dGnBa9hoev89pXf5jZd69rU
         TRzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kBHxzSyQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MR3Nx3HsSsoFrrbjfRSKUMzfsanMrpjcoyFG8/hyZho=;
        b=EuK1hzIRKCJQsARIYPB3I6frirYUHzyGqINWrDyEH4+gFYvyvQ54pYFVzyYvmNeu6u
         nLc8rJcnj05LQhaYntURm8UwbAebBrxuXor47qB9F+VcTZpjXE9CPBtnV3U4wpZ12DY2
         KryYSq2zqAllang5YRUbKfIYAKNlR7JwlZthaPzA+hblxHIBqoB2HyD06rQdaEAFlryB
         vgFXDoOuBhjXMSpG3KvGvF917vXRxhdPKlqpsVJmg/siI+xe3OAvXseCLsZyTScF4wu9
         CETiKq4e6luexTgLZTRzBgtAkhx0OSGyHecVwaZwuLWFKw9iyCxxWZLYWFsVSWFOV7jt
         B2Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MR3Nx3HsSsoFrrbjfRSKUMzfsanMrpjcoyFG8/hyZho=;
        b=dT0LsujAIO5ycb8QGz8UxnTnU5MrPNhzJsc8Zrrr80/9gJ3ilCiITuoEaSHSUFjGT3
         4wZjx3bn55zm8G1RrcU4KruFdUoITKr97VPtcHfKJdBHJe3DRQgc4NvJVVfGFNLwBePO
         vti94KVfPBC6j134r+YswmKclR4AKRLE82BAxyGhdbAxobzFWxsErEpL57dAPWZjg+b9
         0n4CR/La7X5eQTrqnuZmNsAc/YH1zDyG0ZZNtnRFaqW4tMYV8zOjeYvl+r9Yhz+jwSs6
         gR47hKhvHBKkR1rrcEcydaK6ZledUk2DBmZ9osgN2bWg6NYfDIuNaeDdnN2nmlcB+ex1
         blCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3/YVsc9W1mdqyBaBhZ0pMTybVLJOptg3bF6gRVFiANQUXShXbF
	VpeYqofBsxzCCscq27wtYDk=
X-Google-Smtp-Source: ADFU+vvSzS/NnXWByIhQziYYy7tL3avA4J5CV4fag84h7ije054NNbGM5Rkew6o09dXiVCHLaAsU6w==
X-Received: by 2002:a67:cc16:: with SMTP id q22mr5870558vsl.81.1585209741042;
        Thu, 26 Mar 2020 01:02:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c01d:: with SMTP id v29ls595885vsi.6.gmail; Thu, 26 Mar
 2020 01:02:20 -0700 (PDT)
X-Received: by 2002:a05:6102:104b:: with SMTP id h11mr5670907vsq.182.1585209740683;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209740; cv=none;
        d=google.com; s=arc-20160816;
        b=GdhkYaV4F6wq0Jp1aSPZ5bXSyyLWUzAGvtUknTVT5tajczvG1mfx8IHVGLfkje493W
         GSwoeGzGiKbljZA8F5zuKSzTs5n7dTsYjoXwvfrQNGQ2BXcRglDgYcvDq4Q4xwVE9GTJ
         BOU8euasv1IQpz0g44uxBUafzYN0B4xUzZWlwFf6KnjOY7pvx8paKx8ri+MeTvyl1B3u
         LbFZHcxPU3DVscp968t1fgpZ0VXkAXZfYadIK05GeAnACgLkBMm0MJ/4VGAFWz/m6ZnY
         6ePy7C68Ep42hEApYASQzaHsgkVob4E4Z9XcfcL68nYLxgJy3nRyqOtH2+Ma389whDxW
         grsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=ObDKJrIo7JgfvIu0G1FSnalphKgwEZNqB/X4AcOMirk=;
        b=SyBhcE/QmCgnStvcZ/KzNclH1w5QlOz52pmma+jcu5sgEjBRkObU9SIVkYZKNKgp7J
         jdqpDuRlKp68DwizbQAIGpXB7TdsrC8brDUcqtT/mN2UoLKRmQmXCDWvrrdmDO1VpOaf
         5Y2R9MIjl6zT8kNxvgHGawRyhScBxxRY3P2vzxhKZIi6ArmBdW/Sj8oWobQJblDmLnhp
         2kfe09rLgjB50Z47Aar2fcsL3tdbpXwES2xdcOWf2TaILWWxGRQkCpocc0o+sMvTL6Mp
         HLGACUC0xZivWY42BAAMkJk9PMtYIE5R6UdFlZQQOJ2vNxdMZOYrthduBlzCYfrVsbTr
         /d5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=kBHxzSyQ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id g4si83794vke.3.2020.03.26.01.02.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81WpW002183;
	Thu, 26 Mar 2020 17:01:38 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81WpW002183
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        "Jason A . Donenfeld" <Jason@zx2c4.com>,
        clang-built-linux@googlegroups.com,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 03/16] x86: remove always-defined CONFIG_AS_CFI
Date: Thu, 26 Mar 2020 17:00:51 +0900
Message-Id: <20200326080104.27286-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=kBHxzSyQ;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

CONFIG_AS_CFI was introduced by commit e2414910f212 ("[PATCH] x86:
Detect CFI support in the assembler at runtime"), and extended by
commit f0f12d85af85 ("x86_64: Check for .cfi_rel_offset in CFI probe").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_CFI, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

If this series is applied,
I can hard-code the assembler code, and delete CFI_* macros entirely.


Changes in v2: None

 arch/x86/Makefile             | 10 ++--------
 arch/x86/include/asm/dwarf2.h | 36 -----------------------------------
 2 files changed, 2 insertions(+), 44 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 513a55562d75..72f8f744ebd7 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -177,12 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
-# Stackpointer is addressed different for 32 bit and 64 bit x86
-sp-$(CONFIG_X86_32) := esp
-sp-$(CONFIG_X86_64) := rsp
-
-# do binutils support CFI?
-cfi := $(call as-instr,.cfi_startproc\n.cfi_rel_offset $(sp-y)$(comma)0\n.cfi_endproc,-DCONFIG_AS_CFI=1)
 # is .cfi_signal_frame supported too?
 cfi-sigframe := $(call as-instr,.cfi_startproc\n.cfi_signal_frame\n.cfi_endproc,-DCONFIG_AS_CFI_SIGNAL_FRAME=1)
 cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
@@ -196,8 +190,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
-KBUILD_AFLAGS += $(cfi) $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(cfi) $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_AFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_CFLAGS += $(cfi-sigframe) $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
index 5a0502212bc5..90807583cad7 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -6,15 +6,6 @@
 #warning "asm/dwarf2.h should be only included in pure assembly files"
 #endif
 
-/*
- * Macros for dwarf2 CFI unwind table entries.
- * See "as.info" for details on these pseudo ops. Unfortunately
- * they are only supported in very new binutils, so define them
- * away for older version.
- */
-
-#ifdef CONFIG_AS_CFI
-
 #define CFI_STARTPROC		.cfi_startproc
 #define CFI_ENDPROC		.cfi_endproc
 #define CFI_DEF_CFA		.cfi_def_cfa
@@ -55,31 +46,4 @@
 #endif
 #endif
 
-#else
-
-/*
- * Due to the structure of pre-exisiting code, don't use assembler line
- * comment character # to ignore the arguments. Instead, use a dummy macro.
- */
-.macro cfi_ignore a=0, b=0, c=0, d=0
-.endm
-
-#define CFI_STARTPROC		cfi_ignore
-#define CFI_ENDPROC		cfi_ignore
-#define CFI_DEF_CFA		cfi_ignore
-#define CFI_DEF_CFA_REGISTER	cfi_ignore
-#define CFI_DEF_CFA_OFFSET	cfi_ignore
-#define CFI_ADJUST_CFA_OFFSET	cfi_ignore
-#define CFI_OFFSET		cfi_ignore
-#define CFI_REL_OFFSET		cfi_ignore
-#define CFI_REGISTER		cfi_ignore
-#define CFI_RESTORE		cfi_ignore
-#define CFI_REMEMBER_STATE	cfi_ignore
-#define CFI_RESTORE_STATE	cfi_ignore
-#define CFI_UNDEFINED		cfi_ignore
-#define CFI_ESCAPE		cfi_ignore
-#define CFI_SIGNAL_FRAME	cfi_ignore
-
-#endif
-
 #endif /* _ASM_X86_DWARF2_H */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-4-masahiroy%40kernel.org.
