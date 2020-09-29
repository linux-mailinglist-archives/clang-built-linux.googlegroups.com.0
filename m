Return-Path: <clang-built-linux+bncBC2ORX645YPRB6WWZ35QKGQESUUW5UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B91D27DAB7
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 23:47:39 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id y53sf4096554qth.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 14:47:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601416058; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGZMxLEgxeL90MQsAA/UVjOiMewZKC2dVYhfYx/Ask2mNiT7zEKRfCmYsBfGgp0KuU
         P0j/4/y+37gS2f38lFLho2de6jrcMYgf2aJ5w27ocXoea2zBc6/9SwT1R/3Udw/3CMPp
         5AjOcCkwe2KFbpj2Vgl0oflAyzxqSaOiMNZ7rVrmm0cYEJuHku4c3FxmVpgCWxy/vdop
         2vnuEgfuBYwLe2OgIqHnjmHsXDRVgu1A/TwllSlYxM0iKUsOKGWzfJWEc7SfFDSCi74b
         kIIN7Qf9y1z9K4ZimU/NVFgcJeoUiYYS4L2+4cwVci5iLfeDADpQ5lpFk1ZT+mgwsasS
         FUuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=OmZJVDXA7dpwrl9Nygz6OxwkhfEh0tjo8eXITPjd/3c=;
        b=dX7jabkfnkt8fQZA1CdTgPOq/UezuIXjX5mKuGipLz2MKwN0JtEXvVQWX4PiXu05Ef
         X1TWXEs2yATLfv1B17TjJadtRFR7B7EKYUXemvmiOvMwAYbGQ7JXCfZ+EkT45+6/6icp
         8cvgnzqeyvaKP5QeHrAzyHYwwBx1q5qYO1lQDaXBXivI8NpcpRiKFRGcmHNctppnFsyS
         NKRqvvU6V85yGtoWit83ceFrfW56f8zsdkYTtokv1CJxNwj//7KBP4AnBf3/CESA12e2
         OLiDQvCZdQIybeO1mcyJkL94KPSUceN4PI6gOQMgwLs78m4DtI+SdbYtyk2Z1dZ5w77v
         mXpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jWS8iUHI;
       spf=pass (google.com: domain of 3eatzxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3eatzXwwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OmZJVDXA7dpwrl9Nygz6OxwkhfEh0tjo8eXITPjd/3c=;
        b=FznYycX8NUKRZ2Di0z4aywHK2J3sP1Zmi6nRTBn9X6ro6ZUuMM9zi6lf1BvobEVAle
         elu1ZnK8TQGMR2A7F/jOXvCZeUVbg96XNnsdDvAia4LPwKG2audfURfr+GeYECrMkCCG
         QPII8Ns7Gm3v/AjO4EnMdmqo9dkGkTTNNrnFaO8fnzMYGCu12DB18iSY92ptMeblPuJ0
         0UqZaowQ5wMCItz1qZ6xnKmwM7jZ73H1fsvNAFqFYDv5gpDGZ6i/57UY5+ga+IefoCTU
         Rn80GQWaMoLFGwteHm/KNafA2Obn/fwv7Zf9fhIR4SQH1BDpr/minICOrDw7sdquc2Mw
         rLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OmZJVDXA7dpwrl9Nygz6OxwkhfEh0tjo8eXITPjd/3c=;
        b=tW6KyUHcgps3vzYqp54dO0zNK1t8sFr4jnRQ8h5H9D1smM9Lcpjz+PolpZ4HNR4onu
         snX4pfHEa0PvcFqHMHITd0xOHMCUiLPDIJEnLBbOw+IoTZucwmYOKq2p9DERakqad7Ih
         Sqnv2aD9RvxT/n6b9vhQLJ+NMmKy60jNsWXyzjdWe5purvMBN91VscZNu4mZfzme5oV4
         ZUkcs+O6Ylke7ZSldDOkzyL3gBbAwGZzWJpKOicDgwuUWnbWMqk44VFVMyFNgsCQyigg
         ROsEbJ8IEiVLpsk7qfWvq0b4CebUu3hz1/1kjDX1udNxNjSj93I8mx3v8nTm/kpImD5h
         /LSg==
X-Gm-Message-State: AOAM532rOsuGzrS6h6r8kng/VUxHGxvmENHZj41FKaRpWzzis4peohCq
	k+fNla+oHb5n6k+JAzAK51s=
X-Google-Smtp-Source: ABdhPJzQZr4tSGqTElnZoWYkVT/3FWVcVd5OQ7CUXX2/9goNV3be46VkS9EB3fwBnQL/3h6iv9aNbw==
X-Received: by 2002:aed:3223:: with SMTP id y32mr5622125qtd.341.1601416058659;
        Tue, 29 Sep 2020 14:47:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:7c93:: with SMTP id y19ls127460qtv.3.gmail; Tue, 29 Sep
 2020 14:47:38 -0700 (PDT)
X-Received: by 2002:ac8:4791:: with SMTP id k17mr5492081qtq.125.1601416058235;
        Tue, 29 Sep 2020 14:47:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601416058; cv=none;
        d=google.com; s=arc-20160816;
        b=rV5REfMIhUJuW7FHlq9W5PvtLtqYsdicZDP5M0q7PshkHlfIZ6gqeNHQWUnPURT/Bm
         MB8A2GPlhRsabbQ3GnaAKsX/C+e1/NLeTg51EuQ35idBZU94HMGaEiEDJvb+tnLP54PE
         vGEDxVRvXXh11UES1rfau5XrIbsOoATp9oZvTTJ2exdyfTxO6lij/kS1wQ9KT9D5NZWf
         YtGWB5IpB5B4rE5kgtJAcDWIgXTLdJEBxcOHBhUFPmQ5DmWJExjM2K33n9XIhxJkJ2U7
         y1dcPUxPR1KCqzR0aHFvg6KlcSgMwyS37HvkETLtInleNbx9tQq7nr5dJukeFFSh2vBD
         LBSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=YnFARiKS6UDkwdk7WP0wlvbxlnuyKDZd5kTTgvwZzNo=;
        b=uEFLiGmBwedbSv8WRcXQLuQueB3fXHMQZgmaBjmsC19Y1svG4o0CYMX9b4qNC19b06
         gCnYhmMZt6j+VYk/NX5PmTEWDhMRl7lJmRq8vC7PYe96mP9TccScjWxH0OpAsPDCIhRu
         F+evyhG7Jw1nz/MWcaSoqCN/EUe/ePpejiF9KPHxJILnlozJ65KMp8Gs51vRW3MBhmdc
         4N2TPPx3ZY2WyNsiNBOrhtfenK23hM+z3nUI3WCRJ1LQFKd1WYjVOWMfAmJW/hKDK1QV
         VfH2aOgHwr3AQOwCEBwtoXHEtLN1vqGvNoAxqNHqK1uanZVY3u4LZkUcjmCPE/fFs3ij
         PKeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jWS8iUHI;
       spf=pass (google.com: domain of 3eatzxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3eatzXwwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h17si361925qtu.2.2020.09.29.14.47.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Sep 2020 14:47:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eatzxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id f199so6413340yba.12
        for <clang-built-linux@googlegroups.com>; Tue, 29 Sep 2020 14:47:38 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a25:ae9f:: with SMTP id
 b31mr8477359ybj.437.1601416057863; Tue, 29 Sep 2020 14:47:37 -0700 (PDT)
Date: Tue, 29 Sep 2020 14:46:30 -0700
In-Reply-To: <20200929214631.3516445-1-samitolvanen@google.com>
Message-Id: <20200929214631.3516445-29-samitolvanen@google.com>
Mime-Version: 1.0
References: <20200929214631.3516445-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.709.gb0816b6eb0-goog
Subject: [PATCH v4 28/29] x86, cpu: disable LTO for cpu.c
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jWS8iUHI;       spf=pass
 (google.com: domain of 3eatzxwwkakasamitolvanengoogle.com@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3eatzXwwKAKASAMITOLVANENGOOGLE.COM@flex--samitolvanen.bounces.google.com;
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

Clang incorrectly inlines functions with differing stack protector
attributes, which breaks __restore_processor_state() that relies on
stack protector being disabled. This change disables LTO for cpu.c
to work aroung the bug.

Link: https://bugs.llvm.org/show_bug.cgi?id=47479
Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/x86/power/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/power/Makefile b/arch/x86/power/Makefile
index 6907b523e856..5f711a441623 100644
--- a/arch/x86/power/Makefile
+++ b/arch/x86/power/Makefile
@@ -5,5 +5,9 @@ OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y
 # itself be stack-protected
 CFLAGS_cpu.o	:= -fno-stack-protector
 
+# Clang may incorrectly inline functions with stack protector enabled into
+# __restore_processor_state(): https://bugs.llvm.org/show_bug.cgi?id=47479
+CFLAGS_REMOVE_cpu.o := $(CC_FLAGS_LTO)
+
 obj-$(CONFIG_PM_SLEEP)		+= cpu.o
 obj-$(CONFIG_HIBERNATION)	+= hibernate_$(BITS).o hibernate_asm_$(BITS).o hibernate.o
-- 
2.28.0.709.gb0816b6eb0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200929214631.3516445-29-samitolvanen%40google.com.
