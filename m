Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBR7O7KEAMGQEPYQJVHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 55EF73F2125
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 21:55:52 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id p21-20020ac846150000b02902982d999bfbsf3381019qtn.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Aug 2021 12:55:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629402951; cv=pass;
        d=google.com; s=arc-20160816;
        b=wwHio9hnlA3xvyJcmyzoezn8ZdxeUl/x7v8fTq8bnuSFpTYpO22mY+9EIFRH9ipNlt
         T96mWOMADJ+fha5KNHhB6BCSzwW+E136fBA+VjscEZU8ngp5QONdvqEGTMFewhZIaTHw
         Fopho8JTLaIalooKl8y9SUylV6K+x9/z5RhyR5TAcZP9GNTzQ5tJHAdnbiFHZirIdguU
         s1JP/gTWTuiceHifrFtIEk62DFlivQfTYMBa2m0YA+ApcgWXgyS02zvC8djh7lNtvC+/
         74rEaXb67eC4JoJjpKT1XZpLOz8jr65rCH1sVHmZFT2ESi9yzuws8dWUAyjXR4M977K8
         2xfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=qoooNsSn+4Y414iDRIh1jUfeJp2N452X4KYo1pHZ2iQ=;
        b=fNwDnE1Aq6V43axohpMy+W3jsuNaBL1UeHoMYbtr6bBYTnP7QrcF4AZn/n5Arl2Ypa
         NClWCFUJKdAYP07mYMy0yDqiPVRJEZc8a6eHzYOLJfhPo1v5PqMIaKIT0ODKVb0t2yon
         hSbmidpam6vrFlRJEQkzv39SIJMAdjznCmEghEzj7WwtKfwJw0DUJKHNOvqxHUHO37WF
         5ENWy2q/qUSygN24CKgvX6kpa+8qovG3BYyiWlnm6OYUF++zyGOYkhf11UH/ekAvwJcZ
         ottS9JVfN8Fwv2bNgPCojQVg09uKb0o8BygF74pD6ZDitHMPObOuLcviKh4rad+PAQcI
         uCgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cRYeXlkl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qoooNsSn+4Y414iDRIh1jUfeJp2N452X4KYo1pHZ2iQ=;
        b=Yk1vnHKn2amhJcWIA7qQXSA8wCsdpnwauXz6PA4Fh2QBDO/0AqwBQsI0UuBZ5DjWOw
         7vhNNLvAC6VU3GRj2RgQB8yP1OUX7+Q01d1bF67AVILJDinMq4+TTqWYmuYuRitmT4sh
         1d97qxEuS657QfKOIASGFcihUf5fMLfVFYPShEYRR8YS2ERZmgZ4LQToFclxzH/CMHVF
         VMHtV7sG0ksCh+yvRr34CKeoPUKAt8727+oPWFmRm+rUOwjOxpYKhlfKbBLCDpKiS41z
         3DEEDUJza7D1dMOCxNHhfLZtUJtG/fC6SEoZnE4Grpo+8PDo5klafmr5m2GOjqAFHiNn
         5lTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qoooNsSn+4Y414iDRIh1jUfeJp2N452X4KYo1pHZ2iQ=;
        b=je7x7ciQUEeI9X7WL+v5G9LaIywK7pqQ8dJf5CmNUK5+UUkKCXy39sMUsC8CufFAKx
         LZeKoCiZKYp7dDpqqiDBzjDq63PZvYKC9x+njdMGemck/1xBw5g7EmOcc92PPdmiJAQ/
         EiaTqPfRKb9CxIJpXtGghUo0c+qqvItiR5cbCslyj1malehYSXqT4njmg2jviAWh1abc
         TtKcRN6W/m893CEw8/MU4nIJX65IVDJFCMJLU9JEulEn84zhy8dCtxfn7Rbdx1plRhk8
         pw6qfgGfe86iQxUr1K0Xk5sVx/kawSm9qBCM7VO80fQ8EwyvZeYPxj/4Nzij3oWqJIk6
         BtuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jcERjT9Npd6aOy4FZz0jF/MVK/8b085oMaRKJH8GhPzQ+nUgi
	3wbztowQsNc3LRwQ9TBwN4U=
X-Google-Smtp-Source: ABdhPJwtkiYVRKgCszXAto60jMezz+d4/IeSOwLmckafHJUbCg56bm1TVwOXbvz2iDEraXQPyjzErQ==
X-Received: by 2002:ac8:5752:: with SMTP id 18mr14118238qtx.298.1629402951206;
        Thu, 19 Aug 2021 12:55:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4590:: with SMTP id l16ls1664159qtn.3.gmail; Thu, 19 Aug
 2021 12:55:50 -0700 (PDT)
