Return-Path: <clang-built-linux+bncBDYJPJO25UGBBEOVVCAAMGQEI6AXYGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4190D2FF9F4
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 02:29:54 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id w84sf1581035oib.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 17:29:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611278993; cv=pass;
        d=google.com; s=arc-20160816;
        b=QyRHUvRMHgI6Y5obdGk3FGJCrXpo6eVBMYDvO8XjfTnOpKS2YKHBE91K8AyzPNxZy8
         Te65d/0qNFNPdswtUl/cVgxohenzUUB/t3CPNS2De/E0OgHaKoE8bZk/zaeDKCc5ggWt
         ATUFQsUzlK4mvbEy8m3n0mjFP5+cFcaKpgPJ/jDOIJmU7e1IcEN84yvb3b4NfAGdFmnu
         o4lYv2q+BNWAjMWpt8yOqiSYeFZHEqfliqG9BFVkxhxdvJZn6aUcYPQ/7HvP8jjhgE3O
         5qJGxwD2XHEGhMBthBzpnB7PxCWwrhujPZi4Jq7LiRHQo2UOwlCpkyY8vqZ+Gwpl9GNh
         08eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vfK8NhO8O6irsZZVvTu9R9SQiWJbbW6L0wtVjLEvGTE=;
        b=QGb1dV6uTVmpYZrVs39NGjJNq/v77rExg51mnYTSimKvgsiluKjVfpqm9X3HDC/WYM
         xSaNcox9Q/RdEFlMx1p+AIAiTBGNel5vvQVcFi+YOmub/Fd8YTiQ+H1s6lHO3mhcAtVU
         hDhPciu49lMzHnNBvBV5jYx4uUGsy7nE+W7GYz5Uu392s9QdZwhUsocjjT1b2spUZjv4
         be9iyRiJd1p+e55rwFyUDSSvwqo8BRiJRmy7huwJT9Xhoo02qMv9b8XACrQ4G1jzEzzr
         hCnafoJqLc33EiGPEhU8KbGehflNvsd+4Qn/piTLu7hPeglrX3VedNfLHh6/xtrG8kV3
         VcCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FAaMN6Ay;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vfK8NhO8O6irsZZVvTu9R9SQiWJbbW6L0wtVjLEvGTE=;
        b=OBnQSAwOGP4baNvAOOUz2mcMtBBytOSle75HHR6TtzyHz93XUhBeNsi70v7Vb+ySZA
         a7QpfMy4dmu5HUcNfREi6wc1HmieQ/IOfmcn9kmSWybZ7AGEKchoM25S5gnQ1R0F9iMB
         V6dTkEMgpOC0qdfE/v7LpP7BIABfPh7cF7TkypiuyheZUjlI6d4BzOffM5e6IVWNgc2f
         RUEH15ese1yXgnYyzDclHowmCBK6uhv1LyWuoUdFRtvsl/NZaSAd/a3BeqOWDtKWrYVB
         HcIqUyLuceq+AFvtrjqkcclhzuFTFypK5X05z+/zHpStWE7RiJto1P+n7PWh82bQPXxi
         TzMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vfK8NhO8O6irsZZVvTu9R9SQiWJbbW6L0wtVjLEvGTE=;
        b=Adtr4P3fmBemoFR3bOoK3LdCZ+xyzWxQcjTK8B4dI8Uzw2NBNzgMYc51qYgklxdAqt
         gRMkydjGWNRnXhPVTr1UOztIVtnK2SEqiUOVp3SWYIFAMjCh2rX6d66XqXp6Kmhuj7nW
         AUmDblkxd2IhLSpfwp1Mk4UYodSLg/3PlpcemxoMWoDAFzNuXNDHZkQcPb3TlumIplnb
         ucsdMTCrlT0vsKMAtnj2MxUB2+TN0LV4nivjG/I5VZgbnyMw8Fsh/coR4Trk29WAofh7
         vNEw5Ap+g3KipKRpYYItlAra2v4LZYWiBJrFdu2g5shi+bQY8IGAtHk+UqXdArhfI57x
         1ytg==
X-Gm-Message-State: AOAM531TfsrilFZLSRBlr0qJdLChHsM+EEGUujHJ4NuU9/LiDZgevT6Z
	m357Tkrq4hN0+Y3EMsuMtVs=
X-Google-Smtp-Source: ABdhPJyFghow4SpL2O7nRRz0Xhkcu4x5jtpV9Oh9ATTZ6IaIUgQ906bRwSNQ+LnuT2CbEOvHzxURgw==
X-Received: by 2002:a4a:b987:: with SMTP id e7mr1992467oop.92.1611278993239;
        Thu, 21 Jan 2021 17:29:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1592:: with SMTP id i18ls413856otr.10.gmail; Thu,
 21 Jan 2021 17:29:52 -0800 (PST)
