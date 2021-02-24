Return-Path: <clang-built-linux+bncBC2ORX645YPRBBP23KAQMGQEWJBDATQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id BA2C9324578
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 21:54:30 +0100 (CET)
Received: by mail-qt1-x839.google.com with SMTP id o7sf2618431qtw.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 12:54:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614200069; cv=pass;
        d=google.com; s=arc-20160816;
        b=kfyoxViHPIEWikzf5kdFlRPSd7IpGiF+kL5SRUSFIF5pGTHed6Ne8gdp3ZEqrRQs/F
         QCBbDD1iZmIaxZKVPhrBxVDMD8UPD14EJazZLdPovnwcR+20DV6HLtGx2DtQtSv5BmkX
         IHCgN9zwT4/VUkWlKDCPpMtTTFZsQf5RucRCzs5IX+XtEPbFaU/tZ4Rm8mCKPaw3qpYR
         eza6tw2oHYR8CUdELPZ8n+dKvNi1pHt0Le7xvS4UJT8nW+CiWV0xuHFceaeLEwgNe30v
         +cEOrWQzw8qCBwB+2fMEVCoruRoiLxNA5WBo9BW1qzhkgxeXprljDeeeVrBWrY/7hG3Q
         iSug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=r8pUQPIWV7nrJ8R7+LrF/8u2SR0woaqhvtX1c09Jyjs=;
        b=x+/k+5AE8zDItL8X/9tk6BCusPDLlK8m+oPNxqVjHQYj4nDk0NLeKQos15jc8i+aIZ
         oP13IdOGMSv3oT+b99ffeFfwMzkr1BwmyTCkjz1HKFsyynimoDm25diZ8t7EUzdO7I1E
         q9VVN9jlSVyMz3ugjqqShiL4ON6nu/BemdDW3TzMqaV3FpkSYbOYo973Q8x6WOOwixDD
         9PIhDRDYd3mWp7XAaTwvBrBzUPIWjgvxeaqybGob90tPD5VxfqdWUHd4KtdEVHSH/6o1
         xliPdpjcnYjJ9hAkj2OJGMdP3ZX9DU+G62yZZfYyYUco6SGs7LIZgjlgxaxxFHI0t+C7
         3AcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ollMcONV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8pUQPIWV7nrJ8R7+LrF/8u2SR0woaqhvtX1c09Jyjs=;
        b=UP1iIQOubuGQgn86DsvJy1oaoNvoRJUJwNxxntEhJRM071sOu2C1102EH0GqyoKKQ+
         dvOZkev6Qj2iNqtGPX1TVjKz/3N7oKk3WVWxqQsjEYAColo1zoksVXiwnlakJd0tMeQh
         nyFhhTX5d0eKE9jXjh8BLqgywY4hAQpVIWQKVIoF7/ZYaM2xl1C960MOnr+zJOsf9qxN
         uJLTLwTslg1Jp3dyCEaV9t6VdOZp5mhcNXYBUWGfrKq7MbkxgvrHx0WnMEsKkijSOi6g
         Sb4Livw97HgkkYL2EO2Fw84bHPo8CKo5xLY1k+XoX0rpcNw37eut3PzxLCh0dTr17rMN
         oFxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r8pUQPIWV7nrJ8R7+LrF/8u2SR0woaqhvtX1c09Jyjs=;
        b=IL8JEzaBR8+x09buuUDi98cTdlwJ7jWRSOzXhV+tWitVuozk9uKBQkRfCLbMQSyovJ
         zhDzZYFXkgM2eNKMf/8LbByy4Ewbb4NlmWGx2UU+V6AqPoeKrlbxAsuvqM9HpzijFB/F
         s+QzgCLiE81h9BP2LEBwPzUQ0kBnYbRMtZng/YrfGA2t2Rs4DsDA8kWAT4Wb02zaF8wW
         DhGpmX2gtMbWO/bYTevcePGk/yILc4jflTPL1wRV1l1WIYlY8vER0IJzuNeBttLIb6Bn
         2gzB2Smm9vL2RZhGYbHfD+LTXwUmA5a52IZ7Fjyv3Nlxk6zkX7Z9IH5ZUxqTCUdYwYHP
         HS/A==
X-Gm-Message-State: AOAM532H3ckvq1Vz9wycXFGphWd5li71fU47GAlQKcurzcdeye0RTbB0
	lWSa8XmwnAxVWixJuziwJPI=
X-Google-Smtp-Source: ABdhPJxW3gfY4OU3AHz7PaV1baPSqrtL2detQGbf5YZVgQxwWGeLEQHFGCN/+HtYhZbOTFHCdqNWLw==
X-Received: by 2002:a37:4d4d:: with SMTP id a74mr32459595qkb.204.1614200069501;
        Wed, 24 Feb 2021 12:54:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5a04:: with SMTP id n4ls1286569qta.5.gmail; Wed, 24 Feb
 2021 12:54:27 -0800 (PST)
