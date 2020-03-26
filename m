Return-Path: <clang-built-linux+bncBAABBDGD6HZQKGQEL4GLKUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4237C193A25
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 09:02:22 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id k25sf4521320iob.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 01:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585209741; cv=pass;
        d=google.com; s=arc-20160816;
        b=dTZn0HenqRI4lxKGdNEslH7vhjQFmY7Yji+Mp8foH5HCEsH2IxKHUBGJ8iz5P1P1A6
         uGK5QBK2sxhdvlqEINKxJ3VAMfHal2n6OxlicuKpGLgoVFxJf81TETjdP/RA4DnSxV7o
         4AUexqkwdGl3sv+eFgCKaiprFd68P8/fTnQoy4qSk0ImLL3acNrHA/YXRTB+QEPGyuml
         AoXJSesvwxczB6jGcC9I1vDkSAeB832eaYhb20fhYaGFgYnpvUEbxmiGwR7lP2U5C5FW
         nwA1sCLP+5k5sSsC7l/Lbo5hoamJPym4tC9e/Ygk1VZ3oSpTkN9YopLgH2BWxkiKL+b0
         WBkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=KEipgFNZebpaNaoJ/kVSHpZeWfyZX0+AuMSH29c15yc=;
        b=BJ94CoibOT6JppLgKLz+hvAZlk55/HbyjOrrG9f/poRKMDhP2R5qiHyDFltXyPSEzg
         QdN64Oa9YREdB4VLUDKciz8I1s68tOW72AciCnrjso0tDDzXHZYmFLWNuRxM+A5L5xNc
         1E8hqDP7QC/vBn3xqWfLssI+6iPjLUCK1NkmS4AxaWHVpozDE3fqs9OMH2M/0HpR6OD+
         XZzPxdQMxtEmOAo6sVZYrD4Mf23kvuxcHe/SOI5HdRlH9Sv1n3XmWInX/MAjqmKoTszn
         FMe9j//uO5QWeGQa7ZJ6gEw4Jxzx9kHWFG8nWGQ4QZPux4DkwLJiKo/xF8MsGCmO0Vre
         EhYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0pWA6gzR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KEipgFNZebpaNaoJ/kVSHpZeWfyZX0+AuMSH29c15yc=;
        b=EQZ0xknsHlx8HAgJAFrNUmNrpTurgXng1q32gw0nqvWmaiQTPn+tprRQi+AqR7q0wf
         QkjX9/Fu5tFhaBSjxdFZgk10bzOV9h7AReBIR3QXf23V/YZwGDdhghSQtSSTMiILkoDC
         64fz3DxN2if3Vh+a4PeOMkFm6JYFmXux6/V//68MHJnG61LH9x+hwrhJZ8y/sHz8Rr1v
         71mA8cwg5+EPGvARAM8X/O6yiKVSmQT/jRFqpEg4Tf1EkpiCcc9VS7JLNVUo774nSKQM
         ekGbkD0U3Dvz1/LlGDmKIo7lLCXonhDoLyIwZJXdWV4YKnqfMMrVImZqE/u5wLEQSuNB
         /NUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KEipgFNZebpaNaoJ/kVSHpZeWfyZX0+AuMSH29c15yc=;
        b=jU11CqNAZMcyRKG11aMxV+4d2Gm3AszyCLQvN/9sPADPt9rYTM+jKU9JCSbS0Y01I1
         DTDifsXNubyrF5oTnAZwwuYFMDqXLcwiedkP/QtZEp7UmsuBYs0WEqqr6bWnz8LAHLkm
         fCcETRfOzSgFgdR3DLti4x/JxDtYqDpoEtBDWO0lKeFLrgt3vPgbuA6c4xxnB0PsX4t9
         2pn0k0h9L5hhrJ6wZ4jitlutbxOLE7jJ9br7T7LqXkdonED9chtqSw58F+5+l2OLYvVl
         IkgIP+1F1/kqWUm+s45XPGQEHcyXTQwAcFiaGjPehxrkPOqNB6QTMrtWilprWY0j4sZo
         t4qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0T57zO0xvcJvn8yOukrBc6qp+lfKjLQOLJ6mT6wJxA6xwkuq2x
	IiYeHvBLsVoXtsJ8Oi9+BbA=
X-Google-Smtp-Source: ADFU+vsHWwGm15VSQ0L0HaJ4Rnh43WsJT7reodMsR9p0YfH6Hkkj77/5y+AH86tP3lLxxhJs9D7aUg==
X-Received: by 2002:a92:844f:: with SMTP id l76mr7906461ild.13.1585209740793;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:ab47:: with SMTP id u68ls900568ioe.2.gmail; Thu, 26 Mar
 2020 01:02:20 -0700 (PDT)
