Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKG25KEAMGQERP6WFSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 429303EDD06
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 20:23:37 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id e13-20020a05651c112db02901b29ccfa84fsf6249770ljo.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 11:23:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629138216; cv=pass;
        d=google.com; s=arc-20160816;
        b=ffh5nsm7zjgX+LJ9FtI6QanQYp4PWLPngqDRb1afgmjHPgSlJhggE1HgKm+sAn7eZQ
         Y3+t3AL86EdgrUzoqJoTpW1DJiFFiLjoloOmnBytNjeR/WHyoAyEvzz5Kua+zYh2JOiX
         AQyFXTH1KYAssZNinG2sMzG95GB7Ag5WjrOQiGyEZXLxBzxWVf7Qw/CbudvV430he7/M
         Sh9OzOEF9gL+PRIFktLrokY5UDnTp6tlfAb/iJJJb/Gcv9xeaWrnzN5klqPfqTN9YQPF
         UOMymkN7Sfn+2WTEKKCsvuCiLkzwswpwwtZu7KT6UatVXlTPXDNF1jKkdQQ9qCUuTZ/f
         MEwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=vFescvt93LGDE0myFBf70Mk6nhOv0lyJ1MPgmOj4Qjo=;
        b=tnCllRojm+d44hE+4ahUq1Be8HqT4N6XBqqvdh4158P836TgDeAf5lsSpbqgDkKR2s
         kqtvkB1TRBx+9yJ8JKga4g3+FSXYgW4y4WKqOAWu4/NuNs4RqwvcQzoyar5CIbIrUWBb
         GRJNibQIaRYuLtTuciLIWxX11oDP/VdQlfHIRF6IQBrQ8hhIlJLTHSUZUo3nOBZLUBkH
         Be41otnYvLf4AEOmdy0e5v/DYXyLPqmNW2VTlS0yDcrSRMRnTl7QEAenDaybNTzmpeNz
         SD5wSQdJ2LjKQyrSmQPMaDaxOmMbrFMRmQHDh7/KgkepzPu21Oxb8o+rFHHkaW3nBVca
         7Z8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jWiF3VDp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFescvt93LGDE0myFBf70Mk6nhOv0lyJ1MPgmOj4Qjo=;
        b=ecLDzCjz8tX3lsesTy1lowF542+bhWoz8JJ95vElPeHd4o/eAI7FSUVjSRJWdH4HOC
         b23RP+5uPt+M0OcII3C5WRkhURmK3vLv9mxOBCbv/ijSPeINy+b58zqFRCGmCX3Ma4bR
         5vg4VjTcTojDwR6AyT60+2cNp5mX6u+e/XQhGMz1j0gw8ENG1ggR2LE8Fw4dqfQ2Hejz
         d2qeLX+s15mhhKeLiFGeSnva1i3oR8iSjPl2lx8TgF5i9WniQtEreMhViU6qxmjau/oc
         VLC5PHYOIFFN7CZVZjBckc1vlhWg2jIJOFE9NdZKQAfEPC4pAkPeJjc9ygCxmmV0a9DN
         QyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFescvt93LGDE0myFBf70Mk6nhOv0lyJ1MPgmOj4Qjo=;
        b=GyWMdp/kUkvRerdj5I5uhceLOJZHiOnBBRgFwUyreUQrEggeagMmGVKheV5AIFJqlg
         Cc9AMFRrOGBkALDeIwrrnGq/TvEr+Nf7p4+yD5apKtj0O3sqodplYyDoTpwWRCrhVMaZ
         GGDyUVgci6UnQdpktUxDO1X2AKN9ZAb59GiQS54KIaDFTlFInNUBiLUo+PMgFJvilu0b
         StXCsa0fnJiLyHis5xgEfQmrRWeWyyMcVVXyuLDodW4Y3L+fibCyIcoCm9bOcqy3UKGm
         1Sc+ysRCd7gHxsRSNRa27czwbaodBfItuN9EnMPQ74w//SsWMdnlgpxJ3objmHPNgF4X
         cIEw==
X-Gm-Message-State: AOAM531MaduQlKS0ViUzNgbGA0QmbK2HMfOSETEGQXyRzN0QGvTYxahi
	H+Vq5+GvX+AC8qPBgbELT2E=
X-Google-Smtp-Source: ABdhPJx5XJkDwwtOq6fo64BsK2DDMO03N6VyxLaiE0G14YdTyc3a5bNymJeq3iFqQOzIjvlWVP4M/A==
X-Received: by 2002:a05:651c:a0f:: with SMTP id k15mr2811766ljq.231.1629138216800;
        Mon, 16 Aug 2021 11:23:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f02:: with SMTP id y2ls1912141lfa.3.gmail; Mon, 16
 Aug 2021 11:23:35 -0700 (PDT)
