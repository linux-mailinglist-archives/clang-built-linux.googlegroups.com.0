Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKE7ZP3QKGQE7DXZDZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8FB206AD2
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 05:59:38 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id i6sf688527qkn.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 20:59:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592971177; cv=pass;
        d=google.com; s=arc-20160816;
        b=VjXnr2K8z/cxA1nv/yZNz2KpovQo7icowyDRTYsniDSt12EL0C+FcA31N5CsH2ksQq
         tZIpl6HnIPFVb7iMldBKMQ4sOp4eQnTvFvyIbOPGPImPVDyBaQ15+XOaDTNR50/m+YAR
         Ha/6lXCWsHQSyoEf7BTHj7eQoKD5eO3rc+UdAkkusYNP2i0Pdyx9OOLKVv4aYzs4oBWQ
         tEGxtqzJbj57CyYGirZkp3XghjlpYR2QD852bORtK0pUnJF9aZfbgVCABODOjQDhPy7r
         bwkHdnjRtDagppYQ4wGNcAhysHwMVE5Ih1D58At2ClOPQ2cjsew1iUzMXv1X368o61DW
         uMTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=9YZwwiDOximjlQUZ7/8eG/8a1q5M7DLgo4Y+H+k7gjc=;
        b=I1v0OwVFzectHZ6s0la3XqOgDAqH3j6LYLzty3StN4gxgt3dO/fO3gAqYeKTqnzqsv
         zsUyExjPWQjz59EkO+DVt1N1zSKwatdlJp6WbQ+1KNgWmx/QDi091vym6kYlhafon+Gv
         Bo+U8vL5RxwHBfBNnT2UGeDwHb8LlOyp8HnHgCmACLI1wyXcqpXEwBShF/5xlJ5R08ew
         vJUo/VXrcip6v84xWQnr5s8W19wT3+yXqcQJoWkb6qbnAAOM2rfF5NJkL4sDOBdrj0TS
         jh1A6QApgOtXioHKNKwoM12Qkft2kfSrVguuqVHPktX9k/eFIWZWH7ogpv58VR4kRU9z
         D5pw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKiltaF1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9YZwwiDOximjlQUZ7/8eG/8a1q5M7DLgo4Y+H+k7gjc=;
        b=IAs3Yl/gDhw+ptX0F3/xzTUMp88t+Y7gaexo85ayxPM6fCBNce+ybBme4ryyYYx3CN
         bHKq0V/yrvemklA7bS06W/fAsRkTMZYuiBUCAQwQoZ/iBYBLWjAhYRZChNXdL7AC5meA
         FZTq3Jc8p9BmKHJ4EIr9rV4FunjX33qExddO5Q25Om4vDPpwZr7ROBeXQeBYWoDFe2tZ
         PiKQB8KqDfockyPsfGNiUfg1MnhBTdBzt753Z+ebj2pklZEWzDOmST6NYU+04t7SMXh6
         0LVFpWMWN3rF9iWt1bbxQWGo4YEkeBBq9NYpeobMiB9pS4os9ARYWc5NgaOIWjFN7Wpu
         7c5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9YZwwiDOximjlQUZ7/8eG/8a1q5M7DLgo4Y+H+k7gjc=;
        b=W4yAMx9qyPpyU4xeKmOG6jkS+PDu/wRXI3l2ijH48bDIJE1x6B4ufKFlFfeWuMokCu
         qdRZCpUKFnCPZtEFGw9EgDy4O/VJriCNYfe1sh+EYW6sA55DFKtPUl9QOGKH12WGlZlW
         tuI4owC2OmDlmBeB3FHoG8EIJhjD9b266o1/JxA1iK/K14nqh/mLROKM24l3RpIiGA8A
         fLE+AhvFPDaosvAgKkOZRaUBlfjQGCfUtGEX+ZTdMcYwPIgw88JUtxxnYDxdV7WrZZ37
         OVc5FtXMpDmv7EqKzu1S1GYohBgzIDfG5jKqVAPDij3gerE3TaBDBT0vCBYriLxC9N/+
         LJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9YZwwiDOximjlQUZ7/8eG/8a1q5M7DLgo4Y+H+k7gjc=;
        b=lvyDG8KPx3cVAuaJlsupd6DAKWQY/NH1Zji1M9fo170OmEWZbY0o46lk0VQrgmfp89
         UZjMu1TVcv5cleikQHAcuKCpBXJUqDFdrTg0mwGwKasASDVb20boY+LoUJlXxl+qqrzU
         oocsHv/6PLSxzTLcE4ZrHeLEZ5Kp/PJFuCzjt3aDjwlBI8FxVfXONdrSuBZ5FBgOEkgG
         drA4/8f/n/EHqbFEkiKfw8pJd6xE7btBNP6DJxj/ejB/Cqz4NupdCsMG7T/Z0JcHYLDV
         w9RImRf7f92xhVcT/ODS6fqZnpsAYPKZvloJ/0UDv31odESYnY9gg53kFOlh6AmAbQ46
         sMwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Z0y5hL48IP7BgYRDpiEyXc+rGDSrHMfLsvGEGgdIOdOXTu99A
	IIy4EQxuJbDBbHn9K6owqUg=
X-Google-Smtp-Source: ABdhPJz0+q0X/V0M3WIFTGCmwKRNWt//fqcgj5D5TCwyM/lRcT99NJ/QHVLsYkng8AvaVlzgm/mngQ==
X-Received: by 2002:a0c:b787:: with SMTP id l7mr20209025qve.179.1592971177009;
        Tue, 23 Jun 2020 20:59:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:d01:: with SMTP id 1ls469994qkn.0.gmail; Tue, 23 Jun
 2020 20:59:36 -0700 (PDT)
