Return-Path: <clang-built-linux+bncBDM6PI5M4IFRBYWB7WDQMGQEZEKTLNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13d.google.com (mail-lf1-x13d.google.com [IPv6:2a00:1450:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B8D3D6B86
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 03:26:59 +0200 (CEST)
Received: by mail-lf1-x13d.google.com with SMTP id d19-20020a05651233d3b029038be656b5c5sf5006578lfg.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Jul 2021 18:26:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627349218; cv=pass;
        d=google.com; s=arc-20160816;
        b=q68ehDXgVDkSlx66a6a/h+pMHNRffoEOFGShg6u+XQhuECHl17ta/7LiCO3Tg7h1Ay
         TeRPB1RcOQrC/PdJWGBxzX0QnNEGBfwdjNjTtuDb4/AiaMkYFYv5A14RUYFrbqQA3fYz
         EIhHBmIMpHW/3y+hJNgkxuz2Ebjy74TL2JJFmcub5th3j7eZOt+ssjQW/U5VpErnWHIH
         XKwyY7qNT9WJjG8BQUbLled326Vfi4+45KRVElpDsl4AXG3LwaE0ps3e2KchFtqWESOO
         vHQksxGahH6X0hVczZI2adnkXl+xakl3z+3npTbSkZGmFBjw8XlrXonasRm/gnYYAkf/
         8EUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id:to
         :date:from:sender:dkim-signature;
        bh=MIlmi3zQ2WEjxiX5lJuS3AOGzLzBZkqscltisHqmcdk=;
        b=qieWSawQZ9D7qVzl/SeOYP+nREIP3yqgloS79bfPSaNPAPQuIeVuFvees2CH+omxQo
         cmjaJT1Tk7nqEN1oIBRIKXEGtLnzVJFR98n/2JtABjqpYrx7TZMJo2U45M0mYr5fJirO
         DLBaDL3cfpa+ORh1DCUawXbaOtUZGFiXkaivGHogapL1wCXzjMth0fdit1xGn/xTSI19
         5+dJ3RGq2W1nmjwHiDUiSzPop1mQvMvf4oVHdgln2Q5A/NWsHE0GedsJYy1pCo1mF06Y
         8TH3uo3XojMrHpXONj0s2U1sA1EYZrFQXdqNKJxih5jXQcSCkcG6frp3ZFA6bd6DqTDj
         Ju1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nl6UO3iI;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MIlmi3zQ2WEjxiX5lJuS3AOGzLzBZkqscltisHqmcdk=;
        b=UUlVOnBP0S9IFHf5+qHHRKyzcpL+4xrHyOaB2aovj8qx3khZOCM3M7z5ri+Ndxs8pv
         ZeXWs/LRE+qBJhpYZWM+W9jqHFfYUbQXZxLfJcbUMbzSm/jiseZRN9PR+BsFQgNfoJE+
         pGoVwjjIe1KoYs4/9jRoBtn53LSB3Vj8rjw0tZlgcjkJPnQ+1wB+k5+jbcfrnJ0DjT+/
         Y/vQvTM66h5fjhHfz03nRByDbdu7K2iA0Z0b5FIHgHw55ZtLk0oh3xdoJhW+BWwwf+Re
         L4Q00AH5bff4U6mxNUN/4l6WBsIzQo8/tKAq//FqQsZiK38LdpZx1RU8LlBFRBPPnHza
         vSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:message-id:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MIlmi3zQ2WEjxiX5lJuS3AOGzLzBZkqscltisHqmcdk=;
        b=DeqhVDXpybCn5LBrvJuxTT1esgMTesWt7gieWZFczKAqWzEmhPcSLKfvUgdpVD1B87
         I5+7FJVEy20uL8MN5rrFC+6IgDPpM2aMGKYeWm/6DPjFmakw3tedgysLCZmK9tc+GRij
         vyRxnd55PtAfLNMtMKXJRMoigPZFaZWzjdWDQGNnl+UFM/leaqbKL9/HHzlTBaRfcpUm
         anNREf8b5ZVxARUnhSXdhSQeyg0jVWqyCHsCziGCQcvhKPsXJ4gFDDOh8y9mGoJNWfOr
         CXuI5OxwEkTdIo8jRxlTu4U9ERyHPbnC1xmlwbrU0y6pHEHWNBq2sHh+BRNRcmjUXqKX
         xAVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532nmH0athc8bvnOzBoDY/Vx5LNdaekFHZtrLtNeda1vyOD7XoXn
	YMu7cl1Zda6s/WpwX+Iks80=
X-Google-Smtp-Source: ABdhPJxaVX3tbPJpKf3UUWK3xt1jWqriDnUEfd2YAaGly03X39JVZuqAbVBvTJzDNu1UWarzV1tvsA==
X-Received: by 2002:a05:6512:4004:: with SMTP id br4mr14800033lfb.2.1627349218758;
        Mon, 26 Jul 2021 18:26:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b4b3:: with SMTP id q19ls2143345ljm.0.gmail; Mon, 26 Jul
 2021 18:26:57 -0700 (PDT)
X-Received: by 2002:a2e:a596:: with SMTP id m22mr13549639ljp.209.1627349217695;
        Mon, 26 Jul 2021 18:26:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627349217; cv=none;
        d=google.com; s=arc-20160816;
        b=zd6x0Tp67FItXRZnwiTYyhpvjUdu1g7bx75SpVv5hWPXl2P/g5KtFiTwt2UatrYpzw
         WlbxcDbCRDxKJUtqtcDKCC1OU40gPN2r2gShMpXquf4fgaw+ZxHboNMpXQhY+WR4Bl4Y
         hr5T5me8Q5q4X15DlSQQoWQPC/STtzWylcWaCQA10phGCiH0XKh120pwNRhc5dg9bI4U
         vHobf+Mif6YpdOZMhuGa2YYzJ/d0tMKFv3lzpnXwcMm3aPpUPpTxiBNPYAXSPw/CJSfb
         qEZ8lgE7lRDIsxhB2bwgwNSI75OPYLFMxjRcezPQYr1nAt4rUWbB+RgUHaO5eEOA5Doy
         ad5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:to:date:from:dkim-signature;
        bh=nGH25zchBF/rGM1ZiV85vWpmPIZL6xnfnfPlQ5HE0J4=;
        b=Z2lHeT0r5nGTcrKKHQWNqpQ5Hi2LiKfgL93JzqXQbV6dktRzM9yBR+0fd1rwyvTEDP
         RqhJ//yIPUVDT33ui+K2x6Y6hFIHB1ya7HmwLq/DB4DZByY2UiG0UTD13s97T6kqRXok
         yJzedy7XQFYQ/7EOI4efpgMZyP8HQ+mBH7Oek4O4lcOpipEMcucQNYPa01OvlpSJOqtA
         MSrmAkYWNCXP90//tK73KF0ybPBV5uuxRk6sqQ8ZFVvqQwvwWw0xA7aRGaJtbzf5dGTG
         xYnhoey4wOB1tft3lkO2n9PNwZOn3P5LHrNuUzSBwGFBQ4XGzxFW3LbqAwlgjRvvxcYF
         yrew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=nl6UO3iI;
       spf=pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) smtp.mailfrom=ci_notify@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com. [2a00:1450:4864:20::436])
        by gmr-mx.google.com with ESMTPS id h20si50454lfv.7.2021.07.26.18.26.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jul 2021 18:26:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436 as permitted sender) client-ip=2a00:1450:4864:20::436;
