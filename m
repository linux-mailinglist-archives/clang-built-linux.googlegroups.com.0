Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV473X7QKGQE4FT7HFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6E32ED67A
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 19:15:52 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id m9sf4490949plt.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 10:15:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610043351; cv=pass;
        d=google.com; s=arc-20160816;
        b=lHec5LU8FQqelv0n1h6qCzrm3SOG6cZe3CEgR8BabZxQ1V8lNPY5PKy2dLovh9JNU4
         jNWoQKLhGKOB/zlqcyWiAe37mV952imHem5y57h96IEAS7HadWBt7wSjFAVCJuJmgLBl
         /v0/bXJCsmCOju9ahRH6fyjafqjGkPCPigdgYF/VGvK4A6zaHPxGd31n+TOTSJqBYZAJ
         6r7Dge0lEsaCkzM0Svq66L6/NDgh0U7VKPeuSelwbamFdzdnlQtVtY6EA6UEueZGr5vp
         MwK/6H0SDHcC/xAL3lucPvICcXHYtYz5hRq931jGhU93dX4+BPKOnRNLvDkkgvehg5hj
         ve4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=oiu4r9/lqrA9arTg3NQJz4vldqt176MCPTdH56GNkuA=;
        b=UzBI5/f4oov3YgWsxGx8872J7hL7TEUirLxIic6OmRe2LUfbVmMFucB5YE2iuVHmEH
         MIqXIcBb69fsY63P+P2vArM14Lq+UhazKrikDil5/RpgYUb5JBz9BPiSrj8SncTSLe+t
         ck5ytax3w5/gXm3jfZcpnuO8JcLqdcqqbR8tabt3jyJ8pC8PDWGQmm8XfTdsw10YBtMS
         mnAGBpgS3QVD8IbR7e4vWUoq+P7dwhBCQZX4VWCrsh9efCCd9uraoHIJWjyhkyGsMOuC
         lrwTD59pWvUXUM4KFwXvethoumErAH1NQkVrvlsrt4GOd0d9L2GLMmLxL7cqAAw93Ul1
         DR6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b2Rmr3j/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oiu4r9/lqrA9arTg3NQJz4vldqt176MCPTdH56GNkuA=;
        b=WKDvgohu7PCMTy1IY/ksQQS2PZFFZbkWHD+aFTfdiZsDC6xAHAdDoPkGLDxT+Xnzoa
         tSOxyT+tv6hWg6cW+ug+911XlT7QM/z2Ee9utBVFQcYPciaiB474wNxKzBr7ylsCFktA
         tW3QX1rL/ncFD6oT0BAe4py6+0e+LqRPnmS6DrcZTsM8siGFh0HIHqn9dorRGcuU8ddN
         RYk+iX9XP2BPHs6D2t914qj4VdGBH1hJ8WVvS/6WN3Ace0CYgSCZZpTrXXtiwGV4D97I
         97vbOoT1d1QYlxe2UsTQluH8qHVJsp+Z/Cj3CsjVIoVAskY1Fx+B8j3JUIiEB/qfwaFV
         hT7A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oiu4r9/lqrA9arTg3NQJz4vldqt176MCPTdH56GNkuA=;
        b=jlqhRQazkLHnzZLXUySLrK0G8cEmzGUFn5OOnAcWPUn5fGWHNA/fUpJax7mBxnb/FI
         01sdWzljO0fKaT3otpYEqXXzLlckEbLrUKAxegwsNvVkh7vOS8d1FTkSp4i1tomrlnK8
         dhblOB3Ivok2hOdQBmWRDKa39NKng9xkmnNpvaFtOk+gzl6IEQgNTFq9/02BXgnDy/G8
         z4UHJfCn9Wl6sAwcuZ4JwpW2pfjzlbPAkXAjafv7a0Q4gjYg92vI/29KzbX4+L6oCTtD
         IfAOiE8n3YzwkpBgtU6nEFL6BOP8mYXpkQuXpAdccSJ4Z2VidnwWHKeOgEcaWO0QhuUt
         e+vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oiu4r9/lqrA9arTg3NQJz4vldqt176MCPTdH56GNkuA=;
        b=rOOSQ9bHo2yy09V6rnvq/kRyOqcQFU/eXqAhOX8MO46+C70e18zdXNfjUStJRNw3bp
         9Mqy1wAkvIh4P1UXztf3hl300d46pWcNf0RVLgutQ+WO/cKoWRlkkVaJS+wY08HRserV
         OThTqQXdkrOZslvQMgsMSjCLpIcGzeBov+AkmK6jN9Qlj9l40/an7zzwOuritiv6aqek
         r9CI5Dx5/d4XdktNdPka4GsCO8uLpoc3OK7/APNqaGdcHGbZaRPEdmLoyLAUVx14j3NB
         ygoccSt3e71VxyqCsz7Wv1j4+iffWCnHjfeUyEuAcIuShM7aK1Oyga08ZXIVNsMIuxbP
         7tMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ou0bQoocgCfsKmLd/4Wzkofd8utJQNZV+p2bzBzjHnoQNA9cs
	cKErHM8ILyW23LeFuloRNF8=
