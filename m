Return-Path: <clang-built-linux+bncBAABB2PE3T7QKGQEULZUXAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B162ED3F1
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 17:10:21 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id k187sf3823222vka.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 08:10:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610035819; cv=pass;
        d=google.com; s=arc-20160816;
        b=0YdY1jZ/nyuG5pzLf/OafuCtuYPCbjsBhAw84SyebLaZ2BAaiL0VJx+7jld/vWErb7
         e18H8GRaafg2pKdy0s+4lFhwfmDEFds3wcMgFP0cZEoP04QCXPVA/X1GqjGD8Cbf8JVy
         /CVeEpm8oNzkAEzejcQ5hoxLDewDdi0uI0MDyVABmB8Z+Ee2Usp/b+SVxF9n+6QltBP3
         kwQ1/KBUkGRgE6URJaKT8kFeF+Waoho23aGXd1DuQsgy/+K6d5gIBkYTars2H2uUauTR
         BL0m9euqAJGNdyiMJ9P+9WjNOmDOf3ejbrB4JF7rBzXZTo+YyF0pifpNVYUHZWpWfuzT
         Y2Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=2M1Rc8l2IB97S6kUfF4CcysyJK5p9ITVURWSVn6pTgg=;
        b=EAfyyiQ3XR/hmykbtYGsxSLyvVe6d/+IgBBaEb9RLy4tl4QqMnBevI+XdHYicYEzru
         XCaMARtbD6nGAUmn8YJ3qsDiIpuhMExp9SX5lfr8lrpsQ/+glwg97gCqXwf6xOF9ODYP
         v2+Hih7X/Ciw008JTfrOZeYPR03K/O2NngIPkgZg9aydH4gwEXf3XeXK0nrquoAO7UfJ
         zpxVJNbbk8gB73G1s6sSuFMvE7inHuxjrTxG2F8nNs9g9Oxz0t8s8Kj0A5sc5PXOvUYI
         CX/UhBVP91h6PwrM7G2LNmEzPJBYLF809+IL4yho8SJyCBMoAIjye1kR59Guur2AaH71
         3BzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aXgpa2fI;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2M1Rc8l2IB97S6kUfF4CcysyJK5p9ITVURWSVn6pTgg=;
        b=nouD0ggTxqFHveM+PA9FrP2i+WYZqt8ClY8BX2HQvkw+6FO81n0HFxmLURGS24ZJk7
         HDvOEkPJTX2o26A1Bv35tat9VZem1Wv1vJulz0Mn+hZbZmN5C6/FbYa41DkSIJ3rPIiD
         +xjBYURN50nM3MhrfLeAy+nHn/EaglhsqtseD56DLQa2c/Eed+RD3FEIQa3m0lFTqzLp
         g0giUmxEXw+e6ONHi8UWNqHpTzcd+LheJiGecUd89m6eM1vPZGYQROFLqN9okzU2kefq
         OA27VrJApnbJcmf2kxIBZGfq+405SjMp5/MHNZVF/wRfPUHYldFH4yxiKfoW80ok15J7
         z1uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2M1Rc8l2IB97S6kUfF4CcysyJK5p9ITVURWSVn6pTgg=;
        b=eXCF6WNZvnWqjVLWFXjaBe9AZS2TYQ1MUHi1l7z3BcUlVqIB+wEmdllWeCh9YOChSw
         SlwXMQ4owv6tHXVRbUvt+bhxRwTJ7sYV2yKQzOAWGyELpmv2Vz0lIR032UNdxWZQaCOA
         RMXPgBDxHPpKK4CTTPhSMyMy0q6mj/5nZeIuS2Xv8l9U7v+quYbi3MfcyeKnxvJM6xxr
         OvSibwZJ9T9agWIFqxELSudfpQYrqFVyCmhXkbcVj+MAHgvOEjT4mTCBVHaNLaztYM+K
         1f5aSG/rAxkyxUgHFo5wmkEeNkxgWFv+3Mm6CvtRYNgO5vHvPmwPeLAfuRPFPKWZOPAN
         Bv5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oBJc2CmC9lYno1mpFkg/2mo6Lr8rMysm2464iZKhHzdMWAk2K
	X9hVABPVIDz7SQuDAKysd0g=
