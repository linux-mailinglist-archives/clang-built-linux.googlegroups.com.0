Return-Path: <clang-built-linux+bncBCSJ7B6JQALRB4F4QKAAMGQE46JO33Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 314792F6B50
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 20:41:37 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id f11sf2079066otp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 11:41:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610653296; cv=pass;
        d=google.com; s=arc-20160816;
        b=zrO0R0HQZqb8jJ6PnLLTa99MPshQ2UjMf6jw7cVOsTjWNgCPE2KchgtWnVY5ucHFYA
         V2gxxqH8Sc7SVldLL5Vu2CmYDmzeffv4umVFyOmmXywKv3LTAxAMcDb55X0mdGe22yPA
         D/3vJztil5JrTp0Xib2Q+69qAdJQn/xc7V88gNouNHcMlYrQ5zUN4kASOWSxq1sewFEl
         /vjzkKJTG+CGdrJhUIgNU6BrWB1YV1jkv76QLTc/iUrH9pUAUCGOCbIU1avLrxE3AFwG
         Jfgpe/mrblfOaJOjtrE4x2lZgqwpYA67KGDt+9aK+Dc4dC5L1XMfBN4jIXg4EEaYIrfV
         fPLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Fz1NCLcXx6yXFWqXu6tsCk1VJET1DKQvmz9lyGEoxuI=;
        b=RbGWJxD4pQk5/Xm9LN9bSy1MAE6TbhrN5/c1R7mC1omnI+MPea65QztTMSonLJWpwq
         XJvDydpdBAJ0s7QRKHgqmJE1+iVKdo96pz7H/ZWago4zbPKEy4PDZi7KFFflTt+mj3rz
         y5bw6N9vIqoh1o1hFAW6oWckcJp/cDLuAwxUlsLV/+1QNFxM9zsGhPSh+uRTZb/dFza5
         qaK0R0FwkowrryFl6Y6d11rvvbYwlbMbV/rFrzB2OWBctxpVQ82oZZ446TtJKf+hTVth
         Y36WDrSvFe+UFWhGzW1nWefcv84cSdfAyeCWkRZu1FtCTfK2VfURbuAPqa/0Fki8dnLV
         I6jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OBDmPvGo;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fz1NCLcXx6yXFWqXu6tsCk1VJET1DKQvmz9lyGEoxuI=;
        b=OyxL4jXSICen5HalISn+StTKB5enheEqH4ykQXhRFPonmym3TevI+ciPaA/OySOyr8
         uteQNoYEKLNRLVe8jJk5kW3iFA3MTx5PFyy/UPpAiJ+xSyV6CCBcD8btOKSDsbUGawBY
         /YGo5q47Y7jWmGnMTTPmVftaqeZr0EkLXiUGU0CFu0gVfx+F1eqO6ljeVWs+oQJMjLFv
         0c/Hn080fZg1QBhocTG9th/PQJEcqvSPnpYvJwujSx1siR+bZI+r8DJIiVaINH8zX+Ws
         S+KSGMcXmLg/gIWv59nFEvGoTnSnnwLzOCCHBf3kjSIrDl2/C/8cJRuauH6XsBS+WdRI
         ulWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Fz1NCLcXx6yXFWqXu6tsCk1VJET1DKQvmz9lyGEoxuI=;
        b=cl21nLJtQ9B3/XHeHJiJvT2QGGFj1qupwVCwAFpgVSyg0suQQ4Aa2V9U+BIUyMhXQa
         uPtYc1DmYH2DhG5x9gyWtrLk+pdgFDvrQombkYv30DIN8WPbUxLoRKL/Mz3Ef1wkFmHD
         S1i5pgQ6nfmYBE3iSHATBtaFWG76IYmkqKTkMiG+uayiCYuDeiFbXgF3Ou10sDVOMbij
         AyTAGsNWEMALOwl/m6+C2l3nOSfWhyvQ+FCEXnRSGrlo/AxOtHayNeW07Ybe5rRMWvm+
         UwAT9oqFt6Wnc4E9K5ws1I+FiAwr/Gt9GzeHlQKYGJPn+Rn5k7O2dtJYpWbeBeIXRAL9
         SwEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AsG02aZbU9+QrVncjQNJ0T06of7nCyiDrIykeFhefs/EYH1Hm
	7I/bAN6NiYNOlpIFV8aHT2E=
X-Google-Smtp-Source: ABdhPJwqpahABbUlxduW0g6z3l6EEZMIlMweuqNCdBJI++sWrpf2JcWNbygjNeEYYTVLazXWlHJuYA==
X-Received: by 2002:aca:5594:: with SMTP id j142mr3685088oib.164.1610653296208;
        Thu, 14 Jan 2021 11:41:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7a8e:: with SMTP id l14ls1647358otn.1.gmail; Thu, 14 Jan
 2021 11:41:35 -0800 (PST)
