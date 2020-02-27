Return-Path: <clang-built-linux+bncBDM6PI5M4IFRB6MM4DZAKGQEXH6HCIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id DC412172626
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 19:12:09 +0100 (CET)
Received: by mail-lf1-x13d.google.com with SMTP id q5sf58953lfc.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Feb 2020 10:12:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582827129; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0cofx9ku8l067P0IPKkBatoTFLKfVUZP9cxS/GLnABdqYAy5i0AzJH/CfPs8WHh5U
         gjVwCYPvkyxxg+4nWd/+cPH1q/B8jTPN4ucUuVo1efgvT8alBGcLtEJUkERjbqfvfxf9
         T34cQh1eXM8QaQfNSwE0XYPHBD4AQzltRIKPagF6Z6zH+psOrpv9HzthPpiSZTmzsaF6
         XHHSQSSaIfVUg6++hcHrRk0mGeF5efLvpEdd0lpN3OPXZ5/6EV7b6EebU39Vn7i1aUoE
         SlMxQXGB8AXAhEWA74zReOMhTtrLqBp4OcBog/utpOdbVwtMBtn01Wgkro1nDlkep/sz
         uO7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=43qGhyiuF3SrPKIs9C6KENBREfzFF6NsIiZu1XjR35k=;
        b=bDf4vRnSnqJh7p7Bve87I9RfcLbPdwLUK9dMVWhtt7MR08RpLDcL9ysu3UnJMDVxLc
         x1M9rMSdrAsW4GMR4lVbiRwsgY7wbsiMzQJJb/VeINfd692mmWMLYhAhVaT2SfId/20f
         Y/iXD0QK+hR7hMuDS/vh8UfwOq0lLIQZN5S+GxkYDcozfgEN7Yb2ZKoJDwVjM/YhBOxj
         UsjY6eyiL2FUl7EyX0czhtHyodvrCJ2y0ldps9D7+eLhDDJTWo3AaHoKAomEgTuEToc2
         HKyd85fRRQC6LUjN8fUspl/Di5Q5lFmX0nUGYa9uh5vihaWNBg4k2ULfxmcUDgIcKTs3
         xn+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=et4Rj4Gy;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43qGhyiuF3SrPKIs9C6KENBREfzFF6NsIiZu1XjR35k=;
        b=EbwVnD1ZHwpnhx8MuLkwcMULXvzZfGth4w8aDL5tKq7nUfKlySwcELdEIkJwJY6xKn
         2x6QGY5uqaeuRPK4yHIgxE2k6fM4AzBHa2W8DJQKNZhVGgGG7oTp8xIFjHVOpTRrUvcv
         5kBJkdOI4LneVSX0FTtsqi7GAICKNRQ3lEV0wIuNFDNQ0Z/bDcVqxNQWbneBSE0qUMBy
         bEKrlHFbi854w5udFhTlvk27gqZTaDtYTUZO79eUYwML8U7MjdBmIqWAcX3FeUTQ74as
         d5tlvIAns8ZqRYN3jmgQFIosShioS7CnBrzcIEjwDb/NlD0IiC8NcMvo/+qTylc/08M7
         /Omw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=43qGhyiuF3SrPKIs9C6KENBREfzFF6NsIiZu1XjR35k=;
        b=mSZsoWhJcPdtvu6HvNlX/B/W1rLAnp0aqjyaSrxvMemQNrcKH6S5G6VWCsyrAduk7P
         AU2NUneMNQKL+R5lJfLgLDKkhw0eYzrSwd5QRDTnZkOXaIWvUc+nd/5Wu4eP/zNznRQR
         1ZO8j3EbM9nT4Lkmu05SbGWrggCKj/GSsqH2qWM4FfpNxl15wGS9uNUqxKg1mZ1tc+S0
         4nesGmhtxi2FkznC3Jg0NlIx2TDSHz1F81etc3JXoHK6b5IuS6yEubQPlYv/2Lg8dXrq
         XfW/SVOM3l50VjhIoYLvFanzYcGm2Lj6cYcGxsCT6uxiv4iVHOlmHa1UCTXFtmv8L42P
         dg0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1ITM2EtXwn7SIx3DHS+2s82TrvPjlQWPldsNO83UywXPwxMF1F
	G0YmpyE+2N8H455k8GdzYLY=
X-Google-Smtp-Source: ADFU+vu9snc4eGBFi/jkCkdRfjVZjVp9lQEac0XA9BkSUmQif/k/WuGY2g8g2AFQ/W47arJIsuCIpQ==
X-Received: by 2002:a2e:b5d5:: with SMTP id g21mr185954ljn.89.1582827129274;
        Thu, 27 Feb 2020 10:12:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7c1:: with SMTP id x184ls16147lff.7.gmail; Thu, 27 Feb
 2020 10:12:08 -0800 (PST)
