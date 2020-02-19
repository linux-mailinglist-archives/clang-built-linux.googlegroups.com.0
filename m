Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQEMW3ZAKGQELOQ4FCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id CC713164E4C
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:02:25 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id 91sf670338plf.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:02:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582138944; cv=pass;
        d=google.com; s=arc-20160816;
        b=R6AKA2EnDvTXWqIHXSinhG+2cNmMmzaUGvI+cbBjk8ZDKNLmVyO2k/tonHkxazgBnh
         /VM7cI67LHAO5RT7buBTnWsve1s6B9zRkOYrajpGJOWctEtHH8/F002t73AuiMRt5pm5
         WneWfCxB07lEl9zg0I3UlWWR4sH3zmqnqCNInQo/El0hPJzq/crHSuIBFgCpFrdfxd1E
         aHO8yLxPSWKXhQWklbD3AFHzCDpEoYyYS3bKnkCUBBv2NphjYhI8rU5RU8rY4icxSy0I
         4tf8miMEWONwud/5yqXDJP8sch4a/HPDloBGWz3BY4kDTfuO2Tgur7NwU5eD0Rqx8w1W
         4HUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=XybSBYET8BugrpmsfnbTMZRRM3qRIY4meGy5XylIwMU=;
        b=x7Ztq5yYb0ufYjJypWNTnVbp87zYGyGlv/ynj4oYOSdk/DOMkQooQAztZg0d537oXD
         GufP1sYq6FAgkX+npn9+ZNpMzToyYOLDgVQcpV5rJyenTGz6HwZ+HZzFBzPrvPGtBPqw
         9D9Cos4KFkD65bx5PyBJIZzcfojbSYZo4o5V+zhG2v6hj35Rd4EefgtcL6R5/LMeScvc
         +gnkEiVTwB+kagP2fd/PknuyHvPO34DnsRvR7YHMyYqB4UheBucOLkXRjcaN1mPZmcmq
         W7B9BMUh1VuK47qcFxpiKxr5B0aLeUDimLeDV+TCd6lN6ppXzsfUqta/vm7CLxqjNE7p
         8JKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bn2uNQhN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XybSBYET8BugrpmsfnbTMZRRM3qRIY4meGy5XylIwMU=;
        b=B7TY6mLBqidOTdZnjg3GP6AxpY4VGwPzPprMN2Zq7am0s+k62GHtg7BIIDnt9QZopq
         QfOiXFyuGuuVqTOiGtVsaXzQUOP4xkZjesjPDl4T/oQmAV6Ii4Nlguu7lCvoILXOMyNd
         ICvNlXt5dYE9MazUuscQt4vAPi9GEkC5sX8k8mETQNS47HJ0h0xsTFLUIfI1wZPco+AT
         wUDcVfRKPno1hAhHIbCiBcTNCraUi0nunaK18HEeJRpxod1zd0UANtPXF3OO0Z+t0wPu
         Y72bCZHgT3hiG1wyIK+lxU2oibL+7JOwkMKtO5WMLV4HIsYO6QIUeqFMXrHdAGRnDvv1
         N1+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XybSBYET8BugrpmsfnbTMZRRM3qRIY4meGy5XylIwMU=;
        b=sDHFSx4KPO0HtbmM8ms2nXJZnHc9tSFntr8bFeGyDSUjLQWFNCKM2Setgr00o4Y635
         ZqsGnq6HZxDoiVCAyhTQijKJ/kpJV5S5r4THs+2hWagygEcfQ1Uyi/U5vUyQ2yRQ2iDh
         Zsqg9suVfD09/p/HxckEL6qQGVVPnYS2THVhW2t4x0wNUrfde30k4pd9j6yt8gUGitgN
         r/8ErfyWNd5cY/vkiFWk7yIisa1MJXE+ksbYvWaPtMqoFxxXrR5E+Nl1KJFF8pFuiiUN
         OTNLyZDNbH1tR4ZIIvMG+zHDSUcnsoy5Hk0vNcb2ZSUW4ZHij+qH7uQQhAK2Q4Yf9HVR
         00Cw==
X-Gm-Message-State: APjAAAU4u/siJKKdMdsCW0BWYubZwGQkbeW1gjE8r/fHeds/8xVzn2Ej
	0WZeBcL2z1ca+KU+gaepEBw=
