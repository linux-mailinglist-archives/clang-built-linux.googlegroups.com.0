Return-Path: <clang-built-linux+bncBD52JJ7JXILRBN6EUPUQKGQEQZZFWKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B85B67571
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 21:40:40 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id f22sf11766954ioh.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jul 2019 12:40:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562960439; cv=pass;
        d=google.com; s=arc-20160816;
        b=WrnG5YDmI/g3FrAn9l1c3ElXSk17yFSKqQQ68s5WLdJcnGIK4fJMhtGMSgjigpIylh
         RFx15UXHB+heWhkyMRm1dMaOk5Hsb0SpA+ybWwcxfa779C82oHILBE9PCehyZBjcVNjb
         2J770He3HMHcEMQc3TBstbZt5oARP/tV99mWcWITXJwUvCgzDVQbqRcMCalPnZMdf8bh
         59sHl6dtH7RQDu1H3FHyBSWJxHhC705z6X53Agj29vNO505oNhoI8mkBiZhvciik5Pta
         yeOlgp6DIIJkELnOENq3IHRsC+Nl+l/EQCwJF8B/W3qVEBts/Acv8ZA553iBZJ2qTq/p
         P3aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1AmvS7qHfgVhasTw1BD2yd7f4D2L3guJOVzeKLs0E0k=;
        b=PBHxq8UN2lc9Cc6TWS6ccHc58Nw6l6Mkxc1/r3iApIV2djt4y2vJ/xsXlK2cQv/Ank
         qMDnlxngu9EgdFIcrvNys3zrsSTUyl8qCdaer6aYWXQQxzS4uodFRezdBeB7fTQ486Et
         ad+39CHps2R5pcUPKjgzGah5hh5MCy6Wu8MldJEpwO+X+DLv8D+SG/3TfcfS7iK6vhgl
         Fvx/VliX0ZCMNSScM5V8cTwwn5TVjsT1QJLsKdHRHHZuDdb4CBRT28aoT757RpM6UrxM
         0hu5ktjEIKmMO1aEtUP9bx2s7jvsvbu4cb4JISXdA328LGQboGceJUDJwcJdEuarDlKb
         K9yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X2Z5Iil0;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1AmvS7qHfgVhasTw1BD2yd7f4D2L3guJOVzeKLs0E0k=;
        b=fO/eOUcry6cJJQKWheqd1qjbrmjESsDr7V6i6x9mCLVPw9RCQ0aenfU8qH33xO8nTP
         80xm0thAVkbQ6hrhjP28tp6b2aZfdP88Pa7k57HFJTqqZiXHyYyBdvZ3HwyXKy1tY6wI
         tDhYeQig3i410c9o1WJeeu21eNx3Djd8MWnVW9JTPx5hOTq3ve+N7FOUPn0W2o1bHZNq
         l+VRmtDJHW7rt+8qmXFQEg8JKnvxlzLDcy2JXsnfdDZMl9zifTMyDxauKHX66y1SZmzd
         wDYlz68rkBO4Kb/Z3RCb20V+Apwsgwg5frEz7jZssKhGDkRSsGcuZB/DYNz/s7ED8JzS
         K/Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1AmvS7qHfgVhasTw1BD2yd7f4D2L3guJOVzeKLs0E0k=;
        b=t5YmIb0jNT7giOhQqoyAq7uMaJKqqOPULoxtmKMvoCEPX9scXKACnKz5TE+oXdGx/6
         9T4m14Ly1+Ur6gVvzNtcvDCfCkvRFCPEaeFOAsqIt/6bzdxjpv5CaQToqVYGcqYIkatl
         tKlUp0pfxcJIrTIruGMbjor6fB/kccEYCs1JbYGBhRHbq3jm38sWeNkIRIwyLgmG2IyJ
         hnQVWaKEbVUVyiWGvH3b4XQhadpznUPp5SWFon1snpVLs28qkP6A+yIjLODNemz9mTUH
         TtVqWCaZ4iP3ARHK0KanoPyS3fzK/M/qOJ6DzHPhdCqSFyEqpSfo8ERnDh+AU4BmF7+O
         6TjA==
