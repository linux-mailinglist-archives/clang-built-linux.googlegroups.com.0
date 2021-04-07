Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBLXWWWBQMGQET7RD7CY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 733BE356803
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Apr 2021 11:28:15 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id c18sf1615832uao.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Apr 2021 02:28:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617787694; cv=pass;
        d=google.com; s=arc-20160816;
        b=cs9w3urb/FkGLILHUG6lZtARcaszbOxfdAG1HoZZDKw8PEyY06583JtbLJr9ifp4P4
         E6CmcT63COAthgRlonCSTm+P9TL9pQFI/MgBYPHPkpxh9vyUDzyEYt4O5eekKPcYq6bK
         Rm9lnkyd4349n7jOCBiNvdQp5ztdZwXcQMjEMtGyNE7u6ipcwOF3Q++WPnq27pnl0FiN
         pTIU00/5pWCi33ShZnOIpf5pquBvY2IdPZ2sXxszIttLrHt+LfXPU/30+r4AzeL3/5gQ
         nsdvDi7W4XxQ956myVaJ1icvzSqqs/hcP5vYdcpHrzDnG4FY9hDDx+Be7GWk/m2whoYr
         M5Dg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=IWEJiPBG/ud2v6DpRZ4q2s3eh3/PH3pRsST4tJu/G/w=;
        b=BiFQHS8Qhg2zxFy/8eDg/Y7nMlAm6sN4iF/rHTGWITe9P3JkHRlpcguVBVbu12s8FV
         qU9+96gaWHOM/fMmDSaruHlU8KelDbgdDfdXJnV9xVYK8CAz+RDSHMg0hp71qGdcmUo9
         btwgPo5jd/HHjh6XZgEFWOBg7sD2Ut0K6y3B5wZxPb7SFMsdjE84EuUe5zm5WLJSXfXP
         JJdTNhw5BOWeH1ytdk73qMHJsFr4yiU8DU6N9hlfg8WM4vaw+sTAvnrRBt79XMgN68JQ
         w6sFSYS7jIHIz6FXk82Gnto+5MUBgBT37iqurcEo30UWFSwYDV3cQ21V9zPP5fOzbd5S
         yLrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P9p0Eisv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IWEJiPBG/ud2v6DpRZ4q2s3eh3/PH3pRsST4tJu/G/w=;
        b=JUyrHtJFls0xI4IB9T5vnB8x98m7JfZvRo/TyHp8ne/eV6zP+qos7MZ9aHFIi0BpZC
         XqdQDb0fVfeAhnr8HTtSI8CnFGB/HVA8nIa1Hfj2x8B9r0bHEs7mCI/rMPDueQhZixvk
         UEGxyysllViOqwWbI/0z/WZ1zv+9y87h4XGpLBs85VvQTyu5Ywxwjl204aG8vkwp67aG
         HiYXcGiOVBwv3RCU1EXAVSxocwDnlO1Q5wBgiZ5dzvWGkUrPbxdwjIoBv8PFCbzQrZaz
         yQxcaXVAQGucPAtmSmaxxN0keYrIKfoVODp9JVFofvIqTo58/man71TsLqsAPZIPFuyT
         /dpw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IWEJiPBG/ud2v6DpRZ4q2s3eh3/PH3pRsST4tJu/G/w=;
        b=apj6adsQ68O/gj4aLI2b9ixRJshdrCFn1Z2ReUjoBdNaQcJR8Xm+36kTSPyylivOow
         oZzo5D4Ml5+9fhdtDh/DcjHb+c176p/IXtx6+aXtM6EDnSsSoUHYV9wHOAWeenEhwLg3
         IcSidzBLaOLizlhuHo7rRl6MWHLo9lzo0ZLxkGm1cg8r99U5SHc/+WPHtkLzH07Kh0TI
         pZxZtm5dJyOCKGVTOaM31uFDx6b67r/tj1R/SkQHeVCCVub7687Z1enL/3QYvm65EHp9
         3BkO3ZmqY/c+xFKJRi9ZLsFmWZU0vrBhvYzIKbQf0tBo5IzU31/72MQMvp55tSTnH9H/
         PL+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IWEJiPBG/ud2v6DpRZ4q2s3eh3/PH3pRsST4tJu/G/w=;
        b=RSS5AXDdaDufmQPXtHwOLlPoHg9MedhOJJsFaALMo9hUQzhWTbR2BNlDYMvYpESj2X
         2IDmlK+YJJuU4XXj5Y2++aJrXXlFtkp59AvDADE0p940OnUrRq1uZLz4ZhHOdL+q8+ut
         gUI7FNr6FuOebJ8ITP62/0JGVnI926ywVLzdP1TVFK3TzkNWc5wsF4lcrvD37DtkMXmg
         Arpsvp9vdx2Uuwnar/KAq5Yx3wyT353ypHUuwAH6RIPNyIU3nKHEG39k2L72WQbDGz5B
         D9D6eEt+D7IBvgJ807h7WvJLQN60a6o0u170tMES24uQE9zdvtgCo09rxU87Y37nm/wH
         LSfA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533SOgbnfJg9Q81JSTWd3NZkXLJRPjD5KDmqqK0i+oAGEI/KQQGN
	PjKt0qe4r/H/ym8BoFlHr60=
