Return-Path: <clang-built-linux+bncBC2ORX645YPRBONFVPXQKGQEOXPRIJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id EA411115901
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:18 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id k81sf6374489ywc.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670458; cv=pass;
        d=google.com; s=arc-20160816;
        b=u71zIFXA8HFLaL0AX4bMxdVoqxHPiPwl2axczC5XwUrpcKR4mUyWwZkhUripRd+20j
         8+rpF1x3dJag6lmITJN24Qbaifdwo2g9TLgthfTgHQQ4ZnJIu8/dc4Q7Ih95WDaix0b9
         x3PaYnP0DzvXYrSivLXds3AYfk6nMtWFNT8EFUI/PwHz+pGoqBdClc77FRhMm9GPfMYN
         YHSZ24c5rjp9eSDPhCLnamGxFG2/VVqqWCquBQLJ5/4NJ9Cdv6HDgqLaPp+OIwOa262u
         qXmqQ+88wAJ/JBc4uFkPIUy2PJyQXlE/bT69lqJ8MKk81mEI4DRAGgvUTpl6aunSfEqs
         4hfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=pM+tLBBiQyXm1/t24PlKIm4QId6LyywrAxRSiyvTePs=;
        b=LczclC78q9mJm6nbKXayFgnV4idGaLA/Y06qCnqQhFzl3sqf5P/nqnGxNRnq1Djiry
         TqMUPmOSSgWetjCYRJGCImcGhwmvYo4bqV76sIfaDFhJNNEWOpewChyzXDGKLUeAGjji
         Gvn9KEuAukJB1BoeAHYDJIt2PekO1LhpW2Evj1aAR2f91j+ZWbQtpNOi8dqNj+JUlXpi
         hu3ncSIf+3GbnnFqwYJOP40byIPU27voJtqJEKDGj7EcjVZRy1i0bfmu23Wn2AnjA9eG
         qFLJjaOlHWBeX9bEn1c5aF7U0dVThYZiiR4Wi4fUYWv6sfKBxsuj0q99kvfzgphnD7si
         P8gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ndn1mcgg;
       spf=pass (google.com: domain of 3unlqxqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3uNLqXQwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pM+tLBBiQyXm1/t24PlKIm4QId6LyywrAxRSiyvTePs=;
        b=qDIw2f/hn2Gr5NVtz0k5W+4L/wqGt9csuHh1Hg5DoDkXIyTOoe7vsOC9ph6w9F5j4S
         XSWE7nWWs97OW2wUktYzH2Vj55g2qHBl//9PRp++4R9CpDVhia6IBKvQDGVcLy5Aag+i
         UwEPIpoHSUU2W4T97LWoMbqKCKiI6rKXRKuMxM4EJkAXAsS/35j+BRvvhHBck8uh5Y5T
         ozYQLTRi9dgnZ1aaE+Z6aTDZXijwRF5gJaBtla/y5x6UOCYE7/WcNbxxpdI0qPKj/kVI
         xSQlkf/WWKl+2wX6f/PJEIrJXxqDgkwXwVX7nAbHwMjJ/E1JanVr3q8QRDkRw7eEgALS
         BBog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pM+tLBBiQyXm1/t24PlKIm4QId6LyywrAxRSiyvTePs=;
        b=fJ+zVGD31kWqLBHqoHVQq/ByCF/Uc71gzaDs+3IHdDpTfvLxroWjaqDmYTcgNQ3+0d
         InHn4oQddg9j0BLMY1QhP8s5r5y+LJEvRmL3h10hmBJ6qlv9lYgv1ujJTmeJOyB8055q
         W+FOVLRBS2sGWrrvN9moqMupWn+QUPjcUAgiXvGA0sIopPB2gILI4zrF8q6L9Ic8m6JB
         jM3lKaaOK1LmKQgmpRDlCK6NsCuRSzOMYOd4C2IaBmh/pTe6SyYUPAJ9cWZSZLFIYzAj
         r2Io+AFYS0fK1SO7NUHI1ddrpSSnHKmPYZAVxtI4CIVNAFFL97OmMhC48ztwyqdV35hT
         gQnw==
X-Gm-Message-State: APjAAAXx2DdqHhqsXVqGB6cXc349+Tb45pOfnU8yIW497UP3WRXbr92U
	RGbYQqGOESlzcQ/afniwbE4=
X-Google-Smtp-Source: APXvYqykjZqvDJipUav0ghtx011dqeb7anYB8twgIBTo9lhE67utEnJlr2zAXmZSwLYs0hB1KyRwXg==
X-Received: by 2002:a81:a541:: with SMTP id v1mr6602652ywg.423.1575670457971;
        Fri, 06 Dec 2019 14:14:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e851:: with SMTP id r78ls1066969ywe.12.gmail; Fri, 06
 Dec 2019 14:14:17 -0800 (PST)
X-Received: by 2002:a81:a6d7:: with SMTP id d206mr12498462ywh.324.1575670457454;
        Fri, 06 Dec 2019 14:14:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670457; cv=none;
        d=google.com; s=arc-20160816;
        b=Fg6RFV1w1wKMjIR+Bt3AzZoAuhY0L0QQOYfWMIORsUGVMf900lSciJ02GZqpavYox9
         nVVxBi2QjhcxV0sXOeSHkg6Y2VYNtleWwNjGJUn82+xI7JmOglQIAbPjmYkRid3Sie3z
         5fFysPlHaVy8sKBdLdMSt6AIQXytHY1rpmGtu+xVEwexB2ZGl8ThZqCR5KwBB03toiKU
         1rb7f2xDsxRuPdLfKSh40hBmZlmES55i+V7x0U6n0Sh789lGNQWkQMxMctmh4MQlfv/q
         sslB/dfP2cRG3/lphUHhA+0VlGpezYGbiVj7WF0j/iN2MNXRx2sri/hdeA+AyZx358OJ
         WlDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=l4zxu+Ve1HL3tnwJkQPbvyP6wBLrUpssPL9/jgnN43M=;
        b=gmKxhkxOeNni2pGb5TYg6GfkwN0I+DVvl3q1c11GHeKSGFMCZixCfzl467IAd1566l
         4XcME7BfSf1S8OrDVvNHvQLhYtDBVX3IV73VEqRWh9sL6IvZ2D2lacTYRNT6QVJ8szmJ
         Y4V+mtR+E698tTx8c8xws2MAlo6jLZAEVn8jPzt73RDb+nmMxPS/5o4kYaxIIITx5q/4
         OdqQI0keqQszfK/jdjP1vmlWVEV6Dx9PzENw5a2TW/bGU7fcVy2P0pkCP8NgqmX5qhAo
         tFND8RWjKv+z/WCQNf1fs8hY+Oc7L/MvOkgpc+yEfAfh54EYyArhNVisTybbnTPetC9P
         UUXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Ndn1mcgg;
       spf=pass (google.com: domain of 3unlqxqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3uNLqXQwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id j7si980025ybo.5.2019.12.06.14.14.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:17 -0800 (PST)
Received-SPF: pass (google.com: domain of 3unlqxqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id s25so4802071pfd.9
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:17 -0800 (PST)
X-Received: by 2002:a65:4345:: with SMTP id k5mr6095564pgq.252.1575670456528;
 Fri, 06 Dec 2019 14:14:16 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:44 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 08/15] arm64: disable function graph tracing with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Ndn1mcgg;       spf=pass
 (google.com: domain of 3unlqxqwkap0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3uNLqXQwKAP0xfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
infrastructure), for now let's disable the graph tracer when SCS is
enabled.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index b1b4476ddb83..49e5f94ff4af 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -149,7 +149,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-9-samitolvanen%40google.com.
