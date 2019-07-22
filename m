Return-Path: <clang-built-linux+bncBD4LX4523YGBBN5H27UQKGQED6VNNKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8463770371
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 17:18:16 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id k31sf35945175qte.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 08:18:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563808695; cv=pass;
        d=google.com; s=arc-20160816;
        b=tz569uLiWYG0YChq5WWR4S5xljLt5SBf3dBJ4PMwCliVWbEgcPuPGSwoYzcFHyYYix
         l5lfmnF2ofhnRC78BYiNwGUSWJSTS02Qz+YUSsJNNn1NNVlwtLL6CdoKtcOms+2tP5wc
         bM5IEFciVVotvK/AauX2yGfmEFinyEqoXJM81Vw6FDpO9d5nplr9RdFBIsMJMi0rbtpp
         Ur5TPJroXpIf2A2NdiOD2SscDWUtReEBshdLZA5CtkbFP5n5uDEO2SItE+uzT+nMRZbZ
         y8pFGQ5MT9wMz/eA2EDxSsorYbXrDYxN8tBhYLjlVaeBOxxwfS7LZAytYrBVDIIXIAGr
         Q90w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wDIKUI0br2dGvIsa8R2e2ZepxHQbPrEgPsFwHB3lS+4=;
        b=DzV+PCT0KLzmyDpAQLY4VFg+dxPuHEV2wbq0ePp0G7EqBOyWU1Z5Qw/CIxg5CLSPIi
         Yp9Ae2MvHyXX7JeNCfhffVdBIebqL6DBIoPTgIwBqWGgfN7qarsR2vapGnhnOL+M9iY5
         jmg2biq/wPz7S0HkhqL6WngGa1S9ceUlernlWpVNCsbuwsG7Gj/adXqKojdvsMqor8kJ
         i1JdKCvgeyYwQ6uSkcYpF7Vepa8H6tP3uM9447iGJtg1Wvil0d6quo/UxQNbtZAMc9nR
         fQsCg2UEg65Qs9n7r1TK4zrHKiqlj8RIA8QlQiOA2AUYoLX9RGn9YF9KjcvFd5cS1WOK
         8ZQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wDIKUI0br2dGvIsa8R2e2ZepxHQbPrEgPsFwHB3lS+4=;
        b=IeArLcOhaQIZbX0X1+cctctYDT3Tf0+amZ3el8uAQzVBS3/h6xoiQFAtV9IIRo3MaB
         mr1Y75vE1M+T0+/f5nQlnwB0OLGZdlSG3NASg8EkscAYgS6LZ7C8SKfzcaNMLWBfHOvU
         4GBD49WYZOhEHCJCLsXQ6LPZTX+N8gsWotAB+Fg64RspybEXK4VcNeoJr2ig/Ty9YVBl
         N9O8IWLtU+e2xUh1efUODEOVAWjNt63mJwJzHBYOebl7YqOc0p8IcWDy9AeOqlhXqipf
         aJ+yGefcCcMQv+nO+q60X7pHZUyclVPFxPXdPxOOlm0XCqxToHfwORXzes3EKofXAwwA
         rAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wDIKUI0br2dGvIsa8R2e2ZepxHQbPrEgPsFwHB3lS+4=;
        b=oenrx/HIVNtkq+cnUGwE9xykz6z+d9L2CStG7vsVIv9ueai8Vi0MpZvEMGQKApXz/b
         ETB6Q+eKgFGOcOLH/sUu4jS+fcr6XgTPZg6ELYnzDwxROj1YfTDkEETT5lfHTWspgNUT
         K+YhmXHHrjX+SRbS/jVsXozFMvo91/BcRph6FNbzH6uNDJVDTvSlMtcKfd5O7Vhqu1wl
         4Ey8PXbbfIcy949/xOSqQL+wojgY5vkWJmowZsb1cQ738dGmFabbrArtQuy7MnhRmtze
         EGBXUNjkW/rzqglxyDUGh7gykh9qWtYjsDQFn0L+flUub90HcigwdgNwPZpNsOLKZ4mQ
         J80w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXDPsIyY+mqRLZQioPOLLIrvOBYR1NMQrua+EtvGw4R8VM3ua5m
	wUcsXuqdMYaepxAyOwFpstI=
X-Google-Smtp-Source: APXvYqyThNh3FXc6gJzlt4jDvcaqoeqVot3BHIH8/r/pXlBydkFZh0AZsNTuQctNoDSrZTJJGc/84w==
X-Received: by 2002:a37:9fd6:: with SMTP id i205mr48347235qke.130.1563808695546;
        Mon, 22 Jul 2019 08:18:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4897:: with SMTP id v145ls12187475qka.5.gmail; Mon, 22
 Jul 2019 08:18:15 -0700 (PDT)
