Return-Path: <clang-built-linux+bncBDYJPJO25UGBBOECT2AAMGQEYBXLY6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 191C72FC636
	for <lists+clang-built-linux@lfdr.de>; Wed, 20 Jan 2021 02:02:50 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id c9sf28118565ybs.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 17:02:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611104569; cv=pass;
        d=google.com; s=arc-20160816;
        b=PfrxHH9AFr/EPrWUPoqTuWHjAFWkDB0WEflRy3HpqG0dfsgrBs+Hm18BExpHm+DRK9
         21KEbWyYgv/HV4/hEupr8qJyOFnwH0g6g5ycmt07Mv8XepAYcvpBChRem5qf1aq7Tqbu
         FELWR1tVrL9kQ/aayh1TktjMpzzssCOjkqbkQh+u4v9SBFw8cQYh1XAUp10lDY/uxBWD
         wnO8Jss6kxMRqgiiypdlRdO2GGBRQdqM0LFLyx/UEq55/ylq9L1sW1/Tax613+kX+TsD
         eZHxlU2CDWw1S4OXrrk6RGoQ04mpBaboukiPu1amofX9A8EArb8Ws8uyki+xQIwwJPS9
         YG0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GELS6EEQLiqejNlAMrsxrCyToDeiFLtotOzICmfqpac=;
        b=g8w1CbQmp/Gtd+VyUZZSgywYuMtm7Ex24lg7TQgzfTEza+Igv5R23hHdk+MGQqKdUR
         gxKqd9uAytZEXdsZCMmI1ToPOeNZpO74DYvH1a4Wx1RH4FpaSgtBDUvVcY3YcvX89qEo
         9IaArrcus3hU8ry3PT2lrQtY6gh4AGT6SAXYpGW1j+2XzvyWSWK6aWKRqzQ5tJGuXcCp
         XfSLyqUsu3z9nKaG2sOVN1doond+wncVlshN7h1sCnq4+zZm+OQGsICjDHj6awrCT/WT
         rxxio7Pxi0UwhIPVqR/A5+BN/ylMgPux1QV5ToL+LIgWZiXlRXRs9ELylPnsediley9j
         9PcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XwWSQ6Yx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GELS6EEQLiqejNlAMrsxrCyToDeiFLtotOzICmfqpac=;
        b=de1Y260hntZVHl3vONuGoccGEZIAre2+GDcjIggI0pNN5+fJ/oj8GOOVqVJUDxebsJ
         5uW62ZGunqpsDULKJJOzarJ8pWETfy88qcRddKOC6Y/tpRe573VC4HGvOwzSkkE/2D7u
         EwPGzAuNZzC+KXWvJ5TKhiEGlkJJPgDNhfUFMrUdKlcoh59lDyNJOWSN9WWcbKFX8DgN
         IQuBnYe8fTNmDcEKSUfWiDnMJCS1lqzkOWWiwoVPLNaFss8WEcoR4aWtxxSdOWJFq34c
         zl/8rAnKENKtuLrY4TPvHLtCWobdZkCGJMioMrwbCxn/495rqJ3Bos3A3YTNmBZuxLKz
         GBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GELS6EEQLiqejNlAMrsxrCyToDeiFLtotOzICmfqpac=;
        b=d7ZFvwW9WUod3jM0eSLv3ucU8GtjQaBOmbFMuXS35JtoXZ8CYAb8zgXzCP8x+GqhbM
         m42OPqZU95v/NSlfQ9+H6TqVT/f1MZekG1hQfJsJX7r0MhW4J7/QmAgzcWzgC1Gqu08j
         UL/qx4h1GWxUSEetXZc1nuIRaWXq2PXrx+YSImAtEhvbrtgINtF7YsGhdfxACRN34NDg
         hHLefKzlUsS4bqi/hB4Yo+OMb7JjJ2NC+uMdiizfM7ewPgQ9GGKeQ+BRlkNYmsvBeCsh
         S0n1RGY6l4RETeP/18U3yMxlByZ+skGpYrjzdzEqF4hlYHLqxMv2r6mJ2TXphHyJRJMh
         pLjw==
X-Gm-Message-State: AOAM533AFQiGPcwNAt0sCLm2okot9qruZaHvdguyJf+y8u/FVOGjnX5r
	Zg7Dejfp0M5tZxbeiZudDcc=
