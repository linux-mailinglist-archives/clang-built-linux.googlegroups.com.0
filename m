Return-Path: <clang-built-linux+bncBDYJPJO25UGBBX6J4D6QKGQENKCE4VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCE42BB662
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 21:19:44 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id z198sf4729651vkd.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 12:19:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605903583; cv=pass;
        d=google.com; s=arc-20160816;
        b=BDpyJ6FB1bp7T3KFRjv9XotmVyGxBaKtZQ/TCV4p6mz8aSkOQcafM63ozALFFLgWNN
         bT3UvtXQjCHY7hTDupnfVDFzFtcVwUcloP1+9GTE+66p86HdkHhAh+oaSR+PgR7rdSaW
         ifY1MjbQ88H+jo2z8WQ7hc20bRURMYnFTpdaqNTS1rXBUpV6YjGHhtbmAJGO/mKC8bQS
         kumUaOU1nNxBEmIjQM6XooyQC1Pl+fdLBqavvIZ7gxA4VoYW+AngPOCrCaAoyZJ0h6Ub
         62RIgn9596100tgK261K/qDK8Ph0nSHDYg9G/5eJRjzyJ5qkye/4A9N1dcnQbeV7Jt6l
         dGaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PzbZRKp5lSk9BQek3ClY8cI71EZhaCFdjORoJaHikbY=;
        b=v4quITrCwU36ocZQIk0VCwY/oPssjyT3TRvnCocK65Olp53LCJDEYMDp8yOjNBOM4I
         D9YUgFPuP3WVMNP2apdr1t7dGNIHT9V5+MxDWIWdwEuAT2ha1ge+Cuun56ZjBMEAbc8k
         h7HyL426YGeEacARZh9ktjYgLoTpJZkuk/OAnGo7lZhqSsvEwK9s3Y11IsXRtrjTJOAV
         3wpwPicsOQna0MVwittTnld30ueSTTi4ugY4yBCM9LlHd0XN3Gfux4TuJsyJ9ULuNAu5
         my6lbq8VBKuJgtWxye6P2vElv87m3wzh+G5m1W3Tpc5jfBzEhMS6xV2Uktai/Yv+m6l4
         DdXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gyFkFQiG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzbZRKp5lSk9BQek3ClY8cI71EZhaCFdjORoJaHikbY=;
        b=cr1PF6HsWoSbWB3GST1mLcIPcBJroxhw4oj6Qex3khfSHMXdefaToVLVQQsjWdPPor
         CTeT0i9JqNLkCtXlQLGZ5qhTDZZ5hWIsmJp5rW7TIoydYfwnuG3qA8tpkssJ+BzPLVUT
         hQzUbrukNgnHlhc8DojxaZ2lrZfS9nCTSrwIw2zN9IZ4oDIMcwIAB2un/jM0o2fLc2er
         IysGU/RpkAzjDqM2dgiUToGzIisiCv2K98OUv5EPPFWsKAjbSpZK33ds1dToh9U8rCXe
         r5OqkrcgMTPu2joKJpyY+67+WnaIfAdIgiF5A4xP64gCu5UqpkyAn7l+veQKic6z8tTv
         qjag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PzbZRKp5lSk9BQek3ClY8cI71EZhaCFdjORoJaHikbY=;
        b=PBgunR9N6gy4QvbM8me4f9qGooezkdJ6nDdZhX/YTP9QkmiDUj2QKGZTd0G4K3KeU2
         qQS3J7+Wmw4aywP1LcG7aCtS3T+K6rPqGC6ZFYU1WEkKlE7r73bfZBOtrN6NeESKEm4x
         8NbfhusL/S4GIATEZFNVe5NE+ly8Vj/ZlV0TfBZJIYaoU1W2D8HzUqJulqUsbSUwgMep
         P2HYQkY3nPQ80YmEg7QYRPin2ONkMLB97YCe+6n6u8F2jyskDDeKBgdOjh9fOhhKQOJJ
         uhNHSdyYhD7CI5SCcSPy3Sau6X3aRtiShvdIX13Fc7G3KWvn3QnHqMnESjIGSNY7Dg0y
         DTMg==
X-Gm-Message-State: AOAM533Q1hLYAAWmkq/xc4hgoZKA+UXs/QalQ33JdseHHBgVPyPUX59T
	9JpvwhNnjer+CbCENoHw3sg=
