Return-Path: <clang-built-linux+bncBC4JBM6XX4IRBK6PQSCAMGQEJSUXPQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CA408367B37
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 09:37:16 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id x3-20020a4aaa030000b02901f24d59c280sf2304357oom.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 00:37:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619077035; cv=pass;
        d=google.com; s=arc-20160816;
        b=LveYXXpA4rcrcDd3Vn05DmMohzOit7LH3BjpM7DJ9Iaf6iSem5/+RNlkmYNUrGkfbQ
         cKulOgL9qjTzXtAj4mLYFtw/yK+rHXjl+ynzTOTPFgKYMwPM+Za3Zx7lvnkZByRZPNTH
         cO/pf+XMLt5PVYNO0OblvQkQfEKpn9PR4n9R0MNxfxdeb8ygaIqw9dxddCxNnuYYC3r3
         b0HTmSuIKcgxKrqZYhpymQtR9du2mc6wHVFOQ5UujZasIIoSDFzjA4uRuREZcEuxCg0k
         gtQh3QbDt+HyQke9MJ6HoG6tyCmv50PskrVorWIqgetCsEY4gUoyd+2wHI3TYThac27b
         6+bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TrvhlC0nVOCGOoV+h8gq4xZdpnZmqBLb+R+8Rq7bZrk=;
        b=0dCtFidSIuN0+1tB8Lxw1lOgTP/RyB4A3t6mNHRqEq3P/az8nfgAxn34PMGCgfsWLQ
         JBSE9xfZmIjZj+3BcytiEjcbyRyxlmgn+MF8Rge+3YTa/iRBKqlBEsos3JnUEffa1LwB
         6U3ibHBw3FSedeJIYyy0UOj55IVsfK3sfDphqHK91gksJgKNN1hj1uKcRyxgyVSwwPYy
         dao7TwXF9H3k+3pbKmYUfCAQZV07wqIA7XdFd91oLTJItyrhECAD26P7jL1RZPE0Vytd
         HmaZG1VJY02WiDBPvvzgUae7QbftmWq+82/mw5ymQCr1HL9dHIKSUH0gXtXZ4JjM9FFg
         nufA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CSFj8pPA;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TrvhlC0nVOCGOoV+h8gq4xZdpnZmqBLb+R+8Rq7bZrk=;
        b=P22Gu7Z86QJ/phnCBxVojfk3Kl3It/AGAH3L3uU70ubPPiS4era8rj0jXRwdlqyeIQ
         XF9/+nVNotAil5dakwyNGBoll+j5ma+LX0LVUrPZdM41fE4qeEa/q0R2ND2Cg1vltzaL
         UcrjTIuHpsBAYccb4YXBQ8z2mwqp4GGce2z7SCFfiLHgOzPfNe7dR7j8002oMOyo2rJ4
         FWK3j3XYTaagwU7YCoLJPdeao1LinBomeQ8H3vjCHH9h0R8eMLC9+pvMVBKFGqa+kiFf
         mmEsW/n2jJYELhcCuX6RWA7//A5cAL5T/L7bg/Z+TIUNR8cU/4sLSBHyMTQAxY81yzbH
         J5GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TrvhlC0nVOCGOoV+h8gq4xZdpnZmqBLb+R+8Rq7bZrk=;
        b=p3KBMWdRg6QT6z5IWDwvujZ9wYvLywjpKCe+6sAdhkLoVqXeUyMZFVr07JlwhkRNck
         2Jm1gal7eCBM7qP3/YpTMqbXdrxfBU0+4q1Sj0JQdb5OC3iJXZEjxx/G6610bTTxGWO+
         lFGhwtPZtGL9etOAaLqZEGLYSw0SFrOBBtQzkyp6IQvIKsQ8AjCJt0hgR98bn5QjGlXY
         9VBJuoj9SF/PzIUt/0hOVVTZYPEl3JzdeGqlJbQEXdNTj9wO0oLAU4a7PJx4EY6mvTX1
         kWdVdRV1ioHV70167CNnuKkG5I8X0H8kypwi3p2onfJ7XmBHfMufqbOSpLGh7l6AweOq
         yjbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PiFQPMDvX3KyBXOHm0Yo9djC4gscEbo4f4mBkelF8cmZqHPL6
	N3D1X3FXul58rD0AFTpl4OM=
