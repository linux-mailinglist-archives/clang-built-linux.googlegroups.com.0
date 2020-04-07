Return-Path: <clang-built-linux+bncBCS7XUWOUULBBQFEWP2AKGQE6GTJF7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 047A71A15B1
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 21:19:30 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id w7sf3109186ply.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 12:19:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586287168; cv=pass;
        d=google.com; s=arc-20160816;
        b=GsjhhAfROYogWZz68tQand09eKRd6npDbvAqf2+Dd3t5SGe55nPOeE/VT1IVpOb8v6
         L52QHtvcjSnx9qY7Iu34gmV6qfdClun17P7Zt3VyLWbvP6HfacTQnaEppTiVAgyDV4s0
         9EiuA6lKqdb91jpEPKOY8GbVYD1eA5AKQ1kfCppBj2IGDjoMrvrqm6d5tuudO6mzugnX
         dc+qZBnXGXqsU/Pl6CEDWyyltLqdQN0myZGCY8eHLZmgLJrZh+HnqVz+YOGVFF98RY8T
         0BQ2+LU5C9XGIGn8P52NSi2tC2kHAngcgaCLKV7dfNdTbNz/w5XtVxv2DOYft7e9qEW7
         DIkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jNzEncM1b4thD4yyDn0qpqqerT/0Gzdr2Toirav6j/w=;
        b=ADNJYizLzdum+RwR9qJN64muFgo8v0dQ4kLet2pvicR/+Y+XCXe3BV0JYmJ9YqZyC3
         EgrCzbhtFDDpF2gVJszzKwNsB2OK8Bx3D8iIkHXM34MdmtRQf7rivsLAtoPRri5ss5oH
         6kCz7J0dSZeEkDUcDppPqP8EkI8yvZEHbhPNWg2PalWvMkkizhcbP3pdntM1HDdW2NGv
         Tt4rxJxU8hXbaEQTQQwfUPgG9U+YMIbjgH1D8m/aumfnO48myYcEi2YQKzDgmLK1kyFo
         IFaKEklmmjapmj3Wg5wdAkcIUOtILyku89aMS9/aElo/A+RS3qV3/8iP2eIYdt3vTwC1
         bd/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fCkFOEvt;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jNzEncM1b4thD4yyDn0qpqqerT/0Gzdr2Toirav6j/w=;
        b=c9JyzFAYgOdRMQyny0ZA5BtwNZ76zJlMEW1yhrXRot71tp/xjEvXj4cNTAn1FbmcCJ
         RTYJR3kV1qp5gIk2BK8gT0Z7O/+zRp0/Lt0HWKmnckg48C1uehO1IOo1t70YKeteii7A
         EZHOXKubAtBT7jt3X+JEzTTbWpKnqyZWgy9Q73FEc0cvl6/bCQjtTkXPCTBoWNcq0V+S
         tvwNLfogi5WU3FCOUqSVRtIElAGpcKvSoqnDkMzyLtdX2rUPP/WLqDZqPeFYWO/g9fEj
         hwEe5CAQPApMRvniN4yL4PDlZjZ5wFQlOR1EcWZO6Ji+IR5wvfWS3HZsiTLT7onuIefV
         If0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jNzEncM1b4thD4yyDn0qpqqerT/0Gzdr2Toirav6j/w=;
        b=e+6lTl9ZhUXRnfLFk8Q+QnVIBODByXanG1tlB3WGBuYfROuftaID9N41LMK5K2afzC
         gUcRmrBpXs3um/fTAX1w42Q3b8qNlG0HSpP6rCUzj809SVVEm8HkdEeR/XnUN8t5wU37
         uURN/cC2tZxoTuNT0bO6i52U/DZnLexT2hk/U5uz4NypKWfxKqR9o4Iwf2Nh6nvudEhE
         37jtY9O6Ar60HEO7SQK8u9yjrx+rvNoQfHUutTT4N7qDxBy95jUI+YlsdJTyW4+07d1a
         isj1bFAnIJkNqsXm4WatzrQGn4v9fZSYYfvbuL3BrF6jx4J23GYSClQmHk4vsceSPgtF
         VP/A==
X-Gm-Message-State: AGi0PubF1TYjP4m3bwEhkhructbwEAGVMCiorv1v9GNyCVA6ghpXCkSt
	0yowKfx2xBvBWJeIw90Z8sI=
X-Google-Smtp-Source: APiQypIyangaLJbyDp1rEGn5wB8vTBHOzJ1tUemm4gtbfz2d6sIkQqKH+t/aE6QqGI7H1Xz/jnmHtw==
X-Received: by 2002:a17:902:968a:: with SMTP id n10mr3705266plp.74.1586287168344;
        Tue, 07 Apr 2020 12:19:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7c58:: with SMTP id l24ls735033pgn.6.gmail; Tue, 07 Apr
 2020 12:19:28 -0700 (PDT)
