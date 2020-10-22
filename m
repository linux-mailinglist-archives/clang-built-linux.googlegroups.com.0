Return-Path: <clang-built-linux+bncBD63HSEZTUIBBW7IY36AKGQEPLUJGJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 59ED72962B0
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 18:33:32 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id m126sf1417785qkd.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:33:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603384411; cv=pass;
        d=google.com; s=arc-20160816;
        b=drre004hJ80SpfQfltyAiGDGT4/Z43U2Oq9mkXl05/FfhEMSJaKmlVRgNy9eo1hOsX
         QWuOp8wxVuLVqyaxifIoqHXU2kmOdyUPReOU7JQ7FqYRtnml0ToGjXwoa7H7kcpQAQhB
         N5yoWmw1VaJc55jf3QU6UCxxI5LFeIOQapNGDvR6cz8vzcdOh70r+cftc3pGgX7hKw3S
         11zvom8M3DaYbemoxbWnDmmhVdswp5EsPk6tBWLSZF48U2aU2AtsqCueaA+eFcqfbegL
         v8OO8f+PTb075IJpJ2cX+Wj84AHa0a/UrwMfY7HDVov+DxPbSwp9nni1fVPurJykdvZp
         VfxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=tfBoMiU3h/VLLxrKsBSm6idk7RLN+1gMq+NIy6DYoBk=;
        b=FmHD+RFQmiS1fIJCZ7Sb6cw0jIM6xMOBvUgriFJm3fy5cw5m0RYAVPWFlnA8GnPYe/
         gZ7a7MieLao0jvL+lvc89zB8DAov0o3T43ECIS1eAQdY7q0PvHSoJVwfUAXcOq6jg5Xz
         ektqf99aSyrcvNeIMsWqXD71tf3B8kZ+XdPbTLwDCvSSgC9PPu0skz0wqUQ4ilFufm3w
         3qaMzCGFscaO8o//yI3lJtFHJVtrMzDAhJita80u9TbLFvQuQF4EjpPsZXcM3w0fE/62
         srRwKZRD/pky2raAFeviW4xkiuipci4hHR9l0TPA1p1T9Pe0+EC7Qv0lLC6+A2OLK/Vw
         JpFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mdiQveJ6;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tfBoMiU3h/VLLxrKsBSm6idk7RLN+1gMq+NIy6DYoBk=;
        b=tOi6FfTw5LZSaVSMEhCQ6ldZVnQcypkKD/62hWuqtWIKKkU1khEFDL+i7UnFi/KepA
         odNfPEdclh5ebauh6ywCzd7rR7vfDK15SOsYGinW/0rs306a0flk3K20r9VAgV54xDtg
         2CRdNf/09/IgIl1zo7awxv8JuPqRZNQnURS6sJc9FvEDzB0iz17pFwqU5LRg7dJIYpdU
         cAWVNckB/psaYW1LvtKCJIWXP0GNZaXsbXVr+Gvzj/w1F56Rh9bXIUwD5W+B442hK2uv
         zhh/0r6Cfo3bPF7KFQUdgKNiZhiY85I5VAt6X3/72fDXZCy5bCVTNhmuum0w19gJfsmo
         2dFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tfBoMiU3h/VLLxrKsBSm6idk7RLN+1gMq+NIy6DYoBk=;
        b=CG5YyafMe3NmKusEfrgRT1oKGNnyCeDgC57olFBqNrcgC9k6K6hdbnVTicGOLW7lbX
         3NxO8b02xAQig+HfjTvBT9MuW7axCKTZ/gobzkEXZkwuI1uJHfxIo1jDxAUn3YOk4uva
         eBIjayRffWKx1IHzpoFDtNZWVPJVriyQbHOszrBPTGYlzE4pVzML5HsK1lOBVgRy1FXg
         eQAbJxvZ2+Xb5idkW2fS1x6ObOGiAbiKRWqN4mDnvwZ6qK+eEB9YPmjwoAE7COoCxF1E
         2+OKPdUP6igfp7Es5EDHeoR3pkSPo7V9cPRgxS0qkMvfuZR4zdYtAM0Afto2eimZef+X
         vYwQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303VfytESZMRrYrUVGr4MmrW33+kEai/oXsnRZCPVj/pqEFtgDS
	XKA7BiQ/I5wvDljtKVt4Voo=
X-Google-Smtp-Source: ABdhPJxHZTaQB1YZwf8qjqn0yNWERR48Mf6m/RB8XTJDuavxRGCn9rnc1MQgciCEe8uMF/2Kmu42TQ==
X-Received: by 2002:a0c:b447:: with SMTP id e7mr3279526qvf.1.1603384411226;
        Thu, 22 Oct 2020 09:33:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ad0f:: with SMTP id f15ls1090027qkm.8.gmail; Thu, 22 Oct
 2020 09:33:30 -0700 (PDT)
