Return-Path: <clang-built-linux+bncBAABBVVU4DZQKGQEMSXTB4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CBCC18EDD6
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 03:09:28 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id 61sf8851642otw.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Mar 2020 19:09:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584929367; cv=pass;
        d=google.com; s=arc-20160816;
        b=rIIQcKBOkBKRQXuYUsmwAK5vwbqsPUK9AzTG4pO834B3UQjkvWQqfFwY4GasIwENoo
         J7vUqHVoZAcjkITEPNqebC26k2ez7xZA0VEEF2jjB9+qBlGudLKefQiR5/9aiEBB2+RE
         1gGv6Wzz/OH+jobL9o+LONeZhrK8tQdIj7F00ksnM6MicS+ophz2E7kdLyK1+gTGwItC
         IqlTuQJJ4jGt4ph1ut8rU1UazcTWOMelxZbgDbfKi8ttPcfyFru85UHHPcvbMI6DknGK
         rKqhUxSJdc6ce6Y8QejcCHg1hLD+sZX+cjB7SdqEY97BiS3Thda/3guFI2OaHftLLfD+
         h5AQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=t9DJqosShmpdBWuPeUFCINZ5AmZbj80LBukFVtXfkqA=;
        b=GYjrXebDKce4bK4of+IN/rL/auIgjF6dpm2YhLpClzMGOV3DE7c8ffPl4XqcHKfFBz
         leWe3PZLDp2BVs48XxWr6ed00xa9dlE4OQDCwPitk1Zmn2Zl4FlZePNwyrlghsIxmN2c
         Bq2MnA/VXnjRHRZBxGzLDq1WZE7GJMFaXMt4BCGrb8DvFhBfQHUj6U1rikc2tLjQHUPf
         PvW7FSRROGL91jrZ83KyUWRdw/EAkuZhtjb9AICm+cpW0SxI5OLo4pLgmYzZNteDX/md
         gaxZWczMaHQpdA9N3K4yukvA5f9kYCfa6R6eLQufMsMaUv3n2AeYSaf45rhBNVFnxNJZ
         159A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mkDpJesl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t9DJqosShmpdBWuPeUFCINZ5AmZbj80LBukFVtXfkqA=;
        b=Wf8eWd6GbfwWY5i5psbpVVrmrvBQgmCkNtAj8q+kiix1uJXsNCYCJQKhEhebWY+nep
         v5sbeE9vyUVIDEQoXFeiH530PH3nPTWVJ96HqGGJP82985ZVsbwrDFwPrMMGgqQFncvD
         fjX4LXuljJP8YJP0gqS4h9/jUin524xuub8GruoOsD1f35eEkw6C/q8p6QjNl6OMCdUK
         RlTeFvMj0ELoe/jtGz7IFz5xgD3xSvNzl98vvzUL12Mi5WueCHWhK+fN8gKJ9xRp0qoJ
         vxz1UeVbXArT2FnJBdZWq14vZBCJTJRb3C/Qqol8Yqw82A+981tNRI6PfUhqVktzDeTU
         IfpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t9DJqosShmpdBWuPeUFCINZ5AmZbj80LBukFVtXfkqA=;
        b=K31v6dU3EYAIGuSaVRnPUKr7hBRFM0BFsGqoE56kGl4tsvvCNLdKcfU6lAv5Ymlpca
         bzWw/6QSmbl23bNFwXQkXmT0rXDY1Ic5utX9I+Qjd9SW3V4KSdAex6zRJ2MNUPQIgmTD
         B2B1NdOLS2Ar/tEfK6xa89zxJu65oHRqZYKvZIJLy1OSuDSzP4jOov7HtiuHqvkLisoE
         BGMjxgyBWH28AzCYs8O5BGPMvRPCKyda+ycwcvRTIpP7C1cLHO+hjk0e1fK01No+PnX3
         gIogqujcHCYsciW86CjxbgUY2488dw3cZ2KISO351NfdbgSQ8e0cYEvoOU/HTQtPoZiL
         IW3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ26Kg+/IppU4xyHBJBrWiMBxnaKg5RBM2F3F1tuv17RnY0Mj/Vm
	ZPVlTtN+MIZQz6WjwttKKcQ=
X-Google-Smtp-Source: ADFU+vuRgsQgCZjisSqWNFZhifcVPyDkOK1HNTFteQbODYrKAtBa6AGEOFSBQNjlcMw5duSu9DEq6A==
X-Received: by 2002:aca:d987:: with SMTP id q129mr14633096oig.64.1584929366869;
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6759:: with SMTP id w25ls5500629otm.10.gmail; Sun, 22
 Mar 2020 19:09:26 -0700 (PDT)
X-Received: by 2002:a9d:1708:: with SMTP id i8mr16233463ota.250.1584929366541;
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584929366; cv=none;
        d=google.com; s=arc-20160816;
        b=X6ux/RfWxpSEW7W0fy4gzNneDYsEQURaE+YHxMVxHFKyXVMnaIM/N3bVO1qJCgraEG
         qP+rbF5jTZ34FzbgQIg09oxy2hdJD4t7vVlCrGcNdaFLQjGMGmcRUw1rllD5FZRFoQn+
         lF9Gak0AEi0C/30ISWFnIc2yOzZK8cvknVSd0XN52EEQ3c6eFX6M+rfqyn70zDZ67WvJ
         ZpOwVMnbI4MKocjV+QoYilpxonLia4GX3Myno8OmQ6JMPWjseZTCZuFpV/ZBxXqTdNb4
         pvt6dO+jfba1qRpbJa7A4vADM1KyN6s5wPiDV9dXBVMOwhwUgCX9tKQQj7vAWyOARz65
         RakQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=OBYpbzm6LFgChfbfmHLibCZaTv/7d/Vlu331wrlDIOc=;
        b=lSgs5TTgdUVc8p75w00gm3A/rf9pafcJ7k9OiAZf6LjzELPRkPn5EMsydInT1Hsp0g
         2e9SXyAiJIg9Cn6jpccUYQ/6fIyOVdtNUfUhPZq7M8wXUZfA/N9zHdtx0de3eVQhQGKS
         lfWkSz+OHajCcCm6uuDJPskfnqQlRH1G0NDZ1ZSIF8u9l3nUdshCHsV+ad6sqr1T0VMW
         /aKRCM1zKmh9vCxVTXG1IEaxZA91dZK8m8YMnGNRort86UNtFPHkfWXAgBpiyKR++pyY
         S9Bqy3oO9FGS4FANhLLu39QJjKv6/jfUm2ZmCJeDecD9uN0e7pzXvht/VwKjtm9gp45o
         uD9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=mkDpJesl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-11.nifty.com (conuserg-11.nifty.com. [210.131.2.78])
        by gmr-mx.google.com with ESMTPS id d22si295723oti.1.2020.03.22.19.09.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2020 19:09:26 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.78 as permitted sender) client-ip=210.131.2.78;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-11.nifty.com with ESMTP id 02N28urT002941;
	Mon, 23 Mar 2020 11:08:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 02N28urT002941
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH 2/7] x86: remove always-defined CONFIG_AS_CFI
Date: Mon, 23 Mar 2020 11:08:39 +0900
Message-Id: <20200323020844.17064-3-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200323020844.17064-1-masahiroy@kernel.org>
References: <20200323020844.17064-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=mkDpJesl;       spf=softfail
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
---

If this series is OK, we can do follwup cleanups.
We can hard-code the assembler code, and delete CFI_* macros entirely.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200323020844.17064-3-masahiroy%40kernel.org.
