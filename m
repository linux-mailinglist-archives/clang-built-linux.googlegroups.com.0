Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBWXMT73AKGQE6Q4MXTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 993DF1DEC98
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 17:57:15 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id k21sf8271903pgn.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 May 2020 08:57:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590163034; cv=pass;
        d=google.com; s=arc-20160816;
        b=nhOBTiuDSvSnEGLijplM8WQ1IktlaZMTDx0RWgySIrgauTYogE+yILpFdHy8sM3QLt
         UX40PeNNYD4giZZB17L3CFFCTOJanAsWK+mL/W1MK6/Fkj65PZPCYWhu5ZLER3vAc6fG
         dPOxXeXiJcle9AfADUdPchDDhwNmauAOYkHTCsMhm/8yW59ytWosoNITuSD2bohlmRTt
         BazFRCsdPdNeR1xhS41uXTTx+znysDgph0BFONBGjrhYaL7Ihfr3YwAF5mUEwNnj2p9v
         82ko97OltnNfIClYbJ4ohbkSmTWPsFCQKxxixpToSlffKcFet4zDLivEU8z67i2PVMOU
         trsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=ZQyyzNIMMquFe0iCUHCTCuot88uwFJ/t+C/5jDwGCjs=;
        b=RKOni5R2leVgpTovgk2Qq/djeQlMvQnF0gMCw77+FGkmqoRqSJKw2Kt7P7hr/2fNUP
         8WB+zw/+7WeI1B8XmYKDs0i/Eq2ZRjlKeywZkSmnOIgliDbZ9RZ7AnGp4cYXbhIreal9
         HUWXxeX+nxA9TKbSpzK9wQwA6aXsGjMhGNYTGA+W9ufs1mUc3oTBRvVxqpaInGyD7U8W
         lS7IdSbKA5kPix5nz1YeDDft14/Rp3XF19T3P8Rqj801cW7irNT4rrNB981VL8ZB6Fym
         sWgZKZEo7+opcixSCmyO+1wXUQnU29gaTpHt5GLb578UgG2FDyyGLIrU2/uFe2UOU8eZ
         t3Sg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kDCwQkRo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZQyyzNIMMquFe0iCUHCTCuot88uwFJ/t+C/5jDwGCjs=;
        b=Z3eFxXvoU6++4ip5KjiYf95h0kfkv9DyUVkocCmozmquDYc2jAhFml8vj05YyQJVkm
         SkJraknlpTp6AEXiBpLtb54tEMTy2vuVsHiGePH4bVsZhZTJXIcCHL/pBHMovvU+Z3as
         81Tvh8n3ngImIdcIdSvdYRfYWPjr1lSykGtUlAMOJmocq9aiKWuSwJ6nsR14Ea8ZNQEV
         LE8YfRia4hiFcbJCI16C8KmhFwvezcA12cZh8OL2f4S1AoETjDSp5fdRfCcLpx2uYQPv
         BfMEJFqDJkXSrA1t4UG6klnEc8ZwFJPApj9Aw2qJiX7lwXQHlFhqyW/8C+X5sRWu4sDu
         xTUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQyyzNIMMquFe0iCUHCTCuot88uwFJ/t+C/5jDwGCjs=;
        b=h0l1w7A7hK6kCu9cF2qv6FdNU6yn/zR9e0GxWszk+MCig0c4NhzgHmzivkc93yQyDT
         rpkw0WpogfKPfpvPklyb04wj7c4/sZE8gktbSriCqBCF0fo5ffXbe+FIGOsyMkRDiqRO
         F/7A03AMxzazlCsgn4B8oA5kfzg9R3X2c/1eS/GWmewhA9PD7brzvAhKYk3tfAnHMmb+
         MeFhN3b4nnlRbyH/1ovrG/s235LwgJq3snmsusXC9VM+Uk7m4AsdnqhK1L6+HDMcgVrc
         tq4z4709pSb8h1yv7jBCzx3hAChYCPXKAxZ/8uyLfLh185Qb/PPQAiFJndavSMr1Byts
         vGKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQyyzNIMMquFe0iCUHCTCuot88uwFJ/t+C/5jDwGCjs=;
        b=PwA6WBLmYHH6F+eBV0pzjJT16d6tWVdgBIBmgC/9UYb4Mg2vy1pw28mLDsKx2G3dpa
         xXjKSy/tl1A72FaSdqWF+Jz7q0l0XeuhWdwdo5rVIihG7MJPSnSvq4X+dwVDjVbH+PYq
         NtVubhMAmnggjda5OzACRZDkGVO9/NloeAlk0Y89M2Hn6iGHjyI2X2HF7TFQgkeLq7Q8
         3uuo2W947Epta7liOYzvrOGnXM0AO5Jg+KKYZLCSmNuc6KZcfXwFCwvdCoY1nDrUKq7c
         Rek1M9NLjZuIm0lI/W9FhUQWukadDnKjTs25qMRhISbRKKOVk281Lam4qDhhQEv0mgN4
         ZBsw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531iCxb+5GGFOxIF8rE5XTHIlhj8KqYo7SAIzB1sJWnTeCAmF3xy
	MHS0bypZgS9a5eiPAXU+Zto=