X-Google-Smtp-Source: ABdhPJzsystjUXk4SprazOgAL26G2WGui1HyqUoGQ+l6AZ2RbeEbRxFsEGgxYb5XlFBzN57ET+XhIg==
X-Received: by 2002:a05:6808:f8e:: with SMTP id o14mr1336159oiw.56.1619077035768;
        Thu, 22 Apr 2021 00:37:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:724f:: with SMTP id a15ls1342884otk.4.gmail; Thu, 22 Apr
 2021 00:37:15 -0700 (PDT)
X-Received: by 2002:a05:6830:906:: with SMTP id v6mr1800196ott.345.1619077035438;
        Thu, 22 Apr 2021 00:37:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619077035; cv=none;
        d=google.com; s=arc-20160816;
        b=Rr09wqI3pPvKo4aUzXS7F4nzRj3EnXiQJHK1ESc804clFTn6aAh6ZAfJdKJXK6aqtA
         J9C5cz6WELyFNvXtX3IEMmnq1k1InF38rZdi8YQiFpBSVd2hfhm0lkR8wax9BYgthvry
         scTTA8QFPXd3ZP/zfKi1+BegYVCOIJ0C3YR+t0cHoN0GIZDK0APtxf67vrNVZw1mkoUu
         ywff2vxFG6R5GxFw+KAAHmi7R3Q98TlYAJasZattp8Ol3Qiku3pGEUDhT5zXZKql1k9c
         XNIXvYztUTbjksmio+q09EaE0sYCgc+T8p/0aTjZMD0Njabl6g4TmlYzRVjmG44C9v83
         Xx6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hqw5X8noM522AV7/JTcgxyl7RSyLg6qHVdWW+BvgGeo=;
        b=o+1abyQWmdif15a7F/chIyg2K80tgThRCa/HL1O89WWLg6YhLNjbwT5QWuLmhwILPZ
         jEssomR35ECIQyLQbWApJrn9xInTFoQLZPLwlWHM/tPVqDEla6f86YfyWidJnHnm26Ey
         nZ0cM6CVi5wPb2gqKstQlMsnfMw/iTdBE/tk3vdvFsICcKTUcTU/AVHScLAjP9outd/4
         x92vRoyO5+8m7iC3SiH7v13G3kHoctpxBWz+Hs0c15NmpynVHBUYd6wjX9Ro/RHJpqTd
         tCIBcA5Gnrd2jEUYCCnwKf0K+i/hbDDDr/2K3NIMcEJjhgKgxcda2a5Z5U6pMWqIpeVn
         RGhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CSFj8pPA;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w16si471886oov.0.2021.04.22.00.37.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Apr 2021 00:37:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D21B6121E;
	Thu, 22 Apr 2021 07:37:14 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.93.0.4)
	(envelope-from <johan@kernel.org>)
	id 1lZTtn-0007Su-AL; Thu, 22 Apr 2021 09:37:19 +0200
Date: Thu, 22 Apr 2021 09:37:19 +0200
From: Johan Hovold <johan@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: kernel test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	"open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] serial: extend compile-test coverage
Message-ID: <YIEnr9g8AmYFuLPh@hovoldconsulting.com>
References: <20210421143115.22797-1-johan@kernel.org>
 <202104220355.v8nwWx2T-lkp@intel.com>
 <CAMuHMdXKWDB89Hm-LQcpfTq=0yjm_xvQsQiD4QuEtW=yVymuRw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMuHMdXKWDB89Hm-LQcpfTq=0yjm_xvQsQiD4QuEtW=yVymuRw@mail.gmail.com>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CSFj8pPA;       spf=pass
 (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Apr 22, 2021 at 09:11:50AM +0200, Geert Uytterhoeven wrote:
> On Thu, Apr 22, 2021 at 3:20 AM kernel test robot <lkp@intel.com> wrote:

> > >> drivers/tty/serial/serial_txx9.c:987:12: warning: no previous prototype for function 'early_serial_txx9_setup' [-Wmissing-prototypes]
> >    int __init early_serial_txx9_setup(struct uart_port *port)
> >               ^
> >    drivers/tty/serial/serial_txx9.c:987:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    int __init early_serial_txx9_setup(struct uart_port *port)
> >    ^
> >    static
> >    1 warning generated.
> 
> This function is called from arch/mips/txx9/generic/setup.c, and does
> have a forward declaration in arch/mips/include/asm/txx9/generic.h.
> Unfortunately the latter cannot be included from the driver, unless
> the || COMPILE_TEST is dropped again.

Thanks, Geert. I was just about to send a v2 without the txx9 hunk.

Johan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIEnr9g8AmYFuLPh%40hovoldconsulting.com.
