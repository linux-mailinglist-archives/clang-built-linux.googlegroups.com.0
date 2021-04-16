Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB6ER42BQMGQEYANUBNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id B149436204D
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 14:54:18 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id m36-20020a634c640000b02901fbb60ec3a6sf2909887pgl.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 05:54:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618577657; cv=pass;
        d=google.com; s=arc-20160816;
        b=g02nVRi+YrfnzomnFAYqNOO9F9dM6nOOh5Yj5gufP+6J0R/HkHE0tJTkSnq7gDZIjr
         lm7u/dZlcfGCOuq7WjiW95kQs79Lg841QxpncFRhgYcJY4Rdz9ZjSGLB23ZnfV8wZN03
         yiB1oeHgCA0im4i8S1jEPGsJkumOTAlyQwzJhrESCfu5lBlDIPOxluz5UfU0pXW74K9I
         HAKJtO3QHoiS2+XmAcE+shiyWtQFkra1faKCh1hw832YJzBg8GS0QYkmkd/itBGGa9bo
         ZFLx9HkFRPHiNhyyc30FDiNty6sqdOVYvkx+YLudfR/l1fPFYrnX7JFwK6vy60gtHHh6
         PKPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=6YuOKPmET+AOydd0quXOPWXjUAuLrRJS5+qk35pXSOM=;
        b=0anGRaXRrzuvU5dz3lM9EHO04+1vYXy6bnBNVSILOlpkz9GwnHqNQEI/FXiH95eJQ9
         h52T6hTsWMl0SZjPTFd+/UiSD2meaI34rsHmFTLVGQD3cehh/fjSzAPkI0fSsbZkRypq
         LYSk8A/zzqnqi0SRZTQJDB1oC3XL3a8bEzMIcFMz+p1R20mXW3bt41M/9oegO+glKT3y
         MfwA0GtLDbL6x7NswpZ2+6AdA76SQQg4jyravVHKxZeBcNCC9PtgaBP8e7DDJnMjTsDU
         qgmJBI6tiFMAQyWn/sHv1U3fzfCVB/5c0eNPc8GMu8Wxxv3eG9cLIQgxQ2n7pH4Odwdr
         tUIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pnl4cChP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6YuOKPmET+AOydd0quXOPWXjUAuLrRJS5+qk35pXSOM=;
        b=iA+H6YnoeI5I3zSOWzwsbJjLrMnMH+ewipO/UKKYlvXMWQAML9r9M1bstOFym+0eQj
         cW3Y5gL4yuYwSfxWe4kknix+ldGRWuXWHuE4DlAbypSl3KKcfkFDc5dg9eRfO5kfu+gB
         IxMeo6dOv/ZkF7L/i7C6HGOzQgARBaahBK6D+UM3jxYRtedxI49HwN7vVp6HETyBsLpZ
         ThG/9sq3E83NwfdHooIv3wkkKvJNN/czMn79srndnfTDV6Nnm9vRyEE6nbfzTAZwSivu
         oV67aWyx/VkAPzTDauZxPR6mpnkf05x6ZBm5+1ufjnW8Fk1mTLiFcTcl1RBtd+G8bY2J
         Usew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YuOKPmET+AOydd0quXOPWXjUAuLrRJS5+qk35pXSOM=;
        b=OYSwOl8Ub/YsCNn30MMkWtLa3e5U7FXw6OCYUTm9rTRkWGuR0fp4jhWjAAdfFsU+PQ
         1LcFOAbB94kUlsOUZ+OezNKvuKN5S3OFD5hEv1AEacU88L/fkW0+q95wNPJM2jc3Rat8
         5sW8S9cM1SoZYYgWlko1/rICWZM3Lr3T4X6rU8OaDaUDXcAauOCW9PwGlzL5LsaupEnY
         eDjduNUc1+eN5Vpm45agmIfBLr4W/qm1FpqKk8UM0Nw7isf/2yDKGQgax4x0TDpfXoSJ
         IYAp1xo3yW3HquFNpuu6CSOZ8jg+Nvw7KeMJvTOPbHBcUJT0pG7BpRs8KmmwRRMUr+ZJ
         9rIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530qMmKv4hsx5imIOVLYB9IpnjdgpDVpuU6D0of1zuyld5CNTZ/Y
	ugMg4dLNEqEEJzq0V20mcu0=
