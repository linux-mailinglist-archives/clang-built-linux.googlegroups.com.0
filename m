Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDP6YT3QKGQEID55ONY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id A823D204476
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 01:30:22 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id x6sf12923787plb.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 16:30:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592868621; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Eyoh/b/yE4NoJ3Ge+iFpCI4rfZasgkyd1ruFJvWjfsixQz3NR7azzMxABdFryCLtU
         WUZrFYqyKvhdsOmYAzUx2gJRtI69jFwxxDpYEDOb7UlENv/fNXYEHNbw6ErzIPlKRqNX
         4JkOkk00Lby0tPf/DpwJ6ROB78zhk0cYJTXfFCquyeakxKjdqIvdD0pxF9ejGcQ9aGfV
         KTBGcXYLNA3yZEZg+iLDIqK66O4mohBCXqI5JO/zM/k3Iwn7i+z2oZ3i0NxpO6Um9Xfi
         fAJomDZrYHmFR3jAHrHr/iQJOQ65hwtpEyxR8qztA5a+38aIiHO6bJy/isbMhOGRHpva
         6CLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=Wa3Kin171Py0PutbbWRZpZtMJ9Jk7UmwT0jedZOij2c=;
        b=cskTOTMZOaApp7/mIkFqjKkwXiDMbMAW89ah+C0pFNyj+h9rW0Ct/IyCtNO7E/Tk87
         zfqAZuNufMRnkZDwhVSJVQYcd9ZDRBbP7rDMuPIN9rHA7zgDYKK+Or9GOx900OTDHNjF
         voXkFRwyVmSr/6QkUgFNDoQkDKiezw2OrVtaxjBs9GtK9THJq3MZjhwRiEwWQ1X2xzXJ
         Buunnc2oUBFmxnKg54QkkGa3yk3KnM04I9F1KkCeV2tv5h1Zo3jCuDhOZC0iJiw7mVGE
         53bxta+wW+y4NAsDGcVkeDIScZrZaDVGD+TFb3YjP27P+iPesnhw2CB2zPQQaggrA6NO
         xN/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bUbfuxxz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wa3Kin171Py0PutbbWRZpZtMJ9Jk7UmwT0jedZOij2c=;
        b=opwEQFIEPQj32sTCrPb3EMEju+S8g3qkPVLuoCinGWfPlrEtCu5VGLGXBhEzINf49U
         tfyWB5lDcUuUb0S+ZjRNiidgqN5D38KFhBE/zMespI78bVISflNkF/6cLmeuskQ/64Jp
         shqN927Xbwsbh8wnZJEm8oNtoI8GNbCNKbwL/PIcAdjbq3G7qwNPBVVlcgi8wqi/6Sxn
         mdmY7zz/P/Ic9rZ5TTL29xAAyDZoDziDG7Wg+B32JU5qTZJWn3QdvNEm/oasVmGEVytK
         MVYdJMDyFhGQz4wI3Opm6D21T9XzHgiLCL+/MNuncemsbKR+9xpypCIM5lQl0OH/AdGb
         5lGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wa3Kin171Py0PutbbWRZpZtMJ9Jk7UmwT0jedZOij2c=;
        b=gtJEDfJgo2IvOYLbsbGnyx3xTLKRQ6ldCpoel9hdp17+wnFX4eE3uzO2hduxOcX+tJ
         +ugTHehEl4mjZ0etJ4CkL70+As+/Dx+29yYiaxEe+s8GN9m79Zqr8PtsgR7CX7g0fvCE
         mWSxDHs+D8ruG1fElvJubDnfRm/meB9LjJ4JW/EzIeqOwZ3ZMIrQuCLeqinyvreNzUMm
         5zDQlDUUPOZEUkHF1+s3vYDivdOW64UsZrSh+rRMCDt+T41Zk3eK273Y7N0Nnymwj6ax
         kFcu88u/R1yZhSzKVKaHoY+2UxipwzSvKDiBs82p1jCYzJ1fzhGC1JMpBa5BZE1jWy7f
         lQPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533e7Lqv7+/rt/91W3bUbPoweipCn+CFn5MTgma36AznDwGzl6mp
	vDzON9dRB2l2MvCPcypchRs=
X-Google-Smtp-Source: ABdhPJyiUTDK+TFNTLOTCPo4V6pKmccrbsCwSlAv8Ex+unx6Wu1YYxr4E3asH7vKHvoa/hfihAwMHg==
X-Received: by 2002:a17:902:694b:: with SMTP id k11mr14670592plt.285.1592868621222;
        Mon, 22 Jun 2020 16:30:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls407629pjs.1.gmail; Mon, 22
 Jun 2020 16:30:20 -0700 (PDT)
