Return-Path: <clang-built-linux+bncBC7OBJGL2MHBB4XUWWCQMGQEDUQTLFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 51482390C34
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 00:30:11 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id y191-20020a6bc8c80000b02904313407018fsf31786892iof.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 15:30:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621981810; cv=pass;
        d=google.com; s=arc-20160816;
        b=qQCY8rvGTYk95QVtJQehKKvFpGaojbUOVFJXfo3XtG9vjk2K4wZt00VGG8h2ZzQdgu
         boc8UClbKTdlaXnb9LoTz8XWYWsoCh8/2vXhoep/IF2mhSMcJTv6LEbaIuiGHtv6xQVH
         CnDaSP3+TrFOPijOTHKD3JpiTfK7318CLtWHI9P0oUqJV5Rs/YiiUyguvVUQO2dPtoK5
         H3OkDfZBRO6SHiIGAoalTtBchP3YUO4iEc3PkUs9+8a8F11MiyYgNCEK3K3WzsScHkGa
         kKs8yXPztf3ro7KkVW2hmw852KAS3jQCy361zbwBMmHAg/is82JLKhzB6Zh/SMYrp6dJ
         Qvzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XfhZs8Phs2hYAR04dSuK8ERyKLvrVVpMaHElOnF62X8=;
        b=s+wGtxKMSzeHunRu8SIFRlQEquWWUuiMCoctNV6u/aeSc1RbE716pBXlF1rlWo2jan
         x9cpg1Tqr4tzPThp5D4DQ85z8dVRBXSUNUz0g1DHa2e8TQTzcbH9kEWG4/iwpJhLOxig
         pHAtsQLH42D+mRv64dwdwSzyY+jwpq3Y6pWxRfd+/O/0xVSvG3sXxfTmZBNdyEW3W/5Z
         qlUMEzD5EipDQeaqjiBPBpHQgPjfsISZSyvZCKsmAMETv3sntfxEFrDi4EfIuw4iiDzP
         YB+oa7OV7HffSlooD+dNCy1br5FcEuISl5BjASx6A+Q59cybSKrOc3H+lekar+28a42M
         aBjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ABiL69p7;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XfhZs8Phs2hYAR04dSuK8ERyKLvrVVpMaHElOnF62X8=;
        b=DWOef+I5rvXl/XNzMkllX3Y2IEUX8soY5vBo1EfYxmgJEGXzxz/wJPfEf4OUZ2faUl
         cGxBxk1SMe+lSND97W+JD2ElZY7O52b+gBlOwV+DYbSzIaha6YevLYs1SwxSdaX7hrIT
         7kWVb1r6aas98CzvBT2YKcp34OSCoxykdLCJDKwWlWV1E94BBh31hPxFmPjTK0/TKSC8
         XtpABcjUrRT1OfnyBYNHrnCEUuTX/g+7eABlCKf+uceN4ADg/8FSUKMG3EjQUd8ke2Yq
         I9Ji/FsgVJY1nJZO/1xukgVRZML5tlLXPZW8DooPuu4/YHc3538I2GXZaUsMqbXXe602
         i4rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XfhZs8Phs2hYAR04dSuK8ERyKLvrVVpMaHElOnF62X8=;
        b=ik82VZeHVMEUJntY8IT3mT23jmmVxTTc1eGd7Q4Wkf/Gm1nG32SuCWX6H04o6kmUvM
         6hYFABic2uqe/ZFk2bzfIFcwP+g5GKboQkQN/sjESBCN6a/IOhTogrJ9rqcT4M6rpr5X
         gDt0PqnQjh0hhCzwgvgqDJ8oHpZ+fhLUQ+rbT75ODrkgcxI1tBriFWexu8R9DezEr8e6
         YRuSubmBfNR2AdmEN9GUL5v9c3XUvO+d5IB05LZ7Ih80/z2eSAJlSfY1AzOWpJ8M3yPw
         O5yktl99Df048xM9ZAvZKxhtLYvtAS/5nZ56U6Qfkvizw4Z6Q7mbKnjzg4SvT/RIG/VN
         CuwA==
X-Gm-Message-State: AOAM533V6e5zrAXK/HDVg+hW/ymvdjmgk8wPUoT6EW9ZVnQt7lxR6mU7
	IqLXbtbwYbwDrDe28dEwEJA=
X-Google-Smtp-Source: ABdhPJzYCza0pvfHOUHh+2KgG+B4CmbUN3vtdp/WYUZlJyEk2mdVDc4+3Qj1/towfoybVDZkRo5Vag==
X-Received: by 2002:a6b:f60e:: with SMTP id n14mr23697142ioh.179.1621981810334;
        Tue, 25 May 2021 15:30:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:a90d:: with SMTP id n13ls1720131jam.7.gmail; Tue, 25 May
 2021 15:30:10 -0700 (PDT)
