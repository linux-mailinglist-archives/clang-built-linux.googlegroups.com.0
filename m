Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBZEQ56EAMGQE32BHTUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A9E3EEE8D
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 16:32:04 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id a9-20020a0560000509b029015485b95d0csf6683674wrf.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 07:32:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629210724; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mm2Iox2zP1+cSIDTBAcgVmlRmUfl2c0hvIh+3FOtg1JFOIzo6H+ynEPp6A45T01DSi
         cAZnG19bmCnj4ihuj0PP9/SUdhSzi9GGu0HZra5B+emJoaEDggXZYzxmYG9w0E6nXGgV
         5Zwl3Nb2paIaWmRkAW62LIdtjGvFyXvhu2POXZ3+6JjldOqw/ZoH5ZlKTsOGvM2xXbA3
         4DGsfhdjQScjESHTQRtapn+1CxQ6RtihWGl/Ksk+fJvY8jjTki2GvYrbj9G67VDn9/cs
         hf9ORoz6JZncV5423Bi0xNyrcCZpfUYac9U1Rznt1X0izx9IjoU7oBbhfBN80UAX3r/i
         5R7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=zLt50fpwz9vOz/6c39qu9lPGWy4eEPhSvyZI3ora89s=;
        b=OjhG5lgMk7ShSXMWfGymbuFHLr3AxN+NJNusn0Wo4XvxwZQx+X5/SOXXkAxHRs2uGK
         PwsN6qr3GG3JH3ciw+Rt/iAjWq1heLa/pzguoyKUBMQJbCKIMtNxyHiWGOG+kxDuq64Z
         4g+9WJxCRbLrtjsmeIHRwGyYGhCuTSARtidQl0HotMa5sdM0Fl3vhK7GP8knJqWnb75G
         IS5dFpuGF8NWC3wNeP1VeSPn4S5KWZc+A+ETKEys1BL+0v1uCV/tRUAh96mHnB2pBLNf
         +ZkmC0MTVTOqhb4iNDNeCnVRW0pirPcJg+BN8nW2iLYW6GNmuIJl0N2Z0DEonvJY83YR
         NjHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Sav5LiRe;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zLt50fpwz9vOz/6c39qu9lPGWy4eEPhSvyZI3ora89s=;
        b=n2cw1/On1F+1DL0XkPqR1Pe8WdO0qTfeMWMJ5xBgOAjibA1rMvdY2JpZhiuyXvvugf
         BTuTRFBpg/JffEU15gfISz8Lh3qNxxmjZrtTtIzNRgctuMa37oQWH9nhet94hQrR4VkG
         fKEQ0nrwElCp6WPSEyZTBrHhs0RFqV6QU19ON8T2WU/HapTHz9Mprc/PPArSgOoAxNMs
         zzSFjd6khroEifMyGRXcMsZMpbZS8tLetLOkPPSMtcELXURqqRGAxNLv2SKiqwiXNd0G
         jUqxR6J1XXCI7W14NWZCQarzdsO2h8aS0Mg6l+p8KXluJRz5ZvdBzaixupZm7RONndSd
         OfFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zLt50fpwz9vOz/6c39qu9lPGWy4eEPhSvyZI3ora89s=;
        b=Et0uS0Udof7L+Q01wrLMIDq1WkhHjgifW2rJJ/qxrjjTz02ttlxkT+R9M7ydRYVTjo
         VvSOuYUzW2uYKPREHelJD/GsYuK5FHTeQh7NZw9lrq+itLG75YDnXzm09IPCzVI6kPPk
         TTyPXc/KHD0laKzrCvW122DtnWCc7JYN02w+vKAlJv6z0X9PBp5Wfl9TQj/R+jZ8JV13
         J/cAQlnnm74AJwReX+Ic8n/n/OZQNvUky3y/33QsdZar/bF7FzX6BxTmyFLlVMIRxZEH
         ADNEWGIIZLVQKKmHcdiGzSAe0ndYZ5on+rSkOkJWFZt0C/o8ThWNfqmImibzslXP4pJr
         9SzQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533vhFaZv46/GlzoZAu9+2h4JXT9dYlI3EIg5orNXYW4VjPHZD9I
	ppny3xvR617xyjcoEiPDLfs=
X-Google-Smtp-Source: ABdhPJwT2LPf8dHwJ/LMorQGT+CQhJuYdaRFK8HspgNQ+W57e1N0whbErn8/jLOd4YEtKc8U9rxc+w==
X-Received: by 2002:adf:e6cc:: with SMTP id y12mr4771843wrm.200.1629210724361;
        Tue, 17 Aug 2021 07:32:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5383:: with SMTP id d3ls1108623wrv.2.gmail; Tue, 17 Aug
 2021 07:32:03 -0700 (PDT)