X-Received: by 2002:a05:620a:15c7:: with SMTP id o7mr3245789qkm.262.1603384410702;
        Thu, 22 Oct 2020 09:33:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603384410; cv=none;
        d=google.com; s=arc-20160816;
        b=z3TYU/f12MBGSQNvlFngX3r+vvLUIAd+QF5o2NjQJ4hFuXOaM5iG15oVBsG4Ylsq5D
         q2nAmfec5/kr4dmZkUZmbbY1NwO1nV6IwaLDzuJUX3fqlUC3VLSgcC1EW8qkXcwkSUaB
         HlJS6UzyZT0MZnnBOXR3TyYflISPWpEKW99iji6IRRMEDSI13yhVg8g1I8+VboiotkVv
         VKJYY2va/8G5Rd+Uqi54aWbyjiPK27LVdS6+78GSu3SctX2UbqCCH7vCaWaWNKa60wiL
         R2xwQhO6cc7CvLpai5HTw2BsFiQiEQeGaCfxMY6FQM8DKlyeoiemKSxhx2EWlbksLgYD
         CAyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yjlievbwMhWP2a+EGbHYEUT4cuA9WWnZ6pdHTnwF6P8=;
        b=pCRSk6v+tea2XhXq3HEJUOAoEYcD0N495I0D2q9Ip86Jz4if63fLPd8Fz2ReS9VDqK
         7N8JQDgpmkPQRf6DJv30pNDxr+PP3CXmB148WEHm4S5Ow9dbeOszBVFhiBlQuHT0qVBZ
         37BExZTT0cPT/GR5EtMrOMOAsvzmrUrBAq+s6xuMeFS4xu6ek1kSyzTBVsjAj7BL3XGq
         zFq1RoyR1Irg1eZwhGnNCTHtS9dApnqAxXOEzGG16LKQ9aNyVXPNFt+/BaUS8nPtS1Tg
         0jjViZxJb/Trt7dBhwUQ/lsup5LyvKG0trO9pYHroFRxq2OJbt6RkWkdx+sGqE1oMWIw
         YmWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mdiQveJ6;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f6si119773qko.6.2020.10.22.09.33.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 09:33:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4830924650
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 16:33:29 +0000 (UTC)
Received: by mail-oi1-f181.google.com with SMTP id u17so2374024oie.3
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 09:33:29 -0700 (PDT)
X-Received: by 2002:aca:4085:: with SMTP id n127mr2174403oia.33.1603384408423;
 Thu, 22 Oct 2020 09:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <20201021225737.739-1-digetx@gmail.com> <202010211637.7CFD8435@keescook>
 <773fbdb0-5fc4-ab39-e72d-89845faa4c6d@gmail.com> <202010212028.32E8A5EF9B@keescook>
 <CAMj1kXHXN56xmuwVG3P93Jjwd+NxXTYHtfibPWg5TUADucOdWg@mail.gmail.com>
 <1d2e2b5d-3035-238c-d2ca-14c0c209a6a1@gmail.com> <CAMj1kXERX_Bv1MdfafOVmdmDXPio6Uj897ZZZ7qRERbCXYw_iQ@mail.gmail.com>
 <20201022161118.GP1551@shell.armlinux.org.uk> <CAMj1kXGExnUrTuosMpX2NN3=j0HF-8_s1SzLaTyBvq4_LQNT-w@mail.gmail.com>
 <20201022162334.GQ1551@shell.armlinux.org.uk>
In-Reply-To: <20201022162334.GQ1551@shell.armlinux.org.uk>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 22 Oct 2020 18:33:17 +0200
X-Gmail-Original-Message-ID: <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
Message-ID: <CAMj1kXF+2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA@mail.gmail.com>
Subject: Re: [PATCH v1] ARM: vfp: Use long jump to fix THUMB2 kernel
 compilation error
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Cc: Dmitry Osipenko <digetx@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ingo Molnar <mingo@kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mdiQveJ6;       spf=pass
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

On Thu, 22 Oct 2020 at 18:23, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Thu, Oct 22, 2020 at 06:20:40PM +0200, Ard Biesheuvel wrote:
> > On Thu, 22 Oct 2020 at 18:11, Russell King - ARM Linux admin
> > <linux@armlinux.org.uk> wrote:
> > >
> > > On Thu, Oct 22, 2020 at 06:06:32PM +0200, Ard Biesheuvel wrote:
> > > > On Thu, 22 Oct 2020 at 17:57, Dmitry Osipenko <digetx@gmail.com> wr=
ote:
> > > > >
> > > > > 22.10.2020 10:06, Ard Biesheuvel =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > > > > On Thu, 22 Oct 2020 at 05:30, Kees Cook <keescook@chromium.org>=
 wrote:
> > > > > >>
> > > > > >> On Thu, Oct 22, 2020 at 03:00:06AM +0300, Dmitry Osipenko wrot=
e:
> > > > > >>> 22.10.2020 02:40, Kees Cook =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > > > > >>>> On Thu, Oct 22, 2020 at 01:57:37AM +0300, Dmitry Osipenko wr=
ote:
> > > > > >>>>> The vfp_kmode_exception() function now is unreachable using=
 relative
