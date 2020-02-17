Return-Path: <clang-built-linux+bncBCKITOX5G4IN3WVK6ICRUBG3TLSHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5E21615AD
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 16:12:29 +0100 (CET)
Received: by mail-wr1-x43a.google.com with SMTP id t3sf9039264wrm.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 07:12:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581952349; cv=pass;
        d=google.com; s=arc-20160816;
        b=PLjxK5dmoxLs0QMBaiXtbjcAC6ZpIeCDH5VzZ6W2j5Yrz78skDNMXxt0WyyNM1mt5a
         t2fmq+wZPfGxsLEsqMKBO5+MAQSVUS4UnMuT5I6a86/nK4ysFCClRp0jOl94s8Hm6M+V
         YO0mNtOAKpig0stCwKK16T5QMSpgriQewQz4ZJufRAgCwyl3FctO2jNM2EZ61tjEGuOE
         mLeshjutZv13hNiFHO0xLgw4rR2i8qKnsE8HKUTQi7CY750in5IYU0COjEpWXUkdJtAE
         m1JLB09Wt6rHgT6pZSx8ISxgw+qa0+dFvdGH2/BffCFAcXKK0YDJmnF19ByIlyXwD6uD
         yY8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=18VGY0Hf93eesQHDbjfLE+EEUlAgjT9Daw6z4dWKVqg=;
        b=bwE/ff+FVsi+ByGBtt3pZEAhyN1y1hNo0+neoHQoMoDb9ohUlsr9Su2o9Mm8iU7Nrh
         Xcj7fE2AQscXsBuZYzew8BI/nB9BlAOOnDoI6fJIr+rEGybETeAyw0A1ykuobwE3DmXz
         2jMTRM88Mob4IEgFEKU6o6oAauLr3XSb4E13yE/tQ5oBISD/SVKNznQC7gwAo+8Cb2zX
         6OjzYbLBV0j2xP4USNZmojTaPYanfm5MMgmaqsP9AO3GxUCpGXgR6fWJb+k3HbY166AN
         22NJLYmW8FWDZhUIxjjO663MsCu0EzJNO7WotL/4boVS0iEJj5cs/83PYBVm3FqEgOhO
         Cf6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AJEjWPFa;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=18VGY0Hf93eesQHDbjfLE+EEUlAgjT9Daw6z4dWKVqg=;
        b=CtYthVyk2E0ZhrKq6sSmlXqJx40WivgphKF7iT5316EuGGP1Tp87O6YIYzM4rHUeZ4
         Lu2S2FKRoWyBuJENQosgThpDoxOvQqS1UuGERi2nl3IlGPvoXkyb40Ilb7oNqbhzIWbJ
         IfGUrn8axRaMZau7T4XEzbbK1oCkTW7si7e51/sHluWK3bvLxWP3awYHAGthVJpA74Tl
         T5DSjK3hARKoZXPlwcqpsUbn7b8aegXUUIHzMro4bm6HgbFpMDAV1cD2Qbq/6mBS8K3Z
         F6sJWZ5Ry6c9nmrrbIFXvkIQBl/wbmLzkx8SqhC4CBQRjuYWB2DrdjDStK49Awo4NVPi
         rCcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=18VGY0Hf93eesQHDbjfLE+EEUlAgjT9Daw6z4dWKVqg=;
        b=PvE9qn2LdqQVZCxN2nucS/KHoqQCHfUneFqcuCGgDrBkwyOvNVf65TSiJFmeQmM+5X
         Mj9A5tQMOGSveghmn4HjYFs5CzQi/0R9mBgY3/ntOt1yY+BnBFuU9GYYP7nTy0td5Y78
         Ds3wmptJTcP+32rd7/2ydCUDn3kUIDwAc1hlqdNOAcdtxbqaNLQ2qpqgXdUlaLfgJwQu
         iQcrKFdIxXwy6JBJ7p3jo3hpJH/xn2R3PQVueIWCyJ3DdnrxvLoMW4sG7L7ngTWaVQGe
         q/xZi9xjRQtFnHHuYQPn+GRVaWRTp74e7yNniGxSG3HBQUOgUUqzgDH7cJ9IY3RAUjnZ
         XXCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV7I/TpJxTUPdMFXfrkZl09b1HV4CXFFpvjLdqlyHbMlZxi/dt5
	KRzhkHYPb0dSI+zTTkhzgQQ=
