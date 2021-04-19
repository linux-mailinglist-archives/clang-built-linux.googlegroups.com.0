Return-Path: <clang-built-linux+bncBC2ORX645YPRBOGC62BQMGQETSDBIRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7E3364715
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 17:26:49 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id br7-20020a17090b0f07b029014e3d2b6f62sf16417830pjb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Apr 2021 08:26:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618846008; cv=pass;
        d=google.com; s=arc-20160816;
        b=NaF86+Eu+yUt99ZnSph/VXAgfU7HPj0gxr+DaoU0eJDD6BZ0PK+8o3QsJtZYn4es3V
         JXaO6spDqjlCilcrynP1kScOTHgXu0G+xRHNSmKtSpQzbDN7WKXEtc4/Ac1MWPP2e6ml
         2Y4JlgVm/NbaT0JIH6qiW0UtADVSv469jSSkiFvilExyNq0tW2I/9mUtGmIM9O9cSXOq
         paf/8q5Yb5g9WMkOeKDpjFmuuGiRpqoxF7B7ktgGXsudKV9ch2SFkAWzIxh3Fh+5Gw9Z
         JNx4DqKPTBq5wNEBC36kP0x0IzTB8mLuXFC9eEkwS3w4UO7ADBjosA3RPo21yMyAXRID
         deaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=DK9WeHIKla2NDCqgpNdv4MLc4iL8vakoWxf2qnll9pU=;
        b=VYfhpUa3bGU7OZZ5uFEegDEmppwAssQnLA+QrCqW0N7fw0MrcXIBqM8SbBXpux97lo
         118bFYGWITigEWYMyqNorCb49914rggxZLoub0kBaNfCFouBuEGG74HeQJjzULmk8S4b
         mxTpY89VCSUl9Oy+RXuslQ3NTz2PLTPKBbXpDyOlDIsiWbUz3S36awrHPtdSuv1VJTGX
         DKrB9aRa9n+u0nYDk82ULczP70VtEHUBDrMHFDP+G2WIgacUNb6l8aozcTlbo3MYfc/V
         cxO2x9xbhglih6hRZPP4d2GUxoa3kryo3E7fzZUrqUkZBeI82+am9SJHqfnM/rBF3xT2
         g+vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="r/yqG7pU";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DK9WeHIKla2NDCqgpNdv4MLc4iL8vakoWxf2qnll9pU=;
        b=gC+wR1nKXaiNtHiwdWTMXfsDQoFCQ/yL6jK5k4q8ksfaUBZKMe1MQ+cw7vJP0PUqqB
         rjR3QWaXbSHZtjnxoQIWkINdfwNWg78h+yJYQ53mc1eZyCZmby0ykhwPO1jfHkb6IUOZ
         gwBDO/u9ZHKgWBivcydRipcq6pyG+rJwR4wmgOT0i7Jo3Xh/lVYkwbT1bZxJQJHQ6GDj
         1JOlhPMcT/tmcj4h7z7KIOknffuvuWS2vFR0s5voafncXtKQOfRQQ9SVRUc8yNRqI8Xh
         NJhjlUzuz37uVKEkKHdwLbmSfKlEONKQ09OhUWjXhdU56Bfr11bbcyiRVN3k+IeVXA6C
         EUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DK9WeHIKla2NDCqgpNdv4MLc4iL8vakoWxf2qnll9pU=;
        b=qHiwP/W/ud7J7U4xS+ngNX+Ge+fAYLpMV89+y45SQI08Ndm5+HQsSLA5mmDO41/yy0
         Bu24NX1/0cwyvL5L3g0gXV9DDP5xzVv2WFeajxqZGr3rrZ1sJCdcuD9ZuEoRngu1WBpx
         KqJnMmH2f6W6dTEpAk6zgSsHhfcJtsqFniGwkKxbrStvGCtRvsjAbBSUtCQgZjqigRtv
         HdLbj9CxmbwmUjBsJ2aTolhD7K0X9ye7S1AxIgnPPSYznAvsmyt7pSNsrp/UnusUi0KT
         ipM4EBS2HEGjcZsxWAaenSgSEp9qlNbx3gsshAjzpEm5vZZXp1XqRfXnLav9kAmbCNeZ
         Ejmw==
X-Gm-Message-State: AOAM533TogAWmcElj8GBD8rKec6EeKp4Ad22p59WXA49ve6f412pUnbd
	oQ0uM8yQCT665EsqmAq6DN0=
X-Google-Smtp-Source: ABdhPJyllRbgvjl8RHDDDMjT58jOSb0wgcHjTmY2dGlDCg1R1cpEEwLppMYyJoZeTgeRfQBI8TOARQ==
X-Received: by 2002:a17:90a:1c02:: with SMTP id s2mr18234953pjs.17.1618846008509;
        Mon, 19 Apr 2021 08:26:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:860c:: with SMTP id f12ls9148436plo.5.gmail; Mon, 19
 Apr 2021 08:26:47 -0700 (PDT)
