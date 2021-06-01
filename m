Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBU4N3KCQMGQEHMEB4AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 44AE6397A80
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:13:25 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id 4-20020a6317440000b029021689797ccasf98160pgx.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:13:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622574804; cv=pass;
        d=google.com; s=arc-20160816;
        b=moJq8yGf4ddnwyxMWMbmhezKN5YBmd5fGm2KEalGHOuIT96sy9gE+gOI7U1csrlcnk
         gcG23RcGllwA71inqo6ucBXwEWXkzQgPM/7uqEn67qSpIdYuk70XNAbQ3N0fmm+5b5KM
         hoCxHuoOm6qob0G5gy6wjIf0cpYb4eUop4iHZuIazrxVdDoBZsR/nnfgkBKt6qM1nPns
         h8Gm2BSP5gwMTE7ItNfKRM7FwxrGRWiF4bjCNOvSE/dgWPT7++jXEmpOPoVjlDv9n5jP
         0Zl2/f9FqQ1sdyiOMnVfckNEreOzPv0SmmdasyoHXIHBMV/ACSRI2ImEW460fk7gk7Hv
         UlbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OOtLKK9nTB3bWrQ7hHJGxiTKiaDboeffezv9ToF1uEs=;
        b=lJnaBEb6cHtcJOoHQpMWQquHQmphl6mEdeVbuOhdqLUclsaubMtis3J387ZOJSNRwJ
         dqsQaaPjSAoiwrNFRijFIR5ZIVi4FJBCAPUt95z0A5uDOH7MYK3/jy/0rHC5PrvCJUdK
         KRn0lLTQs2N8hlTr3Sx7s5hP8UuJz6da/ObW6Dz0dmx6qDVUOVLmzBYukZiK3ZdIXLNF
         dtzq5bbaVT70D7j48BGfE06S5cj5k4W9r8J30/ElJb7F68iJh7kxR3aEv3KIyNIB7/S8
         e0n/W3fOkq5QSTpwxCQGEcRImSzOzjWLoyASM+3gUq9k/4+1hn+iqPdXsUDZueRH7oW4
         p4JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lkbfMl1G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OOtLKK9nTB3bWrQ7hHJGxiTKiaDboeffezv9ToF1uEs=;
        b=to1ZYF0NGmMih/9VVz+q6cRX7u9sWOjQyxA7U1ag1XdhFXT5UljabF3eNm0v3mXMdh
         760P6sJthbafo4Ji2PVZ5qeKvHEBd61ptngJ1KbZLESwsZzMl4WnC4SPZX+p7kH4HHQq
         hbwW1inM1q8shMtMV9EXUTRTKpovaITQ8COcBr3s0eiDgPLGVnaP6xgKkVQi5VHV5Wxj
         K2WCOh+Yx9ckFT7sazg1MHSTi2kWXZw1v2h565ZjRH4MOhgGbfE52Op15+GnOI4y3+gQ
         ucA7qhCVv+/RtCgfXJIPsJYfNlWQ/QPI7QbhgaBWeTqzv1tvP0kLH0JZqI8uE6Pb5E24
         9h1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OOtLKK9nTB3bWrQ7hHJGxiTKiaDboeffezv9ToF1uEs=;
        b=hstQyYGD3ND8RhMzsr4rTvsh/FO7jjypE4aU7TWrtPw04mmqoJbvoP8dMVtYQuSPmo
         w1lLdHfA47H5bqe0wK8q8SZbFdb8hzxB/QwmcjlOSMBjSwP8ou3S7Y17AdjmEGhlkpQT
         RfNjgZMKRVyMiaIePPPYJe4JIk0hNdlXBVKfCAr8wWRcw+viG56a2gweZyUCM9iu6Stz
         751DmT5n8zzOgBuHjYs3ImO2t/Cb8LbGutjIrw1D7rJUkr5bSyMtjbqlFL5b6I6q2IeI
         Vy5BPi9yIFhE1FvO9AYXe/eqdfC8LIDRdxILfSOaMKHLHHyhGvnHa1s9+3J2YBmPh9uT
         oPhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531yaGG54fQdbX0Xza6fgGQ9Oe0AHYHJKkojJHJrSEbL66ZXW/8/
	9H/vyeDcByuNvxiwRNwgxAY=
X-Google-Smtp-Source: ABdhPJz2OgC5XrWJ3mPcJtFLs/rPRd7Nk40uogxXgUOPc45J4yplyFIsggEUiDm2XcaCm+9XZ/PdGQ==
X-Received: by 2002:a17:90a:a78d:: with SMTP id f13mr26252609pjq.161.1622574803966;
        Tue, 01 Jun 2021 12:13:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3541:: with SMTP id lt1ls6272087pjb.1.gmail; Tue, 01
 Jun 2021 12:13:23 -0700 (PDT)
