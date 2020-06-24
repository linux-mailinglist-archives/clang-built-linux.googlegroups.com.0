Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBP7CZL3QKGQED24ZXMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B582069B6
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 03:49:52 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id e15sf534417oie.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 18:49:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592963391; cv=pass;
        d=google.com; s=arc-20160816;
        b=gi3ud4Zt1VId9kXGO4WE6O89w36deClCYmkgS/Ng/YP8uVWNp86IZ7q/OgUPockOuf
         wQ/nGQ3wPb5fJyaaNHHX2taIp0wG9lx0QRpjj+0qf2Fz4WwgroG6EeswzcM/x+5nkKZw
         7OcBJXwOBekM5UgWDcHsGsQ6ZA3xmC1cEEjc0XIYy0rknyw8wykK9Un6kpV7mkSyn/f2
         vMowFEpT7pv6noAyFYoKNytvopaCISJyPod40eYMdWepRyczBOMXeAiDic4BoyFbyiUb
         yab5Hp5ujGi1DjGCCxB0G8lnYvHKnsjGFOvHRQds6CQDene4ouRNdBadAQeBH7hp/WqC
         5Zig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=anx4YYPvCwEeQzewitpx2e0tPS+bSmHFco/GMRjw3eY=;
        b=Us0JPuPysh37192nOXJX42kjNT4hKObwCLMftsfWnf53jOR++MMpMfDsUqqe+OGOxd
         6elwERs/KneaPIk3B9dvojtbZDV2BUJo8Z9LdxW/+OHTW83VsLvV+h/vaa0Z+oyY8MVm
         9nyPhtOwTjp2JPH7HgPrdWGCXAEkuPJooGkRrPZrauwZOAjvAszjHabUBuihQS74W1nL
         oSiG49kzCECBnSpK0oOJlpqxudxUFrerIZzqcIPRVGo/RZu7M2O9v9uJ3MDG+s9l6YQ2
         bADaVMcpgc61gJ5huxxYoIzPa21HOhAhtVwBZMH08stRFd+ZV+Kgt1Tw90wE5v+Xa9O9
         EEtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jOZxT2Ps;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=anx4YYPvCwEeQzewitpx2e0tPS+bSmHFco/GMRjw3eY=;
        b=UmEIDpyLz2yxkJz+7k0okcv+zjVAWxDrzTWk3+SWZx4ITDaHAEAQWlSWpK6bSq4q9A
         WMiO8UX7nCVLMseKY5fLK44cyAu4jHVBk9NjUX4WwjGMDZ5Y6EYjHHdOHXaee01MAH2v
         Q1FmIzt+1rcxq8HLlBCFPjnvWmEjmm1uzwfYtZ0ECXAkvgfqb7CkwVA2vL1yW9Z9e3mE
         01xKyddudQHvTrP0nmZveaBAjtlldoGLlAjuCERF9vbg3zrvRblcBQ2jqkDUMWKTAuqS
         oFvKFTi2+T9WVauhgqRm+JhBjNaq02tDwgZQJk4JHcAJWMeHDyIFbDfhOqJ6OTOEdAFu
         SBEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=anx4YYPvCwEeQzewitpx2e0tPS+bSmHFco/GMRjw3eY=;
        b=BNWSjvnkONbzt5xirQJr4cRHxiqw/Uv2oQnaDjigb3B3U+kIpiGyrsGgDQJ6QIHvxY
         7ieOQimSH4UklOMjjDG0x68PwmqREpjjzf+e5T9GOfOakClfutIkRK89UviYPUzHfxVR
         cgJ7a6FhCWwsXh1NahLnbpxLufTV+jrDpstobzhBDUwzBamp/i+XQ7kCDlazVt24v/5y
         8wlq1mFChBj1RM/Vvfxx4+1aJ5NO6foZlmWb0/mwNwwPDrJcb91EiUiHK3c4HHDfH1Tk
         1yoYM8zisXnvIwrzpCNv5ui2H1Mu3bIFjWJuk/3FTDr0rkbDQGQq3kI00PJTkoayHL7N
         fLEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SMi7F7bYolu6+OkconKVN4emZ9dsA0VIVnaE7wzP8zYnZPWrE
	DvzUnWPzo41oy3mm6qFC6k8=