X-Received: by 2002:a63:7983:: with SMTP id u125mr3627233pgc.442.1586287167920;
        Tue, 07 Apr 2020 12:19:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586287167; cv=none;
        d=google.com; s=arc-20160816;
        b=H16N9YlXtZnBoYRajuUvSGl1LjKpMtzolYwJFGrP5CosHNwXc00kmLxfZEA/znqs/0
         e1KN+KWE2XdthXpdxcTVchH/2tRNk6eGZemU3VLTc1Yp/LbNog8IIy4YtATavj+/Hchf
         ba1R1gd6tlZ0GUFloT4Zb8emaQez3qjqmizNtU58u8IKVGWymaygtIiMOiIOokwtULW7
         m6/Z4j5V+Bmr5CfOkWYin8RgSiN1s3SXJptw3/2LIIK3wJ4ctZEp+AabvWUErFHOGAoU
         EpOvMoyPGTbKqY2zy7hQJNh8/2rnS2QBznM7/oJDqsTdkoJOOE+A+TpWm2wBpqf4xNUW
         xw6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=rG3gvegGYMuy2XFIc5WCw+t7albL71jqGTx3h+oz3PU=;
        b=eKqWQlS51oXprXZxznNq6UVYfPv6b4bZZEL1sxo3D8oj1+/Ro8RtAQq8vGoPfH9NW/
         o+fe3zg8EE3djDSzldl86cruq06KTLm2cj2Z4tCyB+0TPzgS0GqS2lTTR0orR+5rRXEq
         I6P8WqsDUuY7jQY1TsOgZ1kIGYxZjKFuI6mDBa0a4i5q7dj1pZCCWQqXSHBQPzTz56r6
         YsdAZMdi840kH6Hz3AhF3gT0ig0iEwezbwGqoy34gvZZ1cbXuDvlM2ufUGo3ShQhu6tC
         8gMR2pXkrLpFj1R99D3LVxpCFceJyp6DAgLnKOcLj3byTh1CRBRorax5Bf8hXjSrFfuf
         OBTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=fCkFOEvt;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id 74si294659pfy.0.2020.04.07.12.19.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Apr 2020 12:19:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id n4so167343pjp.1
        for <clang-built-linux@googlegroups.com>; Tue, 07 Apr 2020 12:19:27 -0700 (PDT)
X-Received: by 2002:a17:902:598e:: with SMTP id p14mr3523199pli.276.1586287167194;
        Tue, 07 Apr 2020 12:19:27 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id 203sm320233pfw.25.2020.04.07.12.19.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 12:19:26 -0700 (PDT)
Date: Tue, 7 Apr 2020 12:19:23 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: 'Nick Desaulniers' via Clang Built Linux <clang-built-linux@googlegroups.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Matthias Maennich <maennich@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Michal Marek <michal.lkml@markovi.net>,
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Jian Cai <jiancai@google.com>, Stephen Hines <srhines@google.com>,
	Luis Lozano <llozano@google.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to
 Clang/LLVM
Message-ID: <20200407191923.txaggm7ntxrinddf@google.com>
References: <20200403051709.22407-1-masahiroy@kernel.org>
 <20200406112220.GB126804@google.com>
 <CAK7LNARkFN8jTD8F3CU7r_AL8dbqaKpUuou4MCLZvAYLGs9bYA@mail.gmail.com>
 <CAKwvOdmHxeZ+T1OsOhW25pPygHM4D21OgZqRk141xbjP437-1w@mail.gmail.com>
 <CAK7LNARSMvGZ6T4Ct=U4Xe1WQCgkaWE8m8BxRuYiaokKVjA_ig@mail.gmail.com>
 <CAKwvOdkicpNMqQipZ+AMTEz7JVou3bkcKiQ3Cih20qH0hoziDg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOdkicpNMqQipZ+AMTEz7JVou3bkcKiQ3Cih20qH0hoziDg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=fCkFOEvt;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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