X-Google-Smtp-Source: ABdhPJyvMBeXgTaABuJ1ECk8NTJlis7tez2nzRMU9pn4vluEmvXKyrIwHPFROoU2RAnfsvqU1UR9dA==
X-Received: by 2002:a17:902:8c92:b029:e6:60ad:6924 with SMTP id t18-20020a1709028c92b02900e660ad6924mr9340445plo.16.1618577656844;
        Fri, 16 Apr 2021 05:54:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7102:: with SMTP id h2ls5119897pjk.0.canary-gmail;
 Fri, 16 Apr 2021 05:54:16 -0700 (PDT)
X-Received: by 2002:a17:90a:f2c5:: with SMTP id gt5mr9528874pjb.67.1618577656364;
        Fri, 16 Apr 2021 05:54:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618577656; cv=none;
        d=google.com; s=arc-20160816;
        b=zwuiggmKzGRGianm74wdnp4h5CEdFaCSCItMGd1YGaCBBKa0Ft04txvE9U2erhs9ip
         +97yjBB1Ny9LLORaVt7gnCDw2Pr1hst/1aP+Oe4OJS4a8qU4c8QIzKZ5YRkxnjsmJbUE
         lxls6JtczddnA2APByW9ZcHUYVjj8OzUZBhCX3tIyivi2Dl4rhhhjDbhoPuZMtxvcqYH
         ZObSlOEg6hukdfeEKnOLEkN95eQHCzaVCFpGXDEx4L+kJtxzGEqErrTCHteHT2xMh5YQ
         TaOH72Wrl/Pk/10FgnxuU4eRkxP5RzJaeLGGxw/9G7cS93tpMKEIHYh+9uQW3kfaCETT
         Sxxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=FpBTE/PmjepHTlzWsrX59REOgQgL2WrtsCCIoF/CYWE=;
        b=Db61kRSIBC8/9zY29oaOCZVXRoi5UPvtLUSxqoGk8hzVvHBMp8y65Bmbrxqh+95evQ
         mAxxGifAC5iFkh4PoAUrXCSoqBXQGkJA45RCeCARUvEDaE+Zhhtmk2R8aneiY/bPYdZt
         NC9KFhWTDhFPpbIgehWzf6MDHNDUNxJRXGunil4csjS1h0/RdWz+GgyTuop0wYDmZZKJ
         IFZKkuP/vJg5BQiBOlg0/GUQK2xU/Iuy7b9IGdDc2Na6GXgHkQaL7dTFVCIdNC7kWlQA
         nI/R0j5bCJ/AdHnkJTtUGPgtTnXHlLpgT++OGCZdewPnpurhM5yp54Xe9Cc8x2OhvBBF
         3qHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=pnl4cChP;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id fy20si272449pjb.2.2021.04.16.05.54.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 05:54:16 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 13GCruC2008984
	for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 21:53:57 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 13GCruC2008984
X-Nifty-SrcIP: [209.85.216.54]
Received: by mail-pj1-f54.google.com with SMTP id ot17-20020a17090b3b51b0290109c9ac3c34so16314715pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 16 Apr 2021 05:53:57 -0700 (PDT)
X-Received: by 2002:a17:90a:1056:: with SMTP id y22mr9094969pjd.153.1618577636323;
 Fri, 16 Apr 2021 05:53:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210415072700.147125-1-masahiroy@kernel.org> <20210415072700.147125-2-masahiroy@kernel.org>
 <eb623ea6-a2f4-9692-ff3d-cb9f9b9ea15f@de.ibm.com> <0eeed665-a105-917b-e7fb-8dafe2ae9d94@de.ibm.com>
In-Reply-To: <0eeed665-a105-917b-e7fb-8dafe2ae9d94@de.ibm.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 16 Apr 2021 21:53:18 +0900
X-Gmail-Original-Message-ID: <CAK7LNASfiiLJd9dOpaJ47pJ4FzgV8JL3vU8okOYz0=eaE4OYgQ@mail.gmail.com>
Message-ID: <CAK7LNASfiiLJd9dOpaJ47pJ4FzgV8JL3vU8okOYz0=eaE4OYgQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] tools: do not include scripts/Kbuild.include
To: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Janosch Frank <frankja@linux.ibm.com>,
        Alexei Starovoitov <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>, Harish <harish@linux.ibm.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Paolo Bonzini <pbonzini@redhat.com>, Paul Mackerras <paulus@samba.org>,
        Shuah Khan <shuah@kernel.org>, Song Liu <songliubraving@fb.com>,
        Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        kvm@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Networking <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=pnl4cChP;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Apr 16, 2021 at 2:56 PM Christian Borntraeger
