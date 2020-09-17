Return-Path: <clang-built-linux+bncBDEPT3NHSUCBBLU7R35QKGQEURN7GOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0E626E0C4
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 18:32:47 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id d21sf2113957iow.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 09:32:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600360366; cv=pass;
        d=google.com; s=arc-20160816;
        b=nkHNmazsWkNWObt7LHd5UHwGDzNLlETp4ehKXnPEyLLnu7S4mAJLYXBAPlUUf9fcUe
         BvOjdXh3RrTrlXWevOMuy9JsLT61HiRuZZY+0UgRaLDHNT/v7UGMBd8DfmSLVSY9LK6s
         RAAuP1CUITwNlfluguOhr+W1LgXOUWnWkvOfUuEkzKNJvmgIbtj3ZT85W+CaQRkrDXzS
         kIhzoEbAKshxEimgfCHs0fIroyczXvfH/5l0ba5e14ClP0lWJAltHHYbwRVMRJiYPWII
         Nb0IdC8jszJY+WIXtUDNf2Qs0fOU/+/9Za8K3txnI8CYeg9dAq5OzUSDFv/J90FqCW+n
         1pDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=GJ9vTNvUHS5lMOAIUnLhI+X3agUv3fbZkstRL0eVRCo=;
        b=V/6rELE+c8yAZkaNwEg4qfGLSsvhMK8vMqTa4IAevL9UaNdaI5VhWPn0DE9ZKZvpVq
         fMCBMivWQjVHwgw5eRa81wvPjrQqYEpfGpXrsit4AQ3qx24g30jce0kTaVmcZGjPavSe
         0Xwt5PkaYn3P5sTXzlDj7aKAzhGzJ9qcO+mfgRr28nSx9/SkkwEV4OeXIyBQUiw+m0wm
         qdZFishnqbPnFfQbRsziiSxKrfrP59ab/kQ6nB4V+hsO9oUHBfTUoiogtyTpw7nFWnq/
         ptMFmJs17uhE5dO/jL3w6/6y3tXZLscZEiRy4cnCjv7vceC08obNyZwPu1C3nCAyBfz0
         e8uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NYYGO1W9;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GJ9vTNvUHS5lMOAIUnLhI+X3agUv3fbZkstRL0eVRCo=;
        b=j5ekE2lrzM8/+jK0FIBBjdNGgOb7VMpWJCbqOvyh90ENSdClmgFhGdDA6E+IiAG7+Y
         UCy6GDyJGnXnlsYxKqbEuSgXQgh2Y8fgJNOKJTCc4oUi7pvGDszIEVTQX7n1DIFwlT6p
         57J7pvniPn3o45gj2OIERv1rRtKaZ4jM4BgOCpFsAx8t9BJcIarz5wAa4VPjbPKX/EZx
         0VH3j3oQH3LwGAflANlx2rzYqfMwnsHLEIGbatAKWDwmYHcl/yM6cZxrTv1chKy8G/aF
         inu4zXF5YnSqxYuUtHbPkbPe03Bmumrn0XwiH/lCquZuOD5hgACnrmnb8Sm4UYYG6SaE
         79Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GJ9vTNvUHS5lMOAIUnLhI+X3agUv3fbZkstRL0eVRCo=;
        b=O6AJjB69+tmQsoS8/SH2XHo9pgLg+5g6nkzgUg8nbVvxZhHdZRMkP5oCUkHzh81A+w
         7lAWjtwcZ5QxmgEOsUUVy/0B4GmGCja8HITnNWm8Mr8ZKl9VWAuuqi7ZBIpoaOvme3YJ
         Sop4L5sYtMCb9+IsW1gazq5+qgrRMC62nUQEhyVXoXsxDezNC+/Ne6//dIdU9QuRtS8g
         xmGVXZirGjYtKaHcNjrxxwbVufhGLC7i/M9FCajluHM3qOt97payk/alTPYb+RlPO7GX
         EPU+bWs72xRVpfj9ilcwFECaI2/eXnP/v+f5xuBGW6bIZ9+Cr7qcM+8jvQWLRAOtsaKb
         HO0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319Nuoz57ANY4EWN4ABQM6soBi5cGTDWOTaOX9HDNUfsO15Nn6V
	wqPjjPAli2+zrHGAvBuE+us=
X-Google-Smtp-Source: ABdhPJy/A5pfeDP1n1rQocAVvwSozvlbn51Ko6Qyf2du5vaRHliLqcFUfQAkz5plPkL7v5022Fj9+Q==
X-Received: by 2002:a05:6e02:6c8:: with SMTP id p8mr15899312ils.259.1600360366714;
        Thu, 17 Sep 2020 09:32:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:a901:: with SMTP id c1ls447268iod.1.gmail; Thu, 17 Sep
 2020 09:32:46 -0700 (PDT)
