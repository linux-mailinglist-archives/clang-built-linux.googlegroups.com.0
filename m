Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6HT3PZAKGQEYUEPU5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id B5138170C43
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 00:06:33 +0100 (CET)
Received: by mail-io1-xd38.google.com with SMTP id e13sf806778iob.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 15:06:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582758392; cv=pass;
        d=google.com; s=arc-20160816;
        b=e/q2BOd6Ms9+vGVzCQ4YmtuJdpcsffKZyDvmGWcgQ3ZtYpbh4QIJiraMDr7z7/HOyJ
         R1lxlZdf9hGBEPUpUKoAmIihhebVgk5EuGDAL92JTEBZhoGuFNsKgvsuzR9oKKki3mCz
         kttIqsYdEAGohUHg/NlJfxQAWiwEQRdGd3+DUF8Bg3MtNnlcPVKtyDNiAbb6wtO8uflU
         i+BXdGba04lyJCQkZMLPIplm72B9hUzJGje9JviiwcND5L3N9qvIG5OyASjyQPHF/8FT
         aFa4lO4CVqSc1kxupr2bq8QUH7nqa7tNewOHF5z65aiz1+Lw4yU5iBxwCXT40wobxNbv
         lEyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=STEOjrSGVZUoFLRH53QKdWcGNQcxNuvZbhGe8r1Lm8o=;
        b=uVTQoqlXEX3jXmzItaAH0aAOtezkPxt3GR2VVdbbfwl1yQG0Xq21vIX4KQjKLI86dF
         8/5x1HBoL3USvsxcKi6SfofBmaTBMRHKiZPMZheaQZ+jKuRo2eBTGaIUcIi/V+jpD9vE
         e9rlxk9IvuPc14gBYXZmDlMJM+InT411gtxmgaqdUL1mf5V4sX01mx8ZuNlv++0MyQP/
         /jp2+vvUfMOUKBYIFCE4gB77fshKy1TL/vOF8mXdpvdDsScID6eyddeMPvs4uYxyp3ib
         tdDaKr1sCFPm4kFoHoOBhSMlI6GMmPH8f+ppufIiW61hnbkms4yJ/IV06DXB2wJKWTbc
         pV2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Nfg0VJ/y";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=STEOjrSGVZUoFLRH53QKdWcGNQcxNuvZbhGe8r1Lm8o=;
        b=HA0wR9P8AmCEZdKgrw6+8TquabVuq8LfcZeigENWxFi6mhUulJZPLauK/zyF+1KCg5
         YU0HAdz/PDXalWKwcvklmoq0ALeznFjKQ5NMB/mvceP0lEcEp1Xszxio5n2tJJkLFF6k
         RGYyA3lI7WvBQVYdpr6u294MgpwuELXwFvbBEhkNQlDpTh++WZQ+bNC5ude5YqzW3iJh
         n3J533iHEWIweO3xaSXMxq49cfCc9LDk9Z0oS944fcRSqHI9dzJq/x5WnqXzl54N3g2R
         YAwh4VruENMNYKFG2QaBfuGSU2sDX6DxuoHurJa3glJg8yCE5YM68irwNapzAHb6TkqH
         9YMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=STEOjrSGVZUoFLRH53QKdWcGNQcxNuvZbhGe8r1Lm8o=;
        b=PZtgCrWmnNGJaaR34hs5NKSf/Yo/mL4hGnAtIXlrKw1BJE6UM01zNJqfZCqLVDokHu
         COXFZrA7LFH+KRjhB5CtLj2omw+kIQoOaRwfVK+yM/+IhgE8vCt8Np046PcPAWhuG28h
         K456KU8oYA8PdLvuKS+iYdz7IBgfSRs6NCb/ZdNHa6V6yLiw/sp/yQjy/sfSI6D8dzCz
         qZCB1EzB29MJfTiueLFgCWLBA5Xf/7aNeTUy8dc2SQz224+Af+EUaUk7TOcj3E1C3QWE
         KEiiSTuauzMnHNURVnB+KDetH5D73bO/2XeUvOngfHHCimZI0yjLl8D8950gehvgKZSf
         5yaA==
X-Gm-Message-State: APjAAAVJA9GKv6dayBhsdbeA4rvWfjhZzKjJbH/BSKjnJZe6s4MZeFsX
	ZrbT2E64v34/fz5Y4VEKpuE=
