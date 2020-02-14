Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNFDTTZAKGQEIUZGIAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 97FC915F8BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 22:31:33 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id j9sf7540945ywg.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Feb 2020 13:31:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581715892; cv=pass;
        d=google.com; s=arc-20160816;
        b=sHZCnZiJ6lm4GbLQCavi7iaZWbuct5l4ZbjVhbOI+TnKmmUhyIrp6tRzFQVSi8fDKM
         TNI9w27xMOG9/5v4YM3cL04//avgrsaNmf2p+kFxStSg9ycdGKuRzmAlmMxVghsMxAst
         Uxos3MHjOg3uuIcnjHTiUQuGZAAapBvZQxm0JAldQWGmP9gUaF20iovzquh5E+4jW+h0
         JI1nGtVIU8x8jbLrvGNUvUL4MzZcUn3Cfw+O4YNt+THWjtcrRe3hGumKtdiXW7d7CGRa
         NPOTfI+Pmu7cbX35rr5DHDs55aJ2JUIaW7bCoidLaUhvoUqBl8vUauGw8FJBLGEcSWo1
         8oDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=mXw0Pe7DhTS/G/soDPY5ADfEVy++rpSz/zWnyr1hcKM=;
        b=ECNRxHx7jaEsp5dkmUP2qCfX01E+g/Z4wsOEqdO/71/Me4umj09egvFUH/PZn5MHWl
         kI4MTEjYYUcZYCBYpC63Pluc++IUiUT/QSW9lXZqh5RiueExR4b8Rl1eeo2AOFQy8M/O
         YlO74fZBYgdiPvfc1AMQ04MkMwZQq5BPpkDswApm7Yy9xqVGxLZGJAUUj0uE2n1Bi8Be
         r9e1TNX5Cf0XIBvRD1Zht3FN/hXMc0pI7ZWPIMQfmpw1JI6pfvl/BRdRcy7AiVujToiB
         rApm0553KDPrlkSuqUXWGU4FDJ7Yt09/Pksw6VR+F+K9sX+vZOFS8E0tOMnAFDQI6A1m
         NhMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iaixtzgq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mXw0Pe7DhTS/G/soDPY5ADfEVy++rpSz/zWnyr1hcKM=;
        b=J5UEv75dOWeeX6SiTMCYXKzN07O2nUUh4oAZwKWIRPU0IHtuc0UZygYqfwtb0F60Iu
         7HxHxahdqYU6/z8Zf01sGkZeuxGaLDxVnHm4FvqmwY7qxAUzEVVT6zkdrkXzoNm7eMZj
         nTxLYX4XpTqOzIoib4pIM5Onjg6wNxsSjo6HOMf2xbs5fSOmS0eV/vRj+mZDp5nkA00J
         nc1rREb0MmZeeSEEXGheCHWiBsJN55yOk3sP4JEdlz/fcWpZBADCAIgGrz29WKoIaLQ1
         8blf9aJuhVA8Zc07bDOIgCplbxTWsoYhDvk1Gy0OM3vHKURfaAZ8cA8rlM0cNK9fjDkc
         UuJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mXw0Pe7DhTS/G/soDPY5ADfEVy++rpSz/zWnyr1hcKM=;
        b=rDxqJNLMuifmNj/VnlXsj4oIZXKsulFtrOZwIBTORWTy6684vFjTw99l6TVTQ2q7ms
         qYmt6lTtSPWn3/Q1pgUwlWqmBsDmSAFL0zhnnIy2HUaMiLhqZv5qRpRSUtCajdBedWd1
         x7QE/2E9/yTiMnihmH8YTgYytN8FB7H3KxGbr3lj7vMgOt4JlChMNWJ2viy5OA6THs1l
         AJQZd3Ly1kK8RB5CT3XvnFJSAX4Pb0+HUnAgv7U5REQifeVE162ekCChAOXaZRrpjcVa
         wTrntfVOO1Yvuj0IZyfgX59NE+ptDxGERafn+BmSu1PVZPNBa8TvtJ9PTuA1lNV/hBdE
         jMpg==
X-Gm-Message-State: APjAAAW19JbYZcjuct7QabQMzm85YIHQPTUGPN6S6VyeYlrjPN6wcbsi
	SbBTtI50HFGOu7hx518Pp34=
X-Google-Smtp-Source: APXvYqxo7BsdJOMzeF8rGXLzef7qVFv03heg1XPexqtyXsW4hPOEJWJuTX9N2VYt0eiD2I5oyLN0cA==
X-Received: by 2002:a81:17cd:: with SMTP id 196mr4454582ywx.153.1581715892584;
        Fri, 14 Feb 2020 13:31:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:cb42:: with SMTP id b63ls746864ybg.6.gmail; Fri, 14 Feb
 2020 13:31:32 -0800 (PST)
