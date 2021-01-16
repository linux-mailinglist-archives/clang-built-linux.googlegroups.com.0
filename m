Return-Path: <clang-built-linux+bncBD63HSEZTUIBBIFLRSAAMGQEWUVQCJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9E32F8DB2
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 17:34:42 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id y187sf8545217pfc.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 08:34:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610814881; cv=pass;
        d=google.com; s=arc-20160816;
        b=a48tFYUCna6xciMhl38O3MfdlTdrAxAyKDt0YrhBx3Wg9vq3H6LXdvLqZP70j+uj9U
         YQr7TTX3XxUbKUiuzZqLPRabaVMK2yzMEbbhuMVoncN4e+YYFTKv5qK9W82PacvJ+C+b
         ktYj9zpBf8YaO4n0+bIuMNdnUNamHVyzF99VfEdEcftHL9+UmpGwciDfD8/hwBgY+Hs/
         6IlP75f+CJMsI+5JhI2WWJjtan1kqZJwm4xwII7HC4OhRTtCJwfH9XLWXqqcQQfRkN8Q
         JTB/RJRn0OPVhbNq6FHyRkai+dNlzgpUtjEnfQYTnZC4l4Q785zLYV/zmMiFV9TD6z+B
         WQ2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=fAiklhoL8NDhKyOLGOf+9xgR55t1RCzZyhRAfcSmpBI=;
        b=RATSLBxuCg80oW/6S2QF5yFoFrHisdpInAMyGR5hrBIbD2XtDgMbMih1Ez7/vVz/J0
         7s7P4VoawWJ4YYSSgdfMBx9kn9HUS1Ymecy5p+xLtSVo854rstdcUnwKZ6vXqHCpkeFx
         MJp756rNF0/hb6hZSdVuF05/4V7qsKQraAH3BykzewehHCSXFB27hrVdcobzuUEl8GCU
         24VqucPzSmRDjhkAnre2C4JpdJ0b6NUQ1EaHODWSLiZa29G/FMdlBlqpydbcj/pZGRP6
         BF/oHHOnZikyQEPmxOuRpXo/+RXqmhVW7joBc4uK6Tp9M2h9buP32F7aucfSfbjyD83j
         sPkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UTwCnHtV;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fAiklhoL8NDhKyOLGOf+9xgR55t1RCzZyhRAfcSmpBI=;
        b=mQJ2DP0B+RPiAFxViNKjZZEWoN9OJ44IbRK7A0W7Kql+AKfJVFoTKSdgwpofzH6Tap
         +L8AxwfhhOdVZdOOy2ZGHgFzlUTFN9kRQpmix9+fWGcr44sGXWTc3RX/PmSccrz/MoAM
         aHgdFCKamMxH5rSgBl/C4hsCpWTSDxo7aO+0Vuv1i0dN875J1H5JN5yw3PkeB4F/OEIL
         6/B13vjVcZPb95btGPvbb0/vBh9pmxgDZg1C2x0CwYLW18RxV98LiDPen+JLCzepbbu0
         2aLbFWtSv29StfL3uQBgU95paub/hL8RHEG+d8EMAltxACJk1dcAJ0Kiq9lAUjGbgbXF
         KWSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fAiklhoL8NDhKyOLGOf+9xgR55t1RCzZyhRAfcSmpBI=;
        b=UXhq6iS2J3IQYmiZHkRzFftza2IXq2qk5igcc/q+4B8FZTAP1ezbBaLgmvm1TKqsmR
         8+TZIVEFmdacT2G2gk2CmxyHFwF260rmMv2kS0QLcPJsMGUG7xX5uoivt+GIIAL5Z0O+
         x7ZIhOfHJ3ArPxWLI0G37mVH6YJ1L90B6w1pFXjfLqt77o8K6AQTYFvSG4GMQNHRhTN/
         bQjO1K+Q+2UodTv9kSY/bc2p1whS3QuS2s2/VI7fMf3Y91ra7qd4x9/AktzkdeUtCBkm
         mquHS6dhOFx2bEv7rq+B3Km7tD6wWiklu9YaG0wsJFPN65y5rS8c7vOzH3MQSemJ/TrS
         yjig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jr6E+ID/lnu7PNV+NNtq+OS2liMEoWNpuSVUwrm6x3BR0Ceax
	zHlnYndOvnAppjZ0m7256XA=
