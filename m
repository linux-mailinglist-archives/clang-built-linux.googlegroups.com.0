Return-Path: <clang-built-linux+bncBD4LX4523YGBBVHP3WEQMGQEPDNIGVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1429A402AD0
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Sep 2021 16:31:50 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id t12-20020ad45bcc000000b003772069d04asf15139454qvt.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Sep 2021 07:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631025109; cv=pass;
        d=google.com; s=arc-20160816;
        b=l7WuQv1KjSmjgrG3FgMPBynbx3zsDGq3I76eHWrX285ac+rM5V7fgfcLGh+E+cRxSa
         is9J//2yLg/RN2qk42UVH/uhgc+GrnNMsK6IH/v+1rDog83j+SSaT+NABG73eSs2Umyn
         AOM3Ai/fpr/2VymkBvMq5OydRlUxic2LrQhj7mIZNj5DuS68Q64zQ0LL8L07ILhr+6DS
         A7mfoO6zxMwXqZT1+Y+iYXfmcheUokNQLzPQgnw1zkbGMK4G5t4e63l5lYEinU2UXPPe
         DA/On/6XH41aievyjJTej4pfQUGn+mPwnfS3LXpUizI2WyMWQxcXozzIfSqCv+7aeNXn
         ZG9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=4qIJNtQ2iJd2l3iZ6VfC0aoM7Pz77OjBHcz8ttjXtTU=;
        b=m7XdfKLH8abwh3IBMnDU0MMuFy034499GyzASYm6M8yyLqwDzW5pcTX8iPDptKpcuv
         lgBTWDoKqqnYnbEd5u8HB6bPk5L43zM8v90Qqn0V3rqZsew+OnQicL+Qt6ZgvFQCrPqB
         fic03pC97WTCvRttjpmCPFcK4rz6jfMd4VGK/X0ZueaRw8tAwHWEWq+GeO8kGL0supUC
         H83fU2fGFQWeZUZ8KKqCmAFqwqEX5SOQiTRmuc4xZxNP+r6GWSs8kl552MlO/HNdSDVN
         AE3U15kqjeMDzipd+uhS42WQTgqmlq7KSPf5chgjmP01eSfSLv65jHcscMYCPlYqG/9M
         b8eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4qIJNtQ2iJd2l3iZ6VfC0aoM7Pz77OjBHcz8ttjXtTU=;
        b=lC3iCRhL1bScMg7HEXdTCPvD4bX6FziC+rCHpCfEv1mHUmuaZdbt5xhPRiHkkCqJKN
         gG9YC9O+Ix5DsTGkpp0PEFiqDfpDdHfO/NQlRxlYclEIAba+2cEcngi8kbFXAlTj1rqv
         PZZmdyuQqZNTqbXUq4rsReKD9Cq6Xp/mPOACAyTkIyPZup63HjDhaToN8WCwoPQgGWC7
         AoxHtHNKcmMBGjKFO3XB0eqCRFMUzPTGl16SwhOrU42M/FJ67sAqE5OVe85T36jzeM/a
         6P4rrlSgR/sMFR6rn1C2jz0cFe5tmtMeGg/OsWHGBtg2KZj7mrW3euO43Xdjh4BwtKnE
         vOyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4qIJNtQ2iJd2l3iZ6VfC0aoM7Pz77OjBHcz8ttjXtTU=;
        b=U/EJNecvqUeGLZGL7Aln7rcOcUCeNJrzbMGyfGUZ6NDAWxXXMefvGLNW1dBp1MD7H5
         B0EIz1z3AqwcJqSzrNjUxjFwPlh0aj2y6bE7CcHMNxZX5H7HvRCKQT9++k/cxsiObWus
         cXXsjGPpEylCjtWkixmQd5K1YF1yVK1UXixD8Q+PaD7LbRfx6Z1T2J1C2ssihFXtPVm3
         ToYab4wRnajD++hUAXpG+RRaRyW0WIx57RrTzfMeuEmnU2/fA/PeD9HIzawgJCaUgkN0
         qPXk7/uYpijzYuKX/BdfnuI2pNi1AbsRxtnjKeRz2lmGq0Embpb8WoxY7fjqyiV1d3j6
         A73Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pSK+9Y0dVzJ7EwzxBlKymHzF/fajXhgifGUQ9XXJDpl3131N9
	L0Kf8zUWFKTkw0r0PBRzka0=
X-Google-Smtp-Source: ABdhPJxmHwJZd5ADxjicl6kekgJFR2i9LLYFTBecD5kGmy4znhRG6wgZ7YlKZNsFjPRNXVA43LHvZQ==
X-Received: by 2002:a05:6214:1843:: with SMTP id d3mr17406810qvy.10.1631025108952;
        Tue, 07 Sep 2021 07:31:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1c07:: with SMTP id u7ls1604662qvc.4.gmail; Tue, 07
 Sep 2021 07:31:48 -0700 (PDT)
