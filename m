Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRNT4X3AKGQEDOSD4VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D87811EEBFE
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Jun 2020 22:29:58 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id k27sf3973436ook.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Jun 2020 13:29:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591302598; cv=pass;
        d=google.com; s=arc-20160816;
        b=MeWfXRBVmyOkn3o1NqB1O3DJho8v/UkrIgD+3FVYL3o77fXFKyTgH5kKpJcjCGc4kt
         HAO/pHVCYBnXtQ7G1eLPVTpt7TeF3K/+f2L2jpZyJlU1zA/EujztkbM5pSskomSVz++p
         sxXnc+M08f/YM1LxFuLQj4Rs4UJ8mEeICxUeOBHepuNDOjYDIRZ1SMvDI80Qy+Ocw4+E
         R/qgZm3PYCS8Tq3QXAcdIgFVxad9MY5nKWXr6PKFknyragqPshpimgG7wRwSuV/0JrKJ
         dILAaPdJDbymdhfhUrEz7E1ATtd3+iudcuz5LH5j5WJq7NINGWks334V9xJTzBVT1M6p
         db/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=i34QNazkAaLKaLkkm4w4FICU1UgZEwrF/CAjJJRQ3Fw=;
        b=j97YUoxTnSp8BleO7w8hdvMLW8x+1SNKjBNRb5oVXBZ17wPnSqWyvLk4ye+PYxJHFe
         Qh/AyJwOMvgxz18mOZfFoD8q5QWNn791Zx9eBvbTrB6JlgqKHxpMaVMUW3pQsJpwe/SP
         9EsgmjDOcm8chkh83cLRC88e/DfIpHEzMMjCbMTZ/8ammcNVBfyqnLA6i66Qu65Y8gNG
         XxPTsgUZloFXxIFRFA9UbFJ2eZ8jR0BkpZ2DJzolRIIDuEObUtfAGT0KCly5gZ3r3xQQ
         7moRN3hLvEDMsTi7ylJHBAKHRm+X64x/KaRAUDATZWnIvsVzKlmgJ/YN0uo6Dc/LAa84
         ivuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N9f0DBz1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i34QNazkAaLKaLkkm4w4FICU1UgZEwrF/CAjJJRQ3Fw=;
        b=J6DKa5ctgiKFsQ55hi/ECiSuiOU/1srmsk9Bpm0+/UD8Db9Uql9dAajnb1I+0xgRDx
         8cPDM9jsLC1UuIknCqGfzlmeJfuOXLmgP8NtHDL3tKF2dJiOR3qpuMl0W9qrmIRaNbGA
         akOImCaXPfHjkbyP8CIh3snHxJarBvoMzs8ZH2PIe8+77ErbuaW9cjV2iY9Ba/HINM3B
         D5aGUqdVnkdnAOA3Uvg0Su5q+Fia4PYn9kKgQ+cQcCDwgixuqSKBbpbfrjcEjd4C101c
         w21+FpxobFXGJ1hJJij4Fpm/OuOhyiJTIn2mdC1coXS4610nJyGkzBb96ZN+q8k7W7qt
         rSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i34QNazkAaLKaLkkm4w4FICU1UgZEwrF/CAjJJRQ3Fw=;
        b=EL3kobxlWO2KwXJIGf/zsySce66p7UxxZa2V+XjhQhsExJfCJEKxB8H1Yz5LrIrbRE
         ncArbiD/sX7mMOZ5IXZciA2lvFWP1nYiiQItipwMszxlP35TXsJcmK5TXZ2xpvx5CKWH
         Jq4C25imqryh1eXMoviZJv0sK9oRBjaIoaQOUpC7+gKt0vgkc5RpkQEDh+DP7kePw5NJ
         PxgqvFaEKZ4C3Hy0cwl3Boy2/A526FOQ9t000LnnpqkkGTHftSXcNbhjXSbptk09V8uj
         PYl+SnD2yfgWSG7PmPxWu1s3QJ0LPYE59YsrLmDHGqWet6vvI1VsnJBF4l0sF37snFfl
         3lMg==
X-Gm-Message-State: AOAM532ydgsUR8Op/b1PtlqOaJdZWnWvAp9p7D74/0pfytQinZ+nI5s8
	StHWetaw3vqQxKAdWBBDlmY=
X-Google-Smtp-Source: ABdhPJwBrSWVvkXiOJlPXg9h8BHTkMji70QExaG16SuIwpL8CCCfBc7WqnB34c68H6fQhCBDCvDVWQ==
X-Received: by 2002:a9d:3ee4:: with SMTP id b91mr3813505otc.313.1591302597818;
        Thu, 04 Jun 2020 13:29:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3987:: with SMTP id y7ls1571413otb.11.gmail; Thu, 04 Jun
 2020 13:29:57 -0700 (PDT)