X-Received: by 2002:a9d:2c43:: with SMTP id f61mr5504216otb.329.1610653295823;
        Thu, 14 Jan 2021 11:41:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610653295; cv=none;
        d=google.com; s=arc-20160816;
        b=XJWtyAYX73n44gXUeH1C/C5zh0pae4il47mWy8kXAO2ClhAXVu7ZEpxtRMjFDvd4nr
         ek+5DwijlKnVat5o1C9CULkPNnAX6RAURtjnPaCqcgR8bmGX5lMZt6qZnIT/71qP3lIy
         /VVCwuQiH0xFpJY+DkmvK8aYkiX1Ztyjj8JVYeHMV0V5LFx2JT0cx3sG44aL5ruzqRrX
         drJ+EpGEPePE4sbxGiPW/NVJfRaZwwdqRcS9W03U35VWLipnWXTGR+/Kf4vq62AoBEz6
         l+T0VgGfbHMaFxtE8SzUcEzVARFxSbBw4yxl7gy0t1GGsPUUFJS0fJH3aHePMebb6gJZ
         DlCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5agPSppkyrmvXxRnGk+279PCrwwOe8ew5Pwgyf+zTtI=;
        b=M+FWfMxMEmvny1jOPxv1fU/pIG8ZbhpCFeMz+9Iis+DrPAerl3q8x08jFlnMy0t8QJ
         n8+zbZ6V8nCROMcXJ1nzq5idSKT37MxWjs6iKJyUh/EL7c2IXolZAGnP8GLdf+bPjo7V
         qSzlPe0Qude0j9CjRpSIqWrGV6z86C/khlSdm72+eYYprILKn36HApqpsAUQUekpbDj1
         iCIK1iOmZtmVCygpQbbKVjUpLNyFtHRe8zOFi177OqxQG03kfvBbP9ofTREGvVmJX0JB
         ux3wh2QMlkdyLDI9AFDqlA8BGl7op67ihps+O1sNFvKoMQ91oEYiynJVbBlrml2s+qMw
         0Wyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=OBDmPvGo;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id u2si480512otg.1.2021.01.14.11.41.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 11:41:35 -0800 (PST)
Received-SPF: pass (google.com: domain of jpoimboe@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-435-DuRNWM9zNECClrz3Ncl6eQ-1; Thu, 14 Jan 2021 14:41:33 -0500
X-MC-Unique: DuRNWM9zNECClrz3Ncl6eQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B4A7D806663;
	Thu, 14 Jan 2021 19:41:31 +0000 (UTC)
Received: from treble.redhat.com (ovpn-120-156.rdu2.redhat.com [10.10.120.156])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 705B51001E73;
	Thu, 14 Jan 2021 19:41:29 +0000 (UTC)
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
	Steven Rostedt <rostedt@goodmis.org>
Subject: [PATCH 16/21] x86/ftrace: Support objtool vmlinux.o validation in ftrace_64.S
Date: Thu, 14 Jan 2021 13:40:12 -0600
Message-Id: <b46ad8966b1575978b7b9cee467fa6d63a089a4d.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <cover.1610652862.git.jpoimboe@redhat.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: jpoimboe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=OBDmPvGo;
       spf=pass (google.com: domain of jpoimboe@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jpoimboe@redhat.com;
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

With objtool vmlinux.o validation of return_to_handler(), now that
objtool has visibility inside the retpoline, jumping from EMPTY state to
a proper function state results in a stack state mismatch.

return_to_handler() is actually quite normal despite the underlying
magic.  Just annotate it as a normal function.

Cc: Steven Rostedt <rostedt@goodmis.org>
Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
---
 arch/x86/kernel/ftrace_64.S | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/x86/kernel/ftrace_64.S b/arch/x86/kernel/ftrace_64.S
index 1bf568d901b1..7c273846c687 100644
--- a/arch/x86/kernel/ftrace_64.S
+++ b/arch/x86/kernel/ftrace_64.S
@@ -334,8 +334,7 @@ SYM_FUNC_START(ftrace_graph_caller)
 	retq
 SYM_FUNC_END(ftrace_graph_caller)
 
-SYM_CODE_START(return_to_handler)
-	UNWIND_HINT_EMPTY
+SYM_FUNC_START(return_to_handler)
 	subq  $24, %rsp
 
 	/* Save the return values */
@@ -350,5 +349,5 @@ SYM_CODE_START(return_to_handler)
 	movq (%rsp), %rax
 	addq $24, %rsp
 	JMP_NOSPEC rdi
-SYM_CODE_END(return_to_handler)
+SYM_FUNC_END(return_to_handler)
 #endif
-- 
2.29.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b46ad8966b1575978b7b9cee467fa6d63a089a4d.1610652862.git.jpoimboe%40redhat.com.
