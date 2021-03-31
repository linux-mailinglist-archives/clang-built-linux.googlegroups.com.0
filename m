Return-Path: <clang-built-linux+bncBCS7XUWOUULBB56BR6BQMGQEPG6NU2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A7434F6D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 04:39:52 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id r10sf480789iod.20
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 19:39:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617158391; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZK6KZExC6tMMUxLmdMSQ3uOaVBH+Q4qcfRYdLHLqdlnqVPYs1dXsxkmT4lgFJOu62s
         nKsJ1N0P7kIpOQbZ6Db8RPS+GCwKyvnWgEJqqZUqeUDxxr39+tHswtZq/6LDZAJK6Li0
         CCyOIS8OxZ0dZCEWDRU9UARsul0adm32XDBgtNmpBe5a2mFHq2N0zbU74BJBAeijvNmr
         csf6/pCb3Quw+AT1gE8YLoUVpX8kTaP822ztt/NsA5nHl/e3Z6ScR2jSi2Cde0f0VXeM
         z4hvECC33z6nttBvxj1mlbnouox2/paiVj7Hz8fLeOHFPu3vDxgzjtB2t/myDKsnxmzR
         vgGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=QqNeeOJpSk7edhoWCnxYz9CQJQtFdVNOh7pijNtF9Hk=;
        b=dih/S+fg2ggsT3oQRMcsnmoqDiCPQJNRu0xtc7tz1z5h1cPY5X5T4H+0HDI8nzyfk0
         Mx4XIGFI/DY2s/3/7aMoOz3iVZ71SmJpFu2wdpw48aU8Ie8FGgYyRmJ4nMm1vjBhmrD2
         y/gM15WqQ1CzYxCeijyRKCy0MaPsa6dm6j2dpWLWFFnU9ioyiQWlWEpdUInGG5lkh3TW
         FHgdqhKBbvGTUdxolNyUJ+ZFDm6Q8zaeBJfQuXR407rVca0wFoMLjSTqzh+DicR7uTqh
         Y+D9VwHpoGI+L8lGBSUNpmSyld0/bznHoDBf7+UQ9/pwoZK/4kwu0PZOMpEPlqvnV+Ov
         B4YQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XTtAdm9E;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QqNeeOJpSk7edhoWCnxYz9CQJQtFdVNOh7pijNtF9Hk=;
        b=gXP4gZtaODhnioxrQ0xukrRwG51id+MW/E/zMr9YN8Wzg5xNs7j3WedVIDrvwwjXVg
         Hs3n2dv67Tm38T9oC0CRz9WusFj3FYdQqTxINZ/6v0is6iesjuejQ+6EkGObDqiBgVU+
         lpLTePLMI/iHwU0a1XGGESjLBRGLWjUnfIZKTnMZP449Pzw56uG3Gnf16dqMEfGhluCm
         X7/M27TIe08yqzKwjhNQOs2KVduY1536Gb1lV5dmXkOHCEehInzfUw/JK5zDlzH9NdYv
         DumA7HSOe7J6V+tJUSCxgszXLBHGg1/8c5ezgn2YdtgtlzwJDOuBLYMXR5Tu9ZxgV68O
         HJ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QqNeeOJpSk7edhoWCnxYz9CQJQtFdVNOh7pijNtF9Hk=;
        b=P1h0jElXetn8NdHhxZ1DUX21WZ6b5JQPYpo2sGJ+VNOGIGthwwvR17us25nadOX8vZ
         XIboHBOJC1/wpTyVdgDZFQExpKjvTSm1kZo6LwjC6xFveighIatiR5kXgYW161sE67zY
         vRqDq/yGRWEJtmMHi+He0EBKpTIhnHw+7QrKjvKpwO4UKkdVTI5i7cZtxvszpJavc4Hp
         ULNuBq2lYv0sGME3T/2N2M8d4V+lD0vRaivRARZ4kQULdw36bMjpSCWDlAr8l7avAh1z
         mv3J6201Q7CcQLtz7chxPzkZQWj6/2TrqgYj/tff2aYfaGC5TTuhxIPcccOzCxE8oZSk
         E3Kw==