X-Received: by 2002:ac8:7eea:: with SMTP id r10mr14475664qtc.349.1629402950741;
        Thu, 19 Aug 2021 12:55:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629402950; cv=none;
        d=google.com; s=arc-20160816;
        b=0gSe0NUEpQN0x01eit5td8vRN4eP4kLf7jt5nbnvoQMtrE8LecO+nn8zr7zeCXx2nR
         0htl0bIR80SFQprC+ZIIb5zHB9v4hdKFj1amGjNoU1tU7oZT2/947GhUDGHingeWASLt
         y6bp+NJftTJQTageSAwiA4qP+DwecR/t4ZDuF9njbHA32lVDajPa5GJGxuo3mRFuWxwc
         7/EDa1vf3B9SZp+NF9PFeX/sD6VapqeAFEKoTZFOsaBxaRCoYl0OaenrE9tGBfsIVlM0
         iDDlMDDDPBAmghTFvQsy+Q8HU8QyvgFeHlJjHjtemUn/hM44KTujJIYDERkoMH0NLKuA
         nZOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=q4geEpZ1/sJM5K2yjyzyxclzCbd3hjZxXnY8j4k52go=;
        b=yhxGfImTGmtoIdifbvJ4EPXXPhaGjAhUVLINI+X6uWDLhWYyYJJGJdUk6PX8na66f7
         3iLfBpcFL2soj7IpR4AwJnCWy6naox7/jIM1KTtcDlQKFQTta4mitDJ3qBeuaKtBW+u7
         y9UOlXzUAozOftPgUbGJkI6gSRKnWcxfgXbymEa/9yR+NHgaXe7dbIpnivlVkW5WIVG+
         9rleAaw4XOVQkozzyq/0POA7gunkJaBGP+JF151eWkLj3NXE2YEX6kTJl9Q81IyD/kAO
         Gwgtkqw2V2A5no/em+gKUPtu4Es7Nh4+i645TjCHCr2Nne5cCWvKEQ80EHl7v8jNNrbO
         IqeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=cRYeXlkl;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id i4si333679qkg.7.2021.08.19.12.55.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Aug 2021 12:55:50 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17JJtZm4023355
	for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 04:55:36 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17JJtZm4023355
X-Nifty-SrcIP: [209.85.216.46]
Received: by mail-pj1-f46.google.com with SMTP id n13-20020a17090a4e0d00b0017946980d8dso12086984pjh.5
        for <clang-built-linux@googlegroups.com>; Thu, 19 Aug 2021 12:55:36 -0700 (PDT)
X-Received: by 2002:a17:90a:ea87:: with SMTP id h7mr458343pjz.198.1629402935417;
 Thu, 19 Aug 2021 12:55:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210817002109.2736222-1-ndesaulniers@google.com> <20210817002109.2736222-6-ndesaulniers@google.com>
In-Reply-To: <20210817002109.2736222-6-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 20 Aug 2021 04:54:58 +0900
X-Gmail-Original-Message-ID: <CAK7LNATmWmS+vO1hxai24fN78pCirF_jJqWs8BR_FkfrAACFOw@mail.gmail.com>
Message-ID: <CAK7LNATmWmS+vO1hxai24fN78pCirF_jJqWs8BR_FkfrAACFOw@mail.gmail.com>
Subject: Re: [PATCH 5/7] x86: remove cc-option-yn test for -mtune=
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
        X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=cRYeXlkl;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Aug 17, 2021 at 9:21 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> As noted in the comment, -mtune= has been supported since GCC 3.4. The
> minimum required version of GCC to build the kernel (as specified in
> Documentation/process/changes.rst) is GCC 4.9.
>
> tune is not immediately expanded. Instead it defines a macro that will
> test via cc-option later values for -mtune=. But we can skip the test
> whether to use -mtune= vs. -mcpu=.
>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Borislav Petkov <bp@alien8.de>
> Cc: H. Peter Anvin <hpa@zytor.com>
> Cc: x86@kernel.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/x86/Makefile_32.cpu | 6 ------
>  1 file changed, 6 deletions(-)
>
> diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
> index cd3056759880..e7355f8b51c2 100644
> --- a/arch/x86/Makefile_32.cpu
> +++ b/arch/x86/Makefile_32.cpu
> @@ -2,13 +2,7 @@
>  # CPU tuning section - shared with UML.
>  # Must change only cflags-y (or [yn]), not CFLAGS! That makes a difference for UML.
>
> -#-mtune exists since gcc 3.4
> -HAS_MTUNE      := $(call cc-option-yn, -mtune=i386)
> -ifeq ($(HAS_MTUNE),y)
>  tune           = $(call cc-option,-mtune=$(1),$(2))
> -else
> -tune           = $(call cc-option,-mcpu=$(1),$(2))
> -endif
>
>  cflags-$(CONFIG_M486SX)                += -march=i486
>  cflags-$(CONFIG_M486)          += -march=i486
> --
> 2.33.0.rc1.237.g0d66db33f3-goog
>

LGTM.

Perhaps, a follow-up patch can remove the tune macro too,
replacing  $(call tune,pentium2) with $(call cc-option,-mtune=pentium2)







--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATmWmS%2BvO1hxai24fN78pCirF_jJqWs8BR_FkfrAACFOw%40mail.gmail.com.
