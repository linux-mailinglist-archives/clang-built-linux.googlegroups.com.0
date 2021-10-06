Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBBIOX6SFAMGQEU3I36EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 16971423741
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Oct 2021 06:52:50 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id r11-20020aa7cfcb000000b003d4fbd652b9sf1419809edy.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Oct 2021 21:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633495969; cv=pass;
        d=google.com; s=arc-20160816;
        b=l9Jl/Q6l+WISDu1rG8yxNHzaG9zuf3jZKNGB3Bo/B2y5JjTzj60z3t/RUri7r6pXUp
         zVkmL8l/lavCRVoksmFnIvReYBJ0bPJMvUYxk5J47LS5oMaMqF4gtaMly8tI81LtORPD
         aeg/W/ng0/VzbSXnECgq77mAR7sK2D7LJ8ZxRWAF72+mw7n8vGWPyHLTKOnE/TRZbLaG
         Y+6aQ0ZMbuMd2YgD2pNdWZpK0nuV4ASTfFj9eQ7zPBxcdHvuO2nPrXj8qVBHdn4I1Sr4
         E14O9Ymd2E/2m8g7ovyLkZHyO5pBJ4X+j6brwuD8BEUikvWLCENoSRCap8+Bw9QL8dxJ
         ISJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3LIOiBwEpolHDApIAc5f5YCy+NKv+6QOcPModEMyTl4=;
        b=VH8qEulcSIINmU/Jz9fDMaql0j7oAaP3wyDdsahlV5ipblPKYoV4Ceqf/q1uxc78sk
         VyoQBysxYMtm9HYCY3vvJXqb4nazg4i5JjGWDUVX/NtbozEftLD7IOV0aVRJ23Gc8KSJ
         5c8LeEc3+mRJobn9bkA1xTe2pYdQIE8/M+XoFZV4zTCBMendrNOFpfj6F1VV6jfpP1+H
         FPaEIwliuRs0olOaILKfHOJmx1QKX/JxEvGsewhPCYpsG2n/ST5+vkrw56zO1Nh9SqDR
         ubxv8Xmmacti8NrCK7k1f/FvOpxS94vXawu/Z1UI6sN2n5yc3aXcdgYqUxflBnTk6V2W
         mSUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=CaOWAOrw;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3LIOiBwEpolHDApIAc5f5YCy+NKv+6QOcPModEMyTl4=;
        b=Lyt+d0ix8B7Xi5xiCT4T2EdgBZUTsV6tEyCeep1qCdkxB0TcpH1vveZvaLgwaJYn9H
         vHwYu4q4SMYlSE2Y2sYkOrVDK0lJw2ztR7By8MLPVbaoVIRENPFuLqPhImjhBojhTj66
         KqXUX7ZKmZgaGu2D2lMDhM0rfZPDLuicFzvqvDSllJYPIKhvrZrc3l2N0u/ND8f//UEn
         xpM8ovWcW4qCo5A0IKfLkS+QceuTcdBpxwj2mVTbZDn1XweSXaf5dX9tHsvD4GYEu7EB
         4sN6K8Cwer363abVq93osJYWyjJLlx2eSux3pDPLNyQooWMODtk1asLPDgs+sEwjldSq
         kQ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3LIOiBwEpolHDApIAc5f5YCy+NKv+6QOcPModEMyTl4=;
        b=dYXL7y44fcHsX+8mZG6VMTSTNwfM3iMXtGiiEVZg3q+Uk8Q/Bd6rUns7LYs6B+rHJb
         zuLbltmCPydWV7UBDkKwuoXkHyrNJV4nszl6E+bbR7yS3RyxeJMwNuY9Y5lSIvjASySt
         lwHXOTF5UjzWd6ETJjlESkLXPDY+l0beBqhuhl6rhRL3S6lsGGdjM5wrJZnLfcMSaRS/
         Mo/Jk8A5UGI4PB0+8OWe/fphHno7Nui+JECZiAKQozLqdsc7y8fXQa2GIXAQUnjWnFap
         FxnmlP5RvQSxfLbnELTRy+aCID7Vz8ptH75voybUcKtuKlSE5H3s0+lAtulEthK5wkdP
         +/+A==
