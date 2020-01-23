Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBJ52U7YQKGQEE3BG6VI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1654814700F
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 18:51:36 +0100 (CET)
Received: by mail-wr1-x43b.google.com with SMTP id i9sf2261729wru.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jan 2020 09:51:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579801895; cv=pass;
        d=google.com; s=arc-20160816;
        b=RGrZrFfA4U/rmgeXw2PN/5SB2U+SPoskJUfw6KxI1O/UqlZctNrNl7Wco8Zb1Fk7Di
         MGfwFtXaCv/JOKEltcXJhRmqXyPE8DhHHyB7ZB0YeyH8oUZNe1E2/pEyFd0OYzVQkrKg
         k2mEtWH+JONM45sF39gItKFu3ATy03KSl7m8n3zwr66YWPBV3O2yFVkas4WYhQKoF4Y+
         Cswsi/cF4+68S0h7OXXhiWEpQ88Za1plboRKwXUol05Zugw6fSBYp8l4/31y/WH8wBRR
         EgZ48KH4rF/qGopt8VXvlw3U0iO/9bbHPPkX6I7EkaDpaejCUhTOv+l/7BU8+DY1/KIr
         Jqzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=2hjRYfzI1bEYcAXX2a1Ofq0Cb+mGdDSIHHL6hJA0Bcg=;
        b=jp7FI6WzkWNOkPgL1mdLvS/yPgs1ikklNWbmzrxSO64f901/hKjgRpzEG7o/e2GeJQ
         rrdLU6VNxA30oAq5PKpszMJjGaPYKtOap8BwhyYD0x8eN885d/5DtszrKXWKKj434VBj
         l4gQyJDCJ+9FIQp0VtvHDaXXb/ygkDTKBsEDHNfJ5vyY+ARO8Y9NwZpK10zkPmZ9YTPl
         BS/xHBVSPVBVtdv3w0kQ2Jh6d/PxdsG2oTDQzSzHMN7ineeFSF9XZybh485qSGP3J3NQ
         C5FUTwyuXWeOTR/1caAxffW371HtWuQ/RHCGFVTeuiLBvJaVkdFmUZwe8gbCQwU3x55X
         iX6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nTlWg4Cq;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2hjRYfzI1bEYcAXX2a1Ofq0Cb+mGdDSIHHL6hJA0Bcg=;
        b=qCs8XnyFf06BjvvKoPwHRS5fQ0lMt6xdEKSVUCpQIrThgjYgdrdsRo6aHrfXmQB5PF
         KpSQDHBsRwboR7goAh94cjlsfid409mbMZFT9AmrNngcQyIHv7J8WbK7tZYeOF2qRuPX
         NI6kUmB771ZdcFYq5vMwzPpefUJHm6XejgcIv/g5mQN25dguo7cshH0i/rCLQC0ymmTn
         HGpfjZbOQGtB/ZjtbEREx75UqEyDH1AJMVrUg4s3A2rKW49YLT7i64NuLO2rQBHRrBY6
         WryRU4Vqlkn4fXfh7nYTbZ/cmhjg7j9xA+UfsYS6XZ12EdMCqKmWYgIgi5vv0YqEgNXw
         K7Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2hjRYfzI1bEYcAXX2a1Ofq0Cb+mGdDSIHHL6hJA0Bcg=;
        b=aQD+mqpQ8B+wlbjOiskZWdFkiwQEOEpxpv74UX6F4SqfoH/KPiNI8UVyb0UONjc9Mp
         dxpnSY81g4kGk+ZSvlDzZyKQXdzn/khsyXYTH6jnQsKFP4W7LemEZdVodMrdIxON5ATP
         Vok+uVrFifZR2Yl4VB25STL68w2h3oFEcmikgVDCF7J/+LTZtQM2tBstX+Ao0DLEd0Uy
         w/mha4vigaejcIFpsThoR+OdFqhPK4fm10BqxmVeWz1+8Fmxt/dVcgxTKbWrq13TcrXD
         8ywC/9ppPbK5l8xg52x/Gq6xNjkqCXgZ9JoK73rcJBVvjKctbk+S/RECHEP3ERnpkzDu
         OUxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXlKCXjUwLn2GRetKvBivyFJEur7YIirC8Ioe310dB9uNrZarOh
	LHt3jLOSp/e70op2Zx+Tb6s=
X-Google-Smtp-Source: APXvYqzb3HLfRJWfeoVt9/nheZ5syNJO9CwAJonVCdZ+qS0ESOWfbkUchj5nQqiUeJ/SVeIS/uVIoA==
X-Received: by 2002:a05:600c:1007:: with SMTP id c7mr5230135wmc.158.1579801895830;
        Thu, 23 Jan 2020 09:51:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:c3d1:: with SMTP id d17ls9148275wrg.10.gmail; Thu, 23
 Jan 2020 09:51:35 -0800 (PST)