X-Received: by 2002:a19:8c12:: with SMTP id o18mr327344lfd.145.1582827128610;
        Thu, 27 Feb 2020 10:12:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582827128; cv=none;
        d=google.com; s=arc-20160816;
        b=b1ypRF6Ju0od6hHyTy1QHJsVG+y85OWN5HzFNJhk/xTuCOz+RgzsNY9uZHmzJtgFKN
         5kWY5uB9TdRLn4FmSUOFSiD3eU4dCDRSZc0H02Lyo/iVHsL8hEqUJtLlnXApDkSVW/CW
         SrXLhNte89ONQdtjDEgNYbWB/Vli07dP81MAAfIhe7QNEZDGjxKgZts/RGh6SmbXvUMI
         SNtNg0FpYRHod2l0xvKADMgQkw79TO9hXYgB1Tls4DG/UegP+e5/pzGF46z3vTkd0cof
         e/iljjd9vlG68QxtClC9pLgDxxEl4eGwDTfbHBJQnQOK132W8aB/+qWx9ip4qb1rsZjM
         I26g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=4ZRPDgTYU0fBYSfKvMOEjx7/e+/SuilVtAlRbazhiSc=;
        b=gKRtWN4EloIXbYM59lXHiBOVlEdS/Wjdc6K6dqM62heGkmt6HzlbHeDUNa9sCrJ2yD
         1W6WQ/S6YMxC5doisfgksdm3lURL5AvHONzroDZhSkRanupsZAyPOQ8PB5uqkgCLn+xw
         QgeGRlnfQCD/uSYPbd4Rf5z/Yr+yiTSPrsP2qhm4XCNdyRtIvoaOdmLIkbTnJv34x1BT
         xXum5K7Uxsy8DzcID6dSd3RXMji7jk2G3ULdk56zub/VyLY6F8gElwZtjDQPP2d5G9sV
         tUteMkbfAvjq7ni/ygK+ZjVH57tCXcXFmC7Xn9xwJD/efMhOTPQ282U2loWlfaoHgzoy
         t6OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=et4Rj4Gy;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id v17si20443lfp.5.2020.02.27.10.12.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Feb 2020 10:12:08 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id p9so419095wmc.2
        for <clang-built-linux@googlegroups.com>; Thu, 27 Feb 2020 10:12:08 -0800 (PST)
X-Received: by 2002:a05:600c:2042:: with SMTP id p2mr608wmg.79.1582827128158;
        Thu, 27 Feb 2020 10:12:08 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id 16sm8537613wmi.0.2020.02.27.10.12.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 27 Feb 2020 10:12:07 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 27 Feb 2020 18:12:01 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1650816966.4778.1582827127647.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allmodconfig - Build # 68 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4777_862085.1582827121896"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=et4Rj4Gy;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

------=_Part_4777_862085.1582827121896
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Successfully identified regression in *linux* in CI configuration tcwg_kern=
el/llvm-master-arm-next-allmodconfig.  So far, this commit has regressed CI=
 configurations:
 - tcwg_kernel/gnu-master-arm-next-allmodconfig
 - tcwg_kernel/gnu-master-arm-next-allyesconfig
 - tcwg_kernel/gnu-release-arm-next-allmodconfig
 - tcwg_kernel/llvm-master-arm-next-allmodconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
Author: xinhui pan <xinhui.pan@amd.com>

    drm/amdgpu: Remove kfd eviction fence before release bo
</cut>

First few build errors in logs:
00:04:06 make[1]: *** [__modpost] Error 1
00:04:06 make: *** [modules] Error 2
Configuration details:
rr[llvm_url]=3D"https://github.com/llvm/llvm-project.git"
rr[linux_url]=3D"https://git.kernel.org/pub/scm/linux/kernel/git/next/linux=
-next.git"
rr[linux_branch]=3D"c99b17ac03994525092fd66bed14b4a0c82f0b4d"

Results regressed to (for first_bad =3D=3D f7f3e49a0d744da16dd4e2ec4e8e707e=
a7f4a98f)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
20110

from (for last_good =3D=3D cab5dec425f19f3d4eeca0d8e073578cbed66d8d)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
27451
linux build successful:
all

Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-master-arm-next-allmodconfig/68/artifact/artifacts/build-f7f3e49a0d744=
da16dd4e2ec4e8e707ea7f4a98f/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-master-arm-next-allmodconfig/68/artifact/artifacts/build-cab5dec425f19=
f3d4eeca0d8e073578cbed66d8d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-mast=
er-arm-next-allmodconfig/68/

Reproduce builds:
<cut>
mkdir investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
cd investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcw=
g_kernel-bisect-llvm-master-arm-next-allmodconfig/68/artifact/artifacts/man=
ifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/t=
cwg_kernel-bisect-llvm-master-arm-next-allmodconfig/68/artifact/artifacts/m=
anifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm=
-master-arm-next-allmodconfig/68/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baselin=
e.sh

cd linux

# Reproduce first_bad build
git checkout --detach f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach cab5dec425f19f3d4eeca0d8e073578cbed66d8d
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchai=
n/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-master-ar=
m-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-nex=
t-allmodconfig/68/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-nex=
t-allmodconfig/68/consoleText

