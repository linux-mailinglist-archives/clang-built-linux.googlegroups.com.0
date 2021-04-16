Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAU75CBQMGQEQSSSD3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id F1231362B0F
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Apr 2021 00:28:19 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id f4-20020a1709026844b02900e90242e95esf11206995pln.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:28:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618612098; cv=pass;
        d=google.com; s=arc-20160816;
        b=q+fedlrEjlyp8txI2yj8gSAyEezCTY71lOix3Gp2J0aE7eM0IvuUzl4tL5bqVyrIEp
         ErvkJvwD4/ywzNr0o7j2QRlBAAmE5/UauYfvsTPbcQ0Fp0CMYvV2yAd84Fz6WXptBukI
         50619vHpKhpXZOIvfTqCckWQFFA1gO0EfJsnf4G6YNWYzaA4cFM/gwAQl4dpoun3/rfF
         eVhbtNhz8guMkIqsrdCHbiBfqKyA82cykbvPV8uABwcd8E35RCGCVTLpev+au1pcOZzD
         nOvAvivjK6LOhgDmHpOlMvSSgeOqThIzhPWyVbMiJ7uD1fhBQmGMNkL6D6Mt+o4jAR5I
         vuxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tlSNfsFdbsGbzkmAo5cPc0m2iVe/hhbV9++H6Pf9jqM=;
        b=tYi1gyxakrbDnfXSlFxjH+N892vODu/fqDTQA2wgVEVtEwpLQlRisZL4R+FmuSdeSy
         HYuuiBEDiPT+1BtBd9V+9CyLIcmLm1aVO0ikm/PqqX+KazeTG9CorXdNlTvDdm9WA1mj
         1Smdex8ofo7G54dKkjwGu4b3fqsaQJotUk5HHGAUluuhGRwMjwDImUgXvSGe3NJe+pVx
         v7om5Kb+mJaXFTX4l280xV9RH5N1wsvfIQlMzz6iypYz1cMgrCXFY2FfNrBVExk2vY0s
         YGOWOz7+XxkcjkwsUymnaA7+o+DkZGxn40v4xyX0nh9BSs5K+tkWd+bR5XqyDb9axvxz
         Nmiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=l57DSci8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tlSNfsFdbsGbzkmAo5cPc0m2iVe/hhbV9++H6Pf9jqM=;
        b=fd/+BXJ0r57NmmTabHGnL09xONSa9QfFSHJw49osUzWAAo9Jx9VKF5E/aEhh+QTRxu
         FTCVHjNAUgJS+XMSlP2Z/3W+SZZR3kkDXWuiQQ/vx7Xv2plmIIVnXJECak1adMi3scO7
         o7p7LMW6UAqLPRO9b8vA7XUb2Wv7ul7MJBhUX0/6gEHFZSPft9dmFFcmRqjJnf4XcFol
         ZNJYvTHHm6pG8xFhsVRXw0uylecf1iFfbd8ZU+6tlP/4k8Tiv0lm5deXv0DvvD7yWb6A
         C6ZipKnAcjS2gkF0SXkOA3IqGa4YBTrC8I7al2z4NFH3FufcZAUX2RV3q3JtR88wvecj
         4FIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tlSNfsFdbsGbzkmAo5cPc0m2iVe/hhbV9++H6Pf9jqM=;
        b=C+Q/5/L+DPkcTNxw134V3D0KMdXEpg8E27fj/K9uc+oxuKKfOSOvaiCLF6HvAiaz+m
         ra2rTS1lWWVN31Ihv16ce4zmxucmKGSILwwmLdDhwZsOzq36mQw7Pb38mbJNPOK6iQRJ
         sFvE65QRGJUIGctLVDAqd2csdvi+4a+Pe+tHvLlVgNUnh5hRErSb12OOZuXeE9H2qOv/
         PkN+MhQaQtIS20NMssIuJ05t08TsCzMlFRXcjh3uK748Tli12pANj8eMvw6NrkHNUBKb
         VMlzHeUG6M1C5zqIbxAHgOy/GnemSfzlXMsMimzOb16XIY078BPtjFE1pCVDYdBkauMC
         NMVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kaqnN4Dz0EV428ypOZuSlYGaVxoscTs/EKb4Ta6rs93oej0A6
	utqnFE0QIqp9xm5dG6370g0=
X-Google-Smtp-Source: ABdhPJzhe919ps3irx3c7/HsX8K69m5seSQl5+9gBXi7EAVmDVmeH7+39pYSv6BaYGJwGt/2VOT1rA==
X-Received: by 2002:a62:e90c:0:b029:203:90f:6f34 with SMTP id j12-20020a62e90c0000b0290203090f6f34mr9983267pfh.29.1618612098697;
        Fri, 16 Apr 2021 15:28:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:144:: with SMTP id 62ls5714506plb.11.gmail; Fri, 16
 Apr 2021 15:28:18 -0700 (PDT)
