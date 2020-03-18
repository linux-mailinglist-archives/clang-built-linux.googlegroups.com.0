Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYFQZHZQKGQEH5DGLIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB5518A16A
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 18:20:34 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id a1sf18134810qvt.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 10:20:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584552033; cv=pass;
        d=google.com; s=arc-20160816;
        b=ILJAy5eYfcF3/uO6iNr9ZlWKnuht/qSkqnv8y2hJ6FVRBZpUHPq23i1GscSp2YNxGR
         LRBIs/IlbxAdgu8SyuRFBwL0A9Nv5K6je3RvT9ZpbFSfUzx+LbzRIE+8MLHwswREn3Vn
         icG8Dp3yPksOJg8kqu9D1lXWtmPSkRT+Q9wzj4CTVET9rJIh6A/bTNVsrLwiejJRMXFG
         sdAe9ILX85keGtupgKq7YMlhIReE1RsSbeXyR9WfFYGHBv5uKpzRUOljsaQoTMGgpDhr
         rCWeOKvkF5OByWELhf+BpSuh/9ur+7ai1lmqLD9pXDJfTztSb3SoEzVW/JxZeZVnyByK
         IRJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V51Y1M6nivr1whRVrmV1/OmfA+fwHoMkcurT384bcQA=;
        b=Hj6/wBgv7rP76lHOmT5fIYqXYZ83adtFb5hWBZ/ABBhLDGPbmBx+7oQb5HCT7NzIls
         n/5U6VtOMqkil5fxESzUgFu0shQGcUsW94a3O2VHAML6Trdpy8FpQBzysis8R4TxIkT0
         8zpBN40LV2b6eZ7Jy+OBLvZ+Ln1rJH8UqZehT6BHPBffh6R4otDZEM6/QkQ5HcfqYxxn
         1KfHgTsCrjy5+EmAiSorBX5wAAjtWovoqvk1T7MTB6I4FIbZTBCjDMeKxrVRgMwWQhgo
         nl/XaS1gdZJkwi/mnB2TdXkOU3WaCqrm5nOJSMhVgmSTw3K4/3b9lxeHUTD4imTdkqFu
         L8Eg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="tA+gq65/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V51Y1M6nivr1whRVrmV1/OmfA+fwHoMkcurT384bcQA=;
        b=NVSJxXlZYf8ZYpunDuABKXE2L7AeJ/UerZyVi0joe6Inokxz/DLL+nUVPGjMOfuGYW
         c1KsjQnMoW4O/YfqV/O8VMQ0Su2l7kUtbXihswkvJwAsidbF7zLh4bJpv919B5x6IXXB
         TNdR1l3b/K/iYeyoZnhYU3Z1qezqq1ap3fWnewnf8JE6h+4ppe046Y0DAMP43euaxapr
         1kHHYoAjceMhXfvvp4duNRIfCqOsc9VqodfgJh8WHaOD9dF/r11oN3mDareytuHqTuQ+
         4loIqVoRwAzFsVHSSUC+Zc9TTi83muye8Gyx4EDb6Xt+9bodVs5LnzrlWzb3UavvjUOo
         ohxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V51Y1M6nivr1whRVrmV1/OmfA+fwHoMkcurT384bcQA=;
        b=hsDIH9RNJmHTmYVTO+kRwEPloooCg0TFF/u0efDlTcHLsJ+qM+XWWaRQJlwhtFha2o
         6+H1d8kzISyovP2iKmpPn9Vl5qW9lv/uLCQEZROZfSCQdR2+pYIsL1/s6kI2VQg18E1Z
         SCs1OBxa8cuSFSVz29toV+snNEdzxjSdASXkvYEIAr598es4XlVLf+5FlNU0xVNgUCM8
         48NdPSGI5R9pfMfJ9C9UJzJXKuzabzVOqX4N0QhrmTtXrP+T+OxlSswsGdqTFjP547y+
         1C2WGdVZErsfLDdmYR4MCPd6mPtKcphUsvbDEwzm8/6PYuUHq+u4A6MA+PUaXJ7V5I8I
         dHjg==
X-Gm-Message-State: ANhLgQ2bX/8cyGNGVQgnv3+Er362MKmzP1UhMqG1SyA6DmVoXCaWgaEN
	8mApR8wLU0g9yoqGdIRY7cQ=
X-Google-Smtp-Source: ADFU+vsd8cNDgkYM/dyXWeDTCOpL8y9rtHKgeH88x5HaojlG0WbNnU3KaBe61yyeTPSxP8pU4KOm2g==
X-Received: by 2002:a25:e04d:: with SMTP id x74mr8102102ybg.105.1584552032899;
        Wed, 18 Mar 2020 10:20:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c102:: with SMTP id r2ls9244329ybf.5.gmail; Wed, 18 Mar
 2020 10:20:32 -0700 (PDT)
