Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBT5G3OAQMGQES3R5VYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7E43246D8
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 23:29:36 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id 33sf2550118pgv.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Feb 2021 14:29:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614205775; cv=pass;
        d=google.com; s=arc-20160816;
        b=XmJ+E1GmHcwlj6ABRlaS2wZEqHMu4xBuaTGtY07peTVr+mPywG5HyVd/twvUMYtTZg
         IQmc7zk7ZvOlWj4lpfKyAkuk4uCgvQohWaUs9WTa9jc/LD5fT0uDAOgfYk3VydUpOL7d
         Hb8JNHN2qpUB2oN154eegYREtKRAATiKVW0ofCzYFbuwrfcX/XB+iaKRWcatoaIsWzcp
         nNeJUZbM78SW9v33tT4ixlGFrKvrlH0nLxPp1AsZYVy2NfSlZIdq4fN2TTELORBVfTdD
         z8tx4EcbLurGywez4JvkNg1cJUVPhffHQ5DptM0ymvBgb7Oi4upnentr/E8cEdWyk+Yf
         NR6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=J0nifN721LBG87jC3QK6i45LAy4rVzeKbt9NQcnoWug=;
        b=GMZkmraoBjJVXeUE/VD7l5Cc0M5Ws1TffaTJI1XGP+BmMMPaYnDrjd3cPW58dfb8JH
         fsSvNIa+xz30aMMCby7E8EDtpgJtAl/I+lYHmce5U1F9SK4nHkfU6LpC/MfISxXesgdq
         ShhVLixmf+ADfyIKdTUqt9FkxyYsMW4NC7ISVbZxOF/mHAzN/402DvZ4uGrdw4cBWIA/
         ODgpV77+cmJ//C9ayZNOFclmsVsyOlapKnywpHj9QzXD+NsQm8Aypbp3qTluBPgprQjp
         8+Sg+7bBeOd00eZWuymWSZ7KrwiRcu/2VYTgdE38Rwm5MfG0ZgV+QNcUzZSYNreCHMl9
         XPoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WXKmbDE4;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=J0nifN721LBG87jC3QK6i45LAy4rVzeKbt9NQcnoWug=;
        b=SNnKMVrtWHTNPi8La1bHeRN7+9K7BSRi4tuCxRoObl6HRs4cbFnbDMiUKOfC+WV7hG
         Y+U7m6fbd0qMSiRxGpYwX77FhI+8rU0lP41wGFBzGWxcIf4PIqf2lOG5mk00a2b32d+z
         Oq7RDBSICuJdhAUbEPTmU5KU4n82XQNBcgazapXI16CXcG9e34ZBA6hSmURvESWJxIsk
         073nMHii/3Lu7yIK6miFPoRPBX5weRKOJAmW5GVKgB5u7ZmvVZRA+MVa6TgPgHl2qJ/v
         ZvVsi0n1Gj/uXnMmlgebLJrMhvKKrdRtt7rF8u/LF+HKLOuLYo/8bIhd//ZRf8BtDH+7
         svTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=J0nifN721LBG87jC3QK6i45LAy4rVzeKbt9NQcnoWug=;
        b=aUsYyKAaJZSDWsJtz5uGZd6E5b19duDQmbqDYDLz34JyXEMCS+/6Izt5G3lfNcgwGf
         or1mPuVAXsywAu+9S0q0NCOed4PGF/G60T//cFlyCV5+yCq4Y1qcFOe18pOKgpcpYP/h
         6cdQSwRB+2M9DPwoY8/zIOtVL3o4R1kDv9b/j0OUYctM7RfxuONXhLx76t50ZF4O7CDq
         r1spD5HEcXGy98DFqBgiKvFf5EGkA6uf/sLJQglO02Sz3SBU7rnQi6Z4CXmtkrI+UTTM
         pO2tXyAsSxS8KhyCQAo4Kp/xtilgxooTmYVY5E19qRbEK/sph2BwImhhaYH8lsucRqPW
         kB0g==
X-Gm-Message-State: AOAM530jAP8DrGnOySG0r3Wi5jw+0fitn2zzzvXMgas1h2+KY/hhZKWp
	X+cV+zdFORDAUtfgFPGzBf8=
X-Google-Smtp-Source: ABdhPJzRt4epDwD2n+IP57BBMuu2rSxZ/eLa8bM/A5gi69G/N1a8YeTSqPqikQ7pqKMJoiHi0keNUg==
X-Received: by 2002:a05:6a00:1a48:b029:1ce:64d9:70e6 with SMTP id h8-20020a056a001a48b02901ce64d970e6mr210609pfv.8.1614205775145;
        Wed, 24 Feb 2021 14:29:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e788:: with SMTP id cp8ls1995247plb.4.gmail; Wed, 24
 Feb 2021 14:29:34 -0800 (PST)
