Return-Path: <clang-built-linux+bncBCS7XUWOUULBBVNVYL6AKGQETD7NHVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 4207F295379
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 22:32:23 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id v10sf1835504pjk.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 13:32:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603312342; cv=pass;
        d=google.com; s=arc-20160816;
        b=uWKk9nxnw5N+cYAkEnS11Ij26NkZi0T2wvn/zAPFUO1uy5TXel98eXlnyu5oj7NM1a
         7zyWJyU+veo74ajMWn7OSEh8Pd9575u7euCj/ieY0vKb0LTMtoxOx5TrRqnXfwCDTwZd
         IzVXjRTuvyXSRWOBA3jmZAr8JAi3Ep8DwIKdWh/MxXolTL6RPs1BJZNbFJo1COAOfvEJ
         6vF+UrB1oWhMnY3+PyfI70ohXUx5rhh/Gdi9WM8PH2WTReerP75CdKJW4DA84fLu8njU
         OIYDOPfZxbRDwow9re1rbG8Q4Jrh/fsdHSpveH3uOS5XKVEx+3PKdYGcpTYWi0Gjc+cO
         EIMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VHaBtsgR9EugkrxtNYS4nTkKhp3q1JVa8VOsunw6LUA=;
        b=Pz7pDTWf53hkEIeYZLImsiVqHxvgGDrUOB5n/YlnOcP8ilt2grouCVmMe6s2HEIBTU
         bIq9AUNsklsBxMTqFU7Ys7bOPJtw77yDSKFUUSvvsUAvQtgkHjF8wMro76fH6vpJ/JaH
         ywIte72wpet7FMFT9HPN3HxZjRfjA63PI9+P8EtB0r5kU55x/2INh8WxNtXC5D3AZcTL
         q5KKrsidh0Ppau1lY8OpV6s0qBbadU0tuMXYzvt75JDKqCOFQwfWADIhr1wE3KduWUk5
         wTYueol0IXlo+Y/4ls8IcJGT4wPiPAPfnk4ysJl9VN6xyHEVYDhG76ei7NpsO6g0W3PL
         Y7xA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Emippq77;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=VHaBtsgR9EugkrxtNYS4nTkKhp3q1JVa8VOsunw6LUA=;
        b=VBIXMbsfCkAGMylOsyo9Morfb+8ejR+6SCHH0kBFTj4YS2vtrpYbGcEiVTPjdLfOEB
         DnFn8Mxh5VThJcAfQc0MHEkqAP7I03jjGpMNIhg1OQfDZinT3j7Ym+rk0YPNTUXoodZ8
         y7ji7eLHjnAOhMua7WWSQLMKkpH5WkWcc7zUZ+h2xjM4cxhnWB/koHf+srfMyzCSZwqj
         GIe+1kPOhA1XsSUmleJvFhmaxmzgP76A2awpw5xU7ZJNhh+POqeeVEBnDdEfv5LcCujx
         tn46O+bwOhmaw23TTbpF29ysZ6k828AB8CzDil24aORFpF5nIsAHp222X8kgAXg4cZxr
         Hciw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VHaBtsgR9EugkrxtNYS4nTkKhp3q1JVa8VOsunw6LUA=;
        b=TgfaeUrHcE5QnCreQ6RUIFC9N+oHDCIqS1yU4ao1oYLN94zgATEKWfOOhtsqzkgz2T
         z0+omldsktAoLvP+qmM0NnKdHiCI2LbQ2uEdAvIiGjU44ignQXszgyMBV10s5nHsjnQD
         B4/hyV+RW7D5pZYqJMVO/rDkyhQMrOhbGSmvw22JNzRSdnC43XqQaJdALYcHsZjM60gU
         9uSp+zfdNiKNYaNHiNEb9OBWdffdFaW6wzS4puwlQQiT9gXKfHNauFQJgqC9hYdo+k2Z
         dQpXo4cBW5fCgjVoeVKcCBQIfV+OeTLvZA0y2+mEiipUP4it4swGw8iz79XiEC/DPVIs
         5FRA==
X-Gm-Message-State: AOAM531V8t1MO9U+DLXRxet8D/T09b7fJ68bTDR7iA9+qkTRvBzjnjvs
	0f/4z+CF+tf13YC6LTITmwY=
X-Google-Smtp-Source: ABdhPJzAD5k+4lDt6o/bCm1vB2zE1y9Ehyefz5sIx5OC5a6xKLUTKVoIo6MYDZ/EHMLd+wX7H5a9lA==
X-Received: by 2002:a62:aa10:0:b029:155:d56e:5196 with SMTP id e16-20020a62aa100000b0290155d56e5196mr5229449pff.44.1603312341875;
        Wed, 21 Oct 2020 13:32:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:6d4d:: with SMTP id i74ls293489pgc.5.gmail; Wed, 21 Oct
 2020 13:32:21 -0700 (PDT)
