Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSP73HYQKGQEHQY5IOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBA314FC39
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 Feb 2020 08:52:43 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id 39sf6793739otr.21
        for <lists+clang-built-linux@lfdr.de>; Sat, 01 Feb 2020 23:52:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580629961; cv=pass;
        d=google.com; s=arc-20160816;
        b=SjPe4IJJf3iHW4ENNpw5EROuuutAsQgn55oziwsNyUrIar4vv1/xbsSXUbCjuIKQBa
         hnz2Ht1KcMAnik0T1C5gE4qoFb3ljhWkFPIlHIZ49JvJO+5CmHKid1bfNarin9ShcL4X
         CwRsua3e8kkDzIiSQv9ePNDBUvTZOF1uDJxZW7HIbWk2g9SJp/7kCfzLZvvXYefOBi66
         o4LiE4trEirF95zEMwdmMhr6b6BlcDCnk+8EeWtyUXE6ej1rQm+9PT3ocjaFliU0AWa1
         thLVZN09l8cA0kf30CpI+PJUd5urpSvzv5bHpUqcIzUfD2LAbIDKLK/M6JvTvt6621k8
         tmEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=h+jS7wjqh0CYqaezNz+DyIsQ9cv2j/bYy+2KOkpxRLk=;
        b=MCk3H0BwQZMoyqwpzlkzzThYZ9SoL4P9wNaDCrCCOKp/B2UceseO8sBwM3bg0Crk1p
         BTpNTUdQ7XwRv+TKzXw3/VFXLd44JSY4ck+NdV3fCT8OdbPZyDGAZieElRGeVVlZr8ij
         gAISIH9anI8ORePdQKUYJpg19mLEfuzva5FzJTZGnuFJIEQ5m7T/cgN5mIEnPjL2ZQdk
         HO67BooehYPgkko6qwD/AgOzkQ+SzyYZYnGyz17JBGdcyQnVnyT+Zs8BoSX1fajaXs3N
         8m1XcbUCRTRCowjJ30egUVPQlG6i6xBa3YekZdkvqSH1R6PAFU5THYTwDKWI3TKtUDBD
         SWgA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mp+iynwL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+jS7wjqh0CYqaezNz+DyIsQ9cv2j/bYy+2KOkpxRLk=;
        b=jAzXpNvo9GdwSRn0XcRVk2v/HYiGbJ2VP6/Ah03J76ZsV42AbL1RoTVRblHNmnz5W/
         vn0+/DhklY/Lxzmc2l59oGsemwodjS540ORlDD5irT/oDCC7Jh1s9fxYjK7RncYExsj6
         +GfhA9ou9JMTBsYVkcMGVUsmhBI9T9Qs3IwUcy4uTysmObPpj8fWyTE959ySU3ZUkPTf
         Qm+hWnVdL2RpvFKBMlFxMiTmsXwYxLSM9Y9DXF1ACrw7bWhQiOWWGmZmW43DheS1CiJc
         hNVSzaFwx9LnKMhZHAWyl9tepM7tmh16YpMA2ba1cU6bWyd23Po2I6sNKV50S7ZlIWWv
         LM8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h+jS7wjqh0CYqaezNz+DyIsQ9cv2j/bYy+2KOkpxRLk=;
        b=uUAgGbZOgcvNk0r4OlF56I1KSZKQpwq4WZmH9cJYol0KKzvThOIyskJlpCRDR/ccmS
         XkOql4/Xb9R2cXB7WpiEitVeEyo3SEZUmCCPAk+ilQ0iLkWDdItcV2K/mgAEMVTG25sc
         T4tvl65Yqg/QFMoVyeFtMpi6KPcnT/OP/d8HyHnmFJ2yan6ptX/kfWIlGTzyqBlaD4LE
         8iFTK8i/aIlTD8LtoJkIcazcPFaxARuiD6t7bdliIfYPUhGF5ESukZYNJe4+QSaSWOfI
         eQmBFwdavbykERuB1diu/qwaMm4DVgcjxqqT/WzWpZNvuYHVtu417d1JdVHETDWbRqde
         TdpQ==
X-Gm-Message-State: APjAAAWPmTnmODDNtaQF2nYijrcO47LRpuJEtYKv+OZwwmw8Vv5yfPAB
	JxsYjyrsURX6Khup6apBTNk=
X-Google-Smtp-Source: APXvYqxjgCwC4Qc51NGOc52SINTgJHbqylqxTvgz+tp9F+m9OjCxwgleO73QoYvgaxzYMeXuhUsXJw==
X-Received: by 2002:a9d:51c1:: with SMTP id d1mr12995244oth.136.1580629961696;
        Sat, 01 Feb 2020 23:52:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:cf95:: with SMTP id f143ls1325817oig.7.gmail; Sat, 01
 Feb 2020 23:52:41 -0800 (PST)
