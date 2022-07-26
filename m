Return-Path: <clang-built-linux+bncBCT6537ZTEKRBINB72LAMGQEISHROZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDD7580C00
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jul 2022 08:58:42 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id w8-20020a197b08000000b00489e72a3025sf3997637lfc.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jul 2022 23:58:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1658818722; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jm/hJfvmDa8Uz+yBTQ99BKh/OvwNWhgtfEkFufPUq+tAunGbsrs1Ox13y4ISTg+xCE
         kvmVfT1JGO7fKbkFXDsync2opeefHFXB0E0Rp8ogB+I1nTSfhUzu2XJny6563Pggql0y
         93n6S9XxjI8Hl2vML2G0k+g7w88vKh1UN8Zzw+Qcy1dh1TI85OnKbdrEjzjDh5miOOna
         cs4N6f+LixGUoA6p7gXxXkmv1/YDDxir2MlEhI/Iy0Hw6tTAnliHaKHSon5CJUCOxX6E
         e5sMztDBSuYyIlDF8DmTxw3maBXJlrd+xgAs16x99cFP3QUz1ExYb3oNN2yZoCa816Zf
         ebTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature;
        bh=69MgX6D0anPxY54iar7e1LxdS3EaSK6Btx9tvpZ+AvQ=;
        b=uAlh+gkRHIePzExyPH1DH5ue5KzoBAL/dXHhv1ytKRwL2QfL64WadiAHtAQUF7IB/Y
         6rD1ji9fDKhqMXSn22qRYNV3Wl4JT7nPaBNWo7/Sin22ETQkgDcqDfe56JykGfAo/GsJ
         PwJE81JReClBh4D3jN8tKe487oiE8DhkzJaoRx7ZDbtvcA3AZQXyRis5IT9K9vudPpjO
         yJQW8PpRtwH6xWymcdyB6gye/A41mETSKpKw336NUoLJlP+3e6d4MW1bzGWBHVZjBUjt
         lM+ZACxpXyLi32I8ws6g9RHEDPl+DTRLs7GcUslo+ZpiVhMhgZkXPKp26YM8EVfCuc82
         TX3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="xxDn2/5x";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=69MgX6D0anPxY54iar7e1LxdS3EaSK6Btx9tvpZ+AvQ=;
        b=WNkRxrqyFQuVR7JWDwSkHyDz2Cw+lQZENdXZ5xzG+j+E2a0ZtjFpkGSg3+pmEMLoZt
         V+WOzJbmgeIHIZUoRVUrKk5CmOU/EaWBAdUSlRmewIv67lon2ChRL5PsjtRFweUVjisH
         2AtYWf6tA4/wfi6/q9tYvP+EiKzmcL3GYTQRBDaOvRBYm+6CuQt40INnyIcxJ9sDeUTr
         jHonjwyfNiUD+VLwpi1tw+pdEn1Sp9qNecwKna8PAj/5XNH5BTDJmNLqwD7WikCBz8hb
         5Oto7YzKW3TW/tEnsa8j8vgfxoeFnvHJBZc0iIcL8A3ML3E8FsIwDhcfnwVbFeJ2/Y39
         RHyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:from:date:message-id:subject
         :to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=69MgX6D0anPxY54iar7e1LxdS3EaSK6Btx9tvpZ+AvQ=;
        b=LFF/KrOZ4n998tjIyG7coo7DuodCme7PIIfQoKYt0Xd11Hsh3Be8pBasuumS//XK+5
         6MjPrbXn5S383mL7xMigInz/aqwJz42FS1TKt/0wSAAlObUyMfJch7r8GcHhv+qr/+ot
         3WTIcuNFI7LCfsJ0sHXhRcbfvbDAG0In9x73kYTq5+GRiofjbUEnp59bXZbiBnNpHui8
         J9Gf3dxk7uWhP92ZOmaFJdMjWdtzepAYCW1G/6oFKvlnDG/HSSgnQxqEE7Ca00WxNPUi
         hd5T2FH7nCK4wM9CHmeRr55rSJNf/OjmS4ZUwCWX6FK6wQN/2z0djz81ZIMxxezM6n7g
         QZ0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora9eBtqZj9Uv4to9wa68U7vvYpab06NU1uHjM71f9TYy8PNpGwuY
	1U0J3fMBhnSNaKjH+H6WMAU=
X-Google-Smtp-Source: AGRyM1vEufUq0RWJRu0tYLx64g4TMs38h0AhaSZAri/ktArU9YL5xHxIZe/9QxwdxxSa95GqxRFNbg==
X-Received: by 2002:a05:651c:b28:b0:25d:6a99:e978 with SMTP id b40-20020a05651c0b2800b0025d6a99e978mr5827242ljr.82.1658818722004;
        Mon, 25 Jul 2022 23:58:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1146:b0:25d:b04e:9cc5 with SMTP id
 h6-20020a05651c114600b0025db04e9cc5ls1062917ljo.11.-pod-prod-gmail; Mon, 25
 Jul 2022 23:58:40 -0700 (PDT)