X-Google-Smtp-Source: ABdhPJzMiFETPrvFIvkTJlgXNohMfDY5ljYqcjZheZjpXQNNMR11Iv5qMcuX2gCjGtOMKoyj4KLThw==
X-Received: by 2002:a05:6830:20d7:: with SMTP id z23mr21810139otq.157.1592963391812;
        Tue, 23 Jun 2020 18:49:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d0d:: with SMTP id v13ls128217otn.3.gmail; Tue, 23 Jun
 2020 18:49:51 -0700 (PDT)
X-Received: by 2002:a9d:88a:: with SMTP id 10mr20586103otf.274.1592963391460;
        Tue, 23 Jun 2020 18:49:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592963391; cv=none;
        d=google.com; s=arc-20160816;
        b=dh+2knBy4/jR7pfiUX77SFPuT307GTp0U9za9mnt+QiuSg+Ypc9VeXiCzifI1vDQyC
         ES2NIZu9Z9j5Hhrkeu2AUy5O0KALknrWxVowR7q+Z4DhXlHwI2cJwkq66+bJi1ZKrogB
         lHzg9JoaXOhD8w+2nXI0QMP/THdUnaGeFzbYdv1zXRX0gzeVQsESGANtlAPthEWZ1PSd
         2Pv+W24svqhNfIs2KvKlAwLIg5h+hXaGIbH9aNMmyrM/z7h4CSAxAG/4AjNzSOcRaA/S
         u0S0Wp069vjeZQq1QjlTjXS4zVVnKe0UHE758EBhj2vKuv/JKjjfq48wr40VBxNU2hwp
         uiYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VSVwVb1orBbLFpFmeZIdSYi3mA1O04kaneM/R6F0kQA=;
        b=EnBGGNHf/zSUBCLw2s4cEbS0hQDY2ckdHAoBoVWfzqV942npCQ9sTzpyQgmiyIkva3
         z/eg9iRBkJudVSm2VDGl1SJkBcmTWwUgKIvjuij9W8syaTbRAwcJah0ZVI2XYRKFjNGd
         Us+S+bgbSyOVGYr0KEb8CnVMpYhaIRSxTvRsgL5u5YeBBSY8HTRfc7m08R3spvq/uBSJ
         Rs1Kbb9G8jTKuOA4BSiLdqqciyu9kHuZFxLX8c6JBLHwjrNkeBJOVGMupRCVJSkAO/YX
         Jdcp2ZYBoNjXqJkWLjQtsU+iiL1T2mmoLPB7y7fuW0Z0Rs/MSo85VQdw50yWMA6GmZiA
         ceHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jOZxT2Ps;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id j145si100673oib.5.2020.06.23.18.49.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 18:49:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id ne5so407065pjb.5
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 18:49:51 -0700 (PDT)
X-Received: by 2002:a17:902:7408:: with SMTP id g8mr24719845pll.143.1592963390847;
        Tue, 23 Jun 2020 18:49:50 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y9sm17907206pfr.184.2020.06.23.18.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 18:49:46 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v3 2/9] vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to STABS_DEBUG
Date: Tue, 23 Jun 2020 18:49:33 -0700
Message-Id: <20200624014940.1204448-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200624014940.1204448-1-keescook@chromium.org>
References: <20200624014940.1204448-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jOZxT2Ps;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
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

When linking vmlinux with LLD, the synthetic sections .symtab, .strtab,
and .shstrtab are listed as orphaned. Add them to the STABS_DEBUG section
so there will be no warnings when --orphan-handling=warn is used more
widely. (They are added above comment as it is the more common
order[1].)

ld.lld: warning: <internal>:(.symtab) is being placed in '.symtab'
ld.lld: warning: <internal>:(.shstrtab) is being placed in '.shstrtab'
ld.lld: warning: <internal>:(.strtab) is being placed in '.strtab'

[1] https://lore.kernel.org/lkml/20200622224928.o2a7jkq33guxfci4@google.com/

Reported-by: Fangrui Song <maskray@google.com>
Reviewed-by: Fangrui Song <maskray@google.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 1248a206be8d..8e71757f485b 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -792,7 +792,10 @@
 		.stab.exclstr 0 : { *(.stab.exclstr) }			\
 		.stab.index 0 : { *(.stab.index) }			\
 		.stab.indexstr 0 : { *(.stab.indexstr) }		\
-		.comment 0 : { *(.comment) }
+		.comment 0 : { *(.comment) }				\
+		.symtab 0 : { *(.symtab) }				\
+		.strtab 0 : { *(.strtab) }				\
+		.shstrtab 0 : { *(.shstrtab) }
 
 #ifdef CONFIG_GENERIC_BUG
 #define BUG_TABLE							\
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624014940.1204448-3-keescook%40chromium.org.
