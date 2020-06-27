Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBS6S3X3QKGQEMZTWV5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D4B20C2D7
	for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 17:44:13 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id i1sf8990744pgn.13
        for <lists+clang-built-linux@lfdr.de>; Sat, 27 Jun 2020 08:44:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593272652; cv=pass;
        d=google.com; s=arc-20160816;
        b=GP04Dt8wLWDSbj1N6uKZ+1AiwJUYkSbY1IrE4SINFAdOYKchaLooJgcAl7J88ci5PZ
         yiNmXoKxCLrF7i0hAuZtDWvutSwxIM+HeyU4sKqsA9XLujTjjHsFTJEA5nzOffZH4FMn
         DYlMlKZi8djqAXVVZj6PfrZUI5AgI0/nQ+77RahDw6XjYodA6fu0ui8EZLCwucORdJZo
         dPm+Vesl7tpXi6qt7hVzbLkHpyegQEpu92R0F2VusN/7YdHX9xo0iNvjliyUe+o2NEth
         lZncoa2CJY/nadKVASDElgxoiOFoyr9eRkSqAQkURg3jyDGnpwQw9oRkRfrV5c1nYURI
         NbcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gdXZ2GiuewXa3TzBZa00Ily0k/xMLTm0lANtQUtem2k=;
        b=1KFUhbxRYJWmM1XeZXOICmvathK0NJ0we6Xrc4f3eNQb+zhjpxz8wWDObO7QX2HPJe
         2CqHYd8bqVwrItI+LjWzBz5NMfgGEMSaI2CbIYNvPE9W2GpiGRSbyvXCAmHBtPIJ9Pro
         iMNXWAQ2Q0UnkEY9h814eII2GYk/TwoNuaJqjLBVvze65O+94VfhVDgYLaXPrYPAVMfZ
         P5GyrFGeG40zxUGU5UG+UQyx/TKs5Etd0Wbc0COM50QU+rPSHA0IUNH/lMcfxcfc4e7x
         XLeZlPtaEToZLzk6d7Wvj3vJ3+G7h19ZtD2LZVc7gdLp+7kh3s1b7mmnx3LE9crzwddt
         RdNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jiwENKYx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gdXZ2GiuewXa3TzBZa00Ily0k/xMLTm0lANtQUtem2k=;
        b=g+RIPWFHYiwxKPggbD28DDYmF24jGQF5xwXtR2/hn99hfSmE+CkIGhDEt0X6qwf9om
         KTwuig3b9IwssgKa15BVT8NENNkvF+JSsUI1+JuvCen2gz/y7BNu30gYSpMSvXgio1GR
         AfRLf52VbbEGtXz7lqD3IWjwwT4YtikeR+GSnV08iVj22+/hZGjw4BlbWo97hHn+lB7T
         LGa5rtdHAjiX5spHl0y42FYUaZw3qLAYbJcyLvY0+qRZVDYXnAbekI6rInijSv9ZCNDD
         fWoFX5OC8cledeUCdzGsRBunYBX/3TtF1+SlNAinWGb4FiVBuaDfLb1ezmA6fyBaaryy
         ab0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gdXZ2GiuewXa3TzBZa00Ily0k/xMLTm0lANtQUtem2k=;
        b=QY4UPgD06axJ++eiVgtYiGkdmaqL6FaDeamAY4COKPaQ668N4xLluDjc7s2WXfRsy5
         tDUtJtCY0zRclYaT9Fp2wwdjdtAwRbHQIffpWhrKhtTsuK+7rxbCRu46la6OUhrZf3Dw
         C0KxtbPvQpvKKNwXRVCo4nJ/gxVWMibL3UJcBKIFV0/kiL7ZkOYwJRGo1RBZZC5x+Ctd
         l5aBfWJxA+lD/u28asn2/WKtCHAkmg7RK4ziiOFK/cKELmsRshMWyAMxG/kdn7opmUNy
         1hic6UlhOjApcQGK7ameelkytiu/mFNLcXQqm/so0jhO/Vg7+aTMuGb8LZncpoablNag
         nAqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iWeKM3AzLNPnBFUc4n3bFGjNQ0anfoVhsWHuQ+ENf/USLwboR
	iN1up1vlSIvDLLvoNfgri20=
X-Google-Smtp-Source: ABdhPJykwP6wG1vs7mtqqguklox4DhqWkHmwcTB5hdqWSdZRVFDZC/Ki4mt4xA10O1uS/IKZuePhaA==
X-Received: by 2002:a17:90a:930b:: with SMTP id p11mr8942395pjo.230.1593272651898;
        Sat, 27 Jun 2020 08:44:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b91:: with SMTP id w17ls4550710pll.10.gmail; Sat,
 27 Jun 2020 08:44:11 -0700 (PDT)