X-Received: by 2002:a05:6638:2728:: with SMTP id m40mr34597097jav.55.1621981809982;
        Tue, 25 May 2021 15:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621981809; cv=none;
        d=google.com; s=arc-20160816;
        b=nobcqYYC6Vv/y+J2t4xx1Q+Rzm3gnUuJqBtjt0rARjPI3esNNlVFwjy/Kdb1fiCOLN
         vKV8WGjohbvNuUgi6uBuR9TYr/oQ3niyXLn9p1swZXd/gSUqBWHwjj0i9moBU/mO7Q7E
         iKABkC7sLO17XxnEzneSLqy7KWqO8htDL1PoahFJ6ZUOqXiLR30p3E30mKZNceCZD/tK
         60qNosSKskZkclE4PE06u/JcqNyycBQ19Wa/xnB5zWOXVlQIYclj4SaaXW7Zqm/uWPfn
         c768JbtzE6Akc79CG0KC50i3rjpOXcXwpT7lB5M4ZW7rnN/lplqJT5Q1ebUTF+h4fvEO
         oUBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=YRai1FABwcG3qj1sZ1sAYvilNEmlVeCZF91PHh6OwVY=;
        b=CDU3Wg6JHtP79kXpuOJxPTPASjJACmOs7biuHAENtCaXhjPkUTLfzT7CzMQGXfFzT2
         OB5IsIj2pHy40Te0c+e+Mvelpyz6uVH1pVbRBvoD3JdGCZ5N2BfJta/w1sghVWm8WtSn
         xQlF0XfQJ62rnRTVAredGe0pRoJqpap3KxCOY/9K8SccoQ8+6fn1H1SDLFLlA+yPiB9o
         i5xUHKO+HiXuA0UfZnaGogxF89uzc3COwtbHqaXSQZ1+0a7JWl7qFIBGNo8tguLDqG7C
         mnnKywAqLt1pvBsrl6oy+hlMKcGQ8Sl1AM88yIHS0TVGWRzY0kZvEQxZRBmtpGzTMNof
         NVsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ABiL69p7;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com. [2607:f8b0:4864:20::236])
        by gmr-mx.google.com with ESMTPS id l7si1945393ilg.1.2021.05.25.15.30.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 15:30:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as permitted sender) client-ip=2607:f8b0:4864:20::236;
Received: by mail-oi1-x236.google.com with SMTP id w127so27966082oig.12
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 15:30:09 -0700 (PDT)
X-Received: by 2002:a05:6808:144f:: with SMTP id x15mr15631888oiv.172.1621981809478;
 Tue, 25 May 2021 15:30:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210525175819.699786-1-elver@google.com> <202105260629.X6n5yc4D-lkp@intel.com>
In-Reply-To: <202105260629.X6n5yc4D-lkp@intel.com>
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 May 2021 00:29:58 +0200
Message-ID: <CANpmjNMT=HQQpK9U4bnoGb-=+KJC246dSZ3u2VB0TXw4itsB-w@mail.gmail.com>
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ABiL69p7;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::236 as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

On Wed, 26 May 2021 at 00:23, kernel test robot <lkp@intel.com> wrote:
[...]
> [auto build test WARNING on linux/master]
> [also build test WARNING on kees/for-next/pstore linus/master v5.13-rc3 next-20210525]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Marco-Elver/kcov-add-__no_sanitize_coverage-to-fix-noinstr-for-all-architectures/20210526-020046
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git dd860052c99b1e088352bdd4fb7aef46f8d2ef47
> config: s390-randconfig-r002-20210525 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 99155e913e9bad5f7f8a247f8bb3a3ff3da74af1)

^^^ you're using a Clang pre-release, breakages are expected until
Clang 13 is final.

I think there was a thread about this at some point. I guess LKP has
decided that testing Clang pre-releases is fair game? I guess it's
useful, but this warning here needs to be ignored. It'll go away when
you rebuild your pre-release Clang 13 from the latest LLVM main
branch.

[...]
> >> arch/s390/kernel/nmi.c:182:6: warning: unknown sanitizer 'coverage' ignored [-Wunknown-sanitizers]
>    void noinstr s390_handle_mcck(void)
>         ^
>    include/linux/compiler_types.h:213:35: note: expanded from macro 'noinstr'
>            __no_kcsan __no_sanitize_address __no_sanitize_coverage
>                                             ^
>    include/linux/compiler-clang.h:49:59: note: expanded from macro '__no_sanitize_coverage'
>    #define __no_sanitize_coverage __attribute__((no_sanitize("coverage")))
>                                                              ^

Clang 13 will support the attribute, but this is a pre-release Clang
13 -- so please ignore the report. FWIW, I tested my patch of course
with a version of Clang 13 that supports the attribute. :-)

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNMT%3DHQQpK9U4bnoGb-%3D%2BKJC246dSZ3u2VB0TXw4itsB-w%40mail.gmail.com.