X-Received: by 2002:a2e:9e17:0:b0:25d:78d8:407f with SMTP id e23-20020a2e9e17000000b0025d78d8407fmr5674110ljk.433.1658818720797;
        Mon, 25 Jul 2022 23:58:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1658818720; cv=none;
        d=google.com; s=arc-20160816;
        b=BhdIRV3ET2jKrNn1GmHRQkELXvjn0/HV6NBwk3NG9dS9eKMseiPRlKOx2Mm/9IOAkC
         OwMW/DCi6zYfN51p5O/Xo298R/u42mDh0zkUcO7VYvG1QsFNezAKuLD/H4VhDVlwyBDB
         +D4MUm49RRar54XV0WZj45/JOR8+0fSRaQh7fgs5KxNPXhEvzVrHQnJzLH0FPYn+sbS9
         q064iHJ1WINGxNQhRU8I9uYZXisWJ05HTOhJM+M2J3P917SGmR8L5NlbP7bolSthEGBY
         XLvZLWsR76cv20UfDp6g2gyaARauY0XhHr37+cCV1AR5ObSLXj3AS8Y0sJlUSbko11U/
         7cNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=VO93DLDSyuiE5m/h3CZQjoxqN5ZUewPL97M2fFnH/Ms=;
        b=STskdMfpfXzCRc24NalWqCN8+Pgu+TVkUYhPrpLguqT3tFwv0qUhW3KyBMekXC8+X8
         kOlffHNl/q/UnuMh6qf26e1E31QLX6OfW3juEN5SqPFGEH2djYcvWEYC8/gHnb84PITm
         Yo/kZIaQu/QK0i5rI/Wtm7pz+fhmu4NVYZXEDE6t007al9khg50+GXLRS8Y/zur2CQQ+
         F2bltbJeL2yA9rqMb+kSRwM/omgxEOPuHDQYu2ZPiV/12eZYV91/C3WGMGPTzpr8I9m4
         JfWe2+NiAbPP7j7Zmf/FmysjwGLZeBmfXFPzfP4deeDMMulN2QP5udCY/LhOXSK2FW/w
         ox7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b="xxDn2/5x";
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id v10-20020ac258ea000000b0048a88bf3ef2si199860lfo.8.2022.07.25.23.58.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jul 2022 23:58:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Received: by mail-ed1-x52c.google.com with SMTP id c72so13718075edf.8
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jul 2022 23:58:40 -0700 (PDT)
X-Received: by 2002:a05:6402:caa:b0:43b:c350:18c7 with SMTP id
 cn10-20020a0564020caa00b0043bc35018c7mr16973239edb.193.1658818720183; Mon, 25
 Jul 2022 23:58:40 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 26 Jul 2022 12:28:29 +0530
Message-ID: <CA+G9fYuH+Jo3xFypJc8+F6juT783StO=oe0P9ZMMLE7nM0bQJg@mail.gmail.com>
Subject: [next] clang: drivers/gpu/drm/i915/gt/intel_region_lmem.c:94:23:
 error: result of comparison of constant 4294967296 with expression of type
 'resource_size_t' (aka 'unsigned int') is always false [-Werror,-Wtautological-constant-out-of-range-compare]
To: Linux-Next Mailing List <linux-next@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	regressions@lists.linux.dev, lkft-triage@lists.linaro.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>, Matthew Auld <matthew.auld@intel.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b="xxDn2/5x";       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
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

The Linux next-20220725 i386 clang builds failed due this build error,

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Regressions found on i386:

   - build-clang-11-defconfig
   - build-clang-14-lkftconfig
   - build-clang-13-defconfig
   - build-clang-12-defconfig
   - build-clang-13-lkftconfig
   - build-clang-12-lkftconfig
   - build-clang-14-defconfig

Steps to reproduce:
-------------------
tuxmake --runtime podman \
        --target-arch i386 \
        --toolchain clang-14 \
        --kconfig
https://builds.tuxbuild.com/2CQwgxqR0lJKwPMl2LxaDTNwsq0/config \
          LLVM=1 \
          LLVM_IAS=1

Build error log:
-----------------
make --silent --keep-going --jobs=8
O=/home/tuxbuild/.cache/tuxmake/builds/1/build LLVM=1 LLVM_IAS=1
ARCH=i386 CROSS_COMPILE=i686-linux-gnu- 'HOSTCC=sccache clang'
'CC=sccache clang'
drivers/gpu/drm/i915/gt/intel_region_lmem.c:94:23: error: result of
comparison of constant 4294967296 with expression of type
'resource_size_t' (aka 'unsigned int') is always false
[-Werror,-Wtautological-constant-out-of-range-compare]
                    root_res->start > 0x100000000ull)
                    ~~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
1 error generated.
make[5]: *** [scripts/Makefile.build:250:
drivers/gpu/drm/i915/gt/intel_region_lmem.o] Error 1
make[5]: Target '__build' not remade because of errors.


Build link:
https://builds.tuxbuild.com/2CQwgxqR0lJKwPMl2LxaDTNwsq0/


--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYuH%2BJo3xFypJc8%2BF6juT783StO%3Doe0P9ZMMLE7nM0bQJg%40mail.gmail.com.
