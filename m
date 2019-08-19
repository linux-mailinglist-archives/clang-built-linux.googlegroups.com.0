Return-Path: <clang-built-linux+bncBDV37XP3XYDRBDFL5PVAKGQE25B4W4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6046A94B18
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 18:59:57 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id m26sf646713ljc.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 09:59:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566233997; cv=pass;
        d=google.com; s=arc-20160816;
        b=BV6MInsEcBeBe8n3QBa5Wc3mbqoGgNu82XruPXKvgRnJ9si2KwuY3fsNQmyXsbEXVh
         D9ge/CLb8R9yXCAXeKHiWYECjSAiuoYralssYx84m6wEu12m1Jwfaj5SDuivQLOALmSD
         y8TIaagVFrtKCaJm9fpunKUsbp6pJzbqaIYqdnVZhjJtYu81kIy5BwaVrjx3DlZMbCQu
         h8nouDgmuGsIxHel7r0izjlzNfdNu46OWtD5YzBn785oYXF1fAmJC2ueeDeX1jTNzDon
         pNhuQQDvx76qKkpWXNhrH8dJh0QYIOAdx4A10A+YM0BeEcNIHhOa69MwXffiKVufN6Zi
         wSUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gk5/kuJGikUIfPc7lmuj7hDdMbOHYCjNZz4XftV6+SI=;
        b=sGMN/DhwDZpvN7Q8mgjSL7Scz18vIv1/AEOwyMUr0M67rXWeY2pged6fpKiaFgM7F3
         KPf2i7sslTEjUc0XCeM2DniUeIUeEeAHI2bpJQFrMm8S5X5L8j8QybsWGdik6KXQhUbw
         Oek5MYX3jWADnBg+uxEB7izIKJ3wX46zbF3sSfiK8VvrQB+Xowgw0hx8P9qJGaPnZHXX
         1Hn8pjCZq1WzftpE0LqK65k0p5f3Qg0zTGEfEd04xUzM+exXzRKKT1vjYROXAZQ2B6yI
         H3L0uK1D9woy3WJkRISqzyIBfmW+DhiWdJkR5kD8I51yd8LWduLrPg8PCisZdU11XUvw
         VccA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gk5/kuJGikUIfPc7lmuj7hDdMbOHYCjNZz4XftV6+SI=;
        b=Q2y4SaVOYzRgOlHWS7JwN9WNVMe12mOSHEdeFfmIGcKuXPQ3nF8/dPrWd40lbUvnvn
         KmMhyEJjD/weVHTclQuA/6TAfUpEAI/EmILkDSe3uUWwm2AxTVGO+7PlQZDY4Rg9s678
         w98wmO1BaR4clUHLH0cH+u6bDxw2WxoP7LiuIdUjZZXwNNXKsHKDHx6pqBIKWO8va2aY
         Y7wu+/DlbWRuRIj6LJZwGwtLVOGiQJT8iXyFWXG5EbJLWhx7sFBeCmANZRLWOtvQ8etV
         b70+foHO1yBVCje/k/ulnATq3na8pSb23YoZwKiFIDH94edwub0+SVUHj4HLJ4ZmROlm
         bQcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gk5/kuJGikUIfPc7lmuj7hDdMbOHYCjNZz4XftV6+SI=;
        b=cCjUQBPCFTfTTObuQpjhLJayEkHZOiiv7ik+pAZ/n5K58iaZqlWFDA32bthfrHSy0q
         tyzlPK5eNdZn8v2yXS1LFlyiaGA2zcfIH8J60QH62eT86mjHwt51BMYbRFxbzvD5d0ya
         haxPaXqFS6tHW+QGyDidjTugXzWFXdJ4EOck0r+4sTKBotwIpwouH1pbAzyJA6hg2TqH
         nHhD7kpbu73urhvVlipugo3hgTCB70/9t5npscgiGjawRgmjSkSOyHIg7+tKSaCKCqms
         M1Yo5d92NJo5GbM8LscnlbDKTd60U6WKNnNLNfPAy9453nBQro+NfoCbficxNru4e094
         ChNw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUU1WC3kOmLc0XINevEVLRlVwfT348VIchv1zbeSJrRrs36HWrl
	OJNYYKESWHgBcqArVHNagFU=