X-Gm-Message-State: AOAM530c8aQnIcpnAqBPP8xb3A9WnPpBI5HMnTszmsBnBngjps9Mjvd/
	yasRHd3uJ9ja5TvEBOWKTfw=
X-Google-Smtp-Source: ABdhPJymnjxE36dofJJfVchRNvDDR/kthnUojdGTk1lYd6aKNIJRTUjCjqtDa1WR1Zg7b5xNBGhp5g==
X-Received: by 2002:a05:6e02:184b:: with SMTP id b11mr937345ilv.29.1617158391247;
        Tue, 30 Mar 2021 19:39:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1584:: with SMTP id m4ls157807ilu.3.gmail; Tue, 30
 Mar 2021 19:39:50 -0700 (PDT)
X-Received: by 2002:a05:6e02:10c2:: with SMTP id s2mr956716ilj.243.1617158390884;
        Tue, 30 Mar 2021 19:39:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617158390; cv=none;
        d=google.com; s=arc-20160816;
        b=VcUCBZtPw2H/jVvyBXXf5eTRJqy1cuTB5ciLPQYfhOeEqEW3EFBu81p2PcPn3Aoj+l
         eub59hA3jtNZgOJD5Qp+TnmMDyrIfuGTmKByKao3LWh9NochK5y9VEYsBWwUcwew1LUU
         JF1A2Q7xQHvVbivBBlNBa/xD8WMgcsi1mqcgcQVko8ZAA4fVKlmWCnTUIZrKHYQRlAvy
         dnILCEYSE4fRct4n9++JNlr5+gujLAh6083h6mZb1yhxwcw6fPRv1AwXc782JVkSqIb9
         RMlOj8ip2arPzGyNt6oc2+qVUoK+NBDcwctJiLzojNVZhZtFwNQFKYU7sW2nBExvWAmg
         VHxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ABi/1RQtTKGX0CM1QKK84G+1r8Xe7uaOR14Jy+a6M/s=;
        b=pb2+oeRp2XCUghtFg9HxToQt04yQTGC4XKrRC1M0tfUauuEm+i274+wusoDDyGVq2B
         6HzPsqPolu+hNCo6G3rH55eTmIgna8Au2XkUE+hckZ4GXfaDy+GaCPYueclPAH5Xo0nu
         kCwTLAU3TjtixaGDvw46OQUaANGuUYqIAm7g0LzB5mbrcrKU8Qntbjibte26DqirUDrM
         zK4QsGBw87VDK3gHFJJN/i8pZ1QyiZS+i7NSgIbzB6vXrwb5uvRVJgBC8haWlt7VLyS3
         +zKtBFk5QvShClW6l480o/AtbE7r/pdtqR7xKDH7L0bnQFi4KPeABv6s33/nCJsNz/7a
         N1iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XTtAdm9E;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id v81si35273iod.4.2021.03.30.19.39.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Mar 2021 19:39:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id il9-20020a17090b1649b0290114bcb0d6c2so435426pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 19:39:50 -0700 (PDT)
X-Received: by 2002:a17:90b:3550:: with SMTP id lt16mr1246796pjb.47.1617158390101;
 Tue, 30 Mar 2021 19:39:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210328064121.2062927-1-yhs@fb.com> <20210329225235.1845295-1-ndesaulniers@google.com>
 <0b8d17be-e015-83c3-88d8-7c218cd01536@fb.com> <20210331002507.xv4sxe27dqirmxih@google.com>
 <79f231f2-2d14-0900-332e-cba42f770d9e@fb.com>
