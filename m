Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMO4SL4AKGQEAOOUKHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E1582174F6
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 19:17:39 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id x14sf15548643pln.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 10:17:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594142257; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0hKrLOtmHFlZHKXQL+xEkZVqJxATdXhapceoHyTaDLX+DvKsZhVXwEbSZ349hrqV0
         pnm9dJFn6p7slVzpJyrN7rW8ZXKaMmqw9kKFlXmTWXEjqmtfdQdZylY8Fo8pGxsbvA/r
         aPuep23iP7tfBFsarhntGP8qfX/YbU1FmbxhXcqd5DWbPVMV+Ioi+2vYeiD9taMFTmkH
         CyB6pFD0MJlijBbLWZ0wbp+DAnDFkvbT8PCQO4eWwuUyRT1ijigDWcxx69+0MF2rZui+
         ztTfgoZiwHA0lfgnsVPj0Qe0PyBlDMBFLGlt1B5ZlCqUK0f6Y9djicm8zUe9GJ4NzTO+
         lGMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Uer1bxumzNnZpJ7YlYb02fmd8Q23o4KGrFKdsEpxDAc=;
        b=zhWG2lvjYz5FktLV9PNPCj9RsUXeFAInqyA54+uE+dNzOfjIg1veMWiFdfqX4m1+Tx
         kc48cY5suaTqj/9qQLb0B6/O/rwJjlA4Vpu+jGidagJmf14lxw6if73Q6v3fuzQjA2WY
         tVYNMdOFCDdiHw93KmYT8zz+mZIDH33RxPwCZg1+4sRZPigx6FSvk2EI/qQamkz5nguK
         SvgNur2XKhyhnp62JWEKRrwmNkypYiWK54tzfDuWCIcXu1EaiFan/cugBdUmhskV60Nl
         NBP2Vkmmi5O1ec2I4p4Pq3zEW1OVuTFOi5QwDyPMNnWHwG+zlgn1hzmGoFuL07hfnHrx
         UzEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p+taEDuk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uer1bxumzNnZpJ7YlYb02fmd8Q23o4KGrFKdsEpxDAc=;
        b=Ujzp/5Q28g7UxA2NaDyXO8hCNuUzSP6XFJRarhLOauWfxXZz4NABRtUIM+maanGS7h
         Nw5F4dWSfADyMd644RuB9RccjfZ5NIuAyLmIXpUaEwsq5Mk9TuZ8ExAmZ6v+C8yKa/EE
         weCIOmcBuzHyykv9zpmLuG5+yS4iIrtZ1/SOJBHrndTlgDVM4/BUiuyFsmD1KWmAQP3D
         dpjaK/vU/s+VAtM+cYHrMrBmj5leBCJh750kJjSK5yN3/bU5hjYJrNacJ4hCyoKEDuoW
         PANZ3o9JJ2pezd8Nd2zcI/+x70yw3mKc7Kq0DVlml6GVGoOTO/azKAuYunDgHggVSoqG
         Wu8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uer1bxumzNnZpJ7YlYb02fmd8Q23o4KGrFKdsEpxDAc=;
        b=dL+zR5WJWlp5kmMExqU6ZEZu+198b19rI10c/XMPlVmT2RhBGrCHq3HefXA++/Rk8X
         zWO8YwsoVxbhbXvIVIMDPrBdCG6OfTc/gWj8oQt+sWP/6RKkL06fwe8wnKn3WCjEZf+t
         RyBkM/zbOfy1P5FSit6HK3W4WIMRz86jKoQMIrKRQsja5ps4h7bNFBy8QYDFBcmX55JH
         WoOISWnx+9atmwcFJVWSga9WfRTnKyox3rGmQCoC0fV0n42YhqPKNyOxqj6QHf1snMCZ
         ILDw+Z5ZRjkqehHAL0vYVCBnpBKbJl6tZCvjbAD/eF1q85kIsRkdZ6LDkHbA9EwGtK1U
         FaTQ==
X-Gm-Message-State: AOAM531oxRQjoy1zNZrak6FObcEM7dlwoG8JgfJxLSDikM5agMsV1z8A
	ZpdqxEaq/Ghfo6mTlk0UcK0=
X-Google-Smtp-Source: ABdhPJz3z5EUz/Ibxh7mqMAW5o1x/fX/2l4fdJrJvamrrna0SZdFlTc39aGaU2lo36c/ILRMntrVeQ==
X-Received: by 2002:a65:6089:: with SMTP id t9mr46526155pgu.236.1594142257785;
        Tue, 07 Jul 2020 10:17:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:658c:: with SMTP id k12ls1720460pjj.3.gmail; Tue, 07
 Jul 2020 10:17:37 -0700 (PDT)
