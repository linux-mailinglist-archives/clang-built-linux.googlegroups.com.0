Return-Path: <clang-built-linux+bncBCT6537ZTEKRBV6F32EAMGQEKXBCYQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A31A3EC22D
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 13:02:48 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id m14-20020a0565120a8eb02903bcfae1e320sf3598423lfu.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 04:02:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628938967; cv=pass;
        d=google.com; s=arc-20160816;
        b=MkuWkpmMWqKFP2yDSFDhTY+Ty8fJ0LB0espXmSliVPl7I9wiGuNnfy02xOgs8mRPK2
         1RqBUsC0mXOmJ08qgKwyWDlGJQp4gk1sDIIL5NaKK1TJo5zzSX2WJvUeo/glt/TuiITy
         I3+m3nh0YXJv3QFR7DLA0vl1SaDRBW9Idyq9cvo2LdyflG3vbtscaHHmRvLaiNcOq/wI
         S9IZawRaytM2xe1VvnwFGZ1g7KHOs7ApU29nb8utzhE4lbuECZ860/5j2KLm8CYLIOTV
         4q7bBGJNmJFzm4HXxgqQ2Jv88CJZt0shtUeckPQalmPqWB0YRaUZImYQBdSB97HCfP6Y
         z9Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=R419GyelyFpno/Rvbi+IhMN3XQpvlD4Abne37zUxf1w=;
        b=SOfDJmKIKLd7zs5UC41uIGsFF8qGOkEu5EqGidDfkfLVaKFC8FmGuodbhCedKltzS4
         DL3D2lz58qA/VLxyOIdPjVbJW6PAyxeqKaa8igaqc7Ea1YHWSS2C49OEXIveTJMqsZrM
         J1woE6MwYCrU4i4jZpxc98BluIRWOir8QqQGl6W4EWDJHRvCNROeUmyuvcja9EfqYRxE
         JK0voCjnb4Ubk3Tjk3dWn80uvjblupJmj1TmvsAmNs5b4CEm73Dripkr8E4Bbej55qdK
         xc4qEmayDzk6cTyRAxPo6ixeFiB6VdPFJnt98MoLIWce4OVMjvicMTeQXqxONtNelSj0
         XWeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vPBicPax;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R419GyelyFpno/Rvbi+IhMN3XQpvlD4Abne37zUxf1w=;
        b=CS4JP9gwI0My0v5b8fEK+KVNLV3Sor6+VtTNRbj/0ELDg4ZymOwzcWUJ5umq8WksUm
         yHF7E9jfHRBDBiQqmUXSo8Yrl4+lZKgwZPM9sp2G8DmAyfk91jvN+fj70qESwN7Jx83Z
         RdySEjomOxCAqHiW64D98Dfau7LplZmEtJJRf0zbY6CnECvO2Wb4p/Gm9m37d9havRRW
         Bx5HqbAsqehKbx/CONSNh4yN08LQQbsEk9ihCXfVoiuDOrvRNq4nv7DNGo1mJTADCdct
         Gc+8eorcP2ybtR+xgKe2bSfIbxZnp3aXsIctYtBsIGpxoi+Vhztj8Tw8c9HCsJhw3jm6
         P0CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R419GyelyFpno/Rvbi+IhMN3XQpvlD4Abne37zUxf1w=;
        b=K3G0nw8xdcBn2Yc2xUwDZ9N8hwx5Ru/sVyq13zlygEH9gG1hku4E2SRhtuaDy1jBAp
         c0Iw2DCGBbvBqF326G5wz59lEtT+l93uR1atQmBSUS4rEm6ibmvw6p0fpLZd7WQrVF0g
         UVIMtjgSMNooANKvgOcs+7L+CWwst7r5N8JM5ZAIgMN+twZoXnRANxC6ifd+W9U4aj07
         kR4X5O2viX0JMiJS9UOmirGxqvZMsAwvgcAvVRnnf9NYgb3MMPLbL6tjAQxeosgMg2Gh
         mGOohIAKCBninZRqu1v54YKP2xVrs3LFp0ImqRBgYEIXrPAbLSD3JmhortSx0PkSSCKb
         XvYg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Zl6Yn/tYiwLR6tXlHoGDnpOuKJeHsd5BZRDPOf1LNMqizsQPx
	uRmCb9X1+j/VSzEo7dX4q7g=
X-Google-Smtp-Source: ABdhPJzXHcnFLUl5tw7U6nvhlHCegKgBPAaiIa8mZj8M0H6RIzZGTpmx6QWzztS+DWolc2Ej2vlEjQ==
X-Received: by 2002:a2e:a449:: with SMTP id v9mr5223569ljn.25.1628938967482;
        Sat, 14 Aug 2021 04:02:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:160f:: with SMTP id f15ls654300ljq.3.gmail; Sat, 14
 Aug 2021 04:02:46 -0700 (PDT)
