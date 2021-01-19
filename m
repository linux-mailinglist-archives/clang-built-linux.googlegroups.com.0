Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNVPTWAAMGQESRGESAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id B45E72FC2F2
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 23:05:43 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id k33sf3480574ybj.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 14:05:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611093942; cv=pass;
        d=google.com; s=arc-20160816;
        b=eR97TG0AuGoEPWynFg93QRP44zCDg/cbiBQFnpkj24i88KdfNbBlNASkeSxRpnp/FD
         B+3SJ0tOEbrcdaxqUlJPH6v5sQZzcuHGk2UfIOLVA3wcoZGbuHkfpsf9xblCTEJgxdK6
         JJZR3sFse/9pEk7DKWBonQE3mPT/fIurH3wq1Hokn+C9GXDwYzODxdBXliDd72iznJJS
         IXAZ9EiC2WtN8zM5MtzAL7sjC6yY9g6D0Q4u9E57bHNXqLD5J5M0S6GFYXqNn1VtX8CS
         9TlajvADIW8lQtlrNrcc0yoo9KSzvIyHT7Lr2vtFgYVf5i963bfAZkXd6h52YUK9VroH
         i9xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=q0j+LMGrbD6z4rdnLyRizcwpGBsImGm2nP6uIn13x44=;
        b=uTArMkMQsbe33IkKclgJ2Ddjou9KN1nT2RH3DtZpISKNj5POfFfzzCFfMIAlRcKj+h
         nvZGx3uEJzp9N3WzsJPfMowUjnviVhfneTUpAC6gQ1NhMvBCZMlk3eGWHk5ktxCft5Wo
         R76elJKjxiMC9Vs3BLSss9Kr+r6jqDSNdv58OMxicQm3dpJee05rSki9be1qvVQnKNRl
         LtFkQoN+Y1JHzrjR7gCftz1tpmCvxE2ZpRg2Hb/DAooBzio2gXuHqcTF7UJupAXRDODu
         zH/GOmRAjXo7J41yqOJ/nUwRAhmqWdICTdkjzPQE+ZD2IJtBGPvncNEV0H3e+HNku0WY
         11LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gHAO+OhW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q0j+LMGrbD6z4rdnLyRizcwpGBsImGm2nP6uIn13x44=;
        b=fw4iy4X5kDPtpiDILI0Wy5T8KHMAbVrSFOonFyTm/Ji6XK/wo4JIY9XYn82kq7uxNt
         R+4sVwaC1Vi9EnhvbePB5QrFdC5lY9gEakNbHIhklNaEaC502lRlo0uCvnI6VIqQADzq
         3kMCLiqUkUwdU2ZhlbaEP4LwvdZY8NnEguRAV5H1cLayI+6qdJyJ+DrIzuBUiG+I8Hb/
         fD/vaQJhzQO1HDUP90HFqRA/DWy9U7G3z4kE5OHtBEKMLa5BoZysNQCpOX06RkjIyYZb
         2SCfJeIjDLm89Jhhz3uQ1JTJ1wcNMYkB7d5w/iC34z7sBxPZqHhZjrTQMg7djd1Q1Vta
         R2aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q0j+LMGrbD6z4rdnLyRizcwpGBsImGm2nP6uIn13x44=;
        b=Rm/L4qf5UOuWJrFmGLX8rLxdcbx5VcRPOf61Mx8ZVE+O718avFSZwMjmzGwBodIYcU
         t6BdfutIGEFwoONqT6i7rjeZm6SEa/8wmtrSCfFDmGkoVCtRYUzQK0T7OF+p+nhNdq2j
         mrm7iwq/7tO+l1N8ZtO4tN0zKKH4dCyymg6Gh4PKFzEHD1iMG89URzBcw/hAOpZOg/pi
         Zvt2T5eLqVKZDyg/vnanNuWESc1rx2FAHoXmMahsK6gy1YIDtRBNS5yPeobOVr6eZ7D2
         vZrntjDQqBDXsZSqW8lxBPbH4CHyFIAEIBwrPJnZkej4/7KclevLgAzVIfm0HTWRptnb
         KKMQ==
X-Gm-Message-State: AOAM530UVc4bySFZxKiUpbv1RCma9IExT+sfoW4CvX2jGZ3/4d41mTkj
	WAEhm5RiY1uZD7EPpwpJFlY=