X-Google-Smtp-Source: ABdhPJxZc3Irixx1PxiYDTki4CU8sWwWauyKlIx76yKjnpDuo+5my83kZl+xTzGzZA6OvqTwiwyTAA==
X-Received: by 2002:a17:902:860a:b029:da:e83a:7f1f with SMTP id f10-20020a170902860ab02900dae83a7f1fmr84266plo.60.1610043351548;
        Thu, 07 Jan 2021 10:15:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:78d4:: with SMTP id t203ls2838923pfc.6.gmail; Thu, 07
 Jan 2021 10:15:51 -0800 (PST)
X-Received: by 2002:a63:286:: with SMTP id 128mr3069127pgc.246.1610043350901;
        Thu, 07 Jan 2021 10:15:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610043350; cv=none;
        d=google.com; s=arc-20160816;
        b=SI44P+19krEpdxx1nQ6GkM7pQstQfUYRZ9KM+nc7CoAMj7X0vR0N8uvTFmdynu/v8H
         f+qDfpI4Lh05dpBTcwUjV8DUFaFAgtjmvyPQfI0gZxO4HxOXpqWZmhXHMd0LwxBpBkeU
         pjolxq3A8zOcrfYNm0AF0mROGUbm9pBDxH1V/8fbXScUX+6qmgTQr/ZSILJNHDRYzX4Z
         bkQ5rgkqfVq+e0coqdxTdzuhZV8zxVdLaWNXY/arNfpr3p5zvlwyTUu1Kin1GzrLQtVA
         wHK+/KaTnwYwIjJhUu+earACX7l2SbhwOW3n/lxTdF8Niq6rnEKEaLZrCDe71ZQGHBGO
         XjNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zCUTQdUYpO0tY47nQGR+de13NblMR1isFgT9hPZoZsI=;
        b=zKyZ4rx5GhPjVTRYYnhBsGk36jpWXYTHQEGp1TWZcAsv4EelkgMv4mmJHGKqkWosfa
         BTrRgqqp492Gn4T1bZHMZD1RNhQ/QmZa74vkWWHU4zMBIBNMukUV6RVzthFxtuNoOAsv
         6LMSH4qtIjFojKrNqOf4Ssy0kCsKFu8/tPzIKKSXXGm3NeVYLj4bi1SI1tvK3y7KP+3v
         RoUYBDwPUi+s2cyG+MYZxYgcVZXG7jpJeCZr6njFVpSuNbRbOjg1VqjdOAAr9EKnuH/F
         cb2FzbgdAW8Wapr5J9P0oXGCGy5oE5tifWRgkvV0GtezO2dVWIqsXeY1556vKP5EZRWZ
         enfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="b2Rmr3j/";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id o14si369154pjt.0.2021.01.07.10.15.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 10:15:50 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Received: by mail-qk1-x72a.google.com with SMTP id c7so6302062qke.1
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 10:15:50 -0800 (PST)
X-Received: by 2002:ae9:e909:: with SMTP id x9mr144197qkf.166.1610043350345;
        Thu, 07 Jan 2021 10:15:50 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id q20sm3513268qkj.49.2021.01.07.10.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 10:15:49 -0800 (PST)