X-Received: by 2002:aca:d6c8:: with SMTP id n191mr11714665oig.103.1580629961259;
        Sat, 01 Feb 2020 23:52:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580629961; cv=none;
        d=google.com; s=arc-20160816;
        b=etU8vtrwZrHDD4oakWozP/faOjcJbomTWax7/YOOL8nP8U3slHRAl3dXXtIVWRyJW8
         kCXnXIZurytxpySH9jD/MjcPkuCPmKQkpOtcXQA/IezKBeWd3e99BrNH9gWXHT4x2qne
         ArXR2dhwIj/uvMzitrIgZVt45V02BOys4f+BLHqcop9WJmH2F0hLEm2Z+jrvSnufTCFo
         Op8uqNy6AIaSRT+JR4nESVwiFvFP0EVTUeGTtyQo4EtBEZ277T2Hd7Fxxc1M0SycJMAx
         TWSyr9aytAxtgjwdwP58jgijjwMtBnQ281sLuwG5i4iEXGnVekgSh/7plOCtTY0hTDEd
         IAng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9onMgsaSvEQLtBM2LXSjP2yc5TxceWnIXUSSKSKcP2M=;
        b=DY/IQMKmHhFw1L603MPhtjAww3OuM7ZzOihFN4r7SEfny+ghAgPy0edaJotAPkj8fv
         ZAprU4jVWDOKgKF6zPIRYGQdr1aMFJydf2pVsYngvfcsGn1nsp/7OhwzWP6+xXeqGvV0
         gubg9g8QIYsVNMR+0A5VxiK5zSOzGMJqDvJ2zkxMfVW+z55F9bU4iNU9mqOTIrToogHi
         +u1KdvlLkVuW4B01MoEsmKGOTM9ItcRRzSME3/NmqHD8PtOb6IyEqFq/8RJnw+4PHXO7
         rST0bXOLx0AShDWdLYdJyGtuP2TW8SvM8fiqjZWe0JHibIPAeb2D3AjNxBrQLaYiE5jO
         Raeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Mp+iynwL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id o11si912329otk.0.2020.02.01.23.52.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 01 Feb 2020 23:52:41 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id b22so4547676pls.12
        for <clang-built-linux@googlegroups.com>; Sat, 01 Feb 2020 23:52:41 -0800 (PST)
X-Received: by 2002:a17:90a:be06:: with SMTP id a6mr22446147pjs.73.1580629960104;
 Sat, 01 Feb 2020 23:52:40 -0800 (PST)
MIME-Version: 1.0
References: <1088744759.596.1580628825881.JavaMail.javamailuser@localhost>
In-Reply-To: <1088744759.596.1580628825881.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 2 Feb 2020 08:52:28 +0100
Message-ID: <CAKwvOd=G-8RU10ZUTKFTN2OwLgbUm9dVPZYKr8_zWG2q1isB_A@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-master-arm-mainline-allmodconfig
 - Build # 30 - Successful!
To: CI Notify <ci_notify@linaro.org>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Mp+iynwL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

https://lore.kernel.org/netdev/20200131085509.199405a9@cakuba.hsd1.ca.comcast.net/

