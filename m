Return-Path: <clang-built-linux+bncBDOILZ6ZXABBBXOSQ6AAMGQE5BRQ5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6482F852A
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 20:13:34 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id q2sf4556386wrp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 11:13:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610738014; cv=pass;
        d=google.com; s=arc-20160816;
        b=QOtLGpRjYj5R0Z2UmKpUpXExL4gPGnsnOh8u8np9Yi+IF4LNM4+J+SY2iV2Cu3gtz9
         v1ye2OrGtxV25+uWjFYr5Ju858sa37nNpXZB9qpjmwgBWdMCbwa8j8LLHlXXCG3vIDoF
         B/RT+9qRUjUHiBMHUmgTySHMvGQzcBHiZPpIAeJP+X7jCkWdMSEVEffGnMMjNAqx5Te9
         0IqatdJsaZXlMj6hU9Jst8rjikV5tVZvbmFGgMRYAL2Cla/I5hIvVcHoomcaQI9EAmgi
         EIDi8PuaCdIvGa6lS4z1U0XyMjNuR3gaKzfnzk+lEvUE1m/IY2z77Fn3hliHTAG6B9ac
         Gd1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=A+tJN2ebBJvzX6GZpo7gU9nbB63M0D0yUF8L5XPSqGA=;
        b=DSLMWv43wA2rX0ywy9gXJsiIRi/NvX42F5H31jqFDF6YNwAUi82WymQ5+cX3HzZl3u
         qUhn63b020asZwbZofVO9w5uSu266uNtIhehBQmZsdPGtL4W6gavgIj1Rpwu0218SqoN
         gkCGW9WB7NvzZK2Hjf1U24c6o5xWxWzzkANO1QfjcAk1vnejg8rm/zHuPke7wfFoLBig
         rQh9RJfLBYtgW3BWLsjq16InGS9ElNHpewmGLwVgSwoHLbzog094vSYK7yh/D6EYOCix
         TVCTG4BSycMakmfw7z6o6pQwfI6X5Hw2am+kzrh4DdpOd+1upNgRGoeCRHLQBoEHKcni
         P2fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="e7I/8+0Q";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A+tJN2ebBJvzX6GZpo7gU9nbB63M0D0yUF8L5XPSqGA=;
        b=SikyPqFGG3gzbuJSvzgF/+7ITg2d9l0EYgv1GvJqRfwPkc8W3oYjCMEFPZkidyeQLm
         MLZyLB1kTTH61JLfIYfcjOG6+OTxbalJ5Ue0VMNGR+mEWpVWyZjXEEY7HJnW0ZEPp+aa
         9/hJ1MUyvrACaZyduDRhpnqSPBIB2zqTcXkkyelD0D1MrcZ1Lfmcmk4F7Fuwkp3hMc64
         IBotdIxezWCzhA4jVAXxyn7Cp4eatm+9paVNOl6BQrHtBQAyRTHPpe4RZVJ2t0sQs9u2
         KwvfVFEP5squw8LIlv+aLvWd9bt/fs5cTEaZ9cTa94J8v+gwFEkPYLchFrUFOobaqcP1
         fmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A+tJN2ebBJvzX6GZpo7gU9nbB63M0D0yUF8L5XPSqGA=;
        b=T6D5Z1/Nl6QR/oejng5RqOa/GIcPZuqzTA0MsNPE3lPgPGb5g0qdEiXR43n9okENF/
         478gZ5itZfgp3A5/ZvrzsHsr8jv/m4rxrtaKrWZ7gk+VMJM1Llvam4PY87Ko6vnDdRi/
         OBz8iSXftbDja9R6BfzgmTE+/BuSH+SqbdtbKWl6n7/o0jETPit+hRZ6wiNVu/sixnzf
         XdGcWWWM8p8qV4XLTscTlkgjcPtN+rhNrhNio3i9J1QkH1nDMq/ghPTsXz9yos8yj/oK
         fPhJ+/9Md647M/IZ7+XFzBvJxn8Igg9Uz8UxwWljHL2aeo3MunyOLSHHLtfnUi961a1p
         8qCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+KYR46FQ20uTllflbzHzhj4Mbo30aXqXVGkWQ18udwUfEdRLB
	izvwvuksuumw4+RvHALzz5k=
X-Google-Smtp-Source: ABdhPJz5PLkrocnB7FnK5P74VBPBzE2tVz/sPOLybkLlpe0nQnMFhWSDkccuTf0dytZcsWrPjWTXBQ==
X-Received: by 2002:a5d:6842:: with SMTP id o2mr10210445wrw.138.1610738014018;
        Fri, 15 Jan 2021 11:13:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6812:: with SMTP id w18ls1141599wru.1.gmail; Fri, 15 Jan
 2021 11:13:33 -0800 (PST)
