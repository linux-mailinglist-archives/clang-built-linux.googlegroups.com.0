Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2N45PYQKGQESREQJIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F941533D5
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 Feb 2020 16:25:31 +0100 (CET)
Received: by mail-pl1-x63b.google.com with SMTP id 2sf1316435plb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 Feb 2020 07:25:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580916329; cv=pass;
        d=google.com; s=arc-20160816;
        b=UzE9j6FdU6/FWoFvJ2kuMbC1Y42JjTClMJ8+8wSLBUyRDNdjJr94t6+XCjU6LPV9Os
         frSrru4Izw2CWhFASyXr0xfNR27NhoQd1J35rsg+ldpUsvOULcGXnkZMgiZxyGNYzsjx
         0mdaeP2HYpnwamyR+vLKMOjrqPnGlGH6/gxIETYyMx6NPZ1NXTllIDxaOjdzcwllSCwD
         hVpci0wDPXGfuHx7SIOFQ5OmOvDy/uLJtAje3ISeeR3klb5On7rgLszlfw2zGHtekC1i
         8f/RtV+YkiUoKgjZJFdycfZIXyxEP2VxIH0C2hV4HpS+obHbzZ857+mXJHDbhaq/DyKy
         cVgg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cKqjgbtdVaQwlFd/iec0AR96hFtnUFJ0hTHj9M7HWcM=;
        b=e9hMY1R52PERMOIv0SjD3e9BigsYWztxZQeD0FQyqEuEO7oxHmg/j3nRAJu963lj0v
         MK/PLlQBEHI9Uz1myMvSovbd2mc95Gwx4/+mq/p17fQP69Ihlrqv7BEiJlrm3iFi9iws
         zJYblYq+B1gy3Ta4NONuHIt70dIXpVFva1Atb4qPNNa9Aa2V/MRB4yrr6qAiaVuvad4Z
         DDNkImtnX/JWEbXXSADIPXx40QRWPj2ifcLYWiU95lxCYVzOUc/7da1oWhhrzfJey+WC
         aL1iHpl1kQpVxUhJo6mTaCQlGag/JnM84pV5DuAX0e9jUYRKqQzYVYBRCoL++Nf4Lnqe
         ScDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GuZyxx0x;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cKqjgbtdVaQwlFd/iec0AR96hFtnUFJ0hTHj9M7HWcM=;
        b=lfCyiJWi42V3zI56oSvAhB140JT+wO1RifjIrd63J4+huNF5e4Z74MYPKmfiql/WdS
         c0Hg2i+jeKQD5D16MRwGueeWFK3R0FaZj288ymLQIQLHCYKkX2/WuCj0LQedt16WPchk
         Qo00dMuGrEf0h7Ugk/c6UEHKuHvbS9DnKqTm1SiqV0fRwJQJwk1dnQyQgILG16ubOdqb
         5FxoWWZQ2/UaYJZH/fKEUllyTK9xNY3Kzb9mk3b4AgTRiESJ4Hek8hfGwAblL/rR44iD
         9uHakJ70peCwURNN5FD/AbEbjYRzcgde7cP+3N/PwcyEIRwwMZngN6RylsICEZ8ckonO
         wing==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cKqjgbtdVaQwlFd/iec0AR96hFtnUFJ0hTHj9M7HWcM=;
        b=BGV8sbxu7F75Pz8yWuQsMJvBNoyLHu74IqCkNtyu/vR1fLOK+HeeE2Z0Ptl1uExHKK
         xiUozINNJM3nXNfh2TaE2GsqTCTYKhziER+qN3cENn9ga/OOERsxuxEOnG6Nl0JU4aNs
         OCf6nGH18E41l7+mvOaiKKO2X3IFXeddeFpNjP5wifyvkHicX1WANUv8r+hIiGelV9dt
         GmGCfsYVfn/Dxh6nHq/IbxxUl9iAIxC7j0aRorFIFoXKfLuhHe5cBGp/BCnbFO4MrHdc
         95pqGiVr3NbA1nFaTuN1v3G5AEtd5LCze07lFDXqi94ag+3QXT8EL+s635//plkPBLxY
         0i2g==