X-Google-Smtp-Source: APXvYqxXCK8+bO6Hsewsdw87n66noi+WxbfqQcGPeccTIilt/IzypNY06DujwG6JPO5YijgldcXvrA==
X-Received: by 2002:a1c:9ad7:: with SMTP id c206mr23497206wme.140.1581952349625;
        Mon, 17 Feb 2020 07:12:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9d13:: with SMTP id g19ls6283441wme.1.gmail; Mon, 17 Feb
 2020 07:12:29 -0800 (PST)
X-Received: by 2002:a1c:238e:: with SMTP id j136mr22984020wmj.33.1581952349114;
        Mon, 17 Feb 2020 07:12:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581952349; cv=none;
        d=google.com; s=arc-20160816;
        b=rN1xU7k9xtWwW2zoj29Scx6xLqo9AOp9zQGS+9p7dPmau+d766fG4bZfbrv3NdkOOS
         tjBVYL2ug9HCRoAjBx/ZE75cRAVaUNrCxYqeC1OK/HDdX+H2pz9uEfwudXnITEjECEvQ
         HjVjCfNQeb8INUP2oRAKuSnpcU7vpRz9DXOf8XWfBfbuTeqYHMGmDO87Sc6yifZkFBHo
         IphqmPb02bjnON2HQZgTnPjZbLzMFuEDEnhelAfsSbpbS77wJLawCImwS4ShrAGFHtLB
         XO3L/pUXXCRCHG9cOOT2WNlYGuGGRMGaeWO8l18EHlYTO7UmwOnZOBM/o334tjujUc+S
         +WPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=x3BHWyhO24RxKeq2oP1JO8fAVzZ56h66vZcLYjhOY20=;
        b=S5/DLWRRoDHvCFgmU+pRuvGYxKO0QnW1C86lBn7XokbitGb06ZuP1z/8RfDXBtAGI2
         LvBQ0YVxf9Vnky0Y3mXGo/i2JOQZajQ8HaQT3S0ik39OT3nqBXl2/ZbKHGLknU/Ul2My
         hjM3736Z6TVOhdd2ytfqK0Dm3zcpj5TCaZrUWfYTfgKFFqfeynJK9alrxpyOBtnNXWij
         gPxluVGgTvvbFKiqS6ql1vFRq3MNVRVE/5rDbM3inKb9vSzhDdSmA+ur6VAfOQPj8awu
         9HqA3GoDxnD+vYyTK4aYqpQvKXC/bxW75H9D2g3Q6GrHhQG72lnfMMcuw8G0ldLbZKfW
         Mg4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=AJEjWPFa;
       spf=pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id t83si3436wmb.4.2020.02.17.07.12.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2020 07:12:29 -0800 (PST)