X-Google-Smtp-Source: ABdhPJxHI9MAT/pOuSNitV9xxUtAZ53nEWIONs9PrvYX9UtYp03gsfx7r7CnbY4qGqcqgEULJJYECA==
X-Received: by 2002:a05:6102:2:: with SMTP id j2mr7672157vsp.47.1610035818030;
        Thu, 07 Jan 2021 08:10:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2645:: with SMTP id m66ls1036124vsm.3.gmail; Thu, 07 Jan
 2021 08:10:17 -0800 (PST)
X-Received: by 2002:a05:6102:108b:: with SMTP id s11mr7605458vsr.5.1610035817518;
        Thu, 07 Jan 2021 08:10:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610035817; cv=none;
        d=google.com; s=arc-20160816;
        b=qTEEDIAvV1+JZBnQ135x5IajU487I4PmYng2pxAmY3KpSmwmqGWqKSc5riorb/SEO2
         EBIY0o9NqOdRb/tD5erRxsh4sRovskcUm4BvSyewaRXsXuMjFjckiIZ1/ac+zNfb9Q2F
         uEe78jt3+qCwJBrPU0FUjrR7y9IIgr7inx/2wCV9jTL2yWybQLCiWMt/7y5dii+cxHye
         wjhAMcesgNNc+mEzuztTCtMttvgwEQWbYXsMptbnnh7bzkdAKMVAh/UxRtm5+70awady
         X9jDIYg2QvKb72SRnBJCD6Wn7yTPOnCZZaq9AOnWLGoW1MhczgMWm0a4vWz7AqelRAwu
         SnXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wPVdGR/lZMIPZtmDFZMD7E+xGtjKXqmBMijrDSqUod4=;
        b=tjPKJJ06w9J/sO17qMhBcgHmH8ISwo2BZr7HEZlCpPvs4W8VKUn3LRL36qqMQu8TPV
         9onSZ3fSFBhVNTzMyq8vsU3rhx5mYJZ0WPjYfmyHf9q3BEbvYV6aNBhXKc1toTj3RBaY
         vLI3dcz2OICLxTSPQdUazauL+h4zrcP9SUuWuvSmcMI/VMJWR8W7+TGOufj67MPZ8pkw
         fHJoBdY0JxNWc4yb5cVhMyv4MmoW9gBPvVHlSo6g6zA7+Z8ZvmqSPKjSeBcf9sbIwD40
         9VrKy9WVLQXUaWMmZYKAAYajFgLi+ZgYP1uoHejuBBX2Y+k2+tz572NhlvpARsfBZoqY
         +ulw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=aXgpa2fI;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r207si508662vkf.2.2021.01.07.08.10.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Jan 2021 08:10:17 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5486F23435
	for <clang-built-linux@googlegroups.com>; Thu,  7 Jan 2021 16:10:16 +0000 (UTC)
Received: by mail-ot1-f53.google.com with SMTP id i6so6761481otr.2
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 08:10:16 -0800 (PST)
X-Received: by 2002:a9d:7a4b:: with SMTP id z11mr7058883otm.305.1610035815622;
 Thu, 07 Jan 2021 08:10:15 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <202101061350.913E1FDF6@keescook>
 <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
