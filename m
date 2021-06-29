Return-Path: <clang-built-linux+bncBCB2L3NMXACBBXNQ5WDAMGQE66RU5DI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC213B7739
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 19:29:02 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id p19-20020a5d8b930000b02904a03acf5d82sf16658081iol.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 10:29:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624987741; cv=pass;
        d=google.com; s=arc-20160816;
        b=W2w5sFgR1JpYc/0vgeHlE1v3LKBC0o1s2q2kIlbzye8SnpZMgqzKZTwgSDh7RfE4Li
         OmVEeh77rt7rONLVtyiM4VjhbySPgoEaxIAvm9HXJ17104MogIGipx9+J7us5LLRITcl
         /7mBt5adVTk1LWaQB5pa2n0N5RdtymlDP82BxzMH3M6Y+wLKEeyd1ECdpFhN5dcF+Q6a
         +943ySMdQ83rS+0rR/RpkEnQBATOf927hAdgQNpr5xJfJUNyWL0TFXRQYn2ne7MXh3zB
         dCZQrvAVXlP4Dbx5o9kGkt0zC3bzx0S1fKsRbN9v5vbqsLu8gEyrAgLSxe/datpj8ku0
         xbvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=G3VPHOMDPS+qVuuEh7c3Z+razG0z6QvnxOOeeX1YBzc=;
        b=bXw8b4qfy1T1MBV244GOsrDQn8GYGioMwjTflnlZRwxBQH0C1EG0aQ7pnNq57aaO5B
         IETqvSjY1zPyN5M0nsqGReceHpywdksRWpi0za0T8Y9HxbM1Mkow2f8xTnja2U5lCCbh
         vbhjv4Q9SXg91kV3Y7TMtBV2fSURTUyAc69kTTLCDBsPJXtT5qwoKizE9tJ8S15AZMib
         oj75Csu4QFRhCTMty6mnsEfsvIoqtOHxn5jQQPuLUfDSmT/HASAajl2HDKmLApYcxRQn
         1y3o+BY2Er1fKW7w0fu16gu8RKMhKzDRs8OOBqkd6PmIEsnb9/GxhFHGN+iNKhyAJdN3
         jc2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WRvcY0hG;
       spf=pass (google.com: domain of jmattson@google.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=jmattson@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G3VPHOMDPS+qVuuEh7c3Z+razG0z6QvnxOOeeX1YBzc=;
        b=SEQpwMCb4g4TVelgHhV/GqnkWHKZAjbcMSF2/9+cMfdColXpYHLyDWnLc3ImUKfPj6
         cdRdZFlQ1ow7b6tosnTsmV2bwF0C9wrKBzVmPpZ7fVvdax6dI6GKf6sMmAJPHTx/ubNa
         yhdvrbqSICNBzEg9UczlfXDxVgmb0ttQobaOZXgsNygeCDUltXO445kS5vnTv5q/rE8N
         /u2Kn2KPU/Grz3J8NiaL1tJSQmytTZRJF+tj5mBPiH+ZtQnXzIKesMzs3pHkaqAyY9c+
         cCWS2bInGohdyuK67+UuOWgsoouaRrjQGxbL1tETmcw1FKwwUlk4+jWB75VxbZkTcQM4
         CkPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G3VPHOMDPS+qVuuEh7c3Z+razG0z6QvnxOOeeX1YBzc=;
        b=R7GVtz0GsR1hZHB5ro8FSMMA2qgKUORdi1R/5T3WI/afheNw9vo/9K9o4Hd8vQgE51
         xSN4YIxwktotAopt1z9xItp9uD3ekdSREi6W73hrTIbbw832P2NNg/qGu2Iw/kI+JeFn
         30UZTJC51HrcrM2MJC9D/2cMQrDlq6iYVrlrrQiBmqgmF5G1xCbLMpbb6UhCtbmAmAoH
         O9o158sFYz8FlcYby/KaaqOWs826lQUJIKoAQAU8XI/Oq+0pXDwhHfFBdl/rYQ2u1eGw
         lYwxMakkckjWHiCs+X7eMutTldUZF3jgVLfDCVV6/x9MaY8x1I1wyF2Ba8r3sFbGv3hP
         ciGw==
X-Gm-Message-State: AOAM532309MyEOFNQp2eSO+DWqJZlBdeL4/qkp+Xvw1PxCEYJ1/osdk4
	F5auUzviTwWT99rDOI8fZNg=
X-Google-Smtp-Source: ABdhPJy8OayXSe6g6Lt7sux5rg3ZVnbRtDlP71pUG1hSCB/Ih9bc7I48AJ+jX41CMYs0Id88959fpg==
X-Received: by 2002:a05:6e02:80d:: with SMTP id u13mr20477197ilm.222.1624987741508;
        Tue, 29 Jun 2021 10:29:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:670d:: with SMTP id b13ls3007916ilc.0.gmail; Tue, 29 Jun
 2021 10:29:01 -0700 (PDT)
X-Received: by 2002:a05:6e02:bed:: with SMTP id d13mr21621754ilu.259.1624987741174;
        Tue, 29 Jun 2021 10:29:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624987741; cv=none;
        d=google.com; s=arc-20160816;
        b=qOgJwwW192OTU9i0+dJNP/RTDQqXDFNGMQAjxRxgLwCbeZe7QoG0F4W+27SahKqRfT
         XM+QUTAdJKLQ12HJAsTRYMGzctEns67LeHAmVh6+zTyioFZirlA5NFO9X/O9MOSHkyTI
         v/V3gcRk8/eLlttlDCppASIe7HMPoPap3p6MGPTKtU1MlG8Nv4IkXTyzIGjene0wABf6
         zxjSXrDJd1lAJoFhC3ZJ1ldWDZM9DP/k0NC6bvHKgzpMYWg2n+YpAnEmRQl3BYzFN2dE
         QbjvaHbiJMrCUip2/wXMW7eyrafm5D2+PdKKt8JT8W+ncxl2oGd/SwHP+DdD284a9RoR
         h9XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nM0hxmvD70FyKTgRduBIM3ouSrzzqdB4hs0/OpkgBsM=;
        b=pk85Eo9V442uKvbMU/gdiHHNTvGgkwuH2C+MUNmpkOdoiN25LsxbJWWHCf4I4b9NwK
         ew82lR03jnIL0b/wT+Uq2rZhAEcis7l6jvfAgLKDjPpJG3/z/nBKUVJsqZh5om0UDBop
         +4YuhFn7DkrKXDXScqXIfmE58CWZetIKDRUe76howq/rLt9ZAZZhV6DDg0xkZPYkmC04
         ifgvFt9TRPGkkLyoGzOqTHUGlL8E7N1MH/D+bb4mKPVT6Zrhof9g4zgwhmK7s0LG88l4
         IlegXqkGF2uW1WzGmhcR5Oft+FicVAV98zvM9ipffmzTmbiszrWxEOWHoBJuFD763zAa
         0g8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WRvcY0hG;
       spf=pass (google.com: domain of jmattson@google.com designates 2607:f8b0:4864:20::233 as permitted sender) smtp.mailfrom=jmattson@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com. [2607:f8b0:4864:20::233])
        by gmr-mx.google.com with ESMTPS id y14si271538ilj.1.2021.06.29.10.29.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jun 2021 10:29:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jmattson@google.com designates 2607:f8b0:4864:20::233 as permitted sender) client-ip=2607:f8b0:4864:20::233;
