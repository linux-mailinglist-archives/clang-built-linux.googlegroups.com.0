Return-Path: <clang-built-linux+bncBDYJPJO25UGBBF4M2KFAMGQELUDPWMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB4F41C85B
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 17:28:23 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id z15-20020adfec8f000000b001606a799300sf733770wrn.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Sep 2021 08:28:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632929303; cv=pass;
        d=google.com; s=arc-20160816;
        b=shzn0hSxY0e10m9HWgf/iBO0vX5pfQxrEpQTKuca8Zh3JYdeY42KPLTybtdTBE08PX
         XsurnSXpwe7elLgc23yLYzrNegF8em1RO/RrZE585RLgmAnZxYYpVi0N6lo/cOnO9O/6
         OMWjs4VG86kt2oADJnxi3yYbdvkcEfXq57fNGWgltezCHL8++pLU3LIM1YcWTvQl273v
         /MeJQ4xOHtWeDcP5ysi1l5371Pa1x+NLiznEjOJykgfQROwz0zlGLSa0h+8c6yzWGfBt
         D7ZEurTp+4vpMMhEbdh6TOGF8nT7Ffy+0XTqOKPxOcbIEiIOxa9UlsPtyisXHNdQ8NHi
         bjGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Q1oaE+liBIWCCj1CzqJRxNIk5jjcV//YNXyyTKQkk0c=;
        b=kPO5n83GU2BAecgYljAxZ0iiNrK4Uiv0M/kByGjuhK2VRtVRLVl1hkPW2zifFXzpYd
         XANGNeH3PPlOul5dw3OREkR3fFj2GbH/1YkvS0dTeNcf+PjUyxGZIVyuFvxod9z763kc
         le434A+eRqFtLZT13szWE7QRFcMQinrFe2lESxDBRmsM2XPh3sXMRtpnA3PoZelfwQzr
         utejvfbh0VMPEwiRMurMIJ+4MY0CNymLW0ASEbZlAJ8IAsIxYvBYqbEswBbU6/uUVZlI
         jcCQaEd6OipIp5DjVaRHxUgEWdVptEt2OlOy3RYmgU0Ld1aHXNquJ47as27SSOF7DZIO
         k1UQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=QWoUh3AM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Q1oaE+liBIWCCj1CzqJRxNIk5jjcV//YNXyyTKQkk0c=;
        b=DmQZkiKHOMMHytSGuVChAd/QLacfWDvR7Lk/E7Y/N2yuU8QobhyrtnW9dVfBhy6GsI
         NyotqvSgjd3qjUlHnfBvjq8aNUBym3tc0FMXDfkTq02MxhazCcf8gAUrwJOo30VRz/os
         NFYmImGqjddOXEa3mV4zIB6mx/heYo7ug/66uIKdxWUPAvWuvCmnHx6UsDs7NIecRlgx
         LQwJ5XSBQUly7SqoR/dQQ5uOJqOyLYEKINwVjW2MJEfhHrOzvnBudc8lbghyb18ME8ND
         WnIqWj5JBgJzjKED16GQHgn5mvHtWIu+RcCaXrED3fe37NR33uaEjteqDurG45Q2KIS9
         uZJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q1oaE+liBIWCCj1CzqJRxNIk5jjcV//YNXyyTKQkk0c=;
        b=oTR9eqmi9V3oSxpDmuAhucLb+maKe27BdWa5nL2Od3J8h05+GkMHyd/99rhLJhPiIc
         CcGBpvPCCUfY37oEgipnLiRuMv6Qptz2mNgvjGuJ5/hMeYVrWKm5Uw9m84nEOm+6Mj3+
         oLSS5e9s9K2wjc9nLQ+iwzeUQ/IH33eFDAtg/VeaQX+LHlzh6O+JHQGSIMieFtk93nPd
         AUBDnbIIssZl8LJHEoyPsDPC48W2UE307B5jfnO+ZShBdzd2EkyBqSYrhucmzEwsMpxg
         4VaBVqdDH3AkLrS8KBUQFOuU7bP+DHCIF3JZvJU46LuTikqfz3cBGdygIN//v8ypscfo
         HCRA==
X-Gm-Message-State: AOAM532coYfSTILc+JDEmv8BhBEGj+xff7Rk4bvQmOHp2AB/lJLuV87X
	x5GQilbOXh2uXL+6GeY8PDk=
X-Google-Smtp-Source: ABdhPJyrDBZ6iycwm/S8qqp/8/8MXbDWk2nygQKsv4eFnO9lxOT262qlLKVR/R7FikbOlz/z8FSPAQ==
X-Received: by 2002:a05:600c:40c4:: with SMTP id m4mr11147519wmh.64.1632929303607;
        Wed, 29 Sep 2021 08:28:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:bc51:: with SMTP id a17ls3773678wrh.3.gmail; Wed, 29 Sep
 2021 08:28:22 -0700 (PDT)