In-Reply-To: <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 7 Jan 2021 17:09:59 +0100
X-Gmail-Original-Message-ID: <CAK8P3a220+yeN8_PjS-jzA85m7QPbqn0oxEqjCzVR9S7p4LaZg@mail.gmail.com>
Message-ID: <CAK8P3a220+yeN8_PjS-jzA85m7QPbqn0oxEqjCzVR9S7p4LaZg@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Marco Elver <elver@google.com>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=aXgpa2fI;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Wed, Jan 6, 2021 at 11:12 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Wed, Jan 6, 2021 at 10:57 PM Kees Cook <keescook@chromium.org> wrote:
> > On Wed, Dec 30, 2020 at 04:47:35PM +0100, Arnd Bergmann wrote:
> > > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > > index 8b635fd75fe4..e23873282ba7 100644
> > > --- a/lib/Kconfig.ubsan
> > > +++ b/lib/Kconfig.ubsan
> > > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> > >
> > >  config UBSAN_UNSIGNED_OVERFLOW
> > >       bool "Perform checking for unsigned arithmetic overflow"
> > > +     # clang hugely expands stack usage with -fsanitize=object-size
> > > +     depends on !CC_IS_CLANG
> > >       depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> >
> > Because of Clang implementation issues (see commit c637693b20da), this is
> > already "default n" (and not supported under GCC at all). IIUC, setting
> > this to "depends on !COMPILE_TEST" won't work for randconfigs, yes?
>
> Ah, I had not realized this is clang specific. Adding the !COMPILE_TEST
> dependency would hide it for me, which may be good enough for me.
>
> > Is there some better way to mark this as "known to have issues, please
> > don't include in randconfig?"
> >
> > I'd like to keep it around so people can continue to work out the
> > problems with it, but not have unexpecting folks trip over it. ;)
>
> I've reverted that patch locally now and default-enabled for randconfigs.
> Now that I have an otherwise clean build, this should provide me
> with a full set of files that produce the warning. If the number is
> small enough, I could try opening individual github issues.

A day's worth of randconfig builds with clang-11 or clang-12 shows these
instances that exceeded the warning limit:

crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes
in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes
in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180
bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588
bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
fs/btrfs/scrub.c:3028:31: error: stack frame size of 1132 bytes in
function 'scrub_stripe' [-Werror,-Wframe-larger-than=]
drivers/net/ethernet/intel/e1000/e1000_main.c:3590:6: warning: stack
frame size of 1100 bytes in function 'e1000_update_stats'
[-Wframe-larger-than=]
drivers/net/ethernet/broadcom/tg3.c:11829:13: warning: stack frame
size of 1188 bytes in function 'tg3_get_estats' [-Wframe-larger-than=]
drivers/net/ethernet/intel/igb/igb_main.c:6551:6: warning: stack frame
size of 1348 bytes in function 'igb_update_stats'
[-Wframe-larger-than=]
drivers/net/ethernet/intel/igc/igc_main.c:3608:6: warning: stack frame
size of 1124 bytes in function 'igc_update_stats'
[-Wframe-larger-than=]
drivers/net/ethernet/qlogic/qed/qed_l2.c:1759:1: warning: stack frame
size of 1300 bytes in function '__qed_get_vport_port_stats'
[-Wframe-larger-than=]
drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7022:6: warning: stack
frame size of 1564 bytes in function 'ixgbe_update_stats'
[-Wframe-larger-than=]
drivers/net/ethernet/intel/ixgb/ixgb_main.c:1590:1: warning: stack
frame size of 1140 bytes in function 'ixgb_update_stats'
[-Wframe-larger-than=]
drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:145:6: warning:
stack frame size of 1068 bytes in function 'mlx5i_get_stats'
[-Wframe-larger-than=]
drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: stack
frame size of 1052 bytes in function 'atomisp_set_fmt'
[-Wframe-larger-than=]

All of these *only* happen on 32-bit x86, and can be reproduced in a
i386_defconfig, with the corresponding drivers (btrfs, sha512, blake2b,
curve25519, and the ethernet ones) and UBSAN_UNSIGNED_OVERFLOW
manually enabled. Given that few people still care about i386, maybe
we could just make the option depend on !CONFIG_X86_32

That config also runs into two more BUILD_BUG_ON() that I had not
seen in randconfig tests:

(i386 defconfig plus ubsan)
ld.lld: error: undefined symbol: __compiletime_assert_207
>>> referenced by cpu_entry_area.c
>>>               mm/cpu_entry_area.o:(setup_cpu_entry_area_ptes) in archive arch/x86/built-in.a

(x86-64 defconfig plus ubsan)
ld.lld: error: undefined symbol: __compiletime_assert_362
>>> referenced by efi_64.c
>>>               platform/efi/efi_64.o:(efi_sync_low_kernel_mappings) in archive arch/x86/built-in.a

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a220%2ByeN8_PjS-jzA85m7QPbqn0oxEqjCzVR9S7p4LaZg%40mail.gmail.com.
