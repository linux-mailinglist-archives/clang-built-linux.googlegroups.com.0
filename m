Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB34FRT6AKGQE5I2CDVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B7B28A772
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 15:04:49 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id d9sf2282419vsl.12
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Oct 2020 06:04:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602421488; cv=pass;
        d=google.com; s=arc-20160816;
        b=ST4Gbs0QOzjqE9+JKE7hLzS9mbt3OqULwAC6DrwCnQpf9Q4FzwnAox+SrMvqJMnfg7
         RrSYiMc0LInY6tCcmPVFwxmSqIoq2FLzmDyf+0xP2ujqZ0jjJZ4QOJilL3khO0RcUAcR
         yckI0PxXtFhCicfHcffyoFSwQVPIPM0Dm1Fx/tanfz2YDvA1hsJmgx6I4pWrlxZ6g7z0
         kNu2gqwSZF0DFMTqWYA+1BthvAKDRGakLre7XgxzJ9LLumr0QogJT/cnWZyZ51YJ72Gw
         4iYBOCggu04uyImKAuHixL4WL1heXb9XKZnm7GRlkldNmjz7z1VoQciZW1O0gM/6HX3h
         Lb5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=vQrj22PJtX9/i/+rjIWim+lJVqzSyizup+x2SzbJRBQ=;
        b=EKst434OfO+r4WpBtYkjas0jnzM3+EhUemhGS9w+QmQOuhB6Zdu2pHAyCpDQtPAXIC
         CSP1QzUSyic4ytO+Lx9JRa+SzEMVOtIGRTT4AJKl3Rqk9HwJCou4VNOvyvDXwIaH1xCR
         JnVPmvF6K8myuS+dPdGFbH5BvizDm3PFxtD45BnZeD4kF0svCnwbasscwzgE91eeOnF5
         L+TC9j/okZi3xhfiSrqMtDHK2QmzCNcwJ2FRZBYMBqSU2RySmDQP2RHQM+IoMMq9XiBU
         ugAhbws6pLKsGyVEvm6ly5EIvL1k663dm//mQUTK1d8nu/SrarW/lTcynRLoqtep5sH7
         4JrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=t5dUOfQR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vQrj22PJtX9/i/+rjIWim+lJVqzSyizup+x2SzbJRBQ=;
        b=G7AITLqh3c9OQzmnhOoulMrQgH/G87qbisDlsKb0LYey1kle2Te9wLaQZyvWbMc0rI
         DCMdcMxzm5biSi3mlyl+xMYglIKhqfw1nxuiWI1SJBaIpE4pfA9KgsV+YGLSwTjvqxMa
         KeZZHE3ste0E8Ox/DBD+5sT+JtosvYFYyy8Vf/70H9ny6ZGAHFwP2SXmsPT6n18H7sLw
         MmYesdWjqGpyBl1/R8UdUZgy44L4xQZvr5kN5bd0ln2TcYmufIhQLmc+6G4H51sYCeDk
         hI+UIIp7+bA/dJbP1g3w4zpVxcoYL/5VqwgMofTCrnbWFgxev+Vbo3G3etcGKWBMsI8X
         7lWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vQrj22PJtX9/i/+rjIWim+lJVqzSyizup+x2SzbJRBQ=;
        b=O1yW83nODoU+/bjIPjFNAYArbk7k3nGb0QilwtzGrdGvZdPaLxqnApPWXvyK6JrTgT
         F6k40eiOpc1uFgfpiAzRZrlna1gz5gwNDlybFPVEavl8Vlae3R0o8l16upu6S0jwyCzY
         A4j4nDICKpaKCHd62qYyA63i70SRzBpMghtg2W8RVTl89cY8vNRq+ENwZe3WjH/aDUzo
         nvr0nMGfmp4gE4bcgmkg9UptVa0mjkhjqkyI6RCqnqC4GPrUM+gA83r5R9akoeVoEm2p
         HeiMjddd0Qor9Cjj8SygfM6N5VZVFRm56H8j5XO707M93gSYDHF3Qw3inCC08JAk1JuE
         rxTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320eFNAkIweN1mXYPfibVKZKanU2wnPRPKtHYrJlK2L/GAyRNNT
	78JT37BDiw+0S5+uX52SnlM=
X-Google-Smtp-Source: ABdhPJxx0jh0ZR3SRIE296fttjvt4qBVkdq3mOR/bPBnBQjN9jJ6aaUeMoPHfQR4QSeP5KQiHDNDRA==
X-Received: by 2002:a67:f698:: with SMTP id n24mr12355230vso.19.1602421487963;
        Sun, 11 Oct 2020 06:04:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe04:: with SMTP id l4ls94336vsr.10.gmail; Sun, 11 Oct
 2020 06:04:47 -0700 (PDT)
