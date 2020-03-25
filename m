Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT6I53ZQKGQE6RM65RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 77063193077
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 19:34:57 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id b204sf2843033pfb.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Mar 2020 11:34:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585161296; cv=pass;
        d=google.com; s=arc-20160816;
        b=b5P7xNFapK9zK0S9PDwW8Mfu484UCmhF7bJqgDaSaJly71n7ndkn1UIant6FcqZ2P/
         LuP1JoKNMLTE8qUbSUjzEWCSCTBWsEe4IYJdTJoT4G6JP9ARe4kTu0mIQTIooC2FJyfm
         oaZfpXrkcW8QEr9LqtzkefJux6thu2lkyeF2teIDBepEWb0TfCY+cvF+RwzkhGs/Bz0u
         pQH/08//EGTm1yYeiP7npk/C6NDu6hJoSznYtFFAFn3EqSZo0OSuW6Xjfp3JANlXNfCJ
         TNiVyerYc7rF9BKsdnyKXOCkNmFmkBfNShMeUZvZVJwuUtdSpg0ixVWoXw/qsXFEbDiA
         4L1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=YoO/xYbZDDL4e6y+WQ5Lzxp4Ci4bVoBVnL4hdL0M5M8=;
        b=0aI0FRrRDoiU+1i2me9yQ6JDDBvEOfOZ/I0ybAnxl+SAbMvzA12jlRib+U6+Sbowkd
         Gy3JMfrdxlQv4NeEeR9SHicBOnagf0CeKF2WqnNfbyfEJh4hVRyRwRjftozr6sdrpak9
         aWAwgtSKplLxBJD9CQ0+S8C6/OTtyh/1z23jVc1PrBgaLZC1EqGWoo9Dcwie4v+50GLN
         PznZ49FoMMX/PSdLDyiDF9b+1LZLjjnyzXU6F4RmCBQiP4/+9isjbBxVefwho2+GtiX5
         xvhx5Da8nX9ug2vWFDbBrZv022siEzWwLBstnv7p/E1DuxUyt4DkFgXI2e0A8tlhTH3z
         MEYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hCr0mPfr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YoO/xYbZDDL4e6y+WQ5Lzxp4Ci4bVoBVnL4hdL0M5M8=;
        b=Tcd+0LhpEdWdWPg9H+Gwc44sHGXsT4XOe1Y55yPf1mMvqTTOYfaAmNhA0IufCw8x+z
         1ZuBmsCwF/v76ydS51UXYXUvDTIWrp6Bdv6EpxAqO3hU493RAJSTsqWR0Ttk9uQmcyiq
         WH5hz5Nxm02A6nAC6MS+Z9fgdSVrZBweZy0e80kXtf/RNbe+nNorf8xFTXOyR1L5iITO
         QL+IzibMgT9ib91xvfIAElzQFgMrJfwlfTzZeiHcRXC3djPbNSe3JaV/jP0n3bIZKdH8
         gCy6P2G2YG97vIu/0pqp9w0dVn21UqRt7Luj54++AssrtopSgBJDNdKt7zPVCX5PHoDw
         Qyvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YoO/xYbZDDL4e6y+WQ5Lzxp4Ci4bVoBVnL4hdL0M5M8=;
        b=lik4zica+cmLsgUJajbsfS/6BxKKmGjaLChSQDEComJBzi2rMNAa8S5IGfMuu27eES
         Lw2pCQ/EcnUntjJpcab4r+KilZlflpPgrl7mc6pGup9eSsH84W4khnWD0KJbQ8h+9OiG
         Y5WvPSqZgwjgzLRFcJmbAqzT42WdXAHIc8LFX/QE010xZNKOfdh0hvxVCQvtL6MiL8fj
         WnFxzPbhDrGERU1hlCLhdSkvBQkqKc/GcgYdbY/p+Wk2haXlTQM5ZVLwIK4MlG4qratr
         SsyiKhDeRoNfA/p/3rsaFOC9deJ3iQM1m5fJrGjc5kwtB84kszHSO9pu6viT6mo83a7A
         FOTw==
X-Gm-Message-State: ANhLgQ2XV+nwyLhQergYnv4qLZftQgMj5JrBFF5G19Eyh9IMa54TZli6
	k69s3ZK/iFdec4va/S1qkpc=
X-Google-Smtp-Source: ADFU+vv+pRCqx+v9r+v7xPVZH6dgutwlOpbOF9FJxMdZECShQ7wVwOpIfpVKj3b/0HpnyXQW7xi19Q==
X-Received: by 2002:a17:90a:9501:: with SMTP id t1mr5319175pjo.108.1585161296014;
        Wed, 25 Mar 2020 11:34:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb93:: with SMTP id m19ls2194681pls.6.gmail; Wed, 25
 Mar 2020 11:34:55 -0700 (PDT)
