Return-Path: <clang-built-linux+bncBCS7XUWOUULBB35E374AKGQEI4CL7II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E352229003
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 07:45:20 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id i9sf1230535ybg.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 22:45:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595396719; cv=pass;
        d=google.com; s=arc-20160816;
        b=QVrzc1izOEhbaRWSDCMU3Avp0Z9YQpWFfV+RrWOIHWf1Vjk+zUN8JlVe6XkacpPCXN
         DRqcy8JJ/qyIOI8jVJlpsU6BZGAHdT31qHJYSZotwu2N0zwwNcufAxJW1cQjSjVqx+lP
         0D/dJvHROhv0Ab/Fv0/7uFTj0GSgRSJbi1nnPs60rjasY9mbRNiAsNIkgf2wmUklJ/Hv
         ySA9WpKf3yXGgDzLj1hKJnbIfgm+1cgqX+hsViII60SisrkSvcq/ulJCsVHtbK1VkRYB
         0nkl1zGmMGEvdbXoQO4/ZiA4t48MErcTnNMOfZ/vvptm0cmWIQ3bMTYREOF2HIVZcOTc
         LF1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iOrmBybdVZviO/DJqKl8QE2jysjFIziohnLo5WWZcM8=;
        b=CruNkReZhW32rffk6scvj5cBOJBch59c5I3Gm1Izr0QCqEymx2mL7RJx3IZxiT5MOt
         wac1PMS3IlMJ0yyebWI611RpJTLfz9XZ+99Huka94ZYKgPXpwQwbasg32cFJfLFlEwIi
         1DSDis56ZjIxM1IEq04X+T4blVIpYBfwBLtGe+/HCVKM/uZAhlRIWSmCY4UBRfn+2eOU
         1iUmASbdaSfcwuYYmPgcYNXCEGd8d31lyrHjWaKUKd86Y19jQWBDfbzF4S5fpU8OXdHY
         tN1NWc4NMPYBkFbSLcLp2gjaP+4xrCpfiOvXkQhyTbXWf5QJ2NOReXLAE+DuIQJWIoi6
         EHrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EGqj1zBx;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iOrmBybdVZviO/DJqKl8QE2jysjFIziohnLo5WWZcM8=;
        b=kHHKmYyegoxhzIoN++bPUVGRepSkLWxkHXI5joKN/YGv+R91K/K3NmOQHUrSITRf7g
         o3G1XaRwqb0taVykDwvlmaWhfr+eSrTDDY/msJt9qs/TmJlD7Ieu4bXn/KxNx5PcyGJj
         lrGmKCNlwbJ1ib3kD8MkbVeeopxEXez7zdjSg7I5jiKuWZE/dqNSIbtOQ4CEM4Vd1Fdw
         JHpQ3dTqQ2XfEwleFdwtkM0RYS25QYGKeMHKeyX1RB89mW+cN+rkQt94kaTHHL6ZSmMj
         5XB6CPt7JiVi5DPnExbbPlJA428/lux6AVxYXVuG2ruvVICOwS82kU6pKyIl1QGAES2D
         lDRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iOrmBybdVZviO/DJqKl8QE2jysjFIziohnLo5WWZcM8=;
        b=eWKfSzdGatYel8HKb1Tzvp1xx3wg+BfYN8VWynTcV1B1nYnDTNPKn3UdBXg9fQ4O1s
         BPXHjMlbrpENQsICSyj7qy8cc9UV9ptKOz0LUiMTeud5ngNjqnPFVXsuINA9a8dPOkUw
         x7XoDND/hPB0QyR2j/wHsk8OiHXwr7TjnA5uqRtThh5WWeK0LC3aMni0qVuxSK1FRvBP
         m6aItwQVWbnQMwmCCWzVPd5l46vTorQb8fTpwXEhNA5fXu9jJV2Oi5oX9AkPC7nct249
         j22962HRZyHqAcIMGhp9NkTJ0NWVyL8wwzyRUHEuvh60NqE5Xo9rUYPaap7n6au2Y0ds
         cpAQ==
X-Gm-Message-State: AOAM531KctRbnulDM1t+s6FREzKmxLR1xEZ1N8tLwu/LXjIhzCr/+3dX
	2b6lTv+lJ56fFT1uLs3wqaQ=
X-Google-Smtp-Source: ABdhPJw3XblLSXmOe13XW4yp6IuWA2xA8D/EpYUHN1qLkQH4etuKDOjJlwx5XnfvJ1GwkWW/E8TWyw==
X-Received: by 2002:a5b:14a:: with SMTP id c10mr47144384ybp.493.1595396719390;
        Tue, 21 Jul 2020 22:45:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:a185:: with SMTP id a5ls319077ybi.9.gmail; Tue, 21 Jul
 2020 22:45:18 -0700 (PDT)