In-Reply-To: <79f231f2-2d14-0900-332e-cba42f770d9e@fb.com>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Tue, 30 Mar 2021 19:39:38 -0700
Message-ID: <CAFP8O3JjU26pNKhFE2AniP-k=8-G09G2ZXc6BXndK9hugX-0ag@mail.gmail.com>
Subject: Re: [PATCH kbuild] kbuild: add -grecord-gcc-switches to clang build
To: Yonghong Song <yhs@fb.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, 
	kernel-team@fb.com, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Bill Wendling <morbo@google.com>, David Blaikie <dblaikie@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XTtAdm9E;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1032
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Reply-To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
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

On Tue, Mar 30, 2021 at 6:48 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 3/30/21 5:25 PM, Fangrui Song wrote:
> > On 2021-03-30, 'Yonghong Song' via Clang Built Linux wrote:
> >>
> >>
> >> On 3/29/21 3:52 PM, Nick Desaulniers wrote:
> >>> (replying to
> >>> https://lore.kernel.org/bpf/20210328064121.2062927-1-yhs@fb.com/)
> >>>
> >>> Thanks for the patch!
> >>>
> >>>> +# gcc emits compilation flags in dwarf DW_AT_producer by default
> >>>> +# while clang needs explicit flag. Add this flag explicitly.
> >>>> +ifdef CONFIG_CC_IS_CLANG
> >>>> +DEBUG_CFLAGS    +=3D -grecord-gcc-switches
> >>>> +endif
> >>>> +
> >
> > Yes, gcc defaults to -grecord-gcc-switches. Clang doesn't.
>
> Could you know why? dwarf size concern?
>
> >
> >>> This adds ~5MB/1% to vmlinux of an x86_64 defconfig built with clang.
> >>> Do we
> >>> want to add additional guards for CONFIG_DEBUG_INFO_BTF, so that we
> >>> don't have
> >>> to pay that cost if that config is not set?
> >>
> >> Since this patch is mostly motivated to detect whether the kernel is
> >> built with clang lto or not. Let me add the flag only if lto is
> >> enabled. My measurement shows 0.5% increase to thinlto-vmlinux.
> >> The smaller percentage is due to larger .debug_info section
> >> (almost double) for thinlto vs. no lto.
> >>
> >> ifdef CONFIG_LTO_CLANG
> >> DEBUG_CFLAGS   +=3D -grecord-gcc-switches
> >> endif
> >>
> >> This will make pahole with any clang built kernels, lto or non-lto.
> >
> > I share the same concern about sizes. Can't pahole know it is clang LTO
> > via other means? If pahole just needs to know the one-bit information
> > (clang LTO vs not), having every compile option seems unnecessary....
>
> This is v2 of the patch
>    https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> The flag will be guarded with CONFIG_LTO_CLANG.
>
> As mentioned in commit message of v2, the alternative is
> to go through every cu to find out whether DW_FORM_ref_addr is used
> or not. In other words, check every possible cross-cu references
> to find whether cross-cu reference actually happens or not. This
> is quite heavy for pahole...
>
> What we really want to know is whether cross-cu reference happens
> or not? If there is an easy way to get it, that will be great.

+David Blaikie

> >
> >> If the maintainer wants further restriction with CONFIG_DEBUG_INFO_BTF=
,
> >> I can do that in another revision.
> >>
> >> --
> >> You received this message because you are subscribed to the Google
> >> Groups "Clang Built Linux" group.
> >> To unsubscribe from this group and stop receiving emails from it, send
> >> an email to clang-built-linux+unsubscribe@googlegroups.com.
> >> To view this discussion on the web visit
> >> https://groups.google.com/d/msgid/clang-built-linux/0b8d17be-e015-83c3=
-88d8-7c218cd01536@fb.com
> >> .



--=20
=E5=AE=8B=E6=96=B9=E7=9D=BF

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3JjU26pNKhFE2AniP-k%3D8-G09G2ZXc6BXndK9hugX-0ag%40m=
ail.gmail.com.
