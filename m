Return-Path: <clang-built-linux+bncBCQJP74GSUDRBAWRQSCAMGQE4SACF4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id E0590367B41
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 09:40:51 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id h2-20020a17090a6482b029014e6c039e61sf17461741pjj.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 00:40:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619077250; cv=pass;
        d=google.com; s=arc-20160816;
        b=xynxcs69OpKFxHCNaLjUzARDkQ2QTBrnoK3CMFM6DrC78zHGUGtODEjV4CdJUDYNhv
         B9ScHSY6ClvxatOdxYJzB62QV/WyoxQPYiIhu1AJxAhkxqO34iBxqp2ljdJkwWoBQYI5
         Z49OIEun/wdPwebH8tzNbwc8IyYJbo82iSdB3Jr8oAduCeAWFbg8Kk1yk0bzQk5CjyM9
         byS38RqmciaILKX7Z/Siwv8Q4PrgeJIQSc6p5ipUOpUi7BVtsFb58+JtieQvAhfcNZDC
         p1BI7UoyRlfX/WcgtJLEHf/eodcIvM+WTLvng3dSa0YSQbvDXz95cE8DtLh2vxny8F/n
         GIFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=C6tY3p1fyDYBsKlinGmjMAGxwjShHQYpohHFFYuMAcQ=;
        b=gNJNoIpy407L7Rm9fpx3F6Cfx5nEjXDNVjof7kXO+t5kG8W+WSrMZ5PB4yNMO771cJ
         86P3HUZxjfzMz17sNSm/OxrtVrTJpjnYstC/qBnWu7nqIv/dBVJI1fx4h3QF3gLiobMF
         YOrBCeeIfs0EcZDblPASa6gnsNFkKiJCU9u0/iZxeKI67e+R9B2+2dqcIHh0ey4d25VX
         Dh8T76ueaq8GW+aIb8RWKzZGm0fVmTjrOd33OIDUMuYvGgvsGpjqwpnCIA8tWfdGvOmY
         YCuQe2p6bfAqvlV6dq5CFcUEKtFPV0j43HvlS/FjS0xcmhDmpRxHOK+XRzKL7tJNUomM
         xMHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.174 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6tY3p1fyDYBsKlinGmjMAGxwjShHQYpohHFFYuMAcQ=;
        b=ZNdQkBdqXAtJBBl8JJmdWB7rbRpGLl2NY1LAHUMgg228WcCJ3f+5YNjDENbetOrs+T
         apT2gGImHACkbAJ7XmKwy3S+yKDVPj8hyRb00jvqepqY8ZwMiOi9IhsHd0Wq1ii929Et
         nQnjj0gbeY7g0QakkE4WM5nUi9EnYZ0wczy5vsLXg8U6tBxL2sT1nzFqUJT0pAR8lUhp
         IM1ZyRNXzrhuSYy8ycz73Vpiaj9z8iGRGqdyQNixZa24W0R2NEdupnWeZ5ULF1aV4wNx
         R/V7oBx3TV4OHhOQUm53YXhsZQiPQbptc6dAivt7htAT2Uk846RxJTJeegHnAfYCBkZU
         rWCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C6tY3p1fyDYBsKlinGmjMAGxwjShHQYpohHFFYuMAcQ=;
        b=EKTPEloIyiwRXqbQppieEsnDtInSFDScX94RJN4Gu2tqSIqnwraMjQsmjvsnPGuNMw
         FjBNqqXHzS3QWTmqjR4lk4Tnc4RwisGL3DkkHmQdkwmbmmgtrjxMrUJpAAz4oKVB3ZrZ
         t+R7idboXI41S618qmCmmO0Rf7A8RY/SEWIj5Fwf0cHqmdYgW4p8cD5UHS5tuzS/Mu35
         OiYPN/58ffu25qkX38taovqb8KT/ilzpu3nq4l8U77FiIoIIQBXY6nfbah0Y+zN0P2KI
         XkveNPPbQrZdkafi4CyqwfpL+V/TQrSonGvbEkMiknuLRB23EwKUSBqFIufNXRi/WpGV
         v/BQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+9AeHeVmkpHElqwFZCn6CnuHDzcUomGX8EGxlM0IAZOeCdtJj
	NXSLDWdRnEP+ZMqSXwLPm78=
X-Google-Smtp-Source: ABdhPJzXfqxXS3UKHuq/uhfrtoxgPY9CNEfnVjwW58sMPaHkDlo4LqHorwPS4p2Wr0YI7Ca2APFU+Q==
X-Received: by 2002:a17:90a:f195:: with SMTP id bv21mr15960809pjb.56.1619077250515;
        Thu, 22 Apr 2021 00:40:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:1d4a:: with SMTP id d10ls1906602pgm.8.gmail; Thu, 22 Apr
 2021 00:40:50 -0700 (PDT)
