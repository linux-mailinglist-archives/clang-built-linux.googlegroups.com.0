Return-Path: <clang-built-linux+bncBDTI55WH24IRBKNE5DVAKGQEF2P6GOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id A32DB91B5A
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 05:06:18 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id f28sf2445103qtg.2
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Aug 2019 20:06:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566183977; cv=pass;
        d=google.com; s=arc-20160816;
        b=SZq0WK1a7tYRfIsv7X3uqKI1lynOXpZ+z8McJ99hMfBvKGbaTCMBjmWIM1jYM3jtBh
         lwmr5XTIUdmGyB9W464bOz1GHnpUArCmdxFQI73l+htfwehQeY0igMF0zmMTn62l8hQH
         XtMQxNtQ/DXfO+3NfEkkqT4UnWAJ/mK6iVWg+3ie0g4QEG3gPZCXiU+9yC+rlNhy6/DC
         aboup0XPfQIv7sWVG91pb2wbOwMgl6Nhtq14kUIjwWBX9BFNU8I8G2LkMUt/OrreO52/
         dqqc+Fpc0ORiOYFTuZ3ZT/1BqTjZ1Wz62EgjQZr6PbDCLpqFhGmhbGLvHWvuiIjdnyHt
         O59g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=3Nbsc0qz0mlM69j/XjxuxQHv8bTzGKOFEkHkQQd5p84=;
        b=SRPGWFxRbFY6BDaFqso/l26XPFPpMa19fS0GCo+D59gjW7HQtmsE82iM6lNIb5867H
         y4FxyXRK7N58936T20LD8fQYS+HIG9hJ93UDfeyj8uxq7W8sdxsCtP/sOLE00l2BDVI7
         HiHWFSDIn8vCENOX9NTcKSgX8nnJ5xusxjr7arxUIMmsY/Iut0TWoLDVCAz6c+NrC7h5
         +JL1hajl341rH59Ty5KVQb6bwv+qFd2oVcCCIWkrDpF2zQXEMI8WusU5HF3xgF3yO6Oj
         AS/ReJO5+WadPhbujh/PHLj0p4bTby/XwMLWhZWaek+bAVz+xq8HtKyERaoN2Hq1qOnW
         VjUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tipIfDeG;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3Nbsc0qz0mlM69j/XjxuxQHv8bTzGKOFEkHkQQd5p84=;
        b=g4eoTkuvl9OiKL3noSLOAUuSQjskVoM5ev+59PW0HAg7arxSK43/w/5us0sfu7l2xB
         FT6a5bw/t3QT8WB9+6xztzamsnDb/W23VRXSLtrB4HxFYrlVp5/kITgXFz2dJWr63hYE
         q6pt0v16jDcUdX5Y8JDrC3OOZ0p45SyqfyMloMFRgHYdIq36hhwZLzwvlKqJvzVinaE5
         zY4AXpX1AxhQbyjtYZqYQuFgpnDwBth8ghYIrxHOIr21NX2Z85T6AjunXxqHby/BMnvS
         F5ea0AsikBFQjD/ck0TVCKpBja4/Rd1Zu3yM+X15aUsVHMJrZipg6z2+KT+174Erffh4
         bDkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3Nbsc0qz0mlM69j/XjxuxQHv8bTzGKOFEkHkQQd5p84=;
        b=euv0KQF9IE4zr7B3rNMgwlEydX3iBW8F7l8lBi1pTon5vStGp4eVU4HiJI2Y8SdGU+
         aXWszGLiEtAVsqfpj+95vJ4ftwBolMO856/bqAt4ZXU+TfQXP2pSiLKe8O9vPohWe//G
         ii1GVkxtAz2YxYSkQX7lTYFFc1L8VHZrhshG46zKqtC6qVF1WeSY/SPx+S6P/k6HuT+g
         80+EyewBKoCCqM+PpCleprISRXdh6KvdlhQ7VzM/xHYyFFc4kx1qBA0OMSvJe2KXrOic
         a3M7m114O4g1TzZeM2v2en3H4VAGI/ALl7TuA49TYkCr51nglmKxmZEeAlZYPY9Ooz1W
         whMg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWZRes34QAOtSLwuZwex/9B9mhmx6RbaPLhI+wxVQQJCh1YDAy
	3J+RjD5sqHkiHXDI4dQWJ0s=