X-Google-Smtp-Source: ABdhPJyfOrShJDVSgpkjdJwbDS1NOtrLFCUlM0ATwBILEkPpMVZWGAScknOuxvFCRzEzZLs9W8zCzw==
X-Received: by 2002:a17:90a:9c6:: with SMTP id 64mr5516606pjo.83.1590163034092;
        Fri, 22 May 2020 08:57:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d049:: with SMTP id s9ls483311pgi.5.gmail; Fri, 22 May
 2020 08:57:13 -0700 (PDT)
X-Received: by 2002:aa7:80cf:: with SMTP id a15mr4802726pfn.124.1590163033616;
        Fri, 22 May 2020 08:57:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590163033; cv=none;
        d=google.com; s=arc-20160816;
        b=sZlrt6fcHlu2PcBx6LXJiiB2TyHhx1tf7iNGHtba4sGz2oZ9Qq7cEhvpeuf/rnVciw
         Q864M69skIllNMm9Jqsu+ex+e9QWRAWgfX0TCZIvVGjvit5GjjbWO5+tK3CAvx8ofUvt
         F+qHpZS7tIskd4khDOeaDxZjwNCDruU8uhcR1si6jotmOJ6EHifB6PewZ5/8qf8k2WEJ
         SzmePmlWRSCdjLEoxdfhXWg6HIfcBmguqOX1/2Y9GtWh9XUBcyUO3fhdwRXHdt11odRn
         P6i41cwP8S1M8cGdctL099q6C2DJGAH3XMgkV5QnVIeMA1frdf1scTpFFSdW4qexq+Iy
         +njg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cxmtd928o4U9CKANHM8fZpYL8Nm8u9626T6YfVfGbRQ=;
        b=Uo088k5FMlnRHWILjob8TrTp9NKyhgX/5MWr9QanjSe/wE7N9kCt/+ba7QIT2OSgMC
         VMeSsQb5iqyVGehsbagxk4WIgTU7WxOftMF8nwFu+yeyxWMB26/9EVEeuVAi/gP6nhh0
         Gb5/GU9jqqaoJbLeaofuqczxTpnDlzYY5VUU0mATaDo1CjjwBfwaNtcU9jQQlkEqZ6FH
         kOCRhKOfhFjKrSyqeQEzjdEYEjT6hkV+S/DbiT8OkRCf/sC7eGFlgka7hSLKeh99l0b6
         oaEMICP2mhnt9MPTKjtiML4/nqQ67RqY0JulD5Qy9YEAkeI7VvRFmf23/EyWPBCDKY8T
         IekQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kDCwQkRo;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com. [2607:f8b0:4864:20::d43])
        by gmr-mx.google.com with ESMTPS id kb2si264517pjb.1.2020.05.22.08.57.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 May 2020 08:57:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43 as permitted sender) client-ip=2607:f8b0:4864:20::d43;
