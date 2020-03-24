Return-Path: <clang-built-linux+bncBAABBIET47ZQKGQEP5UZ3DA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA58C190804
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id k67sf2831772pga.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=EEcAclLmlxyhN2SePvqi+lb/V9kAOPir8gm9va/4n2Ecf3mg/l2E7FPP45qJGlBtmQ
         bAITvaTcAftMGW2OQWTJxo6d3WKPhloLLgV/KlVPSKYP0+PJP4tKeEpGyk5gwp8QyfYn
         FCyLqUVbZEyaWf1vjmrvzXsKGVM2kesNK2Qpx1TZRwUq4R2NX+WDtUXokIw8q3ojbNXV
         Yt4D+W2cWqxwsauhLl5EQf8PVFHzJ/LmSQwWVK992323uc1IIAZiDunPtRdzKH37uMfO
         LleBwn5ohtJR9/QruacfAqbxalTvpt6S9ByOj6UMkGzlZ4hQf/pOKcvllymKc1rAySqj
         3Omg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=3U1tbWmPGL3GozBL4IVwuzw/Fz09QkUEbUgHuQrnXrM=;
        b=tnWKgMeDw57wVrG+7rOxIM6sbVkjJA1nFMXjrYk1zVgGu+nHPoxCFPgGl7rudjEz6W
         JhuWcSvL2IqIkf31rMTuC4p0ulwAroRbWzzOttC7tJ35Bl5+wRDvMNU+FyFhLN/45Bxz
         +ZuJ5oEs35cFgB1hKD+Z1K3yAncQvEcUkipHWdg50Etr7woHrnjY9EPtWb1ZsTbG44XW
         GAW8fvbYmYG9x0ZvIISP6KBAEwgov1KS8TlU8A5NaRkppiVcGKad9RqWtTFQ3N7PgFAh
         f1I3Iyre1KjYbE1CthUunNjYfbGt0vZCBzMOCezhezhjSCg6iPL3dTTt3HOSoKriimOz
         7IuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rCOwUiAw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3U1tbWmPGL3GozBL4IVwuzw/Fz09QkUEbUgHuQrnXrM=;
        b=G/6sageGSx0pR7Um0vKksfQNM5AeCNc929S71Fn+G8w35XHJCMmdQgteLeNgg/u9Ze
         HX3CkqIXOg8OQYxFatLprMnKW6HzSYYbAbiszAh9y+6W8tuFXpPN1m5c6kBKQRVfDwW4
         66DRo1EG9Lagan1ooIYLcqa7BKCBxxJTOXz5WZTmHWVidhJyAjFIzMi0Fl0+rEzXr/On
         PnJ2h9mMoaVGW53NqsMe1kMafH9NOXJy65CIwPsiYNIG5g7C5D6ETk0/ZQiglCN0vz52
         NCtYdtp5c0Kmpms7bg8gwBfPKU6zmBYJg2t8DmZFVcg3mnda0m74cHmahYfOQxMYUEIu
         1s/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3U1tbWmPGL3GozBL4IVwuzw/Fz09QkUEbUgHuQrnXrM=;
        b=ODrJSejbN11yXQouy/LWu4zaH+9yQpfKJqrUzvkCpvtlFrmjcZNyvzO+/e9sKg8/1X
         KvsPX+DjTZQc2HA8wpsVwnU8pfcRnnJXIW8IyqEN4vw6ozSC3S+YuOV5CZnT2yBNmRcN
         XftSZtFIRU+ZkGuM4Y731DTUhy8vofakZYxGgiooNxubXmXRLIpDJOTbUXWi56Rtzn0p
         NIMumRO/OKcdT6Zt/szquDpmi7uzxTC/gjYtvXmMijy6MEG5enxYuE+OemX7ojPwPnEJ
         0iLtOVyi0kxxKB/HzsD3/hfRYynPRZ9EObPP13hhqH6ni8tQClJlYbKvg+4gCgj32FHL
         +3XQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3UiOEg5IJEBnvl1XbUy/31TVtDLSXCmdIZWAA1emxNlnw4ZH8e
	KgdY+bB/wLc/BdqbJe/TNug=
X-Google-Smtp-Source: ADFU+vsdP5SOanaT86gN6EzFvxSpX1Ga+rtIeJClk7U4di/14qldyae9+1sD23rRvPZW3/IZFKYLXA==
X-Received: by 2002:a17:90a:bd0e:: with SMTP id y14mr4182681pjr.11.1585039777040;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:316:: with SMTP id 22ls305497pgd.5.gmail; Tue, 24 Mar
 2020 01:49:36 -0700 (PDT)
X-Received: by 2002:a62:520a:: with SMTP id g10mr28192453pfb.271.1585039776633;
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039776; cv=none;
        d=google.com; s=arc-20160816;
        b=E5rLF8ntLuilrxfNSkc62seaPmZ1ss4iWJE+89tiptR24QBhBBhw4ynd7paX2wxRay
         rdeAi378Uxb87hC1QtkDwMQvqT9J07j549xixaSDanem3+ltq5854s16Xgyb7mBmYwX8
         YLDTfBljCBbT/Ex6TthESdX4URWQGrbUCanuGymp/13cCm5q2PJNKO37rl7uyjdKJN2+
         iZ9JV6em5oxQtQFMgF2wgWDFqgWKbJmWlbt1OnGJZrGEgBB0yzho1jGVq9xo2XHSIG1q
         KV4fykRKK/84ftNaqhGkEwAzto33P6qAmis9fRaNckd6hAnQGnBXhBz9m/eoiX8kRuwO
         8LKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=rh1pQBmt9vmEvu9Z/Jx+j0VJLFTZ8OkR38V/FPsXekA=;
        b=a36rbydp5bHX68pqPphnQIgZsPAo1lid0XuPlPNTzclQdY37pK4DGxrR37cQbs096K
         T+INL1Vta8BGr+LFDSTIvORKX9z1ZQNlzMPxbpGxfpN27Fg8hC7U+ogHYiUNejJDNyNr
         IKzlQJ9tVb3zXvoATrLSYF3RVKYR7Me+xQDS42LZ3KgdzI+VjdxPkHysDedZKDQ3x0nI
         guuACgnrAgIJjZ0LDczHZ+yDwmu6aGXQvYUQ10EyZsnMpfCuL0J4+3oM2bySobjHkU2R
         Irf3I13uofKl2UHbipyYfVOvfiHZZrIvixj0TcmtFjQlIO0nFERfm8n6ZRal8VEMlDyo
         fRxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=rCOwUiAw;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id c207si283870pfc.3.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:36 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsa011219;
	Tue, 24 Mar 2020 17:48:47 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsa011219
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: "David S . Miller" <davem@davemloft.net>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        Kees Cook <keescook@chromium.org>, clang-built-linux@googlegroups.com,
        Herbert Xu <herbert@gondor.apana.org.au>, linux-crypto@vger.kernel.org,
        Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
        Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>,
        "H . Peter Anvin" <hpa@zytor.com>, x86@kernel.org,
        linux-kbuild@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>
Subject: [PATCH 03/16] x86: remove always-defined CONFIG_AS_CFI
Date: Tue, 24 Mar 2020 17:48:08 +0900
Message-Id: <20200324084821.29944-4-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=rCOwUiAw;       spf=softfail
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
we can hard-code the assembler code, and delete CFI_* macros entirely.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-4-masahiroy%40kernel.org.
