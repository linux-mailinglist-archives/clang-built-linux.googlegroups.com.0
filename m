Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBP57ZXYQKGQEK64CDCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E8014E5BB
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 23:59:11 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id b13sf2364866wrx.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Jan 2020 14:59:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580425151; cv=pass;
        d=google.com; s=arc-20160816;
        b=TqJXn/Opz6GN/2hdTaUO9isQ/f8eANXJWLltWzIU29k8cPq2+xiWgOoIovKdDsUZXq
         IwPjhSKrSMeLg9hs7tH7tUZkaoNqZx+DrlYkloH9faxUN5z1odhjPYEuEgI1lUqso9QY
         Zn3jeQqJuSS/ENYvqAl6rOAPQPe1Dvdt4GhEiUvDFskOZFpKmjIuC/mmiR1lF8Y13o9P
         rP6BASuB1TSe3fa3kVfdi8oIlyoodV2v6SZvhOaFp259BwaKX1/wC5uk40Tu0y+WbrKn
         pGmuStbF+tJBWnVI3ErJEBjUDEW7CbAqtHiqSPvf8rFAl/m/de6xMlXCQZFBKuw62UAU
         /4hQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=jJnHWzuu2LQ+uwS2aoWPRLAzrtBdTC+nxvUlGctLFb8=;
        b=Zz/6Ywq6jhP673Htg1tiYtmgW4Gad+IFBPvUsjE0kxqe+NsU87z7+agOcmcs23I1A5
         nFSbuxD7M6w0pdaGa0plj1X5+5i3zWVDtvp/SPHkV25glpmwxOqm39STu54C2E3OLRhv
         A8LmNQhMPU9rP2lDqvjhJXe5BhFRSZ2jjN/oNEho/C7BRfDcN9rylUZANOoJmoYlPknd
         qvwkEsiyhQzlK87oHkuVrPzH2P4Fp/4jlTzZXhuxdNw48YkMDE+2VEos1uNpvfK/i51V
         o2PQcnpXunf4F53+Ns0tz/IGhLw8qxNdVLYGVYvGkWd2K9y3wmUOPWQzIaucMYZDUnZd
         RLTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UAQDnzQ+;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jJnHWzuu2LQ+uwS2aoWPRLAzrtBdTC+nxvUlGctLFb8=;
        b=oOL7mQmTdqZeXlLSpZiHJoQOEqbp1lzB4VXjIQEORf70K78/0T2/gOe3Mm6sF9ZmGQ
         pFnrGgDbsWMPacug/b43i16JZrsfFypJaM4zLV/1AZ+S2eAnVDDVfnKaueAi+3kKCvf+
         ohUwoNNf/UnaGSF+tyq5Ko4fNGw2CKO4foagVyGsLksnbFCO2WQ/8G+3ptg5hutEaSz9
         F0TyqCURSF1tXd/CJvFWtIDv7I+JF9D9g/m0SSmXyw7OnHT5e06I4rJqhVVmM1MncOzt
         QMYNKiv+67nkniiibydkXNxd5R784dE4WioHUA4J95pjKZPKyDxdui+hvGs1FRmVu+uE
         rAZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jJnHWzuu2LQ+uwS2aoWPRLAzrtBdTC+nxvUlGctLFb8=;
        b=HKi84yaoqMTHdNKHd+SVVrWoJll+UVR/yqDD1g66tRTR8/JOiGyvwIOMKRK3ajJpTV
         BcFi4NDpeeFB+FEiQgiSvIztS9n6X15NA7B3YzmbaSr6IntEy7zTmUSdFqU2CcIxDQgy
         J/l2EjneW5a3+5o0DrZW5Qdo1TJYt96LyZ3yth35RbtuOWWaJXSkimh775VvHASwmTCc
         mg1strP4ol2Xwl3BjunswAE+oMm9wnpEiLQc5mHb0oLST70Xvt2HbFXtOpCYHbsrNPu1
         OluWeisrlsWHaTYsznOo1KHsGY+QNT3RQxvnljLZZL4jJ1fAKWAYEylrgUdis4Jo6oY8
         NCRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU/YIcLPmMu3FSsZe4mwWldJH9VpuEI45oz5/StKt99MvCchbEW
	ymL5oH2XDJLwroPtgla8yg0=