Full commit:
<cut>
commit f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
Author: xinhui pan <xinhui.pan@amd.com>
Date:   Tue Feb 11 11:28:34 2020 +0800

    drm/amdgpu: Remove kfd eviction fence before release bo
   =20
    No need to trigger eviction as the memory mapping will not be used
    anymore.
   =20
    All pt/pd bos share same resv, hence the same shared eviction fence.
    Everytime page table is freed, the fence will be signled and that cuase=
s
    kfd unexcepted evictions.
   =20
    CC: Christian K=C3=B6nig <christian.koenig@amd.com>
    CC: Felix Kuehling <felix.kuehling@amd.com>
    CC: Alex Deucher <alexander.deucher@amd.com>
    Acked-by: Christian K=C3=B6nig <christian.koenig@amd.com>
    Reviewed-by: Felix Kuehling <Felix.Kuehling@amd.com>
    Signed-off-by: xinhui pan <xinhui.pan@amd.com>
    Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
---
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h       |  1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 38 ++++++++++++++++++++=
++++
 drivers/gpu/drm/amd/amdgpu/amdgpu_object.c       |  5 ++++
 3 files changed, 44 insertions(+)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_amdkfd.h
index 9e8db702d878..0ee8aae6c519 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd.h
@@ -96,6 +96,7 @@ struct amdgpu_amdkfd_fence *amdgpu_amdkfd_fence_create(u6=
4 context,
 						       struct mm_struct *mm);
 bool amdkfd_fence_check_mm(struct dma_fence *f, struct mm_struct *mm);
 struct amdgpu_amdkfd_fence *to_amdgpu_amdkfd_fence(struct dma_fence *f);
+int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo);
=20
 struct amdkfd_process_info {
 	/* List head of all VMs that belong to a KFD process */
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu=
/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
index 66bde9e9a4c9..e1d1eed7a25f 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
@@ -276,6 +276,42 @@ static int amdgpu_amdkfd_remove_eviction_fence(struct =
amdgpu_bo *bo,
 	return 0;
 }
=20
+int amdgpu_amdkfd_remove_fence_on_pt_pd_bos(struct amdgpu_bo *bo)
+{
+	struct amdgpu_bo *root =3D bo;
+	struct amdgpu_vm_bo_base *vm_bo;
+	struct amdgpu_vm *vm;
+	struct amdkfd_process_info *info;
+	struct amdgpu_amdkfd_fence *ef;
+	int ret;
+
+	/* we can always get vm_bo from root PD bo.*/
+	while (root->parent)
+		root =3D root->parent;
+
+	vm_bo =3D root->vm_bo;
+	if (!vm_bo)
+		return 0;
+
+	vm =3D vm_bo->vm;
+	if (!vm)
+		return 0;
+
+	info =3D vm->process_info;
+	if (!info || !info->eviction_fence)
+		return 0;
+
+	ef =3D container_of(dma_fence_get(&info->eviction_fence->base),
+			struct amdgpu_amdkfd_fence, base);
+
+	BUG_ON(!dma_resv_trylock(bo->tbo.base.resv));
+	ret =3D amdgpu_amdkfd_remove_eviction_fence(bo, ef);
+	dma_resv_unlock(bo->tbo.base.resv);
+
+	dma_fence_put(&ef->base);
+	return ret;
+}
+
 static int amdgpu_amdkfd_bo_validate(struct amdgpu_bo *bo, uint32_t domain=
,
 				     bool wait)
 {
@@ -1044,6 +1080,8 @@ void amdgpu_amdkfd_gpuvm_destroy_cb(struct amdgpu_dev=
ice *adev,
 	list_del(&vm->vm_list_node);
 	mutex_unlock(&process_info->lock);
=20
+	vm->process_info =3D NULL;
+
 	/* Release per-process resources when last compute VM is destroyed */
 	if (!process_info->n_vms) {
 		WARN_ON(!list_empty(&process_info->kfd_bo_list));
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c b/drivers/gpu/drm/a=
md/amdgpu/amdgpu_object.c
index 65176b97401c..e4a8c424d290 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_object.c
@@ -1307,6 +1307,11 @@ void amdgpu_bo_release_notify(struct ttm_buffer_obje=
ct *bo)
 	if (abo->kfd_bo)
 		amdgpu_amdkfd_unreserve_memory_limit(abo);
=20
+	/* We only remove the fence if the resv has individualized. */
+	WARN_ON_ONCE(bo->base.resv !=3D &bo->base._resv);
+	if (bo->base.resv =3D=3D &bo->base._resv)
+		amdgpu_amdkfd_remove_fence_on_pt_pd_bos(abo);
+
 	if (bo->mem.mem_type !=3D TTM_PL_VRAM || !bo->mem.mm_node ||
 	    !(abo->flags & AMDGPU_GEM_CREATE_VRAM_WIPE_ON_RELEASE))
 		return;
</cut>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1650816966.4778.1582827127647.JavaMail.javamailuser%40loc=
alhost.

------=_Part_4777_862085.1582827121896--
