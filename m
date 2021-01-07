Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBOUG3X7QKGQEKXBN7TQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F014E2ED566
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 18:22:03 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id n24sf3926637vkm.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 09:22:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610040123; cv=pass;
        d=google.com; s=arc-20160816;
        b=BeVt9arc1Guy9FCaSwr7rSvIfT0BRM52HU//8FjL7OC8GRwP/h2p2kuSoSFAH5Z2W+
         Dm0ainanblMImFgTmntB8m5+O6cBgKpK9DZJkw9oggKrOHBS412Eeo4t4GWt0Uewl8Rk
         NYT0opMZOF66ZsDxpAEk5LEeNAFNH/iDkCJezRia+YaAzoLZfiecFoqo+zTZEqAZ72mw
         RjCNW+IrjUUl++sh2oTvq3VPMUKagNfkBFLglGB/w8kCuOviikFhvdx4rojiAOQYYEhs
         uMy6E/wtDJMC91gdncKOkEDk9sjgzQ5Ns0JZY810I9SkC9ZqJQfel9OhTSyyY2N8NRvT
         uKpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kj+2kaYNBxlvqJsD2H8NfIopYMEPspQAQYrCGs6CSwo=;
        b=xgVMBiwFz8BK7mZ5L16q2+4Zsz/lbXgyRnJaKdlHL/fZDutFvgIbNMWIE8xubHWKwX
         8L7IdHFHm5iNdoF/PK+Eqq4O93PrOr/oicUaSt6tmOtEjNl7N+up4a9mWXvrXVkEOMQF
         3+VMgYZw/HJkypajKfGx+sZVnpEXYvrUxPzSku/Woa5DZuLYRW0qPWmqDtixIZ+C+Q6H
         hxrOSdqOwjNptYmuSU8yj19eaZe786kIeejenFRkKyWu3NbzhwOl+MJMmF/lxlNEIOYh
         WbUIwYcGuR2l65XTpFSNjow5XZOojI4SR/6oQZirOCB7wfnW4XT7l8Rh/LxnpHvYBpF4
         veHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=C3StsWUe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kj+2kaYNBxlvqJsD2H8NfIopYMEPspQAQYrCGs6CSwo=;
        b=jQlfqEW5VMMlYOI44YuztO7o8DMMEbvyjgVUu14broGQs8UCIo4pkJFuNvsC8q4fKg
         c9MrMQtDLlii/e/NwFYSDiEEBlusRaA4/4ZTd65/F+lbwZyaiYHFrOmvKbYLcms3+Hy/
         +nkIb5U8bq5DsTf4tFJ8TjlqPtEgIcq3oIdUsQw9dt2pDqPAzpy7EfMIH7Bqnx4eSGuw
         BVJI6V9s/ov3RShq7Rq511Vo6nHr0mzS4lD9EMXJWc/5JYQ30Kw9rIjqSZhhsou6u12E
         Q++Zb5FnaUtW32MhYi2EpDMGpEA6RkXbp00zjMy+2WLj7fTSWFPG6Ciz46pDUUvrRVai
         uSWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kj+2kaYNBxlvqJsD2H8NfIopYMEPspQAQYrCGs6CSwo=;
        b=bmYqkAh+NTZFIjWcvAcK7PTUP+Pjw6CmKF/lu5lzvVF66ohWcJqtbpVOM/55/5T6rW
         Ao5sXv4vxuw3+NQXso5nUk2sgw9WMSk9d+HMZELUQrigROrzdZCghKWQFK+U8I33/hhR
         BvW2sqoMkwvjvpgqOUg+A4eia6qURnBXRL2l/s/nJ7Omv0VlMA9s162blXgZxJaBars2
         PpznYsOjULYvpQBqFXcw2mIjZkHAZQnGl+hSgyC3LyL1x8x695KQkhGnlvDBTSk187Y9
         sZoYPNntiyyMk8It/3xsF0kLwqL6Ba22geedKS1nDXlHUjOQZz+Ekr2Hr4wjAPJwUSHd
         +1Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530MmqxaMg43FFjKNeK+m/XQEnOYeQltXIOXq5b6doizHpEzv9HD
	m6widRZAMEfuhE1CpPnmgrA=