X-Received: by 2002:a37:48d0:: with SMTP id v199mr45974123qka.318.1563808695149;
        Mon, 22 Jul 2019 08:18:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563808695; cv=none;
        d=google.com; s=arc-20160816;
        b=HvXLIChaZEnFGxbc/q96V6bHiDTFB+ZVVDt7+sCN8H3AT2UtSJAUiss/nKDk4oBp79
         cO4XCA8aXyppMCI+IbjMTmPIRE4UnuvXfyCUHWr7TL4vng87ga/jlp/SiqEyfreiYAK6
         A2QsLtvbZ/KaCxftLjPhJbYGQYMIPeWLSRFSGYqGEdf7LEqpgYA5eB73Zmshfrjd7Ky8
         qAOrMlmFFdyjMZy4u/nZ+uRe9OiHflz8KmhohVFz7EUNKf8hQbOtxIeULslnP4z6GNzI
         5yrllMcyE2smfB31bHZ7WAEzYPoCFso7WwYa5mjMhmuNvDj5oeCvBQuA/cRr5bmHqM2p
         pXmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=G573lsFnZacwyfQY5xXmRH/Lgsfl27GNvvPVHyTS7mo=;
        b=NSQxDFLeGDe5gDV1naWyEfr7iy7tzr53VbWpCORBOWZP+tsHg+w5S0YgZLBMtIg0Yj
         XCMHcfrCPjn67G90fVcs8P6PJXTVve11Jk53x9WzuaWdWqYOe/xe5SVlrKl77WTD0DIp
         18ICWf+Jh0MFLLCcpGLH73FmRNiYMK2oCWThYHjet7dxAYS/wzZZjlrOTsews6wg42rO
         0NhBIoep5zfMt70VSDPL5+/ffkDq/dHEihEDeRD4QoFV9TUSTQgd3dUtX7jEz23in+ME
         S21wlO6SapqGlShY7CwX8fN5p4fdwOsRlgqJsusx46jc+yPdbrDpG3j8Fu0NAiRUnzHN
         HAsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTPS id g41si1875640qte.4.2019.07.22.08.18.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 22 Jul 2019 08:18:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6MFI3ra026871;
	Mon, 22 Jul 2019 10:18:03 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id x6MFI1aA026870;
	Mon, 22 Jul 2019 10:18:01 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Mon, 22 Jul 2019 10:18:01 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Christophe Leroy <christophe.leroy@c-s.fr>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
Message-ID: <20190722151801.GC20882@gate.crashing.org>
References: <45hnfp6SlLz9sP0@ozlabs.org> <20190708191416.GA21442@archlinux-threadripper> <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org> <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper> <20190721180150.GN20882@gate.crashing.org> <87imru74ul.fsf@concordia.ellerman.id.au>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87imru74ul.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.4.2.3i
X-Original-Sender: segher@kernel.crashing.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as
 permitted sender) smtp.mailfrom=segher@kernel.crashing.org
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

On Mon, Jul 22, 2019 at 08:15:14PM +1000, Michael Ellerman wrote:
> Segher Boessenkool <segher@kernel.crashing.org> writes:
> > On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
> >> 0000017c clear_user_page:
> >>      17c: 94 21 ff f0                  	stwu 1, -16(1)
> >>      180: 38 80 00 80                  	li 4, 128
> >>      184: 38 63 ff e0                  	addi 3, 3, -32
> >>      188: 7c 89 03 a6                  	mtctr 4
> >>      18c: 38 81 00 0f                  	addi 4, 1, 15
> >>      190: 8c c3 00 20                  	lbzu 6, 32(3)
> >>      194: 98 c1 00 0f                  	stb 6, 15(1)
> >>      198: 7c 00 27 ec                  	dcbz 0, 4
> >>      19c: 42 00 ff f4                  	bdnz .+65524
> >
> > Uh, yeah, well, I have no idea what clang tried here, but that won't
> > work.  It's copying a byte from each target cache line to the stack,
> > and then does clears the cache line containing that byte on the stack.
> 
> So it seems like this is a clang bug.
> 
> None of the distros we support use clang, but we would still like to
> keep it working if we can.

Which version?  Which versions *are* broken?

> Looking at the original patch, the only upside is that the compiler
> can use both RA and RB to compute the address, rather than us forcing RA
> to 0.
> 
> But at least with my compiler here (GCC 8 vintage) I don't actually see
> GCC ever using both GPRs even with the patch. Or at least, there's no
> difference before/after the patch as far as I can see.

The benefit is small, certainly.

> So my inclination is to revert the original patch. We can try again in a
> few years :D
> 
> Thoughts?

I think you should give the clang people time to figure out what is
going on.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722151801.GC20882%40gate.crashing.org.