X-Google-Smtp-Source: APXvYqyVTeE6aa091RK8bfXNQBiwjbaA/V5jbmIxspSs6O7Jb7GQryKgQyuZK8iUr/cQ9xlr0j10SA==
X-Received: by 2002:a0c:dd83:: with SMTP id v3mr9347556qvk.105.1566183977307;
        Sun, 18 Aug 2019 20:06:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:129b:: with SMTP id w27ls3925651qki.1.gmail; Sun,
 18 Aug 2019 20:06:16 -0700 (PDT)
X-Received: by 2002:a37:c206:: with SMTP id i6mr11926733qkm.384.1566183976942;
        Sun, 18 Aug 2019 20:06:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566183976; cv=none;
        d=google.com; s=arc-20160816;
        b=WgP03TQ7yqW4+DcODWSQ2TV6ayDIdSdjqEsGEWG3k655Vos7oVuPkWVPAhwff9WUwp
         vWQisSeN95vXgDf1xCobvV2As/vZopqWYzz1X1duY+UCv4oiRkwlCoQwa8WSZVTLbCAV
         pNswaLSQyFJMXIWfP7VtizDmxW1S4Y1RUwAwj0hgAaUajDliZ9/GwaLRRoxjO1UfNiVy
         lTXfMq3Jv0n9QXRbR4ljCCkGtViGB5B/yXpKx5WgrVorWEIlibBAIr3EyaxL2gmNUL9h
         M7xey+1WIc3fkfSXB3fNy7bflOq+aIpJHGzJUY+Ik0AirKmylp0+GwX8ujmQ4/DRvqcf
         B+Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=FvrvXZdRwWZZ1KuvO9EEoL2qJALXtG/9Jo/vp+F3xNE=;
        b=KjTd4KLfMqzcYEeLW4bQKpRtzuN0a8ROy2ZaV0P2QfMeBdwONfvp3oiJTSBrRDD+Y9
         mEkrcvWvCUsw7qkrli4El6+s0ZENv/W0WxpngBLahF7zKJDXrmY49L9kHxvHCOuIXWDK
         ANXP5OCfGSd6FhXzPmShKImk9xJ3m2FzhE6L5FUc4i/Q9ouMCHn7ZTsw2x3sYPE3WCTm
         gBAJzGNmXi7lUhZW/PJkc5jiaE+3Ebj2jDfbN836c9CkXLV22h9j7lCK4Nf+hpQy3ZBh
         Ibx4Psuaa+T6CeHVhJ2A0irCbgGh1nD5jSiPSLWHMfLFtyAEUoXAZckyEggCAAbrwAPX
         hntw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=tipIfDeG;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-06.nifty.com (conssluserg-06.nifty.com. [210.131.2.91])
        by gmr-mx.google.com with ESMTPS id v19si578468qth.1.2019.08.18.20.06.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Aug 2019 20:06:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.91 as permitted sender) client-ip=210.131.2.91;
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174]) (authenticated)
	by conssluserg-06.nifty.com with ESMTP id x7J35wZG013432
	for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 12:05:59 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-06.nifty.com x7J35wZG013432
X-Nifty-SrcIP: [209.85.221.174]
Received: by mail-vk1-f174.google.com with SMTP id r13so89367vke.12
        for <clang-built-linux@googlegroups.com>; Sun, 18 Aug 2019 20:05:58 -0700 (PDT)
X-Received: by 2002:a1f:57c2:: with SMTP id l185mr1860086vkb.84.1566183957703;
 Sun, 18 Aug 2019 20:05:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdk+NQCKZ4EXAukaKYK4R9CDaNWVY_aDxXaeQrLfo_Z=nw@mail.gmail.com>
 <20190815225844.145726-1-nhuck@google.com> <CAK7LNATsA0foyeaE2W3xe=_Hkf9S=q0eD5WHqwPXkMw8udkDPg@mail.gmail.com>
 <20190818184341.GA6262@archlinux-threadripper>