X-Received: by 2002:a17:90b:1888:: with SMTP id mn8mr1432305pjb.179.1622574803369;
        Tue, 01 Jun 2021 12:13:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622574803; cv=none;
        d=google.com; s=arc-20160816;
        b=e1OBILFft99Td06foxuRPMfWd8qyV/vuzdhMV5taKYNYCPAaneBw+dPk5XXsFLPNpg
         TdrfG6CCv233ooR2yLkOjbNkzglveH7vmaDEFIS9Sdoke2M+G7ERZPgDqn6wlmgPa7xF
         W+fGR1S46ly9Fj2M1zbd63WzGRXrbrwNlmOjwjBIBGz1WJbl3aI0G3MIGH7bNlDtUeXZ
         uJJK+ftPKINGoldl6GMF6f3aPZHbuMCi1weTdQoSJjqZT0F3eBDEhjsHCwfw6SvivYnE
         aTmGhDk2QC2Q9S0j4iW5v3HA8kvsSKUGNiM+qG+tXIVMuHGwozCxfpb02rGXqxGzBqf2
         F6DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=F2nIYNp74XkoIbaKwSbgXhOoOC//P+XAXbK1h22Ceac=;
        b=q0HeFirBgWJ5JHIJ52PFDjqzL1OtqvEDoxk94o5Uf57FAZJdsprfk9VAY7+4PJBx8K
         rWR43mAWSsC1s4D0vlUXYjYs4rQu3F3TQ34G5FpHeCVay5U3mRcERYpXpHclhoaR3Cs+
         qjDs+spnANXNPk4+qqXS4iDl8x+Jbfj2ppoDjuyItzEGUJFld2p+O+xJsPwetDqMNUIl
         IVpL1pYuZ9pmRi6rZZPvxNMbP042tBQzPMTMRjfavkpbKqba2Vfdqb0yo0ioEWvryIBN
         Wg7B2XDlRpAP4fQ5gFoE5RYYDfJAsPlISBMbf9oADq8UTAVgiL4F21XiUmPNaka7StgW
         84Eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=lkbfMl1G;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id i3si97602pjk.1.2021.06.01.12.13.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:13:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Received: by mail-pf1-x436.google.com with SMTP id t28so239200pfg.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:13:23 -0700 (PDT)
X-Received: by 2002:a05:6a00:14cb:b029:2be:1466:5a28 with SMTP id w11-20020a056a0014cbb02902be14665a28mr23125434pfu.55.1622574803092;
        Tue, 01 Jun 2021 12:13:23 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id u18sm5029856pfl.9.2021.06.01.12.13.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jun 2021 12:13:22 -0700 (PDT)
Date: Tue, 1 Jun 2021 12:13:21 -0700
From: Kees Cook <keescook@chromium.org>
To: Bill Wendling <morbo@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linux Doc Mailing List <linux-doc@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jarmo Tiitto <jarmo.tiitto@gmail.com>
Subject: Re: [PATCH] pgo: rename the raw profile file to vmlinux.profraw
Message-ID: <202106011210.B5A8881214@keescook>
References: <20210531202044.426578-1-morbo@google.com>
 <e22afde4-e312-4589-cf2e-3c35219d7249@kernel.org>
 <CAGG=3QVdXxLf0T9+n9FidrRcfdWY36m-i=4kPRJjOojWhjiywg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAGG=3QVdXxLf0T9+n9FidrRcfdWY36m-i=4kPRJjOojWhjiywg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=lkbfMl1G;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::436
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

On Tue, Jun 01, 2021 at 01:24:39AM -0700, 'Bill Wendling' via Clang Built Linux wrote:
> On Mon, May 31, 2021 at 1:29 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > On 5/31/2021 1:20 PM, Bill Wendling wrote:
> > > Future PGO features may create other files in /sys/kernel/debug/pgo. So
> > > rename the kernel's raw profile data file to "vmlinux.profraw" to make
> > > which part of the kernel the file is for more explicit.
> > >
> > > Note that future files in /sys/kernel/debug/pgo should follow a similar
> > > naming convention.
> > >
> > > Signed-off-by: Bill Wendling <morbo@google.com>
> >
> > Guess this clears up my confusion around the module patches :)
> >
> To clarify, Jarmo did those patches on his own. I just wanted to
> clarify the naming convention. :-)

Is the expectation that there would be 1 file per module in
/sys/kernel/debug/pgo/ after the modules patch?

> 
> -bw
> 
> > Reviewed-by: Nathan Chancellor <nathan@kernel.org>
> >
> > > ---
> > >   Documentation/dev-tools/pgo.rst | 6 +++---
> > >   kernel/pgo/Kconfig              | 7 ++++---
> > >   kernel/pgo/fs.c                 | 2 +-
> > >   3 files changed, 8 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/Documentation/dev-tools/pgo.rst b/Documentation/dev-tools/pgo.rst
> > > index b7f11d8405b7..0200449c4843 100644
> > > --- a/Documentation/dev-tools/pgo.rst
> > > +++ b/Documentation/dev-tools/pgo.rst
> > > @@ -76,7 +76,7 @@ The PGO kernel support creates the following files in debugfs:
> > >   ``/sys/kernel/debug/pgo/reset``
> > >       Global reset file: resets all coverage data to zero when written to.
> > >
> > > -``/sys/kernel/debug/profraw``
> > > +``/sys/kernel/debug/pgo/vmlinux.profraw``
> > >       The raw PGO data that must be processed with ``llvm_profdata``.
> > >
> > >
> > > @@ -108,7 +108,7 @@ using the result to optimize the kernel:
> > >
> > >      .. code-block:: sh
> > >
> > > -      $ cp -a /sys/kernel/debug/pgo/profraw /tmp/vmlinux.profraw
> > > +      $ cp -a /sys/kernel/debug/pgo/vmlinux.profraw /tmp/vmlinux.profraw

And if so, these instructions would change (in the future) to something
like:

     $ cp -a /sys/kernel/debug/pgo/*.profraw /tmp/prof/

?

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106011210.B5A8881214%40keescook.