X-Gm-Message-State: AOAM533KFk6YNqvUIr4PzUml2lySGYXCyhZZ3gg84MpKmcyCW71J35Qn
	S2HvkqzQ/DGp5VKiSZINed4=
X-Google-Smtp-Source: ABdhPJwOl8DPpZd0WSoLoU7kHwdZx+GHe50VDJzBzOz/08NBvrfy4xYQwXdaQesWEU+siT6Z+201HA==
X-Received: by 2002:a17:906:2a8f:: with SMTP id l15mr20601695eje.156.1633495969829;
        Tue, 05 Oct 2021 21:52:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls6525392edt.1.gmail; Tue, 05 Oct
 2021 21:52:49 -0700 (PDT)
X-Received: by 2002:a50:dac3:: with SMTP id s3mr31607188edj.322.1633495968954;
        Tue, 05 Oct 2021 21:52:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633495968; cv=none;
        d=google.com; s=arc-20160816;
        b=KvYkexOup6/lR1aZjurD6lrdwP3gpQaf5QPPUkiBPHAZBFpZ03llc0y8LGxGPhAiM6
         9XEROg1hz53liT1FITl6xUaMGtAntz5TWWgfxoVDNA7sM94cHE2POAjWeGTRV8ILy/0/
         4e5zfCGXHdqlGZlqC0EX6WQ2S3COmwPeMYoNQvI251VjyeRxqJsCY2jBOrHCFnLE10p/
         KIf4hBe+YxAOVYm3OoEzUViKO9SSw9jqI3GJbglG0H6db5vSL3pwAr1sGoOBIqXTLGk+
         sfV6eaiC2ytU7ET+d6vUkvSiKlctd72BItcHiGb0Hg8QkXjl2hmgKKEhdihl6chrJr8d
         KzPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3KNLEP17J4fGFGePafL9e/em5qLyI4/H75ODeeqFPy4=;
        b=OG9vDs0GGTpikT+PAAPLw6ATc5JXjnloFlxK1YdjexA3TWigyUa80rmj/viah2kGfA
         XHsEXoX3kR0H7jn2QzugbZX6CB/AEGL3UiVt+MqnekuZciTgfI0MvvjE9UMJp3Skvloj
         u0wpF6kR07RfdXJLb4wybdmETwBBvmUCrsN8oKvFoV51cMmPuRXSOeucFeHT8dTv6Suc
         vYMII++61WfkggMSWY0zn9rMz4FO9xY1cNI1tp7k3OYSx9em8RyQawbPQSclHwaHMfzU
         jqMi95XjKzPIzLb8E6Cibmv3h55NzBKBbI5wrQiQ4RTzoUn5onH9+jtG6v8XYtcfE2Gq
         JD+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=CaOWAOrw;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id 6si464016edx.5.2021.10.05.21.52.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Oct 2021 21:52:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id n8so5001643lfk.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 Oct 2021 21:52:48 -0700 (PDT)
X-Received: by 2002:ac2:4f01:: with SMTP id k1mr7561021lfr.157.1633495968423;
 Tue, 05 Oct 2021 21:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <20210930222704.2631604-1-keescook@chromium.org>
 <20210930222704.2631604-5-keescook@chromium.org> <20211005184717.65c6d8eb39350395e387b71f@linux-foundation.org>
 <202110052002.34E998B@keescook> <CAG48ez19raco+s+UF8eiXqTvaDEoMAo6_qmW2KdO24QDpmZpFQ@mail.gmail.com>
 <202110052056.F09CD8A@keescook>
In-Reply-To: <202110052056.F09CD8A@keescook>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 6 Oct 2021 06:52:21 +0200
Message-ID: <CAG48ez30MS2sNQX1Sb-MDF7SbLEbD8p0ncOvQteyj38fygG8bQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/8] slab: Add __alloc_size attributes for better
 bounds checking