X-Received: by 2002:a2e:874e:: with SMTP id q14mr4737366ljj.417.1628938966312;
        Sat, 14 Aug 2021 04:02:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628938966; cv=none;
        d=google.com; s=arc-20160816;
        b=mxViPlQYR+B3zYLbEJohdzhCTIlX5CzRgak9eRKkMVKKKvxqaY5aRRH+lWH5Ueohjt
         xLBbEkuWfed+Eg9HbLHKEke2PQrWbyWwtqVnDl9LThuaY6B1QLHfdtDx+i8yyiPw42iP
         K8QW74sNxToc/BkkAc+YEYTfbhmThQh51N/G+4aseNjH1b7YbaTXvPOEmtrwsQ64wXmK
         oCKSkHcAMyizvCvGJ79HzRhlLKkRhsA23tRn3dIDv4V7LdcT7xwMoIDmcYMGqYnuIfb5
         o9u2MotUT+rDbqNUGuWBCcEFQw3W9Aj4lRnCx1WbagCBhXRfv4eQaIv/Q1f1fufE7pgm
         PyOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ad97cnuJ60n5L2dXuWbdhv2jj+zm4I/j9SiEmdlB3hk=;
        b=CLQ+ZDoZy13a5jgNb7rOnXd2LDcxZjEpQL2H5rhPkCEsD55vIp/uoAeBK7P1501tqA
         n8xhaQkzN5GPB84XevfLhmIZl5QCaFqu4AWZF9LMX/xKeNpk6r692Z54ytVHLNrnArnD
         buaA9IZ+dx+fTECst0bohPjLVJXshg77X2g/BuShNzwg2WHsv2YWmsrdEV/YvX2YanE0
         OHbhWIm20hge9Of7nbxOMOTCkB2iXq4PxDODJRBdX97apGv7Q0qXr3tm/+d92bIc9X9c
         LGqDW6wKxEPCl/lIX2mIGPPoEIzMfialESx5HUQkg/hksqqmMeOivfFJg01OYXi7xNFh
         ZEBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=vPBicPax;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com. [2a00:1450:4864:20::633])
        by gmr-mx.google.com with ESMTPS id q8si223324ljm.2.2021.08.14.04.02.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Aug 2021 04:02:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::633 as permitted sender) client-ip=2a00:1450:4864:20::633;
Received: by mail-ej1-x633.google.com with SMTP id b15so22976971ejg.10
        for <clang-built-linux@googlegroups.com>; Sat, 14 Aug 2021 04:02:46 -0700 (PDT)
X-Received: by 2002:a17:906:40d1:: with SMTP id a17mr6955098ejk.503.1628938965819;
 Sat, 14 Aug 2021 04:02:45 -0700 (PDT)
MIME-Version: 1.0
References: <20210810204240.4008685-1-ndesaulniers@google.com>
In-Reply-To: <20210810204240.4008685-1-ndesaulniers@google.com>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Sat, 14 Aug 2021 16:32:34 +0530
Message-ID: <CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com>
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>, 
	Vitor Massaru Iha <vitor@massaru.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Daniel Latypov <dlatypov@google.com>, linux-kbuild@vger.kernel.org, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux-Next Mailing List <linux-next@vger.kernel.org>, Stephen Rothwell <sfr@canb.auug.org.au>, 
	Mark Brown <broonie@kernel.org>, lkft-triage@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=vPBicPax;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::633 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

On Wed, 11 Aug 2021 at 02:12, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> cc-option, cc-option-yn, and cc-disable-warning all invoke the compiler
> during build time, and can slow down the build when these checks become
> stale for our supported compilers, whose minimally supported versions
> increases over time. See Documentation/process/changes.rst for the
> current supported minimal versions (GCC 4.9+, clang 10.0.1+). Compiler
> version support for these flags may be verified on godbolt.org.
>
> The following flags are GCC only and supported since at least GCC 4.9.
> Remove cc-option and cc-disable-warning tests.
> * -fno-tree-loop-im
> * -Wno-maybe-uninitialized
> * -fno-reorder-blocks
> * -fno-ipa-cp-clone
> * -fno-partial-inlining
> * -femit-struct-debug-baseonly
> * -fno-inline-functions-called-once
> * -fconserve-stack
>
> The following flags are supported by all supported versions of GCC and
> Clang. Remove their cc-option, cc-option-yn, and cc-disable-warning tests.
> * -fno-delete-null-pointer-checks
> * -fno-var-tracking
> * -mfentry
> * -Wno-array-bounds
>
> The following configs are made dependent on GCC, since they use GCC
> specific flags.
> * READABLE_ASM
> * DEBUG_SECTION_MISMATCH
>
> --param=allow-store-data-races=0 was renamed to --allow-store-data-races
> in the GCC 10 release.

[Please ignore this if it is already reported]

Linux next 20210813 tag s390 build failed with gcc-8 but pass with
gcc-9 and gcc-10.

 s390 (defconfig) with gcc-8 FAILED
 s390 (defconfig) with gcc-9 PASS
 s390 (defconfig) with gcc-10 PASS

Build error:
-----------
s390x-linux-gnu-gcc: error: unrecognized command line option
'-mfentry'; did you mean '--entry'?
make[2]: *** [/builds/linux/scripts/Makefile.build:272:
scripts/mod/empty.o] Error 1
s390x-linux-gnu-gcc: error: unrecognized command line option
'-mfentry'; did you mean '--entry'?
make[2]: *** [/builds/linux/scripts/Makefile.build:118:
scripts/mod/devicetable-offsets.s] Error 1
make[2]: Target '__build' not remade because of errors.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Build log,
https://builds.tuxbuild.com/1wfNcaYbsp29k3RvYuPXzxrM4vs/

metadata:
--------
    git_describe: next-20210813
    git_repo: https://gitlab.com/Linaro/lkft/mirrors/next/linux-next
    git_short_log: 4b358aabb93a (\Add linux-next specific files for 20210813\)
    target_arch: s390
    toolchain: gcc-8


Steps to reproduce:
-------------------
# TuxMake is a command line tool and Python library that provides
# portable and repeatable Linux kernel builds across a variety of
# architectures, toolchains, kernel configurations, and make targets.
#
# TuxMake supports the concept of runtimes.
# See https://docs.tuxmake.org/runtimes/, for that to work it requires
# that you install podman or docker on your system.
#
# To install tuxmake on your system globally:
# sudo pip3 install -U tuxmake
#
# See https://docs.tuxmake.org/ for complete documentation.


tuxmake --runtime podman --target-arch s390 --toolchain gcc-8
--kconfig defconfig


--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w%40mail.gmail.com.
