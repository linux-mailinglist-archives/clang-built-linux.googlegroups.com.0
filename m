Return-Path: <clang-built-linux+bncBDFYPNGKY4MRBIOXQL3QKGQEUWZHMJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E141F5167
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 11:45:06 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id g24sf208000ljn.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 02:45:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591782305; cv=pass;
        d=google.com; s=arc-20160816;
        b=MtHZV+u/VQULF39JQQvuf03D7T9tIzjsFor27oylblmQIouSsBfC7B9BVlOnhrAlam
         WAv2smtb5USzjDalDJ5ER9saJ7ZRXfe/INPycnzHZbLlaSbzxXQvGga3r2D+vnA4p9nc
         BiYEg400Gf8zH93dSU9/BOc0EQfB+FIrgP0ds5HtxQEE7m+dcOvKIA6Gu/RQ+cIhPxgr
         X6xbW7DpC36qq4QwBovYlRc7h/IbMPTwotpTAU5jxm89+B2DTwxihd44Hv9VYP8F8Fon
         rS1zSk7PJQUzbOodhKAsKZ8DKTAOBSlsvKiXzZkJY06qYH8wl6es9fsBbJ8SlDuqwuEc
         2Dgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=C5FEw5knA8HlpNg1fjEbO72tfbhIkyE46imrmB/bhtY=;
        b=c8PvKDB+ClQYhBKU6JrfNzE5S861mIjkvSUmC+7bbars+n83qhy26tCo8qcdfc4wM/
         WmROklxhyrgPMcTJPQVf++cwVNvsLHUAR9r9pcCBxJr03KQeSVA21LmJZ5Rh5HTTOlNN
         e3AvBgBEuxctZ+Ln9TPVyS4J2B31TaVRtLIbUEv/r/U1BnkhfUHS8fD9yjU1UC/T9eKC
         tSh5YTV6ScBvxmfkw/hwB6wRrF3N92s0Fpmf60MvP3reGFDk9c2aZbJ1Xkw83MEGbVYt
         D/qvwHfTgX4T/JnMb2Q/nNthtDVvcALPHpFO6/Cwekm/0p+2vMBq7Czmojfsdbw3ByIJ
         mc4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FPoPyctx;
       spf=pass (google.com: domain of zhenzhong.duan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=zhenzhong.duan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5FEw5knA8HlpNg1fjEbO72tfbhIkyE46imrmB/bhtY=;
        b=NjkUBWO79y/Y5FrvcfQUcMxwUS8WqYOnXdHFmCm31k0TXWZIwMtV4bExzrUuvbaUsT
         yIkIZ1/xD0hiNYPPyPpyc+PoJnOGAEqE8KcIVqdzx0AVrg4jhdaKMhlyNYZ9/FaXzZE3
         geL+SVgbg3qKLfiXtv/QeM1aH2Wh9ptzcL0SGuq0UjcNyt6ijKNtY1t+gvKoHqAkhDg4
         lWp5ylBJ1Hf0f/yHctAE8h3SmDIcGitOzTEMQ0UMpWHug+BkuyiYwxCkEWmnRGi4xuht
         E4yqNRwQkf223xizJujEqMveDn+GrTLwItiIl793ckxBBMXASkZ5wHbYWGfJ4c9q9xAG
         gjQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5FEw5knA8HlpNg1fjEbO72tfbhIkyE46imrmB/bhtY=;
        b=OWsIi23hLWbk7C2OyL7VEKJ4bZWU5I4dXioLXXima4I5VKAXiuHVTCy0Ax+qOztZum
         0u8/HRAknIjGwRHUvqmfVBDbwDeCTdPj+NKwfGPenOv7s0KSpZ/zdXmYRRyeWiQLJJZu
         nc04L3td7ckWPHX8TuMfTTF+tS4Ms1EVYlYi7UjCgkFbCtM5UfRZsDarL+oPLp7B9D0a
         5wq99gb/s9bPECDvWuD8evWlQ9wBzbty+iwHi2odaqPSgHPpevosYWx5W6Zw1N7I/6qx
         s56DQte8Ik02caBa/7UVV0K7DVbIP+bAwhtbn2Tuw2faxBd2J5J0XrjP0aHXq2OK4sPi
         ybhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C5FEw5knA8HlpNg1fjEbO72tfbhIkyE46imrmB/bhtY=;
        b=CpZikFWqdzXnlbEIFcs9q9Mp84mcSXx/XGJnFm6+ipT+VAj7pdALm8wAfl61sXQLrs
         HxIhXRyZLVhg0QFyjB7gfuzU3wwhoKrK7fZibVmUNF3xE0yH90GIvzOyhOYi6i9OtIEG
         /6vHn/pG8uSUOICwgXVegrMLAZWob+7J6NIKZYrHO5NpuuIpgoJbjBmRxmQcXx9TVIyw
         +8JqozQ+PJUCE+uXTUJX32ZAYfiUivWzPYs0XyCc7eismmDlBVGMMmkcw1U439nu9yim
         ngho7tZMD83xs310iyLCJbwzytTgT6VkvzO1qXEU700so+HxEcogFMQ11LNvk7XQN/mX
         cWmw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xmnkUbWNWIERiV5RNWjI0B5LcYn0GPmszZz1WnLnqzEGX9Ztd
	l3GD0Zyd0MD3jWVhd49DF1I=
X-Google-Smtp-Source: ABdhPJyLdUsqSaLo2dbIs84BFealhIlQyI/zIxWFxWUUSY9TG3Bh3X9LQvzzDl/FnW5Gm8WaXOdZ1Q==
X-Received: by 2002:a2e:9b04:: with SMTP id u4mr1425473lji.364.1591782305733;
        Wed, 10 Jun 2020 02:45:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3047:: with SMTP id b7ls4177750lfb.1.gmail; Wed, 10
 Jun 2020 02:45:05 -0700 (PDT)
X-Received: by 2002:a19:b06:: with SMTP id 6mr1260033lfl.104.1591782304984;
        Wed, 10 Jun 2020 02:45:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591782304; cv=none;
        d=google.com; s=arc-20160816;
        b=UMMtpFzsBTKywNlZdzKrp05HSaVfjTCNhzR6gEp0pbdinUdlhL4BevjAkFTAgFNuNv
         e0ZvwASQfUzOllnu2wY5FAnMbqGhniGy6KsyqFfXVlA2OElBvn4p9YZRnxjKWK0QmCqd
         qIk+IT+Kq3eJh7oiAEzSLMu5hVdiQ6OFo/ZD3WXFe/UIOsyqaFhH/u0cQf6jqUrAQ2yi
         qqLU56yYqV79upfc6tXkG/9wK10fCDIc/kIeyLzOERqu7TrAJQYf10leBaNV4vtY91pz
         5RKvI8zThzhK3AKTslYUj34fuXzwC+Q41RJB8U5DtNpoiN8otWsbFWhQVAn/7cA6mQng
         +t4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=knFTNygHBlvK7O+pDlbdvkQzVtQ3TgCejJaIUpEQ4jE=;
        b=dwKBcqGS4qmIDLYQ3rOVlpAXUmVS13fshKE4QfIKrYcUe+vuULjRmzZOIrPS0j2B3Z
         Npd+wkfeEhmMa/wxuTa8iVrjl4H1JXebe1bMJi8LIBGstSEzGcK6RSVx1x0hqFcdebql
         wSz3z8Uxk2+pmTKZ6zFxtAm9AqJl0i8kKqLNr1jwedgNQM6/xB4E+XXwtvcgRCdJW745
         F+6po9+kLpEE6sPohX41HryPwyvocLzsndheWjgaR2uY8ulCXhv0g1oB1ZIQWWxnEWkr
         NnjV8srkEByZJ4cTbHSBDh2H/pF+T4VPZbOGM1DVaFkJgSpkHbUg5Zn2hLolAw9niYly
         ov8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FPoPyctx;
       spf=pass (google.com: domain of zhenzhong.duan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=zhenzhong.duan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id 14si1176325lfy.1.2020.06.10.02.45.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jun 2020 02:45:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhenzhong.duan@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id d7so1048788lfi.12
        for <clang-built-linux@googlegroups.com>; Wed, 10 Jun 2020 02:45:04 -0700 (PDT)
X-Received: by 2002:a19:5d44:: with SMTP id p4mr1244127lfj.56.1591782304769;
 Wed, 10 Jun 2020 02:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200610071446.3737-1-zhenzhong.duan@gmail.com>
 <20200610085932.GA461993@ubuntu-n2-xlarge-x86> <CAMj1kXHun8-SS4L03ccp=pt1oyPSfpuPezju294NnJoKLtcvcA@mail.gmail.com>
In-Reply-To: <CAMj1kXHun8-SS4L03ccp=pt1oyPSfpuPezju294NnJoKLtcvcA@mail.gmail.com>
From: Zhenzhong Duan <zhenzhong.duan@gmail.com>
Date: Wed, 10 Jun 2020 17:44:53 +0800
Message-ID: <CAFH1YnN9wDPycD59EPV406j9jkvsibi9Ewjt1ROswENv8OVupQ@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub: Fix build error with libstub
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-efi <linux-efi@vger.kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Kees Cook <keescook@chromium.org>, 
	Ingo Molnar <mingo@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: zhenzhong.duan@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FPoPyctx;       spf=pass
 (google.com: domain of zhenzhong.duan@gmail.com designates
 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=zhenzhong.duan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jun 10, 2020 at 5:10 PM Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On Wed, 10 Jun 2020 at 10:59, Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Wed, Jun 10, 2020 at 03:14:46PM +0800, Zhenzhong Duan wrote:
> > > Got below error during build:
...
> > > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > > index cce4a74..25e5d02 100644
> > > --- a/drivers/firmware/efi/libstub/Makefile
> > > +++ b/drivers/firmware/efi/libstub/Makefile
> > > @@ -6,7 +6,7 @@
> > >  # enabled, even if doing so doesn't break the build.
> > >  #
> > >  cflags-$(CONFIG_X86_32)              := -march=i386
> > > -cflags-$(CONFIG_X86_64)              := -mcmodel=small
> > > +cflags-$(CONFIG_X86_64)              := -mcmodel=small -maccumulate-outgoing-args
> >
> > This will need a cc-option call if this patch is necessary because clang
> > does not support this flag.
> >
> > clang-11: error: unknown argument: '-maccumulate-outgoing-args'
> >
>
> A fix was already sent for this
>
> https://lore.kernel.org/bpf/20200605150638.1011637-1-nivedita@alum.mit.edu/
>
> which does the right thing here.
Ah, so I'm late again. Not clear if there is easy way to check queued
patches for upstream..

Regards
Zhenzhong

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFH1YnN9wDPycD59EPV406j9jkvsibi9Ewjt1ROswENv8OVupQ%40mail.gmail.com.
