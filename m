Return-Path: <clang-built-linux+bncBAABB3VB4XZQKGQEBVREULI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D30190292
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:14:39 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id f71sf11773685oib.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 17:14:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585008878; cv=pass;
        d=google.com; s=arc-20160816;
        b=BCylOetQnM/oAlmJHn8Ns+Jvc25nSFmDj/ouIDNa6GLkAv2u9L9y+7FL46nvUSSXJj
         S6ycfJae6ULQEBgi/DrAr90jumQ6zvDxWxIZ+3zGOIrDuqQdGcuXu8QWyfoXjXdvCKwC
         /vgxq6Hf7rbmALEMDf7bzjeThavFoAGYlmVseshUO2+7f7H+xLRJqTsi5Kz/uhFBhZbs
         uH5QK2qcIuJh06KbPo8MIEIZ8hcqY2iGEA4xlTaGaLKt8ifHrBFH+qu80BjImykKutXR
         ALbwmdkIFUtU+9hhQWieGQV1Nry90PdAOMuJuHaEeNLFXFwLRwaW5xJy3VrpP1v8wEj5
         AD4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=9Pb3b6z4Bp/voDy/q2+Fm6ygyo6O0Xly405iq7vaJC0=;
        b=XuAuS+FDbc6lHk5SUvCHx6JDdlzMZDdyeuPwCCswIDAG6Mtya9CjOuGtSNXJppbEB2
         DdJcsztDSmmu/4VNBOdfQJShXzS2A/WS0hhqN5aa9OwBAbolsxXg9zoyEPgeLwGk0QVE
         44UAyOussBz4YGTV/2PJdPsNq6xOop0+ouQil8wfupw97FnViWGnGFLaIuwpulZQOA2a
         r9qx6Wc5OX8R1e2xXnx0z7N7aiPwUrq597xY/WOyOQyCszWgTevaIaXOMZ+fui2MlSLC
         YPeHIFuvKmMKwIsPBRnidHYRLBZQHRV8wi8RNQjCpBsycbSRRyoQoRNQPaKqMvZOvy4T
         NcDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vNHVDqn0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9Pb3b6z4Bp/voDy/q2+Fm6ygyo6O0Xly405iq7vaJC0=;
        b=RerP200H3Jb1jAUvzJMAgXEG/LnjQQMi/5QFPlp3kW1Q9Snd8exEAVyeqhlfzeSEWj
         ry1V4IxCI0w1JrLSH6eGL9/rq/kyHx8jCjnMQCk8YL7XlfRpznFvcR33ifa6DrLwAeNR
         ZN3YbnjkDelx/rZQzaz4eM8bTVE2ZKa8sdX+Kq/4vP8hAEVd7inQbdqiIyWcv3pjwjOZ
         f4fyv5VnefNGEgp2a6VDDDVfGADCT+/XXOB2N7wZRiBpKZVO3IU32FjPTy0Exrok1MoM
         XTfhtqFUWJKhN2Mfg3nfGCiTZ7yfjDPkH2fA3FptY2EXs7ksKNQeMYVWNi756Pk0rfqa
         etfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Pb3b6z4Bp/voDy/q2+Fm6ygyo6O0Xly405iq7vaJC0=;
        b=PKin/2S1LMh22Q2Yrwnej+Qbcmu3l1Nn+M2eu96mGa1V6kIlF9GSJPoWEKuKSKVbRf
         mRKSHB53mcEuxPtvZlBW54joplr7xTJT+PbsytP4iKYTeNVxdwPP5+bNb0JrFRA/seJ7
         gLYISo/KoDXM+OjY03ityKPkrLujQ67di2aDdU5FsOB6GK8Q4pnV3Md3QzhT00NdJn6R
         ClUdoHXwAgWA2yJxfYGJvctd3Q5rx66eUjKn8+YuVaAdx5Nq1KTD8mUeGO59INgNrDtY
         0ieVqQwl/UsLE1pheaNwU6WgUE/zFDZVCXyYdypr7TYJF+YUOcmObnkCukXkHxUvzecc
         tbPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ21Cav0Wvq3mfGilSeDwpcyugovBGbn2WRRFOedAdaxg2XxmWaA
	z6ncKc+zw2Kv7huVhWwA5Uc=