Received: by mail-wr1-x436.google.com with SMTP id b9so12336271wrx.12
        for <clang-built-linux@googlegroups.com>; Mon, 26 Jul 2021 18:26:57 -0700 (PDT)
X-Received: by 2002:a5d:65c1:: with SMTP id e1mr11077113wrw.320.1627349216794;
        Mon, 26 Jul 2021 18:26:56 -0700 (PDT)
Received: from 172.17.0.5 (ci.linaro.org. [88.99.136.175])
        by smtp.gmail.com with ESMTPSA id o14sm1020928wmq.31.2021.07.26.18.26.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Jul 2021 18:26:56 -0700 (PDT)
From: ci_notify@linaro.org
Date: Tue, 27 Jul 2021 01:26:55 +0000 (UTC)
To: tcwg-validation@linaro.org,
	Javier Martinez Canillas <javierm@redhat.com>,
	linaro-toolchain@lists.linaro.org,
	clang-built-linux@googlegroups.com, arnd@linaro.org
Message-ID: <2109475329.10103.1627349216402@localhost>
Subject: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allnoconfig - Build # 10 -
 Successful!
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10101_722314783.1627349215462"
X-Jenkins-Job: TCWG Bisect tcwg_kernel/llvm-release-aarch64-next-allnoconfig
X-Jenkins-Result: SUCCESS
X-Original-Sender: ci_notify@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=nl6UO3iI;       spf=pass
 (google.com: domain of ci_notify@linaro.org designates 2a00:1450:4864:20::436
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

------=_Part_10101_722314783.1627349215462
Content-Type: text/plain; charset="UTF-8"

Successfully identified regression in *linux* in CI configuration tcwg_kernel/llvm-release-aarch64-next-allnoconfig.  So far, this commit has regressed CI configurations:
 - tcwg_kernel/llvm-release-aarch64-next-allnoconfig

Culprit:
<cut>
commit 8633ef82f101c040427b57d4df7b706261420b94
Author: Javier Martinez Canillas <javierm@redhat.com>
Date:   Fri Jun 25 15:13:59 2021 +0200

    drivers/firmware: consolidate EFI framebuffer setup for all arches
    
    The register_gop_device() function registers an "efi-framebuffer" platform
    device to match against the efifb driver, to have an early framebuffer for
    EFI platforms.
    
    But there is already support to do exactly the same by the Generic System
    Framebuffers (sysfb) driver. This used to be only for X86 but it has been
    moved to drivers/firmware and could be reused by other architectures.
    
    Also, besides supporting registering an "efi-framebuffer", this driver can
    register a "simple-framebuffer" allowing to use the siple{fb,drm} drivers
    on non-X86 EFI platforms. For example, on aarch64 these drivers can only
    be used with DT and doesn't have code to register a "simple-frambuffer"
    platform device when booting with EFI.
    
    For these reasons, let's remove the register_gop_device() duplicated code
    and instead move the platform specific logic that's there to sysfb driver.
    
    Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
    Acked-by: Borislav Petkov <bp@suse.de>
    Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
    Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
    Link: https://patchwork.freedesktop.org/patch/msgid/20210625131359.1804394-1-javierm@redhat.com
</cut>

Results regressed to (for first_bad == 8633ef82f101c040427b57d4df7b706261420b94)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
600
# First few build errors in logs:
# 00:00:38 ld.lld: error: undefined symbol: screen_info
# 00:00:38 make: *** [vmlinux] Error 1

from (for last_good == d391c58271072d0b0fad93c82018d495b2633448)
# reset_artifacts:
-10
# build_abe binutils:
-9
# build_llvm:
-5
# build_abe qemu:
-2
# linux_n_obj:
601
# linux build successful:
all
# linux boot successful:
boot

Artifacts of last_good build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/artifact/artifacts/build-d391c58271072d0b0fad93c82018d495b2633448/
Artifacts of first_bad build: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/artifact/artifacts/build-8633ef82f101c040427b57d4df7b706261420b94/
Build top page/logs: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/

Configuration details:
rr[linux_git]="https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git#ff1176468d368232b684f75e82563369208bc371"

Reproduce builds:
<cut>
mkdir investigate-linux-8633ef82f101c040427b57d4df7b706261420b94
cd investigate-linux-8633ef82f101c040427b57d4df7b706261420b94

git clone https://git.linaro.org/toolchain/jenkins-scripts

mkdir -p artifacts/manifests
curl -o artifacts/manifests/build-baseline.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-baseline.sh --fail
curl -o artifacts/manifests/build-parameters.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/artifact/artifacts/manifests/build-parameters.sh --fail
curl -o artifacts/test.sh https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/artifact/artifacts/test.sh --fail
chmod +x artifacts/test.sh

# Reproduce the baseline build (build all pre-requisites)
./jenkins-scripts/tcwg_kernel-build.sh @@ artifacts/manifests/build-baseline.sh

# Save baseline build state (which is then restored in artifacts/test.sh)
mkdir -p ./bisect
rsync -a --del --delete-excluded --exclude /bisect/ --exclude /artifacts/ --exclude /linux/ ./ ./bisect/baseline/

cd linux

# Reproduce first_bad build
git checkout --detach 8633ef82f101c040427b57d4df7b706261420b94
../artifacts/test.sh

# Reproduce last_good build
git checkout --detach d391c58271072d0b0fad93c82018d495b2633448
../artifacts/test.sh

cd ..
</cut>

History of pending regressions and results: https://git.linaro.org/toolchain/ci/base-artifacts.git/log/?h=linaro-local/ci/tcwg_kernel/llvm-release-aarch64-next-allnoconfig

Artifacts: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/artifact/artifacts/
Build log: https://ci.linaro.org/job/tcwg_kernel-llvm-bisect-llvm-release-aarch64-next-allnoconfig/10/consoleText

Full commit (up to 1000 lines):
<cut>
commit 8633ef82f101c040427b57d4df7b706261420b94
Author: Javier Martinez Canillas <javierm@redhat.com>
Date:   Fri Jun 25 15:13:59 2021 +0200

    drivers/firmware: consolidate EFI framebuffer setup for all arches
    
    The register_gop_device() function registers an "efi-framebuffer" platform
    device to match against the efifb driver, to have an early framebuffer for
    EFI platforms.
    
    But there is already support to do exactly the same by the Generic System
    Framebuffers (sysfb) driver. This used to be only for X86 but it has been
    moved to drivers/firmware and could be reused by other architectures.
    
    Also, besides supporting registering an "efi-framebuffer", this driver can
    register a "simple-framebuffer" allowing to use the siple{fb,drm} drivers
    on non-X86 EFI platforms. For example, on aarch64 these drivers can only
    be used with DT and doesn't have code to register a "simple-frambuffer"
    platform device when booting with EFI.
    
    For these reasons, let's remove the register_gop_device() duplicated code
    and instead move the platform specific logic that's there to sysfb driver.
    
    Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
    Acked-by: Borislav Petkov <bp@suse.de>
    Acked-by: Daniel Vetter <daniel.vetter@ffwll.ch>
    Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
    Link: https://patchwork.freedesktop.org/patch/msgid/20210625131359.1804394-1-javierm@redhat.com
---
 arch/arm/include/asm/efi.h        |  5 +--
 arch/arm64/include/asm/efi.h      |  5 +--
 arch/riscv/include/asm/efi.h      |  5 +--
 drivers/firmware/Kconfig          |  8 ++--
 drivers/firmware/Makefile         |  2 +-
 drivers/firmware/efi/efi-init.c   | 90 ---------------------------------------
 drivers/firmware/efi/sysfb_efi.c  | 76 ++++++++++++++++++++++++++++++++-
 drivers/firmware/sysfb.c          | 35 ++++++++++-----
 drivers/firmware/sysfb_simplefb.c | 31 ++++++++++----
 drivers/gpu/drm/tiny/Kconfig      |  4 +-
 include/linux/sysfb.h             | 26 +++++------
 11 files changed, 143 insertions(+), 144 deletions(-)

diff --git a/arch/arm/include/asm/efi.h b/arch/arm/include/asm/efi.h
index 9de7ab2ce05d..a6f3b179e8a9 100644
--- a/arch/arm/include/asm/efi.h
+++ b/arch/arm/include/asm/efi.h
@@ -17,6 +17,7 @@
 
 #ifdef CONFIG_EFI
 void efi_init(void);
+extern void efifb_setup_from_dmi(struct screen_info *si, const char *opt);
 
 int efi_create_mapping(struct mm_struct *mm, efi_memory_desc_t *md);
 int efi_set_mapping_permissions(struct mm_struct *mm, efi_memory_desc_t *md);
@@ -52,10 +53,6 @@ void efi_virtmap_unload(void);
 struct screen_info *alloc_screen_info(void);
 void free_screen_info(struct screen_info *si);
 
-static inline void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
-{
-}
-
 /*
  * A reasonable upper bound for the uncompressed kernel size is 32 MBytes,
  * so we will reserve that amount of memory. We have no easy way to tell what
diff --git a/arch/arm64/include/asm/efi.h b/arch/arm64/include/asm/efi.h
index 3578aba9c608..42d673a011c8 100644
--- a/arch/arm64/include/asm/efi.h
+++ b/arch/arm64/include/asm/efi.h
@@ -14,6 +14,7 @@
 
 #ifdef CONFIG_EFI
 extern void efi_init(void);
+extern void efifb_setup_from_dmi(struct screen_info *si, const char *opt);
 #else
 #define efi_init()
 #endif
@@ -85,10 +86,6 @@ static inline void free_screen_info(struct screen_info *si)
 {
 }
 
-static inline void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
-{
-}
-
 #define EFI_ALLOC_ALIGN		SZ_64K
 
 /*
diff --git a/arch/riscv/include/asm/efi.h b/arch/riscv/include/asm/efi.h
index 6d98cd999680..7a8f0d45b13a 100644
--- a/arch/riscv/include/asm/efi.h
+++ b/arch/riscv/include/asm/efi.h
@@ -13,6 +13,7 @@
 
 #ifdef CONFIG_EFI
 extern void efi_init(void);
+extern void efifb_setup_from_dmi(struct screen_info *si, const char *opt);
 #else
 #define efi_init()
 #endif
@@ -39,10 +40,6 @@ static inline void free_screen_info(struct screen_info *si)
 {
 }
 
-static inline void efifb_setup_from_dmi(struct screen_info *si, const char *opt)
-{
-}
-
 void efi_virtmap_load(void);
 void efi_virtmap_unload(void);
 
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 71f3d97f0c39..af6719cc576b 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -254,9 +254,9 @@ config QCOM_SCM_DOWNLOAD_MODE_DEFAULT
 config SYSFB
 	bool
 	default y
-	depends on X86 || COMPILE_TEST
+	depends on X86 || ARM || ARM64 || RISCV || COMPILE_TEST
 
-config X86_SYSFB
+config SYSFB_SIMPLEFB
 	bool "Mark VGA/VBE/EFI FB as generic system framebuffer"
 	depends on SYSFB
 	help
@@ -264,10 +264,10 @@ config X86_SYSFB
 	  bootloader or kernel can show basic video-output during boot for
 	  user-guidance and debugging. Historically, x86 used the VESA BIOS
 	  Extensions and EFI-framebuffers for this, which are mostly limited
-	  to x86.
+	  to x86 BIOS or EFI systems.
 	  This option, if enabled, marks VGA/VBE/EFI framebuffers as generic
 	  framebuffers so the new generic system-framebuffer drivers can be
-	  used on x86. If the framebuffer is not compatible with the generic
+	  used instead. If the framebuffer is not compatible with the generic
 	  modes, it is advertised as fallback platform framebuffer so legacy
 	  drivers like efifb, vesafb and uvesafb can pick it up.
 	  If this option is not selected, all system framebuffers are always
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index ad78f78ffa8d..6ac637e422b9 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -19,7 +19,7 @@ obj-$(CONFIG_RASPBERRYPI_FIRMWARE) += raspberrypi.o
 obj-$(CONFIG_FW_CFG_SYSFS)	+= qemu_fw_cfg.o
 obj-$(CONFIG_QCOM_SCM)		+= qcom_scm.o qcom_scm-smc.o qcom_scm-legacy.o
 obj-$(CONFIG_SYSFB)		+= sysfb.o
-obj-$(CONFIG_X86_SYSFB)		+= sysfb_simplefb.o
+obj-$(CONFIG_SYSFB_SIMPLEFB)	+= sysfb_simplefb.o
 obj-$(CONFIG_TI_SCI_PROTOCOL)	+= ti_sci.o
 obj-$(CONFIG_TRUSTED_FOUNDATIONS) += trusted_foundations.o
 obj-$(CONFIG_TURRIS_MOX_RWTM)	+= turris-mox-rwtm.o
diff --git a/drivers/firmware/efi/efi-init.c b/drivers/firmware/efi/efi-init.c
index a552a08a1741..b19ce1a83f91 100644
--- a/drivers/firmware/efi/efi-init.c
+++ b/drivers/firmware/efi/efi-init.c
@@ -275,93 +275,3 @@ void __init efi_init(void)
 	}
 #endif
 }
-
-static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
-{
-	u64 fb_base = screen_info.lfb_base;
-
-	if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
-		fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
-
-	return fb_base >= range->cpu_addr &&
-	       fb_base < (range->cpu_addr + range->size);
-}
-
-static struct device_node *find_pci_overlap_node(void)
-{
-	struct device_node *np;
-
-	for_each_node_by_type(np, "pci") {
-		struct of_pci_range_parser parser;
-		struct of_pci_range range;
-		int err;
-
-		err = of_pci_range_parser_init(&parser, np);
-		if (err) {
-			pr_warn("of_pci_range_parser_init() failed: %d\n", err);
-			continue;
-		}
-
-		for_each_of_pci_range(&parser, &range)
-			if (efifb_overlaps_pci_range(&range))
-				return np;
-	}
-	return NULL;
-}
-
-/*
- * If the efifb framebuffer is backed by a PCI graphics controller, we have
- * to ensure that this relation is expressed using a device link when
- * running in DT mode, or the probe order may be reversed, resulting in a
- * resource reservation conflict on the memory window that the efifb
- * framebuffer steals from the PCIe host bridge.
- */
-static int efifb_add_links(struct fwnode_handle *fwnode)
-{
-	struct device_node *sup_np;
-
-	sup_np = find_pci_overlap_node();
-
-	/*
-	 * If there's no PCI graphics controller backing the efifb, we are
-	 * done here.
-	 */
-	if (!sup_np)
-		return 0;
-
-	fwnode_link_add(fwnode, of_fwnode_handle(sup_np));
-	of_node_put(sup_np);
-
-	return 0;
-}
-
-static const struct fwnode_operations efifb_fwnode_ops = {
-	.add_links = efifb_add_links,
-};
-
-static struct fwnode_handle efifb_fwnode;
-
-static int __init register_gop_device(void)
-{
-	struct platform_device *pd;
-	int err;
-
-	if (screen_info.orig_video_isVGA != VIDEO_TYPE_EFI)
-		return 0;
-
-	pd = platform_device_alloc("efi-framebuffer", 0);
-	if (!pd)
-		return -ENOMEM;
-
-	if (IS_ENABLED(CONFIG_PCI)) {
-		fwnode_init(&efifb_fwnode, &efifb_fwnode_ops);
-		pd->dev.fwnode = &efifb_fwnode;
-	}
-
-	err = platform_device_add_data(pd, &screen_info, sizeof(screen_info));
-	if (err)
-		return err;
-
-	return platform_device_add(pd);
-}
-subsys_initcall(register_gop_device);
diff --git a/drivers/firmware/efi/sysfb_efi.c b/drivers/firmware/efi/sysfb_efi.c
index 9f035b15501c..f51865e1b876 100644
--- a/drivers/firmware/efi/sysfb_efi.c
+++ b/drivers/firmware/efi/sysfb_efi.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * Generic System Framebuffers on x86
+ * Generic System Framebuffers
  * Copyright (c) 2012-2013 David Herrmann <dh.herrmann@gmail.com>
  *
  * EFI Quirks Copyright (c) 2006 Edgar Hucek <gimli@dark-green.com>
@@ -19,7 +19,9 @@
 #include <linux/init.h>
 #include <linux/kernel.h>
 #include <linux/mm.h>
+#include <linux/of_address.h>
 #include <linux/pci.h>
+#include <linux/platform_device.h>
 #include <linux/screen_info.h>
 #include <linux/sysfb.h>
 #include <video/vga.h>
@@ -267,7 +269,72 @@ static const struct dmi_system_id efifb_dmi_swap_width_height[] __initconst = {
 	{},
 };
 
-__init void sysfb_apply_efi_quirks(void)
+static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
+{
+	u64 fb_base = screen_info.lfb_base;
+
+	if (screen_info.capabilities & VIDEO_CAPABILITY_64BIT_BASE)
+		fb_base |= (u64)(unsigned long)screen_info.ext_lfb_base << 32;
+
+	return fb_base >= range->cpu_addr &&
+	       fb_base < (range->cpu_addr + range->size);
+}
+
+static struct device_node *find_pci_overlap_node(void)
+{
+	struct device_node *np;
+
+	for_each_node_by_type(np, "pci") {
+		struct of_pci_range_parser parser;
+		struct of_pci_range range;
+		int err;
+
+		err = of_pci_range_parser_init(&parser, np);
+		if (err) {
+			pr_warn("of_pci_range_parser_init() failed: %d\n", err);
+			continue;
+		}
+
+		for_each_of_pci_range(&parser, &range)
+			if (efifb_overlaps_pci_range(&range))
+				return np;
+	}
+	return NULL;
+}
+
+/*
+ * If the efifb framebuffer is backed by a PCI graphics controller, we have
+ * to ensure that this relation is expressed using a device link when
+ * running in DT mode, or the probe order may be reversed, resulting in a
+ * resource reservation conflict on the memory window that the efifb
+ * framebuffer steals from the PCIe host bridge.
+ */
+static int efifb_add_links(struct fwnode_handle *fwnode)
+{
+	struct device_node *sup_np;
+
+	sup_np = find_pci_overlap_node();
+
+	/*
+	 * If there's no PCI graphics controller backing the efifb, we are
+	 * done here.
+	 */
+	if (!sup_np)
+		return 0;
+
+	fwnode_link_add(fwnode, of_fwnode_handle(sup_np));
+	of_node_put(sup_np);
+
+	return 0;
+}
+
+static const struct fwnode_operations efifb_fwnode_ops = {
+	.add_links = efifb_add_links,
+};
+
+static struct fwnode_handle efifb_fwnode;
+
+__init void sysfb_apply_efi_quirks(struct platform_device *pd)
 {
 	if (screen_info.orig_video_isVGA != VIDEO_TYPE_EFI ||
 	    !(screen_info.capabilities & VIDEO_CAPABILITY_SKIP_QUIRKS))
@@ -281,4 +348,9 @@ __init void sysfb_apply_efi_quirks(void)
 		screen_info.lfb_height = temp;
 		screen_info.lfb_linelength = 4 * screen_info.lfb_width;
 	}
+
+	if (screen_info.orig_video_isVGA == VIDEO_TYPE_EFI && IS_ENABLED(CONFIG_PCI)) {
+		fwnode_init(&efifb_fwnode, &efifb_fwnode_ops);
+		pd->dev.fwnode = &efifb_fwnode;
+	}
 }
