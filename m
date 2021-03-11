Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBUONVGBAMGQEGZOCCMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id AA39D337CF5
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 19:52:02 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id o11sf3695308ual.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 10:52:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615488721; cv=pass;
        d=google.com; s=arc-20160816;
        b=JgSB+QP2fsH6kS2RIYUzCzmzZ5qkdAeGeXSp/pRews9zzw1m3vnYq0ajTFA+Njpsqr
         K7rHU80WQhJ1hDngLL1amDdiD6yEAAo/Du3xlXPUDfvnUKpVqxwdsRCkQx3kqT0ftf+4
         aIaa5aTwxZk/g+Mb4twId/0IfY2+JChnlEI7FLYzqowyche6oem8iGDzBIZMxaF8tl+J
         Tniewn0ZouoZwmBiJj+lbx2wCzFVnn86mwEKTNgcvnZMgIf2a0z1sK03qrmMjZtJP6pn
         T4CDPqix/OnANZsOSTv1MwHCO2tmt8IwW7NjeBqligmVeJtiuqL5+cZSEjB2OFt7cY3J
         ZE6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=EM7Ysa7Bleufh4AzvjXZjhST2bQyrKki0S5g6/VeZfE=;
        b=pB7EzlNe+vF0Ap/nCKYvEHssHCCduAZMMqzqQTx2Px+L/eibsedk7Fe4Lxu6mf/hRB
         AN7OA7AKOTyVgAhxwlmVqKggjK+3Gl2lrPjvQJJwopG0962kcMVZOdKmK0PH+a7SPrj4
         p9VGqgXsSppPpvUWXIuu3XRzoOadGRl+WPs66cFTPKGNm96NF9y3hu8AShbwZ3jajzjU
         0axigMEssNo7vX5wPbGsSwrR+++YwlCyKPVFDDghSE0hh7yRyAUN+HaOUUFh4lxeu6Ji
         f+r/JkfCTugMGkvoTbQm87c0IU6gWjQfinoSgN0xXdu0mONSrx8hY23lgoa42ShosuAD
         sE2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hEsBfIvD;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EM7Ysa7Bleufh4AzvjXZjhST2bQyrKki0S5g6/VeZfE=;
        b=tnjTNnLaag2roMlW+7vfuVSEGF5x06T3mg1icvCrIVybYOxf93m/ZYbhjbqYBWPXD3
         78trFp5hEXO36AH/aZYhsUWmQeSfwcPlFlqQzX9oonr9HzcJY0jqEVfWONMiB9f23SEd
         AAVOFtr9pf8rPHN3H3pIXIQKncvXxy8yHQAlcYMqAlDQpGo2mzdEaA4QUIzieCNSWKFv
         qgmKgwdAYznEt0DuOgCrCEv1Ex5XdgsxkYlWdujdwMgqdo/WPE1hN27ZneMUFAUkPs5S
         1GVWUhtiVAlkSGCN4KA+3j2+9Y4zT5JE+yIEIJ0PuvWY8VFTOYtk1SL4t9uXolqmx6AF
         MQXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EM7Ysa7Bleufh4AzvjXZjhST2bQyrKki0S5g6/VeZfE=;
        b=JcvOu5dZigscDMtFp+usPFWL3ygoACOt5VdUWxaCdEI/ELP/gEHgZrMn+D1AX8eghv
         YE0tnh8HlDpmexjvrhRl8MZZdVmBQOSbvWqtohHzr0axXK8/O4tPoPVZ4fnDycB2Kr4Q
         wB1Pya3kLLWjVP33fUs3OYoaIjpUCNhNkOTspQCHw89tXJiaVWccB7tadPsROOFOdJna
         iXTs+xD1NYGgKnqbcDBdluWeYo6C7CBvSvZ7zi8AYa+gfBysjkao56zPfsd4Yn2vvEUx
         Xcd08K0Vz8YBUMWS5EEqlIcj24TqIC4YPFgdPFzV727B90HPEQrvn1xvsZatMBwHPFhl
         aLHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531jXwG/gxacnHJJkqaXnzQFbZvdw/q32aEOwDCBh4kVPrAz2sSk
	1G4Hkcyd8pWbOzWFZITP1DY=
