Return-Path: <clang-built-linux+bncBAABBIMT47ZQKGQEELELYHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA42190801
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 09:49:38 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id w203sf12589367oiw.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 01:49:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585039777; cv=pass;
        d=google.com; s=arc-20160816;
        b=lNZOjyegw+remjkpVDAI/dAOuezJ3rdy+p/peL0uqAzkgJ55d4kE3/s2DJ6oRmmAwp
         q7d+FI2uOPoUDji+B4fI9Bz+e9+ZZlh4jfZ0oX+HiwPIP6sAP6995yp/WOAVLOyPzZpy
         5vQfeh0B2a1QKBnyvmxn7qyoz9OX8Y0hrLp6uMtwg0d0bFPjZZhGH70rwHGf6WmlbdiZ
         wilwCVheIs0SIvj8p97+cMCKgRWU9ZHG6uPP3ZmcmbOzOmJSDuRF2ao3HQFPodKh8Y/1
         fDr2Y/hV2q1Znh3bzD2PsJuRDhWU820F4wS8U3vM/CXFpDhL+9kWEGIZvWDqC0onPpl5
         Lfcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:dkim-filter:mime-version:sender
         :dkim-signature;
        bh=7THO9Esw1EYf++lWGTk4Ec3REJOyQ8w6lOo8EhqqQ7w=;
        b=QNTI4Qet8rgX3TnjI2hojjxqBZIYXD53iS0AEmaUMbbp7IF7omvkMnvn/wySoG56S+
         WPzCZP8xBAeMg+eOAFmBkx7XXO4FUiZSTr6fq+dwFQ5OKWRxzafcy0Ts2FlnTLdc1yUA
         xSS8lIgqkYKmbayGDNiUrfhnZr8CM3zc1UzJDtQ4m9TeXKDREwI446UolTh9df6MlwPw
         jaFcfcBxBSkvAJPLVkGHUjlOf81RaRQdtyCQO2BaYvHhFvcMyRoc6LX2Cqat0IHF+FpR
         G/pjoFUVeG05OD9+k7oWX9yPpd+qdssBEvbEfS9JSa282YNjocZu2LXMKJZRqgbep5KN
         QgqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=g3kZUzkJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7THO9Esw1EYf++lWGTk4Ec3REJOyQ8w6lOo8EhqqQ7w=;
        b=g15lor/bnzZ3dH/RA+YHqw62YLwpdpqrTMQMZxIUT3GGumCLh62yubUiJ2k99ylYRG
         w4bdY0iyHyhPTdy484KRcgn3Jkwcju2BU6Sb0sxD+YmXVQxDc1LRmuILmp6wQ2V73Yu6
         +kKwpbJLjC0XpDoE/S/GbBkwMLI9JogLdm2tPjVMEbvwbLVgSY5zmujQ/LhJYYUs2bqj
         yMYnbk8eF26FBA8bLVLscrz+34nTxzyQ0YlKm2r7WQy4H8lLCAkqIXGJl7u1O70IENHZ
         kU6zArXuu3wF5lGrkFWN6cpdv/ReEuM77o3E52SLGGzNfjs2BR62Ui56TKdHKjbCsT4n
         tXpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7THO9Esw1EYf++lWGTk4Ec3REJOyQ8w6lOo8EhqqQ7w=;
        b=YgaBnNQAS51h2twOQHPhVcRor0VD7cYWYPHyfq4arUJmbSJ6Q2TaY3jmy2ziHEPz6S
         i2neZxhKOiNVfoDsqFgM/oP17yrZ06rhK2brPzZKu2KriIB5s61m9kEYosQQd8lJW1Qv
         gaCGIOCRBZzKpAvgrvQsqG3IXGS8WktW2cSwFG+BY2jttjiXBZ/TvzTFDbbFKVrUp9ej
         xToBC3GJLkj2mEXpeTyA6IaFrulLAEaTfdPg5TGngCeOtLoQr25yYspKaH8cav0bGdFy
         QRzNcXWfFf93N1uzjS5dc4gmAnO6gr3w8caIyTNIxNiN17gmIYsX7RJQxB0NO7akOmEy
         sH3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ01SC73CJXNMWqav/yO5Wo0l9LJMcXtTUJpe9QbCrXaEMCxkpqD
	jfoosjH54xxeRp8+Q/8EohU=