Received: by mail-oi1-x233.google.com with SMTP id h9so27143353oih.4
        for <clang-built-linux@googlegroups.com>; Tue, 29 Jun 2021 10:29:01 -0700 (PDT)
X-Received: by 2002:aca:1e07:: with SMTP id m7mr21785451oic.28.1624987740542;
 Tue, 29 Jun 2021 10:29:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210422005626.564163-1-ricarkol@google.com> <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
 <YIm7iWxggvoN9riz@google.com>
In-Reply-To: <YIm7iWxggvoN9riz@google.com>
From: "'Jim Mattson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 29 Jun 2021 10:28:46 -0700
Message-ID: <CALMp9eSfpdWF0OROsOqxohxMoFrrY=Gt7FYfB1_31D7no4JYLw@mail.gmail.com>
Subject: Re: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM selftests
To: Ricardo Koller <ricarkol@google.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>, kvm@vger.kernel.org, 
	Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	Sean Christopherson <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>, 
	Wanpeng Li <wanpengli@tencent.com>, Joerg Roedel <joro@8bytes.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jmattson@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WRvcY0hG;       spf=pass
 (google.com: domain of jmattson@google.com designates 2607:f8b0:4864:20::233
 as permitted sender) smtp.mailfrom=jmattson@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jim Mattson <jmattson@google.com>
Reply-To: Jim Mattson <jmattson@google.com>
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

On Wed, Apr 28, 2021 at 12:46 PM Ricardo Koller <ricarkol@google.com> wrote:
>
> On Thu, Apr 22, 2021 at 09:02:09AM +0200, Paolo Bonzini wrote:
> > On 22/04/21 02:56, Ricardo Koller wrote:
> > > The kernel has a set of utilities and definitions to deal with x86 cpu
> > > features.  The x86 KVM selftests don't use them, and instead have
> > > evolved to use differing and ad-hoc methods for checking features. The
> > > advantage of the kernel feature definitions is that they use a format
> > > that embeds the info needed to extract them from cpuid (function, index,
> > > and register to use).
> > >
> > > The first 3 patches massage the related cpuid header files in the kernel
> > > side, then copy them into tools/ so they can be included by selftests.
> > > The last 2 patches replace the tests checking for cpu features to use
> > > the definitions and utilities introduced from the kernel.
> >
> > I queued the first, but I am not sure about the rest.
> >
> > An alternative is to copy over the code from kvm-unit-tests which encodes
> > the leaf/subleaf/register/bit values into the X86_FEATURE_* value.  Sharing
> > code with kvm-unit-tests is probably simpler than adding #ifdef __KERNEL__
> > and keeping the headers in sync.
> >
> > Paolo
> >
>
> Thanks. I was thinking about kvm-unit-tests, but the issue is that it
> would also be a copy. And just like with kernel headers, it would be
> ideal to keep them in-sync. The advantage of the kernel headers is that
> it's much easier to check and fix diffs with them. On the other hand, as
> you say, there would not be any #ifdef stuff with kvm=unit-tests. Please
> let me know what you think.

I think the kvm-unit-tests implementation is superior to the kernel
implementation, but that's probably because I suggested it. Still, I
think there's an argument to be made that selftests, unlike
kvm-unit-tests, are part of the kernel distribution and should be
consistent with the kernel where possible.

Paolo?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALMp9eSfpdWF0OROsOqxohxMoFrrY%3DGt7FYfB1_31D7no4JYLw%40mail.gmail.com.
