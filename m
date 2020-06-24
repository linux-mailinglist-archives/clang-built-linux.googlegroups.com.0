Return-Path: <clang-built-linux+bncBC2ORX645YPRBHPRZ33QKGQE2WDPRQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DAF6207D1D
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:33:34 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id n133sf779836vkc.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:33:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593030813; cv=pass;
        d=google.com; s=arc-20160816;
        b=dYFlVjOyO0w3DwAS3HI3obs+Mghb4Trq69jkIFoZze3j+q7UWuz0Sb7S1wG9dn3y5C
         yQo7yw+6vqVCa1PHbkOyPxibGKRlmj5htev4RE1vXGknZM0yA6OixAttZmwbA4N4R6yb
         u9zghWKhCSOmwP+M1nu/mk97YfGZBkPoe4+K8l8rTsv5U/h56EgTRgDkNsl5TD6GV8zv
         4IhJ7CVc640kDfDw638bolezEkKbd9F5JUyEhgQXu0avi/HAEjQyB+xuvQ977srkA7yM
         4zqf381Eenkq6eq92XJZfEzACQE2ugzVKycFlQVeKmFH7kgnzHqws22L9UKGyM8OLsBS
         IQWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Uh1YbfDFq7evu5Cpfe1qDBSBXrnk8FdhQ5FlVgTqtAU=;
        b=llY/Q8nW/Wer2F71q9J277XdP5KzUyaKMAZ/PwnJXG93DD+4l/gosfvOFZXk8Of2lW
         T6Wy65ErwqrFV7AtSpdIaejcldpSArjQKwt9L+N8yqSZ6VoC3HoDrj7QCXMt9jlpm9jH
         07LRmMzTNT1tqsQ/8YjY0SmLPIwgCmwCPt11Cd9WQ8CEcEGCAEARsj1fDi6oJ01n6EsK
         J1iFL+LB0hMwKRbkUdFxgokY24JUaQHqaSiLZ6oSTOqrmPJfW7EFrDgqrVzvfIFiylwV
         qf9tffP9O7jTJ94HvQU1TXC5JwpuJhUSVR4OFLwfmixl73jVNh5rLN09KqMyb7ISjEqY
         xIFQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QdroIDfh;
       spf=pass (google.com: domain of 3nljzxgwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nLjzXgwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uh1YbfDFq7evu5Cpfe1qDBSBXrnk8FdhQ5FlVgTqtAU=;
        b=JE2BHG3cKhnjsj2Xr3F+yrPz6Sln2Qu2b3Ka1P0EoNSdtKUXJgSMQFKIV0Ap4AnXG1
         iAwlyieU333qY84a5NNgRAAPd0KTbusbH0ghjlG6TDQu5i1hQw86KKqI+p4Q5jRnJMxO
         BvRYOWQIZ8SkvMctAwiGGCJume4l3KhrxRE8L3SdYJpzFPtERBnyKuqJ9xiGqNmDb8Vd
         ABy3vVfO87Ut9npWJMPQNiyuXaEjerfkVd2xs7ornbBlflSFxIDALGyTQQoBcFPtOkVo
         RTsbHZskaj3IXbXbGUpXiq+QjUdjvXQryJfAhwNMOPHPn+tyoXiuBXpuk2JVJPq7o39F
         44Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uh1YbfDFq7evu5Cpfe1qDBSBXrnk8FdhQ5FlVgTqtAU=;
        b=Mc/al4Ys1d2sVeRtwFUK3feonStQzz+6MQuMMHtQn8N+7eOvDZPJjBA0zlaQ0wcxbt
         K7kv4DI9oYIkfV4APehwiT6GpFyyti31xyIQG66neqpJ3PJ+xfF+T0uMoc3CoL5r7dqb
         fANTwJ2YGAjgC3ldSGaywktQtNSXhtiaTp0hBNil1a/+wFAw5xTnj5mc+x+7NDRU7ZIs
         SAqXvs+KwjI3uEGsFGOMmTfdLfD1ffRFKeLHTY2h12Hj8vLJxw9nWY5vgWeH4e/IW1xG
         +qIfxiyAPSMB/m6zA+v448ShDlJX5vWa3WnaK15nEUkPR/NRq+YuuLmzJlGqGr/U8J4c
         ghFg==
X-Gm-Message-State: AOAM533O0HzMB+AkOltRAkDvT0uSA+HlC7CyQyuyXglV8RzFc63apyXV
	cvxyKNTH/nQJk87g3i/w/aU=
X-Google-Smtp-Source: ABdhPJxHaMXJGTpm1Xx1FYjAKHS5OEeL7BKNslqmagwNowguRiKsciM34CPFQkbXEjjEtZ1B40Ba+A==
X-Received: by 2002:a1f:ac4f:: with SMTP id v76mr25039145vke.72.1593030813621;
        Wed, 24 Jun 2020 13:33:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7c0b:: with SMTP id x11ls425003vsc.2.gmail; Wed, 24 Jun
 2020 13:33:33 -0700 (PDT)
X-Received: by 2002:a05:6102:73a:: with SMTP id u26mr25233368vsg.216.1593030813186;
        Wed, 24 Jun 2020 13:33:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593030813; cv=none;
        d=google.com; s=arc-20160816;
        b=tFq03ZtuuGVH4vgw4yGo/LRV7SIW1obdEBdTYIJgYhFw4tOYVaYleHG59puhULWSRA
         mNXYlOn8spTpupomU0c8AkahLgEqQIhaEbo8qV40qDr40TXMBfjberirNYSY6L834/qX
         sCRtG9dsU8bLxv77ryLphsS2S+lxoT7o4sSk8Zcz3LSkTtWCKbsiweQuisw2J8K5Na2I
         5aRCIZvI19P12IDcFP+sSEjVnCvHBm8neC7uu/ZII3zTZpEwp2SSuy+0N5BPP0eNSLNk
         9Qpgh5zRYBusZjDHM9qsPopTzS5jSnsxikKJeSrt6Gwr7taiwTpOPsPXihGDxSEklHfK
         aWpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=A7cPf0bNRtzZYfE1vc1rDopHSIr0k7cT2ZUm+OLZjv0=;
        b=zN/6Sr8KaXm5XNDIiYN1Zwcaxe95cO3VcHfvlhUHsH6nmiv9am4Qs/jAO6zO1pwfPA
         kOn5cZQHENb4JgJYCOo8dBjeGkNACmbohqanlLSK7llOFqNt0Yyeu5JFPSFfqSPR7Ix2
         iYJeTEOxm9URX62qACFsEj2dtkCdYqcs5bn5VLPFMyj8dMYRI2rbMAtJZ2DDb1ReFywZ
         hgPdDioUKY3YN59IHgKlc0I7wYvh8J4SYAQrbpPDw1t3dM7K9GnEh0wpelTlObJN6dLY
         xpeieRo1qha5aP8Ogw+mHVENfTOuCvWHUTN/5Cz5+UBTLnR+2EThgRmUmzP1v4TAM3ix
         68Aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QdroIDfh;
       spf=pass (google.com: domain of 3nljzxgwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nLjzXgwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id f12si1108201vsr.0.2020.06.24.13.33.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:33:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nljzxgwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id r25so2429310qtj.11
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:33:33 -0700 (PDT)
X-Received: by 2002:a0c:fcca:: with SMTP id i10mr21455652qvq.150.1593030812853;
 Wed, 24 Jun 2020 13:33:32 -0700 (PDT)
Date: Wed, 24 Jun 2020 13:31:57 -0700
In-Reply-To: <20200624203200.78870-1-samitolvanen@google.com>
Message-Id: <20200624203200.78870-20-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.27.0.212.ge8ba1cc988-goog
Subject: [PATCH 19/22] x86, vdso: disable LTO only for vDSO
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QdroIDfh;       spf=pass
 (google.com: domain of 3nljzxgwkankn5hdojgq5i9ibjjbg9.7jh@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nLjzXgwKANkN5HDOJGQ5I9IBJJBG9.7JH@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Remove the undefined DISABLE_LTO flag from the vDSO, and filter out
CC_FLAGS_LTO flags instead where needed.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/entry/vdso/Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index 04e65f0698f6..67f60662830a 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -9,8 +9,6 @@ ARCH_REL_TYPE_ABS := R_X86_64_JUMP_SLOT|R_X86_64_GLOB_DAT|R_X86_64_RELATIVE|
 ARCH_REL_TYPE_ABS += R_386_GLOB_DAT|R_386_JMP_SLOT|R_386_RELATIVE
 include $(srctree)/lib/vdso/Makefile
 
-KBUILD_CFLAGS += $(DISABLE_LTO)
-
 # Sanitizer runtimes are unavailable and cannot be linked here.
 KASAN_SANITIZE			:= n
 UBSAN_SANITIZE			:= n
@@ -92,7 +90,7 @@ ifneq ($(RETPOLINE_VDSO_CFLAGS),)
 endif
 endif
 
-$(vobjs): KBUILD_CFLAGS := $(filter-out $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
+$(vobjs): KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_LTO) $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS)) $(CFL)
 
 #
 # vDSO code runs in userspace and -pg doesn't help with profiling anyway.
@@ -150,6 +148,7 @@ KBUILD_CFLAGS_32 := $(filter-out -fno-pic,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out -mfentry,$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(GCC_PLUGINS_CFLAGS),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 := $(filter-out $(RETPOLINE_CFLAGS),$(KBUILD_CFLAGS_32))
+KBUILD_CFLAGS_32 := $(filter-out $(CC_FLAGS_LTO),$(KBUILD_CFLAGS_32))
 KBUILD_CFLAGS_32 += -m32 -msoft-float -mregparm=0 -fpic
 KBUILD_CFLAGS_32 += $(call cc-option, -fno-stack-protector)
 KBUILD_CFLAGS_32 += $(call cc-option, -foptimize-sibling-calls)
-- 
2.27.0.212.ge8ba1cc988-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624203200.78870-20-samitolvanen%40google.com.
