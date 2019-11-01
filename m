Return-Path: <clang-built-linux+bncBC2ORX645YPRBSO36LWQKGQEKHXPDXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 7375DECAFF
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:26 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id p9sf2161576uar.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646345; cv=pass;
        d=google.com; s=arc-20160816;
        b=HxDPIj79BrBjLC2pHMBJxXjCqeXOZ7DuUMamG++To7HUf4kdWJG3WshcJztoP9P82i
         QA8ro4JsS0ZnUI4q8lpXnHPpntOuT4TmXd1DP0bqXMEorb3RY38vR13IEWBGZnyrzoy7
         ed07szfDGsyikudvRUzCBJGwZJoEcnygYmrT3W8bYsI4Q2NrKJQUAJEVEG3Schp7zIM+
         +2fBRzNWV8ERWu+gHgDOtZtnj9ne/6P0HyDVQe3LRQmlrcF3W5hOciNfSXV9GM8jCBzl
         8iHeXYvsYsDTMMEKo7D/vfZvBq0hxNICUlQ+2NWkYA31avENfaE4DANrpB8jBWGZacI8
         lpGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=XpxdaOJNhtPjonothJ2LMN7b64omTY6m5Ox3/q22Fvk=;
        b=H/DMOWrjpUqCITk/2h7nizoDNiufDmumy4jTJbQEzVg86Qr0ynuM0tK5nAC8lPYyVj
         3XayZwW4TpXVmcEZ//a2inhaMBgqNodtALkX9S7HjnEzgoxHto4TCAaHGHsXd8PsfGRL
         zG5L7qVVDNMO5PdmL5LVHjedFnCtrB6pUvTYDfoDemxHt0EgtvcpblxA0m+KgkxFK4tp
         6/h7huygryDo0oGH39TTAev0aIhSVaqrrHqx33yeAP4t/1bzkf4QQTJjcNV4IXNcbfzt
         1gbF0p5roRhugZboalWs5hN306Qz+peuFUdaqy2FANolLQt9nLMq+RX4FkEBPCiW0c6s
         BBYQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o1wmzs+q;
       spf=pass (google.com: domain of 3x628xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3x628XQwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XpxdaOJNhtPjonothJ2LMN7b64omTY6m5Ox3/q22Fvk=;
        b=iEEPrcMhndxwuQrUdxwXC7g/60BfaYj5dZXpmC1Ug6M4EYIR0SwoAzFFzcZjHX7d5v
         nVCathvzEmM92YqflnnHosQs/zc6rY76ZFavQvn6uHWl8CjwuVGliSze556IviYTrvh1
         0hhiwLssFE+y7qQdqY3guZNbE/NqlV5roBPXRzYGlmIKTtJwKt28df2/gC3W4vpeyNHz
         zC8SRKtUjphBOwuRDBXqjpRDGioO33kUBFiNPe7+flergcxRL2OntTeMmdSyHpCFB8Y2
         E7Q7sw7oDgLvQCiUj6DjRFvQfALr1jdM1kLHntdEp2sYkG80PqxGwdWCw36z18xsqc2/
         cm6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XpxdaOJNhtPjonothJ2LMN7b64omTY6m5Ox3/q22Fvk=;
        b=S13lke0kLkW41zV91MCNPJq+bNXLFrqPImlxixiTfM6lw7e8D4GkWXYBFdI5elkZnT
         WXj3wmrggIP+9d7ifWsKxra+GGK7T0bz+PmvQPJRUfszuT6hS7u0Nq58ijtCNZcgD6ZZ
         EkRL0fgQA07ZHMNE2iJTq7F7s2rxx2xdDQYZGRnVsiQ38tFecFPyR4raOzWd3TXn99z7
         ahVh7csLgw6uOxsyoIgRBjGCVzMKME2lzok8eaphPTTtksl9Z7Xj7jMjOsHmxBxSGbVd
         pq26UCPeHp72fpg8riVO3N5tIRxEb+ZRYSWfeTtDQII6XxhT3sCT2PMzqUAjw9qLaD9J
         CwVA==
X-Gm-Message-State: APjAAAUkpJm+Cu53RacuMQWAJfmxI7eHIhf8nhIiy4XFUjCzBOE5BkBK
	eb3rtSFnYuxSIxuwYvIf4/8=
X-Google-Smtp-Source: APXvYqwsHkuE3gPB9XPLPBBQjlQggs0Lgc3A3Al2mKqFyIjLQwX3Dx2R3NizwcbywrjfNyrSbPs9AQ==
X-Received: by 2002:a1f:24d3:: with SMTP id k202mr6666845vkk.75.1572646345496;
        Fri, 01 Nov 2019 15:12:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3492:: with SMTP id c18ls390754uar.6.gmail; Fri, 01 Nov
 2019 15:12:25 -0700 (PDT)
X-Received: by 2002:ab0:2354:: with SMTP id h20mr6864677uao.27.1572646344913;
        Fri, 01 Nov 2019 15:12:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646344; cv=none;
        d=google.com; s=arc-20160816;
        b=PYqShfeAwAnNALC0e3qQx/LIeOMla73BgX4welDnj+giban3tZ13PV7CutKG4oFpDg
         Qgo8WdN9kx/F22AHFN66WX2t8VT0H5uWtRj3py/r98jkMfJDOLdhnlf2+iASW/PfSbyp
         xz7bg/g6gJ3cbBs+ZC/BK7EtFRRLhFBpMm8S2wCG8OHRkyAvlLPtRpUWg8E749yZuhfR
         CocMSNhWuyqP5gmPGol9fh0vAdnoCyt7kVCIamc4IDpMwjqNk/Tk2MMesFNHsUWXWu2D
         FHjncDW57vR4G2zMWtK9KxE0L//kDDTaHYfuHE09cVRK4L5wYaW5z6fJaSgKfZrC6/MO
         ySIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=RsnQ6FRofmXv+RSRylCILajHjnEectXS/G9SmKbukAo=;
        b=yFNwrugJkPWA6WTzvOLkRICsR3qWiItEpNWcNb0mvnYMuZN+Ro4qeBTt6wx/oGSFlj
         FpqxQNgPAjjJDqxV1eQrj8uSj3AKtNolTrEEOJPDIZM+co260Bi/EQRMDz52ccUmDfrD
         Kh1PKHUJIwlphnaqgpOOEoWjLVNRx565t3LFaQ9fP1pNNrfHCuua8OtYhOwNOdywSLJc
         ltQOKMw1C1yU9q6SRiPLZ22Fypi57b3B6SVU6Eg626wisHnDyXqmJKGF0w8p4jkP56Rv
         ds7oK2MbWDjG55H3MJSxXFf6b10w63yY5p26Xf2YjXvhhj2JHx8rUnFgp99dIG4fYkai
         9Uhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o1wmzs+q;
       spf=pass (google.com: domain of 3x628xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3x628XQwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id p78si669889vkf.0.2019.11.01.15.12.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3x628xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 187so4142697pfu.13
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:24 -0700 (PDT)
X-Received: by 2002:a63:8f12:: with SMTP id n18mr1357176pgd.340.1572646343780;
 Fri, 01 Nov 2019 15:12:23 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:44 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 11/17] arm64: disable function graph tracing with SCS
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o1wmzs+q;       spf=pass
 (google.com: domain of 3x628xqwkaao2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3x628XQwKAAo2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
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

With CONFIG_FUNCTION_GRAPH_TRACER, function return addresses are
modified in ftrace_graph_caller and prepare_ftrace_return to redirect
control flow to ftrace_return_to_handler. This is incompatible with
SCS.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index e7b57a8a5531..42867174920f 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -148,7 +148,7 @@ config ARM64
 	select HAVE_FTRACE_MCOUNT_RECORD
 	select HAVE_FUNCTION_TRACER
 	select HAVE_FUNCTION_ERROR_INJECTION
-	select HAVE_FUNCTION_GRAPH_TRACER
+	select HAVE_FUNCTION_GRAPH_TRACER if !SHADOW_CALL_STACK
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS
 	select HAVE_IRQ_TIME_ACCOUNTING
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-12-samitolvanen%40google.com.