X-Received: by 2002:a17:90a:71c4:: with SMTP id m4mr5622507pjs.178.1594142257418;
        Tue, 07 Jul 2020 10:17:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594142257; cv=none;
        d=google.com; s=arc-20160816;
        b=fjU62s0VvsQN95waDnAtNAk8I5DarfbE0iCMAEyU2N7SyrhhXbxGCHZOqTI+rfYTJU
         5ifJ6+TinfXJpkOyPyPBU7Sx3hedmeqWTq3bLowt9AZ3aYuMC8HEkmH1kP06/tIgj7nS
         /3rsxs2MjPNiRXKZFZ52E9T0zwOlVxU8m3rhlPmwKlA3JkP3xB07JdAwegGkRGneEKFX
         lMr54eRXRmiCwNndFh6vcnpzrC1G6omqLrgnARXJ/wrhqjKS4lGjEEa9EDqTj8hNpZJ6
         agrQgdqED5cH/4gSSsxQlOYIn8/RneVTxb1PvO07SYCOrhE5kbzT+EGsJMU5E+04ztsQ
         THMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1l5foeggCPnvjxEutFU8wFN3OGjiNb8LVGar6Q0E2bk=;
        b=DGkEdeLuGupX5PHCIFjFlqz0yRg138JIwBoyPi9aVw0H57NlCyVtZ2Og7NvBHwwZzY
         7YwHngEB4VLN91pU8jmYWv8OT7GIrZwPTpvF51ixZT8k/0t9iwOOe3TYPcpn0aKVwl26
         y9DI+TTW+1yaG14s0e9r/UsrheympbrNXRoDziW+EAU1nW5HciRGXhTcqsha5Vo56V/r
         o0PcnNuHKCDwn/465uuR8BNt8Cnn/BEg6W0/pUJDz6/IAWzGS0CnJLsRDkm2fKLIu+oz
         8UXcu8UM8hmoPT50LX2WI3zAe4uV2ieRasiUH89T2AzLVoZs8OFOeRXKqQNVb+0/SG6z
         9s4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=p+taEDuk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w2si1134234plq.3.2020.07.07.10.17.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 10:17:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id k4so2837206pld.12
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 10:17:37 -0700 (PDT)
X-Received: by 2002:a17:90a:21ef:: with SMTP id q102mr5585509pjc.101.1594142256771;
 Tue, 07 Jul 2020 10:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
 <20200629232059.GA3787278@google.com> <20200707155107.GA3357035@google.com>
 <20200707160528.GA1300535@google.com> <20200707095651.422f0b22@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200707095651.422f0b22@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 7 Jul 2020 10:17:25 -0700
Message-ID: <CAKwvOd=z0n2+1voMCzC6Hft9EBdLM+6PUi9qBVTVvea_3kM91w@mail.gmail.com>
Subject: Re: [PATCH 00/22] add support for Clang LTO
To: Jakub Kicinski <kuba@kernel.org>
Cc: Sami Tolvanen <samitolvanen@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org, 
	X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=p+taEDuk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Tue, Jul 7, 2020 at 9:56 AM Jakub Kicinski <kuba@kernel.org> wrote:
>
> > On Tue, Jul 07, 2020 at 08:51:07AM -0700, Sami Tolvanen wrote:
> > > After spending some time debugging this with Nick, it looks like the
> > > error is caused by a recent optimization change in LLVM, which together
> > > with the inlining of ur_load_imm_any into jeq_imm, changes a runtime
> > > check in FIELD_FIT that would always fail, to a compile-time check that
> > > breaks the build. In jeq_imm, we have:
> > >
> > >     /* struct bpf_insn: _s32 imm */
> > >     u64 imm = insn->imm; /* sign extend */
> > >     ...
> > >     if (imm >> 32) { /* non-zero only if insn->imm is negative */
> > >             /* inlined from ur_load_imm_any */
> > >     u32 __imm = imm >> 32; /* therefore, always 0xffffffff */
> > >
> > >         /*
> > >      * __imm has a value known at compile-time, which means
> > >      * __builtin_constant_p(__imm) is true and we end up with
> > >      * essentially this in __BF_FIELD_CHECK:
> > >      */
> > >     if (__builtin_constant_p(__imm) && __imm > 255)
>
> I think FIELD_FIT() should not pass the value into __BF_FIELD_CHECK().
>
> So:
>
> diff --git a/include/linux/bitfield.h b/include/linux/bitfield.h
> index 48ea093ff04c..4e035aca6f7e 100644
> --- a/include/linux/bitfield.h
> +++ b/include/linux/bitfield.h
> @@ -77,7 +77,7 @@
>   */
>  #define FIELD_FIT(_mask, _val)                                         \
>         ({                                                              \
> -               __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_FIT: ");     \
> +               __BF_FIELD_CHECK(_mask, 0ULL, 0ULL, "FIELD_FIT: ");     \
>                 !((((typeof(_mask))_val) << __bf_shf(_mask)) & ~(_mask)); \
>         })
>
> It's perfectly legal to pass a constant which does not fit, in which
> case FIELD_FIT() should just return false not break the build.
>
> Right?

I see the value of the __builtin_constant_p check; this is just a very
interesting case where rather than an integer literal appearing in the
source, the compiler is able to deduce that the parameter can only
have one value in one case, and allows __builtin_constant_p to
evaluate to true for it.

I had definitely asked Sami about the comment above FIELD_FIT:
"""
 76  * Return: true if @_val can fit inside @_mask, false if @_val is
too big.
"""
in which FIELD_FIT doesn't return false if @_val is too big and a
compile time constant. (Rather it breaks the build).

Of the 14 expansion sites of FIELD_FIT I see in mainline, it doesn't
look like any integral literals are passed, so maybe the compile time
checks of _val are of little value for FIELD_FIT.

So I think your suggested diff is the most concise fix.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dz0n2%2B1voMCzC6Hft9EBdLM%2B6PUi9qBVTVvea_3kM91w%40mail.gmail.com.
