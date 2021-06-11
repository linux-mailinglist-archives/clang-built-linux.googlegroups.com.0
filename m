Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFOUR2DAMGQEQOJPAXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9363A488F
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 20:23:18 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id c3-20020a37b3030000b02903ad0001a2e8sf340689qkf.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 11:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623435797; cv=pass;
        d=google.com; s=arc-20160816;
        b=ssKGyDrRhcJEm1Jkn0sI5MisN/xAS64KR+3gC/E8E0VMA80xLnip9x8pezZPE9H4NO
         1F9t2dd9fq1MOJVhhglrLQq9eS8KGNTlFZ5HCq8v/8L4D71Dh6VckNkOXUShSa4DvSpZ
         sgrxfcmLBUtQ1YYP39heDk66pwWRDIoNVUeN/7sOpi0hf7tPxKNWmNovlSSC2IjRKRGt
         snI8azEw4c7awiU8bkkOUtnDcO8n0hYUKSl+9jrrB/yXMaZW2PQho1HBjsN4D8nk0mcx
         JHronM0flhJ4r7s4exY/Jqm3+X0vDD1oNhwMEeEUL8tcMiEHfZFj/NeJz9sQjLW61fWp
         roLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=q1po170CStW6KOW/uLbKP/8zfYBCdojbOOBrFA3h9is=;
        b=rs/nS0MeBWYM8lkUqhfhTOCZ5ud5pSsp6tagFy59muTRDxvKOHrO51JTne7OdwUBcN
         kMb6a0cJTwfhzaQbdVhIAdgr+wXKLYrR8aYgPWlA3voy2rCZkTTPwlVXZWZhJ3Bud0Q2
         Ow3GcyX5lIPhrowuxG3JfUZ7bsZTvUVhYVZZrykv1ZkgVIXtWDJTH+/vJ4YLHk1VzbZh
         rgsyGenssfuLFCctjgvZII5bVBsdP24N7Iek+GorK2yH5KGU/ikV/WwXVENJkm7KYKJ0
         /Sf5jKk+INTyWCctqvqfkFkYwmX5scNThqXYGlLAGeAbvM68AHg7yzpN6hEypGsa2+qk
         DvEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BVIc2jhV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q1po170CStW6KOW/uLbKP/8zfYBCdojbOOBrFA3h9is=;
        b=QBh+ZiSFbQv49NkqH7t1P3+U+oHQS+23LuojEID4w9BwSOdrgM+0GCkuaLC2v4yONn
         8r3/kQN/sJgSx8eIhVeftt7cizAIBerwMrSSjZZoMqur3Fu+tc5csj6IHGrNl4cRMCBJ
         TiRuTUyQu6QLujSdlOCOUuZY80uioFIjAv+JitA/KFKxhid5Cg0rM0QFDH0HgT1CASoB
         wfAnh4gKkuZuDJpF7TmBlXLsf2lREBLSUK2DupAl90gBgOR6DgwJVvcA+mulTmApRP42
         NJ9WGJPqDRSxNnIGQuGLoyoc7RejOnQP2bMAB2JQr3j+w5+erZjfuZsehA8znpe0bk/C
         sDhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q1po170CStW6KOW/uLbKP/8zfYBCdojbOOBrFA3h9is=;
        b=X+RIQz9I8snYW5JQXIn/1DcS4YK2Z7csL6pOGu+X69KPFo8zWDDaKd6GR1jPYZS6Oz
         m+twGrhdm8sFXSQTkCUs7kXqcngiANX6mPsHuOEF6RU4HoM3AMU6uB3X/6ddBhv7pBg9
         fldBnTn4I5yPj7hdewZQnphtFNd+CiYkRB9AGeCQGyPOK3fIYaN5kVd06bK4exCnjjYt
         RiAXcZeFppxBmihpMY14b6M8E2cdhUoNjRJPrPwlnZW9MY3t10LatSPqPAU6Oi8BzNi7
         2WC9sCYiOhhR/kKkIXkOLrK0Wv9pDSOpthIZ9XVY+fJC9LzJ5ygekqX/kE2YRshzGYbx
         JUwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311SGAA8lzOVsDM/5YLj3VsAtkIf4JYojhHcMMMIjht9LsCHEvn
	ZQFpIyL/CCxdruEIqXOW2sk=
X-Google-Smtp-Source: ABdhPJwYvXD7iBldQKV/PR7FWee3Xe/xQrrGKdfp5FrbfCxNPUtFo+pdaGukHkZLsXojNJsVg1mBng==
X-Received: by 2002:ad4:5bc7:: with SMTP id t7mr6232620qvt.3.1623435797850;
        Fri, 11 Jun 2021 11:23:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e407:: with SMTP id q7ls5903906qkc.9.gmail; Fri, 11 Jun
 2021 11:23:17 -0700 (PDT)