X-Received: by 2002:a17:90b:3b4e:: with SMTP id ot14mr11533579pjb.81.1618612098178;
        Fri, 16 Apr 2021 15:28:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618612098; cv=none;
        d=google.com; s=arc-20160816;
        b=Nt6wYKaCaWoeh8ND+nB8+ZBnWJzR1DSZA9blIM6E9YE+a7eROXBz9ClRPHahNhhNaT
         gqGzSoi7YdHqUfMKdlegsfhCBnTsqN7SXBqgGag2Otg2NKVf6T9xEIMkeTGghsP7bAw9
         aHOfusIY8QcjPMbcHGJqk0/UlLEbHVXGtJ7Hj479WQ601R0vzBlTI7YrTXCGpMEFIbgz
         LjqFw7+Q5aVOA6fPJVZGZP+Cja5R7LmcYhzig6SpIGCpPgCk5q4jiWRdcPMpDB8iOxGA
         2+byp0K+81C9XCi8tY7UO0a4L7Zy9bgrwwd31TyWq56JIprpUD5Z+BJUHyOjrSJP7L+c
         Qh+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vx07AciKHM2KmcmsePok7O1V53X9SAytSNn10SMyMJk=;
        b=1Cwb1I6ah10iUk+1R1KkucoW5zkRv1oZ1R1Awecn5YVxg8bigREKuOx7GHbkmKllV0
         33iHbyUtI0SRye754kBWd/OoS7nbfUKdx7YSI2Ce66cXXwu9muOHzj6h26Xf7pcqzgan
         jAWHzw6wl8/LmL6HyHxWhN/m9GpEe+Ju0o0/CCnI4DCnENDJ9hIqtFjZxD0CcSkdKmOy
         r8UKkhKv9O3m68x5008wzkAIdZ43QwFmKTEYtEMA9JJGs/OOC/ywxEZoFSj7gYh8TRQ+
         c1f3G7Y6tEBHJCuUl9aJ5LYJXucVEJ51fq+2QNmyxhUunNmlfS8CQ84dg4qTruduLJgb
         yqZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=l57DSci8;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id s16si336095pfu.4.2021.04.16.15.28.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Apr 2021 15:28:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id h20so14726308plr.4
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 15:28:18 -0700 (PDT)
X-Received: by 2002:a17:902:8604:b029:e6:60ad:6921 with SMTP id f4-20020a1709028604b02900e660ad6921mr11836011plo.15.1618612097925;
        Fri, 16 Apr 2021 15:28:17 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id x17sm1763643pjr.0.2021.04.16.15.28.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 15:28:17 -0700 (PDT)
Date: Fri, 16 Apr 2021 15:28:16 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@kernel.org>
Cc: Borislav Petkov <bp@alien8.de>, Sami Tolvanen <samitolvanen@google.com>,
	X86 ML <x86@kernel.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 05/15] x86: Implement function_nocfi
Message-ID: <202104161519.1D37B6D26@keescook>
References: <20210416203844.3803177-1-samitolvanen@google.com>
 <20210416203844.3803177-6-samitolvanen@google.com>
 <20210416211855.GD22348@zn.tnic>
 <CABCJKud8TvzhcjHCpsrtCJ4B50ZUfaL48F42EhZ2zWKLteAc0Q@mail.gmail.com>
 <20210416220251.GE22348@zn.tnic>
 <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALCETrVTtKqD6fonUmT_qr0HJ0X9TWzLGq-wpm+A7XKyjn3W5g@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=l57DSci8;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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

On Fri, Apr 16, 2021 at 03:06:17PM -0700, Andy Lutomirski wrote:
> On Fri, Apr 16, 2021 at 3:03 PM Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Apr 16, 2021 at 02:49:23PM -0700, Sami Tolvanen wrote:
> > > __nocfi only disables CFI checking in a function, the compiler still
> > > changes function addresses to point to the CFI jump table, which is
> > > why we need function_nocfi().
> >
> > So call it __func_addr() or get_function_addr() or so, so that at least
> > it is clear what this does.
> >
> 
> This seems backwards to me.  If I do:
> 
> extern void foo(some signature);
> 
> then I would, perhaps naively, expect foo to be the actual symbol that
> gets called

Yes.

> and for the ABI to be changed to do the CFI checks.

Uh, no? There's no ABI change -- indirect calls are changed to do the
checking.

> The
> foo symbol would point to whatever magic is needed.

No, the symbol points to the jump table entry. Direct calls get minimal
overhead and indirect calls can add the "is this function in the right
table" checking.

> I assume I'm
> missing something.

Further symbol vs address stuff is discussed here:
https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/commit/?h=for-next/cfi&id=ff301ceb5299551c3650d0e07ba879b766da4cc0

But note that this shouldn't turn into a discussion of "maybe Clang could
do CFI differently"; this is what Clang has.

https://clang.llvm.org/docs/ControlFlowIntegrity.html

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104161519.1D37B6D26%40keescook.