X-Received: by 2002:adf:80e8:: with SMTP id 95mr4535013wrl.388.1629210723423;
        Tue, 17 Aug 2021 07:32:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629210723; cv=none;
        d=google.com; s=arc-20160816;
        b=C9ISpZATwpP84aMXgQiUXvrWDKutPEEB4Mg+DsAYZCaQL3PWulwLa8vIocMtMGoWgf
         5IN2ijPvQ1i9CKUNinVeMhxV4mPGsthmoH5yPIBCtGLjmP0lgAkpkRKxvsBwKhPsjdc2
         nt6Ow23p8oSFMTyI7F7WisOFH11u86esYs8X6oyl9zOUWgcay/nhPAerXtkyMMl56SKa
         v2ssKKqFdIyWfXOPbr5xM2W+fJNi4EGrqnw3sPUuR0mSl4hj2l1G85UDkYCl9xkmQW1/
         eP6MEhYspfnaOw9V2JTNfz7ZaJAxq3MtugjOpQ8pkYvfoRtg/3qOx9cEer4T2QCBmLRW
         z6nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=f042N2D5vNF907zd+79Yc+1aSTeUsOqY5nUPPYMoO7E=;
        b=Oqt5LnYjLkjs7jye02f/s/F0Cv4sNuC7jXLSmCEMQaS45Lmv7V4HwYMIbjvSfjymoX
         9EIjTjpLfy/bKNIN7d4EnIEdgJLkvZZmbq3nN/rCSSDUPqIgiV/SettAY/fgPmtWa2Bu
         7lfbe1jdOFrc+jfk6cFv+fbE5czjoAl6+p+VvE9vYnV7hzcCxrhXHPjKj3UgFgdTgNNx
         wpd+bvEk1s5tw1yVcWTq9Y9tya9INkvR6R12gMZ87arZSIz0SKZoNR7MxmlcGb8YJcxj
         kNbxP74/xPjwuCviteOALvoAOALfZ/7AGKNgMfVvJzFTDyFIo67zzPsRqqm/ETBp4/zu
         1UMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Sav5LiRe;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com. [2a00:1450:4864:20::335])
        by gmr-mx.google.com with ESMTPS id s130si117748wme.0.2021.08.17.07.32.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:32:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335 as permitted sender) client-ip=2a00:1450:4864:20::335;
Received: by mail-wm1-x335.google.com with SMTP id c129-20020a1c35870000b02902e6b6135279so2317373wma.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 07:32:03 -0700 (PDT)
X-Received: by 2002:a7b:c309:: with SMTP id k9mr3784588wmj.48.1629210723148;
        Tue, 17 Aug 2021 07:32:03 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id s14sm2242465wmc.25.2021.08.17.07.32.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 07:32:02 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 17 Aug 2021 14:32:01 +0000 (UTC)
To: tcwg-validation@linaro.org, Baokun Li <libaokun1@huawei.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <1201478562.3591.1629210722526@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-next-allmodconfig - Build # 31 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_3590_345090679.1629210721677"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-next-allmodconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Sav5LiRe;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::335
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

------=_Part_3590_345090679.1629210721677
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-next-allmodconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-arm-next-allmodconfig

Culprit:
<cut>
commit fad7cd3310db3099f95dd34312c77740fbc455e5
Author: Baokun Li <libaokun1@huawei.com>
Date:   Wed Aug 4 10:12:12 2021 +0800

    nbd: add the check to prevent overflow in __nbd_ioctl()
    
    If user specify a large enough value of NBD blocks option, it may trigger
    signed integer overflow which may lead to nbd->config->bytesize becomes a
    large or small value, zero in particular.
    
    UBSAN: Undefined behaviour in drivers/block/nbd.c:325:31
    signed integer overflow:
    1024 * 4611686155866341414 cannot be represented in type 'long long int'
    [...]
    Call trace:
    [...]
     handle_overflow+0x188/0x1dc lib/ubsan.c:192
     __ubsan_handle_mul_overflow+0x34/0x44 lib/ubsan.c:213
     nbd_size_set drivers/block/nbd.c:325 [inline]
     __nbd_ioctl drivers/block/nbd.c:1342 [inline]
     nbd_ioctl+0x998/0xa10 drivers/block/nbd.c:1395
     __blkdev_driver_ioctl block/ioctl.c:311 [inline]
    [...]
    
    Although it is not a big deal, still silence the UBSAN by limit
    the input value.
    
    Reported-by: Hulk Robot <hulkci@huawei.com>
    Signed-off-by: Baokun Li <libaokun1@huawei.com>
    Reviewed-by: Josef Bacik <josef@toxicpanda.com>
    Link: https://lore.kernel.org/r/20210804021212.990223-1-libaokun1@huawei.com
    [axboe: dropped unlikely()]
    Signed-off-by: Jens Axboe <axboe@kernel.dk>