X-Received: by 2002:a5d:9648:: with SMTP id d8mr6692963ios.24.1585209740381;
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585209740; cv=none;
        d=google.com; s=arc-20160816;
        b=Hk5nYDo7Htx+QzdKImxWCQRFjMrm1bvuQVRlLovuhmGUQFcowIRHwu11PCoY5LnlGn
         khxH7ZNsWrvf6JKECbKcXiKpzsx8KM4yhYfIIUTcSC2iTwdHNS3dXDs/4JK7iBqtZAh+
         ZKEXKbbFq7DFMnBNWpPKNjUcV1EMWrygg6/6dz6hiFt/ofluRotHCWAesyhfALAuuf/I
         wkrGN5BNarv4Yeph57rQ0wcAT6EnbBhg8isTI5fe9ETLEBEE1egOYliXXtqqOj7W1B71
         dcRlborR4LybFbi2uDvhQtvQZ3nFfUBsGwzYhY53jZ+CoNw06t8c9QnHZrxw7z5fF+VM
         LE5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=PXf90zEL0PBjxAqiIelC9lPpjynKaO7oTN5qSukZw9U=;
        b=Z58Fosc00mLsJKf7H7qUQ7Y3NS/MaW8a4biPo21b/oBas1IJKxIpXoK8xMb80Otu35
         AAdFeM+BINKfiWU2BFikT8UQwGb/fNdKz/g/vKuvSLxDMqKPqewRzowniXv6aK5xT0Rq
         l/N18bU6/S3LjUr+M74YPTqhkAZs17SKZ8sn2Y551LHS7pGFv1hAY7wiJSs0TbX+Npu+
         Gngoi9dN4dehEd7kSiVqVXrpVo4F9JfYKpjk+LqU2wKRWFgjqbhWWLDcWZD3O1PQEqS3
         jqKCJp+e+ONZJbKq5lZEKXJtuoK3sdGjWMCxeutCwZthHoXrdCLdT+HmDTVjeXwz679x
         bUVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=0pWA6gzR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id a3si170859iog.2.2020.03.26.01.02.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Mar 2020 01:02:20 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02Q81WpY002183;
	Thu, 26 Mar 2020 17:01:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02Q81WpY002183
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
Subject: [PATCH v2 05/16] x86: remove always-defined CONFIG_AS_CFI_SECTIONS
Date: Thu, 26 Mar 2020 17:00:53 +0900
Message-Id: <20200326080104.27286-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200326080104.27286-1-masahiroy@kernel.org>
References: <20200326080104.27286-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=0pWA6gzR;       spf=softfail
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

CONFIG_AS_CFI_SECTIONS was introduced by commit 9e565292270a ("x86:
Use .cfi_sections for assembly code").

We raise the minimal supported binutils version from time to time.
The last bump was commit 1fb12b35e5ff ("kbuild: Raise the minimum
required binutils version to 2.21").

I confirmed the code in $(call as-instr,...) can be assembled by the
binutils 2.21 assembler and also by LLVM integrated assembler.

Remove CONFIG_AS_CFI_SECTIONS, which is always defined.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
Acked-by: Jason A. Donenfeld <Jason@zx2c4.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
---

Changes in v2: None

 arch/x86/Makefile             | 6 ++----
 arch/x86/include/asm/dwarf2.h | 2 --
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index dd275008fc59..e4a062313bb0 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -177,8 +177,6 @@ ifeq ($(ACCUMULATE_OUTGOING_ARGS), 1)
 	KBUILD_CFLAGS += $(call cc-option,-maccumulate-outgoing-args,)
 endif
 
-cfi-sections := $(call as-instr,.cfi_sections .debug_frame,-DCONFIG_AS_CFI_SECTIONS=1)
-
 # does binutils support specific instructions?
 asinstr += $(call as-instr,pshufb %xmm0$(comma)%xmm0,-DCONFIG_AS_SSSE3=1)
 avx_instr := $(call as-instr,vxorps %ymm0$(comma)%ymm1$(comma)%ymm2,-DCONFIG_AS_AVX=1)
@@ -188,8 +186,8 @@ sha1_ni_instr :=$(call as-instr,sha1msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA1_NI=
 sha256_ni_instr :=$(call as-instr,sha256msg1 %xmm0$(comma)%xmm1,-DCONFIG_AS_SHA256_NI=1)
 adx_instr := $(call as-instr,adox %r10$(comma)%r10,-DCONFIG_AS_ADX=1)
 
-KBUILD_AFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
-KBUILD_CFLAGS += $(cfi-sections) $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_AFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
+KBUILD_CFLAGS += $(asinstr) $(avx_instr) $(avx2_instr) $(avx512_instr) $(sha1_ni_instr) $(sha256_ni_instr) $(adx_instr)
 
 KBUILD_LDFLAGS := -m elf_$(UTS_MACHINE)
 
diff --git a/arch/x86/include/asm/dwarf2.h b/arch/x86/include/asm/dwarf2.h
index f440790f09f9..c1e0c315a622 100644
--- a/arch/x86/include/asm/dwarf2.h
+++ b/arch/x86/include/asm/dwarf2.h
@@ -21,7 +21,6 @@
 #define CFI_UNDEFINED		.cfi_undefined
 #define CFI_ESCAPE		.cfi_escape
 
-#if defined(CONFIG_AS_CFI_SECTIONS)
 #ifndef BUILD_VDSO
 	/*
 	 * Emit CFI data in .debug_frame sections, not .eh_frame sections.
@@ -38,6 +37,5 @@
 	  */
 	.cfi_sections .eh_frame, .debug_frame
 #endif
-#endif
 
 #endif /* _ASM_X86_DWARF2_H */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200326080104.27286-6-masahiroy%40kernel.org.
