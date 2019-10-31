Return-Path: <clang-built-linux+bncBC2ORX645YPRBENA5TWQKGQETY2UZVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA6CEB52A
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:15 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id c72sf4865801ywb.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540434; cv=pass;
        d=google.com; s=arc-20160816;
        b=oTN4yBKdraF/hkfo5rqC4SDfhpwpfjLeBVVpxK77vRH/eaA4CK4CmNP/eE+iC1C1sa
         0G0mrZGUOpYi9H5D8lVXJszMkl4NdKc6m92RK91nhtcT8K3Pcgw0TX+2yVE5Q20SoiCP
         nVvO45lf5JXzoX5NABeYqY8+DUxQkmQn2YlJIEhLcTuRjkWzEoyDZI2hfTP084TS94At
         uixTmSNiYC8h8TAr/1AmZV9HSDEElcr+YiCq2kb9gNgn+//gz/emluNcZFiPDgwyZgmH
         Yb/Gu5sM14yhhUCBggHRMalH3CMdrDlMWwe1DX64v2bY936p2WGNMif0GfvuhGj5h7Y9
         6/xA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FqsojxtPbZtjp0t7yRRamMXLfJ3oe56VbaCPwzpMHnI=;
        b=RAHXQK+M/rrLu/FMVaSHpPMZOPZXCI5+uktfd7IJlbBKez6SJ1N0o+nYTDXXW01/at
         MTqWUrMov/kuvlCoZiodRfXptFj5xc9LYXl+EUwFqK/vSNah6MO3qKb+4Y5Ae2wbnGc4
         JB7IVCK2EkrNi8oWI6BNye8k7G4nS8vzft7yExobJ2K3f4ijmeg8F8tfzoGN07PGDEpP
         F1khSaCnbeSDt7wO6PK+kzEHFXqpYQj9uVV9yIyGVhDOulCPtszL2lSjTxJn2Cbxi0VK
         vym9ye1zN3Dfub54o9cElp8MZbbFETfsVPiriN9QJLh2maSpEwPil1oo8k33bXr7Jfmg
         ViVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LiHsXWMw;
       spf=pass (google.com: domain of 3ebc7xqwkabe9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3EBC7XQwKABE9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FqsojxtPbZtjp0t7yRRamMXLfJ3oe56VbaCPwzpMHnI=;
        b=SaoIaMur9ndD/kQHHJWV2shRNqh0L0HvqHIxcHjuOxRJGn5gOUvZb71IPwMYMynJL8
         dht8hkTiM9VKo7icQQbfFhQMSY/Xjr8/pm8JD5DfEAW28lsF5CGQfWwMmprU4Y+h8yEl
         oNBY4sPdTUZt/nQJvYtc0S4IJqWy4PKsHLp6iFfST3QFlSd5Iso0xtQPmDdtbdFig8A1
         LOCReWKiP40fTCkqdOTweNao4841I5Ivs88XcTfJGpBKvd3ZpFxAA//ztux12KFwE40k
         BQmA3XyY9V2TnDIipH9eCz1k0ucTEswfJdStkQWQGDEYqU2j060FJZj+h7qp7iiVYZ2U
         WVpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FqsojxtPbZtjp0t7yRRamMXLfJ3oe56VbaCPwzpMHnI=;
        b=ppK0nZ53TKpOkI26/7mQbGL82ynzPqsM6o4mN7hOp61E1HVe/NqLbsUckf6KxC48Ti
         1Q+ksdyLioBsMO25UEXOKh+xz7PTrDjHCYf9Gq+Ot+QtkNE4WuAoQ5dja5VAfiB5KC2O
         DNV3N6ZVV+2SN8W8ogw39AQEtrFTQ41aOg0AOdXQEx7HaOskTgBhjeRPz+7rCDyO4QJU
         3NctSnrz7WHh0ZrOtUfXA7sWpZNk4bOwfJk+xlt/ZvcIYMTGIZHhI/NXQZkxhsre+rjr
         bEy7I2GnJWkAad759ssJfuHgvGHO/EcnfnfFZ3eMQ++fxOglhMpbTCfqIrIjbzz9j3+f
         OX/A==
X-Gm-Message-State: APjAAAWACgzSJ4LFd9zmttFQ4/gk4eaO8ShKtLnRvxkWgPbkcc8Jd0/p
	qajY9FA3SinvUSEQaOi/ln8=
X-Google-Smtp-Source: APXvYqyc0BxwZmhxNc/8/4OvTSgiQ01XiUB2nXoZuPQta9AQwIp9G3AqZw3yT1KIXX64Kl9NqEDw+A==
X-Received: by 2002:a81:484d:: with SMTP id v74mr4964555ywa.448.1572540433978;
        Thu, 31 Oct 2019 09:47:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc6:: with SMTP id 189ls81095ybn.3.gmail; Thu, 31 Oct
 2019 09:47:13 -0700 (PDT)
X-Received: by 2002:a25:bd8c:: with SMTP id f12mr5265772ybh.405.1572540433484;
        Thu, 31 Oct 2019 09:47:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540433; cv=none;
        d=google.com; s=arc-20160816;
        b=iQ/2R5AJXfJ8ZU1eI3v+c5VwqMOHXD8vCMohy4WpFT4+F5fP2qG1C3xGUlcOpKbEoe
         bCcAh10Jjaki+JY+aSq67vJVDCnudK3D+xRFRBAIThL3rcJ93bjSPxBFP6TjOjenZMd/
         ZUealNCbMJPlqAc5GhCaNS8oj9meWFvwE/pDE6aalVEccs7FvfFFYXtlgkb+/uQtNB93
         c9EmhDgjxrPzyztKkPXx0VgwfBVn76TwFdntXdhq7C5uHUwffyJKBfUKBngTjaMyOwx3
         4gInV4Am5FMbfuc3cwmeZ5MrECI9Cn9OoSVjfWX+6DiRm2B7cFDy52mdKd7ATsG89ilp
         tbKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=B4VLNzxMuvBiHcofU7yya6+NRz/joAG8uuuPQJlxTTo=;
        b=VvWJItgdbL5WcX698RpQjzKzF56enG493aSuCVplhsgWW1z8Brd+rcAb6Y41h1dQd5
         y44eRNELgLAuBL3ECQJ8+moRukWISGqrih3rXPkQRPgVhLFw1NGtX5Ctx//osW/DIA6f
         7lGhsuyJILN3o89Tsv35iovtZotXpg9t42XD0L6QXsfNK/J7+v36Qnp+cJ+dSz+SbVNF
         InK3QVsqQcPJQqkr81NZBhR6syljImqEOew+FUUCoLhA0w8hFSN1LvngDOcURFur9Zto
         zWSFi/LrRAwRWlrbztNYivHW0Radw/ZqIewfnKsbYN3wm9BwYbKa5piqF+xdm5ud0dyC
         daaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LiHsXWMw;
       spf=pass (google.com: domain of 3ebc7xqwkabe9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3EBC7XQwKABE9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id r185si501260ywe.2.2019.10.31.09.47.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ebc7xqwkabe9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id x50so6898774qth.4
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:13 -0700 (PDT)
X-Received: by 2002:ac8:22c4:: with SMTP id g4mr5716668qta.45.1572540432881;
 Thu, 31 Oct 2019 09:47:12 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:31 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-12-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 11/17] arm64: disable function graph tracing with SCS
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LiHsXWMw;       spf=pass
 (google.com: domain of 3ebc7xqwkabe9r3za52cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3EBC7XQwKABE9r3zA52Cr4v4x55x2v.t53@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-12-samitolvanen%40google.com.
