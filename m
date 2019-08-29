Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTHYUDVQKGQEOGNQDUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CCBA287C
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 22:57:49 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id c18sf1900163oig.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Aug 2019 13:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567112268; cv=pass;
        d=google.com; s=arc-20160816;
        b=ParGdf5cOxrV78DqXAMuioKQsxvh7c8WZyQNe8KaBcTSmivA2ECg9+qkcX292q3y3S
         FHdkU2ena7GcU2iuZFIc3NT4Pj0rV0NbyzbPf1xYj+0FMc8HAV6VztratjjsOYkkVZgL
         eRPruhxuM72Msrbg8LLkPa1a5K+aMvaDl7Jv/ET5P3j10C3aj5T3Aqz4vgW9+C3Q6pzZ
         YnRmrpqKB0rHvdRqufuh5W0HXo4leF+giFgr/nK8JS2EDkPrL7sAGXSuMbN0ax/ZsH6w
         jECM8BNzWPqgIV2Yfb/9ZBP2kNBW1ieVoWKf2Ctoi5IpzmO2Wsvb2Auv5jckSnkJNtRs
         VRew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hEz9V2MIh7jReCejXiweilToAKaHhnV8FNHvk6C/GUU=;
        b=hMIao+/SY8saIKnbgTeEBviyz9v4qaLkZPzo3DX3ShqCtBKR/Ne7ekPVUEQhQ5zVHM
         VjthcQn0LKno8Vbi0w6/CmaAVMRvqL04bEnpPTROMPDNVieyLYMG1yfEJYo8kcd1RoJ+
         IzZ2xZvLzT9ixruVKvXdMcN7tWSpS/+sMw5+4eWVydy62vUnoz1I83Gs/zrci3+JLUj5
         wRQSk5nJ2KYZiMftOJbyN1pSdSgidIGFIbaHYLZuV6p6AkKm0CrnUX7HAckPZneTYsNi
         5+ebSkMufiJKw1ZRw4qXYMjVyVmOy5pHEtHkHPlq/PTZ6AZRR9C6Yh0EAbkue2vZryWG
         1PMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wWMz75Bi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hEz9V2MIh7jReCejXiweilToAKaHhnV8FNHvk6C/GUU=;
        b=VtMiRPPy45rBKjsztf5XSYc8PXg2Hikqasy2CfINjoMGkZYw6462HlATBnkGcztfXP
         K6Aj+N5X1/UaQPLq8v8eNjBeD/xswD3kbA0fB0xdjw3StAJf7ouUimz7wPjtPuggub6x
         3BeH8xVYk6h96mrK/420eMuWLXx84OQU/u7TFczQcpkdEbI6tpm+79KdVxdl4DoyCulZ
         kN9euXRGyWFr9+xcOaVlqlYKojOvHhQJEuDPhyBg961rRzogDft2pjPSC0BxKYSvFqIj
         zXi4o3qGKqlfyMOnT3vv6lkXaDq8rw0jQDqFkltnUeePmio1ph1qyIRURP7m7d3RWZYf
         VkPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hEz9V2MIh7jReCejXiweilToAKaHhnV8FNHvk6C/GUU=;
        b=Nks9v8eM/9K8pqFpFCnWmXrqMcLSrs2vJYQNSWnYxQ0tF3023Y+i3u0pt5Z6Uwsl6n
         XlIRbDBsADkuF66SFITkje5c4AHcuosUHGfiDoEePsw0Qq2zBFdhw8MLSGKSECHgHMqJ
         sqWPykHinJJcWvCrJhJ5gvcv7nmVUCgewr0dVklCo9x/UvN7z0FpFmZVKyQQJXQ7BAFu
         nP3tKxfT9HnkzRa2Knucyt9M0sGICylWsQDuVBke9rDtVOUeTFtmTShM+4/eoLi9iljX
         6LAuUFMQj7hKCPFixEv2DHAiUtCWAhxVPsKU5bMRZFwQPdhBt0c6jiIBaq+vYV4NnZrb
         dvRQ==