X-Gm-Message-State: APjAAAUi9NWaYXf3Fk/fA/xa9SH7lBIpLsCPIFVC2xhI3KgFiJfT9kEQ
	z4g5m4aVF/xKa8JcfTV1Y0Y=
X-Google-Smtp-Source: APXvYqzAOJeq2gQxLkbW+hxnjhIifko2zgsPSGqw51s68D1MtC8eFOkPKMHZTibHoNnn4LRpV83lzw==
X-Received: by 2002:a05:6638:5:: with SMTP id z5mr13684246jao.58.1562960439494;
        Fri, 12 Jul 2019 12:40:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:3119:: with SMTP id j25ls3267939ioa.13.gmail; Fri, 12
 Jul 2019 12:40:39 -0700 (PDT)
X-Received: by 2002:a5d:8a10:: with SMTP id w16mr12617888iod.175.1562960439231;
        Fri, 12 Jul 2019 12:40:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562960439; cv=none;
        d=google.com; s=arc-20160816;
        b=mEnqYSyNYT3z90uFhvjvx6vJ2qbSsgEgWvw3aVO/Z4Xay8DSAUuYXdWgm/gNXGwK5w
         xVs5Z/5UzRDwcOPGNT6KHKkmAsRZAZqC/lBlelB5nuQfygjSiMj0pM16qUp19EMsYaDW
         G7Jj6hgVohSK8TomGJmn0/xvaEtstaelMAcOaRVedWBttyoBSZ04fsitrkwIuGCdrvAK
         gA4f1i1L6dMKAIfEJl4iDv/Juc2j7BsGTIQHSz20Gk15xVhTpDjBfARS7q6eND4Y8r62
         AUrAgI6JrpiL5HgkRHyQ5PY/7mmmAyoZng+MWQ02cNPHXS2UuiNoHZsW0Tyk0BlC3t9e
         O4yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eSJHhjnqpxlpjqudgvY+/f+IIowRee5apo91jjc62PU=;
        b=BTxk+Ca7VRc7plHDNcApnf3eitGasZjlh3AJotm9akm2mvoMeBr45+osoQ490CiuQ6
         TZ38PoSOSzNT6z92d/CEapmzk21QoYIjWRZHTNv4HlYIWLOI7RLXiQ4owyG/ClSetmJn
         DWx8KH+m0RB6OGuyqFtovV/NRvjAJu/XOvjuzMn+Q/76AKBOFhDh2NNYq/LQMvRSuP8L
         qn8V7S9IkUaqOmQcn5gAAF7pwIc/WEYrxbkfaA4y1UGBtbsJwV0/T75JzALDkirgPV/S
         40j7WZkPLN1FlKIFhJwd7Z5jY3Ah81sEQCpu+prf+Ouojv2jTrp5dWL5eUKtKAQyn1jU
         b3/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=X2Z5Iil0;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com. [2607:f8b0:4864:20::e43])
        by gmr-mx.google.com with ESMTPS id m3si459085ioc.4.2019.07.12.12.40.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Jul 2019 12:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e43 as permitted sender) client-ip=2607:f8b0:4864:20::e43;
Received: by mail-vs1-xe43.google.com with SMTP id h28so7407102vsl.12
        for <clang-built-linux@googlegroups.com>; Fri, 12 Jul 2019 12:40:39 -0700 (PDT)
X-Received: by 2002:a67:fd88:: with SMTP id k8mr9378882vsq.41.1562960438352;
 Fri, 12 Jul 2019 12:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com> <CAKwvOd=z4CTN9g7noKJxwF8Y4rp6knynxmkX+yEFF6dwCCj3ew@mail.gmail.com>