To: Kees Cook <keescook@chromium.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, Christoph Lameter <cl@linux.com>, 
	Pekka Enberg <penberg@kernel.org>, David Rientjes <rientjes@google.com>, 
	Joonsoo Kim <iamjoonsoo.kim@lge.com>, Vlastimil Babka <vbabka@suse.cz>, 
	Andy Whitcroft <apw@canonical.com>, Dennis Zhou <dennis@kernel.org>, 
	Dwaipayan Ray <dwaipayanray1@gmail.com>, Joe Perches <joe@perches.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Tejun Heo <tj@kernel.org>, Daniel Micay <danielmicay@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, clang-built-linux@googlegroups.com, 
	linux-mm@kvack.org, linux-kernel@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=CaOWAOrw;       spf=pass
 (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::12d as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

On Wed, Oct 6, 2021 at 5:56 AM Kees Cook <keescook@chromium.org> wrote:
> On Wed, Oct 06, 2021 at 05:22:06AM +0200, Jann Horn wrote:
> > On Wed, Oct 6, 2021 at 5:06 AM Kees Cook <keescook@chromium.org> wrote:
> > > On Tue, Oct 05, 2021 at 06:47:17PM -0700, Andrew Morton wrote:
> > > > On Thu, 30 Sep 2021 15:27:00 -0700 Kees Cook <keescook@chromium.org> wrote:
> > > >
> > > > > As already done in GrapheneOS, add the __alloc_size attribute for regular
> > > > > kmalloc interfaces, to provide additional hinting for better bounds
> > > > > checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> > > > > optimizations.
> > > >
> > > > x86_64 allmodconfig:
> > >
> > > What compiler and version?
> > >
> > > >
> > > > In file included from ./arch/x86/include/asm/preempt.h:7,
> > > >                  from ./include/linux/preempt.h:78,
> > > >                  from ./include/linux/spinlock.h:55,
> > > >                  from ./include/linux/mmzone.h:8,
> > > >                  from ./include/linux/gfp.h:6,
> > > >                  from ./include/linux/mm.h:10,
> > > >                  from ./include/linux/mman.h:5,
> > > >                  from lib/test_kasan_module.c:10:
> > > > In function 'check_copy_size',
> > > >     inlined from 'copy_user_test' at ./include/linux/uaccess.h:191:6:
> > > > ./include/linux/thread_info.h:213:4: error: call to '__bad_copy_to' declared with attribute error: copy destination size is too small
> > > >   213 |    __bad_copy_to();
> > > >       |    ^~~~~~~~~~~~~~~
> > > > In function 'check_copy_size',
> > > >     inlined from 'copy_user_test' at ./include/linux/uaccess.h:199:6:
> > > > ./include/linux/thread_info.h:211:4: error: call to '__bad_copy_from' declared with attribute error: copy source size is too small
> > > >   211 |    __bad_copy_from();
> > > >       |    ^~~~~~~~~~~~~~~~~
> > > > make[1]: *** [lib/test_kasan_module.o] Error 1
> > > > make: *** [lib] Error 2
> > >
> > > Hah, yes, it caught an intentionally bad copy. This may bypass the
> > > check, as I've had to do in LKDTM before. I will test...
> > >
> > > diff --git a/lib/test_kasan_module.c b/lib/test_kasan_module.c
> > > index 7ebf433edef3..9fb2fb2937da 100644
> > > --- a/lib/test_kasan_module.c
> > > +++ b/lib/test_kasan_module.c
> > > @@ -19,7 +19,12 @@ static noinline void __init copy_user_test(void)
> > >  {
> > >         char *kmem;
> > >         char __user *usermem;
> > > -       size_t size = 128 - KASAN_GRANULE_SIZE;
> > > +       /*
> > > +        * This is marked volatile to avoid __alloc_size()
> > > +        * noticing the intentionally out-of-bounds copys
> > > +        * being done on the allocation.
> > > +        */
> > > +       volatile size_t size = 128 - KASAN_GRANULE_SIZE;
> >
> > Maybe OPTIMIZER_HIDE_VAR()? The normal version of that abuses an empty
> > asm statement to hide the value from the compiler.
>
> Oh! I hadn't seen that before. Is that better than volatile in this
> case?

It forces the compiler to assume an arbitrary modification of the
value, but doesn't force allocation of a stack slot like "volatile"
does, so it probably generates nicer code? Not that it really matters here...

It also has the difference that you can explicitly specify where the
compiler's analysis should cut off, instead of just doing it on every
access to a variable. But I guess maybe in this case, that's an
argument in favor of "volatile"? I don't know... I guess maybe
"volatile" does make sense here.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez30MS2sNQX1Sb-MDF7SbLEbD8p0ncOvQteyj38fygG8bQ%40mail.gmail.com.
