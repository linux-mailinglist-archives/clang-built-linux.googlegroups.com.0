Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2422DZQKGQETR5427A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B565A18C43F
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 01:25:16 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id y20sf3271011ion.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 17:25:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584663915; cv=pass;
        d=google.com; s=arc-20160816;
        b=JMJcpjfiwEkcbkuKKtBWmQQqH8eB9JAKObpdhaEvaKIf7IjwBl0FJDQQlgvP2T8nrc
         OPmv6kOxjWrnamK6FGmfo45MZuHisNS96bueQaV/VYboPwy5z32czUFfN1YZJfjMiVET
         jbJZtTFv7euXNBExE8tGTgWyIZC4NuSVwmCYyQGrnfvjbX4ALRj7IRNmSmR2bIHLWJph
         ++rS81BBbjfEO3ERWdI0nlF8yHSf0ljwk0/uecodS02208HFwJELDEV0cX4taNAIqXI7
         tdN/g/zuC3Vkp1IYq2t1KNQIMbr+SvMkVgA4OVS5lFMxsfIlcMx3UExJqX1V5jQHtxV/
         bHag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=pgIQfKEM6OQZj+lmMwyp43CHvebZWxw9vqwhQxCKiKI=;
        b=rCchsYxkY5liwuWHlgzu+hrRycOj5kRcnvCMc3lJjFCJlB/aoesskCZGLH7UIgm/Cg
         oFUfvw1eFPnDyAD7bj08kUC8p8kOIdpjjPXiwE6C9F2liei6aYtIwRfLY7INCjwX4gJ+
         xY9LOwg8O1+Xz7pHkl2GL+V85ESMKROpG6ampjISyfJlGSQeWzf1e74Nw6/1sjD30U7a
         gSUS7UpTrYHmDHpikZgniqvHGAyNLOunClO8wGuDISiLg2ux3I0VMxXW7oW4Mk6ErZ3g
         05cn9eJvxJ/daHO88c3cObh3fXX/d4Q1OFlqeMTWT/uW2GL5Au5Flsa5u0ucsn2tNvWe
         9smg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YTWcFZrL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pgIQfKEM6OQZj+lmMwyp43CHvebZWxw9vqwhQxCKiKI=;
        b=YZrrM4pR83xEP9Ljapzquqt7EPiBFzRvsT2ztb8cBgClvDe6Pi6mgM9UgUuoRxpURt
         ahmJXFC7nIDUN09Vjn8+bqvZtW8W4GYciL8icQ/057pHBx6Zq0Ia78OOg+azg9QVmknQ
         2+Z5q9zLz3DU1gTHJL6U9FBp6ECCWlPUcil2utlmgdAe8xGW3tXPyQs4+RGHEtXx5jZ5
         YckTWx5VtHf8r6EgIjR7oncitK8RhWkPqlNN8P+EDmnL4T/XTRNgm6EdVIH3lvdmVAmk
         hPhrUAQymOKYa+W1r2Wgf9Gm687cVlrJFAhqjv6DtsiUczewEnkYFfpRggBu+8QFDR9i
         Q3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pgIQfKEM6OQZj+lmMwyp43CHvebZWxw9vqwhQxCKiKI=;
        b=doqK2wi8URy/teMrpQraWbGN6YZIkWioba8HQQrKqkCjvBw4gJBZOWCFjibrObrakw
         L4KP8BkHDaTOmmBUrefGnOjQdiBlz1yWOpTy7FFTQHN5UeZYOK5D9aNL6EwJyiLfRBEd
         AsRruahZpACxLgkPVWsDuDJSncd5wOfNXT0u/23wXoTE0ojy+jccxCQabHxaZP6IquKy
         DmXArT+q9IKGN3/cdJZdXPxiMQTC76VsLz58MCpMs8e/GaJlx8OpZjIqLofRo3Hc8eB8
         oPFLtSiEvbH5GMBH57sAw87s7i0BG8z2Mw80wsoXm7nsEhsYGJLQB+BD8uk6r20Lc1Hl
         6HEw==
X-Gm-Message-State: ANhLgQ3cG65OyyGCao5SyI7raOMIjgnn51B2Rtc+gKek1TwZ67t8o/3H
	fI8mvd5LSIOOpegtwbb4NsU=