X-Gm-Message-State: APjAAAUUcpVy9bZ6cjtzaBXg+sLwCICmdf/KWxwAMYOeWRBNaFCFsbpO
	mpRb+PDGfQ6sfJWUxya+V7o=
X-Google-Smtp-Source: APXvYqwD2fUsmv3l+Jw9G/+KWcLw+F20qjYNqr4IqfeL91d070JS2c0Kolsrj0IkAYL70XS8MaNNsg==
X-Received: by 2002:a17:90a:b38e:: with SMTP id e14mr1201770pjr.38.1580916329405;
        Wed, 05 Feb 2020 07:25:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb88:: with SMTP id m8ls1268608pls.6.gmail; Wed, 05
 Feb 2020 07:25:29 -0800 (PST)
X-Received: by 2002:a17:902:34d:: with SMTP id 71mr33970242pld.316.1580916328861;
        Wed, 05 Feb 2020 07:25:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580916328; cv=none;
        d=google.com; s=arc-20160816;
        b=hL2jaE2djjGKfaxNtsaAu7ItSzDOmAU1iY9bb2G9Y3x9C6fGuzRoDkPiI/7xzB4Pqz
         2PHCCdmlD6IqsFBhP2ezu5pYxNBPEERIPKtJmX2Dir7VRnQrxkCGZYJwlutqPwC0vjco
         wKZnh3SbmpLf7JLnms6IYg0CPC5nAny/7NS4uJ9Tp0UnZX785fc2cVnWpfyz+C0PEwl7
         ui9S0ZJo/pOpuBWD6xpIQngjIsimgTAV40lnbb9+ZEUttvuSq7HGus6CkKboWWnXjQqM
         hM4ItOueEB0G0DjkPW3SVs7q1glCkK3c2yom3wQ+Gp/2F/447tn5OFV6oT+QVIADwHXR
         GH+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oFLx87lYSmbGsKaUurJs+YUvz5qVIkvRDXbNvIK1YhI=;
        b=nPzV+JZDozNiAVNO7TXxXw0Yd+HWJecvxxZWRLfchNFAgKX6K/FMZukFh2w+5C1rGc
         +R5K/v1PuFavsuhNap50y9wDWJTKiSU69+6TovzSS/3y0w8Z7oi3MDZLOrqZB0aFXDdt
         CKsnaJ8ON5p5lGBG98PX+hZkeS+2IWxzYA6aNiYDGylZOpMwGLzRoUyFZCTdn9mCwVr7
         uvx4RJVSzzMmiFUj4y2iFipefEpo3JtxWE05YmZi6XNc6ma5v78s9OKA8R+s2tn1JomK
         lifrPK5BVS8hgvhH0pAdQHqFC3JMBQGmbbDncuFQ4ER6l1YsB+GoVu6Mw844Z6sVQyuA
         qHPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GuZyxx0x;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id u19si1224278plq.4.2020.02.05.07.25.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:25:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id k3so1127173pgc.3
        for <clang-built-linux@googlegroups.com>; Wed, 05 Feb 2020 07:25:28 -0800 (PST)
X-Received: by 2002:a62:1615:: with SMTP id 21mr36704559pfw.84.1580916328205;
 Wed, 05 Feb 2020 07:25:28 -0800 (PST)
MIME-Version: 1.0
References: <1589326257.1893.1580912447101.JavaMail.javamailuser@localhost>
In-Reply-To: <1589326257.1893.1580912447101.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 5 Feb 2020 15:25:14 +0000
Message-ID: <CAKwvOdm=z+L07581+gbZ4PPt9Fn_MGJqGeeXTV1wrRz4hau_AA@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allmodconfig
 - Build # 56 - Successful!
To: CI Notify <ci_notify@linaro.org>, Hawking.Zhang@amd.com
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000002a28d7059dd5c48b"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GuZyxx0x;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
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

--0000000000002a28d7059dd5c48b
Content-Type: text/plain; charset="UTF-8"

+ Hawking


On Wed, Feb 5, 2020, 2:20 PM <ci_notify@linaro.org> wrote:

> Successfully identified regression in *linux* in CI configuration
> tcwg_kernel/llvm-release-aarch64-next-allmodconfig.  So far, this commit
> has regressed CI configurations:
>  - tcwg_kernel/llvm-master-aarch64-next-allyesconfig
>  - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
>
> Culprit:
> <cut>
> commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
> Author: Hawking Zhang <Hawking.Zhang@amd.com>
>
>     drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
> </cut>
>
> First few errors in logs of first_bad:
> 00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void
> function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
> 00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void
> function 'amdgpu_xgmi_remove_device' should return a value [-Wreturn-type]
> 00:02:49 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1
> 00:04:37 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2
> 00:04:37 make[2]: *** [drivers/gpu/drm] Error 2
> 00:04:37 make[1]: *** [drivers/gpu] Error 2
> 00:04:47 make: *** [drivers] Error 2
> Configuration details:
> rr[llvm_url]="https://github.com/llvm/llvm-project.git"
> rr[linux_url]="
> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
> rr[linux_branch]="cee5a42837d4a6c4189f06f7bf355b97a24c3c93"
>
> Results regressed to (for first_bad ==
> 2fe4750e8506da0f23ab80390b762b0d44a04fc5)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 19713
>
> from (for last_good == 18348c5a4f2137db45a3348e59296b2f1d6aca5a)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 26866
> linux build successful:
> all
> linux boot successful:
> boot
>
> Artifacts of first_bad build:
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/build-2fe4750e8506da0f23ab80390b762b0d44a04fc5/
> Artifacts of last_good build:
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/build-18348c5a4f2137db45a3348e59296b2f1d6aca5a/
> Build top page/logs:
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
> cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/manifests/build-parameters.sh
> curl -o artifacts/test.sh
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@
> artifacts/manifests/build-baseline.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach 2fe4750e8506da0f23ab80390b762b0d44a04fc5
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach 18348c5a4f2137db45a3348e59296b2f1d6aca5a
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results:
> https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig
>
> Artifacts:
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/
> Build log:
> https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/consoleText
>
> Full commit:
> <cut>
> commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5
> Author: Hawking Zhang <Hawking.Zhang@amd.com>
> Date:   Mon Dec 23 16:51:42 2019 +0800
>
>     drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device call
>
>     For sriov, psp ip block has to be initialized before
>     ih block for the dynamic register programming interface
>     that needed for vf ih ring buffer. On the other hand,
>     current psp ip block hw_init function will initialize
>     xgmi session which actaully depends on interrupt to
>     return session context. This results an empty xgmi ta
>     session id and later failures on all the xgmi ta cmd
>     invoked from vf. xgmi ta session initialization has to
>     be done after ih ip block hw_init call.
>
>     to unify xgmi session init/fini for both bare-metal
>     sriov virtualization use scenario, move xgmi ta init
>     to xgmi_add_device call, and accordingly terminate xgmi
>     ta session in xgmi_remove_device call.
>
>     The existing suspend/resume sequence will not be changed.
>
>     Signed-off-by: Hawking Zhang <Hawking.Zhang@amd.com>
>     Reviewed-by: Frank Min <Frank.Min@amd.com>
>     Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c  | 18 ++----------------
>  drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h  |  2 ++
>  drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c | 11 ++++++++++-
>  drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h |  2 +-
>  4 files changed, 15 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> index 3a1570dafe34..939a114605c0 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c
> @@ -558,7 +558,7 @@ int psp_xgmi_invoke(struct psp_context *psp, uint32_t
> ta_cmd_id)
>         return psp_ta_invoke(psp, ta_cmd_id, psp->xgmi_context.session_id);
>  }
>
> -static int psp_xgmi_terminate(struct psp_context *psp)
> +int psp_xgmi_terminate(struct psp_context *psp)
>  {
>         int ret;
>
> @@ -579,7 +579,7 @@ static int psp_xgmi_terminate(struct psp_context *psp)
>         return 0;
>  }
>
> -static int psp_xgmi_initialize(struct psp_context *psp)
> +int psp_xgmi_initialize(struct psp_context *psp)
>  {
>         struct ta_xgmi_shared_memory *xgmi_cmd;
>         int ret;
> @@ -1420,16 +1420,6 @@ static int psp_load_fw(struct amdgpu_device *adev)
>                 return ret;
>         }
>
> -       if (adev->gmc.xgmi.num_physical_nodes > 1) {
> -               ret = psp_xgmi_initialize(psp);
> -               /* Warning the XGMI seesion initialize failure
> -                * Instead of stop driver initialization
> -                */
> -               if (ret)
> -                       dev_err(psp->adev->dev,
> -                               "XGMI: Failed to initialize XGMI
> session\n");
> -       }
> -
>         if (psp->adev->psp.ta_fw) {
>                 ret = psp_ras_initialize(psp);
>                 if (ret)
> @@ -1494,10 +1484,6 @@ static int psp_hw_fini(void *handle)
>         void *tmr_buf;
>         void **pptr;
>
> -       if (adev->gmc.xgmi.num_physical_nodes > 1 &&
> -           psp->xgmi_context.initialized == 1)
> -                psp_xgmi_terminate(psp);
> -
>         if (psp->adev->psp.ta_fw) {
>                 psp_ras_terminate(psp);
>                 psp_dtm_terminate(psp);
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
> b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
> index 611021514c52..c77e1abb538a 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h
> @@ -362,6 +362,8 @@ int psp_gpu_reset(struct amdgpu_device *adev);
>  int psp_update_vcn_sram(struct amdgpu_device *adev, int inst_idx,
>                         uint64_t cmd_gpu_addr, int cmd_size);
>
> +int psp_xgmi_initialize(struct psp_context *psp);
> +int psp_xgmi_terminate(struct psp_context *psp);
>  int psp_xgmi_invoke(struct psp_context *psp, uint32_t ta_cmd_id);
>
>  int psp_ras_invoke(struct psp_context *psp, uint32_t ta_cmd_id);
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
> b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
> index a97af422575a..78989e9560d1 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c
> @@ -365,6 +365,13 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)
>                 return 0;
>
>         if (amdgpu_device_ip_get_ip_block(adev, AMD_IP_BLOCK_TYPE_PSP)) {
> +               ret = psp_xgmi_initialize(&adev->psp);
> +               if (ret) {
> +                       dev_err(adev->dev,
> +                               "XGMI: Failed to initialize xgmi
> session\n");
> +                       return ret;
> +               }
> +
>                 ret = psp_xgmi_get_hive_id(&adev->psp,
> &adev->gmc.xgmi.hive_id);
>                 if (ret) {
>                         dev_err(adev->dev,
> @@ -451,7 +458,7 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)
>         return ret;
>  }
>
> -void amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
> +int amdgpu_xgmi_remove_device(struct amdgpu_device *adev)
>  {
>         struct amdgpu_hive_info *hive;
>
> @@ -471,6 +478,8 @@ void amdgpu_xgmi_remove_device(struct amdgpu_device
> *adev)
>                 amdgpu_xgmi_sysfs_rem_dev_info(adev, hive);
>                 mutex_unlock(&hive->hive_lock);
>         }
> +
> +       return psp_xgmi_terminate(&adev->psp);
>  }
>
>  int amdgpu_xgmi_ras_late_init(struct amdgpu_device *adev)
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
> b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
> index 74011fbc2251..c62a4acf4c14 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h
> @@ -40,7 +40,7 @@ struct amdgpu_hive_info {
>  struct amdgpu_hive_info *amdgpu_get_xgmi_hive(struct amdgpu_device *adev,
> int lock);
>  int amdgpu_xgmi_update_topology(struct amdgpu_hive_info *hive, struct
> amdgpu_device *adev);
>  int amdgpu_xgmi_add_device(struct amdgpu_device *adev);
> -void amdgpu_xgmi_remove_device(struct amdgpu_device *adev);
> +int amdgpu_xgmi_remove_device(struct amdgpu_device *adev);
>  int amdgpu_xgmi_set_pstate(struct amdgpu_device *adev, int pstate);
>  int amdgpu_xgmi_get_hops_count(struct amdgpu_device *adev,
>                 struct amdgpu_device *peer_adev);
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups
> "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/clang-built-linux/1589326257.1893.1580912447101.JavaMail.javamailuser%40localhost
> .
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3Dz%2BL07581%2BgbZ4PPt9Fn_MGJqGeeXTV1wrRz4hau_AA%40mail.gmail.com.

--0000000000002a28d7059dd5c48b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">+ Hawking<div dir=3D"auto"><br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 5, 2020,=
 2:20 PM  &lt;<a href=3D"mailto:ci_notify@linaro.org">ci_notify@linaro.org<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Successfully identif=
ied regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarc=
h64-next-allmodconfig.=C2=A0 So far, this commit has regressed CI configura=
tions:<br>
=C2=A0- tcwg_kernel/llvm-master-aarch64-next-allyesconfig<br>
=C2=A0- tcwg_kernel/llvm-release-aarch64-next-allmodconfig<br>
<br>
Culprit:<br>
&lt;cut&gt;<br>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
Author: Hawking Zhang &lt;<a href=3D"mailto:Hawking.Zhang@amd.com" target=
=3D"_blank" rel=3D"noreferrer">Hawking.Zhang@amd.com</a>&gt;<br>
<br>
=C2=A0 =C2=A0 drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device cal=
l<br>
&lt;/cut&gt;<br>
<br>
First few errors in logs of first_bad:<br>
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:466:3: error: non-void fu=
nction &#39;amdgpu_xgmi_remove_device&#39; should return a value [-Wreturn-=
type]<br>
00:02:49 drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c:470:3: error: non-void fu=
nction &#39;amdgpu_xgmi_remove_device&#39; should return a value [-Wreturn-=
type]<br>
00:02:49 make[4]: *** [drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.o] Error 1<br=
>
00:04:37 make[3]: *** [drivers/gpu/drm/amd/amdgpu] Error 2<br>
00:04:37 make[2]: *** [drivers/gpu/drm] Error 2<br>
00:04:37 make[1]: *** [drivers/gpu] Error 2<br>
00:04:47 make: *** [drivers] Error 2<br>
Configuration details:<br>
rr[llvm_url]=3D&quot;<a href=3D"https://github.com/llvm/llvm-project.git" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://github.com/llvm/llvm=
-project.git</a>&quot;<br>
rr[linux_url]=3D&quot;<a href=3D"https://git.kernel.org/pub/scm/linux/kerne=
l/git/next/linux-next.git" rel=3D"noreferrer noreferrer" target=3D"_blank">=
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git</a>&quo=
t;<br>
rr[linux_branch]=3D&quot;cee5a42837d4a6c4189f06f7bf355b97a24c3c93&quot;<br>
<br>
Results regressed to (for first_bad =3D=3D 2fe4750e8506da0f23ab80390b762b0d=
44a04fc5)<br>
reset_artifacts:<br>
-10<br>
build_llvm:<br>
-1<br>
linux_n_obj:<br>
19713<br>
<br>
from (for last_good =3D=3D 18348c5a4f2137db45a3348e59296b2f1d6aca5a)<br>
reset_artifacts:<br>
-10<br>
build_llvm:<br>
-1<br>
linux_n_obj:<br>
26866<br>
linux build successful:<br>
all<br>
linux boot successful:<br>
boot<br>
<br>
Artifacts of first_bad build: <a href=3D"https://ci.linaro.org/job/tcwg_ker=
nel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/bui=
ld-2fe4750e8506da0f23ab80390b762b0d44a04fc5/" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-releas=
e-aarch64-next-allmodconfig/56/artifact/artifacts/build-2fe4750e8506da0f23a=
b80390b762b0d44a04fc5/</a><br>
Artifacts of last_good build: <a href=3D"https://ci.linaro.org/job/tcwg_ker=
nel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/bui=
ld-18348c5a4f2137db45a3348e59296b2f1d6aca5a/" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-releas=
e-aarch64-next-allmodconfig/56/artifact/artifacts/build-18348c5a4f2137db45a=
3348e59296b2f1d6aca5a/</a><br>
Build top page/logs: <a href=3D"https://ci.linaro.org/job/tcwg_kernel-bisec=
t-llvm-release-aarch64-next-allmodconfig/56/" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-releas=
e-aarch64-next-allmodconfig/56/</a><br>
<br>
Reproduce builds:<br>
&lt;cut&gt;<br>
mkdir investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
cd investigate-linux-2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
<br>
git clone <a href=3D"https://git.linaro.org/toolchain/jenkins-scripts" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://git.linaro.org/toolcha=
in/jenkins-scripts</a><br>
<br>
mkdir -p artifacts/manifests<br>
curl -o artifacts/manifests/build-baseline.sh <a href=3D"https://ci.linaro.=
org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifa=
ct/artifacts/manifests/build-baseline.sh" rel=3D"noreferrer noreferrer" tar=
get=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-aa=
rch64-next-allmodconfig/56/artifact/artifacts/manifests/build-baseline.sh</=
a><br>
curl -o artifacts/manifests/build-parameters.sh <a href=3D"https://ci.linar=
o.org/job/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/arti=
fact/artifacts/manifests/build-parameters.sh" rel=3D"noreferrer noreferrer"=
 target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-releas=
e-aarch64-next-allmodconfig/56/artifact/artifacts/manifests/build-parameter=
s.sh</a><br>
curl -o artifacts/test.sh <a href=3D"https://ci.linaro.org/job/tcwg_kernel-=
bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/artifacts/test.sh=
" rel=3D"noreferrer noreferrer" target=3D"_blank">https://ci.linaro.org/job=
/tcwg_kernel-bisect-llvm-release-aarch64-next-allmodconfig/56/artifact/arti=
facts/test.sh</a><br>
chmod +x artifacts/test.sh<br>
<br>
# Reproduce the baseline build (build all pre-requisites)<br>
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baselin=
e.sh<br>
<br>
cd linux<br>
<br>
# Reproduce first_bad build<br>
git checkout --detach 2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
../artifacts/test.sh<br>
<br>
# Reproduce last_good build<br>
git checkout --detach 18348c5a4f2137db45a3348e59296b2f1d6aca5a<br>
../artifacts/test.sh<br>
<br>
cd ..<br>
&lt;/cut&gt;<br>
<br>
History of pending regressions and results: <a href=3D"https://git.linaro.o=
rg/toolchain/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llv=
m-release-aarch64-next-allmodconfig" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=
=3Dlinaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allmodconfig</a><b=
r>
<br>
Artifacts: <a href=3D"https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-rel=
ease-aarch64-next-allmodconfig/56/artifact/artifacts/" rel=3D"noreferrer no=
referrer" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-bisect-ll=
vm-release-aarch64-next-allmodconfig/56/artifact/artifacts/</a><br>
Build log: <a href=3D"https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-rel=
ease-aarch64-next-allmodconfig/56/consoleText" rel=3D"noreferrer noreferrer=
" target=3D"_blank">https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-relea=
se-aarch64-next-allmodconfig/56/consoleText</a><br>
<br>
Full commit:<br>
&lt;cut&gt;<br>
commit 2fe4750e8506da0f23ab80390b762b0d44a04fc5<br>
Author: Hawking Zhang &lt;<a href=3D"mailto:Hawking.Zhang@amd.com" target=
=3D"_blank" rel=3D"noreferrer">Hawking.Zhang@amd.com</a>&gt;<br>
Date:=C2=A0 =C2=A0Mon Dec 23 16:51:42 2019 +0800<br>
<br>
=C2=A0 =C2=A0 drm/amdgpu: move xgmi init/fini to xgmi_add/remove_device cal=
l<br>
<br>
=C2=A0 =C2=A0 For sriov, psp ip block has to be initialized before<br>
=C2=A0 =C2=A0 ih block for the dynamic register programming interface<br>
=C2=A0 =C2=A0 that needed for vf ih ring buffer. On the other hand,<br>
=C2=A0 =C2=A0 current psp ip block hw_init function will initialize<br>
=C2=A0 =C2=A0 xgmi session which actaully depends on interrupt to<br>
=C2=A0 =C2=A0 return session context. This results an empty xgmi ta<br>
=C2=A0 =C2=A0 session id and later failures on all the xgmi ta cmd<br>
=C2=A0 =C2=A0 invoked from vf. xgmi ta session initialization has to<br>
=C2=A0 =C2=A0 be done after ih ip block hw_init call.<br>
<br>
=C2=A0 =C2=A0 to unify xgmi session init/fini for both bare-metal<br>
=C2=A0 =C2=A0 sriov virtualization use scenario, move xgmi ta init<br>
=C2=A0 =C2=A0 to xgmi_add_device call, and accordingly terminate xgmi<br>
=C2=A0 =C2=A0 ta session in xgmi_remove_device call.<br>
<br>
=C2=A0 =C2=A0 The existing suspend/resume sequence will not be changed.<br>
<br>
=C2=A0 =C2=A0 Signed-off-by: Hawking Zhang &lt;<a href=3D"mailto:Hawking.Zh=
ang@amd.com" target=3D"_blank" rel=3D"noreferrer">Hawking.Zhang@amd.com</a>=
&gt;<br>
=C2=A0 =C2=A0 Reviewed-by: Frank Min &lt;<a href=3D"mailto:Frank.Min@amd.co=
m" target=3D"_blank" rel=3D"noreferrer">Frank.Min@amd.com</a>&gt;<br>
=C2=A0 =C2=A0 Signed-off-by: Alex Deucher &lt;<a href=3D"mailto:alexander.d=
eucher@amd.com" target=3D"_blank" rel=3D"noreferrer">alexander.deucher@amd.=
com</a>&gt;<br>
---<br>
=C2=A0drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c=C2=A0 | 18 ++----------------=
<br>
=C2=A0drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h=C2=A0 |=C2=A0 2 ++<br>
=C2=A0drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c | 11 ++++++++++-<br>
=C2=A0drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h |=C2=A0 2 +-<br>
=C2=A04 files changed, 15 insertions(+), 18 deletions(-)<br>
<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_psp.c<br>
index 3a1570dafe34..939a114605c0 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c<br>
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c<br>
@@ -558,7 +558,7 @@ int psp_xgmi_invoke(struct psp_context *psp, uint32_t t=
a_cmd_id)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return psp_ta_invoke(psp, ta_cmd_id, psp-&gt;xg=
mi_context.session_id);<br>
=C2=A0}<br>
<br>
-static int psp_xgmi_terminate(struct psp_context *psp)<br>
+int psp_xgmi_terminate(struct psp_context *psp)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int ret;<br>
<br>
@@ -579,7 +579,7 @@ static int psp_xgmi_terminate(struct psp_context *psp)<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
=C2=A0}<br>
<br>
-static int psp_xgmi_initialize(struct psp_context *psp)<br>
+int psp_xgmi_initialize(struct psp_context *psp)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct ta_xgmi_shared_memory *xgmi_cmd;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int ret;<br>
@@ -1420,16 +1420,6 @@ static int psp_load_fw(struct amdgpu_device *adev)<b=
r>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (adev-&gt;gmc.xgmi.num_physical_nodes &gt; 1=
) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D psp_xgmi_in=
itialize(psp);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Warning the XGMI=
 seesion initialize failure<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * Instead of stop =
