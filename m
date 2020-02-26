Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBAXC3LZAKGQE4WVUWOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 803891706BB
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 18:55:14 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id n12sf160533edq.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 09:55:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582739714; cv=pass;
        d=google.com; s=arc-20160816;
        b=GL4gdjbY8uZQYgiR8JADAkR2/hbfFu2tB8pU3AeoRuFh8/90xjlTeLWVQslVgyShWd
         cyuqK/N7r6AOfoNux44SwBakW5q6izzg/00vHTrw1NlQRtO5jJTmr2naVQuH72fVVYaJ
         toQFZz3W7DtMjqUwz2Tc84wihvIgLomrOX5xe0jv1qipFDSgalk9IOF5qHuqMwYgPzkA
         Pp4GE2CCpcoLzQP/qLowCo08T1sx7lMF+CFT3JVdYOqQNfQonwNO8dFFe6CBIsEikIoN
         z8+tN2H9AlfjYXkzNuYghTGI506gqx2e7xbq6tdJr2jJHyIRHIHxHfuF5DFpg6SwWyfy
         z1cQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=YTnM4Y5riIAnZGUlOp+ePzKwkGRAQtSQspiIqbUTWzY=;
        b=GzqfVSOuIqjGOzugW7C7YpPXNBqCn12yDilhOqyi4wi6BlKcOjeerUS490jQ5Lrmq3
         eFtDiG6Vwy8f+sX/PALPRlPmO/zrr3GC/H7AOowu7efLrbrllJNSQMlSt0Zh9/xWc5z3
         TCuOnkWqbYPdVFYAhzxZrRjc/NAS0nq99UGYvsdccFZp8vz4W03FZTOl4SOpFR48y6b6
         383hKWJlv6ssu9RGuufalfSkaQr53mvyiODGxOSaUU6MPyU2dGzvzDhT9YM1EF4vJG0G
         lRwtQaNfrH0dAde+ULOj97kXfq1qftLSyPs9yLO99V8CVq/7kUSy+PvE1io87TLwPBgU
         4/wQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iUqRRd6Y;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YTnM4Y5riIAnZGUlOp+ePzKwkGRAQtSQspiIqbUTWzY=;
        b=cc/WWJBlh5SQm0jyr9nHICeorX2slyPzWo+ywIaIV+e5XCr6obtzIaMQoGh9y2KMRB
         +dFvlpMXwN5/5tmIhABUsQY5dlSpSns7Ga0MZOuEB4vQPkDjYLSWkdu95i8I4RC+mfD5
         ZArrqEQrkU6lWJMJhg+gFpq2GmUllW2FPMFI0RPNwxLtHIohTX7y3i2Y1Mc4p6i7ttvV
         yHiPu+fIePk1ko4dDsqNd4tAaMGV1X83O/2wH5BlJPN6RrnFzWsUwYEXgC/BSX4ZoDwH
         pjeW83yA+gWJ/OJwFm4xRRajh9qDwd/HQakk9sTpOV8UxexQ/MaFiqi2dyJmyj9db0VY
         8IDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YTnM4Y5riIAnZGUlOp+ePzKwkGRAQtSQspiIqbUTWzY=;
        b=kVBGeCGu64UeSq2tDYZ+RwncmYv5F8ptTD4Vd8FVoTL6Wkq4SHqb4diJdvoLYXm12B
         CS/JGBky7lKw+Cb5QXNyVyJTwcX4vla3qcSS1D/z/DOwpTdX1dQsNEzxleH16d/jO6WR
         e1l3keg1gMZrG/zFKYJpxlgV1kvVYBx2h/Tn4QCoYCGgdEflzPk+M0VDpM9M1y90L72M
         7wjky6/5JMXzPB9X/IPXS4LwexXjHFbJijlCPzXep1hwPynAT8Mqi9a6krEDSDAbvOYv
         eI3YLSmX2MczdTno7h3l2zlXfLis7kQMvBKKWyIDldYCREHCsnhwsrDB7Q8D8Zk43bDm
         WZiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXpVJjgf65fy8iVIqtKtdhl6qyYmJmAKCuKrdrs79b5LlkcI/ac
	BTxpUQV7QovmJeKemxnjUuw=
X-Google-Smtp-Source: APXvYqy2+Krh+uUu3B5dPmDxTTSWPd6s60by7Gj6vkLmP2Aa6SUJKbM2vyXKUJYP/76iF0vuCMiUew==
X-Received: by 2002:a17:906:344d:: with SMTP id d13mr5822738ejb.306.1582739714192;
        Wed, 26 Feb 2020 09:55:14 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:c98d:: with SMTP id c13ls7400edt.0.gmail; Wed, 26 Feb
 2020 09:55:13 -0800 (PST)
