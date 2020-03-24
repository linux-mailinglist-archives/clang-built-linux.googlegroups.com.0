Return-Path: <clang-built-linux+bncBAABB35B4XZQKGQENIHNCOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id EAFDB190294
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:14:40 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id f14sf12677935pfk.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:14:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585008879; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYz0rm/t8b0VetpAwYPk73uWH0PlOLB8+Mqq/JWjzezowRmHBBzmI9zKUBs6qftoPX
         VGcw9gcHF0p8QjTLp1ieQlxSvmEGF03rwuyMpTds2Gcvd11MUYIquldVOvigVMWBtLAb
         US14aiOfhUWgZ5Jgt91kdNfKX7CQLMTD58juhA25/2Xu0nLAQG/vulFbWGQLDRLegvkb
         RPzLZyNz7n8UbqXDTa1Vw3Bp1tfGhdgYcVt64SoEYEH89hDxi0xmHmxAHuDoxooh9VFC
         8t50dSZR+BFQm+mi0A1R9WUoIo7RTqdj8pf3HIQZZN5Lbp5nlS/rYUiQ3Ptjj3Xtfn3P
         gqXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=ogdRUOrDphTaIi3VHe7bZFDv3qpiDk4LP2yzYzbP6bQ=;
        b=oW/EdWUYgGffa+jw5By8IQlshLlc2S1JUWsgp19e90v+EKX6krEs+Rm5MsAIYgkSZ1
         Ey3WBIuVbNKOwPgZ8B1kZSm8qZSG/giyaw+idBKVn5UC5thp3dIRe9tCkBdU5rDnu2uy
         9ZhBw1//bCCBX7PpoPAUzZtIzsgc2dm34vDX+BQNFV814Vgm0R9rsjtYCRNxmeBT1IvT
         F2mc4XBkmLqKZKo3TS40fWk49egltz+IVwbFRrBtjx2SDEWCHwXm3qr8DBvMnCAv78W/
         8b7Sa6oiUl68IbEarO3J1aEwCPhmLx9TKFCQ2Akau+igVDIk6qSD8Hb+meymHMNsYCkr
         sWww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nFo+E7c4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ogdRUOrDphTaIi3VHe7bZFDv3qpiDk4LP2yzYzbP6bQ=;
        b=qE3EeRR6xcO3uQuXjrfd7Iqy/M/9BUHHgsM5zuskJWBVqsIGTca3JOdhZWCsqcyXtY
         G0TKuyRUUpIbf54cCg2Yt7Rm/Eu0f2jZ14EB3W34pA47CpwGMrsuGMxrqOZWZrw72D1t
         8f4pz4CbBuSYoiPZSCZMXUQmu6qXVoDsJAg1FADxdaR2st+XKOQiVT/8h/n+dN+jOKSj
         tj+QOe8C7CrnxfoXCvn5dqQ8nkvsQKnII14juS07KROZc20SO6HOs3aWhqkHrGlsUcLJ
         LuAQy+R0mRnMb9gg4Dv3D81gfgyUGF/ks0laglKjUQNBXoqPo47HdFo76zRJC7rKesaP
         6KRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ogdRUOrDphTaIi3VHe7bZFDv3qpiDk4LP2yzYzbP6bQ=;
        b=q++Ceji7qnuiIqasJ95lgpWBf4mvVY8a4MDgjV9UBSSN9XiMWjTa9YBoVAbs3hmsze
         BH+utEmCJ4kWNfX+g7otwRI9ao9f7jfW3Nw5Xs/zP7WCd5IqTrgl6CZRDN3R/ec9fNO5
         23amyKeJu9kZ70xTrlwm/hyuetBzmsUfpxIOy4N5RmhgPrbIE0vTIGQvEs8GqkYsCwxN
         3XFtW3oksvS4g4PRqng0BxaWoezoVNuLr8GUi+hv2JsoqCIjRddk3+0Aw2SnmqDYOOYn
         ovWwFB7DdyTfoVsKMwMWi5dNo0rhObPcC8xnFAjrjpXBlu9/SP2R9at00BU3sMEmlx6X
         khkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3Rn8jmuARPsaaOSP6QYVAoOGpZ9tH80IqEZKOXZaopwTZyooTm
	LrpdLQ+Nvg8C9HgfCYAxQaI=
X-Google-Smtp-Source: ADFU+vumJLWC9ozs56VT4Qv1h014qMMnSeu2C4UfczqF0c7zwGFpDstxg513avrN/qFKvDpCMymA1A==
X-Received: by 2002:a63:fc52:: with SMTP id r18mr23409349pgk.96.1585008879466;
        Mon, 23 Mar 2020 17:14:39 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9308:: with SMTP id p8ls928248pjo.0.gmail; Mon, 23
 Mar 2020 17:14:38 -0700 (PDT)
X-Received: by 2002:a17:90a:feb:: with SMTP id 98mr2157077pjz.72.1585008878405;
        Mon, 23 Mar 2020 17:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585008878; cv=none;
        d=google.com; s=arc-20160816;
        b=J4aKPMDEpUda9YLaLxGAHunWL+wt9wkM6rmpH4RkIsYrVX6u2JsMr6niAaN4DaKAID
         hwyRlr2rX9fbWANWt9zXJQ07vOsv7Lxo6mEK3QSUtQi7CC9M5q8/5iLSd0rIFZjw4Woi
         KYSNL/v/VZfkgQJxzArNmcCPgODUTu7CvFx+wyMSBuUUvZa2RNXb7r5UMRDsoQ+QZtay
         mgTWGS3Chv5PzU66hR3bI4N74Z98GL7hO5wZAQD2aWbyW6ZZ7hj+yamvsfuosPX7Dl50
         JLPAR8sH78Key5Wgbi9B4gy4iXQyRHhmq92vcoQqLIkCCE/fWo6uOrsNptaARysPV4QA
         TPBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=ObDKJrIo7JgfvIu0G1FSnalphKgwEZNqB/X4AcOMirk=;
        b=qTUn6wEYtgpej4mplTLTWqDs+EXqH0eKcOaQ+cbkHuV1zCXmOMHrBXwFqYT7M5S9i9
         D9UUaOBHgU8CVVlxA9Gcvek4lJ3GKFWABKfXAjMRJaGmAOSHRT3gk/R61wXOtfUsCcgR
         rstyZkW06fUTBm8Nxk6oFypPgM5p5ryPUvIbLbq+9mofKZqwVlyGgM7bXwIfNxxwiXiH
         9JA7xbUCM/Eft44YTFzPcGKfk9bY1bBUaEYFZ4TUP9xMB4n0MnN21vtNFIaqeo14BKHp
         0MZVIwrET1R9wRrXbAk0hQV+VpQE0glxV5t6OvvrFaiCZTXsQLVxx+Fw6JmPm7LMsoU5
         YG0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=nFo+E7c4;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id x12si1025028plv.3.2020.03.23.17.14.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:14:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O0EHnq026701;
	Tue, 24 Mar 2020 09:14:21 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O0EHnq026701
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, linux-crypto@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH v2 3/9] x86: remove always-defined CONFIG_AS_CFI
Date: Tue, 24 Mar 2020 09:13:52 +0900
Message-Id: <20200324001358.4520-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324001358.4520-1-masahiroy@kernel.org>
References: <20200324001358.4520-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=nFo+E7c4;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324001358.4520-4-masahiroy%40kernel.org.