X-Received: by 2002:a17:90a:ca83:: with SMTP id y3mr26564552pjt.191.1618846007824;
        Mon, 19 Apr 2021 08:26:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618846007; cv=none;
        d=google.com; s=arc-20160816;
        b=kFml0BQ8RoxK6sNYwCxnx8FKrw/4Mbk37MkWigbfAXD+P0b0XEYwvG63O/X8CRH7Fw
         V4rANBeTImaRtSiUsOdlK74UkKjKnyR4R0rcn0vy/WEmg2wAXEY5TA1LDIDuN2Yltjee
         g0XJ57PdEND9E2uAlBv5p5Da999sashkpk8jmHrsAhlSd24K6BGm/bwfdOUpj0PGEW0l
         O1qO9RU6+vnSYOZasnMzXAcp1e0z2Lk4OZZjrSQDs5E3+ULmGwYx5i0cUAEa47sIr1Ov
         qj/uea9tHuEHN16D5UOquivgOcsAaClYr6EEpnvEfjrHIRmVt4Gp1JW3KJsmmIcoJaz1
         zRJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tzb/+EbwYHLN4nxTuV4UKFwyv5D43rDbhLkuAljBUMc=;
        b=wKD7RyV11lWE4rqIW4wr5i1RKSZxq5sWhX6YrbiiU0hBkwOp1mzErcETAtNSLkpsz7
         az/G3MrufAsupKFJZEuT3N6Da7AsrqnP+qynhTF3sKtiiIeUvZVp6cvzbCtdotT9z87q
         p7WI9kbBEQjf4Xy0eBc47H5rQL0+9To5mM/YS2WGAE1DxNQORd4qfVgmM+w2VVOs/dah
         UoufUfkmEWOQUMUz+AD6+0L9n5GzjNzJROBxuXtG2j27cKt1TSzj+ag+p5uUc8iOLDaN
         e024y4s6IA3mGWaPltFMPRGwimYnwkEIJo6M5bXSUtIuqteDBsUK0oRTGi0vmb9A6FKU
         zMGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="r/yqG7pU";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com. [2607:f8b0:4864:20::b30])
        by gmr-mx.google.com with ESMTPS id 131si791800pfa.2.2021.04.19.08.26.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Apr 2021 08:26:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30 as permitted sender) client-ip=2607:f8b0:4864:20::b30;
Received: by mail-yb1-xb30.google.com with SMTP id k73so32917888ybf.3
        for <clang-built-linux@googlegroups.com>; Mon, 19 Apr 2021 08:26:47 -0700 (PDT)
X-Received: by 2002:a25:ba06:: with SMTP id t6mr10459679ybg.459.1618846007267;
 Mon, 19 Apr 2021 08:26:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-10-samitolvanen@google.com> <YHrIc0L5AQukw525@hirez.programming.kicks-ass.net>
In-Reply-To: <YHrIc0L5AQukw525@hirez.programming.kicks-ass.net>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Apr 2021 08:26:36 -0700
Message-ID: <CABCJKuevfuVbKZPtLrFacXZLk+VtbFgebbyLeK8Xxe7Z3YmwQA@mail.gmail.com>
Subject: Re: [PATCH 09/15] x86/alternatives: Use C int3 selftest but disable KASAN
To: Peter Zijlstra <peterz@infradead.org>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="r/yqG7pU";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b30
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

On Sat, Apr 17, 2021 at 4:37 AM Peter Zijlstra <peterz@infradead.org> wrote:
>
> On Fri, Apr 16, 2021 at 01:38:38PM -0700, Sami Tolvanen wrote:
> > From: Kees Cook <keescook@chromium.org>
> >
> > Instead of using inline asm for the int3 selftest (which confuses the
> > Clang's ThinLTO pass), this restores the C function but disables KASAN
> > (and tracing for good measure) to keep the things simple and avoid
> > unexpected side-effects. This attempts to keep the fix from commit
> > ecc606103837 ("x86/alternatives: Fix int3_emulate_call() selftest stack
> > corruption") without using inline asm.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  arch/x86/kernel/alternative.c | 21 ++++-----------------
> >  1 file changed, 4 insertions(+), 17 deletions(-)
> >
> > diff --git a/arch/x86/kernel/alternative.c b/arch/x86/kernel/alternative.c
> > index 6974b5174495..669a23454c09 100644
> > --- a/arch/x86/kernel/alternative.c
> > +++ b/arch/x86/kernel/alternative.c
> > @@ -496,23 +496,10 @@ extern struct paravirt_patch_site __start_parainstructions[],
> >   *
> >   * See entry_{32,64}.S for more details.
> >   */
> > -
> > -/*
> > - * We define the int3_magic() function in assembly to control the calling
> > - * convention such that we can 'call' it from assembly.
> > - */
> > -
> > -extern void int3_magic(unsigned int *ptr); /* defined in asm */
> > -
> > -asm (
> > -"    .pushsection    .init.text, \"ax\", @progbits\n"
> > -"    .type           int3_magic, @function\n"
> > -"int3_magic:\n"
> > -"    movl    $1, (%" _ASM_ARG1 ")\n"
> > -"    ret\n"
> > -"    .size           int3_magic, .-int3_magic\n"
> > -"    .popsection\n"
> > -);
> > +static void __init __no_sanitize_address notrace int3_magic(unsigned int *ptr)
> > +{
> > +     *ptr = 1;
> > +}
>
> I really don't like this. the compiler is free to mess this up in all
> sorts of ways.
>
> The problem is that the call-site does not respect the regular calling
> convention, so calling a regular C function is just asking for trouble,
> which is why it ended up being asm, then we fully control the calling
> convention.

Ack. The problem here is that we can't declare an extern static
function in C. How would you feel about making int3_magic a global
instead to match the C declaration?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKuevfuVbKZPtLrFacXZLk%2BVtbFgebbyLeK8Xxe7Z3YmwQA%40mail.gmail.com.
