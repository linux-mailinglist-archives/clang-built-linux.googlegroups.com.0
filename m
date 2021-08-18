Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBMET6KEAMGQEHVRYERY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FC73EF90F
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 06:16:49 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id d15-20020a0566022befb02905b2e9040807sf491182ioy.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 21:16:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629260208; cv=pass;
        d=google.com; s=arc-20160816;
        b=W8dyuKZWuYKeOrnb/DktwXjTGA73T4KzLHX42IkxE+Cuk1KY17qt18fnhD1GkNLm4L
         byxJ0hFMv8YpvjBBcfkR8SpJDgHTLD1P/3zZ0UZOMvnLTb31+lUVyafkVoFvuB6bK3m4
         6D2ZXzYf8hvbSRf+FHE98PrRpmMOYQ3X8GzLrV7i1eGHKc359QnF4bmZyExCtHMEvXqA
         uF6s33Inb1pBoX7CakceIVG6wcecXGep+t2nHJfJPKgkJyIlAhw6mp4JZnaqVe3U3gew
         Mrx6QF4UQFx2F04WCziNVqDjgz0rM2Q4+8rA199lCrY9AYKOXyD1iHJIH12wzY66prXY
         sCDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=zrz1bKkAX309IWRcfjTs3AV2m8Dm/qDzRJADoenzxws=;
        b=eITCt0HQ/gh3sMS+wNAWXaxPUY9wXnQBUB4osXvkMEKdglOBupDYp8hBAV0TPa4UTK
         QECQMPBJmvsgDQRzLSfWjgD1aS6mIzkNABSylmapB9pqJkb3KtgPnBZXudSDTlwPUUSL
         dyAJbhDeVJAP29CITqEGZxte49Eam7BjC2MuXfSqmh6Sy2qgD5dYhHts5opVUIaHTxOZ
         yYIAeIsNu8ajMfs/d9Zk/ez4oNcheRjTAm2WkDLaiWHwUKwMDtXZaeuS0UEJCUJmJbZu
         EuUsaIcQ4DFs9jD3jaTIo0SloQj/ZOEc8ieSGNU+MPa9fE9o/vp5wPU2JKmYpuheFb1d
         nHqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Jwf/Bmhl";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zrz1bKkAX309IWRcfjTs3AV2m8Dm/qDzRJADoenzxws=;
        b=oWBQZwmI4thMZlLU+yC7VOmUmSjTCpHOPosWXFzkjvFXDhSEhBvy+2kmTKP0QEblLB
         Ov2LWA/YyhGSSkWSn5felznRQbioo/UbUgkHbFJez8Q+QLvTZaGGLA1/CC+xJyK5Wn3D
         ZevfJ3bn+jryPOsbWF87XiQ1z3HDVhF16I25R3sjWWN9AmZ53Q8ZGkA+bmiCxknBn/Hs
         IVo+FzCSN25VIpOVtmSlRi8IkV7jL/BRmC+TWCyA19QFxSZh+mefPt/T2AGkSumLxLvd
         C0CbQ27TmQRHuNpUtWKo+K8m3oA0KLEPxx86C1dL6mjRc/O0KzythqEvQzHNVzO+2mEg
         EQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zrz1bKkAX309IWRcfjTs3AV2m8Dm/qDzRJADoenzxws=;
        b=IgP+iGN0hKmUN+ly2mzbpEKKJjIcwOlBiHFhlMfatESlgH3jofcAvsK0AtWnUc8RW1
         CVNyem1/Snk/90HUzmdgFuIzwZ9JUK4bfZCz8VP3U/glkph4gK+kQLK+AV+nEnuKf8qA
         VuwGyUs7rfXUK4IN5BvB46gheCgmLdhxkf0nU1vbvLPaxkVGdqfQa4gWZ/lXE2m1KBT6
         Go+7QnBn/rNrQE78kTglIcLwubHXoSeUPRoVnSlNKLm8CGeBZJSZseaYu+rEb6h6nSb0
         v/59LYW9WBeDJG3QXIznb8h9H5iQTMSebMB0OGN21V5RROEo5NGsoatRzp8y6oa+Ce6Y
         bI9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532efxJCoBEb7haD/UOxYuXHoEfT/HK+JBMRs/Gxztq/K88a8F8F
	ya57jjYphsgGtSbod1dfmUI=