X-Google-Smtp-Source: ABdhPJwWuvDIyxHHfbY8vsNwoI7JoGuQOX7+qa8WQ0YbxGdjX4DNAiVm9V2fhnG0+vgJfHMEE/Oz1A==
X-Received: by 2002:ab0:3254:: with SMTP id r20mr12872951uan.2.1605903583751;
        Fri, 20 Nov 2020 12:19:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ee96:: with SMTP id n22ls1186773vsp.2.gmail; Fri, 20 Nov
 2020 12:19:43 -0800 (PST)
X-Received: by 2002:a67:f782:: with SMTP id j2mr14742596vso.12.1605903583323;
        Fri, 20 Nov 2020 12:19:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605903583; cv=none;
        d=google.com; s=arc-20160816;
        b=t/Xfve9bDYncPlj96wMoWuecSZdVTuVg+tts5gP730YonynOgtG77eGIW1HIwYYJfV
         GNFqvIl9wVX9m54oz+4N7rRq89NVcYQqXICvy0ldQHzBLxu1s/XXoK4EGtQC1CJ5SPtw
         4pDkX9W6n0WZFXa6MvmwsU7z/JXIyiMJt/KivfHuFuSAZRZajHO2R1hPtbbgMS4VgiKz
         Kq5HRbnSUiSJKhQlLufsArCFJKI/EWDnVihF3CPQVYIsIk3lVAWiKyOYsmfHSkZsCC+g
         47JIltRtKUjSCIAFnGc8j/o/P0Wv8NJ6GrjRfYVSdUpuYNp45Ei38JQvNAuuZ/lOFM5t
         o88A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7acuhIcf2aj+2HfwBkYRj3S/5vwbxxWC1CPfVW74VbQ=;
        b=Qnp7yqrrnVIpcBS6E+3qEq0H680+Az0tsHfmQKura8irA3H5lV321Eez5yFcoWpFPR
         nSnsVVs6xESd/DKewP1D0pacAnsfkq+N3y37j0tSureOfSAE38w3HebJuzF5yPUqy1eq
         4l1u4NtMkUbAyD5tlW5+sb+j69E2c++qN7TVTcPzbfaMfEnJlefcMw3O+o8i6vyYgiWV
         3xAIG3ubDRWgu8Q/UnQuZ77erqKRrrqWC2ILPrpA1UeOlLgJVdvClTDSTu/QYC+/v8Vd
         wHGFt5/rq87O+7uQIDbhW4cxPY1wVavVei6mJLK8scXwmKpMt3tMa2KrDT6FJxfdlCW3
         rOTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gyFkFQiG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id y17si343025vko.2.2020.11.20.12.19.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 12:19:43 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id l22so5695845vsa.4
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 12:19:43 -0800 (PST)
X-Received: by 2002:a67:7107:: with SMTP id m7mr15151234vsc.17.1605903582865;
 Fri, 20 Nov 2020 12:19:42 -0800 (PST)
MIME-Version: 1.0
References: <20201118220731.925424-1-samitolvanen@google.com>
 <CAKwvOd=5PhCTZ-yHr08gPYNEsGEjZa=rDY0-unhkhofjXhqwLQ@mail.gmail.com> <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
In-Reply-To: <CAMj1kXEVzDi5=uteUAzG5E=j+aTCHEbMxwDfor-s=DthpREpyw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 20 Nov 2020 12:19:31 -0800
Message-ID: <CAKwvOdmpBNx9iSguGXivjJ03FaN5rgv2oaXZUQxYPdRccQmdyQ@mail.gmail.com>
Subject: Re: [PATCH v7 00/17] Add support for Clang LTO
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	PCI <linux-pci@vger.kernel.org>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gyFkFQiG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::e42
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

On Fri, Nov 20, 2020 at 2:30 AM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Thu, 19 Nov 2020 at 00:42, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >
> > Thanks for continuing to drive this series Sami.  For the series,
> >
> > Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> >
> > I did virtualized boot tests with the series applied to aarch64
> > defconfig without CONFIG_LTO, with CONFIG_LTO_CLANG, and a third time
> > with CONFIG_THINLTO.  If you make changes to the series in follow ups,
> > please drop my tested by tag from the modified patches and I'll help
> > re-test.  Some minor feedback on the Kconfig change, but I'll post it
> > off of that patch.
> >
>
> When you say 'virtualized" do you mean QEMU on x86? Or actual
> virtualization on an AArch64 KVM host?

aarch64 guest on x86_64 host.  If you have additional configurations
that are important to you, additional testing help would be
appreciated.

>
> The distinction is important here, given the potential impact of LTO
> on things that QEMU simply does not model when it runs in TCG mode on
> a foreign host architecture.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmpBNx9iSguGXivjJ03FaN5rgv2oaXZUQxYPdRccQmdyQ%40mail.gmail.com.
