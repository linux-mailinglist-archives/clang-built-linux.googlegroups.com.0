Return-Path: <clang-built-linux+bncBDYJPJO25UGBBAHHVKBAMGQEWSL6EQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 742C8338227
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 01:19:12 +0100 (CET)
Received: by mail-ej1-x63f.google.com with SMTP id r26sf9419033eja.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 16:19:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615508352; cv=pass;
        d=google.com; s=arc-20160816;
        b=PoSgypzw+0PiqBCqgtlgo/bF3OZ4J1qphG+VrbEGtzW4p9CEDbTktxwrsQfWLiS5dP
         2KJwcexaTtEIqmcFro+YDLMssFnPOAELZZnXaLA+vFcJRVYsxkJZLFbN6IDQOBdQIzh8
         pcJ3/Z23EBX1imgF2WkV3rEYr9OAcOgyWGFR4ZCFxmHWsFMyz1SBgWoxjlKehAJX9yXG
         opLaZmnI/ab/9LwwrVsqzbHrO5RxiwASsWclyb4c2Ohmh8LijIAyfsHTKU/K1eLX/I7A
         kQ3f7gQJtzTWbWVdvVr0VKkzFN0oMSbagfwgqtIigHCurZ0FpZpC2lJo8zjCSC5BOZMg
         P5FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=URAEbsYW87BXOE9nHuQIg45ZeHLcn2mxQNgAgA+z/8A=;
        b=ZoBu0yUaIEr7SavHPFnXJYYW8d1nZoPZ8+ZOtjtJyPxEgTHUPQ9732bKhKUT1zr1DK
         gKujgHEgiRtTVeZnR2OfYcg/hN8mmtSargrW/cr/nNXSdug83Y1RcsDoCZgPC3v86S06
         2rnn8PmNhFNhQKlHARJ+Id4DWzcCP321l18IgLI7HWngbUeATp0Db2pCzxA8zVDJ6pXG
         bqdEe2O5DlMy7XfAwD+HMBVfbgdMpyguUIosIrGp6S62TfQp7L1Km+fuLsMG35Z1hYng
         ZWU/yIoQwEAJ91xQ+Sy2wE9JzTcKpb4kvVJgXoo3DeXRIC6COuIkg84PThEMn6kjfFW9
         ISog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQYzuQGS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=URAEbsYW87BXOE9nHuQIg45ZeHLcn2mxQNgAgA+z/8A=;
        b=VQu423oM0uZ/dDvutZsVbred0tcJxwSMtXApNa9Tf9XeRtkKRvAGMP1argiN5hfKEW
         jXx6e/Xljt4QeFBOm3dd4b0Ghg7EHKC065ia/9PQazj832SJr/U8Osx9JB9P3c0dcRmq
         hwlySvENX7Ec30LfmhkP51vdgk/F+qG8AVONhiQut6LPsd91JjvOTXJQn/0BN0C0BqvG
         XnHw5rKM2szp3YB5fmisTir5cktgDV1iQu8yDVpIbf+bLEArQ4wLm8mjF5TGguXeDQTm
         7jCR8rZeGiUbzD+MLxl4jz+rQSvTJuottKRq95yD1v5AxUp2jlydLS07k/5PZhP4Jrs8
         xuqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=URAEbsYW87BXOE9nHuQIg45ZeHLcn2mxQNgAgA+z/8A=;
        b=VEx8hjxMm0KQqTpYLJhFhInRPXo3nA9Nkb2+yennAopODTanYl8fnqEMTvswC3JJgV
         7AVM11iq6K2kTwovUytFzdzHnyKybIMNVe1y/pFZF9nR8N52PWaMFLav4v4xS6GD7mOf
         7Au8DLLXmY1YorFgyTaO64lSE4DxAh3kfulqk4HM9AK7swcMRtkUZKu8OPHqlyHFwiAJ
         gdXyfc5n1v3nghYZG+o4Y+Wm0iXylAS+G6VJUDbz3zuIWm0aVZzwa8mYkTfWXyh7wrOm
         rZCpxaJII83TFsWpLC6F0zmp0CQlN2k53rcbLLPngajaUTlfdqyqwEKC4AP+7u6KsZm5
         dXBQ==
X-Gm-Message-State: AOAM531KMDubySCP21XWFHsGzq9aW217ysTivDJqxOJqEoMUD9ZTvAEE
	Q4UDSc3X9f4xFgvBzNO5FH8=
X-Google-Smtp-Source: ABdhPJwkAGC5vBgVgvEfqsrf+SBHbUtQH4osHJ8XthCc4/6JadkHO+16k7y2CTS5ax03x51P5x7hXQ==
X-Received: by 2002:a17:906:9be1:: with SMTP id de33mr5981815ejc.320.1615508352280;
        Thu, 11 Mar 2021 16:19:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:3592:: with SMTP id y18ls2521037edc.0.gmail; Thu,
 11 Mar 2021 16:19:11 -0800 (PST)
