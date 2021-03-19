Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCFS2OBAMGQEH5U25VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93b.google.com (mail-ua1-x93b.google.com [IPv6:2607:f8b0:4864:20::93b])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A0D3422C0
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 18:02:02 +0100 (CET)
Received: by mail-ua1-x93b.google.com with SMTP id d15sf1320533uap.9
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Mar 2021 10:02:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616173321; cv=pass;
        d=google.com; s=arc-20160816;
        b=iETVnibCF6lyU5MH/n/uHJME9cNN9wbEbmlQI1dPa3e8Uf1yIbkLVkbUO7GVojYqzG
         4qTAAQKsvDOPJTsfI7vPX2QVtVet10lqWtW+St2If044BVZAPbzWi7D17ZyeSmWClC+b
         smOgicz7WFxREZXmeeKOPTo0hygCYzFDmtchbtxfRZ4e1I/5+J7aBp378Zm9h/kvG5b3
         wKM5q50Cb7cJusPsxIZ8VoVFUqq2oS9qJd47MlQ9gtM6COdM2OM7Wg5fUSS10j1A25/X
         SZ6/s/fQWah0SKPF7dCwpsWcYST/b6rio/djUH/0i0T47X90yf+VKhQPetQwuDFg9gTQ
         ww8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=O5OCpwX0HQTpAEI/rlVOMzqvojjAAgYJz909Cd8w+Y0=;
        b=yQLm4LyrMvUbiN0Kz7pmWZKgp9/sn+2xt5UV7yAqr5oykp0Xo1R6ARgb21bTxNnSOs
         OzjYseUZkivk6PvZEcIWOZ7e9PjiDioK2HdgiOT/dzmgQIuQcivKEd3Osy3MLaA5Z5Rh
         fJ80EO4/aIld+IzWy7FIBxlFvTvlzo1/NYxGMpKhl5eKJgDB9nRuelo6f4TgqpydZ9EV
         +cYPUW4XQwL/BofwdZNVWaUkUmQhtfKCbmDRJ0XvPO+/p8pRC0JxhLdEQtovF1bsaOWK
         MLOkw/Z/1DJdUKIbEIXNlSqfXmSYKtuXdLN2ez/whSMOX67nCSVuX4KMvIoAbOmt86D9
         n7gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EZjC4EUQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O5OCpwX0HQTpAEI/rlVOMzqvojjAAgYJz909Cd8w+Y0=;
        b=O7/tceRmvUy8ivn46IHmjrgPRkSj7pzV5iKlkAcC0e4flfBeZgu8jahdFXFv/R8MP0
         1gRmTRPJrAhZzsFz3/LSUTFpOSVOebumxFnnVkmfyFrPk+befc7JiHr9L51+L3Bwri/u
         B3AT4UxQA/y32sDtnDUPstu0fHh+1T9AAOKdFoSAgpyCABGezn5pVSUdQ3GwoRSOozcg
         0NxyZrwbixKyaYnx9KKcR5yfdxGgAsWSKnIM9SkP7vYV5GZk6fvIr5GKgu+o7MZux3Om
         WZ2J1heBG2jv+9yXKpx93E4LdDq5Sh67FmGPmjkjS2ElXyQDWFVE1WXRGdieJ2rNctjT
         aWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O5OCpwX0HQTpAEI/rlVOMzqvojjAAgYJz909Cd8w+Y0=;
        b=ajuMsKHYgHBNIwrhFS8CxX7xpl6DpEcvn4BPGAH+8uCkaO8CIn4APCSQDfo5I1bk25
         r19BBI3nr+TDFIlA4Yzryellb5ky7Fg1P6eua9AOCibglJPOgSbLQCSN1zmctDRoRRmG
         NOlWDSGTs0OXecgun6IskmlidCybodTyc+hIAa1MY2wkOo6qKDyCK8MTD3JxUCoMs3FN
         COVNc4MdU04HDgkZMVzzvYWQEuPh5qq/y9vA0ygQOOST+p80uD/VxWpNp0WwcBG4xgI9
         eAbpk4TTaz7va2CkammiZbUEUNeLw/QM7/9wZvY19XwqvleDkzgdK3hX3Y0DcbaYEedE
         nV3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531CEgwqeQq65B5z/crKoM+31gtuRz5VYuoOPkwEhQzlrDnhfLi3
	TTNX5cDv3ooeQCI1h8NogmY=
