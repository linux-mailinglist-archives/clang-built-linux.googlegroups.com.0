Return-Path: <clang-built-linux+bncBC2ORX645YPRBSNW236QKGQEJ7EW46I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9255A2B8734
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 23:08:10 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id e3sf2234264pgu.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 14:08:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605737289; cv=pass;
        d=google.com; s=arc-20160816;
        b=e4ysqC+4O5wpaY/AXdONE09mqAPj12GqTxYpf7h7AjM2GjPyWNTrQiqCHbE3Y3Qva4
         wDdH3vvfxtDJTTAQXsLEinm8C9CgYZS8EEfvhihaN0N/C8PueiiPqsTYKHgemWatPtuM
         wDUIErqgRdEFJ6xAsi8ppCdIUoGOgeHHveTQoVJd4UC9pgglBWL87utIsaN1zPnrSIBd
         L1FWFc1xlo4ZjaFGT1XtOYhktMd3SPhwvR7dIjCueeeLkJtr6Bb+zujiFdSZWNQBH8Da
         AsRFIbgaLmhmSY/Bnz5Ny0zM9FMmtjREz+Bx8jMhqRMAUoRZwuUzaXEUZzglGXHAlowd
         JIMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=EffbPKPchByCR8y/XbwuKrEhN9+6Ws6spOCbRsm7mT0=;
        b=LaXCKZLtJxCkMrdnV+q0l+qk9MUx6Uoj5bK5cvvdfaHELOT76QktZ6k8VaVJhzrqyr
         UtMOEGRuSzkUZ2nfY+tpJr0pe4elSTyq0VrQPiLuM+DR0faGxkNteEl8xgp44tke8hxm
         JfqqFOYU69QaX1+LO3Y6TcjIQIszoa6P6dy3XGDw/hiISyxCp6OoLn4uagP3Slrx6h9b
         biT/N6iRBhbdw8uB2qSJRgsigLZHmHpWq0WT0pRhsXp5xvREjIucfNfHBst0iAspCFJp
         t3uOMuUdtsi8CcWlPr+ASlQxIbxyMYXV6zVxwvxuCB0aEbEBQqvJSEkT4UmCt4sJfNAU
         9o9Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wyirgobu;
       spf=pass (google.com: domain of 3r5u1xwwkafgi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3R5u1XwwKAFgI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EffbPKPchByCR8y/XbwuKrEhN9+6Ws6spOCbRsm7mT0=;
        b=gf0mZTbmc8BfvNOTWeQTykpH92f3SOBxN/J0wKj61NDCna/5b9V94tznrZo7pADJRq
         3u57OTxlCDXCMeCF6TcILjN/AMoCHIjPT/p8FmrJhJs5gHSSOzApU9dkNBgxZzO2RdRE
         au29ko9Jnc2A99/urWsWUIuQi5ruwRRcShuEFqfSIquHaRuYNZOemK3HIpk3NYhD3fNU
         xD0XSiIgQFFz3PbEkpKopSlyPTC5iGGDBxm2L3XxWqrXU+swgV3ORyMXmQiwdQAMM/04
         XzdFjBbhrQhdVqIXV9gsVl0Bc1OahlY9QY52NPOkH55W3/3bgJ67T6ve8ajdjOaKfdhU
         52kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EffbPKPchByCR8y/XbwuKrEhN9+6Ws6spOCbRsm7mT0=;
        b=bUthprIV7yS1y0kiZYjKK9RSBPZjGQNn22+b6SbeFjPAu4McRIuA70SfAqTNjTO7eO
         o9f0S4FbkKBGOHLTHbI2P4bmvS29rKRm7SbRvCRZvN4F/8T6deF8AycOz36I3ZXkoEwP
         OHDW0GvwYH7Gd2mRucO83tmef4dhvoJyDShKaH/2lZK9xdpvP2rbSaiHyflOIYmNIYiE
         PsFsWZ9RWqmCzkA1CvNSSXFE8RIJbHX7HRcTPCkZKo2gt3ZOXiUfVSRrYN+0BrmMe/RO
         2LW/2EbzXoPIOzO4O7YNdWkpRGAcKJf9vbXrMAhK+0fyvrHisHzVRdnVtwGVZ6yKJwhk
         4FFw==
X-Gm-Message-State: AOAM531zhKDJ3H+dCujvyCOvNWOOtGW5BtsQqm9jGExzQyr+wFjqmPKe
	gwW9HScQyZvYEIJ8Ig4eNtE=
X-Google-Smtp-Source: ABdhPJyqSZaVBPzU+TnV3GrVUCJ6V3JvupxECXUqaEtuBHwpH/Prd9OHtN87nE6VP4URD7eVrhpaYw==
X-Received: by 2002:a63:f64c:: with SMTP id u12mr10688140pgj.325.1605737289350;
        Wed, 18 Nov 2020 14:08:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:a0e:: with SMTP id o14ls269664pjo.1.canary-gmail;
 Wed, 18 Nov 2020 14:08:08 -0800 (PST)
X-Received: by 2002:a17:90a:448a:: with SMTP id t10mr1087260pjg.25.1605737288591;
        Wed, 18 Nov 2020 14:08:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605737288; cv=none;
        d=google.com; s=arc-20160816;
        b=UbQR7uQoSy22FfSpDscwlmYco9SLyufiQ8Dghoj5ggmV9daiUAjnMfGa3xniQdEKV8
         zQnpa1rB0qqKk05VrJRIKUNNcpmOKb1/JGUyv4rTNbaQ7Lur+Zg/EXiLUXHNyP2i0y7L
         ZO73uJIZ8FK1hhQnpzAjIBe+VTJHhTp6tWUkxPyRZrRD/t97P1ngPTfDg2GpKgGAHulp
         E06hgy6Fvl0/JTxFIBDHPiyH6Wr5EcdWZRefVw4jxZYPELiR3SpwUpqfPnP1CnNdDDHE
         dIF2RmLiYuJMhEtooP1W9OMTW+pr/STMzdc54LWf3cExNZhPYIYi2He7deUz1yp9qCsZ
         EKog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=Nlv9TtNsD8fyGZu3R87XXmbB0Bi+xxOBLxznH5wjST8=;
        b=hg7APhp7bes0u7B0p0LQFFk9P/Qpk3/5wP4xYC5BZ5Z1xBDwv23Hl7jvthCmK84c/0
         pVkoIi2ivXTrKdPqbn4zBfkaIpoRWP9PeYgcfhfafgGaEv+RH2eiZ5p9fAJMiS/khvEG
         ZXI6LwClyLjGTHw+tAASTOSMeUmK48tFZPtSWJlAPLBBHHNIJg95NHKigqhadGbYz6xG
         1453hSBAY2AHupILT/8LCWRcM+cvJqXAIVpsrVmm7ty+iXYMl+OB0imGWOF8URQEzsHv
         KKrfO/IQgvKKiIGVxK8nOkmXTr+QRMPyTTEFe+nZU2WXULHlznYiej4LFzpjSJv57R+K
         b2lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Wyirgobu;
       spf=pass (google.com: domain of 3r5u1xwwkafgi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3R5u1XwwKAFgI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf49.google.com (mail-qv1-xf49.google.com. [2607:f8b0:4864:20::f49])
        by gmr-mx.google.com with ESMTPS id 38si1520507pgq.3.2020.11.18.14.08.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 14:08:08 -0800 (PST)
Received-SPF: pass (google.com: domain of 3r5u1xwwkafgi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f49 as permitted sender) client-ip=2607:f8b0:4864:20::f49;
Received: by mail-qv1-xf49.google.com with SMTP id d41so2486404qvc.23
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 14:08:08 -0800 (PST)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a0c:b65b:: with SMTP id
 q27mr6722891qvf.8.1605737287989; Wed, 18 Nov 2020 14:08:07 -0800 (PST)
Date: Wed, 18 Nov 2020 14:07:29 -0800
In-Reply-To: <20201118220731.925424-1-samitolvanen@google.com>
Message-Id: <20201118220731.925424-16-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.29.2.454.gaff20da3a2-goog
Subject: [PATCH v7 15/17] KVM: arm64: disable LTO for the nVHE directory
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Wyirgobu;       spf=pass
 (google.com: domain of 3r5u1xwwkafgi0c8jebl0d4d6ee6b4.2ec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f49 as permitted sender) smtp.mailfrom=3R5u1XwwKAFgI0C8JEBL0D4D6EE6B4.2EC@flex--samitolvanen.bounces.google.com;
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

We use objcopy to manipulate ELF binaries for the nVHE code,
which fails with LTO as the compiler produces LLVM bitcode
instead. Disable LTO for this code to allow objcopy to be used.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kvm/hyp/nvhe/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
index ddde15fe85f2..4ceed7682287 100644
--- a/arch/arm64/kvm/hyp/nvhe/Makefile
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -51,9 +51,9 @@ $(obj)/kvm_nvhe.o: $(obj)/kvm_nvhe.tmp.o FORCE
 quiet_cmd_hypcopy = HYPCOPY $@
       cmd_hypcopy = $(OBJCOPY) --prefix-symbols=__kvm_nvhe_ $< $@
 
-# Remove ftrace and Shadow Call Stack CFLAGS.
+# Remove ftrace, LTO, and Shadow Call Stack CFLAGS.
 # This is equivalent to the 'notrace' and '__noscs' annotations.
-KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
+KBUILD_CFLAGS := $(filter-out $(CC_FLAGS_FTRACE) $(CC_FLAGS_LTO) $(CC_FLAGS_SCS), $(KBUILD_CFLAGS))
 
 # KVM nVHE code is run at a different exception code with a different map, so
 # compiler instrumentation that inserts callbacks or checks into the code may
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201118220731.925424-16-samitolvanen%40google.com.