X-Received: by 2002:a25:c04f:: with SMTP id c76mr48630722ybf.187.1595396718853;
        Tue, 21 Jul 2020 22:45:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595396718; cv=none;
        d=google.com; s=arc-20160816;
        b=tZhA+DebW1V0GGyEZ9o4gX81mRnqLdIG3C6BnvhLMMGqdOLmMJEmK5OVummJGuOY2m
         EGykDD9UG7gb2kNCVW7WKfixRDwyLYn4cXzhA/WOIn4iyGKG0A9rB9d24Da/t3uiY4RY
         ZnJf3W09WrI0lm5kefQMteSh1WjZseeQv6AXX2qjPvuWr05xo76uvu/DZVcj0drXbpWO
         XBXAL4aJ2cpyYl079wgabqHIcVD6wzPvXYbafo8ZF+ar2Pp+/QzgD109Ie/aCKs48EdW
         6r/RDk6JjHsmW/JUuYy22HzISm3ekAAt9xITIgpu3ThQFhN5yHdAtTwBwHyXasfq+ens
         uNtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=HjveECGjE3OoKFqTWNIsemnU4Ra081f5febv5hO4Ml8=;
        b=ClXs5y5nlJzek1+t04miiaPyiWktfLE0SpbQKN6lXkY1NhZJvSbeVMBAMsAr8yuaHW
         G7LAea5HMfT3UasD4gk2pEQsxurNwkSiFcQPKKYcBr1rRdkeqpu/eAo1aPVdbNrVwTGC
         Q8YsIRMCc01U7FhGIKaM2zEVZBa0tu0CZOfWbrMiJgGrifRYNgnkiWZKraP3V5HCjD4G
         mcg5aDz3+QUVsHuaVAV4odiRqIDaeZ8K0d9Z6NHY7jgvik0uclDLtyQLnB5XMhtEB+ww
         nZZ6QaSgy2yA+SK0kbb453q69af98RlTfaQsFYwfkWGEHnSqMywvhABc3ZO6MAJrYEFc
         N4KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EGqj1zBx;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id k2si1462798ybb.0.2020.07.21.22.45.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 22:45:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id a24so583497pfc.10
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 22:45:18 -0700 (PDT)
X-Received: by 2002:a63:6e0e:: with SMTP id j14mr24503833pgc.384.1595396717768;
        Tue, 21 Jul 2020 22:45:17 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:a6ae:11ff:fe11:4abb])
        by smtp.gmail.com with ESMTPSA id mv6sm4869305pjb.57.2020.07.21.22.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Jul 2020 22:45:17 -0700 (PDT)
Date: Tue, 21 Jul 2020 22:45:14 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jian Cai <jiancai@google.com>, Bill Wendling <morbo@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	stable <stable@vger.kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3] Makefile: Fix GCC_TOOLCHAIN_DIR prefix for Clang
 cross compilation
Message-ID: <20200722054514.q5fg5dbduq5skwlg@google.com>
References: <20200721173125.1273884-1-maskray@google.com>
 <CAK7LNARjOjr2wSD_iM6yNSZpSGEWrkZZuWKCgCqOrYcA29+LBA@mail.gmail.com>
 <20200722001424.qor3up6357jjsbia@google.com>
 <CAK7LNAQtqdTi49cYL0zVWdqPV2QEsgN+2AACALumanu9L=OuGg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAK7LNAQtqdTi49cYL0zVWdqPV2QEsgN+2AACALumanu9L=OuGg@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EGqj1zBx;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::444
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