X-Received: by 2002:a17:903:22d2:b029:e3:f6cf:9408 with SMTP id y18-20020a17090322d2b02900e3f6cf9408mr52128plg.8.1614205774402;
        Wed, 24 Feb 2021 14:29:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614205774; cv=none;
        d=google.com; s=arc-20160816;
        b=mm5x991mU/uyAzuiRrv8yQE7ZxIpeWOm4jMsEH02FySr9Tn38iI6xUIlYisKzZw+J6
         Mj1+ymNQDQigO/2DRFNjkl/TJT0JZcQDdLBlWvbPkNbAjur2qJKqk3A/9asJq6/NZ0C5
         At0nDZK0TsxfgKkwRT5gWmDbs6SFmEIkZjvXn6bZyyFZF7BxDD3SqMDkqOTKoOzArt2x
         RWjOfEaYf2Ahslp2FZVVLdZdd9A6TD+mEcPfWgf+nEUTlRxh3FH+07NruRUEWNALK9Lj
         dHF7Djbm5R02ZgglXSWmI3B7PA1HfBjEe8JSHRaH2FweA7ry55Ka0y4sCqhH31BlKAhk
         YLJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=u6XAvXUVnlDMggAEsXaHM4e8hEC4mF5s4JegHeSo1z4=;
        b=DWxx3MIKrKwX3pU6np20w5Q4yT0H4CBNGeZsQXlKzomDLC4i1lBU1M8665F4VoYy2G
         Hco5HrjwwfYdYvaio7DzXKon1fGgX6vKpBJVfghzIzrKOiOYeC6N0/4h2W66V4O1tOaf
         TGwpUv74Gl4o0Gd/BJhQZdg1yLmXuCz62h7ZSlj6MJvqGE0Hh+BGa8+lR4/OgA9kOKFR
         ZAN7GEn4Pu9eazJO+iiThLYTFoj6Lb0MemxaR5B/tkEK2hcRddyJxgU3mUq2JnZkFnEV
         ahuxUaVp+upHjVHV/77Hv9ehSSNoFpxQoUu1b4YRRyaggVPnbrb1UISqs9W3XPQN16v5
         /P2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WXKmbDE4;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id n2si216529pjp.2.2021.02.24.14.29.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Feb 2021 14:29:34 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Received: by mail-ot1-x335.google.com with SMTP id r19so3833831otk.2
        for <clang-built-linux@googlegroups.com>; Wed, 24 Feb 2021 14:29:34 -0800 (PST)
X-Received: by 2002:a05:6830:4c9:: with SMTP id s9mr14765343otd.133.1614205773544;
        Wed, 24 Feb 2021 14:29:33 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id d13sm665063otf.52.2021.02.24.14.29.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 24 Feb 2021 14:29:32 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Wed, 24 Feb 2021 14:29:31 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	PCI <linux-pci@vger.kernel.org>, linux-parisc@vger.kernel.org,
	Helge Deller <deller@gmx.de>
Subject: Re: [PATCH v9 01/16] tracing: move function tracer options to
 Kconfig (causing parisc build failures)
Message-ID: <20210224222931.GB74404@roeck-us.net>
References: <20201211184633.3213045-1-samitolvanen@google.com>
 <20201211184633.3213045-2-samitolvanen@google.com>
 <20210224201723.GA69309@roeck-us.net>
 <202102241238.93BC4DCF@keescook>
 <CABCJKufph4se58eiJNSJUd3ASBgbJGmL2e3wg4Jwo4Bi2UxP=Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKufph4se58eiJNSJUd3ASBgbJGmL2e3wg4Jwo4Bi2UxP=Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WXKmbDE4;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::335 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On Wed, Feb 24, 2021 at 12:54:15PM -0800, Sami Tolvanen wrote:
> On Wed, Feb 24, 2021 at 12:38 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Wed, Feb 24, 2021 at 12:17:23PM -0800, Guenter Roeck wrote:
> > > On Fri, Dec 11, 2020 at 10:46:18AM -0800, Sami Tolvanen wrote:
> > > > Move function tracer options to Kconfig to make it easier to add
> > > > new methods for generating __mcount_loc, and to make the options
> > > > available also when building kernel modules.
> > > >
> > > > Note that FTRACE_MCOUNT_USE_* options are updated on rebuild and
> > > > therefore, work even if the .config was generated in a different
> > > > environment.
> > > >
> > > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > > Acked-by: Steven Rostedt (VMware) <rostedt@goodmis.org>
> > >
> > > With this patch in place, parisc:allmodconfig no longer builds.
> > >
> > > Error log:
> > > Arch parisc is not supported with CONFIG_FTRACE_MCOUNT_RECORD at scripts/recordmcount.pl line 405.
> > > make[2]: *** [scripts/mod/empty.o] Error 2
> > >
> > > Due to this problem, CONFIG_FTRACE_MCOUNT_RECORD can no longer be
> > > enabled in parisc builds. Since that is auto-selected by DYNAMIC_FTRACE,
> > > DYNAMIC_FTRACE can no longer be enabled, and with it everything that
> > > depends on it.
> >
> > Ew. Any idea why this didn't show up while it was in linux-next?
> 
> Does anyone build parisc allmodconfig from -next?
> 

https://kerneltests.org/builders/next-parisc-next

Guenter

> parisc seems to always use -fpatchable-function-entry with dynamic
> ftrace, so we just need to select
> FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY to stop it from defaulting
> to recordmcount:
> 
> diff --git a/arch/parisc/Kconfig b/arch/parisc/Kconfig
> index ecef9aff9d72..9ee806f68123 100644
> --- a/arch/parisc/Kconfig
> +++ b/arch/parisc/Kconfig
> @@ -60,6 +60,7 @@ config PARISC
>         select HAVE_KPROBES
>         select HAVE_KRETPROBES
>         select HAVE_DYNAMIC_FTRACE if
> $(cc-option,-fpatchable-function-entry=1,1)
> +       select FTRACE_MCOUNT_USE_PATCHABLE_FUNCTION_ENTRY if HAVE_DYNAMIC_FTRACE
>         select HAVE_FTRACE_MCOUNT_RECORD if HAVE_DYNAMIC_FTRACE
>         select HAVE_KPROBES_ON_FTRACE
>         select HAVE_DYNAMIC_FTRACE_WITH_REGS
> 
> I'll send a proper patch shortly.
> 
> Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210224222931.GB74404%40roeck-us.net.