X-Received: by 2002:ac8:7409:: with SMTP id p9mr18548403qtq.100.1614200067460;
        Wed, 24 Feb 2021 12:54:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614200067; cv=none;
        d=google.com; s=arc-20160816;
        b=edkK3eAx2zGI1AVkTuHtIevo5gOPYigdWZwDfS0VCHr6Kkqy8jPT3YTgEuZ9+HKsbn
         KKW4umlU2mP+UYdkh70Y+Ia10GxKgmrMGaH33+oofKvCBNdOfrg9ikV58VQhnfqYwc5v
         LSbAki1xKg/7s6v4gVDFDSiDTmKbgMUtDdgcYaPrWkoz7WLzQANL/6q/5u6WFYW8SgHz
         qvkhMGgHfpu//cNg4+lraKgmzJZu20BCi3/Ik9KbQhIyDSxKHdop9qogmv49r7Fcm+vG
         fjW/R6mwz3e9XXuMsKKHsas3S2Ev3fKJQarGvXIg95sTKPNU7szV8wU5zQyeRD0pWAyB
         +jLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LLIfyeFIub3muB/CP7Hm2VoepJyVW4tHjdnBCk4yhLg=;
        b=OnLzVHyA5dkuAGiqh5I47olQOveufr9K1Edue+HL1PVXNGYavnzbVm24RWN7M6HsrT
         UPPhITWVYjt8Wk6mNj5ZWGfCc3cKzU2hTDe7lTH61FUNBoYnkKVWLmN9EcqMaTwy0xNn
         AII3Whe6s34toMo23wIkhr7htnNpdeaqFkbrX5r2rbBldpOIdf2AF3XqO/UQTXGtm4TC
         dMpUlFaajxXSg9wbiw/OovF51vnoWqzvjKwd9eo2MqjEcIM4fBa79cm96O6mqYcKO+vp
         bPcEhX0rmG1LcjZqaHvlgLS+8AWSwdhnRYARxuPYZs3i5gRjN1UnALYPRUGGWdKtrZF8
         qDhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ollMcONV;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com. [2607:f8b0:4864:20::933])
        by gmr-mx.google.com with ESMTPS id w19si216372qto.4.2021.02.24.12.54.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 12:54:27 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) client-ip=2607:f8b0:4864:20::933;
Received: by mail-ua1-x933.google.com with SMTP id c44so1177770uad.12
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 12:54:27 -0800 (PST)
X-Received: by 2002:a9f:2021:: with SMTP id 30mr11157082uam.66.1614200066849;
 Wed, 24 Feb 2021 12:54:26 -0800 (PST)
MIME-Version: 1.0
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-2-samitolvanen@google.com> <20210224201723.GA69309@roeck-us.net>
 <202102241238.93BC4DCF@keescook>
In-Reply-To: <202102241238.93BC4DCF@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Feb 2021 12:54:15 -0800
Message-ID: <CABCJKufph4se58eiJNSJUd3ASBgbJGmL2e3wg4Jwo4Bi2UxP=Q@mail.gmail.com>
Subject: Re: [PATCH v9 01/16] tracing: move function tracer options to Kconfig
 (causing parisc build failures)
To: Kees Cook <keescook@chromium.org>
Cc: Guenter Roeck <linux@roeck-us.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, linux-parisc@vger.kernel.org, 
	Helge Deller <deller@gmx.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ollMcONV;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Wed, Feb 24, 2021 at 12:38 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Feb 24, 2021 at 12:17:23PM -0800, Guenter Roeck wrote:
> > On Fri, Dec 11, 2020 at 10:46:18AM -0800, Sami Tolvanen wrote:
> > > Move function tracer options to Kconfig to make it easier to add
> > > new methods for generating __mcount_loc, and to make the options
> > > available also when building kernel modules.
> > >
> > > Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
> > > therefore, work even if the .config was generated in a different
> > > environment.
> > >
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> >
> > With this patch in place, parisc:allmodconfig no longer builds.
> >
> > Error log:
> > Arch parisc is not supported with CONFIG_FTRACE_MCOUNT_RECORD at scripts/recordmcount.pl line 405.
> > make[2]: *** [scripts/mod/empty.o] Error 2
> >
> > Due to this problem, CONFIG_FTRACE_MCOUNT_RECORD can no longer be
> > enabled in parisc builds. Since that is auto-selected by DYNAMIC_FTRACE,
> > DYNAMIC_FTRACE can no longer be enabled, and with it everything that
> > depends on it.
>
> Ew. Any idea why this didn't show up while it was in linux-next?

Does anyone build parisc allmodconfig from -next?

parisc seems to always use -fpatchable-function-entry with dynamic
ftrace, so we just need to select
FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY to stop it from defaulting
to recordmcount:

diff --git a/arch/parisc/Kconfig b/arch/parisc/Kconfig
index ecef9aff9d72..9ee806f68123 100644
--- a/arch/parisc/Kconfig
+++ b/arch/parisc/Kconfig
@@ -60,6 +60,7 @@ config PARISC
        select HAVE_KPROBES
        select HAVE_KRETPROBES
        select HAVE_DYNAMIC_FTRACE if
$(cc-option,-fpatchable-function-entry=1,1)
+       select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY if HAVE_DYNAMIC_FTRACE
        select HAVE_FTRACE_MCOUNT_RECORD if HAVE_DYNAMIC_FTRACE
        select HAVE_KPROBES_ON_FTRACE
        select HAVE_DYNAMIC_FTRACE_WITH_REGS

I'll send a proper patch shortly.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKufph4se58eiJNSJUd3ASBgbJGmL2e3wg4Jwo4Bi2UxP%3DQ%40mail.gmail.com.