X-Received: by 2002:a25:e90f:: with SMTP id n15mr7273699ybd.130.1584552032552;
        Wed, 18 Mar 2020 10:20:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584552032; cv=none;
        d=google.com; s=arc-20160816;
        b=e9MlSjqGUgl7grgymB5YNIoUYsb/ZrHExgOzgeezuY6dk0afzHD2spHN3Qt6rvrwRq
         tpAAwHmMdoyYcdNZKdPIw2SWiQjR0FgmRWnOL2dO1GwCbIv0Z6lXwY/azsNt6iU0S9uE
         ayrLxDsXNumOTW9DXksPyZnuWVvdy2lJjGlM3YFD1vi3loOF/t3h6Ehcwyw/d3Cqo+Os
         kjd7I9VFgr3lPmbuxedh0IjvFM5vkDI3+iN9wiPjvwkgnXnw4Uz4khg8Q5oDB71sApqd
         BXCb369PwPCX4YxyAJUyCl3G/WiL4gQM9QtWNjIx75H+UT48vyZYorwcwqwr9EMojVI+
         hymA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=a8siDjA6N2mtx4ZkPWR/K9I1ePUFYNh7LhevbLLcqX0=;
        b=PjT954ZoL3yUlU4T9b/hgCd4JTz9Ul8193f+CNFxXc+Z5VJtuw/5B4Uh5w+ZTqqmle
         fji4ac0vihUiYHeUILdpR2vCJD7REcqF2ZYO/iRDGRx84GdOEFR2aGOXfoVO7y6aWuKq
         Yk+zB1Y0+wFXi/fIbXqKmIXiPvQ8sUv0xtG967u9V9xtWHGN5hhVvMyQtPT6vg8ugul/
         ycMTEmcdiMFhgxjlQRQjFnhfX2HQA1pMdeXnlXof7INe/zbdvqcSTyqHWwAnrKIu+wpr
         sc+fRA+IFQFR784PaPAmMw0WqY3gJTH5X+hHlhjGb5war471XZx8nl283CfNjvdHvTaQ
         hNpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="tA+gq65/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id y140si57591ybe.1.2020.03.18.10.20.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 10:20:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id n7so14257159pfn.0
        for <clang-built-linux@googlegroups.com>; Wed, 18 Mar 2020 10:20:32 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr5373709pfo.169.1584552030475;
 Wed, 18 Mar 2020 10:20:30 -0700 (PDT)
MIME-Version: 1.0
References: <1110874677.10558.1584545625391.JavaMail.javamailuser@localhost>
In-Reply-To: <1110874677.10558.1584545625391.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Mar 2020 10:20:19 -0700
Message-ID: <CAKwvOd=BDUXvBKT+k=BOcBL1QarTNp8b0OTHfkTKGoHR-h4K4w@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-aarch64-next-allnoconfig
 - Build # 10 - Successful!
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	CI Notify <ci_notify@linaro.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="tA+gq65/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42f
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

Looks like Will and Catalin have fixes:
https://lore.kernel.org/linux-arm-kernel/20200318082830.GA31312@willie-the-truck/

On Wed, Mar 18, 2020 at 8:33 AM <ci_notify@linaro.org> wrote:
>
> Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-aarch64-next-allnoconfig.  See 'Bisect log' in the links below for bisection details.
>
> First few build errors in logs:
> 00:00:30 ./include/linux/elf.h:79:19: error: redefinition of 'arch_parse_elf_property'
> 00:00:30 make[1]: *** [arch/arm64/kernel/asm-offsets.s] Error 1
> 00:00:30 make: *** [prepare0] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="ec947d0be5f959fff44d59161401515a98a837f3"
>
> Results regressed to (for bad == 47780d7892b77e922bbe19b5dea99cde06b2f0e5)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 23
>
> from (for baseline_rev == ac309e7744bee222df6de0122facaf2d9706fa70)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 445
>
> Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/build-47780d7892b77e922bbe19b5dea99cde06b2f0e5/
> Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/build-ac309e7744bee222df6de0122facaf2d9706fa70/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-47780d7892b77e922bbe19b5dea99cde06b2f0e5
> cd investigate-linux-47780d7892b77e922bbe19b5dea99cde06b2f0e5
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce bad build
> git checkout --detach 47780d7892b77e922bbe19b5dea99cde06b2f0e5
> ../artifacts/test.sh
>
> # Reproduce baseline_rev build
> git checkout --detach ac309e7744bee222df6de0122facaf2d9706fa70
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-aarch64-next-allnoconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-aarch64-next-allnoconfig/10/consoleText
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1110874677.10558.1584545625391.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DBDUXvBKT%2Bk%3DBOcBL1QarTNp8b0OTHfkTKGoHR-h4K4w%40mail.gmail.com.