X-Received: by 2002:a37:e509:: with SMTP id e9mr14074749qkg.367.1592971176643;
        Tue, 23 Jun 2020 20:59:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592971176; cv=none;
        d=google.com; s=arc-20160816;
        b=Z/m0sr4qqzOFyvHJKSUSv1UrU7e/LKIUVe/oogtwLCsupkQbqSGAIbQ2vLhrMxI5Uy
         VScF3KreOcECm89ozd9XY64GXL8xKWhP4gkRuNzixy1Koub0ZxXiatY5N/EDizR49Lvb
         ZJPjmJLjE9m2+Im/9dR6g//tpJEKIyzfRx88+wL96UT9QZFfl5rH4Y5jzag5LmMX+uNH
         R711s4pyFykber/r3+uGVg9fTQXUP0yo1x/A3BoY4rGC48mg2WIObGihEqB0bz6wIUiv
         FYyjPISjpEStj0Bodt2Hsn5SAfmQz68iRWI/aFwV6ktqXo+tsseJ3/upxpUEX/7AGqxY
         NP+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=TnEdc0adKymab+qTSEaLkwtzD9ZgZSbPfaKonk964fY=;
        b=TU1lrAak25+uoaUQNW5QmK4WcbSJ8uvgXCrxyfZiuqZOLIHL8KU9miZn11KEcoEoUf
         Q1XyeL9zsh8c9NEmMmZnVB5Kx2D6ASksbzVdlpN/uw9SApnBhSHf87pAzR2aAcVkSyrk
         N5+h+BU8MnbMkrXXLQbflPD0YehGIm0pMzlElIgkr4tIutmOac4HEygF/CJOZjkbomIG
         T1SC4ntnZMIYOspeJwdJf7AR5x7JO4rzziGOeypwoDKFE5LQAkw/fvLD7iy97eZ1j7l0
         zWFfk9MScGs9vcElmSTGSJY6RwXlQu+n7BVgST6oTCCWcvU6DKtggW8T4S0x520sfmLj
         YSYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OKiltaF1;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id m1si1454753qki.3.2020.06.23.20.59.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 20:59:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id a3so678236oid.4
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 20:59:36 -0700 (PDT)
X-Received: by 2002:aca:1e0b:: with SMTP id m11mr19113749oic.147.1592971176070;
        Tue, 23 Jun 2020 20:59:36 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::3])
        by smtp.gmail.com with ESMTPSA id m20sm4538380ots.13.2020.06.23.20.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 20:59:35 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Geoff Levand <geoff@infradead.org>,
	linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Chancellor <natechancellor@gmail.com>,
	Joel Stanley <joel@jms.id.au>
Subject: [PATCH] powerpc/boot: Use address-of operator on section symbols
Date: Tue, 23 Jun 2020 20:59:20 -0700
Message-Id: <20200624035920.835571-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=OKiltaF1;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

Clang warns:

arch/powerpc/boot/main.c:107:18: warning: array comparison always
evaluates to a constant [-Wtautological-compare]
        if (_initrd_end > _initrd_start) {
                        ^
arch/powerpc/boot/main.c:155:20: warning: array comparison always
evaluates to a constant [-Wtautological-compare]
        if (_esm_blob_end <= _esm_blob_start)
                          ^
2 warnings generated.

These are not true arrays, they are linker defined symbols, which are
just addresses.  Using the address of operator silences the warning
and does not change the resulting assembly with either clang/ld.lld
or gcc/ld (tested with diff + objdump -Dr).

Link: https://github.com/ClangBuiltLinux/linux/issues/212
Reported-by: Joel Stanley <joel@jms.id.au>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 arch/powerpc/boot/main.c | 4 ++--
 arch/powerpc/boot/ps3.c  | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
index a9d209135975..cae31a6e8f02 100644
--- a/arch/powerpc/boot/main.c
+++ b/arch/powerpc/boot/main.c
@@ -104,7 +104,7 @@ static struct addr_range prep_initrd(struct addr_range vmlinux, void *chosen,
 {
 	/* If we have an image attached to us, it overrides anything
 	 * supplied by the loader. */
-	if (_initrd_end > _initrd_start) {
+	if (&_initrd_end > &_initrd_start) {
 		printf("Attached initrd image at 0x%p-0x%p\n\r",
 		       _initrd_start, _initrd_end);
 		initrd_addr = (unsigned long)_initrd_start;
@@ -152,7 +152,7 @@ static void prep_esm_blob(struct addr_range vmlinux, void *chosen)
 	unsigned long esm_blob_addr, esm_blob_size;
 
 	/* Do we have an ESM (Enter Secure Mode) blob? */
-	if (_esm_blob_end <= _esm_blob_start)
+	if (&_esm_blob_end <= &_esm_blob_start)
 		return;
 
 	printf("Attached ESM blob at 0x%p-0x%p\n\r",
diff --git a/arch/powerpc/boot/ps3.c b/arch/powerpc/boot/ps3.c
index c52552a681c5..6e4efbdb6b7c 100644
--- a/arch/powerpc/boot/ps3.c
+++ b/arch/powerpc/boot/ps3.c
@@ -127,7 +127,7 @@ void platform_init(void)
 	ps3_repository_read_rm_size(&rm_size);
 	dt_fixup_memory(0, rm_size);
 
-	if (_initrd_end > _initrd_start) {
+	if (&_initrd_end > &_initrd_start) {
 		setprop_val(chosen, "linux,initrd-start", (u32)(_initrd_start));
 		setprop_val(chosen, "linux,initrd-end", (u32)(_initrd_end));
 	}

base-commit: 3e08a95294a4fb3702bb3d35ed08028433c37fe6
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624035920.835571-1-natechancellor%40gmail.com.