driver initialization<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0dev_err(psp-&gt;adev-&gt;dev,<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;XGMI: Failed to initialize XGMI=
 session\n&quot;);<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (psp-&gt;adev-&gt;psp.ta_fw) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D psp_ras_ini=
tialize(psp);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret)<br>
@@ -1494,10 +1484,6 @@ static int psp_hw_fini(void *handle)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 void *tmr_buf;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 void **pptr;<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0if (adev-&gt;gmc.xgmi.num_physical_nodes &gt; 1=
 &amp;&amp;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0psp-&gt;xgmi_context.initialized =
=3D=3D 1)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 psp_xgmi_terminate=
(psp);<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (psp-&gt;adev-&gt;psp.ta_fw) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 psp_ras_terminate(p=
sp);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 psp_dtm_terminate(p=
sp);<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h b/drivers/gpu/drm/amd/=
amdgpu/amdgpu_psp.h<br>
index 611021514c52..c77e1abb538a 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h<br>
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_psp.h<br>
@@ -362,6 +362,8 @@ int psp_gpu_reset(struct amdgpu_device *adev);<br>
=C2=A0int psp_update_vcn_sram(struct amdgpu_device *adev, int inst_idx,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 uint64_t cmd_gpu_addr, int cmd_size);<br>
<br>
+int psp_xgmi_initialize(struct psp_context *psp);<br>
+int psp_xgmi_terminate(struct psp_context *psp);<br>
=C2=A0int psp_xgmi_invoke(struct psp_context *psp, uint32_t ta_cmd_id);<br>
<br>
=C2=A0int psp_ras_invoke(struct psp_context *psp, uint32_t ta_cmd_id);<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_xgmi.c<br>
index a97af422575a..78989e9560d1 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c<br>
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.c<br>
@@ -365,6 +365,13 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 0;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (amdgpu_device_ip_get_ip_block(adev, AMD_IP_=
BLOCK_TYPE_PSP)) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D psp_xgmi_in=
itialize(&amp;adev-&gt;psp);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0dev_err(adev-&gt;dev,<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;XGMI: Failed to initialize xgmi=
 session\n&quot;);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0return ret;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ret =3D psp_xgmi_ge=