Received: by mail-io1-xd43.google.com with SMTP id q8so10454674iow.7
        for <clang-built-linux@googlegroups.com>; Fri, 22 May 2020 08:57:13 -0700 (PDT)
X-Received: by 2002:a05:6602:2f06:: with SMTP id q6mr3634778iow.135.1590163033043;
 Fri, 22 May 2020 08:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200520182010.242489-1-maskray@google.com> <202005211942.6E5061433@keescook>
 <CA+icZUU58cY31rUYveXAwoQGmJjZf8C_zbBxA+8E5aquWQaScg@mail.gmail.com> <CAMj1kXFOdTcsqZB0jPMXLRYaQJLsHjTRp+_c0DQqDxLkgb163g@mail.gmail.com>
In-Reply-To: <CAMj1kXFOdTcsqZB0jPMXLRYaQJLsHjTRp+_c0DQqDxLkgb163g@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 22 May 2020 17:57:01 +0200
Message-ID: <CA+icZUXmuJ8rka7zvGRV=eb3tdi_ro5R33o=yncGhRJ2DtB5=Q@mail.gmail.com>
Subject: Re: [PATCH] x86/boot: Discard .discard.unreachable for arch/x86/boot/compressed/vmlinux
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>, X86 ML <x86@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, linux-efi <linux-efi@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, kbuild test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kDCwQkRo;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d43
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

On Fri, May 22, 2020 at 5:54 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Fri, 22 May 2020 at 08:51, Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, May 22, 2020 at 4:43 AM Kees Cook <keescook@chromium.org> wrote:
> > >
> > > On Wed, May 20, 2020 at 11:20:10AM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> > > > In the latest efi tree, ce5e3f909fc0ed67e58367b9c56a54c20a51080b
> > > > "efi/printf: Add 64-bit and 8-bit integer support",
> > > > arch/x86/boot/compressed/vmlinux may have an undesired
> > > > .discard.unreachable section from drivers/firmware/efi/libstub/vsprintf.stub.o
> > > >
> > > > .discard.unreachable contains an R_X86_64_PC32 relocation, which will be
> > > > warned by LLD: a non-SHF_ALLOC section (.discard.unreachable) is not
> > > > part of the memory image, thus conceptually the distance between a
> > > > non-SHF_ALLOC and a SHF_ALLOC is not a constant which can be resolved at
> > > > link time.
> > > >
> > > > % ld.lld -m elf_x86_64 -T arch/x86/boot/compressed/vmlinux.lds ... -o arch/x86/boot/compressed/vmlinux
> > > > ld.lld: warning: vsprintf.c:(.discard.unreachable+0x0): has non-ABS relocation R_X86_64_PC32 against symbol ''
> > > >
> > > > Reuse the DISCARDS macro which includes .discard.* to drop .discard.unreachable
> > > >
> > > > Reported-by: kbuild test robot <lkp@intel.com>
> > > > Signed-off-by: Fangrui Song <maskray@google.com>
> > >
> > > Yay macro usage! :)
> > >
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > >
> >
> > Feel free to add...
> >
> >    Tested-by: Sedat Dilek <sedat.dilek@gmail.com> # build and boot on
> > Linux v5.7-rc6+ with Clang and LLD v10.0.1-rc1
> >
> > ...together with one more patches in the x86/boot area:
> >
> > x86/boot: Correct relocation destination on old linkers
> >
> > Next run will include:
> >
> > x86/boot: Add .text.startup to setup.ld (v2)
> >
> > - Sedat -
> >
> > [1] https://github.com/llvm/llvm-project/releases/tag/llvmorg-10.0.1-rc1
>
> Thanks, I'll queue this up.

Just FYI:
It's in tip.git#x86/build already.

- Sedat -

[1] https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git/commit/?h=x86/build&id=d6ee6529436a15a0541aff6e1697989ee7dc2c44

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXmuJ8rka7zvGRV%3Deb3tdi_ro5R33o%3DyncGhRJ2DtB5%3DQ%40mail.gmail.com.