X-Google-Smtp-Source: ABdhPJz3Z8N7b0KoaxpasgvlwVxlq1mP9YcJAxHom95RaLc6Z8lSflGtTxiQXrGj9jw/ZSVxhtBFiw==
X-Received: by 2002:a63:643:: with SMTP id 64mr18114482pgg.422.1610814880893;
        Sat, 16 Jan 2021 08:34:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7614:: with SMTP id k20ls1150009pll.5.gmail; Sat, 16
 Jan 2021 08:34:40 -0800 (PST)
X-Received: by 2002:a17:902:a5cb:b029:dc:2706:4cc8 with SMTP id t11-20020a170902a5cbb02900dc27064cc8mr18045294plq.62.1610814880290;
        Sat, 16 Jan 2021 08:34:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610814880; cv=none;
        d=google.com; s=arc-20160816;
        b=EOfrWZDZXuDZR1UQRiygicSWdN6eqAMBGg9n303ZIXOEdn8sWHg+X7Pf2dE0EUcqa+
         SdzSr18WscpmKdadX1IgjYqdqhhfY8MqJ5jgeKdx1KfeWUoqUtzZnxihWI0g59J6wgf9
         lbVuKZ/DiDdNdUS2uooV25Mdmiq0B2ES+oxbQZhNdZEx6Num3qv4oHm3bLTZhq42UBsv
         sXy7WGjeaMp8/INFQyjjMVz7QfXxWya+dV0xYEmZOeWYxQYQ4+sjIC+rj+QxRAuqGlNK
         /MujwJZ1dujYJHd5d7rdPi9Zu9Vphuu2wkSAxyoLToSZPO51iaKkXSDxqoUArW0bjV5B
         moTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7CO2WWfCq23CXaO1FckbzcIRWfsj141sYPpEvfVXS+M=;
        b=p9zYagO9R8GVgBHjyx9lEGQgGMn353l86Pz/algAg5j9/AMPm+HtriQnmJXBVGAsYY
         OO35QXJ1LU4lF4A9FWbQRYszlAiWEshO2DZcTsG80CamRQUh1+ofa+jeMu3HO4cnT3BC
         3rw3K77C8v/5V2rUWE8gkJ5/y4u2TUN/RFQselvrxBI+TK7uZjPT/O3oJC8hgAaVQsu0
         XCrzyvr44N3pQ9IsgdvNnBubSh2K5jBTPgkAF6GM9wKKXpmZ26rciNH5euHIHFOmlVmB
         gpTK6JdzJu4b0CENFldZmSsdRTXnD/6H44FfTvIiRrh84Crck/N3PRnO8dDYuXMFm6H+
         1oMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UTwCnHtV;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d2si925473pfr.4.2021.01.16.08.34.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Jan 2021 08:34:40 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id CBFEB23119
	for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 16:34:39 +0000 (UTC)
Received: by mail-ot1-f46.google.com with SMTP id a109so11868291otc.1
        for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 08:34:39 -0800 (PST)
X-Received: by 2002:a05:6830:10d2:: with SMTP id z18mr12489782oto.90.1610814879037;
 Sat, 16 Jan 2021 08:34:39 -0800 (PST)
MIME-Version: 1.0
References: <20210107223424.4135538-1-arnd@kernel.org> <YAHoB4ODvxSqNhsq@rani.riverdale.lan>
 <YAH6r3lak/F2wndp@rani.riverdale.lan>
In-Reply-To: <YAH6r3lak/F2wndp@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Sat, 16 Jan 2021 17:34:27 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
Message-ID: <CAMj1kXGZFZciN1_KruCr=g6GANNpRrCLR48b3q13+QfK481C7Q@mail.gmail.com>
Subject: Re: [PATCH] x86: efi: avoid BUILD_BUG_ON() for non-constant p4d_index
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Arnd Bergmann <arnd@kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
	Borislav Petkov <bp@alien8.de>, X86 ML <x86@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Arnd Bergmann <arnd@arndb.de>, Darren Hart <dvhart@infradead.org>, 
	Andy Shevchenko <andy@infradead.org>, "H. Peter Anvin" <hpa@zytor.com>, 
	linux-efi <linux-efi@vger.kernel.org>, platform-driver-x86@vger.kernel.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UTwCnHtV;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Fri, 15 Jan 2021 at 21:27, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Fri, Jan 15, 2021 at 02:07:51PM -0500, Arvind Sankar wrote:
> > On Thu, Jan 07, 2021 at 11:34:15PM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > When 5-level page tables are enabled, clang triggers a BUILD_BUG_ON():
> > >
> > > x86_64-linux-ld: arch/x86/platform/efi/efi_64.o: in function `efi_sync_low_kernel_mappings':
> > > efi_64.c:(.text+0x22c): undefined reference to `__compiletime_assert_354'
> > >
> > > Use the same method as in commit c65e774fb3f6 ("x86/mm: Make PGDIR_SHIFT
> > > and PTRS_PER_P4D variable") and change it to MAYBE_BUILD_BUG_ON(),
> > > so it only triggers for constant input.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/256
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > > ---
> > >  arch/x86/platform/efi/efi_64.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/x86/platform/efi/efi_64.c b/arch/x86/platform/efi/efi_64.c
> > > index e1e8d4e3a213..62bb1616b4a5 100644
> > > --- a/arch/x86/platform/efi/efi_64.c
> > > +++ b/arch/x86/platform/efi/efi_64.c
> > > @@ -137,8 +137,8 @@ void efi_sync_low_kernel_mappings(void)
> > >      * As with PGDs, we share all P4D entries apart from the one entry
> > >      * that covers the EFI runtime mapping space.
> > >      */
> > > -   BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > > -   BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > > +   MAYBE_BUILD_BUG_ON(p4d_index(EFI_VA_END) != p4d_index(MODULES_END));
> > > +   MAYBE_BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > >
> > >     pgd_efi = efi_pgd + pgd_index(EFI_VA_END);
> > >     pgd_k = pgd_offset_k(EFI_VA_END);
> > > --
> > > 2.29.2
> > >
> >
> > I think this needs more explanation as to why clang is triggering this.
> > The issue mentions clang not inline p4d_index(), and I guess not
> > performing inter-procedural analysis either?
> >
> > For the second assertion there, everything is always constant AFAICT:
> > EFI_VA_START, EFI_VA_END and P4D_MASK are all constants regardless of
> > CONFIG_5LEVEL.
> >
> > For the first assertion, it isn't technically constant, but if
> > p4d_index() gets inlined, the compiler should be able to see that the
> > two are always equal, even though ptrs_per_p4d is not constant:
> >       EFI_VA_END >> 39 == MODULES_END >> 39
> > so the masking with ptrs_per_p4d-1 doesn't matter for the comparison.
> >
> > As a matter of fact, it seems like the four assertions could be combined
> > into:
> >       BUILD_BUG_ON((EFI_VA_END & P4D_MASK) != (MODULES_END & P4D_MASK));
> >       BUILD_BUG_ON((EFI_VA_START & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> > instead of separately asserting they're the same PGD entry and the same
> > P4D entry.
> >
> > Thanks.
>
> I actually don't quite get the MODULES_END check -- Ard, do you know
> what that's for?
>

Maybe Boris remembers? He wrote the original code for the 'new' EFI
page table layout.


> What we really should be checking is that EFI_VA_START is in the top-most
> PGD entry and the top-most P4D entry, since we only copy PGD/P4D entries
> before EFI_VA_END, but not after EFI_VA_START. So the checks should
> really be
>         BUILD_BUG_ON(((EFI_VA_START - 1) & P4D_MASK) != (-1ul & P4D_MASK));
>         BUILD_BUG_ON(((EFI_VA_START - 1) & P4D_MASK) != (EFI_VA_END & P4D_MASK));
> imo. I guess that's what using MODULES_END is effectively checking, but
> it would be clearer to check it directly.

This obviously needs a comment, but checking that everything lives in
the top 512 GB of the kernel VA space seems sufficient to me,

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGZFZciN1_KruCr%3Dg6GANNpRrCLR48b3q13%2BQfK481C7Q%40mail.gmail.com.