X-Received: by 2002:a17:902:fe90:: with SMTP id x16mr21395088plm.290.1592868620837;
        Mon, 22 Jun 2020 16:30:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592868620; cv=none;
        d=google.com; s=arc-20160816;
        b=00gIdoshkvVyY4KYoyyQmHPI2ZwouXY5TVcCnHgJA2LvwrV1Q5GqwYm8vkSScSKvyI
         kU3HIi7W1D8P5qYjM9ZLkXX3KPhSNUAMLEryoqrhdskrPB8Xi3loa02ZiSJOCp+w2cuE
         3r+1GVaoE30Q3dUJ72dsWG3k31ngYMFKWmUBoZbKfinyrSu6PaqBTfh9QZmFSyNd/s7n
         vMYotcoixMF2jDXmU9B3XcJAbkNwm0N6NlNhp7QQ1GkXiQty/IpfMGLSyoxmr0Duqi/1
         XiVu//7Dpj2Kf9kql6zONxj5FozMXa97xT3i6f1RaA3WdOuHffBeYApiolbsLLgVvxBw
         hcMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UWqQV2fZB9OmDJeh5A7wKzCKjHubm13ivYyuz+dxo9g=;
        b=nsPJ/z1mUHA5gZIa/C0Eu1e45NVBzXay/QyBMR3CtgeqloaKKZ7KPyHLavxAANtWzH
         GhzSguGR0lcbtW/TLMjrADsyrHgT/hLYnDYEcq82u9K7L9Qui71H3WOYSIhFj8AIzBAk
         o6gkFwUWwbP0SJDOMFtqQRx8bN8jICHynKL7Y1ykgm8q202aig0GVxQqZLxOoXTqm6XW
         adH4e/qyv7MSS4jDBKTN1vlSQQMsrwydnratBJoqgIKmattZeFhQaJ5nmlcQgze97AGh
         AFPiToa+ShBsEC55xTiM5z1PVKPJ2cooCFNjnBKRzp5tpnL9up5VpysWdeYNAE7GR61P
         JjJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=bUbfuxxz;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id x70si877681pfc.6.2020.06.22.16.30.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jun 2020 16:30:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id z5so493844pgb.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jun 2020 16:30:20 -0700 (PDT)
X-Received: by 2002:a05:6a00:801:: with SMTP id m1mr22967569pfk.200.1592868620568;
        Mon, 22 Jun 2020 16:30:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id b5sm14968992pfg.191.2020.06.22.16.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 16:30:19 -0700 (PDT)
Date: Mon, 22 Jun 2020 16:30:18 -0700
From: Kees Cook <keescook@chromium.org>
To: =?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: Borislav Petkov <bp@suse.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, X86 ML <x86@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-arch@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/3] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Message-ID: <202006221629.5C8CF8AE2@keescook>
References: <20200622205341.2987797-1-keescook@chromium.org>
 <20200622205341.2987797-2-keescook@chromium.org>
 <20200622220043.6j3vl6v7udmk2ppp@google.com>
 <202006221524.CEB86E036B@keescook>
 <20200622225237.ybol4qmz4mhkmlqc@google.com>
 <202006221555.45BB6412F@keescook>
 <CAFP8O3KdGc9TtziFX7UzmxA-=wfPzm5oi6NCEwRiyyrp+JD3Xg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAFP8O3KdGc9TtziFX7UzmxA-=wfPzm5oi6NCEwRiyyrp+JD3Xg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=bUbfuxxz;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 22, 2020 at 04:04:40PM -0700, F=C4=81ng-ru=C3=AC S=C3=B2ng wrot=
e:
> On Mon, Jun 22, 2020 at 3:57 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Jun 22, 2020 at 03:52:37PM -0700, Fangrui Song wrote:
> > > > And it's not in the output:
> > > >
> > > > $ readelf -Vs arch/x86/boot/compressed/vmlinux | grep version
> > > > No version information found in this file.
> > > >
> > > > So... for the kernel we need to silence it right now.
> > >
> > > Re-link with -M (or -Map file) to check where .gnu.version{,_d,_r} in=
put
> > > sections come from?
> >
> > It's not reporting it correctly:
> >
> > .gnu.version_d  0x00000000008966b0        0x0
> >  .gnu.version_d
> >                 0x00000000008966b0        0x0 arch/x86/boot/compressed/=
kernel_info.o
> >
> > .gnu.version    0x00000000008966b0        0x0
> >  .gnu.version   0x00000000008966b0        0x0 arch/x86/boot/compressed/=
kernel_info.o
> >
> > .gnu.version_r  0x00000000008966b0        0x0
> >  .gnu.version_r
> >                 0x00000000008966b0        0x0 arch/x86/boot/compressed/=
kernel_info.o
> >
> > it just reports whatever file is listed on the link command line first.
> >
> > > If it is a bug, we should probably figure out which version of binuti=
ls
> > > has fixed the bug.
> >
> > I see this with binutils 2.34...
> >
> > --
> > Kees Cook
>=20
> :( It deserves a binutils bug
> (https://sourceware.org/bugzilla/enter_bug.cgi?product=3Dbinutils ) and
> a comment..

https://sourceware.org/bugzilla/show_bug.cgi?id=3D26153

> With the description adjusted to say that this works around a bug
>=20
> Reviewed-by: Fangrui Song <maskray@google.com>

Adjusted, and thanks!

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202006221629.5C8CF8AE2%40keescook.