X-Google-Smtp-Source: ABdhPJzgQGr0p5ZXSz3brqAKewFNtL7WkYy8F04elKkUoD81OZjZ8RkaurMz7RctKB4ayBt6FTsijw==
X-Received: by 2002:a5b:ccf:: with SMTP id e15mr9236159ybr.117.1611093942811;
        Tue, 19 Jan 2021 14:05:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:8b88:: with SMTP id j8ls8564521ybl.3.gmail; Tue, 19 Jan
 2021 14:05:42 -0800 (PST)
X-Received: by 2002:a25:b328:: with SMTP id l40mr8640522ybj.15.1611093942463;
        Tue, 19 Jan 2021 14:05:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611093942; cv=none;
        d=google.com; s=arc-20160816;
        b=mYbkDd4Am1FpCcFnM8le+m/GX9ukyxBhIo2QcVgRUXYEDPacJMPSqt5Nf0w+PlJ+WT
         i4UCKa+3pDmVcEgojIjNLV8CNpG7SSsjZ/mCh9tha+G8zCxxaUXMxCTh0JryMCk+/Gyo
         J71rA4iWkutQIXBM64tUbTDNpKyG9AhWE48IrSp2SFdnhvTP3U9ilcEbz2pV/dPy93Ot
         9m8mHOB6rQJ7cp47n8++6FBkzH+XhGslF+xljfMREd2s7CRUIoHt0MZ3D19b40c8fZB8
         2ABEauPG7auU/4wq/+xjAm1nk/zvLU8R9x/pVTaVzCI2RS+t349Suki8yaiJDEkBicu5
         q4tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3VDFmCkUMNPKmHsspsc2TmeFVZbcyk9WVcGlmL8bi5c=;
        b=LTClACgs4FtbCcxIZtPPcnOnRiuV1XK2+d7aiahfLqKTrr75SkSn4CAea/hXbWrb+k
         AYSV8aH6mHYWFSPlfoWRPayxLHSv1YHOsqvjjlyhbwa8wqne9YEX6AFFWu86+YVTbJZG
         h/eH1SzBpGTl4swwbtw5rqqqHE6B9gTBqZ+Pz7d9X8MVX1lypbhOWs9NgpY3laCYY4BI
         M2RzhPZFCNQsKvz8TTzYTqFJUJKYvBBsVRHuZwUM4VvEL2f3BFSttaGSbJ+1RCAo4BLk
         ske7Fzqn1JXh2doXYj2owwvmG3+dSVFZbgoWd3vdiNdSidzc25a8QF6BkDgmfP8tbMyP
         8hRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=gHAO+OhW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id x13si23036ybk.3.2021.01.19.14.05.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 14:05:42 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id lw17so2062657pjb.0
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 14:05:42 -0800 (PST)
X-Received: by 2002:a17:902:26a:b029:da:af47:77c7 with SMTP id
 97-20020a170902026ab02900daaf4777c7mr6951605plc.10.1611093941955; Tue, 19 Jan
 2021 14:05:41 -0800 (PST)
MIME-Version: 1.0
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com> <3dbc2ce713e44e3a9a913db5446506a8@AcuMS.aculab.com>
In-Reply-To: <3dbc2ce713e44e3a9a913db5446506a8@AcuMS.aculab.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 19 Jan 2021 14:05:30 -0800
Message-ID: <CAKwvOdkicQtiY13ey7uUgF9PsHGMYQbaWzYTUcY7GhYWL=xb3w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6 warning
To: David Laight <David.Laight@aculab.com>
Cc: Adrian Ratiu <adrian.ratiu@collabora.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Russell King <linux@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"kernel@collabora.com" <kernel@collabora.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=gHAO+OhW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030
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

On Tue, Jan 19, 2021 at 2:04 PM David Laight <David.Laight@aculab.com> wrote:
>
> From: Adrian Ratiu
> > Sent: 19 January 2021 13:17
> > To: linux-arm-kernel@lists.infradead.org
> >
> > Drop warning because kernel now requires GCC >= v4.9 after
> > commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
> > and clarify that -ftree-vectorize now always needs enabling
> > for GCC by directly testing the presence of CONFIG_CC_IS_GCC.
> ...
> > -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> > +#ifdef CONFIG_CC_IS_GCC
> >  #pragma GCC optimize "tree-vectorize"
> > -#else
>
> I thought that #pragma optimise was very likely to remove
> a random subset of the command line parameters leading to
> incorrect/unexpected code.
>
> As such the extra option needs to passed in as a per source
> file compiler option.

Yes, patch 2 in the series removes it from .c source, and passes
-ftree-vectorize during Kbuild.

>
>         David
>
> -
> Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
> Registration No: 1397386 (Wales)
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkicQtiY13ey7uUgF9PsHGMYQbaWzYTUcY7GhYWL%3Dxb3w%40mail.gmail.com.