X-Received: by 2002:a5d:4e0a:: with SMTP id p10mr19771955wrt.229.1579801895307;
        Thu, 23 Jan 2020 09:51:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579801895; cv=none;
        d=google.com; s=arc-20160816;
        b=LnudhnrQiDUTUgIEIsFTPNT7x7A7j3sd8ki5dEAcdTLORTav1LABZFgz3cbDv69b9F
         b6fGjbKeLZdz2w77A4HK4UbhMiBWNaf4qLxrk7sw3qaqqGrQ5Dlt1p5LF1l52PkYCCAs
         NVgHv1vtBUmtTgAy2sVCO2fy1D2MTCuvyyjCTW+Gv8qDaMZkunlf0MMIkXm5rBoE54ng
         u8StaMBvwLd+q1zYDkBHXVdyTAaToUQPio1PELWnldwUhwjOY02b6DhZVMJ2WzzMa6xn
         Bh+19+XdeVLXx2BI/AceeDtO7BNdqdVmZGETFjxWDxoQflY8SdkKhOuGWiA8JqXjBFLV
         Q4SQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=rZaMg/QMwLpQRDt1PWYTaASFYz9StuDJMBuQ6AMltDM=;
        b=j4hMQQbmXQXwkEZRoR9tMGPhu3yCQaSf+4tDopGrz7KQomId221kGSSDTZNQziAqbS
         HaB1pRq+77S3hp6/FY1pa0tL9n2uLl0s/6aaIDhSZASJwdzRjM+kmShQbY/f+lIFxklg
         W9GA/GTd8uFrdpFWsro880fKQiB/R3dOiv7szbGixrs4JCMQx1r1oEY61DFJkwXJbBHH
         qstVI7Ik+RomJXqw901BAjCDI6baT8nUL5Yo8+F+4SwrHbfzuqH6GzWVchIl3ahMJ8ln
         95sz+9tCd2IlTvJbMo/OhdVpQsxwS5eO0IrMVQ8nXkw9/9A4HcS04EWLT7oRbPDteYIL
         x9hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nTlWg4Cq;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id w11si156333wmk.0.2020.01.23.09.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 09:51:35 -0800 (PST)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Received: by mail-wm1-x331.google.com with SMTP id 20so3438951wmj.4
        for <clang-built-linux@googlegroups.com>; Thu, 23 Jan 2020 09:51:35 -0800 (PST)
X-Received: by 2002:a1c:988a:: with SMTP id a132mr5048464wme.113.1579801894940;
        Thu, 23 Jan 2020 09:51:34 -0800 (PST)
Received: from 172.17.0.4 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id w13sm4033789wru.38.2020.01.23.09.51.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 23 Jan 2020 09:51:34 -0800 (PST)
From: ci_notify@linaro.org
Date: Thu, 23 Jan 2020 17:51:33 +0000 (UTC)
To: tcwg-validation@linaro.org, arnd@linaro.org, 
	clang-built-linux@googlegroups.com
Message-ID: <1547062135.671.1579801894467.JavaMail.javamailuser@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-master-arm-next-allyesconfig - Build # 57 - Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_670_194276187.1579801893854"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-master-arm-next-allyesconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=nTlWg4Cq;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::331
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

------=_Part_670_194276187.1579801893854
Content-Type: text/plain; charset="UTF-8"

Could not identify regression in *linux* in CI configuration tcwg_kernel/llvm-master-arm-next-allyesconfig.  See 'Bisect log' in the links below for bisection details.

First few errors in logs of bad:
00:31:11 make: *** [vmlinux] Error 1
Configuration details:
rr[llvm_url]="https://github.com/llvm/llvm-project.git"
rr[linux_url]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git"
rr[linux_branch]="ba0b4dfd6466b7e2984dbe52242686e0dd184bf1"

Results regressed to (for bad == 41539ebf9bacf9a9102322ad944990f5a38f5538)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18425

from (for baseline_rev == dbab40bdb42c03ab12096d4aaf2dbef3fb55282c)
reset_artifacts:
-10
build_llvm:
-1
linux_n_obj:
18426

Artifacts of bad build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/artifact/artifacts/build-41539ebf9bacf9a9102322ad944990f5a38f5538/
Artifacts of baseline_rev build: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/artifact/artifacts/build-dbab40bdb42c03ab12096d4aaf2dbef3fb55282c/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/

Reproduce builds:
<cut>
mkdir investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538
cd investigate-linux-41539ebf9bacf9a9102322ad944990f5a38f5538

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/artifact/artifacts/manifests/build-baseline.sh
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/artifact/artifacts/manifests/build-parameters.sh
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/artifact/artifacts/test.sh
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

cd linux

# Reproduce bad build
git checkout --detach 41539ebf9bacf9a9102322ad944990f5a38f5538
../artifacts/test.sh

# Reproduce baseline_rev build
git checkout --detach dbab40bdb42c03ab12096d4aaf2dbef3fb55282c
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-master-arm-next-allyesconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-bisect-llvm-master-arm-next-allyesconfig/57/consoleText

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1547062135.671.1579801894467.JavaMail.javamailuser%40localhost.

------=_Part_670_194276187.1579801893854--