X-Received: by 2002:aa7:cdcf:: with SMTP id h15mr11106038edw.28.1615508351437;
        Thu, 11 Mar 2021 16:19:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615508351; cv=none;
        d=google.com; s=arc-20160816;
        b=JkFNBejUQtDAOhNpzosCVdTiZciYFi++PV1AYym/TCy01Z+O5O05gI+lCfwJ4YK6nV
         abByyQ1P6Ebj75m3Hb3l/X3punZFDLmXs4AXyBbJiWecCRKFRY6aIZ4ZsYpvqTp9dDvl
         MPIckrovUzyeu3I38He1ElGBz0PMxpnZ8fUIS2I9lwy7mpV6gkw3nmO/dWWnHfI+m8Gi
         IXDz9nkkUKaMFna9pJv57KWYeeIJ6gnlmDbjWFc27g0YTAb4td/3g8eypG3U6m0qQZ6S
         8anfbhMmn8kWdq4UvJktMTIgTSVAKgnfwSCZe2PBn/0sQDGmAvJuGxeAbGpDJB3A7PWu
         XkjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+hbZdDxLjLxjJkZdVZdj+XuDyFvfPLRqkBUE3gqkht4=;
        b=ZTcRN/aBMp5SRR/+Ox7cibOSRMmaK3TYGKzN/S9Bnir/jjfODEUtFcmb1GtIeQaS7W
         mIy6wjYQN5OzbPoaf/pQIRBBR0UD0AlU3tniumcSFrHBWpvtzF6vkDCf/neb3vPg1Zre
         eT3GfwSPfH8D6Vyg6Us7/lDw5oU4SxUVtg977l9o+CM/kRCUiYCEo9E5SHIKoELbWoIb
         ZDCjazZSsNV5BZFNcBDBBljPzcWzI4VqaHv55y9aduMiufU1ZOZglAazQI9sRCZBE2iF
         PwQ0Ob3F+pKcWnCpD6n9P/vpA0cmsO7lkacX7abjnvq67PA8HTK7fMONu+FW5wnT3paQ
         cG5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LQYzuQGS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id jz19si141593ejb.0.2021.03.11.16.19.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Mar 2021 16:19:11 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id n16so42833654lfb.4
        for <clang-built-linux@googlegroups.com>; Thu, 11 Mar 2021 16:19:11 -0800 (PST)
X-Received: by 2002:a19:da19:: with SMTP id r25mr3479792lfg.368.1615508350657;
 Thu, 11 Mar 2021 16:19:10 -0800 (PST)
MIME-Version: 1.0
References: <202103112158.loq4oyJu-lkp@intel.com> <8c252429-5000-0649-c49f-8225d911241b@gmail.com>
 <20210311185154.6uysryumfho73zlb@archlinux-ax161> <7db15c91-db37-69a4-84b7-6f58cca2ee1b@gmail.com>
In-Reply-To: <7db15c91-db37-69a4-84b7-6f58cca2ee1b@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 11 Mar 2021 16:18:59 -0800
Message-ID: <CAKwvOdkw9V+3SDO_kxkZV4aqHeTLGFF0Xxh2jk0d7ExsfyzyJg@mail.gmail.com>
Subject: Re: [linux-next:master 1430/3917] drivers/platform/surface/surface_aggregator_registry.c:398:25:
 warning: implicit conversion from 'int' to '__u8' (aka 'unsigned char')
 changes value from 65535 to 255
To: Maximilian Luz <luzmaximilian@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LQYzuQGS;       spf=pass
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