X-Received: by 2002:a9d:86c:: with SMTP id 99mr5089124oty.44.1591302597025;
        Thu, 04 Jun 2020 13:29:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591302597; cv=none;
        d=google.com; s=arc-20160816;
        b=MWTAavALNxEpCPSSZZVqo6azMpUrXkAvVdBPsSY5QXLMWmqYSBA9Ic0Kw00ejKy9nq
         DUY/fwBqqNAbenLffDMGXuvGuC5G0QKDLOzanvGYQ7pwvpoNWV8NOYjHSJWTRFBxZpiv
         n2c9fWy5yRVrJ55vRGegjGln4WliPQMCK/2XsLTXpP22s4rwlH3iZaSjjyKoL4nUWUCw
         OZeheH9MTbPPzGESRR2/gBFNjsR7jgAacO4bJt0+vwzuCFivViiOsICAPsVqS+H9I1Kn
         wSXfV+aiVMrOahg0MZAQrYpLOEVrJkj2bQIdGLgBT2c8tHZygyYvhwmF+lYoDIlej3l8
         a2Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bnsaMm5xHsmGTKM8crY5633RBfnrE452zASAiUrFU6c=;
        b=yD/Rvl04ke+ix7MoM0oEghf+trzMSVufXXEh03lpG8L11NQHpmZXIo5NuA0INtdTkF
         fDpfkzOWBCDZjaeexXp8ZRoIuZOOy+kGyhmDuPEhwR2a3MXqwFlYIyNLq9eJoxDvP/j8
         +KvRrRjjTW4cFjMIRSntqw22eqbR4kpcZKdlcSV0+PUxxWnRNUv3l6deE19C5ss6mWqu
         uxnP6UTBGcMDJxUfl9ida2LWaSqYn2jObxM1emegdiPbuw6ncGUhxph9y9f2WiufzzMF
         7T7Ybwf1p2dqNpR36pEsUy64uxjhCa+RGMYZh3Xloyn05LTpjgwXwy9q7P8RoeHw3Sl4
         6lfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=N9f0DBz1;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i16si236524otf.1.2020.06.04.13.29.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jun 2020 13:29:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id x22so3804328pfn.3
        for <clang-built-linux@googlegroups.com>; Thu, 04 Jun 2020 13:29:56 -0700 (PDT)
X-Received: by 2002:a63:f00d:: with SMTP id k13mr6286936pgh.263.1591302596138;
 Thu, 04 Jun 2020 13:29:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200603233203.1695403-1-keescook@chromium.org>
 <20200603233203.1695403-6-keescook@chromium.org> <CAKwvOdm5zDide5RuppY_jG=r46=UMdVJBrkBqD5x=dOMTG9cZg@mail.gmail.com>
 <202006041318.B0EA9059C7@keescook>
In-Reply-To: <202006041318.B0EA9059C7@keescook>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Jun 2020 13:29:44 -0700
Message-ID: <CAKwvOdk3Wc1gC0UMsFZsZqQ8n_bkPjNAJo5u3nfcyXcBaZCMHw@mail.gmail.com>
Subject: Re: [PATCH 05/10] ide: Remove uninitialized_var() usage
To: Kees Cook <keescook@chromium.org>
Cc: LKML <linux-kernel@vger.kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Alexander Potapenko <glider@google.com>, 
	Joe Perches <joe@perches.com>, Andy Whitcroft <apw@canonical.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, drbd-dev@lists.linbit.com, linux-block@vger.kernel.org, 
	b43-dev@lists.infradead.org, Network Development <netdev@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, linux-ide@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-spi@vger.kernel.org, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Saravana Kannan <saravanak@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=N9f0DBz1;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Jun 4, 2020 at 1:20 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Jun 04, 2020 at 12:29:17PM -0700, Nick Desaulniers wrote:
> > On Wed, Jun 3, 2020 at 4:32 PM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > Using uninitialized_var() is dangerous as it papers over real bugs[1]
> > > (or can in the future), and suppresses unrelated compiler warnings (e.g.
> > > "unused variable"). If the compiler thinks it is uninitialized, either
> > > simply initialize the variable or make compiler changes. As a precursor
> > > to removing[2] this[3] macro[4], just remove this variable since it was
> > > actually unused:
> > >
> > > drivers/ide/ide-taskfile.c:232:34: warning: unused variable 'flags' [-Wunused-variable]
> > >         unsigned long uninitialized_var(flags);
> > >                                         ^
> > >
> > > [1] https://lore.kernel.org/lkml/20200603174714.192027-1-glider@google.com/
> > > [2] https://lore.kernel.org/lkml/CA+55aFw+Vbj0i=1TGqCR5vQkCzWJ0QxK6CernOU6eedsudAixw@mail.gmail.com/
> > > [3] https://lore.kernel.org/lkml/CA+55aFwgbgqhbp1fkxvRKEpzyR5J8n1vKT1VZdz9knmPuXhOeg@mail.gmail.com/
> > > [4] https://lore.kernel.org/lkml/CA+55aFz2500WfbKXAx8s67wrm9=yVJu65TpLgN_ybYNv0VEOKA@mail.gmail.com/
> > >
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Thanks for the reviews!
>
> > Fixes ce1e518190ea ("ide: don't disable interrupts during kmap_atomic()")
>
> I originally avoided adding Fixes tags because I didn't want these
> changes backported into a -stable without -Wmaybe-uninitialized
> disabled, but in these cases (variable removal), that actually does make
> sense. Thanks!

Saravana showed me a cool trick for quickly finding commits that
removed a particular identifier that I find faster than `git blame` or
vim-fugitive for the purpose of Fixes tags:
$ git log -S <string> <file>
I've added it to our wiki:
https://github.com/ClangBuiltLinux/linux/wiki/Command-line-tips-and-tricks#for-finding-which-commit-may-have-removed-a-string-try.
I should update the first tip; what was your suggestion for
constraining the search to the current remote?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk3Wc1gC0UMsFZsZqQ8n_bkPjNAJo5u3nfcyXcBaZCMHw%40mail.gmail.com.