X-Google-Smtp-Source: ADFU+vtN8eJycMAKk4R4Ia/8ZV3eCTBi4RPI6XChDw9SG//ZrjQ6E2VNta9qn6MIBicLmAmffhnJQA==
X-Received: by 2002:aca:3386:: with SMTP id z128mr2682464oiz.40.1585039777432;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:355b:: with SMTP id w27ls169848oog.6.gmail; Tue, 24 Mar
 2020 01:49:37 -0700 (PDT)
X-Received: by 2002:a4a:2fd0:: with SMTP id p199mr1619864oop.14.1585039777139;
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585039777; cv=none;
        d=google.com; s=arc-20160816;
        b=SUg/fYoVomVSy7AyqONku7YwivfPThhq+UNq5O2WJKaqVxQ4M9tNLeGRe3hW2tNGZ0
         uhZlIXedKSYdUS4rfk36Vzdss2uWlK7WBtAr0Vb3iCO0UQWgOnRwr7elPCjM2GSJYVpF
         QWy3BZwmgBeJxHbGwC25CgyQsvUXOEQyDN+lS6vuzTie1b+U4kMDxesuXuhr5mbCLJcD
         Ch1yVnwIxOHqdPRLV72rvIr26tfcB7PVKGorQ85huFctP8wyJJ8hgT0ejptXerlXj4gA
         3PN6osf4sSSIngy9+vTKc5KCN/mq9DcTVQT/NRkTxlnpNa6jGg7CndGi+gDl06F11r1u
         33Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:dkim-filter;
        bh=8ZgXz/KQR/y6RDQrCVrZRNgnI7Fumd7RqG2eKtNf9fA=;
        b=qg0i9DUPO/dlRdfEVp5WAYmSVOzTCXovV9ddk37JSOSshJoZGCw3xAjBfFTcA2t1WA
         8BG6uG6E0P0mMUTRtROks771RxxHax+o604GD0sZo7X5pjJAGExXdQ52VkwajEVDkK+n
         hnqaOASD/afoAaaR+4UwROp84yza/Xy+fATiThZ/oIKEkcnA/2K7waZHdJbHekuEaw5r
         c4CjOV1hNJ9b7NcApL1Da13a66YOmJ8MULpPpatSzJpAVKkCTUKharAwvejBmaCRdyhT
         KvfSPJ3MD3T+NY0X6H4mwGHjXBs9T0qANqqUICijtXprhgQ2KMBlZJNmI4CngQG519+v
         nGvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=g3kZUzkJ;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-09.nifty.com (conuserg-09.nifty.com. [210.131.2.76])
        by gmr-mx.google.com with ESMTPS id t81si1085200oie.5.2020.03.24.01.49.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Mar 2020 01:49:37 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.76 as permitted sender) client-ip=210.131.2.76;
Received: from pug.e01.socionext.com (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-09.nifty.com with ESMTP id 02O8mgsc011219;
	Tue, 24 Mar 2020 17:48:50 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 02O8mgsc011219
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
Subject: [PATCH 05/16] x86: remove always-defined CONFIG_AS_CFI_SECTIONS
Date: Tue, 24 Mar 2020 17:48:10 +0900
Message-Id: <20200324084821.29944-6-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324084821.29944-1-masahiroy@kernel.org>
References: <20200324084821.29944-1-masahiroy@kernel.org>
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=g3kZUzkJ;       spf=softfail
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324084821.29944-6-masahiroy%40kernel.org.
