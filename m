Return-Path: <clang-built-linux+bncBCS7XUWOUULBBRFS3X7QKGQE4NROIDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id C20FD2ED704
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 19:56:05 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id gj22sf4787923pjb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 10:56:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610045764; cv=pass;
        d=google.com; s=arc-20160816;
        b=pF9E3JY4o/GGQRPDBui+rChCR2Z7+f63ZW+N1POVYtQXLO9kNRuiQVB4wiPTXt/NiW
         Ey0+f50P8zu46JzAEjWVocBFe79ceyzSGXPw8BdFYwewBrksc5BlcZuRgRtaVrYGScZd
         2bRW7MZLhPTU20pLQfO7lo7FYUFUf1yCHzhyQ3l8DK/PzrsNe3SgLbWYv+HK5NIPdf+V
         sWEGsoo08xmjtWn6gszcY/ifpz1UbG4TkSRQl2urGCq2VPrfT7OAtJZzeeUM5tFOLC4K
         5VLudrIGMEylGPpeszBRrm/uS0OG+vlJKTkaJgtVXNz0EmwmPPxRDruIk/lIhL5G8Y32
         WcjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=FPf24Gbw9LPqN1YJVL2dJaolHSbcvlV07ql4nJkhJS4=;
        b=CJcltddjdfZ8dYYBqZPaSoXe2kjcpibevRddDW+6wOAceit7GKNmHTFGl4rO3BlqEa
         EFOqepVCTmFYPQo8kh9EwbgyN0XLZFtrRGl1IYD1O9/mnIUQvh7845Nj9B4VB/XRC4P5
         PDHKQ3xm6m6LtzW2irDSqXTq8ta89OF8MX4TJbxeWpZUL4LJ8LlaFEiphCZQIdyhEBT7
         lnjbC23+BvePRM/Kl4SrT4b/PmZkpsuH2yCiqw/0eriYUYdBLk4a4ekYT9+UPahr4oaX
         6XKJEOPss15zUkSRQPj6YHa1M/V8BUR2GfEqqjqOfuVBa3VGVy1aPWFmNGuXw3yqcqt7
         7Grw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UOoIuhcw;
       spf=pass (google.com: domain of 3q1n3xwckedgg4mel4saiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3Q1n3XwcKEdgG4MEL4SAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FPf24Gbw9LPqN1YJVL2dJaolHSbcvlV07ql4nJkhJS4=;
        b=XRrwmyHfgQvFnEBSRBAxkI3AMEH81TJMnkyJfO536fucrsSaDt17kzMeMRt9QKduIe
         pnMASU3wjzolr7tPazKbAH8/yF27sKbSmY43/3M4dz4dw/dnlHVvqZfgbdiSdPAOsJku
         zsZrW0tPHRQvgj8lYINpzWdWBjXJkutc/E2L7BhQd/+rYyGMpYJBhIvc84/btith5wUS
         A5jNZuzL1aW5omG+ysSmbSexfTtU5mxRaXK8DAKD6csOY/ycI5GbJRIJSWJL+CuMBwmf
         Lg9YEfxH9D89lwSeHM0WvYgHOTTB0CuLuHm8S+hSglDbAujGxebCh/YH3TnnTUaGWDZe
         4fRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FPf24Gbw9LPqN1YJVL2dJaolHSbcvlV07ql4nJkhJS4=;
        b=c1vOTe0OLLb5ppbbh7Q6zUln6WDJ8Blc/iJ9w2DmzCtLOnKqqRywK/Bm7EQ+nFSxZz
         dsYzGL0biRpLPKiKbYoaRKaFm6CHCdJZCmC8NZKMfEznuVC69upYtR61o1Iin59sjezm
         SW3vNP2Wb5jVFw8X8sD/kgKzPymytRsYUJl39PnKKnf6u+Iknp9SjzWiU0SnDopdZvir
         /WvWdagUu3kJIiRZXFLBp+kEUOvVSx6U6gF6f4Hn8QSSPa0c/m1N7BwnxH1dA1dhdxQ+
         xP35BcCYLPdpsA59Ktrpilgrpynd0IXKmELHymJDDdOgSXOZKYzaWgDCJR6UYrc/Mcig
         Eokg==
X-Gm-Message-State: AOAM533aXLUIf+BEVo5TpoCJfWNbkEA9ZXeJlpZRvMAOrT3/xoBYTFMG
	+n3x+Y+dMzm8GxfAXoCyZu4=
X-Google-Smtp-Source: ABdhPJyxy3dlKiuOOA+J6lzwHrybbLqzZVf+FoNTzuaf8Z6M+Q69k8SLdU9gfoYC7Es5fg9oOk4bGQ==
X-Received: by 2002:a65:6249:: with SMTP id q9mr3263631pgv.82.1610045764315;
        Thu, 07 Jan 2021 10:56:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:78d4:: with SMTP id t203ls2874738pfc.6.gmail; Thu, 07
 Jan 2021 10:56:03 -0800 (PST)
X-Received: by 2002:a62:7fcd:0:b029:19f:5d05:4a83 with SMTP id a196-20020a627fcd0000b029019f5d054a83mr9871807pfd.45.1610045763634;
        Thu, 07 Jan 2021 10:56:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610045763; cv=none;
        d=google.com; s=arc-20160816;
        b=BE14oJUCOiLABweqnWIIty5RyOZRtBcBFcmkKKHuN8AzDGevgBl58F1hPJJYGYWz7O
         oyNtzpve0sw+9OtBpOzeV/3NGM49dc5VLKcxXfkXyjUdZ/wluN3avnP1L3ZcebFbnUW4
         aAqZq2vRAZqoECYZm8McF3On8YOiS3dMcXDZ1rDgv2zxuSqI9EgA/bl7m0qy9gHuYzYD
         gQ8QrsVYNMvFDdVG5rjzhh4qqlMluRUd8+Uf/V7D8AEIrIJU1Q925HnYBrj65NQ4p3vu
         nnjXuXLCgmvEK4N9nxmBuvJVLeBYcPIW6rS0RBMLT5cnVVjibj4zevZZqTYUMSzv7iiL
         ys4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Rs0BbOafhHV4Dcur9iSUX1ae/IOL8F95TEfFD8pRkl0=;
        b=yjUjU1zsid42mSyVhxOFprvLC+19eoTUWSFrxg873FjtXcXMn401K0ui4L+a6abLeA
         Fxpju7vdsoa4WoHt0WiEbw3tKs8Ygelh/sBuXQ1pVQJD7eQoXn6RzRbRcbez2EDp4Xia
         0eW+Sgu4lhV+Pq/BMENYfK9DWNGby2bfJPN2rHiDGiWqUSbEUnIsqjcUQE8ohiaK1euP
         AEVDPIntERWcTpY4h8PeEowCJ8DVxYYAaN2udgMCBNNCKeHGaCoDfHg/Vka1lCVJNoR4
         bJ5vKQ0BSxOot4kRelcZxbs+Se6SJKUbGgjY6p8U+KRD6OpXjfwa4HFweET9CjPAl621
         Qimw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UOoIuhcw;
       spf=pass (google.com: domain of 3q1n3xwckedgg4mel4saiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3Q1n3XwcKEdgG4MEL4SAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id j22si637539pgn.5.2021.01.07.10.56.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 10:56:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 3q1n3xwckedgg4mel4saiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--maskray.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 15so4784888pfu.6
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 10:56:03 -0800 (PST)
Sender: "maskray via sendgmr" <maskray@maskray1.svl.corp.google.com>
X-Received: from maskray1.svl.corp.google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
 (user=maskray job=sendgmr) by 2002:a17:90a:7149:: with SMTP id
 g9mr10484548pjs.12.1610045763206; Thu, 07 Jan 2021 10:56:03 -0800 (PST)
Date: Thu,  7 Jan 2021 10:55:55 -0800
In-Reply-To: <20210107023145.GA3778412@ubuntu-m3-large-x86>
Message-Id: <20210107185555.2781221-1-maskray@google.com>
Mime-Version: 1.0
References: <20210107023145.GA3778412@ubuntu-m3-large-x86>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
Subject: [PATCH v2] x86: Treat R_386_PLT32 as R_386_PC32
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	x86@kernel.org
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	Fangrui Song <maskray@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UOoIuhcw;       spf=pass
 (google.com: domain of 3q1n3xwckedgg4mel4saiiaf8.6ig6f4ha-5ocfn-fchoraiiaf8aliojm.6ig@flex--maskray.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3Q1n3XwcKEdgG4MEL4SAIIAF8.6IG6F4HA-5OCFN-FCHORAIIAF8ALIOJM.6IG@flex--maskray.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

This is similar to commit b21ebf2fb4cd ("x86: Treat R_X86_64_PLT32 as
R_X86_64_PC32"), but for i386.  As far as Linux kernel is concerned,
R_386_PLT32 can be treated the same as R_386_PC32.

R_386_PC32/R_X86_64_PC32 are PC-relative relocation types with the
requirement that the symbol address is significant.
R_386_PLT32/R_X86_64_PLT32 are PC-relative relocation types without the
address significance requirement.

On x86-64, there is no PIC vs non-PIC PLT distinction and an
R_X86_64_PLT32 relocation is produced for both `call/jmp foo` and
`call/jmp foo@PLT` with newer (2018) GNU as/LLVM integrated assembler.

On i386, there are 2 types of PLTs, PIC and non-PIC. Currently the
convention is to use R_386_PC32 for non-PIC PLT and R_386_PLT32 for PIC
PLT, but R_386_PLT32 is arguably preferable for -fno-pic code as well:
this can avoid a "canonical PLT entry" (st_shndx=0, st_value!=0) if the
symbol turns out to be defined externally.

clang-12 -fno-pic (since
https://github.com/llvm/llvm-project/commit/961f31d8ad14c66829991522d73e14b5a96ff6d4)
can emit R_386_PLT32 for compiler produced symbols (if we drop
-ffreestanding for CONFIG_X86_32, library call optimization can produce
newer declarations) and future GCC -fno-pic may emit R_386_PLT32 as well
if an option like -fno-direct-access-external-data is adopted to avoid
canonical PLT entry/copy relocations.

Link: https://github.com/ClangBuiltLinux/linux/issues/1210
Link: https://github.com/llvm/llvm-project/commit/961f31d8ad14c66829991522d73e14b5a96ff6d4
Link: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=98112
Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Fangrui Song <maskray@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

---
Change in v2:
* Improve commit message
---
 arch/x86/kernel/module.c | 1 +
 arch/x86/tools/relocs.c  | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/x86/kernel/module.c b/arch/x86/kernel/module.c
index 34b153cbd4ac..5e9a34b5bd74 100644
--- a/arch/x86/kernel/module.c
+++ b/arch/x86/kernel/module.c
@@ -114,6 +114,7 @@ int apply_relocate(Elf32_Shdr *sechdrs,
 			*location += sym->st_value;
 			break;
 		case R_386_PC32:
+		case R_386_PLT32:
 			/* Add the value, subtract its position */
 			*location += sym->st_value - (uint32_t)location;
 			break;
diff --git a/arch/x86/tools/relocs.c b/arch/x86/tools/relocs.c
index ce7188cbdae5..717e48ca28b6 100644
--- a/arch/x86/tools/relocs.c
+++ b/arch/x86/tools/relocs.c
@@ -867,6 +867,7 @@ static int do_reloc32(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
 		 * NONE can be ignored and PC relative relocations don't
 		 * need to be adjusted.
@@ -910,6 +911,7 @@ static int do_reloc_real(struct section *sec, Elf_Rel *rel, Elf_Sym *sym,
 	case R_386_PC32:
 	case R_386_PC16:
 	case R_386_PC8:
+	case R_386_PLT32:
 		/*
 		 * NONE can be ignored and PC relative relocations don't
 		 * need to be adjusted.
-- 
2.29.2.729.g45daf8777d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107185555.2781221-1-maskray%40google.com.