diff --git a/drivers/firmware/sysfb.c b/drivers/firmware/sysfb.c
index 1337515963d5..2bfbb05f7d89 100644
--- a/drivers/firmware/sysfb.c
+++ b/drivers/firmware/sysfb.c
@@ -1,11 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * Generic System Framebuffers on x86
+ * Generic System Framebuffers
  * Copyright (c) 2012-2013 David Herrmann <dh.herrmann@gmail.com>
  */
 
 /*
- * Simple-Framebuffer support for x86 systems
+ * Simple-Framebuffer support
  * Create a platform-device for any available boot framebuffer. The
  * simple-framebuffer platform device is already available on DT systems, so
  * this module parses the global "screen_info" object and creates a suitable
@@ -16,12 +16,12 @@
  * to pick these devices up without messing with simple-framebuffer drivers.
  * The global "screen_info" is still valid at all times.
  *
- * If CONFIG_X86_SYSFB is not selected, we never register "simple-framebuffer"
+ * If CONFIG_SYSFB_SIMPLEFB is not selected, never register "simple-framebuffer"
  * platform devices, but only use legacy framebuffer devices for
  * backwards compatibility.
  *
  * TODO: We set the dev_id field of all platform-devices to 0. This allows
- * other x86 OF/DT parsers to create such devices, too. However, they must
+ * other OF/DT parsers to create such devices, too. However, they must
  * start at offset 1 for this to work.
  */
 