X-Google-Smtp-Source: ABdhPJzsZxnOF+yMC3JggrEC9j9F3EpUW1M+zcuvHzzQfU3gsk4qucyhHYgtO8Ns4/+X8EsxWg63Pw==
X-Received: by 2002:ab0:40c3:: with SMTP id i61mr6316517uad.143.1615488721650;
        Thu, 11 Mar 2021 10:52:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:6147:: with SMTP id w7ls531351uan.8.gmail; Thu, 11 Mar
 2021 10:52:01 -0800 (PST)
X-Received: by 2002:ab0:678d:: with SMTP id v13mr6429339uar.124.1615488721137;
        Thu, 11 Mar 2021 10:52:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615488721; cv=none;
        d=google.com; s=arc-20160816;
        b=sxEOAu4MYdkOmh5USsF6j5eIYdaAJ3EvVmfRmNNk4Dx3+23pYEMAowhQCK9GSoeZFr
         91Z9nPofURdyg2CQvEuY6c/+OOmcT/zi/ULW688zD/V3Tr2h0SIYsTn2KOl3nl0t9yaJ
         xJ/BHY7FWIIJrbYpFsW+DGqYTkfuhIvUTuzDc3XzLNjzIEZl6z/cKJ+eW3AB4TphPbfB
         LAZQjiriF/VNUgvsV0ru3PED4BMdlApomxI5JaJXm7vFFLnUxe4QqNzCNJ8C3/Rsst0R
         beXusDS+J4MV+GljFu/mgxt7edEfFxUeFrNseTWHo2KIskqAVPNsFxVhBl48w2P0WlxL
         fXeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=92+3ixKKN5PNsJPv68M72eMa6m78WBZ++CqZJulXI9k=;
        b=fnO4Vf2v44GEZAvQQ2JRRgKJ58G6Y1R94JHotNcB0RASiCuFFgS8wM3Qy1NhcoS1Ga
         V/IkpPylSYTFrVU25rSgGYqwbaYuWvxw9AG2Ww9tFCc2uhlhTk3XppsProszf/xnfv7O
         cVlNcQS19wiXRZVn3CsWBMPHVd97zMC3zgw92CcXHIrDU3fT12J7p+WkmluaJsRosyUM
         D0Zi1GHvKcvxkwObBYnN+FJHaZWrbuH2C4okhj6Mri710laqchysXPssz03sIOBidt3D
         mKFKaBUXEe19PjcPuObAHma+EwzCbJaTH9Gdlw6+MFJgQxR4HlzAVgvBCWVBVmz4toCE
         9hjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=hEsBfIvD;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i8si208093vko.4.2021.03.11.10.52.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 10:52:01 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6FE8964FE0;
	Thu, 11 Mar 2021 18:51:58 +0000 (UTC)
Date: Thu, 11 Mar 2021 11:51:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Maximilian Luz <luzmaximilian@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Hans de Goede <hdegoede@redhat.com>
Subject: Re: [linux-next:master 1430/3917]
 drivers/platform/surface/surface_aggregator_registry.c:398:25: warning:
 implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value
 from 65535 to 255
Message-ID: <20210311185154.6uysryumfho73zlb@archlinux-ax161>
References: <202103112158.loq4oyJu-lkp@intel.com>
 <8c252429-5000-0649-c49f-8225d911241b@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <8c252429-5000-0649-c49f-8225d911241b@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=hEsBfIvD;       spf=pass
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

