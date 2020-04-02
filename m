Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVW2TD2AKGQEP3ICI2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFBF19C8B9
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Apr 2020 20:22:15 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id f20sf3624653iof.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Apr 2020 11:22:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585851734; cv=pass;
        d=google.com; s=arc-20160816;
        b=xxs0C61CMwpjrhsvpOXYEFQivkz4cAHxnBCs1NK07FuXTguQZ2d4si/6C4/GrM7jE1
         3Gw3EmZ4/hHZu+hrpvwRGvZrYY7SAtvY/Ued4+CVeuf0q9zs3LX8Qj2iljNysYHcZiiz
         o8qfX76PfC8xddkCajDoX1H5Nctr23lalKctDVsBi9N1Q0Srw+lwIjhn+Xi3kI0ADgla
         e/51/nulsR8bQIfsFU/0LIs5zMTnMUjoYjIQdK7Z4u6G/GnNrE6IjVtQMS8wAz1Zfwsz
         DiUXNxOmrSUqLvmFgtXiYHLWYX+v5H/JV4foYYWXGpZh+w1NbSznd93QG6fi8nulrK+q
         Hm0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sAZ/eR6pEpi4nFOWBVqnmtNGdq2RLZeKiwzgJt6sXsI=;
        b=RBHOfWAjoClX4orkvV5FR7s1pggQoDyR3NgJ3YvyBeG+GS/Enq73/ZP4cDKiNO8y/t
         5EAC940KXmFAaYrYt8yuN8rOnRFZEWXMxwdV0AzHgMpidNV6EuMrv4v1fr5rluCC3QRt
         BSv6LinxZQ7VXOknri6oYgqWURYHYMb1iIHjRdvpm52kLPfdSkxoRnWEBAZ7rVl0Je0b
         flx4TrSG8GCm0sMwuUmuvVQtRQwnjNRbtMicxj8i/rPlbRQWek0QKmJAABrBSwBmTFcy
         4iw0wb83nQA24OQvw8Zviz0niJ24gVAVeSdjDsqcnJK2QB+TTQdEJBX3dKqjvkAu1T/i
         thsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cTvopqsv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sAZ/eR6pEpi4nFOWBVqnmtNGdq2RLZeKiwzgJt6sXsI=;
        b=sWgD7ZpcRKHS7bRdZrVLVsZTG7cQRj02nbG0uVMz05e4X7jYeVFV8bBJm/rRIyU5Dr
         IYoCB9tiAOX3aii4cCCephVGkgKM1t16sU4xfFlpD9rs4HuMai4dd3eIa3vnL5Tv6gnK
         v7ueJ67fKYSx/wblkEOyKTIHBH92sNG/UoVCRbX2Eaw6xo6md1ZSf+IDTtsJwnPGSr7W
         v++WDJYBiu2b4aYCTG3G85Tm+a/gbEu0a4CEoKTVvMfgfYagz2hqSGhHynGVDy6n0lSp
         KQfUZLITSoRW4f0oUljh+mxhrupAJEyMHorUhQ4T7uiTbAG875b3CpWNKMSOX+nQmqXf
         SCmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sAZ/eR6pEpi4nFOWBVqnmtNGdq2RLZeKiwzgJt6sXsI=;
        b=em2mcVhAYv0lE9wAAdr9iOiZE6ZHgvcfLRI2DJgocfTPGhuf/20Zx83lT8lCbVBm/g
         hnCCB1cdzpj0Wu44gFuwD9tdYitclX5qHpchYvXlHMbPOKost4WOsXtEeNLJCSG3NXAZ
         grxPAagHhdDosonnT7Tv3fAIlXHfzRhkFoy8rCFl4Ogj71Iuz18WGkmAOiP8yqhW+5jF
         CbVGn/nSdx71ZNWmC8+N+8RPrf0UIwfbm3A62z2nskcwRtr+pdxyFXpti5I7q16vTTa2
         ja8/oVccE2siRGHCuhryqhcgHorelX2uyvGVAzkd9lAbCo25FlUDMK5saV0zvVxWFuPC
         WyVg==
X-Gm-Message-State: AGi0PuYgCYii7C+C5s7r4j16I7AkdZ+B44AaPvH8yKxvU1DpjcUZ6fmu
	9F9RVYIk3mcJUpmSfeLVUD8=
X-Google-Smtp-Source: APiQypI5LyiftQaqx4LggqyraCcgt3aZKOHFyT4ihOk7LPbYoXYBsYnt+YiiMxnfFOoPzJOuW23omA==
X-Received: by 2002:a92:351a:: with SMTP id c26mr4776892ila.141.1585851734806;
        Thu, 02 Apr 2020 11:22:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:ea0d:: with SMTP id m13ls1359827ioc.1.gmail; Thu, 02 Apr
 2020 11:22:14 -0700 (PDT)