X-Google-Smtp-Source: APXvYqwYTkJ+FdLGmqAXyZPQTGStdS4/xLXqKH4uAbc7bH8DYgPm2Ou6akQ3asqMWHrTvM76H3X4cA==
X-Received: by 2002:a17:902:bb88:: with SMTP id m8mr27269224pls.63.1582138944501;
        Wed, 19 Feb 2020 11:02:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a1:: with SMTP id q1ls7588122pfs.9.gmail; Wed, 19
 Feb 2020 11:02:24 -0800 (PST)
X-Received: by 2002:a63:c14b:: with SMTP id p11mr29388982pgi.290.1582138944084;
        Wed, 19 Feb 2020 11:02:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582138944; cv=none;
        d=google.com; s=arc-20160816;
        b=oIh3mV11Hhr93yl6IiDfdeQRI5iROOhu1fbKZttUAd1NO1rFTVjuP+ghCbHJimiPR/
         UFfQ69LAzbtUEruJshOBdlOeEkXVQ8AI9vlETXnLpRgaU8SRaDakSsbq/j+fd2R85hPa
         +nrAnUmBJpn9puAXQ+vf5M3+GdHIZxe+SNhOJ4xzLjiHYGBZp/VHs+PbtITh9uN84ukR
         2586S7sF8dvb5PaghPHEkqqvKoftxVa5AiV85/xDaQhcxqjwjjbB++it2tVTImC3HKBN
         fkdhb8coMNr/dIr0KWxQiK/1ZVs+nFtK6nJtx8tbq3Lcp/Zwmubh4OSsoCvwqt0rzd8i
         b8zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=76R4kDtaac5mYD6+U90h8zCKYrijWIrfTtvht66XuxQ=;
        b=FSWWgbtmoD6DBR6SPbOLEuQztcsZyE1ujgOfNhb2ABkaCJvsUzt60wcykv3cqEjDPf
         MvV1iS69MakjkGTVSDzAvHs4zjOIY8gOsO37KCjD8FfKprHcwInU9soaC0MSUFShiwdG
         ZUWFvkO2au+6KMvHNLMy6v1ahzQUjrVoL6dt1ZKpLvyxg9rr35K6RuO758SWxo9bCo8Y
         pzobh9SD8wvZ+zHlR3FCXq7gJQ/A/16ugWm7oTboOSnmky07wdEfSJCrykK/OqY3+RQA
         fADkx1zByZ3tIa6hRjCneM/tUR+9pOTSI+lXGlYhBgkFTmHONF+0ZmvIGoXWAfwNf6De
         mTUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=bn2uNQhN;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id o9si44863pfp.0.2020.02.19.11.02.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:02:24 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id m13so459304pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 11:02:24 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr10661993pjk.134.1582138943391;
 Wed, 19 Feb 2020 11:02:23 -0800 (PST)
MIME-Version: 1.0
References: <479216940.2727.1582137444451.JavaMail.javamailuser@localhost>
In-Reply-To: <479216940.2727.1582137444451.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 11:02:12 -0800
Message-ID: <CAKwvOd=tQX=iqaQmkbd03vN4wSu3RgHah9wp_zPXcF8Qi9x1eQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
 - Build # 61 - Successful!
To: CI Notify <ci_notify@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=bn2uNQhN;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102e
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

https://github.com/ClangBuiltLinux/linux/issues/325#issuecomment-583721094

+ Max
We should start testing with LLD.  While it would be good to support
arbitrary combinations of LLVM and GNU utilities, I think we should
focus on all LLVM builds.

On Wed, Feb 19, 2020 at 10:37 AM <ci_notify@linaro.org> wrote:
>
> Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.
>
> First few errors in logs of bad:
> 00:40:48 make: *** [vmlinux] Error 1
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="02815e777db630e3c183718cab73752b48a5053e"
>
> Results regressed to (for bad == 1d7f85df0f9c0456520ae86dc597bca87980d253)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 18434
>
> from (for baseline_rev == b1da3acc781ce445445d959b41064d209a27bc2d)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 18437
>
> Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/build-1d7f85df0f9c0456520ae86dc597bca87980d253/
> Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/build-b1da3acc781ce445445d959b41064d209a27bc2d/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-1d7f85df0f9c0456520ae86dc597bca87980d253
> cd investigate-linux-1d7f85df0f9c0456520ae86dc597bca87980d253
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce bad build
> git checkout --detach 1d7f85df0f9c0456520ae86dc597bca87980d253
> ../artifacts/test.sh
>
> # Reproduce baseline_rev build
> git checkout --detach b1da3acc781ce445445d959b41064d209a27bc2d
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/61/consoleText
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/479216940.2727.1582137444451.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DtQX%3DiqaQmkbd03vN4wSu3RgHah9wp_zPXcF8Qi9x1eQ%40mail.gmail.com.