X-Google-Smtp-Source: ABdhPJwRjMpvacZ6K8noSvyQn12WzDOJPw4fpK+PoYssXWzL54NeLOFFuAbFk0KX7as0/9HfLBZdbQ==
X-Received: by 2002:a1f:18c9:: with SMTP id 192mr3568543vky.11.1616173320656;
        Fri, 19 Mar 2021 10:02:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:475b:: with SMTP id i27ls463167uac.7.gmail; Fri, 19 Mar
 2021 10:02:00 -0700 (PDT)
X-Received: by 2002:ab0:390d:: with SMTP id b13mr6236129uaw.53.1616173320097;
        Fri, 19 Mar 2021 10:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616173320; cv=none;
        d=google.com; s=arc-20160816;
        b=usJOv3r906WiXZWhjfSTWQinbmnbXF0yrnFpoBUF16TpPeoGfF5Ye+Nh8ykT24gUjg
         +yQlIKEbTP2xf9rVu5gV4pq/uPb4UVZYZ/U61AJ+NivaVAmoyOhDHrVCPkmPjFNqd6jL
         Dd83Uf6dakwKCZM+HIJKmTSSIh3dU914d5ziGnAqB9muE78JiTaOxH9DbAecBC3MnoVP
         gzoqu0Jfrpa+J9f4swnQWKzo9xBySes00JKo7GHSXzJMVxFmTx78EDkgW2PcloFnTk4u
         SrFaa9yS+Q1KPTru7heNm9IOR5WcjrH4bHl9tMzNLI9bNSxZKS1t2qGZAOS/NPFcLcBQ
         DYjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MmQ8NBw2D32LRu0Dx3+Na+n9XcXxgSzoVSNzpZNMtvU=;
        b=mClTo97mAnBMpnukZMRBY/Ii/PoeTJ3IGvO4aLfp36GzWWR1SE4PBlfWRkICUEsIB8
         K6J137ZTdOSdxsJDdl7Gp8X8c/nKHdQpiVq46VssWA+SKGorISnCtTnWlhTfCtutFjFa
         76OxMZQUITu0DY6wYc/SwxsdhLFO8Ih2SNaC5WzAnxYKi0+iqnm3s6+tPvstri3cpVCp
         jTLryquiXqYBt6OLFr0+S/sPVDxqAr/Wr3EW5N9fH4Odqn8GfjEAucIm1j3oMTI53RT0
         +MH4OWoTWwyNO63/e1hDB0xeUvPGSMeDxGr+6I3COzL1JFMD+xMtmqLrElkLGHULw0zK
         HAaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=EZjC4EUQ;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w26si196275vse.2.2021.03.19.10.01.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Mar 2021 10:02:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4F51E61957;
	Fri, 19 Mar 2021 17:01:57 +0000 (UTC)
Date: Fri, 19 Mar 2021 10:01:54 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
	open list <linux-kernel@vger.kernel.org>,
	lkft-triage@lists.linaro.org,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	kvm-ppc@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: Clang: powerpc: kvm/book3s_hv_nested.c:264:6: error: stack frame
 size of 2480 bytes in function 'kvmhv_enter_nested_guest'
Message-ID: <20210319170154.oe5sa6ohjbyucbws@archlinux-ax161>
References: <CA+G9fYu=a0pk79He2DoQ9NGHkbG58PMhqJsEk=xiQv+v495Dmw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYu=a0pk79He2DoQ9NGHkbG58PMhqJsEk=xiQv+v495Dmw@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=EZjC4EUQ;       spf=pass
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

Hi Naresh,

Thank you for the testing and report.

On Fri, Mar 19, 2021 at 12:50:42PM +0530, Naresh Kamboju wrote:
> Linux mainline master build breaks for powerpc defconfig.
> There are multiple errors / warnings with clang-12 and clang-11 and 10.
>  - powerpc (defconfig) with clang-12
>  - powerpc (defconfig) with clang-11
>  - powerpc (defconfig) with clang-10
> 
> The following build errors / warnings triggered with clang-12.
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp LLVM=1 ARCH=powerpc
> CROSS_COMPILE=powerpc64le-linux-gnu- 'HOSTCC=sccache clang'
> 'CC=sccache clang'
> /builds/linux/arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack
> frame size of 2480 bytes in function 'kvmhv_enter_nested_guest'
> [-Werror,-Wframe-larger-than=]
> long kvmhv_enter_nested_guest(struct kvm_vcpu *vcpu)
>      ^
> 1 error generated.
> make[3]: *** [/builds/linux/scripts/Makefile.build:271:
> arch/powerpc/kvm/book3s_hv_nested.o] Error 1
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>