On Thu, Mar 11, 2021 at 02:39:03PM +0100, Maximilian Luz wrote:
> On 3/11/21 2:06 PM, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   98546348153dee5f8ced572fd6c4690461d20f51
> > commit: 797e78564634275ed4fe6b3f586c4b96eb1d86bc [1430/3917] platform/surface: aggregator_registry: Add base device hub
> > config: arm64-randconfig-r026-20210311 (attached as .config)
> > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 574a9dabc63ba1e7a04c08d4bde2eacd61b44ce1)
> > reproduce (this is a W=1 build):
> >          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >          chmod +x ~/bin/make.cross
> >          # install arm64 cross compiling tool for clang build
> >          # apt-get install binutils-aarch64-linux-gnu
> >          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=797e78564634275ed4fe6b3f586c4b96eb1d86bc
> >          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >          git fetch --no-tags linux-next master
> >          git checkout 797e78564634275ed4fe6b3f586c4b96eb1d86bc
> >          # save the attached .config to linux build tree
> >          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> >     In file included from drivers/platform/surface/surface_aggregator_registry.c:12:
> >     In file included from include/linux/acpi.h:35:
> >     In file included from include/acpi/acpi_io.h:7:
> >     In file included from arch/arm64/include/asm/acpi.h:12:
> >     include/linux/efi.h:1093:34: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
> >             status = get_var(L"SecureBoot", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size,
> >                                             ^
> >     include/linux/efi.h:1101:24: warning: passing 1-byte aligned argument to 4-byte aligned parameter 2 of 'get_var' may result in an unaligned pointer access [-Walign-mismatch]
> >             get_var(L"SetupMode", &EFI_GLOBAL_VARIABLE_GUID, NULL, &size, &setupmode);
> >                                   ^
> > >> drivers/platform/surface/surface_aggregator_registry.c:398:25: warning: implicit conversion from 'int' to '__u8' (aka 'unsigned char') changes value from 65535 to 255 [-Wconstant-conversion]
> >             { SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
> >             ~                      ^~~~~~~~~~~~
> 
> This is a false positive:
> 
> >     include/linux/surface_aggregator/device.h:71:23: note: expanded from macro 'SSAM_ANY_IID'
> >     #define SSAM_ANY_IID            0xffff
> >                                     ^~~~~~
> 
> Here, clang complains that the input is SSAM_ANY_ID. That is a special
> value which has special considerations below. The SSAM_DEVICE() and
> thus SSAM_VDEV() macros are intended to only allow either __u8 or
> SSAM_ANY_ID as input in this place.
> 
> >     include/linux/surface_aggregator/device.h:126:63: note: expanded from macro 'SSAM_VDEV'
> >             SSAM_DEVICE(SSAM_DOMAIN_VIRTUAL, SSAM_VIRTUAL_TC_##cat, tid, iid, fun)
> >                                                                          ^~~
> >     include/linux/surface_aggregator/device.h:102:41: note: expanded from macro 'SSAM_DEVICE'
> >             .instance = ((iid) != SSAM_ANY_IID) ? (iid) : 0,                        \
> >                                                    ^~~
> 
> Here is the special handling for SSAM_ANY_ID. So there is an implicit
> conversion from iid, which may be __u8, to int (i.e. the type of
> SSAM_ANY_ID), but there is at no point any implicit conversion of
> SSAM_ANY_ID to __u8, as clang alleges.

Looks like we are getting bit by https://llvm.org/pr38789 here (also
tracked at https://github.com/ClangBuiltLinux/linux/issues/92).

> Is there any way to silence this warning in particular without
> suppressing it (e.g. by explicit casting) when users of this macro
> _actually_ input any non-u8 and non-SSAM_ANY_ID value as iid,
> leading to an _actual_ implicit value-changing cast?

This has been worked around once before, commit b27aca2e555f ("soc:
rockchip: work around clang warning"). I am not sure of another way to
silence the warning in specific instances like you described aside from
just fixing clang (which is obviously the correct solution) so that we
will get real warnings.

Unfortunately, the patch that is linked in the LLVM PR above does not
appear to fix this instance.

Cheers,
Nathan

> I believe GCC does get this right and only emits a warning if a
> non-u8 _and_ non-SSAM_ANY_ID value is input.
> 
> Regards,
> Max
> 
> >     3 warnings generated.
> > 
> > 
> > vim +398 drivers/platform/surface/surface_aggregator_registry.c
> > 
> >     396	
> >     397	static const struct ssam_device_id ssam_base_hub_match[] = {
> >   > 398		{ SSAM_VDEV(HUB, 0x02, SSAM_ANY_IID, 0x00) },
> >     399		{ },
> >     400	};
> >     401	
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> > 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210311185154.6uysryumfho73zlb%40archlinux-ax161.