X-Received: by 2002:a5d:6884:: with SMTP id h4mr14624392wru.174.1610738013228;
        Fri, 15 Jan 2021 11:13:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610738013; cv=none;
        d=google.com; s=arc-20160816;
        b=hiDYJxfNc7SdB0mT7jYnaVzDTcutF7jO1m3HGz8Mx4o3+XC6/yUIu1kw5G+I1Te8TQ
         HVZDkEdqzGLc2TNq2cOWtehZGnAYCNP8JEIT5DM5o8VkDyQu/PdVFVCK6bg0RnXSM9p9
         FMrWTbHTrFZc47wHNELpylqi9Nlbi5oGW+NdysOvxNx348FMw18u5k34s4y+cJvAMNAu
         Mox4m20Muccb6aAf59zGOCPUKRsQQwVe18btIwJk4QZo0VjGHKgF6HCwLdqr0Xi+gZzR
         WnqUoW1DNlSaKKEVlVsotOF5BVt6/0OZo0a6Jobx2BbnOnMaF1EnU2yLSofTf+LxMPtU
         Lv4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=PftEDz+QoIuMD7vFvCCvvry9AT4u1Otsfrl7LAEO2DM=;
        b=Xt2FTsBiMddeBOqVSmvTFPomgdj8OQSDeYyIj/6PLgaqOLmj184wj+ZeXkqwWKmXuf
         JotCqWWEVmP2eRgjH/cmFe64ifx6YA2fQTOQfGWyXdcpfDg7b6DX0F1eR2Obidj2FjBb
         kYzdHS1M1d/m3id9Mj3ETWqycYIDGMG59K7h7oBmLWWRkj/XhD8uHKINemT66vuGhBX5
         XRJtD+dNaCobqhSarwyvQ1CyEDSKT7FImwfCV6/35G3tu20dd6aA6do03WPNuWiUhgRN
         RpGtNjH/s/HDeGsB5ksgKZRBqoCMdjeoFyYEx2mrxPzcKW19Av+96IL7waP7mE5s5kZD
         GKVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="e7I/8+0Q";
       spf=pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id d17si614156wma.4.2021.01.15.11.13.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 11:13:33 -0800 (PST)
Received-SPF: pass (google.com: domain of anders.roxell@linaro.org designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id m10so11578553lji.1
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 11:13:33 -0800 (PST)
X-Received: by 2002:a2e:86c4:: with SMTP id n4mr5594493ljj.208.1610738012915;
        Fri, 15 Jan 2021 11:13:32 -0800 (PST)
Received: from localhost (c-9b28e555.07-21-73746f28.bbcust.telenor.se. [85.229.40.155])
        by smtp.gmail.com with ESMTPSA id t17sm998823lfr.5.2021.01.15.11.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 11:13:32 -0800 (PST)
From: Anders Roxell <anders.roxell@linaro.org>
To: tsbogend@alpha.franken.de,
	natechancellor@gmail.com,
	ndesaulniers@google.com
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Anders Roxell <anders.roxell@linaro.org>,
	stable@vger.kernel.org
Subject: [PATCH] mips: vdso: fix DWARF2 warning
Date: Fri, 15 Jan 2021 20:13:30 +0100
Message-Id: <20210115191330.2319352-1-anders.roxell@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-Original-Sender: anders.roxell@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="e7I/8+0Q";       spf=pass
 (google.com: domain of anders.roxell@linaro.org designates
 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=anders.roxell@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

When building mips tinyconifg the following warning show up

make --silent --keep-going --jobs=8 O=/home/anders/src/kernel/next/out/builddir ARCH=mips CROSS_COMPILE=mips-linux-gnu- HOSTCC=clang CC=clang
/srv/src/kernel/next/arch/mips/vdso/elf.S:14:1: warning: DWARF2 only supports one section per compilation unit
.pushsection .note.Linux, "a",@note ; .balign 4 ; .long 2f - 1f ; .long 4484f - 3f ; .long 0 ; 1:.asciz "Linux" ; 2:.balign 4 ; 3:
^
/srv/src/kernel/next/arch/mips/vdso/elf.S:34:2: warning: DWARF2 only supports one section per compilation unit
 .section .mips_abiflags, "a"
 ^

Rework so the mips vdso Makefile adds flag '-no-integrated-as' unless
LLVM_IAS is defined.

Link: https://github.com/ClangBuiltLinux/linux/issues/1256
Cc: stable@vger.kernel.org # v4.19+
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Anders Roxell <anders.roxell@linaro.org>
---
 arch/mips/vdso/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 5810cc12bc1d..83e8cf216ac8 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -26,6 +26,10 @@ ifdef CONFIG_CC_IS_CLANG
 ccflags-vdso += $(filter --target=%,$(KBUILD_CFLAGS))
 endif
 
+ifneq ($(LLVM_IAS),1)
+ccflags-vdso += -no-integrated-as
+endif
+
 #
 # The -fno-jump-tables flag only prevents the compiler from generating
 # jump tables but does not prevent the compiler from emitting absolute
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210115191330.2319352-1-anders.roxell%40linaro.org.