X-Google-Smtp-Source: APXvYqwW/GFfDAR8Wu70iizAtcIIj+OQu4bpROHb2doFRSFg3iUOLK2cUV5HEGf32nW7pzobPKQgLw==
X-Received: by 2002:a2e:870f:: with SMTP id m15mr12969062lji.223.1566233996969;
        Mon, 19 Aug 2019 09:59:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ca54:: with SMTP id h20ls1414345lfj.10.gmail; Mon, 19
 Aug 2019 09:59:56 -0700 (PDT)
X-Received: by 2002:a19:c20b:: with SMTP id l11mr12740743lfc.106.1566233996264;
        Mon, 19 Aug 2019 09:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566233996; cv=none;
        d=google.com; s=arc-20160816;
        b=MeYrJmIECCodnBRh3UiWI7Y3A3r7yuiVI+oDI7K95Ji6yx08Tq3OT9UpIeWYivd84i
         +5XCYzr8DvarhqWUZDVUDKgekj0LUDShMLdjTp7fHDlNsT2Jyau5SJfchH8suanZUtL3
         l8RhbdPeNXf0OIC1iXkDrb8aduHMYnGcuQWt/qOTjeZmUPHZGDgC9ray5w7ds2iitUrG
         sCJ5Rr00sKn13OsudEU5vO6fZ78xoHKAoHqWgXLSg5enO10knb2uueNS2h660h3gx3h+
         9O6PqE01MLqeEMVK5RpfbnZ+q2PxIUopzWPBY3WnJ2seSqt2L3DV63AOIJmxL80bs89K
         AdmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=ESelvh2xgZkESEv7B3sjdyKFPdKBpoRF67pNWME5uJM=;
        b=kbKLbJtDALNRRt3nx/EiocKsbA/fIimDpKGwG8HBKWNjbgjjrO/Nbt8oivqUtawrnw
         Nko/Kuu7n6wwhSXpSmtE42ancJN1ZtsOhFhDzMMAFcwVtT+qFaFw2reAQKs0gbjmzKjy
         JdVKO3S1kLdW4yD85gl4B9VI6jT3ihcUlOp9FzgdE3yHZLrVMz7M2HWfJYO0YK94CA7/
         xCRmC4EJLR7g1IhEnbHiDM5bL8i7UzJ+334gQCy2htAmda93PbltO5HCk5eocFaemruY
         fmcuwldR6RRTTZV2jUuTaz26OhlzXfsmkYiY0h4XGuPjzkUFo2TG6tyz+16ShhW9vBGq
         rTpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=mark.rutland@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i21si571741ljj.1.2019.08.19.09.59.55
        for <clang-built-linux@googlegroups.com>;
        Mon, 19 Aug 2019 09:59:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14C1F360;
	Mon, 19 Aug 2019 09:59:54 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 472E53F718;
	Mon, 19 Aug 2019 09:59:53 -0700 (PDT)
Date: Mon, 19 Aug 2019 17:59:48 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: Enabling UBSAN breaks KCOV in clang (8.0.*) on arm64
Message-ID: <20190819165947.GA30292@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-Original-Sender: mark.rutland@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark.rutland@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=mark.rutland@arm.com
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

Hi,

I found that when I enable both KCOV and UBSAN on arm64, clang fails to
emit any __sanitizer_cov_trace_*() calls in the resulting binary,
rendering KCOV useless.

For example, when building v5.3-rc3's arch/arm64/kernel/setup.o:

