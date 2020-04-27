Return-Path: <clang-built-linux+bncBC2ORX645YPRBJUDTT2QKGQEELYIBQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1571BA97E
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:39 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id e23sf15713204otk.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003238; cv=pass;
        d=google.com; s=arc-20160816;
        b=WE0/+ccIhlyASYHzrSZTra3J0nZaR7SyRz1FG8qFbcQo9Vy4Y+hGN3TKmGKkj3Gm1k
         jwJNhc+P3IoBY4ik6whMfG07I/oA31hmTdVpQOEkRQQWeju79VZEDSFRBMUJ4UPt1I7d
         sLJbt1NVTOY6XBkJUydxJd8wbfzftmH5/qn3IMKINoftkjeqTcxGe+SFiGU8FF+3Y4VV
         gKGzkOSYRBktHJt+GyqMNwBjnEygTL/PuMPS+0YS4I0uB0V9P+Kqby0Cu8NaHCQG1Mdn
         NPOyFD0kpFk+d1nInsek77SdtrTRll+kowYB2rgixiE7GQhMD6bkWB4NREeVCLsUxiig
         eDfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=1y1gW/XRx5bS9sE3bCWDBEMvEC/CWt6ccrIV7PyoAlc=;
        b=yqeOL9u33y6CZ4m293lXAqsF9OXOnPbn/ghrK5OvKWZXg+bnHjHuIuYlf9Wi2aoZQk
         iVRmdFsSe3ldp762pAaHXbRK+V4XutAKL9PI05PC4DWb+cGrbvwfsKdP7WfKgJh7T2oP
         UsnrqylcizoIk8HnM08kJIjoaXwC3pUh1gWPXvdkiyMAWChCSgtnN3zR+YphTKYgv9Ea
         ocBkaHuPwNRPAwEaRbf63gI+iIq8PbcnblQYthHWXvvSKy5NSu41y6d2MTamUoVMkTFV
         ieVEP6bS5II0pA/4BZ7hiZQUATs8jf+PbqJ7aP5BBGDufM5sfosj+MmBNlbteYH2ZIlX
         S2Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fqLi0Sky;
       spf=pass (google.com: domain of 3pqgnxgwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3pQGnXgwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1y1gW/XRx5bS9sE3bCWDBEMvEC/CWt6ccrIV7PyoAlc=;
        b=fhNhaxuW8SSdEvIfYmofow3M2yab+Ck9REep6f1fJJrYcJPeIaBA+3ABdAKtLTaAjJ
         wkgi2vQ7gxFOZV4ixfpqgpU2RKb/A8or2ndsnQPK/87UDsPBEEb1EY8var2VkRZ26HJe
         UTIqhuEztfEiONP2w1hwv79+XsU0vP9Ew1xSUaIHVb1TJM/fi461OPlfl95I7oD41JIH
         1+FLTQdjiZGeM0fjVey4TtqLhtMaq7flG9RbomLBpiuU7WJn3sun0qnKdXpUu9aPIfdZ
         RUg7VhfjB3nJddFMdSTxQTishLoNDvThs8NwzgjAPHtcaHbkeQeTsfTxdw4s/fm8Gjv4
         xoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1y1gW/XRx5bS9sE3bCWDBEMvEC/CWt6ccrIV7PyoAlc=;
        b=odW28bbYzpPAgjZPqAjBRc3BvBy/P/kaQKp/xeVyxN6FPjwHspCMYCBb0MBDfSeUiP
         TY3UqtWU/SmfyQpCDJD1/CygTcmppJOSLt/9tcOQP5/7HI+2O6kkaRwBXv0re8X5dGE4
         CjumigQI0WWjAz0mQcvIExUBvZEoadPnmS/UwxK24Ir/FjbXaGnWFiaKuLxK5x0/w9cK
         n07qg0m1MsPpvOxyAex1tcJte3gv10hnJLq4QtpFQ1/sp5C+jV2+rE34RWz2cLrc5qty
         mfE16HGIvxuzLf46KO3B4wbVTQPDMgQ2dvdBdAdKG22rA0n9wn0CnqbJ/Xw0djJ54Ds/
         Ig+g==
X-Gm-Message-State: AGi0PuY3/6Iaui8SeamRc9UmzIOnvv2jqy9kSFUo6AC2O2TD/VIHx4W3
	UIv4h+ZqEY3GLPyKtrInOEA=
X-Google-Smtp-Source: APiQypJuspIhh2lgOaYo5St3im2QhaTyfps2QgYTxRDchQUelpt0mbFSoeqc9GmdInqHUsDTKAGiAw==
X-Received: by 2002:a9d:51cc:: with SMTP id d12mr17570827oth.70.1588003238606;
        Mon, 27 Apr 2020 09:00:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:150:: with SMTP id 74ls4717050otu.8.gmail; Mon, 27 Apr
 2020 09:00:38 -0700 (PDT)
X-Received: by 2002:a9d:7f04:: with SMTP id j4mr19677557otq.185.1588003238259;
        Mon, 27 Apr 2020 09:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003238; cv=none;
        d=google.com; s=arc-20160816;
        b=KxxtFhUHeomsddlPHdBBAvpHsS9wwGQBNtzRG634iTRAVhZppMecjw6Tc4F1ct51h6
         nNpEwMUD6U3MZN9FfBlgDqedXv4/xXDh+nIE950tEPuIqiinhPRfeby4LjpQIN/izsur
         +bnGYb0gCgxlm9aAoG5Flr5954oV58abJ5EaOXUOUlEl/j5Z7eeiWOzz+IEJQ/82ezms
         eZsVoEAqw0v02AMAlzXFolObHPhsuWej1jlDPgxuVgIkDr5dNhW7JVwwqdTCZTW0lunj
         4U59hOEQMU85ALldPLFZamaJPbcBqnIO9usHq5xiZSKowLUQe8cqGNz9OIG1Mhr2qi0n
         Ws8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=jTb4YPIUPKL1E1OLE2ifNkQg2x2HSYmo0hj4Ci3DZ3A=;
        b=hYJ9YkZ46ya6KQILXs+eH/iafDUUqiWWA/LnkSRqJ9O6RQPynf+acCk6WgNg9AIimz
         kAqXqz/54Rr+jiX0J23vkxxMuIcuQMfWmU9+kmrskNHVbwvIRCYYBPozArQ7NAfC48ny
         zibtiw9Uf1YYbAL9SXYNxzCkLz/90XfuABOHRdpaaIaNpjGrAPHE7pTn3pOOIEyq2t+u
         YCQTv64QvA2QwaD0gyxvp4d0FoxN8LR6muTaAcs/E207VYNR1XPGPMb8vajtwKqWgyZ9
         AKvrMMlMZpL+3xbz1OJs7DrAbKD21lMT1bevMYglCLJ1kFCn1G0Us0lLk5no5yc1zFtR
         DZOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fqLi0Sky;
       spf=pass (google.com: domain of 3pqgnxgwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3pQGnXgwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id t17si996151ooq.1.2020.04.27.09.00.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3pqgnxgwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id f56so20902913qte.18
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:38 -0700 (PDT)
X-Received: by 2002:a05:6214:1513:: with SMTP id e19mr22507959qvy.75.1588003237430;
 Mon, 27 Apr 2020 09:00:37 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:10 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-5-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 04/12] scs: disable when function graph tracing is enabled
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fqLi0Sky;       spf=pass
 (google.com: domain of 3pqgnxgwkaeaucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3pQGnXgwKAEAucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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

The graph tracer hooks returns by modifying frame records on the
(regular) stack, but with SCS the return address is taken from the
shadow stack, and the value in the frame record has no effect. As we
don't currently have a mechanism to determine the corresponding slot
on the shadow stack (and to pass this through the ftrace
infrastructure), for now let's disable SCS when the graph tracer is
enabled.

With SCS the return address is taken from the shadow stack and the
value in the frame record has no effect. The mcount based graph tracer
hooks returns by modifying frame records on the (regular) stack, and
thus is not compatible. The patchable-function-entry graph tracer
used for DYNAMIC_FTRACE_WITH_REGS modifies the LR before it is saved
to the shadow stack, and is compatible.

Modifying the mcount based graph tracer to work with SCS would require
a mechanism to determine the corresponding slot on the shadow stack
(and to pass this through the ftrace infrastructure), and we expect
that everyone will eventually move to the patchable-function-entry
based graph tracer anyway, so for now let's disable SCS when the
mcount-based graph tracer is enabled.

SCS and patchable-function-entry are both supported from LLVM 10.x.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/Kconfig b/arch/Kconfig
index 334a3d9b19df..45dfca9a98d3 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -543,6 +543,7 @@ config ARCH_SUPPORTS_SHADOW_CALL_STACK
 config SHADOW_CALL_STACK
 	bool "Clang Shadow Call Stack"
 	depends on CC_IS_CLANG && ARCH_SUPPORTS_SHADOW_CALL_STACK
+	depends on DYNAMIC_FTRACE_WITH_REGS || !FUNCTION_GRAPH_TRACER
 	help
 	  This option enables Clang's Shadow Call Stack, which uses a
 	  shadow stack to protect function return addresses from being
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-5-samitolvanen%40google.com.
