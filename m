Return-Path: <clang-built-linux+bncBDTI55WH24IRB55DUDVQKGQEJQJOFMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3b.google.com (mail-yw1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 078FCA22E2
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 19:57:12 +0200 (CEST)
Received: by mail-yw1-xc3b.google.com with SMTP id n139sf3071426ywd.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 10:57:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567101431; cv=pass;
        d=google.com; s=arc-20160816;
        b=GYbCs6pep4fckJJ57Cvtkidz67xsvHAWeGttZMfDO7E8kFttCY6+7vn8bZYo2auBOB
         q5Z2bWpQwNRXQzoZ4kcdILO4Y5HitBVldIrQv7wnIKC0aQrGyBeYdadRwNlZVC1hq4sG
         +zfKpyI5zNcpWQlQE0wbxwh935HSnPAu++jFI1Js4K/r6ZlFQLSJLzvyBmAYPgA+KnVd
         DM5fLeJIteCJEWIvP5EHdMgaY/9Y9QtEa2fRL0Q5+AFvL8AFdArZ7iQ5Jz4G3+eqCjdD
         EPgddimytxA2Xh182/Rb04+4KEgmafYBmwp1yccJRkYEkNDnD8t+sS+nuaQSsIPAU+Bv
         kM1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=ZVaQTfmc7RMz3BeJ6S3xzlD5Cg26jyRZiXqyEpniOOM=;
        b=Eq0A87M4AaGyAJuh+OElSjktKtFGsDCnu6LlN5tUig77EWW44ydtWMfU1irCi4fLmh
         oKVBF7/rk9rxKa814wNto6uZvwB3WcRPHbfqga6nfwtkUXXPbhAkzOngkMFZsDBW1NX6
         1YHhug5Td0PwoNvRB9w44kv0O9isgXYVoAsTJRMtR3sU9z1tU2h6KQ5AZmeRDhc5I1WE
         ILftUniBU9EM2x8X+2NPKaMiKYjqNEV2CuPSFu8z4nPRGk0uW+C7i0TF5f5IdWvVh+lU
         sK8O0ZLg7G9cQpVQoHt/lF6vmUsvvxweMEoQoObVNRz4sC5OpLDi9o8bU9E2+NMOm057
         ShlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OBGYB9aZ;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZVaQTfmc7RMz3BeJ6S3xzlD5Cg26jyRZiXqyEpniOOM=;
        b=ny+sU798Hy7/W4pZlfhxip8rw4wGdooYOPvzwSIeWl/TS8aGroqc0DRxTXLkszdG3i
         WafFN5E/mzDygM+E1uElsgQ4VwpNm8iYRmDRVa+usQN+GoVodW9ZWSpITlMa+KJfcROV
         9Zv/bqN6oYBeq4uQ9KTQoCXiBFzO2OKiPREypqzkZcFT3iyvu832Cyi7RJxrZ2CADNtr
         hhNi6Ps4gCHOlhKjGWZxI1eJ8vPMqO0k442RoMKImvcV5LaEA0aNcv7a4pWhZJ7Pi5Vn
         13fl4E+6nNRVT8xMRYPUDXgY2SMUSGv4MhyDyC4q0dLJwZo5AGNZkVjz3fnxZk5d9K6k
         FyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZVaQTfmc7RMz3BeJ6S3xzlD5Cg26jyRZiXqyEpniOOM=;
        b=MpphHFAT8oLH8bSMw98BhHVVOLwAkyzf8xtDK6H/811A0AYxlM8SixBP4+M4GGMSDc
         5QXBm4IjOyogguh5OmHsNn9bxiCsU2hQH4381LNv6HPENiitPzElEH7BGIwtk1gnJ1c0
         H5A7FLM8/xo9Ulc4PhCf1HcOaIPx4JR+ilad/kEqVuKqlT0ULY2bjtVrMf7T8+ux0m1Y
         lg6nCJolX9qV4SI0eUfDmJi3ldISWhDIL12D7v5ehveFsqkOj9KPsR0iKB5lmi4kGE5/
         14q7MIPhdVIbnM8OXG7J97vwEyciZP8mmgDSfgTD7fOxkypzdocl4wq7L+rR5pN/WvU4
         EXTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXLGcr7jUbnlyGYjlVpWXvtJtgQAWlDSHQQJokP3nOiALpHqxKh
	+gBZQ1gLabKJhV1LYwKsI2c=
X-Google-Smtp-Source: APXvYqzAN8vokKVtaZcQfxWPCoDbrygTIzSsmwg02A4EWL6J/DpCUNmcRY96wntRU9XjPcZhjv7AWQ==
X-Received: by 2002:a81:af5a:: with SMTP id x26mr8498043ywj.232.1567101431076;
        Thu, 29 Aug 2019 10:57:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bd89:: with SMTP id f9ls24059ybh.2.gmail; Thu, 29 Aug
 2019 10:57:10 -0700 (PDT)
X-Received: by 2002:a25:a2ca:: with SMTP id c10mr8299245ybn.70.1567101430840;
        Thu, 29 Aug 2019 10:57:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567101430; cv=none;
        d=google.com; s=arc-20160816;
        b=FvhF012zCGXCglhfw9S/EWmFeBBpDxdCcRy+1BUqoM7S4frerQ6l3aXRSZifG7RY/D
         a2buPyFz3SHAvrkNnzJNnefiFk+FSpwTeo5bK8I+C1p2lGum635FaELWe7nD8XDLmIFS
         M69ny/f3OnajJ3RT3OKJEEYf/qE26ItfTpH4eSBTPvyUeeaM67sgbo8CL7xHEwfB6n8g
         hq0Li+QFG0VVj6fMqJpmCBjUQG+wVn0fb8z3UHq/utI3PHVRteI8duv2wdvOZlkWfYgL
         KigEyJTemaqEDyzyvRXvHxMn1HPA/oktmUtF78pYAzSYwIflqHKKugQLTOAW0vbrFGo7
         1FQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=MW+hZu1IB+bIDNljAtQpjP42JfvhjUHw3b7UQJQXPyM=;
        b=A457mbrR3q8Vf0O9Lpo9ZoOueXX9gG5XEJPG5lsun9bRwAbmzYPHAP2c0Egz8G3AJN
         WXgZQlFHj6WajPFQb/WZjNjuWgY+SwKHFCZ23VmLcTVTXj6ZXNEf3u55TiFTmO/sLe+j
         ynGJTGxsXa/WQAAlzK4R2MJdfl/wTkl2ceAu/TIonFyBdI816cD/xLMNd0Q2yt/DQZyk
         /3euxf7pwd90sqRC6LYiTa2pVaplC7T/opKLEzjhr8WK/BM5yIzCbbm2hAZXpaFWer4r
         4MAp6b3eOQSLNBvXjgZBVhNHniovCAomYT2KVASIE8Ulr3I2P1ULqfVdi9RX8JTlGlZg
         cPaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=OBGYB9aZ;
       spf=softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id r134si293223ybc.4.2019.08.29.10.57.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Aug 2019 10:57:10 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning yamada.masahiro@socionext.com does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id x7THuiPH011326
	for <clang-built-linux@googlegroups.com>; Fri, 30 Aug 2019 02:56:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com x7THuiPH011326
X-Nifty-SrcIP: [209.85.221.178]
Received: by mail-vk1-f178.google.com with SMTP id t136so982102vkt.9
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 10:56:44 -0700 (PDT)
X-Received: by 2002:a1f:5d83:: with SMTP id r125mr1999066vkb.64.1567101403448;
 Thu, 29 Aug 2019 10:56:43 -0700 (PDT)
MIME-Version: 1.0
References: <20190828055425.24765-1-yamada.masahiro@socionext.com>
 <CA+icZUWigJkh-VtJc4=xE06oMgE=ci2Mfdo2JaDv0fth8PKH+A@mail.gmail.com> <CA+icZUUhhOLfOgwoKP4nKOdPakNJF7XafJ09ERP6r7dOUduMsg@mail.gmail.com>
In-Reply-To: <CA+icZUUhhOLfOgwoKP4nKOdPakNJF7XafJ09ERP6r7dOUduMsg@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 30 Aug 2019 02:56:07 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQ+do3HNWYtBFgtGU817ryOrBvcqaxuS2xZif2nBjUNtQ@mail.gmail.com>
Message-ID: <CAK7LNAQ+do3HNWYtBFgtGU817ryOrBvcqaxuS2xZif2nBjUNtQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, Michal Marek <michal.lkml@markovi.net>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: yamada.masahiro@socionext.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=OBGYB9aZ;       spf=softfail
 (google.com: domain of transitioning yamada.masahiro@socionext.com does not
 designate 210.131.2.81 as permitted sender) smtp.mailfrom=yamada.masahiro@socionext.com
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

On Wed, Aug 28, 2019 at 11:19 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Aug 28, 2019 at 9:20 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Wed, Aug 28, 2019 at 7:55 AM Masahiro Yamada
> > <yamada.masahiro@socionext.com> wrote:
> > >
> > > Instead of the warning-[123] magic, let's accumulate compiler options
> > > to KBUILD_CFLAGS directly as the top Makefile does. I think this makes
> > > easier to understand what is going on in this file.
> > >
> > > This commit slightly changes the behavior, I think all of which are OK.
> > >
> > > [1] Currently, cc-option calls are needlessly evaluated. For example,
> > >       warning-3 += $(call cc-option, -Wpacked-bitfield-compat)
> > >     needs evaluating only when W=3, but it is actually evaluated for
> > >     W=1, W=2 as well. With this commit, only relevant cc-option calls
> > >     will be evaluated. This is a slight optimization.
> > >
> > > [2] Currently, unsupported level like W=4 is checked by:
> > >       $(error W=$(KBUILD_ENABLE_EXTRA_GCC_CHECKS) is unknown)
> > >     This will no longer be checked, but I do not think it is a big
> > >     deal.
> > >
> >
> > Hi Masahiro Yamada,
> >
> > thanks for your patch series.
> >
> > If KBUILD_ENABLE_EXTRA_GCC_CHECKS does extra(-warning)-checks for GCC and Clang,
> > please rename the Kconfig into...

You repeatedly mentioned "Kconfig" in your posts,
where there is nothing related to Kconfig.


> >
> > KBUILD_ENABLE_EXTRA_CC_CHECKS

You missed the fact this is already used
not only for C compilers, but also for Device Tree compiler.
(see scripts/Makefile.lib)

One more thing, this is the environment variable
that Kbuild officially supports.
Keeping the backward compatibility is must.


When I mentioned to rename this before,
Arnd suggested to keep it as is.
https://patchwork.kernel.org/patch/10172331/#21385013

I do not know whether he is still planning that rework, though.


> > ...or something similiar (and maybe with some notes in its Kconfig help-text?).

What did you mean by "Kconfig help-text" ?



> >
>
> I have tested both patches against recent kbuild-next and can boot on
> bare metal with clang.
>
> I have *not* passed any W= to my make, but I see that clang's W=1
> kbuild-cflags are active.
>
> [ scripts/Makefile.extrawarn ]
>
> ifeq ("$(origin W)", "command line")
>   export KBUILD_ENABLE_EXTRA_GCC_CHECKS := $(W)
> endif
>
> #
> # W=1 - warnings that may be relevant and does not occur too often
> #
> ifneq ($(findstring 1, $(KBUILD_ENABLE_EXTRA_GCC_CHECKS)),)
> [ ... ]
> KBUILD_CPPFLAGS += -DKBUILD_EXTRA_WARN1
>
> else
>
> # W=1 also stops suppressing some warnings
>
> ifdef CONFIG_CC_IS_CLANG
> KBUILD_CFLAGS += -Wno-initializer-overrides
> KBUILD_CFLAGS += -Wno-format
> KBUILD_CFLAGS += -Wno-sign-compare
> KBUILD_CFLAGS += -Wno-format-zero-length
> endif # CONFIG_CC_IS_CLANG
>
> endif # KBUILD_ENABLE_EXTRA_GCC_CHECKS
>
> These clang KBUILD_CFLAGS are active independently of passing W=1.
>
> $ grep '\-Wno-initializer-overrides'
> build-log_5.3.0-rc6-2-amd64-cbl-asmgoto.txt | wc -l
> 27195
>
> So the above comment is misleading?
>
> Is W=1 activated by default?
>
> Or do I miss something?


I won't comment back to your long analysis.

Instead, I will post v2.
I hope you will notice something.





> [ Documentation/kbuild/kbuild.rst ]
>
> KBUILD_ENABLE_EXTRA_GCC_CHECKS
> ------------------------------
> If enabled over the make command line with "W=1", it turns on additional
> gcc -W... options for more extensive build-time checking.
>
> What about?
>
> KBUILD_CC_EXTRA_CHECKS (or KBUILD_EXTRA_CC_CHECKS)
> ------------------------------
> If enabled over the make command line with "W=...", it turns on additional
> compiler warning options like -Wmissing-declarations for more extensive
> build-time checking. For more details see <Documentation/kbuild/kbuild.rst>.
>
> W=1 - warnings that may be relevant and does not occur too often
> W=1 - also stops suppressing some warnings
> W=2 - warnings that occur quite often but may still be relevant
> W=3 - the more obscure warnings, can most likely be ignored
>
> - Sedat -



--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQ%2Bdo3HNWYtBFgtGU817ryOrBvcqaxuS2xZif2nBjUNtQ%40mail.gmail.com.