X-Received: by 2002:a05:6402:655:: with SMTP id u21mr555590edx.78.1582739713517;
        Wed, 26 Feb 2020 09:55:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582739713; cv=none;
        d=google.com; s=arc-20160816;
        b=xQHfZPZPy1546K5sOqT7De6RdRiCaOUTGFW//+tlR+MmaEqT9YaiyIxtI+yXKW0LPu
         MGDWWMYtTlVIg+64PsCpd15OMx/sKGnmrvK4T+CZOrRQ4fIzPH6AmyzwqPQDvlFwjUAV
         bRjRPX1pAuYjXBku8IsDeK6+JZKR46QbsI875lduxA4SbRcBZ7pwPGHb1/lHwaZ/pcjn
         16MoUGgs8d0ERMzXK5xLqWrrWDbeupwLnljo/m7ezUVWnwlEzP0HslqJ43Jk6gGMnoRe
         sZlXS4h4FbSaHbvKPWpLP5NiyQ52gZLiebtHq43AxkwZdH5BzOr7amHAqj4Z7F4lmyqg
         A1EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=RfNkdXXR9BQ1pFKSU3QyGr6tIQTz3MUnaga97qvqAXc=;
        b=Nw+G0TFWo8fa6zhXic93OE9tZYOIVgG2o4pZFYC5JH/Gl5JF3mvYlwyIenrzICzxes
         CkAsNCPeYGQh9T3nqd/u/mk6j/qZSk3N8/uRYaZW5qqkIzS2o01B6PyszgW4y+CrWQkD
         iNaU9a+5QbnCuBHc0UBAZip0AnHEweunB5lAPUChekZbfLBBJhzPcomvfTaJr+hKJb0i
         93uAtyMXqigSwMsxqzSX8VwzPt2ZpiZGJEVJIuLrXny1pL0bRPV502PJDKjQOjOB5LKD
         olm3//enV5ql5lYzNE85RMPBvRlVecbAo4bjbOX5mndkEUqJjg/8J+r2dKpPP/AliVG9
         1GSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=iUqRRd6Y;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id 29si20574edw.1.2020.02.26.09.55.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2020 09:55:13 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id e8so4232129wrm.5
        for <clang-built-linux@googlegroups.com>; Wed, 26 Feb 2020 09:55:13 -0800 (PST)
X-Received: by 2002:adf:de10:: with SMTP id b16mr6433850wrm.145.1582739713203;
        Wed, 26 Feb 2020 09:55:13 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id b10sm4106164wrw.61.2020.02.26.09.55.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 26 Feb 2020 09:55:12 -0800 (PST)
From: ci_notify@linaro.org
Date: Wed, 26 Feb 2020 17:55:11 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1934074311.4390.1582739712490.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 59 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_4389_370073776.1582739711907"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=iUqRRd6Y;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::443
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

------=_Part_4389_370073776.1582739711907
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Successfully identified regression in *linux* in CI configuration tcwg_kern=
el/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed C=
I configurations:
 - tcwg_kernel/gnu-master-arm-next-allmodconfig
 - tcwg_kernel/gnu-master-arm-next-allyesconfig
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
Author: xinhui pan <xinhui.pan@amd.com>

    drm/amdgpu: Remove kfd eviction fence before release bo
</cut>

First few build errors in logs:
00:05:12 make[1]: *** [__modpost] Error 1
00:05:12 make: *** [modules] Error 2
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
llvm-release-arm-next-allmodconfig/59/artifact/artifacts/build-f7f3e49a0d74=
4da16dd4e2ec4e8e707ea7f4a98f/
Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-bisect-=
llvm-release-arm-next-allmodconfig/59/artifact/artifacts/build-cab5dec425f1=
9f3d4eeca0d8e073578cbed66d8d/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-rele=
ase-arm-next-allmodconfig/59/

Reproduce builds:
<cut>
mkdir investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f
cd investigate-linux-f7f3e49a0d744da16dd4e2ec4e8e707ea7f4a98f

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcw=
g_kernel-bisect-llvm-release-arm-next-allmodconfig/59/artifact/artifacts/ma=
nifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/t=
cwg_kernel-bisect-llvm-release-arm-next-allmodconfig/59/artifact/artifacts/=
manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm=
-release-arm-next-allmodconfig/59/artifact/artifacts/test.sh
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
n/ci/base-artifacts.git/log/?h=3Dlinaro-local/ci/tcwg_kernel/llvm-release-a=
rm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-ne=
xt-allmodconfig/59/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-ne=
xt-allmodconfig/59/consoleText

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
clang-built-linux/1934074311.4390.1582739712490.JavaMail.javamailuser%40loc=
alhost.

------=_Part_4389_370073776.1582739711907--