Received-SPF: pass (google.com: domain of maxim.kuvyrkov@linaro.org designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id q8so19254036ljb.2
        for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 07:12:29 -0800 (PST)
X-Received: by 2002:a2e:9c85:: with SMTP id x5mr10386119lji.50.1581952348800;
        Mon, 17 Feb 2020 07:12:28 -0800 (PST)
Received: from ?IPv6:2a00:1370:8117:ad06:be:9b9e:7827:a55b? ([2a00:1370:8117:ad06:be:9b9e:7827:a55b])
        by smtp.gmail.com with ESMTPSA id p15sm494518lfo.88.2020.02.17.07.12.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 07:12:28 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 60 - Successful!
From: Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>
In-Reply-To: <CAKwvOdmedWw24vjA86MX6GOH0wimjMfJ9-72G3YgJOy9bgYdMQ@mail.gmail.com>
Date: Mon, 17 Feb 2020 18:12:27 +0300
Cc: CI Notify <ci_notify@linaro.org>,
 TCWG Validation <tcwg-validation@linaro.org>,
 Arnd Bergmann <arnd@linaro.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
Content-Transfer-Encoding: quoted-printable
Message-Id: <D5BB60C7-421E-4CBC-B2C9-BA1B118088BF@linaro.org>
References: <2010268003.1897.1581700376697.JavaMail.javamailuser@localhost>
 <CAKwvOdmedWw24vjA86MX6GOH0wimjMfJ9-72G3YgJOy9bgYdMQ@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-Original-Sender: maxim.kuvyrkov@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=AJEjWPFa;       spf=pass
 (google.com: domain of maxim.kuvyrkov@linaro.org designates
 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=maxim.kuvyrkov@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Nick,

I'll look into switching HOSTCC to clang.

Re. ld.ldd, we have been linking defconfig configurations with LLD for seve=
ral months now.  Other configurations didn't work at that point, but Peter =
Smith's improvements to LLD should have fixed that.  I'll check if we can s=
witch all/most configurations to LLD.

--
Maxim Kuvyrkov
https://www.linaro.org

> On Feb 15, 2020, at 12:31 AM, Nick Desaulniers <ndesaulniers@google.com> =
wrote:
>=20
> Hi Max!
> I noticed that HOSTCC=3Dgcc; if your clang builds have all backends
> enabled, could you please change these to HOSTCC=3Dclang? Also,
> LD=3Dld.lld might be interesting to test. (Everything but AS=3Dclang
> should work with LLVM).
>=20
> On Fri, Feb 14, 2020 at 9:12 AM <ci_notify@linaro.org> wrote:
>>=20
>> Could not identify regression in *linux* in CI configuration tcwg_kernel=
/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below fo=
r bisection details.
>>=20
>> First few errors in logs of bad:
>> 00:29:55 make: *** [vmlinux] Error 1
>> Configuration details:
>> rr[llvm_url]=3D"https://github.com/llvm/llvm-project.git"
>> rr[linux_url]=3D"https://git.kernel.org/pub/scm/linux/kernel/git/next/li=
nux-next.git"
>> rr[linux_branch]=3D"0bf999f9c5e74c7ecf9dafb527146601e5c848b9"
>>=20
>> Results regressed to (for bad =3D=3D 9f01828e9e1655836fea88d0c8225d64885=
0b33a)
>> reset_artifacts:
>> -10
>> build_llvm:
>> -1
>> linux_n_obj:
>> 18431
>>=20
>> from (for baseline_rev =3D=3D 0bf999f9c5e74c7ecf9dafb527146601e5c848b9)
>> reset_artifacts:
>> -10
>> build_llvm:
>> -1
>> linux_n_obj:
>> 18457
>>=20
>> Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llv=
m-master-arm-next-allyesconfig/60/artifact/artifacts/build-9f01828e9e165583=
6fea88d0c8225d648850b33a/
>> Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-b=
isect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/build-0bf999f=
9c5e74c7ecf9dafb527146601e5c848b9/
>> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-m=
aster-arm-next-allyesconfig/60/
>>=20
>> Reproduce builds:
>> <cut>
>> mkdir investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a
>> cd investigate-linux-9f01828e9e1655836fea88d0c8225d648850b33a
>>=20
>> git clone https://git.linaro.org/toolchain/jenkins-scripts
>>=20
>> mkdir -p artifacts/manifests
>> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/=
tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifacts/=
manifests/build-baseline.sh
>> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/jo=
b/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/60/artifact/artifact=
s/manifests/build-parameters.sh
>> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-l=
lvm-master-arm-next-allyesconfig/60/artifact/artifacts/test.sh
>> chmod +x artifacts/test.sh
>>=20
>> # Reproduce the baseline build (build all pre-requisites)
>> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-base=
line.sh
>>=20
>> cd linux
>>=20
>> # Reproduce bad build
>> git checkout --detach 9f01828e9e1655836fea88d0c8225d648850b33a
>> ../artifacts/test.sh
>>=20
>> # Reproduce baseline_rev build
>> git checkout --detach 0bf999f9c5e74c7ecf9dafb527146601e5c848b9
>> ../artifacts/test.sh
>>=20
>> cd ..
>> </cut>
>>=20
>> History of pending regressions and results: https://git.linaro.org/toolc=
hain/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-master=
-arm-next-allyesconfig
>>=20
>> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-=
next-allyesconfig/60/artifact/artifacts/
>> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-=
next-allyesconfig/60/consoleText
>>=20
>> --
>> You received this message because you are subscribed to the Google Group=
s "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/clang-built-linux/2010268003.1897.1581700376697.JavaMail.javamailuser%40=
localhost.
>=20
>=20
>=20
> --=20
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/D5BB60C7-421E-4CBC-B2C9-BA1B118088BF%40linaro.org.