Yes, unfortunately, this is a clang-12 regression that was exposed by
commit 97e4910232fa ("linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*")
and it is being tracked on both our GitHub issue tracker and LLVM's
bugzilla:

https://github.com/ClangBuiltLinux/linux/issues/1292
https://bugs.llvm.org/show_bug.cgi?id=49610

Once it has been sorted out, we can potentially work around that by just
raising the limit for that particular file (not sure what the PowerPC
maintainers will want to do).

> The following build errors / warnings triggered with clang-10 and clang-11.
>  - powerpc (defconfig) with clang-11
>  - powerpc (defconfig) with clang-10
> make --silent --keep-going --jobs=8
> O=/home/tuxbuild/.cache/tuxmake/builds/1/tmp LLVM=1 ARCH=powerpc
> CROSS_COMPILE=powerpc64le-linux-gnu- 'HOSTCC=sccache clang'
> 'CC=sccache clang'
> 
> /usr/bin/powerpc64le-linux-gnu-ld:
> arch/powerpc/kernel/vdso32/sigtramp.o: compiled for a little endian
> system and target is big endian
> /usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
> data of file arch/powerpc/kernel/vdso32/sigtramp.o
> /usr/bin/powerpc64le-linux-gnu-ld:
> arch/powerpc/kernel/vdso32/gettimeofday.o: compiled for a little
> endian system and target is big endian
> /usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
> data of file arch/powerpc/kernel/vdso32/gettimeofday.o
> /usr/bin/powerpc64le-linux-gnu-ld:
> arch/powerpc/kernel/vdso32/datapage.o: compiled for a little endian
> system and target is big endian
> /usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
> data of file arch/powerpc/kernel/vdso32/datapage.o
> /usr/bin/powerpc64le-linux-gnu-ld:
> arch/powerpc/kernel/vdso32/cacheflush.o: compiled for a little endian
> system and target is big endian
> /usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
> data of file arch/powerpc/kernel/vdso32/cacheflush.o
> /usr/bin/powerpc64le-linux-gnu-ld: arch/powerpc/kernel/vdso32/note.o:
> compiled for a little endian system and target is big endian
> /usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
> data of file arch/powerpc/kernel/vdso32/note.o
> /usr/bin/powerpc64le-linux-gnu-ld:
> arch/powerpc/kernel/vdso32/getcpu.o: compiled for a little endian
> system and target is big endian
> /usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
> data of file arch/powerpc/kernel/vdso32/getcpu.o
> /usr/bin/powerpc64le-linux-gnu-ld:
> arch/powerpc/kernel/vdso32/vgettimeofday.o: compiled for a little
> endian system and target is big endian
> /usr/bin/powerpc64le-linux-gnu-ld: failed to merge target specific
> data of file arch/powerpc/kernel/vdso32/vgettimeofday.o
> clang: error: unable to execute command: Segmentation fault (core dumped)
> clang: error: linker command failed due to signal (use -v to see invocation)
> make[2]: *** [/builds/linux/arch/powerpc/kernel/vdso32/Makefile:51:
> arch/powerpc/kernel/vdso32/vdso32.so.dbg] Error 254
> make[2]: Target 'include/generated/vdso32-offsets.h' not remade
> because of errors.
> 
> Reported-by: Naresh Kamboju <naresh.kamboju@linaro.org>
> 
> build link,
> https://gitlab.com/Linaro/lkft/mirrors/torvalds/linux-mainline/-/jobs/1110841371#L59
> 

This is a deficiency in clang that has been fixed in clang-12:

https://github.com/llvm/llvm-project/commit/0a23fbd28c7509f2f980946091e6055bf27164d2

but tuxmake can resolve it by using a more appropriate CROSS_COMPILE
variable for powerpc64 big-endian (powerpc64-linux-gnu-):

https://gitlab.com/Linaro/tuxmake/-/issues/108

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210319170154.oe5sa6ohjbyucbws%40archlinux-ax161.