On Thu, Mar 11, 2021 at 4:13 PM Maximilian Luz <luzmaximilian@gmail.com> wrote:
>
> On 3/11/21 7:51 PM, Nathan Chancellor wrote:
> > On Thu, Mar 11, 2021 at 02:39:03PM +0100, Maximilian Luz wrote:
> >> On 3/11/21 2:06 PM, kernel test robot wrote:
> >>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> >>> head:   98546348153dee5f8ced572fd6c4690461d20f51
> >>> commit: 797e78564634275ed4fe6b3f586c4b96eb1d86bc [1430/3917] platform/surface: aggregator_registry: Add base device hub
> >>> config: arm64-randconfig-r026-20210311 (attached as .config)
> >>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 574a9dabc63ba1e7a04c08d4bde2eacd61b44ce1)
> >>> reproduce (this is a W=1 build):
> >>>           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>>           chmod +x ~/bin/make.cross
> >>>           # install arm64 cross compiling tool for clang build
> >>>           # apt-get install binutils-aarch64-linux-gnu
> >>>           # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=797e78564634275ed4fe6b3f586c4b96eb1d86bc
> >>>           git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >>>           git fetch --no-tags linux-next master
> >>>           git checkout 797e78564634275ed4fe6b3f586c4b96eb1d86bc
> >>>           # save the attached .config to linux build tree
> >>>           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >>>
> >>> If you fix the issue, kindly add following tag as appropriate
> >>> Reported-by: kernel test robot <lkp@intel.com>
> >>>
> >>> All warnings (new ones prefixed by >>):
> >>>
> >>>      In file included from drivers/platform/surface/surface_aggregator_registry.c:12:
> >>>      In file included from include/linux/acpi.h:35:
> >>>      In file included from include/acpi/acpi_io.h:7:
> >>>      In file included from arch/arm64/include/asm/acpi.h:12:
> >>>      include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
> >>>              status = get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size,
> >>>                                              ^
> >>>      include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
> >>>              get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &setupmode);
> >>>                                    ^
> >>>>> drivers/platform/surface/surface_aggregator_registry.c:398:25: warning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Wconstant-conversion]
> >>>              { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
> >>>              ~                      ^~~~~~~~~~~~
> >>
> >> This is a false positive:
> >>
> >>>      include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
> >>>      #define SSAM_ANY_IID            0xffff
> >>>                                      ^~~~~~
> >>
> >> Here, clang complains that the input is SSAM_ANY_ID. That is a special
> >> value which has special considerations below. The SSAM_DEVICE() and
> >> thus SSAM_VDEV() macros are intended to only allow either __u8 or
> >> SSAM_ANY_ID as input in this place.
> >>
> >>>      include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
> >>>              SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
> >>>                                                                           ^~~
> >>>      include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
> >>>              .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
> >>>                                                     ^~~
> >>
> >> Here is the special handling for SSAM_ANY_ID. So there is an implicit
> >> conversion from iid, which may be __u8, to int (i.e. the type of
> >> SSAM_ANY_ID), but there is at no point any implicit conversion of
> >> SSAM_ANY_ID to __u8, as clang alleges.
> >
> > Looks like we are getting bit by https://llvm.org/pr38789 here (also
> > tracked at https://github.com/ClangBuiltLinux/linux/issues/92).
>
> Thanks for the links! Looks like this is the same issue.
>
> >> Is there any way to silence this warning in particular without
> >> suppressing it (e.g. by explicit casting) when users of this macro
> >> _actually_ input any non-u8 and non-SSAM_ANY_ID value as iid,
> >> leading to an _actual_ implicit value-changing cast?
> >
> > This has been worked around once before, commit b27aca2e555f ("soc:
> > rockchip: work around clang warning"). I am not sure of another way to
> > silence the warning in specific instances like you described aside from
> > just fixing clang (which is obviously the correct solution) so that we
> > will get real warnings.
> >
> > Unfortunately, the patch that is linked in the LLVM PR above does not
> > appear to fix this instance.
>
> So what's the way forward here? Ignore this warning for now and wait for
> the clang team to fix it or find a workaround?

I think we should fix this on the Clang side; having your additional
test case will help us refine the initial approach.  Not the highest
priority for us as this was found via randconfig; if it was something
that showed up for defconfigs for every arch that would help us
reprioritize but at the moment we have a lot of higher priority work.
Either way, I appreciate the effort looking into this 0day bot
warning!

>
> The best workaround I can come up with is setting the match_flags
> parameter directly as macro argument, which would be a bit more verbose
> and feel slightly less clean, but would do the trick.
>
> Also note that any changes to those macros would have to be synchronized
> with a couple of patches which are still out to non-pdx86 trees, so if
> we're working around this it's best to do this as soon as possible.
> Specifically talking to Hans here, as those patches all have a
> dependency on stuff that's only in the pdx86 tree right now. I.e.
> getting the workaround in before setting up a tag for those dependencies
> would simplify things.
>
> Regards,
> Max
>
> > Cheers,
> > Nathan
> >
> >> I believe GCC does get this right and only emits a warning if a
> >> non-u8 _and_ non-SSAM_ANY_ID value is input.
> >>
> >> Regards,
> >> Max
> >>
> >>>      3 warnings generated.
> >>>
> >>>
> >>> vim +398 drivers/platform/surface/surface_aggregator_registry.c
> >>>
> >>>      396
> >>>      397    static const struct ssam_device_id ssam_base_hub_match[] = {
> >>>    > 398            { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
> >>>      399            { },
> >>>      400    };
> >>>      401
> >>>
> >>> ---
> >>> 0-DAY CI Kernel Test Service, Intel Corporation
> >>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >>>
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7db15c91-db37-69a4-84b7-6f58cca2ee1b%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkw9V%2B3SDO_kxkZV4aqHeTLGFF0Xxh2jk0d7ExsfyzyJg%40mail.gmail.com.