X-Google-Smtp-Source: ABdhPJwfNJgbCj1IC7vZEOMnvTXowjmIdohVf9gHVoD/rtGe/v5WZgIa1deM/gKwRLooOijHftEcnA==
X-Received: by 2002:ab0:7296:: with SMTP id w22mr8713014uao.13.1610040122892;
        Thu, 07 Jan 2021 09:22:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:918f:: with SMTP id t137ls457763vkd.10.gmail; Thu, 07
 Jan 2021 09:22:02 -0800 (PST)
X-Received: by 2002:ac5:c5b5:: with SMTP id f21mr8728748vkl.13.1610040122509;
        Thu, 07 Jan 2021 09:22:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610040122; cv=none;
        d=google.com; s=arc-20160816;
        b=Fz7Aq5rC9IDrkr5kAh0uVP7Fd2t9UeX86q3nXEvWnkDOaciypr2mklbPlIeeWouI8I
         zvZXjZzJyc9RYQOeWPxwPSLJY1Iww8ZkLCXmT8efJQn8duV911iFLKo6u4f4KVhqEa8f
         BqgQGoWXVmuHRhIzHVJEbiLo6hnsBEuifvERpc6DBsooCR2dz3F4QfqfJ2sUCZIpoRpF
         dq/IowcLFteVJjuWgV38R0uoAvOryz52mwjxGHrIs8vMDliai/KIFY2xvtgiBFz3IflU
         CkS4840nK/n1/MwiY/XvWksbqx3nhU5Sjn5+/n8Y+luKxCwROT+2QoRAE3ZPwJNbpF6W
         BK7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1sXzvs3mOYm88CqZyrkyfbEZtdG04fG5cAHRm8cuwGE=;
        b=hKJWfBQSz5gPi+vM3ke2Hm0FeMGR24WKk8GPP0J2V5dX/CGX4wbBITkDnmiczv9ULn
         T5QVNDCSt2GlOwmaNUahO8yzZ9sWSrUk2vSmSN85AlxUWT1A1imGOkOVPtdn5QyDptwd
         8qs1nCuXH5SAXuN731+jD4KkTp53fLbBaeQ3imxqjykMFj62Gq9zYVz2/bl5VuA4J3M/
         HQiV92oJlLOJqxCEe5LqwVZc85qv8yy+gsC3JejEg12DxejJsI3iIiPjsNQcx6ux5JEm
         f0Jmo70pBkA5qN6U3IAuDgh88eS1F8NTsnDQXyFr0XLAE3FbIsNL2JfL0e6nk6NUfQq+
         n00Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=C3StsWUe;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id r207si529689vkf.2.2021.01.07.09.22.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 09:22:02 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id 15so5386792pgx.7
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 09:22:02 -0800 (PST)
X-Received: by 2002:a05:6a00:15ca:b029:19d:9ba1:b910 with SMTP id o10-20020a056a0015cab029019d9ba1b910mr3033547pfu.57.1610040121663;
        Thu, 07 Jan 2021 09:22:01 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v15sm6276240pfn.217.2021.01.07.09.22.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 09:22:00 -0800 (PST)