X-Gm-Message-State: APjAAAWF0ooCC4GO/edvkoxfWBzXUQw3kdSdDxn7dJzDGiIEgDaJSSYx
	WLVjzYIKAL+lVJw0rahs5P0=
X-Google-Smtp-Source: APXvYqzHh5W69KbmG/jIMlyQjYB2DXG36HfZh8CA2OnmsF/D4xm9C1nQQLF/rdj2lkNi+ngqa/A4bw==
X-Received: by 2002:a9d:6754:: with SMTP id w20mr4410795otm.82.1567112268548;
        Thu, 29 Aug 2019 13:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:688:: with SMTP id 8ls159596otx.9.gmail; Thu, 29 Aug
 2019 13:57:48 -0700 (PDT)
X-Received: by 2002:a05:6830:15c5:: with SMTP id j5mr9702540otr.296.1567112268286;
        Thu, 29 Aug 2019 13:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567112268; cv=none;
        d=google.com; s=arc-20160816;
        b=sBeT1/bIvSEQ+GmvTnFjcivkqdgsL7FzemsIqkcn9FDaXP/r5H7zHw3mvfLF2nWbMP
         j5q/h5TplypqN1DZ69fE+M4/FLbK1aljsMg98bcNcvevcsQDW+vttvjLlFYnbmJOlyXz
         IGKvmHkniFbJY6tHsB2nDfLBMDRPbsWclA+q2fOLtN2RmyEKEx4qPy4Cfhmw5nr13rsp
         Owiua9q247/EoRUVuDKH9GCLWARpdvyNEYJjulq+BBRP+WiENyXf0fT/2xQ4dhlIw8nt
         N6+kSgWAWPoyYOmKBFTF1L1C6cg3WkutzBcQ+PUEyyqWHdCXAkwnt6JIwnvCqejCM+5H
         M8Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oeDSTDmCykdOboI0NlO40BAz1xd+JSb526zs42hsg2U=;
        b=BBGbHjnlBOduAzM4ex/9Fp5J+yloYl12D8uL+wKknSXQ8GZmJmtHmdyJlb1dtMxZaK
         oTXHGsFg3eJaZwLUYlCUwCabJW4OPNHWUtvf+zvtkv3YAuCdvBFFHnnC96/6C65f9wRL
         BAec7VE/+DIAnGQG13dZDAVKja8eh21zE6IfdqxS+QNtzU+PIoKBHcqqmHmIiR25WRdv
         9LGc/2EnyJbDU3xrtYkVY5p9Jo5Sy8rKgE92jDCOZhCbQ6rp3X+lChKWnLxfaGdGD0y8
         p3Ch+dIjDkdjJCLR1MU6fYbf0N++z174iWERh55/F0Bfm2MOpcKd7oRNvpLHkr5ACGfH
         a6Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wWMz75Bi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id z9si144063otq.0.2019.08.29.13.57.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Aug 2019 13:57:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id d1so2237395pgp.4
        for <clang-built-linux@googlegroups.com>; Thu, 29 Aug 2019 13:57:48 -0700 (PDT)
X-Received: by 2002:a17:90a:c20f:: with SMTP id e15mr11791171pjt.123.1567112267046;
 Thu, 29 Aug 2019 13:57:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190829062635.45609-1-natechancellor@gmail.com>
 <CAKwvOdkXSWE+_JCZsuQdkCSrK5pJSp9n_Cd27asFP0mHBfHg6w@mail.gmail.com>
 <20190829193432.GA10138@archlinux-threadripper> <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