On 2020-04-07, 'Nick Desaulniers' via Clang Built Linux wrote:
>On Tue, Apr 7, 2020 at 10:47 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>>
>> On Wed, Apr 8, 2020 at 2:01 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>> >
>> > On Tue, Apr 7, 2020 at 9:17 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>> > >
>> > > On Mon, Apr 6, 2020 at 8:22 PM 'Matthias Maennich' via Clang Built
>> > > Linux <clang-built-linux@googlegroups.com> wrote:
>> > > >
>> > > > On Fri, Apr 03, 2020 at 02:17:09PM +0900, Masahiro Yamada wrote:
>> > > > >As Documentation/kbuild/llvm.rst implies, building the kernel with a
>> > > > >full set of LLVM tools gets very verbose and unwieldy.
>> > > > >
>> > > > >Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
>> > > > >GCC and Binutils. You can pass LLVM=1 from the command line or as an
>> > > > >environment variable. Then, Kbuild will use LLVM toolchains in your
>> > > > >PATH environment.
>> > > > >
>> > > > >Please note LLVM=1 does not turn on the LLVM integrated assembler.
>> > > > >You need to explicitly pass AS=clang to use it. When the upstream
>> > > > >kernel is ready for the integrated assembler, I think we can make
>> > > > >it default.
>> > > > >
>> > > > >We discussed what we need, and we agreed to go with a simple boolean
>> > > > >switch (https://lkml.org/lkml/2020/3/28/494).
>> > > > >
>> > > > >Some items in the discussion:
>> > > > >
>> > > > >- LLVM_DIR
>> > > > >
>> > > > >  When multiple versions of LLVM are installed, I just thought supporting
>> > > > >  LLVM_DIR=/path/to/my/llvm/bin/ might be useful.
>> > > > >
>> > > > >  CC      = $(LLVM_DIR)clang
>> > > > >  LD      = $(LLVM_DIR)ld.lld
>> > > > >    ...
>> > > > >
>> > > > >  However, we can handle this by modifying PATH. So, we decided to not do
>> > > > >  this.
>> > > > >
>> > > > >- LLVM_SUFFIX
>> > > > >
>> > > > >  Some distributions (e.g. Debian) package specific versions of LLVM with
>> > > > >  naming conventions that use the version as a suffix.
>> > > > >
>> > > > >  CC      = clang$(LLVM_SUFFIX)
>> > > > >  LD      = ld.lld(LLVM_SUFFIX)
>> > > > >    ...
>> > > > >
>> > > > >  will allow a user to pass LLVM_SUFFIX=-11 to use clang-11 etc.,
>> > > > >  but the suffixed versions in /usr/bin/ are symlinks to binaries in
>> > > > >  /usr/lib/llvm-#/bin/, so this can also be handled by PATH.
>> > > > >
>> > > > >- HOSTCC, HOSTCXX, etc.
>> > > > >
>> > > > >  We can switch the host compilers in the same way:
>> > > > >
>> > > > >  ifneq ($(LLVM),)
>> > > > >  HOSTCC       = clang
>> > > > >  HOSTCXX      = clang++
>> > > > >  else
>> > > > >  HOSTCC       = gcc
>> > > > >  HOSTCXX      = g++
>> > > > >  endif
>> > > > >
>> > > > >  This may the right thing to do, but I could not make up my mind.
>> > > > >  Because we do not frequently switch the host compiler, a counter
>> > > > >  solution I had in my mind was to leave it to the default of the
>> > > > >  system.
>> > > > >
>> > > > >  HOSTCC       = cc
>> > > > >  HOSTCXX      = c++
>> > > >
>> > > > What about HOSTLD ? I saw recently, that setting HOSTLD=ld.lld is not
>> > > > yielding the expected result (some tools, like e.g. fixdep still require
>> > > > an `ld` to be in PATH to be built). I did not find the time to look into
>> > > > that yet, but I would like to consistently switch to the llvm toolchain
>> > > > (including linker and possibly more) also for hostprogs.
>> > >
>> > >
>> > > HOSTLD=ld.lld worked for me, but HOSTCC=clang did not.
>> > >
>> > >
>> > >
>> > > HOSTCC=clang without CC=clang fails to build objtool.
>> > >
>> > > The build system of objtool is meh.  :(
>> >
>> > Let's tackle that in a follow up, with the goal of build hermiticity
>> > in mind.  I think there's good feedback in this thread to inform the
>> > design of a v2:
>> > 1. CLANG_AS=0 to disable integrated as.  Hopefully we won't need this
>> > much longer, so we don't need to spend too much time on this, Masahiro
>> > please just choose a name for this.  llvm-as naming conventions
>> > doesn't follow the rest of binutils.
>>
>> I am not so familiar with the terminology in LLVM,
>> but I feel 'integrated' is a keyword IMHO.
>> I prefer LLVM_IA=1.  (or  LLVM_INTEGRATED_AS=1)
>
>I'm happy with either, and I trust your judgement.  You choose.
>Hopefully we will fix all our assembler bugs soon and won't need the
>flag much longer.

Maybe "IAS", e.g. LLVM_IAS=1 or CLANG_IAS=1

IAS is referred to in a few places. IA is not a common abbreviation.

I don't have strong opinion here and thank Masahiro a lot for the
improvement!

>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkicpNMqQipZ%2BAMTEz7JVou3bkcKiQ3Cih20qH0hoziDg%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200407191923.txaggm7ntxrinddf%40google.com.