On 2020-07-22, Masahiro Yamada wrote:
>On Wed, Jul 22, 2020 at 9:14 AM Fangrui Song <maskray@google.com> wrote:
>>
>> On 2020-07-22, Masahiro Yamada wrote:
>> >On Wed, Jul 22, 2020 at 2:31 AM 'Fangrui Song' via Clang Built Linux
>> ><clang-built-linux@googlegroups.com> wrote:
>> >>
>> >> When CROSS_COMPILE is set (e.g. aarch64-linux-gnu-), if
>> >> $(CROSS_COMPILE)elfedit is found at /usr/bin/aarch64-linux-gnu-elfedit,
>> >> GCC_TOOLCHAIN_DIR will be set to /usr/bin/.  --prefix= will be set to
>> >> /usr/bin/ and Clang as of 11 will search for both
>> >> $(prefix)aarch64-linux-gnu-$needle and $(prefix)$needle.
>> >>
>> >> GCC searchs for $(prefix)aarch64-linux-gnu/$version/$needle,
>> >> $(prefix)aarch64-linux-gnu/$needle and $(prefix)$needle. In practice,
>> >> $(prefix)aarch64-linux-gnu/$needle rarely contains executables.
>> >>
>> >> To better model how GCC's -B/--prefix takes in effect in practice, newer
>> >> Clang (since
>> >> https://github.com/llvm/llvm-project/commit/3452a0d8c17f7166f479706b293caf6ac76ffd90)
>> >> only searches for $(prefix)$needle. Currently it will find /usr/bin/as
>> >> instead of /usr/bin/aarch64-linux-gnu-as.
>> >>
>> >> Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>> >> (/usr/bin/aarch64-linux-gnu-) so that newer Clang can find the
>> >> appropriate cross compiling GNU as (when -no-integrated-as is in
>> >> effect).
>> >>
>> >> Cc: stable@vger.kernel.org
>> >> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> Signed-off-by: Fangrui Song <maskray@google.com>
>> >> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> Tested-by: Nathan Chancellor <natechancellor@gmail.com>
>> >> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>> >> Link: https://github.com/ClangBuiltLinux/linux/issues/1099
>> >> ---
>> >> Changes in v2:
>> >> * Updated description to add tags and the llvm-project commit link.
>> >> * Fixed a typo.
>> >>
>> >> Changes in v3:
>> >> * Add Cc: stable@vger.kernel.org
>> >> ---
>> >>  Makefile | 2 +-
>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>> >>
>> >> diff --git a/Makefile b/Makefile
>> >> index 0b5f8538bde5..3ac83e375b61 100644
>> >> --- a/Makefile
>> >> +++ b/Makefile
>> >> @@ -567,7 +567,7 @@ ifneq ($(shell $(CC) --version 2>&1 | head -n 1 | grep clang),)
>> >>  ifneq ($(CROSS_COMPILE),)
>> >>  CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
>> >>  GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>> >> -CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)
>> >> +CLANG_FLAGS    += --prefix=$(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)
>> >
>> >
>> >
>> >CROSS_COMPILE may contain the directory path
>> >to the cross toolchains.
>> >
>> >
>> >For example, I use aarch64-linux-gnu-*
>> >installed in
>> >/home/masahiro/tools/aarch64-linaro-7.5/bin
>> >
>> >
>> >
>> >Basically, there are two ways to use it.
>> >
>> >[1]
>> >PATH=$PATH:/home/masahiro/tools/aarch64-linaro-7.5/bin
>> >CROSS_COMPILE=aarch64-linux-gnu-
>> >
>> >
>> >[2]
>> >Without setting PATH,
>> >CROSS_COMPILE=~/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
>> >
>> >
>> >
>> >I usually do [2] (and so does intel's 0day bot).
>> >
>> >
>> >
>> >This patch works for the use-case [1]
>> >but if I do [2], --prefix is set to a strange path:
>> >
>> >--prefix=/home/masahiro/tools/aarch64-linaro-7.5/bin//home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
>>
>> Thanks. I did not know the use-case [2].
>> This explains why there is a `$(notdir ...)` in
>> `CLANG_FLAGS     += --target=$(notdir $(CROSS_COMPILE:%-=%))`
>>
>>
>> >
>> >
>> >Interestingly, the build is still successful.
>> >Presumably Clang searches for more paths
>> >when $(prefix)$needle is not found ?
>>
>> The priority order is:
>>
>> -B(--prefix), COMPILER_PATH, detected gcc-cross paths
>>
>> (In GCC, -B paths get prepended to the COMPILER_PATH list. Clang<=11 incorrectly
>> adds -B to the COMPILER_PATH list. I have fixed it for 12.0.0)
>>
>> If -B fails, the detected gcc-cross paths may still be able to find
>> /usr/bin/aarch64-linux-gnu-
>>
>> For example, on my machine (a variant of Debian testing), Clang finds
>> $(realpath
>> /usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/bin/as),
>> which is /usr/bin/aarch64-linux-gnu-as
>>
>> >
>> >I applied your patch and added -v option
>> >to see which assembler was internally invoked:
>> >
>> > "/home/masahiro/tools/aarch64-linaro-7.5/lib/gcc/aarch64-linux-gnu/7.5.0/../../../../aarch64-linux-gnu/bin/as"
>> >-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
>> >./include -I ./arch/arm64/include/uapi -I
>> >./arch/arm64/include/generated/uapi -I ./include/uapi -I
>> >./include/generated/uapi -o kernel/smp.o /tmp/smp-2ec2c7.s
>> >
>> >
>> >Ok, it looks like Clang found an alternative path
>> >to the correct 'as'.
>> >
>> >
>> >
>> >
>> >But, to keep the original behavior for both [1] and [2],
>> >how about this?
>> >
>> >CLANG_FLAGS += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>> >
>> >
>> >
>> >Then, I can get this:
>> >
>> > "/home/masahiro/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-as"
>> >-EL -I ./arch/arm64/include -I ./arch/arm64/include/generated -I
>> >./include -I ./arch/arm64/include/uapi -I
>> >./arch/arm64/include/generated/uapi -I ./include/uapi -I
>> >./include/generated/uapi -o kernel/smp.o /tmp/smp-16d76f.s
>>
>> This looks good.
>>
>> Agreed that `--prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))` should work for both [1] and [2].
>>
>> Shall I send a v4? Or you are kind enough that you'll just add your Signed-off-by: tag
>> and fix that for me? :)
>>
>
>I fixed it up and applied to linux-kbuild/fixes.
>Thanks.