X-Google-Smtp-Source: APXvYqwI8cp2vgbk6hWyvh7bEZZwn9rokRCzQeNs5ZjsWg9GjgmG1AtivJbBP4/6xndtI/+497Gtcg==
X-Received: by 2002:a02:9466:: with SMTP id a93mr1965055jai.40.1582758392214;
        Wed, 26 Feb 2020 15:06:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7f0a:: with SMTP id l10ls198993ioq.1.gmail; Wed, 26 Feb
 2020 15:06:31 -0800 (PST)
X-Received: by 2002:a6b:3942:: with SMTP id g63mr1200403ioa.78.1582758391711;
        Wed, 26 Feb 2020 15:06:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582758391; cv=none;
        d=google.com; s=arc-20160816;
        b=QABJ6H8pSAQ5fLGGxdOmCWcJUOKVJRl502hUsZL6KP8DDdOzdbLKfExmbATNgR7eX1
         V4Wnc52GwF2yCGjueaajg8RElFnakhOuZ1e3fw4fAGZ8hEuI/r20bAl+mRyrGWAascDs
         8pLygjB3wiNVbj+LfMtNqOWnKJU2mZvUDlTHpSNSVItHo4x+LjYN0fZhsI9HEizXnTRv
         0M6gBxpr4ujmFUF94SZ/RZDVHfCmmzLIYo2Cyl+/3K2cjeEQX24mXbtcwsZ/yvQe6iuj
         OxIQBm35GUzGi8yzU8wKhECC4jto71DhAdMWDhK8c1xFzpWLhPshePGz6vzmA2HloZ9r
         P3Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=sxyajViujD9w6JQ5spd5OhNCSjqhzXXHrUmWv7j3gE0=;
        b=rl6GqLSfSbhOkvV66QnRvUfNB3JA3ogSyeakwxFHP9rhSbqlqN89912lo51MnqK471
         Y2vLCko/hdVifo+duIVpLgY8nlkl9vt943/yNS/wI+hlb5L/PJrR3Mx7C72HeP4BYvF6
         DjIYKo3UvEfD/u+Tret3EukgHe2FmMr+maGQ6cskQE++C1GFaEkW0sE+yMgWnmkywgDs
         pu9K1bkOiiN0k1IdYQxWKj2G6GAi73VfC/b74ujkLyU4L0AXcXvWb0W2qQo8a0KVSVhQ
         vgSnxHcYb2Z81g9pw0FuQ5II0FzXXH41puETkvnXXpExUw3LNsqYBBaCIyiVuPyQhRV5
         0qzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="Nfg0VJ/y";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id p9si62174iog.5.2020.02.26.15.06.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 15:06:31 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id m13so294787pjb.2
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 15:06:31 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr1476976pjb.123.1582758390660;
 Wed, 26 Feb 2020 15:06:30 -0800 (PST)
MIME-Version: 1.0
References: <1934074311.4390.1582739712490.JavaMail.javamailuser@localhost>
In-Reply-To: <1934074311.4390.1582739712490.JavaMail.javamailuser@localhost>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Feb 2020 15:06:19 -0800
Message-ID: <CAKwvOdmruBR2u_ySqchmbm5QRquCyaxVph6eY+7hCfHkVjbcfg@mail.gmail.com>
Subject: Re: [CI-NOTIFY]: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
 - Build # 59 - Successful!
To: "Pan, Xinhui" <xinhui.pan@amd.com>
Cc: TCWG Validation <tcwg-validation@linaro.org>, Arnd Bergmann <arnd@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Maxim Kuvyrkov <maxim.kuvyrkov@linaro.org>, CI Notify <ci_notify@linaro.org>, 
	"Koenig, Christian" <christian.koenig@amd.com>, Felix.Kuehling@amd.com, 
	"Deucher, Alexander" <alexander.deucher@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="Nfg0VJ/y";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1044
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

Hi xinhui,

Looks like from our CI we're seeing the error:

00:05:11 ERROR: "amdgpu_amdkfd_remove_fence_on_pt_pd_bos"
[drivers/gpu/drm/amd/amdgpu/amdgpu.ko] undefined!