X-Google-Smtp-Source: ADFU+vtWu9XMv1rJtC54iJEj/X/formDV/UU/uykprSZ08hfDoXEaZMMkbkG8+BChm3/7McPXJ4iDA==
X-Received: by 2002:a02:3b0d:: with SMTP id c13mr5741248jaa.85.1584663915300;
        Thu, 19 Mar 2020 17:25:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:79c7:: with SMTP id u190ls1066773ilc.10.gmail; Thu, 19
 Mar 2020 17:25:14 -0700 (PDT)
X-Received: by 2002:a92:cb49:: with SMTP id f9mr5979397ilq.139.1584663914729;
        Thu, 19 Mar 2020 17:25:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584663914; cv=none;
        d=google.com; s=arc-20160816;
        b=jWEdXnb7fsABnbbajxkUdeWAy4r5NvjLaNSk7eDQQzLFngln2XK4hjryeqBfBnOM1y
         AIOuG/a9NhpWFvVU7AV7Z1h90Rlu+PnYw5RMSSPNFGZ6E0G1/3BpILv8BoLknb89CzoM
         F3huobFyBONwPkb6HnJ6cr9lh41Nh/akBDRxVuwFQmGtQ4JKpV1SOxaaLkPkE0pXc+PK
         iu0F+NeU5Qqk3V8lP/2KHKODvlL8qQBFbQASBr3Db/nGkpcksQn963Ydj04MVL/NMMOl
         +Dqq1xX2Uv/3tjDzsrNDrEyUAn+eV5HwCjRr3u8+gKJyK8o5na97Fp5KY2p671QyGeJp
         4KQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5FFO4H0Vp99wqnvt7yijB/St1lNwdpJGix/bv+EozzQ=;
        b=G2GCJK+LRpOifb71krPClpJpiFNNrZ7zRXmfr6VXe+Ur4eGo/4Hil3QlP0fqU+EoSx
         xk7k4dLe8GE08U1jSeyXo/5swOgPxz8oNxhsNAY1eQtsgTUyLkM5IijBv4MtfaQtwnTs
         O+heqbaFKkIowH2yvhnAh1IpEQr0+kwEtcAvo8tZ2IEPVl/8gQ30v232Rs+gPKq8OCmd
         fkWRI+p26eiuflB/qffKAQ882QWcAEbBhqTQ/ol1UGR9sEFKXPk0t6RsWfAdExOVHcZR
         oAH6agDSgtfsmdf+KOAFsx2oYhBsLlATr1DmcnVLAYTovFExJwlsNdrdBemx0Smc0TU2
         uqYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YTWcFZrL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com. [2607:f8b0:4864:20::431])
        by gmr-mx.google.com with ESMTPS id q6si248979ild.2.2020.03.19.17.25.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Mar 2020 17:25:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431 as permitted sender) client-ip=2607:f8b0:4864:20::431;
Received: by mail-pf1-x431.google.com with SMTP id l184so2317964pfl.7
        for <clang-built-linux@googlegroups.com>; Thu, 19 Mar 2020 17:25:14 -0700 (PDT)
X-Received: by 2002:a63:4e22:: with SMTP id c34mr6109399pgb.263.1584663913659;
 Thu, 19 Mar 2020 17:25:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
In-Reply-To: <CAKwvOd=mOmU1S1g5oDDy3rLjnp543Fu6PSVAJyvxhyQDvpOM+A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 19 Mar 2020 17:25:02 -0700
Message-ID: <CAKwvOd=hmyBoWTZzqg9xkkWVMGYBtPHMnpeb7C3SxqJnpphkhA@mail.gmail.com>
Subject: Re: call to memset() with UACCESS enabled
To: Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=YTWcFZrL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::431
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

On Thu, Mar 19, 2020 at 1:37 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Hello Josh and Peter,
> I'm looking to track down what I think is our last objtool warning:
> https://github.com/ClangBuiltLinux/linux/issues/876
>
> Can you tell me a little bit more about what uaccess is?  I wonder if
> an assignment is getting turned into a memset outside of a "critical
> section" (for some meaning of "critical section" that I don't yet
> understand), which is what objtool is validating against?
>
> I didn't see any pointers for this warning in
> tools/objtool/Documentation/stack-validation.txt (the tips on how to
> proceed given an observed warning is a great technique!)

I was able to narrow this down to defconfig + CONFIG_KASAN in 3 cases
and defconfig + CONFIG_X86_X32_ABI (X32, *yikes*) in the other.

I assume that KASAN instrumentation may be lowered to memset in
places; are there macros or anything we use to denote such cases
elsewhere?  Surely GCC+KASAN has run into this before, too?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DhmyBoWTZzqg9xkkWVMGYBtPHMnpeb7C3SxqJnpphkhA%40mail.gmail.com.