X-Google-Smtp-Source: ABdhPJy3pKWW7eKW9UKzEAiOHl3/HAP+z0Mxj1iKiZzbor0lJ/KehbIUTvvPVKRqLqltqBivR2qafQ==
X-Received: by 2002:a05:6102:22e1:: with SMTP id b1mr1253016vsh.44.1617787694260;
        Wed, 07 Apr 2021 02:28:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4405:: with SMTP id m5ls126180uam.4.gmail; Wed, 07 Apr
 2021 02:28:13 -0700 (PDT)
X-Received: by 2002:ab0:6542:: with SMTP id x2mr364436uap.25.1617787693671;
        Wed, 07 Apr 2021 02:28:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617787693; cv=none;
        d=google.com; s=arc-20160816;
        b=jTB2s+HMokuWskE16CziVerOHtxNdSmekZUfymKkOP+A9l2ZWR5DZefuv6MPyMHWKn
         dz8CvTDKEmqicOQAzEoaCBGSIHNYgqWPj9id1OZOEVocomplUv0lq+RD5iDKs9HFswVI
         c4MSyjDVRuO/6NAApMBmsFtDoXakwIH0FT3B0TtwovTIF8o4UitDrBvq0crner1P3Z/r
         RcHzS8YerlkoJg6h0EG/RbUpM3Fd1mcKTo5ZtuYA4rqv5J3qv5t82kYwYowszHotptMn
         Ag12TO9FN1To4Ue39OZBii2ONEfx5WA7Bui0s5QiYpQu+cO4jXYNtc3xAawQJCNGuVZN
         Xycw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x07JQQzpyci8GPomfCuTN51bSFqarBXOYtSQpxdVo3g=;
        b=jbAYBFrIdnVUFuIoux+85qwV3cnjqy3pc3dU7LOVhaqFcvk0zo+2m8WhDt6yhpxySN
         WKiAAzcQT6mOlNurOG3UZ/5yNqoIRfDKEAfWBxTDcLcfJvtX3AkBzS9vMfRaO2zZj38V
         Ou1vE1rAimkb3qR/TL3ip7+MG3dYF28ElvAk9lFYOdiQEI2h6oooC/6Ws+voTSRwA1SX
         7jG7cEMcfz1nwTL5Yo8sCxVXuGg6XTwq/qpH//tVvus6kSzQki0/KRmejeoJ3+EabiPD
         JHSLpMKxiAoBAhDXOeMHklyZXiFOHE1BuzneE4YvGGiRxG6dVq3QgMshy2fVbKbGfR1n
         Jm6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P9p0Eisv;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id r8si1454640uat.1.2021.04.07.02.28.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:28:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id z136so9936652iof.10
        for <clang-built-linux@googlegroups.com>; Wed, 07 Apr 2021 02:28:13 -0700 (PDT)
X-Received: by 2002:a5e:8c16:: with SMTP id n22mr1862701ioj.156.1617787693120;
 Wed, 07 Apr 2021 02:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210401232723.3571287-1-yhs@fb.com> <CAKwvOdmX8d3XTzJFk5rN_PnOQYJ8bXMrh8DrhzqN=UBNdQiO3g@mail.gmail.com>
 <CA+icZUVKCY4UJfSG_sXjZHwfOQZfBZQu0pj1VZ9cXX4e7w0n6g@mail.gmail.com>
 <c6daf068-ead0-810b-2afa-c4d1c8305893@fb.com> <CA+icZUWYQ8wjOYHYrTX52AbEa3nbXco6ZKdqeMwJaZfHuJ5BhA@mail.gmail.com>
 <128db515-14dc-4ff1-eacb-8e48fc1f6ff6@fb.com>
In-Reply-To: <128db515-14dc-4ff1-eacb-8e48fc1f6ff6@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 7 Apr 2021 11:27:45 +0200
Message-ID: <CA+icZUUC_rMUtMwMBXFrn1uWE5whrpjgtJJn1AHLhS1AcNQ0gw@mail.gmail.com>
Subject: Re: [PATCH kbuild v4] kbuild: add an elfnote for whether vmlinux is
 built with lto
To: Yonghong Song <yhs@fb.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, bpf <bpf@vger.kernel.org>, kernel-team@fb.com, 
	Bill Wendling <morbo@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P9p0Eisv;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Apr 7, 2021 at 8:23 AM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 4/6/21 8:01 PM, Sedat Dilek wrote:
> > On Tue, Apr 6, 2021 at 6:13 PM Yonghong Song <yhs@fb.com> wrote:
> >>
> >>
> >> Masahiro and Michal,
> >>
> >> Friendly ping. Any comments on this patch?
> >>
> >> The addition LTO .notes information emitted by kernel is used by pahole
> >> in the following patch:
> >>      https://lore.kernel.org/bpf/20210401025825.2254746-1-yhs@fb.com/
> >>      (dwarf_loader: check .notes section for lto build info)
> >>
> >
> > Hi Yonghong,
> >
> > the above pahole patch has this define and comment:
> >
> > -static bool cus__merging_cu(Dwarf *dw)
> > +/* Match the define in linux:include/linux/elfnote.h */
> > +#define LINUX_ELFNOTE_BUILD_LTO 0x101
> >
> > ...and does not fit with the define and comment in this kernel patch:
> >
> > +#include <linux/elfnote.h>
> > +
> > +#define LINUX_ELFNOTE_LTO_INFO 0x101
>
> Thanks, Sedat. I am aware of this. I think we can wait in pahole
> to make a change until the kernel patch is finalized and merged.
> The kernel patch may still change as we haven't get
> maintainer's comment. This will avoid unnecessary churn's
> in pahole side.
>

I am OK with that.

- Sedat -

> >
> > Thanks.
> >
> > - Sedat -
> >
> >
> >> Thanks,
> >>
> >> Yonghong
> >>
> >> On 4/6/21 12:05 AM, Sedat Dilek wrote:
> >>> On Fri, Apr 2, 2021 at 8:07 PM 'Nick Desaulniers' via Clang Built
> >>> Linux <clang-built-linux@googlegroups.com> wrote:
> >>>>
> >>>> On Thu, Apr 1, 2021 at 4:27 PM Yonghong Song <yhs@fb.com> wrote:
> >>>>>
> >>>>> Currently, clang LTO built vmlinux won't work with pahole.
> >>>>> LTO introduced cross-cu dwarf tag references and broke
> >>>>> current pahole model which handles one cu as a time.
> >>>>> The solution is to merge all cu's as one pahole cu as in [1].
> >>>>> We would like to do this merging only if cross-cu dwarf
> >>>>> references happens. The LTO build mode is a pretty good
> >>>>> indication for that.
> >>>>>
> >>>>> In earlier version of this patch ([2]), clang flag
> >>>>> -grecord-gcc-switches is proposed to add to compilation flags
> >>>>> so pahole could detect "-flto" and then merging cu's.
> >>>>> This will increate the binary size of 1% without LTO though.
> >>>>>
> >>>>> Arnaldo suggested to use a note to indicate the vmlinux
> >>>>> is built with LTO. Such a cheap way to get whether the vmlinux
> >>>>> is built with LTO or not helps pahole but is also useful
> >>>>> for tracing as LTO may inline/delete/demote global functions,
> >>>>> promote static functions, etc.
> >>>>>
> >>>>> So this patch added an elfnote with a new type LINUX_ELFNOTE_LTO_INFO.
> >>>>> The owner of the note is "Linux".
> >>>>>
> >>>>> With gcc 8.4.1 and clang trunk, without LTO, I got
> >>>>>     $ readelf -n vmlinux
> >>>>>     Displaying notes found in: .notes
> >>>>>       Owner                Data size        Description
> >>>>>     ...
> >>>>>       Linux                0x00000004       func
> >>>>>        description data: 00 00 00 00
> >>>>>     ...
> >>>>> With "readelf -x ".notes" vmlinux", I can verify the above "func"
> >>>>> with type code 0x101.
> >>>>>
> >>>>> With clang thin-LTO, I got the same as above except the following:
> >>>>>        description data: 01 00 00 00
> >>>>> which indicates the vmlinux is built with LTO.
> >>>>>
> >>>>>     [1] https://lore.kernel.org/bpf/20210325065316.3121287-1-yhs@fb.com/
> >>>>>     [2] https://lore.kernel.org/bpf/20210331001623.2778934-1-yhs@fb.com/
> >>>>>
> >>>>> Suggested-by: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
> >>>>> Signed-off-by: Yonghong Song <yhs@fb.com>
> >>>>
> >>>> LGTM thanks Yonghong!
> >>>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> >>>>
> >>>
> >>> Thanks for the patch.
> >>>
> >>> Feel free to add:
> >>>
> >>> Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # LLVM/Clang v12.0.0-rc4 (x86-64)
> >>>
> >>> As a note for the pahole side:
> >>> Recent patches require an adaptation of the define and its comment.
> >>>
> >>> 1. LINUX_ELFNOTE_BUILD_LTO -> LINUX_ELFNOTE_LTO_INFO
> >>> 2. include/linux/elfnote.h -> include/linux/elfnote-lto.h
> >>>
> >>> - Sedat -
> >>>
> [...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUC_rMUtMwMBXFrn1uWE5whrpjgtJJn1AHLhS1AcNQ0gw%40mail.gmail.com.