Thanks!

The description 'Set --prefix= to $(GCC_TOOLCHAIN_DIR)$(CROSS_COMPILE)'
should probably be fixed to say '$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))'

>While I am here, could you teach me a bit more?
>
>
>The top Makefile sets the following option as well:
>
>CLANG_GCC_TC    := --gcc-toolchain=$(GCC_TOOLCHAIN)
>
>
>
>I checked the manual:
>https://clang.llvm.org/docs/ClangCommandLineReference.html
>
>
>  -B<dir>, --prefix <arg>, --prefix=<arg>
>  Add <dir> to search path for binaries and object files used implicitly
>
>  --gcc-toolchain=<arg>, -gcc-toolchain <arg>
>  Use the gcc toolchain at the given directory
>
>
>
>
>It is not clear to me
>how they work differently when
>clang searches for toolchains.
>
>
>
>
>If I delete --gcc-toolchain from the top Makefile,
>clang fails to link standalone programs
>because it wrongly invokes /usr/bin/ld
>instead of aarch64-linux-gnu-ld.
>
>
>Does Clang search for gnu assembler
>based on --prefix option?
>
>And, searches for a linker
>based on --gcc-toolchain ?
>
>
>
>-- 
>Best Regards
>Masahiro Yamada

While GCC seems to encourage distributions to apply various environment
settings, Clang encourages downstream users to contribute their
configurations to the upstream clangDriver library... So, clang works
seemingly on many operating systems and many distributions without much
additional customization, but the host/target environment detection code
is very messy.

Freestanding builds (if you use integrated assembler/LLD) do not need --gcc-toolchain.

-fhosted builds need --gcc-toolchain to reuse libstdc++ include paths
and runtime libraries (crt1.o libgcc.a libgcc_s.so.1 etc).
I think on most Linux distributions, with distribution shipped GCC
packages, the only meaningful value is --gcc-toolchain=/usr

Clang will find 'lib' or 'lib64' under --gcc-toolchain= (e.g. /usr/lib),
then locate common cross-compiling GCC installations (e.g. /usr/lib +
gcc-cross/aarch-linux-gnu (Debian uses gcc-cross/), or just /usr/lib +
gcc/aarch-linux-gnu). You can see that with an incorrect --gcc-toolchain=/ (or some other arbitrary path):
(https://github.com/llvm/llvm-project/blob/master/clang/lib/Driver/ToolChains/Gnu.cpp#L1903 )

* `clang -v` does not print `Found candidate GCC installation: `
* There is no libstdc++ search path in `#include <...> search starts here:` for a C++ compile
* In the linking stage, ld reports a number of issues like 'cannot find crt1.o'

When --gcc-toolchain is not specified, in many cases Clang can guess the
correct value (usually /usr). So clang++ --target=aarch64-linux-gnu works just fine.

(As you can see from the code, the code --gcc-toolchain= is tangled with
environment detection, which is ugly: specifying a wrong --gcc-toolchain= can remove a lot of file stats...
You can find that the number of syscalls changes with different --gcc-toolchain: `strace -fe file clang`)

External programs like 'as' and 'ld' use the bin/ directory somewhere
relative to the GCC installation directory (they are appended to getProgramPaths).
clang::driver::Driver::GetProgramPath locates these programs.
https://github.com/llvm/llvm-project/blob/master/clang/lib/Driver/ToolChains/Gnu.cpp#L1903
As you see from the code, -B and COMPILER_PATH take precedence over
getProgramPaths.
You can print the 'programs' path with `clang --print-search-dirs [--target=...] [-B...] [--gcc-toolchain=...]`
Latest clang will be closer to GCC.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722054514.q5fg5dbduq5skwlg%40google.com.