In-Reply-To: <CAKwvOd=z4CTN9g7noKJxwF8Y4rp6knynxmkX+yEFF6dwCCj3ew@mail.gmail.com>
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 12 Jul 2019 12:40:26 -0700
Message-ID: <CAMn1gO62MDvm3HRQjOvrcb4MkQtyX+HGC8CGe5K30+KiKHwc1w@mail.gmail.com>
Subject: Re: [PATCH] arm64: Add support for relocating the kernel with RELR relocations
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jordan Rupprecht <rupprecht@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=X2Z5Iil0;       spf=pass
 (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::e43 as
 permitted sender) smtp.mailfrom=pcc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Collingbourne <pcc@google.com>
Reply-To: Peter Collingbourne <pcc@google.com>
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

On Wed, Jul 10, 2019 at 4:14 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jul 5, 2019 at 1:03 AM 'Peter Collingbourne' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > RELR is a relocation packing format for relative relocations.
> > The format is described in a generic-abi proposal:
> > https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
> >
> > The LLD linker can be instructed to pack relocations in the RELR
> > format by passing the flag --pack-dyn-relocs=relr.
> >
> > This patch adds a new config option, CONFIG_RELR. Enabling this option
> > instructs the linker to pack vmlinux's relative relocations in the RELR
> > format, and causes the kernel to apply the relocations at startup along
> > with the RELA relocations. RELA relocations still need to be applied
> > because the linker will emit RELA relative relocations if they are
> > unrepresentable in the RELR format (i.e. address not a multiple of 2).
> >
> > Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> > with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> > compressed (lz4).
> >
> > Signed-off-by: Peter Collingbourne <pcc@google.com>
>
> Tested with:
> ToT llvm r365583
> mainline linux commit 5ad18b2e60b7
>
> pre-patch application:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71 defconfig
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71
> $ du -h vmlinux
> 227M vmlinux
> $ du -h arch/arm64/boot/Image
> 25M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.gz
> 9.0M arch/arm64/boot/Image.gz
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 437M total
> $ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
> -cpu cortex-a57 -nographic --append "console=ttyAMA0 root=/dev/ram0"
> -m 2048 -initrd /android1/buildroot/output/images/rootfs.cpio
> ...
> # cat /proc/version
> Linux version 5.2.0-00915-g5ad18b2e60b7
> (ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 9.0.0
> (https://github.com/llvm/llvm-project.git
> b1843e130ad9c4269ece5d08718b33566a41d919)) #66 SMP PREEMPT Tue Jul 9
> 16:50:18 PDT 2019
> (qemu) q
>
> post-patch application:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71 clean
> $ git am /tmp/relr.eml
> Applying: arm64: Add support for relocating the kernel with RELR relocations
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang LD=ld.lld
> NM=llvm-nm OBJCOPY=llvm-objcopy -j71
> ...
> Use RELR relocation packing (RELR) [N/y/?] (NEW) y
> ...
> $ du -h vmlinux
> 224M vmlinux
> $ du -h arch/arm64/boot/Image
> 21M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.gz
> 8.7M arch/arm64/boot/Image.gz
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 424M total
> $ qemu-system-aarch64 -kernel arch/arm64/boot/Image.gz -machine virt
> -cpu cortex-a57 -nographic --append "console=ttyAMA0 root=/dev/ram0"
> -m 2048 -initrd /android1/buildroot/output/images/rootfs.cpio
> ...
> # cat /proc/version
> Linux version 5.2.0-00916-g3798f5948201
> (ndesaulniers@ndesaulniers1.mtv.corp.google.com) (clang version 9.0.0
> (https://github.com/llvm/llvm-project.git
> b1843e130ad9c4269ece5d08718b33566a41d919)) #67 SMP PREEMPT Wed Jul 10
> 09:37:10 PDT 2019
> (qemu) q
>
> So for an arm64 defconfig, looks like roughly 1.32% savings on vmlinux
> size, 16% savings on Image size, 3.33% savings on compressed image
> size (when gzipping), and 2.97% savings in loadable kernel module
> size. (this is off the rounded value from `du -h` which isn't very
> precise).
>
> Moving on to an actual device kernel (we plan on shipping a device
> with an LLD linked kernel soon):
>
> pre-patch application:
> $ du -h vmlinux
> 361M vmlinux
> $ du -h arch/arm64/boot/Image
> 44M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.lz4
> 20M arch/arm64/boot/Image.lz4
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 37M total
>
> post patch application:
> $ du -h vmlinux
> 359M vmlinux
> $ du -h arch/arm64/boot/Image
> 42M arch/arm64/boot/Image
> $ du -h arch/arm64/boot/Image.lz4
> 19M arch/arm64/boot/Image.lz4
> $ find . -name \*.ko | xargs du -ch | tail -n 1
> 37M total
>
> 0.55% savings on vmlinux, 4.5% savings on Image, 5% savings on
> compressed Image w/ LZ4 compression, no or very small savings on
> kernel modules.  For kernel modules, this could be because of my
> rounding with `du -h` or a bug in our kernel version scripts not
> applying these relocations to kernel modules.