t_hive_id(&amp;adev-&gt;psp, &amp;adev-&gt;gmc.xgmi.hive_id);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ret) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dev_err(adev-&gt;dev,<br>
@@ -451,7 +458,7 @@ int amdgpu_xgmi_add_device(struct amdgpu_device *adev)<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return ret;<br>
=C2=A0}<br>
<br>
-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev)<br>
+int amdgpu_xgmi_remove_device(struct amdgpu_device *adev)<br>
=C2=A0{<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 struct amdgpu_hive_info *hive;<br>
<br>
@@ -471,6 +478,8 @@ void amdgpu_xgmi_remove_device(struct amdgpu_device *ad=
ev)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 amdgpu_xgmi_sysfs_r=
em_dev_info(adev, hive);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mutex_unlock(&amp;h=
ive-&gt;hive_lock);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return psp_xgmi_terminate(&amp;adev-&gt;psp);<b=
r>
=C2=A0}<br>
<br>
=C2=A0int amdgpu_xgmi_ras_late_init(struct amdgpu_device *adev)<br>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h b/drivers/gpu/drm/amd=
/amdgpu/amdgpu_xgmi.h<br>
index 74011fbc2251..c62a4acf4c14 100644<br>
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h<br>
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_xgmi.h<br>
@@ -40,7 +40,7 @@ struct amdgpu_hive_info {<br>
=C2=A0struct amdgpu_hive_info *amdgpu_get_xgmi_hive(struct amdgpu_device *a=
dev, int lock);<br>
=C2=A0int amdgpu_xgmi_update_topology(struct amdgpu_hive_info *hive, struct=
 amdgpu_device *adev);<br>
=C2=A0int amdgpu_xgmi_add_device(struct amdgpu_device *adev);<br>
-void amdgpu_xgmi_remove_device(struct amdgpu_device *adev);<br>
+int amdgpu_xgmi_remove_device(struct amdgpu_device *adev);<br>
=C2=A0int amdgpu_xgmi_set_pstate(struct amdgpu_device *adev, int pstate);<b=
r>
=C2=A0int amdgpu_xgmi_get_hops_count(struct amdgpu_device *adev,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 struct amdgpu_devic=
e *peer_adev);<br>
&lt;/cut&gt;<br>
<br>
-- <br>
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br>
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux%2Bunsubscribe@googlegroups.com"=
 target=3D"_blank" rel=3D"noreferrer">clang-built-linux+unsubscribe@googleg=
roups.com</a>.<br>
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/1589326257.1893.1580912447101.JavaMail.javamai=
luser%40localhost" rel=3D"noreferrer noreferrer" target=3D"_blank">https://=
groups.google.com/d/msgid/clang-built-linux/1589326257.1893.1580912447101.J=
avaMail.javamailuser%40localhost</a>.<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdm%3Dz%2BL07581%2BgbZ4PPt9Fn_MGJqGeeXTV1=
wrRz4hau_AA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https:=
//groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%3Dz%2BL07581%2BgbZ4P=
Pt9Fn_MGJqGeeXTV1wrRz4hau_AA%40mail.gmail.com</a>.<br />

--0000000000002a28d7059dd5c48b--