In-Reply-To: <885bb20c11f0cb004e5eeda7b0ca6d16@agner.ch>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 29 Aug 2019 13:57:35 -0700
Message-ID: <CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA=3Nw@mail.gmail.com>
Subject: Re: [PATCH] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
To: Stefan Agner <stefan@agner.ch>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Arnd Bergmann <arnd@arndb.de>, Matthias Kaehlcke <mka@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wWMz75Bi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Thu, Aug 29, 2019 at 1:21 PM Stefan Agner <stefan@agner.ch> wrote:
>
> On 2019-08-29 21:34, Nathan Chancellor wrote:
> > On Thu, Aug 29, 2019 at 10:55:28AM -0700, Nick Desaulniers wrote:
> >> On Wed, Aug 28, 2019 at 11:27 PM Nathan Chancellor
> >> <natechancellor@gmail.com> wrote:
> >> >
> >> > Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
> >> > with clang:
> >> >
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
> >> > softirq.c:(.text+0x504): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
> >> > softirq.c:(.text+0x58c): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
> >> > softirq.c:(.text+0x6c8): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
> >> > softirq.c:(.text+0x75c): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
> >> > softirq.c:(.text+0x840): undefined reference to `mcount'
> >> > arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow
> >> >
> >> > clang can emit a working mcount symbol, __gnu_mcount_nc, when
> >> > '-meabi gnu' is passed to it. Until r369147 in LLVM, this was
> >> > broken and caused the kernel not to boot because the calling
> >> > convention was not correct. Now that it is fixed, add this to
> >> > the command line when clang is 10.0.0 or newer so everything
> >> > works properly.
> >> >
> >> > Link: https://github.com/ClangBuiltLinux/linux/issues/35
> >> > Link: https://bugs.llvm.org/show_bug.cgi?id=33845
> >> > Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
> >> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> >> > ---
> >> >  arch/arm/Makefile | 6 ++++++
> >> >  1 file changed, 6 insertions(+)
> >> >
> >> > diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> >> > index c3624ca6c0bc..7b5a26a866fc 100644
> >> > --- a/arch/arm/Makefile
> >> > +++ b/arch/arm/Makefile
> >> > @@ -112,6 +112,12 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
> >> >  CFLAGS_ABI     +=-funwind-tables
> >> >  endif
> >> >
> >> > +ifeq ($(CONFIG_CC_IS_CLANG),y)
> >> > +ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000; echo $$?),0)
> >> > +CFLAGS_ABI     +=-meabi gnu
> >> > +endif
> >> > +endif
> >> > +
> >>
> >> Thanks for the patch!  I think this is one of the final issues w/ 32b
> >> ARM configs when building w/ Clang.
> >>
> >> I'm not super enthused about the version check.  The flag is indeed
> >> not recognized by GCC, but I think it would actually be more concise
> >> with $(cc-option) and no compiler or version check.
> >>
> >> Further, I think that the working __gnu_mcount_nc in Clang would
> >> better be represented as marking the arch/arm/KConfig option for
> >> CONFIG_FUNCTION_TRACER for dependent on a version of Clang greater
> >> than or equal to Clang 10, not conditionally adding this flag. (We
> >> should always add the flag when supported, IMO.  __gnu_mcount_nc's
> >> calling convention being broken is orthogonal to the choice of
> >> __gnu_mcount_nc vs mcount, and it's the former's that should be
> >> checked, not the latter as in this patch.
> >
> > I will test with or without CONFIG_AEABI like Matthias asked and I will
> > implement your Kconfig suggestion if it passes all of my tests. The
> > reason that I did it this way is because I didn't want a user to end up
> > with a non-booting kernel since -meabi gnu works with older versions of
> > clang at build time, the issue happens at boot time but the Kconfig
> > suggestion + cc-option should fix that.
>
> I agree with Nathan here, I'd rather prefer the build system to fail
> building rather than runtime error.
>
> If we decide we want to have it building despite it not building a
> functional kernel, we should at least add a #warning...

Just to be clear...I was suggesting a build failure, but for
__gnu_mcount_nc not having the correct calling convention in older
clang releases, which is orthogonal to passing `-meabi gnu`.  This
patch uses the __gnu_mcount_nc calling convention problem to justify a
version check for a flag that while closely related, is not actually
the problem, IMO.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm-9T5Mmys93VMK8HLUgPJa2HOpcmG96SAvH2EGLA%3D3Nw%40mail.gmail.com.