Date: Thu, 7 Jan 2021 11:15:47 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Marco Elver <elver@google.com>,
	George Popescu <georgepope@android.com>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with
 clang
Message-ID: <20210107181547.GA436377@ubuntu-m3-large-x86>
References: <20201230154749.746641-1-arnd@kernel.org>
 <202101061350.913E1FDF6@keescook>
 <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com>
 <CAK8P3a220+yeN8_PjS-jzA85m7QPbqn0oxEqjCzVR9S7p4LaZg@mail.gmail.com>
 <202101070919.2E20432140@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101070919.2E20432140@keescook>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="b2Rmr3j/";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 07, 2021 at 09:22:00AM -0800, Kees Cook wrote:
> On Thu, Jan 07, 2021 at 05:09:59PM +0100, Arnd Bergmann wrote:
> > On Wed, Jan 6, 2021 at 11:12 PM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > On Wed, Jan 6, 2021 at 10:57 PM Kees Cook <keescook@chromium.org> wrote:
> > > > On Wed, Dec 30, 2020 at 04:47:35PM +0100, Arnd Bergmann wrote:
> > > > > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > > > > index 8b635fd75fe4..e23873282ba7 100644
> > > > > --- a/lib/Kconfig.ubsan
> > > > > +++ b/lib/Kconfig.ubsan
> > > > > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> > > > >
> > > > >  config UBSAN_UNSIGNED_OVERFLOW
> > > > >       bool "Perform checking for unsigned arithmetic overflow"
> > > > > +     # clang hugely expands stack usage with -fsanitize=object-size
> > > > > +     depends on !CC_IS_CLANG
> > > > >       depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> > > >
> > > > Because of Clang implementation issues (see commit c637693b20da), this is
> > > > already "default n" (and not supported under GCC at all). IIUC, setting
> > > > this to "depends on !COMPILE_TEST" won't work for randconfigs, yes?
> > >
> > > Ah, I had not realized this is clang specific. Adding the !COMPILE_TEST
> > > dependency would hide it for me, which may be good enough for me.
> > >
> > > > Is there some better way to mark this as "known to have issues, please
> > > > don't include in randconfig?"
> > > >
> > > > I'd like to keep it around so people can continue to work out the
> > > > problems with it, but not have unexpecting folks trip over it. ;)
> > >
> > > I've reverted that patch locally now and default-enabled for randconfigs.
> > > Now that I have an otherwise clean build, this should provide me
> > > with a full set of files that produce the warning. If the number is
> > > small enough, I could try opening individual github issues.
> > 
> > A day's worth of randconfig builds with clang-11 or clang-12 shows these
> > instances that exceeded the warning limit:
> > 
> > crypto/blake2b_generic.c:98:13: error: stack frame size of 9636 bytes
> > in function 'blake2b_compress' [-Werror,-Wframe-larger-than=]
> > crypto/sha512_generic.c:151:13: error: stack frame size of 1292 bytes
> > in function 'sha512_generic_block_fn' [-Werror,-Wframe-larger-than=]
> > lib/crypto/curve25519-fiat32.c:312:22: error: stack frame size of 2180
> > bytes in function 'fe_mul_impl' [-Werror,-Wframe-larger-than=]
> > lib/crypto/curve25519-fiat32.c:444:22: error: stack frame size of 1588
> > bytes in function 'fe_sqr_impl' [-Werror,-Wframe-larger-than=]
> > fs/btrfs/scrub.c:3028:31: error: stack frame size of 1132 bytes in
> > function 'scrub_stripe' [-Werror,-Wframe-larger-than=]
> > drivers/net/ethernet/intel/e1000/e1000_main.c:3590:6: warning: stack
> > frame size of 1100 bytes in function 'e1000_update_stats'
> > [-Wframe-larger-than=]
> > drivers/net/ethernet/broadcom/tg3.c:11829:13: warning: stack frame
> > size of 1188 bytes in function 'tg3_get_estats' [-Wframe-larger-than=]
> > drivers/net/ethernet/intel/igb/igb_main.c:6551:6: warning: stack frame
> > size of 1348 bytes in function 'igb_update_stats'
> > [-Wframe-larger-than=]
> > drivers/net/ethernet/intel/igc/igc_main.c:3608:6: warning: stack frame
> > size of 1124 bytes in function 'igc_update_stats'
> > [-Wframe-larger-than=]
> > drivers/net/ethernet/qlogic/qed/qed_l2.c:1759:1: warning: stack frame
> > size of 1300 bytes in function '__qed_get_vport_port_stats'
> > [-Wframe-larger-than=]
> > drivers/net/ethernet/intel/ixgbe/ixgbe_main.c:7022:6: warning: stack
> > frame size of 1564 bytes in function 'ixgbe_update_stats'
> > [-Wframe-larger-than=]
> > drivers/net/ethernet/intel/ixgb/ixgb_main.c:1590:1: warning: stack
> > frame size of 1140 bytes in function 'ixgb_update_stats'
> > [-Wframe-larger-than=]
> > drivers/net/ethernet/mellanox/mlx5/core/ipoib/ipoib.c:145:6: warning:
> > stack frame size of 1068 bytes in function 'mlx5i_get_stats'
> > [-Wframe-larger-than=]
> > drivers/staging/media/atomisp/pci/atomisp_cmd.c:5600:5: warning: stack
> > frame size of 1052 bytes in function 'atomisp_set_fmt'
> > [-Wframe-larger-than=]
> > 
> > All of these *only* happen on 32-bit x86, and can be reproduced in a
> > i386_defconfig, with the corresponding drivers (btrfs, sha512, blake2b,
> > curve25519, and the ethernet ones) and UBSAN_UNSIGNED_OVERFLOW
> > manually enabled. Given that few people still care about i386, maybe
> > we could just make the option depend on !CONFIG_X86_32
> 
> I'm fine with that -- or maybe any 32-bit architecture, if the problem
> is poor stack space optimization on 32-bit archs?
> 
> > 
> > That config also runs into two more BUILD_BUG_ON() that I had not
> > seen in randconfig tests:
> > 
> > (i386 defconfig plus ubsan)
> > ld.lld: error: undefined symbol: __compiletime_assert_207
> > >>> referenced by cpu_entry_area.c
> > >>>               mm/cpu_entry_area.o:(setup_cpu_entry_area_ptes) in archive arch/x86/built-in.a
> 
> That one I don't think I've seen before.
> 
> > 
> > (x86-64 defconfig plus ubsan)
> > ld.lld: error: undefined symbol: __compiletime_assert_362
> > >>> referenced by efi_64.c
> > >>>               platform/efi/efi_64.o:(efi_sync_low_kernel_mappings) in archive arch/x86/built-in.a
> 
> I think this is:
> https://github.com/ClangBuiltLinux/linux/issues/256
> and that bug needs re-opening? Or maybe there's a new bug I can't find?

The problem is that applying the fix for that issue does not work, nor
does converting p4d_index to a macro like mips and s390. I am not sure
what exactly is going on there, it appears that clang cannot reason
about ptrs_per_p4d because it is an extern variable with no assigned
value in its translation unit?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210107181547.GA436377%40ubuntu-m3-large-x86.
