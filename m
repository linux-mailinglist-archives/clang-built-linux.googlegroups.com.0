Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB354QKAAMGQEMGMNHKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D152F6B4F
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:36 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id t9sf2732483vkm.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653295; cv=pass;
        d=google.com; s=arc-20160816;
        b=hNI41ZeQmumZp2VUHss2FdaogdnZ6zsQw7/ppVtJBTR0W6RnJkB8mZXUTz3iVWBL6P
         GJxOdXnsjA5tXf5kr5nXJCrrtI8Z/XLJfgvL0x6NQwp60bfms7lkH7ex04nMDpCSH2LB
         B2d+EsXJ7j6/jmUkIv6U502MwBOWvxrfaJPVsQe4HWyaxExngKJCtTpp6gCl7ZMzI/lI
         28BDGTgp0EbldYeCWbYqgC/s0uudhPqBNbUwug5Lj48CWn2wu/hqRXpG8OIEt3eVp3NX
         GIkpcEvg4BEqFTwltpb+KPMajq1wn8jYaa/IepQNSAUoTBusR2TrvczzTE8NWoJPe8O+
         fAPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=P//hN4Hvt58ChaQ36ywHSnOOU+faqtnY8YXfkD/Hwkg=;
        b=0XfhbaVw83LVwabXyuwes6XPRO41QiYY7EsMrHBjhsaz9whJHZKa7Umlkjd4J7k1JT
         7xYODZCqL0UL/6FGp9aePImWv92wXFhWXLqa5vVtQRUtN6NaYR6/4HQatwOWRSV+gBc1
         qFMVZk3Yn0UjrBpbF97seNKHOVA1I87oCvgAYah1Nw//jLf1yOFBQ5ogKGWvx/c2jVwg
         z9CiCh7joHd/ogn4VIN+LtHeuMkdaQL4YBzaZTLurRMlfEVCnms/Uf6KOXvFpjyz9hVY
         2B7FXG1aWKoyHAjk+0RXfMQ23IQLs7BpvR6Yn5gyNyi7CaGHEXWx5bKHGdcKJLQqBaPc
         VkQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TXWlHHLA;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P//hN4Hvt58ChaQ36ywHSnOOU+faqtnY8YXfkD/Hwkg=;
        b=f8p01AI0im6KUcQWQ2ZqrXNVq9UuecknGZiPPkK95CYgI1MJ7J2Uo49tfmKHO8JNGj
         ZAnvsl70RagNAI/oRb/qcivMD3ovckzRYVA0fhVD9q9ZyNtNeiiDbekQMpjUK5wX/xnr
         2C6VCq1MzCP/97wRWx/rvmQb6vZSCsrBeNCMN6kmWiGgbtKgb4QaOfT01Y0uq6K5vpJO
         /gcYxgg9iP4UA1OvjZ28POujRumHV7YWzLGm+aFggqdrJ4m8ENzwchgNE2nsVGMjLUlh
         TdZYvxssoBhJE4pHHSryaP6tbI2OVZehpK6tzi+/0ajUG36It2Jv6XEcugXVbYsDl+K0
         Mf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P//hN4Hvt58ChaQ36ywHSnOOU+faqtnY8YXfkD/Hwkg=;
        b=stg8yzNbNd2d7Cz02Du0RdAD6wXGAuc02WU+2K7L6xtKKcCXwvqDoXvSoU3ZKVPdK0
         5C3fom3/j5Ys0wsD+g7ebLPKQ68OKYptAALaoya8stN0IXGeNCPLVXIjHta0JHS5JyAc
         0Q3g6L5TVkblD8m75mF5Fq1pG4kb2mPS5W1fQsH8lkOtgAcl/d0OmF2j9gqQ+OVC67/j
         SqiqlXwAI3k9rl7CxvoRRNh7zhccuccagjVaVIvq+S4bpgVna52kRlIVjQ7wbsOWfylI
         VbwGjLvsV7cbUnGLnKtV0HYXp8EwEczWpEk4OISvNWwIjenveyjS9dK8nD64Tdg2CA2x
         ZCqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KfEch6jXqo2JjrYoM0CuevX9k1+OpijFMvPWGut3X44IfhY1/
	wybHkB2CUPZXUSk7CWhGdJI=