X-Received: by 2002:adf:e603:: with SMTP id p3mr489414wrm.357.1632929302342;
        Wed, 29 Sep 2021 08:28:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1632929302; cv=none;
        d=google.com; s=arc-20160816;
        b=gbgd5r5gul5uH32tmWk3zidorOMT2fCWIQXkjueOz1a4uVPqrq7fei7xLGs52vs24w
         k4nMk/eCxgkC8bX5FF9LXXXBW7mF3fsaKuPYrM/CU3Mit4+tM1780MEAOxpPXOTNqfYP
         1yr6b5X5XttC99umRqMi5F0EsVb91p/yZm6Nbs3ABj6YVqhhA0AtQnwuQ+2MRzbN4vwH
         WMi0WpbEBV/vc57LLP4dxzfhbyrFcjNOyA6WSMPnbkLAOkEyEnAExoGJWMU7cx2e3ThD
         fHRSwIBEga6vjPWN9YQt7DFjFfwsN2ODYbTXQhws9JZnDD/wuLDZOABi0dHghNgZa3nI
         7gkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=alpCVEa/uaGlKwYRNfSkakTnxkABKlCXIyOpSXzCHa0=;
        b=UqztF5MKYEZElx9Tk8WyW8JnO81jEuayms48kQ2Jy7FMkkZ0lU1k3BpHC49f/Ft1e8
         kLZCdGip6eNUzF8if3zzx6htAeVMT9S52OvbR/Rp7eI75waSBDa4EUXVUw4o3RJVD2lF
         BRzwu2U60g4EwhaM5n0xk2eekuihnK5cFGrjBmghjt6gYUICRzBuV89eyYfIqHHvubt6
         NTny3za3W72Q1JWbbMCyNN1blmhSCWL+UcO2djn28CI59kXkE3rHo3sp9zBOk4KxTjlK
         iK3C6L0qF65KEsTM7WpjG+l6dH0kUQZ+o06Z0s97ujcgmekj4dzPYOe0Apa33NIz+BUN
         nNdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=QWoUh3AM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id q21si186538wme.0.2021.09.29.08.28.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Sep 2021 08:28:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id j5so7542966lfg.8
        for <clang-built-linux@googlegroups.com>; Wed, 29 Sep 2021 08:28:22 -0700 (PDT)
X-Received: by 2002:a05:6512:705:: with SMTP id b5mr314694lfs.82.1632929301091;
 Wed, 29 Sep 2021 08:28:21 -0700 (PDT)
MIME-Version: 1.0
References: <2109475329.10103.1627349216402@localhost> <77ac9112-b6d3-e911-6944-3e2188b23388@kernel.org>
 <CAKwvOdnw1iRgUf8yW0mW6XzAU00CyMvmyqWpYcaNJLSAY3=CkQ@mail.gmail.com> <05126B99-7592-45CC-BE44-0032E083792C@linaro.org>
In-Reply-To: <05126B99-7592-45CC-BE44-0032E083792C@linaro.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 29 Sep 2021 08:28:09 -0700
Message-ID: <CAKwvOdnuX=DNVLuQxyBK9t=F0U8-Jarw4SH3ZzS8nbVy82B7OA@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allnoconfig
 - Build # 10 - Successful!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@linaro.org>, 
	Javier Martinez Canillas <javierm@redhat.com>, linaro-toolchain <linaro-toolchain@lists.linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=QWoUh3AM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d
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

On Wed, Sep 29, 2021 at 4:35 AM Maxim Kuvyrkov
<maxim.kuvyrkov@linaro.org> wrote:
>
> > On 28 Jul 2021, at 01:09, Nick Desaulniers <ndesaulniers@google.com> wr=
ote:
> >
> > On Mon, Jul 26, 2021 at 6:32 PM Nathan Chancellor <nathan@kernel.org> w=
rote:
> >>
> >> On 7/26/2021 6:26 PM, ci_notify@linaro.org wrote:
> >>> Successfully identified regression in *linux* in CI configuration tcw=
g_kernel/llvm-release-aarch64-next-allnoconfig.  So far, this commit has re=
gressed CI configurations:
> >>>  - tcwg_kernel/llvm-release-aarch64-next-allnoconfig
> >>>
> >>> Culprit:
> >>> <cut>
> >>> commit 8633ef82f101c040427b57d4df7b706261420b94
> >>> Author: Javier Martinez Canillas <javierm@redhat.com>
> >>> Date:   Fri Jun 25 15:13:59 2021 +0200
> >>>
> >>>     drivers/firmware: consolidate EFI framebuffer setup for all arche=
s
> >>>
> ...
> >>> # 00:00:38 make: *** [vmlinux] Error 1
> >>
> >> It is good to see these reports again :)
> >
> > Yes! Is Maxim still driving these or is there someone else at Linaro
> > we should be working with to keep this reports going?
>
> Hi Nick,
>
> Yes, I=E2=80=99m still looking after tcwg_kernel-llvm and tcwg_kernel-gnu=
 CI loops.  There has been a silly bug that stopped reports for several mon=
ths, but they are back since end of July.
>
> I have only now noticed this, while I was digging through email archives.=
  Please add me directly to CC: so that future messages end up in my inbox.

ACK, thanks Max!

>
> --
> Maxim Kuvyrkov
> https://www.linaro.org
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdnuX%3DDNVLuQxyBK9t%3DF0U8-Jarw4SH3ZzS8nbVy82B7OA%4=
0mail.gmail.com.