X-Received: by 2002:a37:a115:: with SMTP id k21mr5121053qke.255.1623435797441;
        Fri, 11 Jun 2021 11:23:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623435797; cv=none;
        d=google.com; s=arc-20160816;
        b=h6P2tfvd2k1XtG1lh1ac1HmUn5oTv9Rs0k42t8Y1HxFvTqo/UVWYN7bMw4kuKdvEoc
         uVOzBzktC+Fp3nQVhDtPi3FN9V6X4f+n6gLl3BUTKpVvQ1q2N+ULl+Q47f1h8OQNAE1b
         1RlXWH4AvNxJRM8L6o00n4CGFUz+7w9d5AAMDWhEeDcANMdzVRgEgIB3RWZVC0bz98Ug
         DUiyvI+tVmCw4e0CYi7V4kUTnDnCJY0N01FfAk5+SKDa8HHlRiSRPv6UIJtYBYL0MEKa
         tds827/vvQGWKoUUDU2dM1NzSj5nv+HPpwtOkjjcNQTKrEYfXipO9m2BohevTCYEXLYk
         Oh6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=gPvk2gIqJbRWWZhdwlS/o0WDDqwCDh7fOG8Z0IBiq2E=;
        b=CV7zjn4QSKoAg/bmr0i2J0dT7ut/Au7+P5PH+5L/SG1XNmPjb8Q22EjlsPgJrpTayh
         DzjS9PkFKFvWBErTi5uXihW7pzJXDxKUWDk/DfUVK2xsqP5Ytk3WlAIFCW4oq4PstyVv
         I3vbWqYJleNBlNzCfBDdI0aXje9l95m8HzHMEL8T80ZMa/ARFluaB/0X7VFg31rV2zWS
         MBxupfLlIUS/Wz4tmAC1StRJ1X16NodGZSGNrs2ZYwAuuKfIKpByAnZGYBqLqkrwye7x
         XHEcOzOCbAd/TaHdbwcEiN08Hqx2jY1AFAvudnBfuxVxnP8i2v0yLTMBx+JJxdKP+T9Y
         75+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=BVIc2jhV;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id b12si783526qka.4.2021.06.11.11.23.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 11:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id fy24-20020a17090b0218b029016c5a59021fso6350597pjb.0
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 11:23:17 -0700 (PDT)
X-Received: by 2002:a17:902:8a98:b029:f9:36dc:37cd with SMTP id p24-20020a1709028a98b02900f936dc37cdmr4980036plo.68.1623435796718;
        Fri, 11 Jun 2021 11:23:16 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h12sm5739488pfh.9.2021.06.11.11.23.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 11:23:16 -0700 (PDT)
Date: Fri, 11 Jun 2021 11:23:15 -0700
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"tglx@linutronix.de" <tglx@linutronix.de>,
	Tor Vic <torvic9@mailbox.org>,
	"mingo@redhat.com" <mingo@redhat.com>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2 1/1] x86/Makefile: make -stack-alignment conditional
 on LLD < 13.0.0
Message-ID: <202106111123.20036BB@keescook>
References: <f2c018ee-5999-741e-58d4-e482d5246067@mailbox.org>
 <162336538453.1311648.12615336165738957417.b4-ty@chromium.org>
 <CAKwvOdmYVH-YpEVqdoBfvgNfcbzx71jU_27cuhuzTJ6_Emzi-g@mail.gmail.com>
 <202106101601.248F797@keescook>
 <CAKwvOdntX7iKNZWr1gfnR-N=11sg0CH7+EjzyaQg5t+Erc6qrA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdntX7iKNZWr1gfnR-N=11sg0CH7+EjzyaQg5t+Erc6qrA@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=BVIc2jhV;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102e
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jun 10, 2021 at 04:58:24PM -0700, Nick Desaulniers wrote:
> On Thu, Jun 10, 2021 at 4:47 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Thu, Jun 10, 2021 at 03:58:57PM -0700, Nick Desaulniers wrote:
> > > On Thu, Jun 10, 2021 at 3:50 PM Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > On Thu, 10 Jun 2021 20:58:06 +0000, Tor Vic wrote:
> > > > > Since LLVM commit 3787ee4, the '-stack-alignment' flag has been dropped
> > > > > [1], leading to the following error message when building a LTO kernel
> > > > > with Clang-13 and LLD-13:
> > > > >
> > > > >     ld.lld: error: -plugin-opt=-: ld.lld: Unknown command line argument
> > > > >     '-stack-alignment=8'.  Try 'ld.lld --help'
> > > > >     ld.lld: Did you mean '--stackrealign=8'?
> > > > >
> > > > > [...]
> > > >
> > > > Applied to for-next/clang/features, thanks!
> > > >
> > > > [1/1] x86/Makefile: make -stack-alignment conditional on LLD < 13.0.0
> > > >       https://git.kernel.org/kees/c/e6c00f0b33ad
> > >
> > > Can we get this into 5.13?
> >
> > What's the ETA on LLVM 13.0? I was going to put this in -next, marked
> > for stable, but we're about 3 weeks from 5.14 merge window.
> 
> Not soon; CI is red over this currently:
> mainline:
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/2796736763?check_suite_focus=true
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/2796736978?check_suite_focus=true
> linux-next:
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/2791754316?check_suite_focus=true
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/2791754426?check_suite_focus=true
> https://github.com/ClangBuiltLinux/continuous-integration2/runs/2792796551?check_suite_focus=true
> etc

Fair enough. Pull request sent to Linus...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106111123.20036BB%40keescook.