X-Google-Smtp-Source: APXvYqwM5NKeqi9mnYMorMOWs0TWv125IFBTS0UojERvGy7Rd7A4Ow+6ehO4HrK0IFW4iAJo/p68vw==
X-Received: by 2002:a5d:4acb:: with SMTP id y11mr8176079wrs.106.1580425151193;
        Thu, 30 Jan 2020 14:59:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:eb4c:: with SMTP id u12ls2821732wrn.6.gmail; Thu, 30 Jan
 2020 14:59:10 -0800 (PST)
X-Received: by 2002:adf:f58a:: with SMTP id f10mr8441416wro.105.1580425150659;
        Thu, 30 Jan 2020 14:59:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580425150; cv=none;
        d=google.com; s=arc-20160816;
        b=sWLlnIcDQIb+omPgEr3CHMeHITyzePNkeMkMvyiqe2AZdYKQWOcFT+EZuWaKmTNUx4
         SDdW86IvDaaxin4OpfhUGJTfx4Luw8/J/vIoFm1uci+CfpcZcutTtkg8bs+KJoLdXZ7j
         MUHqF8JpkFYL5dPk8cdbvVYSkGHlqJB19V7OQNKrOhGiGFaEKTEtiV3OIi5/W/LMhwgi
         Cr2M09Ed4R8x/5otoHjze1mFNZp6G4ZD6GTv36LP2+6sn9Ku7XKuU0/VRUSNasoDuy8T
         csEnPQjc53Tndp759R4xM72RDTJPnecexNxq2aWcpQAQCEk7RlWW4SNRdR77XaQDRY1I
         NYvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=1mptj8Gq6YaQN5/zr0ymA5JNGzsnKyJQiobPcqDnkB0=;
        b=Vee4RM6giDVwe6FsWMkeyExrt8LYJi1e16GTI7l/u0DFYu+ZhAZnkXV4ySPe1/IK6d
         +ytdP8SmNDpt+o4w191rT5U9BWxNoA8pB4L5xDri8C9F1gofcOjfQckVfg11mx5RAHag
         F2zqMcdTIcTVprTHP+X3bsCYjTUt3BwzO2DJmVbOJNC4j5BkvOS3m2pgNRtJGVkBo/IS
         l6Y9ZeogUKNF6oLuuFxLgNGUJkopl63SewuOOURGF2NVt6h2BnC3NRVbXJQCXIdnKjYn
         aUy/sS1+sHqvuHev+51sxyyfxJWYwl44Hhfw+znjEETtGtSltmmnKt+Zez7tc+DSt4lu
         NPCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=UAQDnzQ+;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e21si499365wme.1.2020.01.30.14.59.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2020 14:59:10 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id z3so6277551wru.3
        for <clang-built-linux@googlegroups.com>; Thu, 30 Jan 2020 14:59:10 -0800 (PST)
X-Received: by 2002:adf:ed8e:: with SMTP id c14mr6916945wro.80.1580425150239;
        Thu, 30 Jan 2020 14:59:10 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id d10sm9225888wrw.64.2020.01.30.14.59.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 30 Jan 2020 14:59:09 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 30 Jan 2020 22:59:08 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1935299941.159.1580425149724.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-arm-mainline-allyesconfig - Build # 44 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_158_1596247200.1580425148768"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-arm-mainline-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=UAQDnzQ+;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::441
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

------=_Part_158_1596247200.1580425148768
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-release-arm-mainline-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:40:41 spectrum_qdisc.c:(.text+0x19a4): undefined reference to `__aeabi_uldivmod'
00:40:41 spectrum_qdisc.c:(.text+0x1a6c): undefined reference to `__aeabi_uldivmod'
00:40:46 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
rr[linux_branch]="b3a6082223369203d7e7db7e81253ac761377644"

Results regressed to (for bad == 05ef8b97ddf9aed40df977477daeab01760d7f9a)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18363

from (for baseline_rev == b3a6082223369203d7e7db7e81253ac761377644)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18369

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/artifact/artifacts/build-05ef8b97ddf9aed40df977477daeab01760d7f9a/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/artifact/artifacts/build-b3a6082223369203d7e7db7e81253ac761377644/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/

Reproduce builds:
<cut>
mkdir investigate-linux-05ef8b97ddf9aed40df977477daeab01760d7f9a
cd investigate-linux-05ef8b97ddf9aed40df977477daeab01760d7f9a

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 05ef8b97ddf9aed40df977477daeab01760d7f9a
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach b3a6082223369203d7e7db7e81253ac761377644
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-arm-mainline-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-release-arm-mainline-allyesconfig/44/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1935299941.159.1580425149724.JavaMail.javamailuser%40localhost.

------=_Part_158_1596247200.1580425148768--