X-Received: by 2002:a67:68c9:: with SMTP id d192mr8621382vsc.5.1602421487339;
        Sun, 11 Oct 2020 06:04:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602421487; cv=none;
        d=google.com; s=arc-20160816;
        b=MGgUGMplX7kIHiv4Y8FTyetgEKMbY6lT1C+iTXY3ND6xm3l4e7VDeSdO1dnNrgHX4Y
         IquUAd60wzDzvO6IYDH6sAXbtGYxFYxcE/jqMmBIGvjdz3MVXR0uMk+/R4vdsjOP62rZ
         2CM/04n0Z1Rrhw0Vjy2zI4wEOZUlD3yzejCcl6Gx3i7vkl6N9ao2KMlf3wxgpUnLBGG7
         xRjs28l92YWOl2AFIdowu/GmDmwxJVpOzsPDO+ky72yeOlvBBHx11Kyqe5OPfwlOBkSR
         KoV2UTYSufVKsgX5N7LP8OL3bgxE5vxHQPbPz478wgxMYPwEmhFb1nnIgk2lzvNBrUN6
         ejlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=OMFBsDy/RPXiLiW/3MJoJPAqD+BEbAsFNNhKa91sz2Y=;
        b=D5aWt+jAoAAruO8KQCUyT1PELXWc4ofSd4fKeXVy5qCdDpJO3gX+J/NEJboiRdGe/e
         g0qWxGFIsBQpDeT2n6WhMFvSHJ8vS0fIRUJumjp/OS7MzzahEhZMMhacQqShoilL0pYw
         KR+CExvZ/1dkAiyRCNdYA+Hin44SQEn+J9scIe2KHSyGKtgr1+rvERCexmotUCjOxM7U
         wTye1YdCl69646+2HgdgxozAKuhu8nIbm5hDiQxojF+zGoj1Ray+r53Z1kOz0oJRBjLh
         wK7t+ylG4CY7CUuUYPqLHFMFR+LydWERk3fQv9ttpOC7SP+b4+buMUbegyxa3L8E4uV3
         1ttw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=t5dUOfQR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id e21si897625vsj.2.2020.10.11.06.04.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Oct 2020 06:04:47 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 09BD4Nff002136
	for <clang-built-linux@googlegroups.com>; Sun, 11 Oct 2020 22:04:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 09BD4Nff002136
X-Nifty-SrcIP: [209.85.215.180]
Received: by mail-pg1-f180.google.com with SMTP id g9so11410886pgh.8
        for <clang-built-linux@googlegroups.com>; Sun, 11 Oct 2020 06:04:23 -0700 (PDT)
X-Received: by 2002:a63:1b44:: with SMTP id b4mr9858962pgm.175.1602421463085;
 Sun, 11 Oct 2020 06:04:23 -0700 (PDT)
MIME-Version: 1.0
References: <20201001011232.4050282-1-andrew@lunn.ch> <20201001011232.4050282-2-andrew@lunn.ch>
 <CAKwvOdnVC8F1=QT03W5Zh9pJdTxxNfRcqXeob5_b4CXycvG1+g@mail.gmail.com>
 <20201002014411.GG4067422@lunn.ch> <CAKwvOdmdfwWsRtJHtJ16B0RMyoxUi1587OKnyunQd5gfwmnGsA@mail.gmail.com>
 <20201005194913.GC56634@lunn.ch> <CAK8P3a1qS8kaXNqAtqMKpWGx05DHVHMYwKBD_j-Zs+DHbL5CNw@mail.gmail.com>
 <20201005210808.GE56634@lunn.ch>
In-Reply-To: <20201005210808.GE56634@lunn.ch>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 11 Oct 2020 22:03:45 +0900
X-Gmail-Original-Message-ID: <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
Message-ID: <CAK7LNASB6ashOzmL5XntkPSq9a+8VoWCowP5CAt+oX0o=0y=dA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 1/2] Makefile.extrawarn: Add symbol for W=1
 warnings for today
To: Andrew Lunn <andrew@lunn.ch>
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
        netdev <netdev@vger.kernel.org>, David Miller <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Rohit Maheshwari <rohitm@chelsio.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=t5dUOfQR;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Oct 6, 2020 at 6:08 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > It depends a lot on what portion of the kernel gets enabled for W=1.
> >
> > As long as it's only drivers that are actively maintained, and they
> > make up a fairly small portion of all code, it should not be a problem
> > to find someone to fix useful warnings.
>
> Well, drivers/net/ethernet is around 1.5M LOC. The tree as a whole is
> just short of 23M LOC. So i guess that is a small portion of all the
> code.
>
>         Andrew


I am not a big fan of KBUILD_CFLAGS_W1_<timestamp>
since it is ugly.

I'd like to start with adding individual flags
like drivers/gpu/drm/i915/Makefile, and see
how difficult it would be to maintain it.

One drawback of your approach is that
you cannot set KBUILD_CFLAGS_W1_20200930
until you eliminate all the warnings in the
sub-directory in interest.
(i.e. all or nothing approach)

At best, you can only work out from 'old -> new' order
because KBUILD_CFLAGS_W1_20200326 is a suer-set of
KBUILD_CFLAGS_W1_20190907, which is a suer-set of
KBUILD_CFLAGS_W1_20190617 ...



If you add flags individually, you can start with
low-hanging fruits, or ones with higher priority
as Arnd mentions about -Wmissing-{declaration,prototypes}.


For example, you might be able to set
'subdir-ccflags-y += -Wmissing-declarations'
to drivers/net/Makefile, while
'subdir-ccflags-y += -Wunused-but-set-variable'
stays in drivers/net/ethernet/Makefile.



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASB6ashOzmL5XntkPSq9a%2B8VoWCowP5CAt%2BoX0o%3D0y%3DdA%40mail.gmail.com.