X-Received: by 2002:a63:a19:: with SMTP id 25mr2253801pgk.177.1619077249984;
        Thu, 22 Apr 2021 00:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619077249; cv=none;
        d=google.com; s=arc-20160816;
        b=hkLY1DW8fM/UtxDcEX/qRsQspnmutrVfENNcqRsuTYSXIOR2mesEj4/FQkxHnXLnpJ
         UYEjg1HRBjW80rbUUgW2gYCeXwucTRjz6Xy2RKYWmImdsWi5BYgWhzKUaAKydCj2kJKL
         HwMMb2K1JpPfuCypkBMj3KUxY60oluGnWpXm+tP07c2MtGn+zhYTOGgAYGtqgS9mKJUG
         mcfiIKN0rrYq3RGUPOgEQRFXCTtNpvHBNC3oISQMmiIBWHfJPYPSf155zcWEontmBhzy
         sU0id38kPQ6fkjaQMDIGybfKtQuIoxkubBrSy/0fB157Zws/VZkJcs/GNJMC6qZPTfMq
         YmTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=/TWauuJmn7fi7z7l55tpGt8f/5INsWS3V0dyZYNJLCo=;
        b=eRqyPl9KUjwTS7go/TZZVGbM7KU0a2xFBYSSe6Xt93yuksW5YHuEubbtm3iLcZA9EP
         H/JZlu6vwRpYNNMwpeaC89H5iTz7OMEmza7MfVeEHkQVezMhp/gm0C+m0vuqkhvk9g7j
         Vq+v86uBlcFs1em+ltQK7bUXu1OJ34GG9jeOihCwp3sIRz9hQ/ToCM0G5aq1/kijecWl
         36fqmHGyIdPXEonfKkgJH89sGC6gnHB7MampgGRq/xQ6oXtOje4VNHQQfSCPEaXX82KG
         Y5BKkzsPracjDu+6/b4wjeKMFG0MsA7KGCn3zO/U/9kc7EEvYQ77FDYISLt7RRij4/52
         RlVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.174 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by gmr-mx.google.com with ESMTPS id j184si231947pfb.1.2021.04.22.00.40.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 00:40:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.174 as permitted sender) client-ip=209.85.221.174;
Received: by mail-vk1-f174.google.com with SMTP id f70so1849764vke.2
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 00:40:49 -0700 (PDT)
X-Received: by 2002:a1f:2504:: with SMTP id l4mr1405345vkl.5.1619077249224;
 Thu, 22 Apr 2021 00:40:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210421143115.22797-1-johan@kernel.org> <202104220355.v8nwWx2T-lkp@intel.com>
 <CAMuHMdXKWDB89Hm-LQcpfTq=0yjm_xvQsQiD4QuEtW=yVymuRw@mail.gmail.com> <YIEnr9g8AmYFuLPh@hovoldconsulting.com>
In-Reply-To: <YIEnr9g8AmYFuLPh@hovoldconsulting.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 22 Apr 2021 09:40:38 +0200
Message-ID: <CAMuHMdV94SLyuyHUbrMue-0f_mTNn87WbWJu6an=aPFAjyHY8w@mail.gmail.com>
Subject: Re: [PATCH] serial: extend compile-test coverage
To: Johan Hovold <johan@kernel.org>
Cc: kernel test robot <lkp@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jiri Slaby <jirislaby@kernel.org>, 
	"open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.221.174
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Johan,

On Thu, Apr 22, 2021 at 9:37 AM Johan Hovold <johan@kernel.org> wrote:
> On Thu, Apr 22, 2021 at 09:11:50AM +0200, Geert Uytterhoeven wrote:
> > On Thu, Apr 22, 2021 at 3:20 AM kernel test robot <lkp@intel.com> wrote:
> > > >> drivers/tty/serial/serial_txx9.c:987:12: warning: no previous prototype for function 'early_serial_txx9_setup' [-Wmissing-prototypes]
> > >    int __init early_serial_txx9_setup(struct uart_port *port)
> > >               ^
> > >    drivers/tty/serial/serial_txx9.c:987:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> > >    int __init early_serial_txx9_setup(struct uart_port *port)
> > >    ^
> > >    static
> > >    1 warning generated.
> >
> > This function is called from arch/mips/txx9/generic/setup.c, and does
> > have a forward declaration in arch/mips/include/asm/txx9/generic.h.
> > Unfortunately the latter cannot be included from the driver, unless
> > the || COMPILE_TEST is dropped again.
>
> Thanks, Geert. I was just about to send a v2 without the txx9 hunk.

well, I guess apart from this (W=1!) warning, this driver still
compile-tests fine.
Do we consider hard-to-fix W=1 warnings to be legitimate blockers
for enabling compile-testing?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdV94SLyuyHUbrMue-0f_mTNn87WbWJu6an%3DaPFAjyHY8w%40mail.gmail.com.