@@ -43,12 +43,10 @@ static __init int sysfb_init(void)
 	bool compatible;
 	int ret;
 
-	sysfb_apply_efi_quirks();
-
 	/* try to create a simple-framebuffer device */
-	compatible = parse_mode(si, &mode);
+	compatible = sysfb_parse_mode(si, &mode);
 	if (compatible) {
-		ret = create_simplefb(si, &mode);
+		ret = sysfb_create_simplefb(si, &mode);
 		if (!ret)
 			return 0;
 	}
@@ -61,9 +59,24 @@ static __init int sysfb_init(void)
 	else
 		name = "platform-framebuffer";
 
-	pd = platform_device_register_resndata(NULL, name, 0,
-					       NULL, 0, si, sizeof(*si));
-	return PTR_ERR_OR_ZERO(pd);
+	pd = platform_device_alloc(name, 0);
+	if (!pd)
+		return -ENOMEM;
+
+	sysfb_apply_efi_quirks(pd);
+
+	ret = platform_device_add_data(pd, si, sizeof(*si));
+	if (ret)
+		goto err;
+
+	ret = platform_device_add(pd);
+	if (ret)
+		goto err;
+
+	return 0;
+err:
+	platform_device_put(pd);
+	return ret;
 }
 
 /* must execute after PCI subsystem for EFI quirks */