X-Received: by 2002:ac2:5b46:: with SMTP id i6mr9244675lfp.500.1629138215703;
        Mon, 16 Aug 2021 11:23:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629138215; cv=none;
        d=google.com; s=arc-20160816;
        b=BCn7hvOerjs95bqZc5Fe0Up1MQNciDxnyasb9PIyBKPrgfWQBsAIqcSGfZ1f7iowWc
         CXRla4ix9K7dnIe86vszMHT6UEVWmAKNcUeJzgW6GOVKh4HAmq0u31CG2l/K7wVEugkZ
         2U6MSwo+/8pBSFctfM8A4sILV+ODydUsnkrNJDStauWk3vSgu30mruieGSq7elEo6nju
         9UmJr/MoCdfgGMy7z8XZW5Gpj6b4I5O39lgAycehwNe+rjwbw/zuhlv3++jWknhZlXHS
         QZg3CHbIU8qj5iDQWySra7KytleysYf0giGPr7I07xDl7GgaCWR6N0YqS92iabkoi73b
         ekkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iXNEBxrdRbaW0Zvj9MoErhLjqBG//qAZColhvKB/ENU=;
        b=RCGfM2Jxi8m6WpEuqbTduk//xWq1wl8EvYr4aGquhFbgk2wAzZT4jd85pWZDn6vJSg
         JASAFy9DSDMVWJtWo3Jj7O7w66tAQzzVQbZlPwYKwVd7KOXZtxk1AcCAhBY4j0BSQIM3
         DRwJanHs0nuTMtQREZIWlAgpcutEwYUpsxYPRblNdg+4zpbzeZweq/xbIomOWlYR4yzn
         XeJPsUB+fqv7BRLTfVJUnqLaG7yhowPJNz1uw9lrJfQZEcCPRLq+G3fDfoHELRzv41Q5
         HxWGqudfCWJj+xkW+8THtHfyz91OHbvuwTPCEL40LYagrI6v5NPjTxlBezcmsZmuPsMG
         oRRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jWiF3VDp;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id p17si1257lfs.8.2021.08.16.11.23.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Aug 2021 11:23:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id z2so36336447lft.1
        for <clang-built-linux@googlegroups.com>; Mon, 16 Aug 2021 11:23:35 -0700 (PDT)
X-Received: by 2002:a05:6512:39ca:: with SMTP id k10mr12931757lfu.547.1629138215110;
 Mon, 16 Aug 2021 11:23:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210810205611.4013424-1-ndesaulniers@google.com> <CAK7LNAT0KR_xjPNzdB1aJ9nj3=A-ktU-aoP0CWvAnMJ91djfyA@mail.gmail.com>
In-Reply-To: <CAK7LNAT0KR_xjPNzdB1aJ9nj3=A-ktU-aoP0CWvAnMJ91djfyA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Aug 2021 11:23:23 -0700
Message-ID: <CAKwvOdn4DvH_S3wgk49E=mCgwKhErhf8BDVzPXLTmB74GDQBKw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: add Nick to Kbuild reviewers
To: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>
Cc: Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jWiF3VDp;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

+ Linux kbuild, Michal

On Fri, Aug 13, 2021 at 6:08 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Wed, Aug 11, 2021 at 5:56 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Kees' post inspired me to get more involved. I still have a long way to
> > go in terms of mastery of GNU make, but at the least I can help with
> > more code review. It's also helpful for me to pick up on what's missing
> > from the LLVM ecosystem.
>
>
> Reviews and tests are always appreciated.
> Of course, not only from those who are listed in
> the MAINTAINERS file, but everybody can provide
> reviews to any patches in their interests.
>
> Applied to linux-kbuild. Thanks.
>
>
> BTW, one struggle about being a maintainter
> of this entry is I need to take a look
> into random stuff.
>
> KERNEL BUILD + files below scripts/ (unless maintained elsewhere)
>                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>
>
> Another BTW, this patch reminds me of Michal.
> He is inactive for a long time.
> I should ask him if he wants to continue
> to be a kbuild maintainer.

I was going to ask if there was handling for "emeritus status?"  The
last meaningful commit seems to be from Nov 2016, though it seems they
were the maintainer since 2009 (5ce45962b26a)!

>
>
>
>
>
> > Link: https://security.googleblog.com/2021/08/linux-kernel-security-done-right.html
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
> >  MAINTAINERS | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index efac6221afe1..9768e4a19662 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -10091,6 +10091,7 @@ F:      fs/autofs/
> >  KERNEL BUILD + files below scripts/ (unless maintained elsewhere)
> >  M:     Masahiro Yamada <masahiroy@kernel.org>
> >  M:     Michal Marek <michal.lkml@markovi.net>
> > +R:     Nick Desaulniers <ndesaulniers@google.com>
> >  L:     linux-kbuild@vger.kernel.org
> >  S:     Maintained
> >  T:     git git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> > --
> > 2.32.0.605.g8dce9f2422-goog
> >
>
>
> --
> Best Regards
> Masahiro Yamada

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn4DvH_S3wgk49E%3DmCgwKhErhf8BDVzPXLTmB74GDQBKw%40mail.gmail.com.