> > > > > >>>>> branching in THUMB2 kernel configuration, resulting in a "r=
elocation
> > > > > >>>>> truncated to fit: R_ARM_THM_JUMP19 against symbol `vfp_kmod=
e_exception'"
> > > > > >>>>> linker error. Let's use long jump in order to fix the issue=
.
> > > > > >>>>
> > > > > >>>> Eek. Is this with gcc or clang?
> > > > > >>>
> > > > > >>> GCC 9.3.0
> > > > > >>>
> > > > > >>>>> Fixes: eff8728fe698 ("vmlinux.lds.h: Add PGO and AutoFDO in=
put sections")
> > > > > >>>>
> > > > > >>>> Are you sure it wasn't 512dd2eebe55 ("arm/build: Add missing=
 sections") ?
> > > > > >>>> That commit may have implicitly moved the location of .vfp11=
_veneer,
> > > > > >>>> though I thought I had chosen the correct position.
> > > > > >>>
> > > > > >>> I re-checked that the fixes tag is correct.
> > > > > >>>
> > > > > >>>>> Signed-off-by: Dmitry Osipenko <digetx@gmail.com>
> > > > > >>>>> ---
> > > > > >>>>>  arch/arm/vfp/vfphw.S | 3 ++-
> > > > > >>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > >>>>>
> > > > > >>>>> diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > > > > >>>>> index 4fcff9f59947..6e2b29f0c48d 100644
> > > > > >>>>> --- a/arch/arm/vfp/vfphw.S
> > > > > >>>>> +++ b/arch/arm/vfp/vfphw.S
> > > > > >>>>> @@ -82,7 +82,8 @@ ENTRY(vfp_support_entry)
> > > > > >>>>>    ldr     r3, [sp, #S_PSR]        @ Neither lazy restore n=
or FP exceptions
> > > > > >>>>>    and     r3, r3, #MODE_MASK      @ are supported in kerne=
l mode
> > > > > >>>>>    teq     r3, #USR_MODE
> > > > > >>>>> -  bne     vfp_kmode_exception     @ Returns through lr
> > > > > >>>>> +  ldr     r1, =3Dvfp_kmode_exception
> > > > > >>>>> +  bxne    r1                      @ Returns through lr
> > > > > >>>>>
> > > > > >>>>>    VFPFMRX r1, FPEXC               @ Is the VFP enabled?
> > > > > >>>>>    DBGSTR1 "fpexc %08x", r1
> > > > > >>>>
> > > > > >>>> This seems like a workaround though? I suspect the vfp11_ven=
eer needs
> > > > > >>>> moving?
> > > > > >>>>
> > > > > >>>
> > > > > >>> I don't know where it needs to be moved. Please feel free to =
make a
> > > > > >>> patch if you have a better idea, I'll be glad to test it.
> > > > > >>
> > > > > >> I might have just been distracted by the common "vfp" prefix. =
It's
> > > > > >> possible that the text section shuffling just ended up being v=
ery large,
> > > > > >> so probably this patch is right then!
> > > > > >>
> > > > > >
> > > > > > I already sent a fix for this issue:
> > > > > >
> > > > > > https://www.armlinux.org.uk/developer/patches/viewpatch.php?id=
=3D9018/1
> > > > > >
> > > > >
> > > > > The offending commit contains stable tag, so I assume that fixes =
tag is
> > > > > mandatory. Yours patch misses the fixes tag.
> > > >
> > > > Russell, mind adding that? Or would you like me to update the patch=
 in
> > > > the patch system?
> > >
> > > Rather than adding the IT, I'm suggesting that we solve it a differen=
t
> > > way - ensuring that the two bits of code are co-located. There's no
> > > reason for them to be separated, and the assembly code entry point is
> > > already called indirectly.
> > >
> > > The problem is the assembly ends up in the .text section which ends u=
p
> > > at the start of the binary, but depending on the compiler, functions
> > > in .c files end up in their own sections. It would be good if, as
> > > Dmitry has shown that it is indeed possible, to have them co-located.
> >
> > Why is that better? I provided a minimal fix which has zero impact on
> > ARM builds, and minimal impact on Thumb2 builds, given that it retains
> > the exact same semantics as before, but using a different opcode.
>
> I think you just described the reason there. Why should we force
> everything to use a different opcode when a short jump _should_
> suffice?
>

Why should a short jump suffice? The call is to vfp_kmode_exception(),
which we only call in exceptional cases. Why would we want to keep
that in close proximity?

> Your patch may be a single line, but it has a slightly greater
> impact than the alternative two line solution.
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAMj1kXF%2B2kJrUaDyA-Xw4rz2bsuEipX3P4JyPrY1bim76LQvoA%40m=
ail.gmail.com.
