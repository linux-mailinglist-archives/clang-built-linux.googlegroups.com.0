Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBVON6D3QKGQEFDSOYYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id F23F0210388
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 08:01:57 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id o12sf19661090wrj.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 23:01:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593583317; cv=pass;
        d=google.com; s=arc-20160816;
        b=ATO1mzvokzAYNlRI3aqw7JitnO9Kk8ksNJQyxngZsMWTjL97zSZuJfNqbgr09JCZcc
         2CnY81c0mzbJnX7hUK7EXFYqaKEB+m8fqj+2aiiUjF3yFFwhf/ReosL0OW//f/DXu9Mf
         7OJZGQ8yEUBNDWBChQxhWlKEX/NiRFM5CXRrAwlsoLR1nq+kCcS7wzBIGbidtEQI21EZ
         FYvhLqKeTpw8XWYw6n2PjgaVQDB5dG1QApZGKZLy5cALIe2/7uWrqdfNtrDt0QyxGcTT
         qmjFsH8il4IG+MwbjYnIrK3B99IzwWhCNWUrGh4vLgRL7xv1tYjYTKkgf7gemoWmJ6G6
         soGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=952+Qq1UNCg4Kz+J3N4851QCrbRqegVhktb+UMuWKTs=;
        b=LXEbOUHZGtHaIQ6bGq3agmGdKkc8SaBZ38v7xM5tokLYgyalC4cZu5O2Y8ZVTs/A2s
         wJ3L0FOg/T7pD4K8ZjqxAVbS0EzNdPKoXEXoBZCo6pC2hFobmN59PXpSc3xq9oly9JJJ
         HDT2VuOiU8siPH5zEIxZi3caDf7/yGETwB0sz8ki5GthmQTwCE2vmffGPh1+bNOKzKwy
         oaUMu54luHYglKGV6BruBZk1awT8Cln+If0siedtk9OnrTLdTgE+dfcbxqC2B+fSYUwp
         dhTZGNJNRSFj0whvSgiRzUuccBmYZ/gXW9HmW9CtyhYH7zL5QOaLN6QsV2HeYc/lI/4y
         drfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2BEBkT6;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=952+Qq1UNCg4Kz+J3N4851QCrbRqegVhktb+UMuWKTs=;
        b=J4RVUpsvGktdAS/aDkmKtBUWwPDYshIBE/oAZdstJv5VY0D62t7wqFGdsuoaxsuWKV
         zeuQ04Cip9MQlJefLOmTl6Qy5aOoQPxnWiB2kU+Wt3pEellJ2XqwLjEB0Zo5Py44TIMy
         cJyrnMQi3d5kEvO05xnYiF70yFhkzvOLe+fXFjtfaTuBfXPaXZK7guHb3O5tn0ZHy9av
         ZavBxUqA7EWpAJ5P5g6rONEpdgK1390JbH6426pXqB0SQxw2y+eX12UwQQHZTPrLFXNr
         RfpYRJ9XoAGjnAeB1AIjwjl8DxYIJUnN8SxROyUbMwt4shhBq29MItVnzOX7U22+U/OJ
         Ry4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=952+Qq1UNCg4Kz+J3N4851QCrbRqegVhktb+UMuWKTs=;
        b=faOSYO6acmO9a3863HORmk0/SSJRW6Ih/wN4s+W4aSjIjNW9H+ZzXBDQsYnaTaYGWs
         YhehuxEzkc5fiklecLbt+QUkH+UuITV9zAhhVXZm5OZvBM3ksZ71CMBUU8h3aifoRz6P
         T1/MvGedyUxJ2sw9jJQmISYay9oEo6vMQbU7tFFsJPCqq8ekqq56awyVPbkm4wVp0OB2
         sCGh7NGw6ZJ3K5McSmynixw/mb7CWftRYSzMmdX5sG+/qIAVZab4Mx9SQByYlwPvLm7S
         8AhTh4rN/TZAT8sVjYsCrK69H0OPrmsvANnPaNUo3CY0/Pa2iusrO62ZBo103ASJMs6q
         7Exw==
X-Gm-Message-State: AOAM531yHDqYaWLR2hkDMudpbpnM83pBQzZ5PfXs1QTS/aEZjUoVHS4F
	MBcs9wImJEM78691lC2LpcM=
X-Google-Smtp-Source: ABdhPJzzBNoj+XU83zXXXBSciMpPrvKk/QHnei1X0+nrykZqXpyNdZg6hQZZldC8gzHtltwcOK/Qkg==
X-Received: by 2002:a7b:ce14:: with SMTP id m20mr26803823wmc.129.1593583317694;
        Tue, 30 Jun 2020 23:01:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:6507:: with SMTP id x7ls1731264wru.0.gmail; Tue, 30 Jun
 2020 23:01:57 -0700 (PDT)