X-Received: by 2002:ad4:4873:: with SMTP id u19mr3581411qvy.11.1631025108389;
        Tue, 07 Sep 2021 07:31:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631025108; cv=none;
        d=google.com; s=arc-20160816;
        b=04E6wVH5TCZcnuv9Tyg3Qp/BwMgjADHNJT6VChDMMgKCorF8IOmixJNsF6Jl9+n2Ev
         GO7shTVSKDpArFtXGI4lez9EXFXtRQisLPQHMsrFjKoKZjHw3WyqARxZ9I3roxivX7C6
         fnMDmcplCop40fRHgrQpsR9NmGn+iXquD3j5xBGNaPJWxjdWxle+H3O6fogL04Sd0j1G
         MgEbjUpx6/Dv54q5zOiZ5sV0Y/DPVAFbe84tMLKFqxcreUkvQSVU3aoSmRj57+11QnbH
         uawv5dY7n5B2bkWjcIojJ0wmXCritSDx1aEGqlb7c6w4NLKK4oTbs5T1GPu2yQQ6N6v1
         BnUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=oQXFBsI9/iLlKBKWno6062Lp71+2XhrIfoi3KYrduIU=;
        b=P3ASuz14o2T5Abz+CAUya/BhTFAhws3r5MUyKptP6OnB4bO+59lc8N7T5JqdqQR+lR
         2lhd100+xVp0RNBe+apmska5YL1ew+OTTcSE9jlVsLrHow98fGQ+6oICNPycxdBEKMS+
         NI68dCiCUfbLSCayIwNAAEtQe9KWpmNjiY/7gO7ErVISTXWG+jZ3Hbo6sOhuWjqySVFH
         Em8R2rB3FYRiacLtnqkk41WMoacl8OFNmVsLGt30M+AE4S1rP71Lz+cB0m/fFLVnZSlY
         KUE8FZKc5PAcq0HVwNeaAPiGz1DIHJLTWMDQzcE87z+m7iFgx1dNQkI7BdW6YDdGuHBm
         mc2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) smtp.mailfrom=segher@kernel.crashing.org
Received: from gate.crashing.org (gate.crashing.org. [63.228.1.57])
        by gmr-mx.google.com with ESMTP id w4si653635qkp.5.2021.09.07.07.31.46
        for <clang-built-linux@googlegroups.com>;
        Tue, 07 Sep 2021 07:31:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of segher@kernel.crashing.org designates 63.228.1.57 as permitted sender) client-ip=63.228.1.57;
Received: from gate.crashing.org (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.14.1) with ESMTP id 187ETeIO006845;
	Tue, 7 Sep 2021 09:29:40 -0500
Received: (from segher@localhost)
	by gate.crashing.org (8.14.1/8.14.1/Submit) id 187ETeHc006818;
	Tue, 7 Sep 2021 09:29:40 -0500
X-Authentication-Warning: gate.crashing.org: segher set sender to segher@kernel.crashing.org using -f
Date: Tue, 7 Sep 2021 09:29:34 -0500
From: Segher Boessenkool <segher@kernel.crashing.org>
To: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Jakub Jelinek <jakub@redhat.com>, Florian Weimer <fweimer@redhat.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        llvm@lists.linux.dev, linux-toolchains@vger.kernel.org
Subject: Re: [GIT PULL v2] Kbuild updates for v5.15-rc1
Message-ID: <20210907142934.GF1583@gate.crashing.org>
References: <20210904191531.GS1583@gate.crashing.org> <CAHk-=wjc1rxah3xt8mKN=aCxQigjy3-hEf4xh_Y-r=MXAKVrag@mail.gmail.com> <20210906154642.GV1583@gate.crashing.org> <CAHk-=wj=WpWO_V86cZH99LgZGBbvdDb4wR26ce5van0hJqjzLA@mail.gmail.com> <20210906172701.GX1583@gate.crashing.org> <CAHk-=wh0MBVfA89WLWnCiSnJ2a=hSAoSxfG-jyf7JJeBDPK3ew@mail.gmail.com> <87lf49wodu.fsf@oldenburg.str.redhat.com> <20210906194808.GY1583@gate.crashing.org> <20210906201432.GZ920497@tucnak> <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wi80NGPppGmBpc5zuGRAsv4_7qsDu7ehW515J2FJoezAQ@mail.gmail.com>
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

On Mon, Sep 06, 2021 at 02:08:58PM -0700, Linus Torvalds wrote:
> On Mon, Sep 6, 2021 at 1:14 PM Jakub Jelinek <jakub@redhat.com> wrote:
> >
> > the only guaranteed APIs are
> > those provided by the headers (x86intrin.h/*mmintrin.h etc. on x86,
> > arm_{neon,sve}.h etc. on arm*, ...)
> 
> You guys realize we don't use those, do you?

Linux does use the Arm and Power vector intrinsics (arm_neon.h and
altivec.h).

> And you don't seem to realize that you are actively arguing *AGAINST*
> what you think you argue for.

I have no idea what you think we are arguing for, only what we are.

> That "immintrin.h" file, for example, is simply not usable for the
> kernel. I just checked.

Yes.  It cannot be used in freestanding environments; it includes a
header file we don't ship (<mm_malloc.h>, via <xmmintrin.h>).  Or
perhaps we do ship it, but only on native systems?  Same issue, anyway.

The top comment in the latter says
  /* Implemented from the specification included in the Intel C++ Compiler
     User Guide and Reference, version 9.0.  */
so the shortcoming exists there already probably?

>       27 | #include <stdlib.h>
>          |          ^~~~~~~~~~
> 
> Oops.

Yup, that is not a (freestanding) standard C header.

> Very similar things happens if you try to use that <stdint.h> file
> that somebody mentioned earlier.

Not at all.  <stdint.h> *is* a standard C header, and we ship it, it
always works.  If you find problems with it, please report them!

> You also don't seem to realize how hard it is to separate out the
> user-land crap that we really cannot use, and must not use.

We have worked very hard for many years to make this better.  For the
freestanding headers only <limits.h> is still problematic, and you do
not need that one anyway, it is legacy more than anything else.


Segher

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210907142934.GF1583%40gate.crashing.org.