X-Google-Smtp-Source: ABdhPJzIIL7AK2VNnAbcamTqv0HHdfHUYRyPZNA4Oz/HsCFS24uiLoB/nDlZhvcIyOHEGMtJ7C0KhQ==
X-Received: by 2002:a25:cb01:: with SMTP id b1mr10216488ybg.221.1611104568969;
        Tue, 19 Jan 2021 17:02:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:af4a:: with SMTP id c10ls181920ybj.1.gmail; Tue, 19 Jan
 2021 17:02:48 -0800 (PST)
X-Received: by 2002:a25:be06:: with SMTP id h6mr10288976ybk.38.1611104568576;
        Tue, 19 Jan 2021 17:02:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611104568; cv=none;
        d=google.com; s=arc-20160816;
        b=ux2OhSK9hDQPWUX5DtjaUTNMx9m0hK6ACaQi91q4FQo+ktiqiJZzoJh5ODkH17zCYD
         mtZGBfxNTVjgTCephKN5Uwsj1kqAVPayAu9yZy5sSs51ebrWbyWiG3Z0M0nyl681VAXJ
         5Hr3CoP9s4DzYE9ym7GnoqmFp1YX/oJ6Dtzqd+4I+1chHk0gdp3LAw+H8HyDLBYEvym+
         dP/qeO8PEd6UuUss+Irj5YGelN2/dkBLqHkxTEmewds+Hh1/b/bDVjXPUqzXJ65hffuB
         1lEPjisBS7aArQgNMtYaCSYPCCKkcYmkD8GHujNwII4Bq4Vwu8csPetUMcZt0AeZ7Lsw
         fkyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2ijWFqCFik7AEqDTngTlHLoNVrHEGUc429TyhF79LIQ=;
        b=jV7+8W46ibe1trP20HgRiTlDLXwYdb43+mINLnvQNxPG13P+rFuGP/7qx4XQdqWztf
         VV2R926xtw24K7c6gY8RcFs33xYTBarQo8d+Vu7Ag0fJuSAyC9xJ4uqwpxJUfWB6mbwx
         EebdbK7p/FXlLoHhrRx5mPqZudxE9Jh2jVznop4EH5s0rLOhdZRPwVqMlLZDVoIxmo2Y
         kdu8KqzFzl7ir706PBXJ39wua9heBSU43zJblMdvwVkQVDdZgZb/J0d5NUa0f7XDrzZE
         qHszRLV1RUeY2OCDQlwxCjCXJUxhecU3NK9ApEdQjJ9kX7BrlLXmMPsBxFp0rnQ8mvW1
         b8Tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XwWSQ6Yx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id s187si77320ybc.2.2021.01.19.17.02.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 17:02:48 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id p15so1082374pjv.3
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 17:02:48 -0800 (PST)
X-Received: by 2002:a17:90a:6ba4:: with SMTP id w33mr2729981pjj.32.1611104568023;
 Tue, 19 Jan 2021 17:02:48 -0800 (PST)
MIME-Version: 1.0
References: <20210113061958.886723-1-morbo@google.com> <20210116094357.3620352-1-morbo@google.com>
In-Reply-To: <20210116094357.3620352-1-morbo@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 17:02:36 -0800
Message-ID: <CAKwvOd=BK3DBm0H9GiiicY2NWP9KLq7_Qtx5VY-iezW3o5zuTg@mail.gmail.com>
Subject: Re: [PATCH v5] pgo: add clang's Profile Guided Optimization infrastructure
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
 header.i=@google.com header.s=20161025 header.b=XwWSQ6Yx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030
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

On Sat, Jan 16, 2021 at 1:44 AM Bill Wendling <morbo@google.com> wrote:
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
> ---
> v2: - Added "__llvm_profile_instrument_memop" based on Nathan Chancellor's
>       testing.
>     - Corrected documentation, re PGO flags when using LTO, based on Fangrui
>       Song's comments.
> v3: - Added change log section based on Sedat Dilek's comments.
> v4: - Remove non-x86 Makfile changes and se "hweight64" instead of using our
>       own popcount implementation, based on Nick Desaulniers's comment.
> v5: - Correct padding calculation, discovered by Nathan Chancellor.

Specifically for v5:
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

If anything changes drastically, please drop that and I'll retest it;
otherwise for changes to the commit message or docs, feel free to
carry it forward.

I'll try to provide code review by EOW, assuming we can stop
regressing LLVM so I can focus. (Ha!)
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DBK3DBm0H9GiiicY2NWP9KLq7_Qtx5VY-iezW3o5zuTg%40mail.gmail.com.