<borntraeger@de.ibm.com> wrote:
>
>
> On 15.04.21 10:06, Christian Borntraeger wrote:
> >
> > On 15.04.21 09:27, Masahiro Yamada wrote:
> >> Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
> >> scripts/Makefile.compiler"), some kselftests fail to build.
> >>
> >> The tools/ directory opted out Kbuild, and went in a different
> >> direction. They copy any kind of files to the tools/ directory
> >> in order to do whatever they want to do in their world.
> >>
> >> tools/build/Build.include mimics scripts/Kbuild.include, but some
> >> tool Makefiles included the Kbuild one to import a feature that is
> >> missing in tools/build/Build.include:
> >>
> >>   - Commit ec04aa3ae87b ("tools/thermal: tmon: use "-fstack-protector"
> >>     only if supported") included scripts/Kbuild.include from
> >>     tools/thermal/tmon/Makefile to import the cc-option macro.
> >>
> >>   - Commit c2390f16fc5b ("selftests: kvm: fix for compilers that do
> >>     not support -no-pie") included scripts/Kbuild.include from
> >>     tools/testing/selftests/kvm/Makefile to import the try-run macro.
> >>
> >>   - Commit 9cae4ace80ef ("selftests/bpf: do not ignore clang
> >>     failures") included scripts/Kbuild.include from
> >>     tools/testing/selftests/bpf/Makefile to import the .DELETE_ON_ERROR
> >>     target.
> >>
> >>   - Commit 0695f8bca93e ("selftests/powerpc: Handle Makefile for
> >>     unrecognized option") included scripts/Kbuild.include from
> >>     tools/testing/selftests/powerpc/pmu/ebb/Makefile to import the
> >>     try-run macro.
> >>
> >> Copy what they want there, and stop including scripts/Kbuild.include
> >> from the tool Makefiles.
> >>
> >> Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.ibm.com/
> >> Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
> >> Reported-by: Janosch Frank <frankja@linux.ibm.com>
> >> Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
> >> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >
> > When applying this on top of d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
> >
> > I still do get
> >
> > # ==== Test Assertion Failure ====
> > #   lib/kvm_util.c:142: vm->fd >= 0
> > #   pid=315635 tid=315635 - Invalid argument
> > #      1    0x0000000001002f4b: vm_open at kvm_util.c:142
> > #      2     (inlined by) vm_create at kvm_util.c:258
> > #      3    0x00000000010015ef: test_add_max_memory_regions at set_memory_region_test.c:351
> > #      4     (inlined by) main at set_memory_region_test.c:397
> > #      5    0x000003ff971abb89: ?? ??:0
> > #      6    0x00000000010017ad: .annobin_abi_note.c.hot at crt1.o:?
> > #   KVM_CREATE_VM ioctl failed, rc: -1 errno: 22
> > not ok 7 selftests: kvm: set_memory_region_test # exit=254
> >
> > and the testcase compilation does not pickup the pgste option.
>
> What does work is the following:
> diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests/kvm/Makefile
> index a6d61f451f88..d9c6d9c2069e 100644
> --- a/tools/testing/selftests/kvm/Makefile
> +++ b/tools/testing/selftests/kvm/Makefile
> @@ -1,5 +1,6 @@
>   # SPDX-License-Identifier: GPL-2.0-only
>   include ../../../../scripts/Kbuild.include
> +include ../../../../scripts/Makefile.compiler
>
>   all:
>
>
> as it does pickup the linker option handling.


Kbuild and the tools are divorced.

They cannot be married unless the tools/
build system is largely refactored.
That will be a tons of works (and
I am not sure if it is welcome).

The Kbuild refactoring should not be bothered by
the tools.
For now, I want them separated from each other.



--
Best Regards

Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASfiiLJd9dOpaJ47pJ4FzgV8JL3vU8okOYz0%3DeaE4OYgQ%40mail.gmail.com.