</cut>

Results regressed to (for first_bad == fad7cd3310db3099f95dd34312c77740fbc455e5)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
21709
# First few build errors in logs:
# 00:07:12 make[1]: *** [modules-only.symvers] Error 1
# 00:07:12 make: *** [modules] Error 2

from (for last_good == da20b58d5bbbb0d23ae9530992a37d0f0d1787a4)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
29751
# linux build successful:
all

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/artifact/artifacts/build-da20b58d5bbbb0d23ae9530992a37d0f0d1787a4/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/artifact/artifacts/build-fad7cd3310db3099f95dd34312c77740fbc455e5/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/

Configuration details:
rr[linux_git]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git#ecf93431963a95c0f475921101bedc0dd62ec96d"

Reproduce builds:
<cut>
mkdir investigate-linux-fad7cd3310db3099f95dd34312c77740fbc455e5
cd investigate-linux-fad7cd3310db3099f95dd34312c77740fbc455e5

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach fad7cd3310db3099f95dd34312c77740fbc455e5
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach da20b58d5bbbb0d23ae9530992a37d0f0d1787a4
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-next-allmodconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-arm-next-allmodconfig/31/consoleText

Full commit (up to 1000 lines):
<cut>
commit fad7cd3310db3099f95dd34312c77740fbc455e5
Author: Baokun Li <libaokun1@huawei.com>
Date:   Wed Aug 4 10:12:12 2021 +0800

    nbd: add the check to prevent overflow in __nbd_ioctl()
    
    If user specify a large enough value of NBD blocks option, it may trigger
    signed integer overflow which may lead to nbd->config->bytesize becomes a
    large or small value, zero in particular.
    
    UBSAN: Undefined behaviour in drivers/block/nbd.c:325:31
    signed integer overflow:
    1024 * 4611686155866341414 cannot be represented in type 'long long int'
    [...]
    Call trace:
    [...]
     handle_overflow+0x188/0x1dc lib/ubsan.c:192
     __ubsan_handle_mul_overflow+0x34/0x44 lib/ubsan.c:213
     nbd_size_set drivers/block/nbd.c:325 [inline]
     __nbd_ioctl drivers/block/nbd.c:1342 [inline]
     nbd_ioctl+0x998/0xa10 drivers/block/nbd.c:1395
     __blkdev_driver_ioctl block/ioctl.c:311 [inline]
    [...]
    
    Although it is not a big deal, still silence the UBSAN by limit
    the input value.
    
    Reported-by: Hulk Robot <hulkci@huawei.com>
    Signed-off-by: Baokun Li <libaokun1@huawei.com>
    Reviewed-by: Josef Bacik <josef@toxicpanda.com>
    Link: https://lore.kernel.org/r/20210804021212.990223-1-libaokun1@huawei.com
    [axboe: dropped unlikely()]
    Signed-off-by: Jens Axboe <axboe@kernel.dk>
---
 drivers/block/nbd.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/block/nbd.c b/drivers/block/nbd.c
index c38317979f74..f82264835794 100644
--- a/drivers/block/nbd.c
+++ b/drivers/block/nbd.c
@@ -1384,6 +1384,7 @@ static int __nbd_ioctl(struct block_device *bdev, struct nbd_device *nbd,
 		       unsigned int cmd, unsigned long arg)
 {
 	struct nbd_config *config = nbd->config;
+	loff_t bytesize;
 
 	switch (cmd) {
 	case NBD_DISCONNECT:
@@ -1398,8 +1399,9 @@ static int __nbd_ioctl(struct block_device *bdev, struct nbd_device *nbd,
 	case NBD_SET_SIZE:
 		return nbd_set_size(nbd, arg, config->blksize);
 	case NBD_SET_SIZE_BLOCKS:
-		return nbd_set_size(nbd, arg * config->blksize,
-				    config->blksize);
+		if (check_mul_overflow((loff_t)arg, config->blksize, &bytesize))
+			return -EINVAL;
+		return nbd_set_size(nbd, bytesize, config->blksize);
 	case NBD_SET_TIMEOUT:
 		nbd_set_cmd_timeout(nbd, arg);
 		return 0;
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1201478562.3591.1629210722526%40localhost.

------=_Part_3590_345090679.1629210721677--
