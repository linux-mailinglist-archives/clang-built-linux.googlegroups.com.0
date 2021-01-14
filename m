Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBG6LQKAAMGQEMEJBAMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FECD2F6BD3
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:12:12 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id q5sf2113065otc.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 12:12:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610655131; cv=pass;
        d=google.com; s=arc-20160816;
        b=f9ItlEZSlrC6CUtyJS8jIiNbODenAvIZmQUR33J7K8a6PqqB0B3NBQaDACBA29zPcu
         JS+4Ce0UxLk+rF2vn034i65Ao5rpGwmHB1Kqh9KGJeNGXBQg148hezA3EuB7E1xPdVI6
         E57d+xk+AnaDk5xn2mCyQfPkljnHixtR4IHwpIT7Nowe+kKnj9ctiuir6MKdggtBo84F
         yXN8s4XRrlUma+YhRu1+zpTVNp4GY8Yb0P7rNNczT79TSUHRRSkMpOHCIcyNX+Lwpj3H
         LP8giSD9juYpiJ5ScXrEjxz1pwk+18Yk1w5RGjzmU0baph6zWsDP6ZQmV6Ecs+VGjQrr
         QDlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=h9hWpe5GPy9/X90TakSAVnHhAx5KrF2TjuGo7G660ys=;
        b=grIwQVBChW9wn/f3aKHzXNjurcTZ4k8AUxn5+ephvpCKZtNoATk0ZPI4FgQyP2uBPE
         X1AFE7jBV7YLuhszx0tmvTzDZ/NgMSEgjocOoI05Bdij0/szK9qxXy+nbueHKJ+Jjjwy
         0bml43xZN86VHH8hAEjG9XHc84V8ttO2BNcsedJLl0IKZZBji4lSMZslJQkm/9tTscPm
         81BCVGDqAHJvfNmjC60GZWspBl/0SBA6/erH6wpPK89pABmujIpDvivj8l8yi5R/NigF
         p7he2Rg7pfPADFHl8RmIIcC2K2HoDHHqo9JwjWUY5Izr9ZWQfeuHWx3WUDj+sqdHq6DS
         4zOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EYpYVeVJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h9hWpe5GPy9/X90TakSAVnHhAx5KrF2TjuGo7G660ys=;
        b=I/LYvNE/BLQf/t9uUjKVGxNI30klVCg1hpYdsoVzuZUF86O5c/8PVOzkStev2fGFcC
         nReUVdPpjDeRQgtZt1wLG53wGmb1DydSOtbYus6Oe4gand/QV7VljDGLcijnoMFfkw9C
         vqGrhfnpTE6xCWl72YxJ/vT6IBaat6tgi00WOmVN0wW6yz1NPvT7ew2qd+t5o8l/yq9r
         oYwKGyWyfGMDzwlnTPzafz9oX4pOu8tRU93vJHdVwq/AOnR0Q7T+NueCUXObEAeJCYFe
         EbMaGj1hZuC2dfaXUvS1Ay1fJXbIYcZyZlC8595qr8YAAoUEDyEqoJwMLu8BZM9jUwSX
         Jfxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h9hWpe5GPy9/X90TakSAVnHhAx5KrF2TjuGo7G660ys=;
        b=T+6+gmgJNy6tAPp6KGaNUBvGdwdeNB6NUNhQo8WZmaHZSM3w/tB7KRFEHlTFWkFnG6
         mJvHBaa+KLPDnyRTyR/ewrgxlw7ShAHzWrdmorQEuEy6RY41q4oX7lXIHeZkWlHrXX7m
         X+DWvykhbcSE5qx40iWClUdlrxn0DWB+u0JHKty8AcXy68URvgQHtQUlJSjIDGw4tQmT
         WbsXRC8SJZDGrmjqNJ9FNdGs+a8mNWrBxKkzb+325WvhjfbV/LjUjWLeCjwbs+cowj7z
         vH2llapu76w9/7pGtYkhGxICKTRb2MPWTzET6P4wQWgO8CXt6jQ2D9vYplay0i+cu6HY
         Wh+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h9hWpe5GPy9/X90TakSAVnHhAx5KrF2TjuGo7G660ys=;
        b=LQxZp+RZnfsb/8uavxiVw2TVEdIHfBvJ3Rv9BvWXaxnbOOWnEPX13NnHhzGYHGZ4pJ
         Pt0BIsWKu9pWs+jzdie+ZWDF2atRLM7IquQB+L3nC3gWwQL/yLhzYNppCAwEr1ynNq+O
         rqic161NoOzLu3g9MMpTMEHwJ2OnKYMPMLYochnMnQ1GR8knhuoqHAJmnlTph6ih7VNB
         J/EJtEEnp6Mi2L3P8pG3bc7QnHJHW/XCs+PuFyBRmFXvk92cn5JMCUSI4Q2jx9gII9gQ
         C3sl3YigYXCHGNE2YG2O60CZH1f5IaEQJlHN4txo0U+86MkwQcwcL6ctSAq/DrqxSqaq
         bMEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s2r0Hvro0sh5jh6iYwQIUTZ8a2P62voCumSLseBIL3ogb5GuE
	PuuKCh0kWrNQPNQUAf2s3DA=
X-Google-Smtp-Source: ABdhPJwkDtoKgkLyXM6ad+ixathGjdNyXiuDUpbDtKwONhchErE+CmXNy8mQpQIQgIAVHZW5tpWb2g==
X-Received: by 2002:a9d:ea6:: with SMTP id 35mr5731918otj.188.1610655131132;
        Thu, 14 Jan 2021 12:12:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:7259:: with SMTP id r25ls428988ooe.3.gmail; Thu, 14 Jan
 2021 12:12:10 -0800 (PST)