On Sun, Feb 2, 2020 at 8:33 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-mainline-allmodconfig.  So far, this commit has regressed CI configurations:
>  - tcwg_kernel/llvm-master-arm-mainline-allmodconfig
>
> Culprit:
> <cut>
> commit 368d060bb497775e42e323b9f676c45e2011da27
> Merge: acd77500aa8a 451dff37f075
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Sat Feb 1 10:01:52 2020 -0800
>
>     Merge tag 'kbuild-v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild
>
>     Pull Kbuild updates from Masahiro Yamada:
>
>      - detect missing include guard in UAPI headers
>
>      - do not create orphan built-in.a or obj-y objects
>
>      - generate modules.builtin more simply, and drop tristate.conf
>
>      - simplify built-in initramfs creation
>
>      - make linux-headers deb package thinner
>
>      - optimize the deb package build script
>
>      - misc cleanups
>
>     * tag 'kbuild-v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild: (34 commits)
>       builddeb: split libc headers deployment out into a function
>       builddeb: split kernel headers deployment out into a function
>       builddeb: remove redundant make for ARCH=um
>       builddeb: avoid invoking sub-shells where possible
>       builddeb: remove redundant $objtree/
>       builddeb: match temporary directory name to the package name
>       builddeb: remove unneeded files in hdrobjfiles for headers package
>       kbuild: use -S instead of -E for precise cc-option test in Kconfig
>       builddeb: allow selection of .deb compressor
>       kbuild: remove 'Building modules, stage 2.' log
>       kbuild: remove *.tmp file when filechk fails
>       kbuild: remove PYTHON2 variable
>       modpost: assume STT_SPARC_REGISTER is defined
>       gen_initramfs.sh: remove intermediate cpio_list on errors
>       initramfs: refactor the initramfs build rules
>       gen_initramfs.sh: always output cpio even without -o option
>       initramfs: add default_cpio_list, and delete -d option support
>       initramfs: generate dependency list and cpio at the same time
>       initramfs: specify $(src)/gen_initramfs.sh as a prerequisite in Makefile
>       initramfs: make initramfs compression choice non-optional
>       ...
> </cut>
>
> First few errors in logs of first_bad:
> 00:03:56 make[1]: *** [__modpost] Error 1
> 00:03:56 make: *** [modules] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
> rr[linux_branch]="26dca6dbd62d74a5012cafab6b2d6d65a01ea69c"
>
> Results regressed to (for first_bad == 368d060bb497775e42e323b9f676c45e2011da27)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 20241
>
> from (for last_good == acd77500aa8a337baa6d853568c4b55aca48e20f)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 20248
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/build-368d060bb497775e42e323b9f676c45e2011da27/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/build-acd77500aa8a337baa6d853568c4b55aca48e20f/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-368d060bb497775e42e323b9f676c45e2011da27
> cd investigate-linux-368d060bb497775e42e323b9f676c45e2011da27
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach 368d060bb497775e42e323b9f676c45e2011da27
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach acd77500aa8a337baa6d853568c4b55aca48e20f
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-mainline-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-mainline-allmodconfig/30/consoleText
>
> Full commit:
> <cut>
> commit 368d060bb497775e42e323b9f676c45e2011da27
> Merge: acd77500aa8a 451dff37f075
> Author: Linus Torvalds <torvalds@linux-foundation.org>
> Date:   Sat Feb 1 10:01:52 2020 -0800
>
>     Merge tag 'kbuild-v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild
>
>     Pull Kbuild updates from Masahiro Yamada:
>
>      - detect missing include guard in UAPI headers
>
>      - do not create orphan built-in.a or obj-y objects
>
>      - generate modules.builtin more simply, and drop tristate.conf
>
>      - simplify built-in initramfs creation
>
>      - make linux-headers deb package thinner
>
>      - optimize the deb package build script
>
>      - misc cleanups
>
>     * tag 'kbuild-v5.6' of git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild: (34 commits)
>       builddeb: split libc headers deployment out into a function
>       builddeb: split kernel headers deployment out into a function
>       builddeb: remove redundant make for ARCH=um
>       builddeb: avoid invoking sub-shells where possible
>       builddeb: remove redundant $objtree/
>       builddeb: match temporary directory name to the package name
>       builddeb: remove unneeded files in hdrobjfiles for headers package
>       kbuild: use -S instead of -E for precise cc-option test in Kconfig
>       builddeb: allow selection of .deb compressor
>       kbuild: remove 'Building modules, stage 2.' log
>       kbuild: remove *.tmp file when filechk fails
>       kbuild: remove PYTHON2 variable
>       modpost: assume STT_SPARC_REGISTER is defined
>       gen_initramfs.sh: remove intermediate cpio_list on errors
>       initramfs: refactor the initramfs build rules
>       gen_initramfs.sh: always output cpio even without -o option
>       initramfs: add default_cpio_list, and delete -d option support
>       initramfs: generate dependency list and cpio at the same time
>       initramfs: specify $(src)/gen_initramfs.sh as a prerequisite in Makefile
>       initramfs: make initramfs compression choice non-optional
>       ...
>
>  Documentation/kbuild/kconfig.rst                |   5 -
>  Makefile                                        |  24 +---
>  include/linux/module.h                          |  12 +-
>  scripts/Kbuild.include                          |  25 ++--
>  scripts/Kconfig.include                         |   2 +-
>  scripts/Makefile.build                          |   4 +-
>  scripts/Makefile.lib                            |  21 ++-
>  scripts/Makefile.modbuiltin                     |  57 --------
>  scripts/Makefile.modpost                        |   1 -
>  scripts/kconfig/confdata.c                      |  45 +------
>  scripts/link-vmlinux.sh                         |   4 +
>  scripts/mod/modpost.c                           |   8 +-
>  scripts/package/builddeb                        | 106 +++++++++------
>  usr/.gitignore                                  |   8 +-
>  usr/Kconfig                                     |  26 ----
>  usr/Makefile                                    |  97 +++++++++-----
>  usr/default_cpio_list                           |   6 +
>  usr/{gen_initramfs_list.sh => gen_initramfs.sh} | 167 ++++++------------------
>  usr/include/Makefile                            | 107 +++++++--------
>  usr/initramfs_data.S                            |   5 +-
>  20 files changed, 281 insertions(+), 449 deletions(-)
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1088744759.596.1580628825881.JavaMail.javamailuser%40localhost.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DG-8RU10ZUTKFTN2OwLgbUm9dVPZYKr8_zWG2q1isB_A%40mail.gmail.com.