X-Received: by 2002:adf:fa81:: with SMTP id h1mr25270388wrr.266.1593583317051;
        Tue, 30 Jun 2020 23:01:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593583317; cv=none;
        d=google.com; s=arc-20160816;
        b=lEOYxah5zhzeqVJb5eZS78tyagdiKhEE1BDEpC5tAgwzofPerfZqMe3IQ6DqYkrl15
         FCr1GCK1MA2CTS9omG2ILRZobhU4f/SWijRCjVZ5n0ZA5dkOT2QdhsMm3YXA/mGrq6SC
         ATLclj24BxHEYGIDjQophRa8dzkXAmeNvkQyCERpyRAuBTpP64u8vFc5P1MkhxV2oyc7
         ui+34hE4aJO2PvAoBUKFtJ1BB2xW+zPOj+SmP5b19/dL8KCwxPsy/PMnnUiHic2zHAtN
         VV6T+RyVcY6inFyijdine8f0nBTvgEV8umixwbWRIBASD0ux4/6+3KJtjE3oY69mgMrG
         ditw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jYGdmK8Hzy+XdCP9J+mTabkdqEvz+CIYMp3kTcsPvHQ=;
        b=pI/FdLWnslzjaA1Lp1OA4eYsTyxbTNlHS/gXXcvoBiiKwphsjlIBSUBKixpLanA1OI
         +mIbcj979JGs9q8a4IQoeNwK0n2YQ3gtPEhKzA3j+XvONGmmdD/zB+37HQ6khoDumEaj
         yWPxcZbcsF25tqE9q73pTJrAbiM59oe80wzGqH00eZEqSAUZVSsTMy6yuiUXOm6RT9Lx
         hEM889LV/0EdvvSx9GDX9zz1ksRjIc6BWgCWE9KnFa/8wIg1KwCVWkYqNBIgCIYGLaLN
         OLGYuTiENXs4+ibzKQR37LK4bEbyxb+xBpKS5fpqtobZB7vD0IzRlNp7yu7hu0larN9H
         kHIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=G2BEBkT6;
       spf=pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q12si226542wrw.4.2020.06.30.23.01.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 23:01:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id a6so22501540wrm.4
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 23:01:57 -0700 (PDT)
X-Received: by 2002:a5d:540d:: with SMTP id g13mr23153721wrv.380.1593583316491;
        Tue, 30 Jun 2020 23:01:56 -0700 (PDT)
Received: from elver.google.com ([100.105.32.75])
        by smtp.gmail.com with ESMTPSA id v66sm6100197wme.13.2020.06.30.23.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 23:01:55 -0700 (PDT)
Date: Wed, 1 Jul 2020 08:01:50 +0200
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	x86@kernel.org, linux-efi@vger.kernel.org,
	Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
	paulmck@kernel.org
Subject: Re: [PATCH 1/2] kbuild: remove cc-option test of -fno-stack-protector
Message-ID: <20200701060150.GA1181113@elver.google.com>
References: <20200626185913.92890-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200626185913.92890-1-masahiroy@kernel.org>
User-Agent: Mutt/1.13.2 (2019-12-18)
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=G2BEBkT6;       spf=pass
 (google.com: domain of elver@google.com designates 2a00:1450:4864:20::443 as
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

On Sat, Jun 27, 2020 at 03:59AM +0900, Masahiro Yamada wrote:
> Some Makefiles already pass -fno-stack-protector unconditionally.
> For example, arch/arm64/kernel/vdso/Makefile, arch/x86/xen/Makefile.
> No problem report so far about hard-coding this option. So, we can
> assume all supported compilers know -fno-stack-protector.
> 
> GCC 4.8 and Clang support this option (https://godbolt.org/z/_HDGzN)
> 
> Get rid of cc-option from -fno-stack-protector.
> 
> Remove CONFIG_CC_HAS_STACKPROTECTOR_NONE, which should always be 'y'.
> 
> Note:
> arch/mips/vdso/Makefile adds -fno-stack-protector twice, first
> unconditionally, and second conditionally. I removed the second one.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
>  Documentation/kbuild/kconfig-language.rst | 4 ++--
>  Makefile                                  | 2 +-
>  arch/Kconfig                              | 3 ---
>  arch/arm/boot/compressed/Makefile         | 3 +--
>  arch/mips/vdso/Makefile                   | 3 +--
>  arch/powerpc/kernel/Makefile              | 2 +-
>  arch/powerpc/platforms/powermac/Makefile  | 2 +-
>  arch/sparc/vdso/Makefile                  | 4 ++--
>  arch/um/Makefile                          | 3 +--
>  arch/x86/Makefile                         | 2 +-
>  arch/x86/boot/compressed/Makefile         | 2 +-
>  arch/x86/entry/vdso/Makefile              | 4 ++--
>  arch/x86/kernel/cpu/Makefile              | 3 +--
>  arch/x86/lib/Makefile                     | 2 +-
>  arch/x86/mm/Makefile                      | 7 +++----
>  arch/x86/power/Makefile                   | 3 +--
>  arch/x86/purgatory/Makefile               | 2 +-
>  arch/x86/um/vdso/Makefile                 | 2 +-
>  arch/x86/xen/Makefile                     | 5 ++---
>  drivers/firmware/efi/libstub/Makefile     | 2 +-
>  drivers/xen/Makefile                      | 3 +--
>  kernel/kcsan/Makefile                     | 3 +--

Is it possible that this patch drops the KCSAN portion? We have a patch
that is part of a series intended for 5.9 that also removes the
cc-option from -fno-stack-protector, but can't easily be dropped from
the surrounding series.

Please see: https://lkml.kernel.org/r/20200624190236.GA6603@paulmck-ThinkPad-P72

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200701060150.GA1181113%40elver.google.com.