X-Google-Smtp-Source: ADFU+vvvYFq2JrA38VKgvext586DGtL2PDBC88srYHhJSJYWWqnrsuxBjD7kXWQ+Pg5AuRKzzIDd5g==
X-Received: by 2002:a05:6808:56:: with SMTP id v22mr1464622oic.116.1585008878257;
        Mon, 23 Mar 2020 17:14:38 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3bc8:: with SMTP id k66ls627489otc.10.gmail; Mon, 23 Mar
 2020 17:14:38 -0700 (PDT)
X-Received: by 2002:a9d:3f2:: with SMTP id f105mr10502576otf.187.1585008877941;
        Mon, 23 Mar 2020 17:14:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585008877; cv=none;
        d=google.com; s=arc-20160816;
        b=zipfjrd6z7SE6gjEHW9NHX2nJyhRsvDafq1uzivfi/qo24FPiM125oXhYkHtQ2LqKk
         jY2xGCa0cuUX1tBQ/8jJwvVBM2Xlwc7bxm4T9mEYB8E+Dq8TM5pGP5d5kOLeQXyfVbpw
         gs8q+r+k4fpmd0sbVIkzSH0aOwPuvgcQoMxXMoxgGnB24SSfhZj3TaYBuSnAVn/BTb/s
         J8mToyAWHUv+WHoOiA1gXtb6xdlqeA08nhZonaPn7ZPME7Wu6dNQ+Yzj75uTyNTBBrOB
         H8ojNpOr+aWPmLml9IUfUsjh12DNJeRUToAmfyHGajS84Z3X/SZsQVyGI7kTF5Y1bsTq
         q3pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=PXf90zEL0PBjxAqiIelC9lPpjynKaO7oTN5qSukZw9U=;
        b=lmyIe/bSx5JmqxRzxa+HphLaIWsZwRL+wbGnt8Piy1Qw9kFQIM6DSOu8qNlGNcurj2
         1UXD7Cm0kaI7sp+aBXAAnc/TAH+6jPJsT8CQr08inuPaFXShRSo9JMRGR15isnDia3Kl
         i9UTALapiZhI/kbHntIqY7A4lHdvXTmZ7h3lr9Bb/xkjv06Q3yu+g0NTRAQzJmidRr8y
         L+QOqD06HsPDAbSqH2xDG1tnGo3Hh4q0r8hj+jS6Nork4pR5KqzQ3YPk0PuHy9E4D9cy
         WNYIR92uQjqVuAR/SBP0+X2xmZyD5sUMCr+4H/acHN7TDfn0FfZGm7UEPaG1z4qx9Gou
         qNVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=vNHVDqn0;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id d188si717348oig.0.2020.03.23.17.14.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 17:14:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net [126.93.102.113]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O0EHns026701;
	Tue, 24 Mar 2020 09:14:23 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O0EHns026701
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <masahiroy@kernel.org>
To: x86@kernel.org, Ingo Molnar <mingo@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>,
        "H . Peter Anvin" <hpa@zytor.com>, linux-crypto@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, "Jason A . Donenfeld" <Jason@zx2c4.com>,
        Masahiro Yamada <masahiroy@kernel.org>, Ingo Molnar <mingo@redhat.com>,
        clang-built-linux@googlegroups.com
Subject: [PATCH v2 5/9] x86: remove always-defined CONFIG_AS_CFI_SECTIONS
Date: Tue, 24 Mar 2020 09:13:54 +0900
Message-Id: <20200324001358.4520-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324001358.4520-1-masahiroy@kernel.org>
References: <20200324001358.4520-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=vNHVDqn0;       spf=softfail
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324001358.4520-6-masahiroy%40kernel.org.