diff --git a/drivers/firmware/sysfb_simplefb.c b/drivers/firmware/sysfb_simplefb.c
index df892444ea17..b86761904949 100644
--- a/drivers/firmware/sysfb_simplefb.c
+++ b/drivers/firmware/sysfb_simplefb.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-or-later
 /*
- * Generic System Framebuffers on x86
+ * Generic System Framebuffers
  * Copyright (c) 2012-2013 David Herrmann <dh.herrmann@gmail.com>
  */
 
@@ -23,9 +23,9 @@
 static const char simplefb_resname[] = "BOOTFB";
 static const struct simplefb_format formats[] = SIMPLEFB_FORMATS;
 
-/* try parsing x86 screen_info into a simple-framebuffer mode struct */
-__init bool parse_mode(const struct screen_info *si,
-		       struct simplefb_platform_data *mode)
+/* try parsing screen_info into a simple-framebuffer mode struct */
+__init bool sysfb_parse_mode(const struct screen_info *si,
+			     struct simplefb_platform_data *mode)
 {
 	const struct simplefb_format *f;
 	__u8 type;
@@ -57,13 +57,14 @@ __init bool parse_mode(const struct screen_info *si,
 	return false;
 }
 
-__init int create_simplefb(const struct screen_info *si,
-			   const struct simplefb_platform_data *mode)
+__init int sysfb_create_simplefb(const struct screen_info *si,
+				 const struct simplefb_platform_data *mode)
 {
 	struct platform_device *pd;
 	struct resource res;
 	u64 base, size;
 	u32 length;
+	int ret;
 
 	/*
 	 * If the 64BIT_BASE capability is set, ext_lfb_base will contain the
@@ -105,7 +106,19 @@ __init int create_simplefb(const struct screen_info *si,
 	if (res.end <= res.start)
 		return -EINVAL;
 
-	pd = platform_device_register_resndata(NULL, "simple-framebuffer", 0,
-					       &res, 1, mode, sizeof(*mode));
-	return PTR_ERR_OR_ZERO(pd);
+	pd = platform_device_alloc("simple-framebuffer", 0);
+	if (!pd)
+		return -ENOMEM;
+
+	sysfb_apply_efi_quirks(pd);
+
+	ret = platform_device_add_resources(pd, &res, 1);
+	if (ret)
+		return ret;
+
+	ret = platform_device_add_data(pd, mode, sizeof(*mode));
+	if (ret)
+		return ret;
+
+	return platform_device_add(pd);
 }
diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
index 5593128eeff9..d31be274a2bd 100644
--- a/drivers/gpu/drm/tiny/Kconfig
+++ b/drivers/gpu/drm/tiny/Kconfig
@@ -64,8 +64,8 @@ config DRM_SIMPLEDRM
 	  buffer, size, and display format must be provided via device tree,
 	  UEFI, VESA, etc.
 
-	  On x86 and compatible, you should also select CONFIG_X86_SYSFB to
-	  use UEFI and VESA framebuffers.
+	  On x86 BIOS or UEFI systems, you should also select SYSFB_SIMPLEFB
+	  to use UEFI and VESA framebuffers.
 
 config TINYDRM_HX8357D
 	tristate "DRM support for HX8357D display panels"
diff --git a/include/linux/sysfb.h b/include/linux/sysfb.h
index 3e5355769dc3..b0dcfa26d07b 100644
--- a/include/linux/sysfb.h
+++ b/include/linux/sysfb.h
@@ -58,37 +58,37 @@ struct efifb_dmi_info {
 #ifdef CONFIG_EFI
 
 extern struct efifb_dmi_info efifb_dmi_list[];
-void sysfb_apply_efi_quirks(void);
+void sysfb_apply_efi_quirks(struct platform_device *pd);
 
 #else /* CONFIG_EFI */
 
-static inline void sysfb_apply_efi_quirks(void)
+static inline void sysfb_apply_efi_quirks(struct platform_device *pd)
 {
 }
 
 #endif /* CONFIG_EFI */
 
-#ifdef CONFIG_X86_SYSFB
+#ifdef CONFIG_SYSFB_SIMPLEFB
 
-bool parse_mode(const struct screen_info *si,
-		struct simplefb_platform_data *mode);
-int create_simplefb(const struct screen_info *si,
-		    const struct simplefb_platform_data *mode);
+bool sysfb_parse_mode(const struct screen_info *si,
+		      struct simplefb_platform_data *mode);
+int sysfb_create_simplefb(const struct screen_info *si,
+			  const struct simplefb_platform_data *mode);
 
-#else /* CONFIG_X86_SYSFB */
+#else /* CONFIG_SYSFB_SIMPLE */
 
-static inline bool parse_mode(const struct screen_info *si,
-			      struct simplefb_platform_data *mode)
+static inline bool sysfb_parse_mode(const struct screen_info *si,
+				    struct simplefb_platform_data *mode)
 {
 	return false;
 }
 
-static inline int create_simplefb(const struct screen_info *si,
-				  const struct simplefb_platform_data *mode)
+static inline int sysfb_create_simplefb(const struct screen_info *si,
+					 const struct simplefb_platform_data *mode)
 {
 	return -EINVAL;
 }
 
-#endif /* CONFIG_X86_SYSFB */
+#endif /* CONFIG_SYSFB_SIMPLE */
 
 #endif /* _LINUX_SYSFB_H */
</cut>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2109475329.10103.1627349216402%40localhost.

------=_Part_10101_722314783.1627349215462--