X-Received: by 2002:a6b:650b:: with SMTP id z11mr24535418iob.60.1600360366192;
        Thu, 17 Sep 2020 09:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600360366; cv=none;
        d=google.com; s=arc-20160816;
        b=v9SMImNDeJjdYM0M9sxUCoq+6WfMSJzbsGfUoVzzHqWBN2k5hSCx2jbtD0NydC62KS
         VieF9NECe7C+VWHdnM9zfzhKZPV5gge3JQ3wVthM8/ojjsc2dHD6/w+Y24kYh0ChT3nv
         kPgoR/CNYboF6MSMe4oylTQCZku4KS6b1x51A8fL0ZASX4F+jL+93Y+2uYeuGfa62lkD
         9vfStzZOnMLnpwoWj5CsyxmtaWds9cExN1b6dK/JZHCo2b4G3FkvBHwXkTEl11wnjB77
         6Qkn6KRrR12sbjTvQBs1J1AN/8r4YYUEqkyH3KcqkTjOZCdmyYKhXwlpDEIKd88U2eaR
         rmVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+6QtJZbWwHoy3TBoFdGcKM7SMwbz804C8McO6Ofc6U4=;
        b=a+hZPkWOk5WlgWuQcrUYpaPh/D+zzS5357dkeFjXPSeTBGjGjvcO2kP2W6cEh6qwbs
         kVOv6n72zbXcsOI/78A1Tbkjwn5nE5QKszvsY8JoyRZSR0B2BqvMN3LXp5pb+hj0ijGi
         hJ9BYGCPrOSNyMvZlyt2orlYq/tsbQa3gAfjLNePVkUICWaCgBDMwA31px6URX8ahbEF
         HDpxZTFT5FwC0w+XaKfC5B5//n/L3+Cf6p2Z/Bf0xKjpj7BWXQXt1jwMnmIJCufkakCx
         9ECnt4y7mNHU74GQfF0Evzt1MSvIAx6BpHsoOUmz7nY4BvuOpXdOB1ZXvykgNjiwXJ9q
         peKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NYYGO1W9;
       spf=pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=luto@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n86si13366ild.4.2020.09.17.09.32.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 09:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 20ED622243
	for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 16:32:45 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id c18so2749823wrm.9
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 09:32:45 -0700 (PDT)
X-Received: by 2002:a5d:5111:: with SMTP id s17mr32904987wrt.70.1600360363524;
 Thu, 17 Sep 2020 09:32:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
 <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net> <7233f4cf-5b1d-0fca-0880-f1cf2e6e765b@citrix.com>
 <20200916082621.GB2643@zn.tnic> <be498e49-b467-e04c-d833-372f7d83cb1f@citrix.com>
 <20200917060432.GA31960@zn.tnic> <ec617df229514fbaa9897683ac88dfda@AcuMS.aculab.com>
 <20200917115733.GH31960@zn.tnic> <823af5fadd464c48ade635498d07ba4e@AcuMS.aculab.com>
 <20200917143920.GJ31960@zn.tnic>
In-Reply-To: <20200917143920.GJ31960@zn.tnic>
From: Andy Lutomirski <luto@kernel.org>
Date: Thu, 17 Sep 2020 09:32:32 -0700
X-Gmail-Original-Message-ID: <CALCETrXuV1rucx7=+nx339G43K_8pigfFU5cT-emqpJG4TwjoA@mail.gmail.com>
Message-ID: <CALCETrXuV1rucx7=+nx339G43K_8pigfFU5cT-emqpJG4TwjoA@mail.gmail.com>
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
To: Borislav Petkov <bp@alien8.de>
Cc: David Laight <David.Laight@aculab.com>, Andrew Cooper <andrew.cooper3@citrix.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andy Lutomirski <luto@kernel.org>, 
	Bill Wendling <morbo@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Greg Thelen <gthelen@google.com>, John Sperbeck <jsperbeck@google.com>, 
	"# 3.4.x" <stable@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: luto@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NYYGO1W9;       spf=pass
 (google.com: domain of luto@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=luto@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Sep 17, 2020 at 7:39 AM Borislav Petkov <bp@alien8.de> wrote:
>
> On Thu, Sep 17, 2020 at 02:25:50PM +0000, David Laight wrote:
> > I actually wonder if there is any code that really benefits from
> > the red-zone.
>
> The kernel has been without a red zone since 2002 at least:
>
>   commit 47f16da277d10ef9494f3e9da2a9113bb22bcd75
>   Author: Andi Kleen <ak@muc.de>
>   Date:   Tue Feb 12 20:17:35 2002 -0800
>
>       [PATCH] x86_64 merge: arch + asm
>
>       This adds the x86_64 arch and asm directories and a Documentation/x86_64.
>
>   ...
>   +CFLAGS += $(shell if $(CC) -mno-red-zone -S -o /dev/null -xc /dev/null >/dev/null 2>&1; then echo "-mno-red-zone"; fi )
>
>
> Also, from the ABI doc:
>
> "A.2.2 Stack Layout
>
> The Linux kernel may align the end of the input argument area to a
> 8, instead of 16, byte boundary. It does not honor the red zone (see
> section 3.2.2) and therefore this area is not allowed to be used by
> kernel code. Kernel code should be compiled by GCC with the option
> -mno-red-zone."
>
> so forget the red zone.
>
> --
> Regards/Gruss,
>     Boris.
>
> https://people.kernel.org/tglx/notes-about-netiquette

Regardless of anything that any docs may or may not say, the kernel
*can't* use a redzone -- an interrupt would overwrite it.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CALCETrXuV1rucx7%3D%2Bnx339G43K_8pigfFU5cT-emqpJG4TwjoA%40mail.gmail.com.