X-Received: by 2002:a9d:3bb7:: with SMTP id k52mr1537835otc.251.1611278992867;
        Thu, 21 Jan 2021 17:29:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611278992; cv=none;
        d=google.com; s=arc-20160816;
        b=cR/4dwlo8gNiTWNrehKo54OZg7q85CLDDei6uX3U/wAQgoNqUcLv0nkm+YfJ+HIdkN
         tpt2BbXV9K0OJ4JCwd2HLhlRlm1FUHqp8hBBoCHmm2dC4ZEcYNgmoCSmzHcWJJ/O6T9t
         Mj7Ai9e5p2jGJX8oWehUizs9drdPjJNqXTaq4wYy2JO9MpcfzK4a/nJwSiFr1BqJ4isj
         cyH/A7bdmZwCUvzaNjs+ib74GLoFjmJH0Zscj7/IA8tJ0zfDjAnBe/VsRAXQaIeii5Hc
         5CQCfO9Av/QrnrcdQ1iJjazFBH54TzyZvevxh8bBNzgZi2GzpgnimYJuvoOz8EA3h0v5
         UKLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xevnePlqkoJPc/gVx/RFwj12UYNRMR5SpPrBczxYlwU=;
        b=rhRE/eKyv9Mc710XmDAMoMAN8PU91IdZH7edDChyQeNU70oXEIS4s+kkvHC9yba5bF
         AlkSuciQEAbNdClBN0Lh8dJEQsoEvlj427dQxwOI/+ZtyrH5Zg4H9gAyJ8PcttPgTG0l
         yJFj/hEIj7Y4a0PUtnpPSGHMiVs5JxMVa2NTn0zQ7YQtB0AKv0rKcbaP+XioCg1I6XP9
         YEQJE1PMLiixdxaSrazy/RAnkC/71QQe1bg37UnaDRt3sx/tfArumgAjplMhLXUFxZW4
         /YS3AXonD8vRiAXfk6VcOQGKu7zNw5HkxofTSEJW1Lt9+FQnf3SQSroPQVRA/HAR8gba
         gG7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FAaMN6Ay;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id e6si230585oie.2.2021.01.21.17.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jan 2021 17:29:52 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id n10so2570990pgl.10
        for <clang-built-linux@googlegroups.com>; Thu, 21 Jan 2021 17:29:52 -0800 (PST)
X-Received: by 2002:a62:838d:0:b029:1ba:9b85:2eac with SMTP id
 h135-20020a62838d0000b02901ba9b852eacmr2251542pfe.36.1611278991948; Thu, 21
 Jan 2021 17:29:51 -0800 (PST)
MIME-Version: 1.0
References: <20210116094357.3620352-1-morbo@google.com> <20210121082451.2240540-1-morbo@google.com>
In-Reply-To: <20210121082451.2240540-1-morbo@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 21 Jan 2021 17:29:40 -0800
Message-ID: <CAKwvOdn+tEFcFaDPmbubigf2gqoc+NT=uwvoqNi3-enQjHqTRw@mail.gmail.com>
Subject: Re: [PATCH v6] pgo: add clang's Profile Guided Optimization infrastructure
To: Bill Wendling <morbo@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FAaMN6Ay;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

On Thu, Jan 21, 2021 at 12:24 AM Bill Wendling <morbo@google.com> wrote:
>
> From: Sami Tolvanen <samitolvanen@google.com>
>
> Enable the use of clang's Profile-Guided Optimization[1]. To generate a
> profile, the kernel is instrumented with PGO counters, a representative
> workload is run, and the raw profile data is collected from
> /sys/kernel/debug/pgo/profraw.
>
> The raw profile data must be processed by clang's "llvm-profdata" tool
> before it can be used during recompilation:
>
>   $ cp /sys/kernel/debug/pgo/profraw vmlinux.profraw
>   $ llvm-profdata merge --output=vmlinux.profdata vmlinux.profraw
>
> Multiple raw profiles may be merged during this step.
>
> The data can now be used by the compiler:
>
>   $ make LLVM=1 KCFLAGS=-fprofile-use=vmlinux.profdata ...
>
> This initial submission is restricted to x86, as that's the platform we
> know works. This restriction can be lifted once other platforms have
> been verified to work with PGO.
>
> Note that this method of profiling the kernel is clang-native, unlike
> the clang support in kernel/gcov.
>
> [1] https://clang.llvm.org/docs/UsersManual.html#profile-guided-optimization
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> Co-developed-by: Bill Wendling <morbo@google.com>
> Signed-off-by: Bill Wendling <morbo@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> v2: - Added "__llvm_profile_instrument_memop" based on Nathan Chancellor's
>       testing.
>     - Corrected documentation, re PGO flags when using LTO, based on Fangrui
>       Song's comments.
> v3: - Added change log section based on Sedat Dilek's comments.
> v4: - Remove non-x86 Makfile changes and se "hweight64" instead of using our
>       own popcount implementation, based on Nick Desaulniers's comment.
> v5: - Correct padding calculation, discovered by Nathan Chancellor.
> v6: - Add better documentation about the locking scheme and other things.
>     - Rename macros to better match the same macros in LLVM's source code.

This is a major win for readability and comparing it against LLVM's
compiler-rt implementation! Thank you for doing that.  It looks like
it addresses most of my concerns.  I'm not against following up on
little details in subsequent patches on top.  However Sedat is right
about the small issue that v6 doesn't compile.  If you were to roll
his fixup into a v7 I'd be happy to sign off on it at this point.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn%2BtEFcFaDPmbubigf2gqoc%2BNT%3DuwvoqNi3-enQjHqTRw%40mail.gmail.com.