X-Google-Smtp-Source: ABdhPJxwpjPoSF2JELU9IM4pHmCM1WsTdWG5HTK89KpEVXHm07j3dLRE2qf1F7/orbHXkriqePIB/w==
X-Received: by 2002:a6b:f813:: with SMTP id o19mr5389321ioh.49.1629260208531;
        Tue, 17 Aug 2021 21:16:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:2c43:: with SMTP id s64ls168229ios.10.gmail; Tue, 17 Aug
 2021 21:16:48 -0700 (PDT)
X-Received: by 2002:a5d:9653:: with SMTP id d19mr5524955ios.74.1629260208145;
        Tue, 17 Aug 2021 21:16:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629260208; cv=none;
        d=google.com; s=arc-20160816;
        b=fU3u+ylavQZsoZSA2Pr9zWYeqTCCOjnO1C5IzgyjuYvwsn6/2XhZeOn8rVPk3MlyRl
         VSZHda5kojaLVVX8XIvuKmzv1ToHQsiI8G8nBP62O8sjv9Z4fByZhZ84Bsx9He3s/v8O
         EEXzaHFx6xXxN7VAMLr1K2DgdPqvQ2FjvS8B0JUVEvVB0ykA1TyuavfWcot+hOfX7328
         bnZzXCs/0Gk0k2FbFNtng0myrM1xn93yty0gwtwl1THu/uBs5lbNU9q40w2P6vDt6pjl
         fiuD+UQ7TXBNYCCotctCye0+8evr01nkPd/Av5rCvXhKA1TvfS0QO0f8yKnl3ziK+Mmv
         52gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=u+KzkIZNFPABZpmtSGRCIoTvtezCpdOxcTloBpyZCGo=;
        b=W0IXaoI8vIPD3B9xVHklec1dBukn6La3YUkwqO7ojhFzRFuTAce49cN7sM8JzBFtdj
         h9QeivJbTyb/4eNG0pEHjZQyWzQkNlwBV9SWZFyAODAMfVbsH7l6rhTbksrdeBZw5H7N
         ibeRuW44TC5Z0yBHfcZQlSClDbEFWcbUQiNlJ3BW6tonZZKMQWaao2oTpqUlp/ORWqxD
         qBFHeDOIxGYwWTqkB3mWaFMq+wCewWvYuihDACRON92EuP3ceR8nnX5SPU2hUw9i7e8t
         c46NCQzrCAVkLWybDXndM4rPvqchu2atOc6AgDIQHbtXEcjLiRmLEJ1MlqTb6oAxC6iX
         ICjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="Jwf/Bmhl";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id e12si274993ile.4.2021.08.17.21.16.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 21:16:48 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17I4GDNx020211
	for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 13:16:14 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17I4GDNx020211
X-Nifty-SrcIP: [209.85.216.51]
Received: by mail-pj1-f51.google.com with SMTP id u21-20020a17090a8915b02901782c36f543so8029526pjn.4
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 21:16:14 -0700 (PDT)
X-Received: by 2002:a17:902:bc41:b029:12d:3f9b:401e with SMTP id
 t1-20020a170902bc41b029012d3f9b401emr5540904plz.47.1629260173523; Tue, 17 Aug
 2021 21:16:13 -0700 (PDT)
MIME-Version: 1.0
References: <20210817005624.1455428-1-nathan@kernel.org> <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org> <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org> <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com> <202108171602.159EB2C7EA@keescook>
 <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