Date: Thu, 7 Jan 2021 09:22:00 -0800
From: Kees Cook <keescook@chromium.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-ID: <202101070919.2E20432140@keescook>
References: <20201230154749.746641-1-arnd@kernel.org>
 <202101061350.913E1FDF6@keescook>
 <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
 <CAK8P3a220+yeN8_PjS-jzA85m7QPbqn0oxEqjCzVR9S7p4LaZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a220+yeN8_PjS-jzA85m7QPbqn0oxEqjCzVR9S7p4LaZg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=C3StsWUe;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52a
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jan 07, 2021 at 05:09:59PM +0100, Arnd Bergmann wrote:
> On Wed, Jan 6, 2021 at 11:12 PM Arnd Bergmann <arnd@kernel.org> wrote:
> >
> > On Wed, Jan 6, 2021 at 10:57 PM Kees Cook <keescook@chromium.org> wrote:
> > > On Wed, Dec 30, 2020 at 04:47:35PM +0100, Arnd Bergmann wrote:
> > > > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > > > index 8b635fd75fe4..e23873282ba7 100644
> > > > --- a/lib/Kconfig.ubsan
> > > > +++ b/lib/Kconfig.ubsan
> > > > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> > > >
> > > >  config UBSAN_UNSIGNED_OVERFLOW
> > > >       bool "Perform checking for unsigned arithmetic overflow"
> > > > +     # clang hugely expands stack usage with -fsanitize=object-size
> > > > +     depends on !CC_IS_CLANG
> > > >       depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> > >
> > > Because of Clang implementation issues (see commit c637693b20da), this is
> > > already "default n" (and not supported under GCC at all). IIUC, setting
> > > this to "depends on !COMPILE_TEST" won't work for randconfigs, yes?
> >
> > Ah, I had not realized this is clang specific. Adding the !COMPILE_TEST
> > dependency would hide it for me, which may be good enough for me.
> >
> > > Is there some better way to mark this as "known to have issues, please
> > > don't include in randconfig?"
> > >
> > > I'd like to keep it around so people can continue to work out the
> > > problems with it, but not have unexpecting folks trip over it. ;)
> >
> > I've reverted that patch locally now and default-enabled for randconfigs.
> > Now that I have an otherwise clean build, this should provide me
> > with a full set of files that produce the warning. If the number is
> > small enough, I could try opening individual github issues.
> 
> A day's worth of randconfig builds with clang-11 or clang-12 shows these
> instances that exceeded the warning limit:
> 
> crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes
> in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes
> in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180
> bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588
> bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> fs/btrfs/scrub.c:3028:31: error: stack frame size of 1132 bytes in
> function 'scrub_stripe' [-Werror,-Wframe-larger-than=]
> drivers/net/ethernet/intel/e1000/e1000_main.c:3590:6: warning: stack
> frame size of 1100 bytes in function 'e1000_update_stats'
> [-Wframe-larger-than=]
> drivers/net/ethernet/broadcom/tg3.c:11829:13: warning: stack frame
> size of 1188 bytes in function 'tg3_get_estats' [-Wframe-larger-than=]
> drivers/net/ethernet/intel/igb/igb_main.c:6551:6: warning: stack frame
> size of 1348 bytes in function 'igb_update_stats'
> [-Wframe-larger-than=]
> drivers/net/ethernet/intel/igc/igc_main.c:3608:6: warning: stack frame
> size of 1124 bytes in function 'igc_update_stats'
> [-Wframe-larger-than=]
> drivers/net/ethernet/qlogic/qed/qed_l2.c:1759:1: warning: stack frame
> size of 1300 bytes in function '__qed_get_vport_port_stats'
> [-Wframe-larger-than=]
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7022:6: warning: stack
> frame size of 1564 bytes in function 'ixgbe_update_stats'
> [-Wframe-larger-than=]
> drivers/net/ethernet/intel/ixgb/ixgb_main.c:1590:1: warning: stack
> frame size of 1140 bytes in function 'ixgb_update_stats'
> [-Wframe-larger-than=]
> drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:145:6: warning:
> stack frame size of 1068 bytes in function 'mlx5i_get_stats'
> [-Wframe-larger-than=]
> drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: stack
> frame size of 1052 bytes in function 'atomisp_set_fmt'
> [-Wframe-larger-than=]
> 
> All of these *only* happen on 32-bit x86, and can be reproduced in a
> i386_defconfig, with the corresponding drivers (btrfs, sha512, blake2b,
> curve25519, and the ethernet ones) and UBSAN_UNSIGNED_OVERFLOW
> manually enabled. Given that few people still care about i386, maybe
> we could just make the option depend on !CONFIG_X86_32

I'm fine with that -- or maybe any 32-bit architecture, if the problem
is poor stack space optimization on 32-bit archs?

> 
> That config also runs into two more BUILD_BUG_ON() that I had not
> seen in randconfig tests:
> 
> (i386 defconfig plus ubsan)
> ld.lld: error: undefined symbol: __compiletime_assert_207
> >>> referenced by cpu_entry_area.c
> >>>               mm/cpu_entry_area.o:(setup_cpu_entry_area_ptes) in archive arch/x86/built-in.a

That one I don't think I've seen before.

> 
> (x86-64 defconfig plus ubsan)
> ld.lld: error: undefined symbol: __compiletime_assert_362
> >>> referenced by efi_64.c
> >>>               platform/efi/efi_64.o:(efi_sync_low_kernel_mappings) in archive arch/x86/built-in.a

I think this is:
https://github.com/ClangBuiltLinux/linux/issues/256
and that bug needs re-opening? Or maybe there's a new bug I can't find?

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101070919.2E20432140%40keescook.