X-Received: by 2002:a17:90a:260e:: with SMTP id l14mr9098092pje.76.1593272651514;
        Sat, 27 Jun 2020 08:44:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593272651; cv=none;
        d=google.com; s=arc-20160816;
        b=JF9cFgBr24qZJOoCQ7AKtsH7nXpO2ovZRfdpowObxf0V5VDrd/vdPvNQ06y7OnGMll
         uBLa8xC+8FxtTZKlvCttQ/OoslLnelpYtSGhPuoEEGlrwhFyMD0PqJenREosnFcuweko
         /DAdu1RdIXAUat8rbadJXxHLwZqWKXj9X5rtbDHNrTSFwstC5Q3CeFOGmm7mAnrZtDRa
         c/HTDOeB+RigIM0WCoyHEAbgUESG6fyWEY2bOLivPg7B5Af9F/Ptyj8oQn4IThpqZzA6
         lNtQAXP4HqpWgQgppAFuAMXv/YqWmR+JtNmSxoacUtjRDhfdP2BfCZ8+czO0ZrnClB6c
         6moA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=9ahst1LcMGvptdzipciPn0ZwzebgDhHbEcFE0yzAK/o=;
        b=iP0FFGtZrxz+Ki7EhjqKvv15xzKZx99r3qc9Vxfy91/pOXGSFXNS+48ujKyRO4O2oI
         fLvnryC2G5K1fQkXzlsBSbaat0z0uv2QCqg3RuSc7egDdtpRcXAL2BLix3+2EZEIc3Gv
         +A82T0YI+WTa5mspDeZfUYmMyz55g4g7efufaKXKuJMBJI9QhTxd1qTyv4vKud9PTG4m
         4Vcrk07OqCHSvWixsYZ3i4ir6KtI0KlsX/dhgnGUyMQB+FHcDcd5JDiQGeQMZwcWP+ES
         cofbAI3cSAnRw11c3dbr2dwCJJIQv7P9GDAt3mcadr5m25TsbFkHQasNkKRMJEUbS6V8
         VeAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jiwENKYx;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v187si769554pfc.4.2020.06.27.08.44.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 27 Jun 2020 08:44:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id d66so5988533pfd.6
        for <clang-built-linux@googlegroups.com>; Sat, 27 Jun 2020 08:44:11 -0700 (PDT)
X-Received: by 2002:a62:1790:: with SMTP id 138mr7148783pfx.306.1593272651229;
        Sat, 27 Jun 2020 08:44:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id l134sm25302847pga.50.2020.06.27.08.44.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2020 08:44:09 -0700 (PDT)
Date: Sat, 27 Jun 2020 08:44:08 -0700
From: Kees Cook <keescook@chromium.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Marco Elver <elver@google.com>,
	Dmitry Vyukov <dvyukov@google.com>, kasan-dev@googlegroups.com
Subject: Re: [PATCH v3 4/9] x86/build: Warn on orphan section placement
Message-ID: <202006270840.E0BC752A72@keescook>
References: <20200624014940.1204448-5-keescook@chromium.org>
 <202006250240.J1VuMKoC%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006250240.J1VuMKoC%lkp@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jiwENKYx;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 25, 2020 at 02:36:27AM +0800, kernel test robot wrote:
> I love your patch! Perhaps something to improve:
> [...]
> config: x86_64-randconfig-a012-20200624 (attached as .config)

CONFIG_KCSAN=y

> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 1d4c87335d5236ea1f35937e1014980ba961ae34)
> [...]
> All warnings (new ones prefixed by >>):
> 
>    ld.lld: warning: drivers/built-in.a(mfd/mt6397-irq.o):(.init_array.0) is being placed in '.init_array.0'

As far as I can tell, this is a Clang bug. But I don't know the
internals here, so I've opened:
https://bugs.llvm.org/show_bug.cgi?id=46478

and created a work-around patch for the kernel:


commit 915f2c343e59a14f00c68f4d7afcfdc621de0674
Author: Kees Cook <keescook@chromium.org>
Date:   Sat Jun 27 08:07:54 2020 -0700

    vmlinux.lds.h: Avoid KCSAN's unwanted sections
    
    KCSAN (-fsanitize=thread) produces unwanted[1] .eh_frame and .init_array.*
    sections. Add them to DISCARDS, except with CONFIG_CONSTRUCTORS, which
    wants to keep .init_array.* sections.
    
    [1] https://bugs.llvm.org/show_bug.cgi?id=46478
    
    Signed-off-by: Kees Cook <keescook@chromium.org>

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index f8a5b2333729..41c8c73de6c4 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -195,7 +195,9 @@ endif
 # Workaround for a gcc prelease that unfortunately was shipped in a suse release
 KBUILD_CFLAGS += -Wno-sign-compare
 #
-KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
+KBUILD_AFLAGS += -fno-asynchronous-unwind-tables -fno-unwind-tables
+KBUILD_CFLAGS += -fno-asynchronous-unwind-tables -fno-unwind-tables
+KBUILD_LDFLAGS += $(call ld-option,--no-ld-generated-unwind-info)
 
 # Avoid indirect branches in kernel to deal with Spectre
 ifdef CONFIG_RETPOLINE
diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index b1dca0762fc5..a44ee16abc78 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -934,10 +934,28 @@
 	EXIT_DATA
 #endif
 
+/*
+ * Clang's -fsanitize=thread produces unwanted sections (.eh_frame
+ * and .init_array.*), but CONFIG_CONSTRUCTORS wants to keep any
+ * .init_array.* sections.
+ * https://bugs.llvm.org/show_bug.cgi?id=46478
+ */
+#if defined(CONFIG_KCSAN) && !defined(CONFIG_CONSTRUCTORS)
+#define KCSAN_DISCARDS	 						\
+	*(.init_array) *(.init_array.*)					\
+	*(.eh_frame)
+#elif defined(CONFIG_KCSAN) && defined(CONFIG_CONSTRUCTORS)
+#define KCSAN_DISCARDS	 						\
+	*(.eh_frame)
+#else
+#define KCSAN_DISCARDS
+#endif
+
 #define DISCARDS							\
 	/DISCARD/ : {							\
 	EXIT_DISCARDS							\
 	EXIT_CALL							\
+	KCSAN_DISCARDS							\
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006270840.E0BC752A72%40keescook.