* With defconfig + CONFIG KCOV:

  clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
  /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
  -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
  -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
  -I./include/uapi -I./include/generated/uapi -include
  ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
  -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
  -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
  -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
  -Werror=implicit-function-declaration -Werror=implicit-int
  -Wno-format-security -std=gnu89 --target=aarch64-linux
  --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
  --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
  -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
  -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
  -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
  -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
  -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
  -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
  -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
  -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
  -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
  -Werror=date-time -Werror=incompatible-pointer-types
  -Wno-initializer-overrides -Wno-format -Wno-sign-compare
  -Wno-format-zero-length  -fsanitize-coverage=trace-pc
  -DKBUILD_BASENAME='"setup"' -DKBUILD_MODNAME='"setup"' -c -o
  arch/arm64/kernel/setup.o arch/arm64/kernel/setup.c

  ... and there are 44 calls to __sanitizer_cov_trace_pc in the
  resulting setup.o

* with defconfig + CONFIG_KCOV + CONFIG_UBSAN:

  clang -Wp,-MD,arch/arm64/kernel/.setup.o.d  -nostdinc -isystem
  /mnt/data/opt/toolchain/llvm/8.0.0/clang+llvm-8.0.0-x86_64-linux-sles11.3/lib/clang/8.0.0/include
  -I./arch/arm64/include -I./arch/arm64/include/generated  -I./include
  -I./arch/arm64/include/uapi -I./arch/arm64/include/generated/uapi
  -I./include/uapi -I./include/generated/uapi -include
  ./include/linux/kconfig.h -include ./include/linux/compiler_types.h
  -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT=3
  -Qunused-arguments -Wall -Wundef -Werror=strict-prototypes
  -Wno-trigraphs -fno-strict-aliasing -fno-common -fshort-wchar -fno-PIE
  -Werror=implicit-function-declaration -Werror=implicit-int
  -Wno-format-security -std=gnu89 --target=aarch64-linux
  --prefix=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux/bin/
  --gcc-toolchain=/mnt/data/opt/toolchain/kernel-org-crosstool/gcc-8.1.0-nolibc/aarch64-linux
  -no-integrated-as -Werror=unknown-warning-option -mgeneral-regs-only
  -DCONFIG_AS_LSE=1 -fno-asynchronous-unwind-tables
  -DKASAN_SHADOW_SCALE_SHIFT=3 -fno-delete-null-pointer-checks
  -Wno-address-of-packed-member -O2 -Wframe-larger-than=2048
  -fstack-protector-strong -Wno-format-invalid-specifier -Wno-gnu
  -Wno-tautological-compare -mno-global-merge -Wno-unused-const-variable
  -fno-omit-frame-pointer -fno-optimize-sibling-calls -g
  -Wdeclaration-after-statement -Wvla -Wno-pointer-sign
  -fno-strict-overflow -fno-merge-all-constants -fno-stack-check
  -Werror=date-time -Werror=incompatible-pointer-types
  -Wno-initializer-overrides -Wno-format -Wno-sign-compare
  -Wno-format-zero-length    -fsanitize=shift
  -fsanitize=integer-divide-by-zero  -fsanitize=unreachable
  -fsanitize=signed-integer-overflow  -fsanitize=bounds
  -fsanitize=object-size  -fsanitize=bool  -fsanitize=enum
  -fsanitize-coverage=trace-pc    -DKBUILD_BASENAME='"setup"'
  -DKBUILD_MODNAME='"setup"' -c -o arch/arm64/kernel/setup.o
  arch/arm64/kernel/setup.c

  ... and there are 0 calls to __sanitizer_cov_trace_pc in the resulting
  setup.o, even though -fsanitize-coverage=trace-pc was passed to clang.

If I remove -fsanitize=bounds, there are 121 calls to
__sanitizer_cov_trace_pc in setup.o. Removing the other options enabled
by UBSAN didn't have any effect on setup.o.

I'm using the llvm.org 8.0.{0,1} binaries [1,2], along with the
kernel.org crosstool 8.1.0 binaries [3].

Any ideas as to what's going on?

Thanks,
Mark.

[1] http://releases.llvm.org/download.html#8.0.0
[2] http://releases.llvm.org/download.html#8.0.1
[3] https://mirrors.edge.kernel.org/pub/tools/crosstool/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190819165947.GA30292%40lakrids.cambridge.arm.com.