In-Reply-To: <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 18 Aug 2021 13:15:36 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQW6LMnfU6reTNzDLneX+mBFSKHgbF5epQ+6GQZr7vWLQ@mail.gmail.com>
Message-ID: <CAK7LNAQW6LMnfU6reTNzDLneX+mBFSKHgbF5epQ+6GQZr7vWLQ@mail.gmail.com>
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
        "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
        Philip Li <philip.li@intel.com>,
        Linus Torvalds <torvalds@linux-foundation.org>,
        "Gustavo A. R. Silva" <gustavoars@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="Jwf/Bmhl";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Aug 18, 2021 at 8:23 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On 8/17/2021 4:06 PM, Kees Cook wrote:
> > On Tue, Aug 17, 2021 at 04:33:25PM -0500, Gustavo A. R. Silva wrote:
> >>
> >>
> >> On 8/17/21 16:17, Masahiro Yamada wrote:
> >>> On Wed, Aug 18, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
> >>>>
> >>>> On 8/17/2021 11:03 AM, Kees Cook wrote:
> >>>>> On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
> >>>>>> If you/Gustavo would prefer, I can upgrade that check to
> >>>>>>
> >>>>>> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
> >>>>>>
> >>>>>> I was just trying to save a call to the compiler, as that is more expensive
> >>>>>> than a shell test call.
> >>>>>
> >>>>> I prefer the option test -- this means no changes are needed on the
> >>>>> kernel build side if it ever finds itself backported to earlier versions
> >>>>> (and it handles the current case of "14" not meaning "absolute latest").
> >>>>>
> >>>>> More specifically, I think you want this (untested):
> >>>>
> >>>> That should work but since -Wunreachable-code-fallthrough is off by
> >>>> default, I did not really see a reason to include it in KBUILD_CFLAGS. I
> >>>> do not have a strong opinion though, your version is smaller than mine
> >>>> is so we can just go with that. I'll defer to Gustavo on it since he has
> >>>> put in all of the work cleaning up the warnings.
> >>>
> >>>
> >>>
> >>> https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
> >>>
> >>>     did two things:
> >>>
> >>>   (1) Change the -Wimplicit-fallthrough behavior so that it fits
> >>>        to our use in the kernel
> >>>
> >>>   (2) Add a new option -Wunreachable-code-fallthrough
> >>>        that works like the previous -Wimplicit-fallthrough of
> >>>        Clang <= 13.0.0
> >>>
> >>>
> >>> They are separate things.
> >>>
> >>> Checking the presence of -Wunreachable-code-fallthrough
> >>> does not make sense since we are only interested in (1) here.
> >>>
> >>> So, checking the Clang version is sensible and matches
> >>> the explanation in the comment block.
> >
> > I thought one of the problems (which is quickly draining away) that
> > needed to be solved here is that some Clang trunk builds (that report
> > as version 14) don't yet have support for -Wunreachable-code-fallthrough
> > since they aren't new enough.
>
> Philip, how often is the kernel test robot's clang version rebuilt?
> Would it be possible to bump it to latest ToT or at least
> 9ed4a94d6451046a51ef393cd62f00710820a7e8 so that we do not get bit by
> this warning when we go to enable this flag?
>
> I do not know of any other CI aside from ours that is testing with tip
> of tree clang and ours should already have a clang that includes my
> patch since it comes from apt.llvm.org.
>
> >>> # Warn about unmarked fall-throughs in switch statement.
> >>> # Clang prior to 14.0.0 warned on unreachable fallthroughs with
> >>> # -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
> >>> # https://bugs.llvm.org/show_bug.cgi?id=51094
> >>> ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
> >>> KBUILD_CFLAGS += -Wimplicit-fallthrough
> >>> endif
>
> Very clever and nifty trick! I have verified that it works for clang 13
> and 14 along with a theoretical clang 15. Gustavo, feel free to stick a


I am not the inventor of this code, though :-)

I mimicked the code in Buildroot:
https://github.com/buildroot/buildroot/blob/2021.05/Makefile#L104





-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQW6LMnfU6reTNzDLneX%2BmBFSKHgbF5epQ%2B6GQZr7vWLQ%40mail.gmail.com.