X-Received: by 2002:a4a:d628:: with SMTP id n8mr5854983oon.79.1610655130700;
        Thu, 14 Jan 2021 12:12:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610655130; cv=none;
        d=google.com; s=arc-20160816;
        b=OVFCT38G5m0P07gngRP2YJpasDBw5FSuAZKMIY2DSYXELnfT+7NuIotkYrBGlqVqQx
         kjrIFxDaYonlLPhi4KFazCMgQzNO3KL5kc0dQ7GGtQn1Xo3pxTPwuREuBwHE5DvZNg67
         KmtvQZeI97NO/7sRKKkNdnlOlIVgsgMbgP2kfNDkBbO5PQ46w96btDIao3/FP7HTSd5y
         kgwqvJVDhF6K1t8ETACXl+gw69IVvbIRbWHrUcEcRgFnlhrIT1Cbbbo+WKAXVhxXnzy9
         X68x7u1KrNpMdJHP7hCuxv++1So4O8vtAjO96mtu3sXWREjXNq28gNXQJO4lwKi1CZF7
         FhTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WB5wr1zDjOj2xrVVEaih6Xat+U2C1D/39T4wbnBt3Vc=;
        b=fUlvQ8k8WcbSlmVgFntagzOlwqpyailCX8Z1ZHfHJ952cHJKCIemRKzr1gldJrTCrh
         zxcFLg/Q5D3CVO85c/i2QL+5OR/ICpYq+JWgkQHswiUctPpE7vnaviotQ83+HeOpZB+L
         fDnvtzUF1Wo0bBRDSRPFP2hvRlbaqOl6FHf4vtJfUALF98+iaANaqppgjCBOf/pDocxK
         7fhnPhALS0zl2rzrPfgmb9mf6D3oZar/Z/YuSYAyw57IW79jrLAhO4i62dDK1iwecNUr
         mLsR7LLjqlgnWVIlnN3JKxiGF/zIXQyRbSBCkQfzZ0ZUAPAVZVpXJa3iF9C7ZfrR0GbM
         kEGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EYpYVeVJ;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com. [2607:f8b0:4864:20::d2b])
        by gmr-mx.google.com with ESMTPS id a33si472146ooj.2.2021.01.14.12.12.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 12:12:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b as permitted sender) client-ip=2607:f8b0:4864:20::d2b;
Received: by mail-io1-xd2b.google.com with SMTP id y19so13806568iov.2
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 12:12:10 -0800 (PST)
X-Received: by 2002:a05:6638:296:: with SMTP id c22mr7770161jaq.65.1610655130404;
 Thu, 14 Jan 2021 12:12:10 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
 <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
 <CAKwvOd=+g88AEDO9JRrV-gwggsqx5p-Ckiqon3=XLcx8L-XaKg@mail.gmail.com>
 <CAKwvOdnSx+8snm+q=eNMT4A-VFFnwPYxM=uunRkXdzX-AG4s0A@mail.gmail.com> <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com>
In-Reply-To: <5707cd3c-03f2-a806-c087-075d4f207bee@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 21:11:59 +0100
Message-ID: <CA+icZUXuzJ4SL=AwTaVq_-tCPnSSrF+w_P8gEKYnT56Ln0Zoew@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Yonghong Song <yhs@fb.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, Caroline Tice <cmtice@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf <bpf@vger.kernel.org>, Masahiro Yamada <masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=EYpYVeVJ;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2b
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

On Thu, Jan 14, 2021 at 8:13 PM Yonghong Song <yhs@fb.com> wrote:
>
>
>
> On 1/14/21 11:01 AM, Nick Desaulniers wrote:
> > On Thu, Jan 14, 2021 at 10:53 AM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> >>
> >> On Wed, Jan 13, 2021 at 10:18 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>
> >>> On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
> >>>>
> >>>> On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>>>>
> >>>>> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
> >>>>> CONFIG_DEBUG_INFO_BTF=y:
> >>>>>
> >>>>> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
> >>>>> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
> >>
> >> I can confirm that I see a stream of these warnings when building with
> >> this patch series applied, and those two configs enabled.
> >>
> >> rebuilding with `make ... V=1`, it looks like the call to:
> >>
> >> + pahole -J .tmp_vmlinux.btf
> >>
> >> is triggering these.
> >>
> >> Shall I send a v4 that adds a Kconfig dependency on !DEBUG_INFO_BTF?
> >> Does pahole have a bug tracker?
>
> pahole could have issues for dwarf5 since as far as I know, people just
> use dwarf2/dwarf4 with config functions in the kernel.
>
> Where is the link of the patch to add CONFIG_DEBUG_INFO_DWARF5 to linux?
> I think you can add CONFIG_DEBUG_INFO_DWARF5 to kernel with dependency
> of !CONFIG_DEBUG_INFO_BTF. At the same time, people can debug pahole
> issues. Once it is resolved, !CONFIG_DEBUG_INFO_BTF dependency can be
> removed with proper pahole version change in kernel.
>

Yeah, sounds like a good idea.

- Sedat -

> >
> > FWIW, my distro packages pahole v1.17; rebuilt with ToT v1.19 from
> > source and also observe the issue.
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXuzJ4SL%3DAwTaVq_-tCPnSSrF%2Bw_P8gEKYnT56Ln0Zoew%40mail.gmail.com.