X-Received: by 2002:a25:ab41:: with SMTP id u59mr4895005ybi.396.1581715892161;
        Fri, 14 Feb 2020 13:31:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581715892; cv=none;
        d=google.com; s=arc-20160816;
        b=ryzx/DeOhFzWPk2xzaweh3ShCKnDdnIySiNKhf9i7La3kVAXHsOC7M/+8KdIiYhwzs
         QBzlLWBnXfRb+WTDS+evmiUS+P90pi24aQQ5zgjDZFXpLhHw1USYxNzGcgdMz82XVbfF
         h+bnApUcsLXUMW8WM9GjeIhhCc61GTe8AeAENTk+T6A+LBdDNZ8vyCDqmAUwRH0Gs8Hj
         nR8wn96IGRxqlkI/hkB4sNRkQLoYj0B6GwLNSK31Kmqf+BACw1nSukPeokKQg3Yd+dNA
         TVx7q13WA2O6UeBfoPW/h34Vki0IwlLu5kii0OIEhPJ5qAi1+IHYTjVE//JneYHfsH8r
         +O0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2efwVtB3Bw+e5D6BlLT5B2VW8dSHegKrHhTNhWIF12Y=;
        b=Lh1giYGoU6q/Kni/8Ur3PxB82GVphs2VLsIpsVzzrfXL6Fla0/gxDd3GDmu7QNxKn0
         gVUsHFeX2PeVEgNUzEuNupc/IbEt7JtfDe6uwDgaAHQWvNiYAC0EtmZdKA4tcFgByHeK
         IjnMQcnUUh5u9fAZ6Tw+jdTXNmXqFDW/1DF+4++nVpz2Q7kcVX2m/u+boZK7kqgkq4zl
         3t3fol8SF7Bm4pjQmfa7zDYg5Plw01DuxpHuSX/+re5l7d4pb9sQAuZhWrbW+K3RW4k4
         sXnRmcRuAFHo404iLFUIl7xNy6Eog0E4LK6rUTLA2sMOkMWzRIQpoztIQAMgCcZDklgK
         i7Gg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=iaixtzgq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id e81si60454ybf.5.2020.02.14.13.31.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2020 13:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id m7so1044367pjs.0
        for <clang-built-linux@googlegroups.com>; Fri, 14 Feb 2020 13:31:32 -0800 (PST)
X-Received: by 2002:a17:90a:be06:: with SMTP id a6mr5974169pjs.73.1581715890856;
 Fri, 14 Feb 2020 13:31:30 -0800 (PST)
MIME-Version: 1.0
References: <2010268003.1897.1581700376697.JavaMail.javamailuser@localhost>
In-Reply-To: <2010268003.1897.1581700376697.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Feb 2020 13:31:19 -0800
Message-ID: <CAKwvOdmedWw24vjA86MX6GOH0wimjMfJ9-72G3YgJOy9bgYdMQ@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
 - Build # 60 - Successful!
To: CI Notify <ci_notify@linaro.org>, Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=iaixtzgq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1036
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

Hi Max!
I noticed that HOSTCC=gcc; if your clang builds have all backends
enabled, could you please change these to HOSTCC=clang? Also,
LD=ld.lld might be interesting to test. (Everything but AS=clang
should work with LLVM).

On Fri, Feb 14, 2020 at 9:12 AM <ci_notify@linaro.org> wrote:
>
> Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.
>
> First few errors in logs of bad:
> 00:29:55 make: *** [vmlinux] Error 1
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="0bf999f9c5e74c7ecf9dafb527146601e5c848b9"
>
> Results regressed to (for bad == 9f01828e9e1655836fea88d0c8225d648850b33a)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 18431
>
> from (for baseline_rev == 0bf999f9c5e74c7ecf9dafb527146601e5c848b9)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 18457
>
> Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/build-9f01828e9e1655836fea88d0c8225d648850b33a/
> Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/build-0bf999f9c5e74c7ecf9dafb527146601e5c848b9/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a
> cd investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce bad build
> git checkout --detach 9f01828e9e1655836fea88d0c8225d648850b33a
> ../artifacts/test.sh
>
> # Reproduce baseline_rev build
> git checkout --detach 0bf999f9c5e74c7ecf9dafb527146601e5c848b9
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/consoleText
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2010268003.1897.1581700376697.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmedWw24vjA86MX6GOH0wimjMfJ9-72G3YgJOy9bgYdMQ%40mail.gmail.com.