X-Received: by 2002:a65:4485:: with SMTP id l5mr4905659pgq.121.1603312341235;
        Wed, 21 Oct 2020 13:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603312341; cv=none;
        d=google.com; s=arc-20160816;
        b=bXKBCD7TO4Zg1wpJOQwRcRjZPCKSDq+7pGIaHKCU2ET+kFsn9GJXTc/J153W56ItI/
         Zmd4u92JJJGtB5FEFAhxUeqwD1J5wCTFHs1s0rIzISmnrdFtgM4NCCnq74IBMzof0MVf
         50F5YgbB/sT7MkBqqsStypP+xEq1Rz6jI6n1m9vnnJ+OcxUAS5AQQVfyrboTUT9xSDnW
         MFeZlPat2fEVeO5RlOtlg9QzCOnBER0kAyLPSqlOpUcCWxQ0zWDMbl4CH97IUmqiyraE
         HrRulqhbH5a4mJIvqBwIFnUpBkRTgL5MbuKjqaDK4OjA7xJpzJdbdH+P0wmWHyjn7yQC
         YKaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZlQ9VQDQ1Y9MZKtPS8PBXAKEQPFLhfcQu+fvrtVUj70=;
        b=PYT0g/THsTeMlMxabbruSmjsS5zAtHmaEcHxibHEKf+X38IQYa7XwW/tjM6jV0AxA9
         I+f4Y/hQGSbVCaoyaB3IfaSpZR63FKBvPu6e5aRT/YbXoDKf0sHOCOG/v7n0u9sWD1vP
         Redl8oigRT13cFLqgADlco2rw9WpGQND4pGHrWNCTNkUoL0KKyhEHLb+daCXh7EwZ2tc
         S4ms9DAap0+OJD+JCvz+RBEtN9Gk0oalnBKoBIWeR2qBiWb8XRtQbiJT22LcOwIc9ulf
         /1vNwl6xN2haVrOMF/CD1FgUnXKv/S2cbum/MPI7ymvHLnBzpdYRpx2aM18LyB+x4ety
         hrJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Emippq77;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id t13si205290ply.2.2020.10.21.13.32.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Oct 2020 13:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id h6so2195599pgk.4
        for <clang-built-linux@googlegroups.com>; Wed, 21 Oct 2020 13:32:21 -0700 (PDT)
X-Received: by 2002:a65:4485:: with SMTP id l5mr4905625pgq.121.1603312340655;
 Wed, 21 Oct 2020 13:32:20 -0700 (PDT)
MIME-Version: 1.0
References: <20201005025720.2599682-1-keescook@chromium.org>
 <202010141603.49EA0CE@keescook> <CAFP8O3LvTkqUK3rp9Q17fmyN+xApZXA8Cs=MNvxrZ3SDCDRX3A@mail.gmail.com>
 <202010211304.60EF97AF2@keescook>
In-Reply-To: <202010211304.60EF97AF2@keescook>
From: =?UTF-8?B?J0bEgW5nLXJ1w6wgU8OybmcnIHZpYSBDbGFuZyBCdWlsdCBMaW51eA==?= <clang-built-linux@googlegroups.com>
Date: Wed, 21 Oct 2020 13:32:09 -0700
Message-ID: <CAFP8O3KzCbFQarDCBbwsV_saQ2stpy69-a1zBY0Jf2u9PnzzKQ@mail.gmail.com>
Subject: Re: [PATCH v2] vmlinux.lds.h: Keep .ctors.* with .ctors
To: Kees Cook <keescook@chromium.org>
Cc: Ingo Molnar <mingo@kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Nick Desaulniers <ndesaulniers@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Emippq77;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::542
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

On Wed, Oct 21, 2020 at 1:09 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Oct 14, 2020 at 09:53:39PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wr=
ote:
> > On Wed, Oct 14, 2020 at 4:04 PM Kees Cook <keescook@chromium.org> wrote=
:
> > > > index 5430febd34be..b83c00c63997 100644
> > > > --- a/include/asm-generic/vmlinux.lds.h
> > > > +++ b/include/asm-generic/vmlinux.lds.h
> > > > @@ -684,6 +684,7 @@
> > > >  #ifdef CONFIG_CONSTRUCTORS
> > > >  #define KERNEL_CTORS()       . =3D ALIGN(8);                      =
\
> > > >                       __ctors_start =3D .;                 \
> > > > +                     KEEP(*(SORT(.ctors.*)))            \
> > > >                       KEEP(*(.ctors))                    \
> > > >                       KEEP(*(SORT(.init_array.*)))       \
> > > >                       KEEP(*(.init_array))               \
> > > > --
> > > > 2.25.1
> >
> > I think it would be great to figure out why these .ctors.* .dtors.* are=
 generated.
>
> I haven't had the time to investigate. This patch keeps sfr's builds
> from regressing, so we need at least this first.

We need to know under what circumstances .ctors.* are generated.
For Clang>=3D10.0.1, for all *-linux triples, .init_array/.finit_array
are used by default.
There is a toggle -fno-use-init-array (not in GCC) to switch back to
.ctors/.dtors

Modern GCC also uses .init_array. The minimum requirement is now GCC
4.9 and thus I wonder whether the .ctors configuration is still
supported.
If it is (maybe because glibc version which is not specified on
https://www.kernel.org/doc/html/latest/process/changes.html ), we
should use
some #if to highlight that.

> > ~GCC 4.7 switched to default to .init_array/.fini_array if libc
> > supports it. I have some refactoring in this area of Clang as well
> > (e.g. https://reviews.llvm.org/D71393)
> >
> > And I am not sure SORT(.init_array.*) or SORT(.ctors.*) will work. The
> > correct construct is SORT_BY_INIT_PRIORITY(.init_array.*)
>
> The kernel doesn't seem to use the init_priority attribute at all. Are
> you saying the cause of the .ctors.* names are a result of some internal
> use of init_priority by the compiler here?
>

If no priority is intended, consider deleting SORT to avoid confusion?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFP8O3KzCbFQarDCBbwsV_saQ2stpy69-a1zBY0Jf2u9PnzzKQ%40mai=
l.gmail.com.
