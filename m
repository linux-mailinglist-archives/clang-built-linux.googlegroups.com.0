Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5OEVOBAMGQEC4ZLBUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id F08AA338461
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 04:39:34 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id m22sf6428566vsr.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 19:39:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615520373; cv=pass;
        d=google.com; s=arc-20160816;
        b=JvAqcgYFehsNmNPEazt3UN5zlmccQ0tlMllse9qWuNxlBNW39swK6OXuZuuG2IYAiu
         j9jqixQG1r0pcxXgoOl8iUYC4WQv5bUsBmn6cltd22TwWtrA1sj9aDiCrRKte25y3vZA
         LCD8EO4NKK8axWqORzxXQJseyy7snjriMLGqzxiXKZVjn1aeEfnXD+eVtCUUVVqVfb28
         4s9sPzEVnWCeXNcgmJmJcABqwkv7yEbdzvSSrjapCkSmSrm3Ud8K8GerE4Z0HZLTheSQ
         uSmAfX2KCBZmvdnN9FUg38PFK9/TkFzQafxezNTrr5ygottcByUsaTIMDMV4fr5G2rZz
         h+CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hsVxCbGrnFTzdeqrdqa5HYhJEuiQOxj/IXoHTCVUk7M=;
        b=D8jVWKYGLGz8FHEHnSSW34z3dwnwl8pnIwkcFgcCWRkvGo/nS3VLRTNlNCEA5hvN7G
         5dede0o48rkn6/dYhY3USyE/p0XARfx5t9I8Wsf9VHpjEm4gTc9iGqdeHaXYPnzZSbhl
         oYDdEwcIjl1Q+lKBEEisYSg1wvz1PJSvAdYFnx083QrT+btrVfvbRZwrjWdIm/hlExmt
         YqGdQuqPjGbZ3U6ViSttYijIKypegt6Znt4zRmO3VN2OKNvIivNoCFkXqgZEnCnT2G0i
         UQ7Dw+5gLL5cRORvR/dnV8ToPp64XsdSGSfC1F9dtP28DkJgDzQBRxO2j/9zEDd+AHzh
         3ILQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ngtsOknc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hsVxCbGrnFTzdeqrdqa5HYhJEuiQOxj/IXoHTCVUk7M=;
        b=V7kB3c+6+DtLEyMW0WHYkY8wDyx15020FaLBv72gFzWAxGcmnuEpMQ2YuDlGJT5j9k
         P1aHo48f7YBrRsZqUEL2xFSGGv4tnTC9o88+4/tsyIMLT9MkAHFtfr9o8vZ4nU7/PI8G
         E2jpda8ROf2vg2aNSN8m3POfdJ6tIQJaoZixeCbso3oHiK037jarJqEhehxY26KZOY6B
         Rlne0WW4GfGrPj42rBCQs4Gq4/c+iDzEj3MMklcZB2B+mU6j8ccp32qq3tXsQIfAjTMf
         dkoFDWCpYBX4ETBF/KrLZ92JutV8DinUtrJovVkcTqsWFV1YeUh8+pfTNodIzwNxpJO0
         fReQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hsVxCbGrnFTzdeqrdqa5HYhJEuiQOxj/IXoHTCVUk7M=;
        b=YiAJCAljd3s8r1HERRdDsm69lzPaPbVaZGbrytWA4jr/+N8JwoG3Gx5u+5znk/E/YC
         7NsgVq4+zjG2j0qnDET9AnU0u3MpjbyccPeaTkMgbhg6K3+4tSfHL0Ph+pokd++3hci2
         7hhWPHXauwOQRhMbIxUr0vE34KobqvPGcyYqSN1jpMUwQmAp0K2Ivb2h3Xl9/pNirWDg
         cv/0cuB71KLMiBDy9rbRjyVdV9+nvn95mzm1NcSJa1iSuctnsh9TDpv8WFpHN4jAEt8g
         jDayGVc8OYwm9WNmwHKo4YULcH+MAsObkoO+JXEfXtldGaHPH6W6wg3ijX3qXLRbt4eA
         d81Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wW89rOcZwbaOYlppygzJ8YDn/UopmLBfEZwz9zgx76OWL7Mqy
	4wOWvxV4rJpRNdxoH+QbFn4=
X-Google-Smtp-Source: ABdhPJzAm6GEl/lFgolUVtlX47paNjxI1A6QgseqQZcSV7xDVkTR5GV2JLwT/w03n2K20ng3JQWqaQ==
X-Received: by 2002:a1f:cd42:: with SMTP id d63mr7169807vkg.19.1615520373720;
        Thu, 11 Mar 2021 19:39:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f446:: with SMTP id r6ls1024714vsn.8.gmail; Thu, 11 Mar
 2021 19:39:33 -0800 (PST)