Kernel modules are linked separately from the kernel itself, and are
linked as relocatable object files rather than shared objects. The
linker does not support RELR packing for object files, and it's not
really clear whether that's feasible because virtual addresses are not
fixed within object files. So there should be no effect on kernel
modules. (I'm not sure how to explain your observed 2.97% savings
above, then.) If we did switch kernel modules over to being linked as
shared objects, that would allow for RELR relocations in the modules.

> What should I grep for the relocation type in an ELF object to verify
> that RELR relocations exist?
> $ llvm-objdump -r *.ko| grep RELR
> ?

That's expected as mentioned above.

> $ llvm-readelf -S vmlinux } grep relr
> <doesn't show anything>

Assuming that you mean s/}/|/, that's correct. I get:

$ ~/l/ra/bin/llvm-readelf -S vmlinux | grep relr
  [33] .relr.dyn         RELR            ffff0000113ddd98 135dd98
00fb08 08   A  0   0  8

Are you sure that you were looking at the right file?

> I'd have assumed by your patches change to the linker script a section
> called .relr.dyn to be listed.
> Are the tools not interpreting the section name and need to be fixed,
> or is your change to the linker script not necessary?
> Maybe both of those tools need to be updated to know about such a new
> relocation type?
> + Jordan for heads up.
>
> Either way, I've confirmed the claimed 16% reduction in image size for
> the defconfig, and 5% savings in compressed images size w/ LZ4.
>
> Finally, I confirmed that this patch boots on a device.  I had to
> backport https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git/commit/?id=e9e08a07385e08f1a7f85c5d1e345c21c9564963
> for llvm-objcopy support.
>
> Then I ran 30 boot time measurements with 60s wait intervals in
> between test runs:
> prepatch:
> mean: 3049ms
> median: 3281ms
> stddev: 330ms
>
> postpatch:
> mean: 3091ms
> median: 3260ms
> stddev: 290ms
>
> While decompressing the kernel image quickly depends on its size, I
> assume processing these types of relocations and the volume of them
> takes longer?

It depends. On the one hand there will be fewer cache misses coming
from the relocation section, but on the other there will be more
misses coming from the relocated data because we now need to load from
it and it probably won't be as compact as the relocation section. I
would expect the overall effect to be an improvement though due to
less time spent decompressing.

I generally look at the median when taking performance measurements
rather than the mean as this ignores outliers, and your median figures
do seem to show an improvement. In my own boot time measurements I
observed a 100 run median boot time decrease of around 10ms, although
this was on qemu and not real hardware.

> Finally, I boot tested mainline with CONFIG_RANDOMIZE_BASE disabled
> and this patch applied (it worked).
>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks.


Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMn1gO62MDvm3HRQjOvrcb4MkQtyX%2BHGC8CGe5K30%2BKiKHwc1w%40mail.gmail.com.