X-Received: by 2002:a6b:6d16:: with SMTP id a22mr4004295iod.182.1585851734354;
        Thu, 02 Apr 2020 11:22:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585851734; cv=none;
        d=google.com; s=arc-20160816;
        b=IB+81YKbDfUyJy9dc9xZsk9LHdjuAPzxyne0yBJapk1SLsCkhQiIk4z+MdwapGfVgh
         fRdnCOmFKSQbfknGiYE52Sbcv/JTB/hPAkZjR1RajqR+i5J+ElcqZFEgpCopK+RMMN7l
         FRo+/gnLItA6Dc4t/QNJp8z9EgSICl4sAd3v2NYPMEdTTVr0s/CPKFnSA6FjGGJzFDCU
         ZwelD7gioQwqMX893DCsAycQCP0dAq37N2pTVgKRBPs4Co9KHo6MBcXXgA3abzNB+1UI
         B+y7JxGkHQOdI/XMGPTReL/0MGbOnw9BVVZZJPC4RnwvBtSUfwuBXeMTaddyL9tJujZ9
         47Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2UQRYNvKvusZq1CNM2OiULfI/O5UBgDCnpol3ajdzr4=;
        b=nJYo/HSn1JJMNwg2RiEn406KmQkKAwMSwFWpubkcKUo4FacbXXEbEg4HPlN1xV+0/k
         Fb4aqOnl/BkepKqwUE4KYt2s/rgeninbamLHNlmajSHO2+mM2CUtjSd4j8gln2IPCjsj
         udTmP6yzRxXJJVvTPr6okwFB9A9DbLr3cyfHuhyHbzNvEsydR4OXra/IiOtz71nCdrps
         EVf5DmEe4FrqaASISGpMQ3lFeB4MmPuImocfuGtJL07fGhVtQ+y8aGC8ICR8qsE0oS1n
         AMvydrUMKY1YY08MbkrH0ECBDyVRa9w3GPEkELVApXL2q5s/YOZqOAc95ebTYxZUu6BZ
         DnKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=cTvopqsv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com. [2607:f8b0:4864:20::a44])
        by gmr-mx.google.com with ESMTPS id d207si495563iof.3.2020.04.02.11.22.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Apr 2020 11:22:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::a44 as permitted sender) client-ip=2607:f8b0:4864:20::a44;
Received: by mail-vk1-xa44.google.com with SMTP id s194so1207494vkb.11
        for <clang-built-linux@googlegroups.com>; Thu, 02 Apr 2020 11:22:14 -0700 (PDT)
X-Received: by 2002:a1f:5003:: with SMTP id e3mr3198682vkb.59.1585851733351;
 Thu, 02 Apr 2020 11:22:13 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook> <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
In-Reply-To: <CAK7LNAQGTAgtADfY4H-k8X1J9nTMeOWvo8ZFfrUSHQUbhgcLKw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 2 Apr 2020 11:22:02 -0700
Message-ID: <CAKwvOdnO_-jiQzCmy7pQNMGmZsgD9J=PYXVzOQ1NF1+u44MsOA@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=cTvopqsv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::a44
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

On Thu, Apr 2, 2020 at 10:02 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Hi Kees,
>
> On Thu, Apr 2, 2020 at 5:18 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > When doing Clang builds of the kernel, it is possible to link with
> > either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> > discover this from a running kernel. Add the "$LD -v" output to
> > /proc/version.
> >
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  init/Makefile       | 2 +-
> >  scripts/mkcompile_h | 8 ++++++--
> >  2 files changed, 7 insertions(+), 3 deletions(-)
> >
> > diff --git a/init/Makefile b/init/Makefile
> > index 6246a06364d0..82c15bdb42d7 100644
> > --- a/init/Makefile
> > +++ b/init/Makefile
> > @@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
> >         @$($(quiet)chk_compile.h)
> >         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@   \
> >         "$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"    \
> > -       "$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)"
> > +       "$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
> > diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> > index 3a5a4b210c86..f98c07709370 100755
> > --- a/scripts/mkcompile_h
> > +++ b/scripts/mkcompile_h
> > @@ -6,7 +6,8 @@ ARCH=$2
> >  SMP=$3
> >  PREEMPT=$4
> >  PREEMPT_RT=$5
> > -CC=$6
> > +LD=$6
> > +CC=$7
>
>
> Just a nit.
>
> If you just append 'LD',
> you do not need to touch the 'CC=$6' line.
>
>
> If you do not mind, I will fold the following
> on top of your patch.

With Kees patch + Masahiro's diff applied:
$ cat /proc/version
Linux version 5.6.0-rc7-next-20200330+ (ndesaulniers@<hostname
scrubbed>) (clang version 11.0.0 (git@github.com:llvm/llvm-project.git
6d71daed03ced011cd25f4e4f4122a368fdc757d), LLD 11.0.0
(git@github.com:llvm/llvm-project.git
6d71daed03ced011cd25f4e4f4122a368fdc757d)) #167 SMP Thu Apr 2 11:17:36
PDT 2020

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

We could actually use this in Android for a VTS test I've, uh, been
meaning to write.  Also, LOL at scrubbing the "compatible with" part,
reminds me of user agent strings in the browser, which are god awful.


> --- a/init/Makefile
> +++ b/init/Makefile
> @@ -35,4 +35,4 @@ include/generated/compile.h: FORCE
>         @$($(quiet)chk_compile.h)
>         $(Q)$(CONFIG_SHELL) $(srctree)/scripts/mkcompile_h $@   \
>         "$(UTS_MACHINE)" "$(CONFIG_SMP)" "$(CONFIG_PREEMPT)"    \
> -       "$(CONFIG_PREEMPT_RT)" "$(LD)" "$(CC) $(KBUILD_CFLAGS)"
> +       "$(CONFIG_PREEMPT_RT)" "$(CC) $(KBUILD_CFLAGS)" "$(LD)"
> diff --git a/scripts/mkcompile_h b/scripts/mkcompile_h
> index 8b38a96163e2..5b80a4699740 100755
> --- a/scripts/mkcompile_h
> +++ b/scripts/mkcompile_h
> @@ -6,8 +6,8 @@ ARCH=$2
>  SMP=$3
>  PREEMPT=$4
>  PREEMPT_RT=$5
> -LD=$6
> -CC=$7
> +CC=$6
> +LD=$7


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnO_-jiQzCmy7pQNMGmZsgD9J%3DPYXVzOQ1NF1%2Bu44MsOA%40mail.gmail.com.