In-Reply-To: <20190818184341.GA6262@archlinux-threadripper>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Mon, 19 Aug 2019 12:05:21 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQuMcLBHhRy3ygqXoYUfdNpNfLRAgxVKx2+suoAoyso9w@mail.gmail.com>
Message-ID: <CAK7LNAQuMcLBHhRy3ygqXoYUfdNpNfLRAgxVKx2+suoAoyso9w@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Require W=1 for -Wimplicit-fallthrough with clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nathan Huckleberry <nhuck@google.com>,
        Michal Marek <michal.lkml@markovi.net>, Joe Perches <joe@perches.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=tipIfDeG;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.91 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Mon, Aug 19, 2019 at 3:43 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Aug 19, 2019 at 01:43:08AM +0900, Masahiro Yamada wrote:
> > Hi.
> >
> > On Fri, Aug 16, 2019 at 7:59 AM Nathan Huckleberry <nhuck@google.com> wrote:
> > >
> > > Clang is updating to support -Wimplicit-fallthrough on C
> > > https://reviews.llvm.org/D64838. Since clang does not
> > > support the comment version of fallthrough annotations
> > > this update causes an additional 50k warnings. Most
> > > of these warnings (>49k) are duplicates from header files.
> > >
> > > This patch is intended to be reverted after the warnings
> > > have been cleaned up.
> > >
> > > Signed-off-by: Nathan Huckleberry <nhuck@google.com>
> > > Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > > Changes v1->v2
> > > * Move code to preexisting ifdef
> > >  scripts/Makefile.extrawarn | 1 +
> > >  1 file changed, 1 insertion(+)
> > >
> > > diff --git a/scripts/Makefile.extrawarn b/scripts/Makefile.extrawarn
> > > index a74ce2e3c33e..95973a1ee999 100644
> > > --- a/scripts/Makefile.extrawarn
> > > +++ b/scripts/Makefile.extrawarn
> > > @@ -70,5 +70,6 @@ KBUILD_CFLAGS += -Wno-initializer-overrides
> > >  KBUILD_CFLAGS += -Wno-format
> > >  KBUILD_CFLAGS += -Wno-sign-compare
> > >  KBUILD_CFLAGS += -Wno-format-zero-length
> > > +KBUILD_CFLAGS += $(call cc-option,-Wno-implicit-fallthrough)
> > >  endif
> > >  endif
> > > --
> > > 2.23.0.rc1.153.gdeed80330f-goog
> > >
> >
> >
> > Perhaps, is the following even cleaner?
> >
> >
> >
> > diff --git a/Makefile b/Makefile
> > index 1b23f95db176..cebc6bf5372e 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -751,6 +751,9 @@ else
> >  # These warnings generated too much noise in a regular build.
> >  # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
> >  KBUILD_CFLAGS += -Wno-unused-but-set-variable
> > +
> > +# Warn about unmarked fall-throughs in switch statement.
> > +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> >  endif
> >
> >  KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
> > @@ -845,9 +848,6 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC)
> > -print-file-name=include)
> >  # warn about C99 declaration after statement
> >  KBUILD_CFLAGS += -Wdeclaration-after-statement
> >
> > -# Warn about unmarked fall-throughs in switch statement.
> > -KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> > -
> >  # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
> >  KBUILD_CFLAGS += -Wvla
> >
> >
> >
> > --
> > Best Regards
> > Masahiro Yamada
>
> I like this more than anything suggested so far. I think a comment
> should be added regarding why this is only enabled for GCC right now but
> that is pretty easy to revert once we have figured out the right course
> of action.

Agree. This is well-explained in the commit log,
but adding a short comment will be nice.



BTW, I personally like the traditional
comment version of fallthrough annotations.

Is there a plan for Clang to support it
as well as the attribute?

Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQuMcLBHhRy3ygqXoYUfdNpNfLRAgxVKx2%2BsuoAoyso9w%40mail.gmail.com.