X-Received: by 2002:a17:902:8505:: with SMTP id bj5mr4414001plb.235.1585161295554;
        Wed, 25 Mar 2020 11:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585161295; cv=none;
        d=google.com; s=arc-20160816;
        b=rs5bAmqRV/67iHRK9O+WRcSQ5/GQslwLJY+nqBKpHI6Ff7sqCikqYkTa3oLQq4UcSo
         nbjLwWvDNJUWBkyBZtOExwPpdQsf+sR+EaSdtmAc6BceiA/s8drWaG0YbuLtGSb79HNq
         qdMimSfVhpLRTiLm9GUFtN1VzviQZXr/fFXkxUDkezSjKychhDlEQgMUk+W7CUt4lVJS
         4/yTQkSSRZsbl6I75iQrynR59X+C5+K8R+KkPgsQ08msQf6HvITC2r7hfgpRLgIX1Wnt
         GPkaCq/Q0jdFJOueLBXtMxvV/R1K3B/gS5WNhGtddVmp6/Y59Yo0ziLVnJxg89D/9cGr
         sT5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=abZSSoFfWLtXrtYNWAwRIgZRjZlhtU92nSG3OON9CEo=;
        b=M5gLC1RA29pTeH1RQ99Kxs5SFFdTrDAUsiXUJjsqFZCcTd+58cGpCb38TwTVPS03Ky
         qx/4hKfICGNe4ehGbRfM2BdRiqIUGDDWGGoogHnwZz+bsR28TjwQAG+NdsL7jCT2B1am
         JnWZXk42ds+6z8t0oTbRPHseD5zEXXMpdX+NhcbKS5/2ovs2LHLjwfeDYlI5BxVfAc/T
         TKq5amwqOQB8Gye2E44yhhRFIzIjuH610cOAukKB1C5F0+NlNYoZftVso0N2Vcg+NHsV
         3NqQ5mPdWHJ801U6W6ZhmvbGZw8iFwxLIZ8FJrAYzLSVjb1j+xF/+E5rZ47McS7W4tmy
         6Uig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hCr0mPfr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id a141si1131366pfd.5.2020.03.25.11.34.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 11:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id j29so1569581pgl.3
        for <clang-built-linux@googlegroups.com>; Wed, 25 Mar 2020 11:34:55 -0700 (PDT)
X-Received: by 2002:aa7:8b54:: with SMTP id i20mr4738744pfd.39.1585161294896;
 Wed, 25 Mar 2020 11:34:54 -0700 (PDT)
MIME-Version: 1.0
References: <884638130.11728.1585158776734.JavaMail.javamailuser@localhost>
In-Reply-To: <884638130.11728.1585158776734.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 25 Mar 2020 11:34:43 -0700
Message-ID: <CAKwvOdno7Qj5N2P4pUvRWyr_=GPbftC0FmrYbN4Gy__-DiOxcA@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
 - Build # 62 - Successful!
To: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, CI Notify <ci_notify@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hCr0mPfr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

Looks like https://github.com/ClangBuiltLinux/linux/issues/325. Maxim,
we suspect this is a bug on BFD; Peter Smith suggested that LLD's
range extending thunks should also be done in BFD.  Do you have anyone
working on binutils?

Also, we've moved to testing Clang builds with LLD, so that works
around the issue for now.  I've proposed a patch upstream to simplify
builds with LLVM, but it hasn't landed yet:
https://lore.kernel.org/lkml/20200317215515.226917-1-ndesaulniers@google.com/T/#u

Finally, I've added a label to our issue tracker for bugs reported by
TCWG's CI: https://github.com/ClangBuiltLinux/linux/issues?q=is%3Aissue+is%3Aopen+label%3A%22%5BReported-by%5D+Linaro+TCWG+CI%22

It's definitely under-reporting because I haven't been good at
tracking these precisely over time, but I'll try to be better about
it.  Hopefully the above link is something that you can use to help
quantify the benefit of TCWG CI?

On Wed, Mar 25, 2020 at 10:52 AM <ci_notify@linaro.org> wrote:
>
> Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.
>
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="f15e8108f6251f3480d572bca5729c1b849edfb3"
>
> Results regressed to (for bad == bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 18582
> # First few build errors in logs:
> # 00:33:37 make: *** [vmlinux] Error 1
>
> from (for baseline_rev == 76ccd234269bd05debdbc12c96eafe62dd9a6180)
> # reset_artifacts:
> -10
> # build_llvm:
> -1
> # linux_n_obj:
> 18587
>
> Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/build-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6/
> Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/build-76ccd234269bd05debdbc12c96eafe62dd9a6180/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
> cd investigate-linux-bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce bad build
> git checkout --detach bfd7a248502373da8b1c8eb0e811fdb19cc3f8b6
> ../artifacts/test.sh
>
> # Reproduce baseline_rev build
> git checkout --detach 76ccd234269bd05debdbc12c96eafe62dd9a6180
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/62/consoleText
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/884638130.11728.1585158776734.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdno7Qj5N2P4pUvRWyr_%3DGPbftC0FmrYbN4Gy__-DiOxcA%40mail.gmail.com.