from your commit ("drm/amdgpu: Remove kfd eviction fence before
release bo"). Can you please take a look?

Also, there were a few more warnings under drivers/gpu/drm/amd/amdgpu/:
https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-next-allmodco=
nfig/59/artifact/artifacts/build-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f/c=
onsole.log

-Wpointer-bool-conversion looks like there may be an unnecessary `&`
operator in the two flagged expressions.
-Wframe-larger-than=3D are slightly trickier to track down, but I wrote
a tool to help pinpoint where excessive stack usage is coming from:
https://github.com/ClangBuiltLinux/frame-larger-than

If you could fix these, please use the following tag to help us track
the effectiveness of our CI:

Reported-by: TCWG Bisect <ci_notify@linaro.org>

Please let me know if you have any questions or need help reproducing.

On Wed, Feb 26, 2020 at 9:55 AM <ci_notify@linaro.org> wrote:
>
> Successfully identified regression in *linux* in CI configuration tcwg_ke=
rnel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed=
 CI configurations:
>  - tcwg_kernel/gnu-master-arm-next-allmodconfig
>  - tcwg_kernel/gnu-master-arm-next-allyesconfig
>  - tcwg_kernel/llvm-release-arm-next-allmodconfig
>
> Culprit:
> <cut>
> commit f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
> Author: xinhui pan <xinhui.pan@amd.com>
>
>     drm/amdgpu: Remove kfd eviction fence before release bo
> </cut>
>
> First few build errors in logs:
> 00:05:12 make[1]: *** [__modpost] Error 1
> 00:05:12 make: *** [modules] Error 2
> Configuration details:
> rr[llvm_url]=3D"https://github.com/llvm/llvm-project.git"
> rr[linux_url]=3D"https://git.kernel.org/pub/scm/linux/kernel/git/next/lin=
ux-next.git"
> rr[linux_branch]=3D"c99b17ac03994525092fd66bed14b4a0c82f0b4d"
>
> Results regressed to (for first_bad =3D=3D f7f3e49a0d744da16dd4e2ec4e8e70=
7ea7f4a98f)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 20110
>
> from (for last_good =3D=3D cab5dec425f19f3d4eeca0d8e073578cbed66d8d)
> reset_artifacts:
> -10
> build_llvm:
> -1
> linux_n_obj:
> 27451
> linux build successful:
> all
>
> Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisec=
t-llvm-release-arm-next-allmodconfig/59/artifact/artifacts/build-f7f3e49a0d=
744da16dd4e2ec4e8e707ea7f4a98f/
> Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisec=
t-llvm-release-arm-next-allmodconfig/59/artifact/artifacts/build-cab5dec425=
f19f3d4eeca0d8e073578cbed66d8d/
> Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-re=
lease-arm-next-allmodconfig/59/
>
> Reproduce builds:
> <cut>
> mkdir investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
> cd investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
>
> git clone https://git.linaro.org/toolchain/jenkins-scripts
>
> mkdir -p artifacts/manifests
> curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/t=
cwg_kernel-bisect-llvm-release-arm-next-allmodconfig/59/artifact/artifacts/=
manifests/build-baseline.sh
> curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job=
/tcwg_kernel-bisect-llvm-release-arm-next-allmodconfig/59/artifact/artifact=
s/manifests/build-parameters.sh
> curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-ll=
vm-release-arm-next-allmodconfig/59/artifact/artifacts/test.sh
> chmod +x artifacts/test.sh
>
> # Reproduce the baseline build (build all pre-requisites)
> ./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-basel=
ine.sh
>
> cd linux
>
> # Reproduce first_bad build
> git checkout --detach f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
> ../artifacts/test.sh
>
> # Reproduce last_good build
> git checkout --detach cab5dec425f19f3d4eeca0d8e073578cbed66d8d
> ../artifacts/test.sh
>
> cd ..
> </cut>
>
> History of pending regressions and results: https://git.linaro.org/toolch=
ain/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-release=
-arm-next-allmodconfig
>
> Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-=
next-allmodconfig/59/artifact/artifacts/
> Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-=
next-allmodconfig/59/consoleText
>
> Full commit:
> <cut>
> commit f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
> Author: xinhui pan <xinhui.pan@amd.com>
> Date:   Tue Feb 11 11:28:34 2020 +0800
>
>     drm/amdgpu: Remove kfd eviction fence before release bo
>
>     No need to trigger eviction as the memory mapping will not be used
>     anymore.
>
>     All pt/pd bos share same resv, hence the same shared eviction fence.
>     Everytime page table is freed, the fence will be signled and that cua=
ses
>     kfd unexcepted evictions.
>
>     CC: Christian K=C3=B6nig <christian.koenig@amd.com>
>     CC: Felix Kuehling <felix.kuehling@amd.com>
>     CC: Alex Deucher <alexander.deucher@amd.com>
>     Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
>     Reviewed-by: Felix Kuehling <Felix.Kuehling@amd.com>
>     Signed-off-by: xinhui pan <xinhui.pan@amd.com>
>     Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
> ---
>  drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h       |  1 +
>  drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 38 ++++++++++++++++++=
++++++
>  drivers/gpu/drm/amd/amdgpu/amdgpu_object.c       |  5 ++++
>  3 files changed, 44 insertions(+)
>
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h b/drivers/gpu/drm=
/amd/amdgpu/amdgpu_amdkfd.h
> index 9e8db702d878..0ee8aae6c519 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
> @@ -96,6 +96,7 @@ struct amdgpu_amdkfd_fence *amdgpu_amdkfd_fence_create(=
u64 context,
>                                                        struct mm_struct *=
mm);
>  bool amdkfd_fence_check_mm(struct dma_fence *f, struct mm_struct *mm);
>  struct amdgpu_amdkfd_fence *to_amdgpu_amdkfd_fence(struct dma_fence *f);
> +int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo);
>
>  struct amdkfd_process_info {
>         /* List head of all VMs that belong to a KFD process */
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/g=
pu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> index 66bde9e9a4c9..e1d1eed7a25f 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> @@ -276,6 +276,42 @@ static int amdgpu_amdkfd_remove_eviction_fence(struc=
t amdgpu_bo *bo,
>         return 0;
>  }
>
> +int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo)
> +{
> +       struct amdgpu_bo *root =3D bo;
> +       struct amdgpu_vm_bo_base *vm_bo;
> +       struct amdgpu_vm *vm;
> +       struct amdkfd_process_info *info;
> +       struct amdgpu_amdkfd_fence *ef;
> +       int ret;
> +
> +       /* we can always get vm_bo from root PD bo.*/
> +       while (root->parent)
> +               root =3D root->parent;
> +
> +       vm_bo =3D root->vm_bo;
> +       if (!vm_bo)
> +               return 0;
> +
> +       vm =3D vm_bo->vm;
> +       if (!vm)
> +               return 0;
> +
> +       info =3D vm->process_info;
> +       if (!info || !info->eviction_fence)
> +               return 0;
> +
> +       ef =3D container_of(dma_fence_get(&info->eviction_fence->base),
> +                       struct amdgpu_amdkfd_fence, base);
> +
> +       BUG_ON(!dma_resv_trylock(bo->tbo.base.resv));
> +       ret =3D amdgpu_amdkfd_remove_eviction_fence(bo, ef);
> +       dma_resv_unlock(bo->tbo.base.resv);
> +
> +       dma_fence_put(&ef->base);
> +       return ret;
> +}
> +
>  static int amdgpu_amdkfd_bo_validate(struct amdgpu_bo *bo, uint32_t doma=
in,
>                                      bool wait)
>  {
> @@ -1044,6 +1080,8 @@ void amdgpu_amdkfd_gpuvm_destroy_cb(struct amdgpu_d=
evice *adev,
>         list_del(&vm->vm_list_node);
>         mutex_unlock(&process_info->lock);
>
> +       vm->process_info =3D NULL;
> +
>         /* Release per-process resources when last compute VM is destroye=
d */
>         if (!process_info->n_vms) {
>                 WARN_ON(!list_empty(&process_info->kfd_bo_list));
> diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm=
/amd/amdgpu/amdgpu_object.c
> index 65176b97401c..e4a8c424d290 100644
> --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
> +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
> @@ -1307,6 +1307,11 @@ void amdgpu_bo_release_notify(struct ttm_buffer_ob=
ject *bo)
>         if (abo->kfd_bo)
>                 amdgpu_amdkfd_unreserve_memory_limit(abo);
>
> +       /* We only remove the fence if the resv has individualized. */
> +       WARN_ON_ONCE(bo->base.resv !=3D &bo->base._resv);
> +       if (bo->base.resv =3D=3D &bo->base._resv)
> +               amdgpu_amdkfd_remove_fence_on_pt_pd_bos(abo);
> +
>         if (bo->mem.mem_type !=3D TTM_PL_VRAM || !bo->mem.mm_node ||
>             !(abo->flags & AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE))
>                 return;
> </cut>
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/1934074311.4390.1582739712490.JavaMail.javamailuser%40l=
ocalhost.



--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdmruBR2u_ySqchmbm5QRquCyaxVph6eY%2B7hCfHkVjbcfg%40m=
ail.gmail.com.