X-Received: by 2002:a05:6102:82e:: with SMTP id k14mr7623372vsb.48.1615520373172;
        Thu, 11 Mar 2021 19:39:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615520373; cv=none;
        d=google.com; s=arc-20160816;
        b=ZBFAOpaTkx3DE2ouYJiIKXSyfnmu7159cipFO1wUlpGD3KaPeY+IHb67yUffjOf4jW
         PRtCUVz+H0yDE0rAhrZQoWAM32YKlsWD8on7sp+WV2Nioeta91ZNGeY3K1YP9sqMGsg8
         vUdSAaYDY4CRiuPXlIvRC2cszQNTFM48+CCTzgOoDa0lnIBjr5p28ua09QYRZZ5CKn3u
         U1yZAQA9+3vIvMRbrhPxb2bgJsp2I//lqcCgN5AHlHMvsnASJIKZ3jThT8EHev02XxxJ
         gTpId4TdQgU57pG9sMZPKR0zcuvaXWHte9CKZWbX87vspcDztEUPRErATt8yy3URtTt7
         svUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Sl2/BppEIzRHp1H2YjvUlEr5xzKnNpg4GS8pQg3W95o=;
        b=qhlJ1AOIpaH0YLFHfsqWovaqckACQEhnyi5+Gll2aPhSA2MJTkU35y/viMEs/P8R2p
         PZ2KRtjW/dJJb+FpKhwI+AHMBzxbR4CKKP2Hkfk7ezP/0vgspMYuxlhyr20p1qX/vxkr
         CGL09VH6Jk6j79KeXvY9LA/IhSjbnC3ckyFg2zWVi0/26NhVonFOmu/in6fL/5Y2uHOj
         aZvwcRaN1olr5U92u8/JEuF2bYYG0NHQ/aWshRKLDoA27e5ZhFbbkhkGEVh6DFGRL0eB
         pyKS4PQdXicTJpYUDTH+P1xn5ecphf6E8kW6jGi6Lo5Uctb+AgX4hWb1ZbfN7QS+S/7o
         WKLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ngtsOknc;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i18si370805ual.1.2021.03.11.19.39.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 19:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A038464F70;
	Fri, 12 Mar 2021 03:39:30 +0000 (UTC)
Date: Thu, 11 Mar 2021 20:39:27 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Maximilian Luz <luzmaximilian@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Memory Management List <linux-mm@kvack.org>,
	Hans de Goede <hdegoede@redhat.com>
Subject: Re: [linux-next:master 1430/3917]
 drivers/platform/surface/surface_aggregator_registry.c:398:25: warning:
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value
 from 65535 to 255
Message-ID: <20210312033927.xdxhw57m4lqwxt4p@archlinux-ax161>
References: <202103112158.loq4oyJu-lkp@intel.com>
 <8c252429-5000-0649-c49f-8225d911241b@gmail.com>
 <20210311185154.6uysryumfho73zlb@archlinux-ax161>
 <7db15c91-db37-69a4-84b7-6f58cca2ee1b@gmail.com>
 <CAKwvOdkw9V+3SDO_kxkZV4aqHeTLGFF0Xxh2jk0d7ExsfyzyJg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdkw9V+3SDO_kxkZV4aqHeTLGFF0Xxh2jk0d7ExsfyzyJg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ngtsOknc;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Mar 11, 2021 at 04:18:59PM -0800, Nick Desaulniers wrote:
> On Thu, Mar 11, 2021 at 4:13 PM Maximilian Luz <luzmaximilian@gmail.com> wrote:
> >
> > On 3/11/21 7:51 PM, Nathan Chancellor wrote:
> > > On Thu, Mar 11, 2021 at 02:39:03PM +0100, Maximilian Luz wrote:
> > >> On 3/11/21 2:06 PM, kernel test robot wrote:
> > >>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > >>> head:   98546348153dee5f8ced572fd6c4690461d20f51
> > >>> commit: 797e78564634275ed4fe6b3f586c4b96eb1d86bc [1430/3917] platform/surface: aggregator_registry: Add base device hub
> > >>> config: arm64-randconfig-r026-20210311 (attached as .config)
> > >>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 574a9dabc63ba1e7a04c08d4bde2eacd61b44ce1)
> > >>> reproduce (this is a W=1 build):
> > >>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >>>           chmod +x ~/bin/make.cross
> > >>>           # install arm64 cross compiling tool for clang build
> > >>>           # apt-get install binutils-aarch64-linux-gnu
> > >>>           # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=797e78564634275ed4fe6b3f586c4b96eb1d86bc
> > >>>           git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >>>           git fetch --no-tags linux-next master
> > >>>           git checkout 797e78564634275ed4fe6b3f586c4b96eb1d86bc
> > >>>           # save the attached .config to linux build tree
> > >>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> > >>>
> > >>> If you fix the issue, kindly add following tag as appropriate
> > >>> Reported-by: kernel test robot <lkp@intel.com>
> > >>>
> > >>> All warnings (new ones prefixed by >>):
> > >>>
> > >>>      In file included from drivers/platform/surface/surface_aggregator_registry.c:12:
> > >>>      In file included from include/linux/acpi.h:35:
> > >>>      In file included from include/acpi/acpi_io.h:7:
> > >>>      In file included from arch/arm64/include/asm/acpi.h:12:
> > >>>      include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
> > >>>              status = get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size,
> > >>>                                              ^
> > >>>      include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
> > >>>              get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &setupmode);
> > >>>                                    ^
> > >>>>> drivers/platform/surface/surface_aggregator_registry.c:398:25: warning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Wconstant-conversion]
> > >>>              { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
> > >>>              ~                      ^~~~~~~~~~~~
> > >>
> > >> This is a false positive:
> > >>
> > >>>      include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
> > >>>      #define SSAM_ANY_IID            0xffff
> > >>>                                      ^~~~~~
> > >>
> > >> Here, clang complains that the input is SSAM_ANY_ID. That is a special
> > >> value which has special considerations below. The SSAM_DEVICE() and
> > >> thus SSAM_VDEV() macros are intended to only allow either __u8 or
> > >> SSAM_ANY_ID as input in this place.
> > >>
> > >>>      include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
> > >>>              SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
> > >>>                                                                           ^~~
> > >>>      include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
> > >>>              .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
> > >>>                                                     ^~~
> > >>
> > >> Here is the special handling for SSAM_ANY_ID. So there is an implicit
> > >> conversion from iid, which may be __u8, to int (i.e. the type of
> > >> SSAM_ANY_ID), but there is at no point any implicit conversion of
> > >> SSAM_ANY_ID to __u8, as clang alleges.
> > >
> > > Looks like we are getting bit by https://llvm.org/pr38789 here (also
> > > tracked at https://github.com/ClangBuiltLinux/linux/issues/92).
> >
> > Thanks for the links! Looks like this is the same issue.
> >
> > >> Is there any way to silence this warning in particular without
> > >> suppressing it (e.g. by explicit casting) when users of this macro
> > >> _actually_ input any non-u8 and non-SSAM_ANY_ID value as iid,
> > >> leading to an _actual_ implicit value-changing cast?
> > >
> > > This has been worked around once before, commit b27aca2e555f ("soc:
> > > rockchip: work around clang warning"). I am not sure of another way to
> > > silence the warning in specific instances like you described aside from
> > > just fixing clang (which is obviously the correct solution) so that we
> > > will get real warnings.
> > >
> > > Unfortunately, the patch that is linked in the LLVM PR above does not
> > > appear to fix this instance.
> >
> > So what's the way forward here? Ignore this warning for now and wait for
> > the clang team to fix it or find a workaround?
> 
> I think we should fix this on the Clang side; having your additional
> test case will help us refine the initial approach.  Not the highest
> priority for us as this was found via randconfig; if it was something
> that showed up for defconfigs for every arch that would help us
> reprioritize but at the moment we have a lot of higher priority work.
> Either way, I appreciate the effort looking into this 0day bot
> warning!

Just for the record, this is visible with a regular all{mod,yes}config
build but it is just one warning so I tend to agree that it is not the
highest priority.

Cheers,
Nathan

> >
> > The best workaround I can come up with is setting the match_flags
> > parameter directly as macro argument, which would be a bit more verbose
> > and feel slightly less clean, but would do the trick.
> >
> > Also note that any changes to those macros would have to be synchronized
> > with a couple of patches which are still out to non-pdx86 trees, so if
> > we're working around this it's best to do this as soon as possible.
> > Specifically talking to Hans here, as those patches all have a
> > dependency on stuff that's only in the pdx86 tree right now. I.e.
> > getting the workaround in before setting up a tag for those dependencies
> > would simplify things.
> >
> > Regards,
> > Max
> >
> > > Cheers,
> > > Nathan
> > >
> > >> I believe GCC does get this right and only emits a warning if a
> > >> non-u8 _and_ non-SSAM_ANY_ID value is input.
> > >>
> > >> Regards,
> > >> Max
> > >>
> > >>>      3 warnings generated.
> > >>>
> > >>>
> > >>> vim +398 drivers/platform/surface/surface_aggregator_registry.c
> > >>>
> > >>>      396
> > >>>      397    static const struct ssam_device_id ssam_base_hub_match[] = {
> > >>>    > 398            { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
> > >>>      399            { },
> > >>>      400    };
> > >>>      401
> > >>>
> > >>> ---
> > >>> 0-DAY CI Kernel Test Service, Intel Corporation
> > >>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > >>>
> > >>
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7db15c91-db37-69a4-84b7-6f58cca2ee1b%40gmail.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312033927.xdxhw57m4lqwxt4p%40archlinux-ax161.