X-Google-Smtp-Source: ABdhPJzTAdREueQplxAqjPbN/3U1Y52UgxCZ92U4NcbMv6a/rkDuWVGhQEhgaTNLiGA2QoAPSS7PSw==
X-Received: by 2002:a67:70c6:: with SMTP id l189mr7889546vsc.34.1610653295676;
        Thu, 14 Jan 2021 11:41:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6155:: with SMTP id w21ls495887uan.0.gmail; Thu, 14 Jan
 2021 11:41:35 -0800 (PST)
X-Received: by 2002:ab0:113:: with SMTP id 19mr7129769uak.71.1610653295250;
        Thu, 14 Jan 2021 11:41:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653295; cv=none;
        d=google.com; s=arc-20160816;
        b=fJTPJvGlZgR3D9nN+AyVTHNjKNm6kRCfaEHmIndjEhJqzQw/+QDakreMKN5cPJrwVy
         fnmNlBvabK6wolgVzBinasGNepWuNptckUH2MplbnQYRjDwR4MitTx9LqZb0ecEpKlB2
         P1rLYrkDbN2LW9Sybx1hujwSzzHCvj+hS9yBPb4w+/zOxoXdrgxgmBOKJPDVPx3EkvOm
         YF+K0laz1D1OA438PD2qQEx1Q9uHdnm05eGAL8U7UQCN5TtTqmbf1dVxME+6h3hXhzLy
         tkuQf3vzUnGdtTQgQPR/0NxQwmDItKFJgg/e6BdFqj/X7D6BH6bswrrnvRHIK6azWrwT
         EubA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=MO5+aHEvQnO0J+ro3Uo1USrRPuwjQ/gVxzqgfgSfuj8=;
        b=rS/pc1oCk/7ZvpP8gu6xKFidEhdRbJ0RfHF3l1a9jLP1IVKHHLsDNgRfYUDaffcAlX
         wcyUKulfzCT+uhmEXdoev97Hd7RklBFf9rM8L1EOI4ok9vw9HfeH+tPdxjCLel66kbt7
         onHKg/3CYhHagR2SKShmRQw/nTwqBY4irWYWNu0akhQp0k7KOmZ+xJcq/GD3ExiPpxX6
         fXQXLZNmLa5b/6ucPEfqWSffoNCTkY/q5qP2o9t8D6Gd1yA6vaZlkab0oerP1TbeeZlD
         39Jl5UhkCz7hStYCTbBgxcXBib0+1lKiFng410X6WQGfKQFgQVn4ycbp2573hCrRmEH7
         TTgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=TXWlHHLA;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id g3si430155vkl.1.2021.01.14.11.41.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-362-PAtxtlmzPpSngjCyIYLpcw-1; Thu, 14 Jan 2021 14:41:31 -0500
X-MC-Unique: PAtxtlmzPpSngjCyIYLpcw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2711B10766BE;
	Thu, 14 Jan 2021 19:41:29 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id A1A95100AE40;
	Thu, 14 Jan 2021 19:41:24 +0000 (UTC)
From: Josh Poimboeuf <jpoimboe@redhat.com>
To: x86@kernel.org
Cc: linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	Miroslav Benes <mbenes@suse.cz>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>
Subject: [PATCH 15/21] x86/xen/pvh: Convert indirect jump to retpoline
Date: Thu, 14 Jan 2021 13:40:11 -0600
Message-Id: <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=TXWlHHLA;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

It's kernel policy to not have (unannotated) indirect jumps because of
Spectre v2.  This one's probably harmless, but better safe than sorry.
Convert it to a retpoline.

Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/platform/pvh/head.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/platform/pvh/head.S b/arch/x86/platform/pvh/head.S
index 43b4d864817e..d87cebd08d32 100644
--- a/arch/x86/platform/pvh/head.S
+++ b/arch/x86/platform/pvh/head.S
@@ -16,6 +16,7 @@
 #include <asm/boot.h>
 #include <asm/processor-flags.h>
 #include <asm/msr.h>
+#include <asm/nospec-branch.h>
 #include <xen/interface/elfnote.h>
 
 	__HEAD
@@ -105,7 +106,7 @@ SYM_CODE_START_LOCAL(pvh_start_xen)
 	/* startup_64 expects boot_params in %rsi. */
 	mov $_pa(pvh_bootparams), %rsi
 	mov $_pa(startup_64), %rax
-	jmp *%rax
+	JMP_NOSPEC rax
 
 #else /* CONFIG_X86_64 */
 
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe%40redhat.com.
