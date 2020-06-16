Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBNVCUT3QKGQEXOYWXNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E11D1FBE28
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 20:36:40 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id l144sf16463432pfd.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Jun 2020 11:36:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592332599; cv=pass;
        d=google.com; s=arc-20160816;
        b=WW6wOr9jRpDDz2sQbkw3WN5QqsyMF/xL9OkWV8DgNmV8RFV2btMWYfASm7hXJBs+ux
         c58Dj+LZFCoMjXmptQe1HOQxe8HXRtn5tybRFRHa65kc+uo911jfj9gLOIEWgCSmXoUz
         XJacdTRy7AC6JBjQdcYPsejFzVMqUQmjsQKLuBcONqZqi7/vByJNRcyEdYiVzy1L5O0C
         uoJhowjzAtbRVy0YBDaqbB2y6qCZNMPiaXPUbw0wA+OezzmJfqIhYygMl0EDO0J4Z7Jy
         RNpgwsG3weCcsh89yB7X+Pxd7/NJR0oNB9m/49f3pFL6r978/OgJhPYTnYeJ9cneU5qV
         QTTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=V6ykFZFHwntQbwnSbPy5ESLGmGs9iRBUFIHlkymKb5U=;
        b=dHvMr1oLJKX6Z9mg0nCMuDdKR7TYJgSyO8cXFvSha93v1Xh8qQn5P3SxkQMOghc46U
         wBjEdXD9bdfRNAbCMkvvT3JtO5mQXlGbstqVuRZoAaCqCRUfLJ3PU+FB8fPl5gsu3SGO
         yROWlzRo+fqfL+osYd5fqzXNUp4jNJfW0vwSq0mqZC80fv21fvz4uwfCJMsRupxOCcD/
         nT6N2hJROVupVQKNYdz9nzQRI6lsJiUAluytMjYU02sYiuqrsyVltB5Z+VIPT6bMmr3u
         6AFT/DPu9cifeRixBBsnnFYK7eh8yIfl4OmscLsOQNhlCv9PAdsX1UZKDUPBp8/57Jqk
         3sMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b8cjVnkG;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V6ykFZFHwntQbwnSbPy5ESLGmGs9iRBUFIHlkymKb5U=;
        b=ILxz0q1KJNfHdOskWMIGdfwVJpA1ombuPlnNxds0yfCQXwoVmU44J18iQhx/PsPL+m
         FonMTDbWuogwa26mtjTqd2VPqxBjAjfTRChekZqI++Kw14U+LyLtNHzT3JRisnV1FZeK
         TWKb5YqNPkjlZfjDpdtKW90gcr4zAgHdLbkRCqpaSBoR74xAHV5y+PHDgv6HZxCvwHwI
         F4AO+x0QBfJoqYMN0710S49ECDKe7BjlhOrkmhy9U8B9DFj7phMmdZ5yGLhHEjBpmm9M
         +sBeckIm2ESVEjfkFZ8V/rurOSyDGeU1znrYZTqPoxm7dhF0zFHNq2mL8p+uIULnItzv
         CzNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=V6ykFZFHwntQbwnSbPy5ESLGmGs9iRBUFIHlkymKb5U=;
        b=d9soflH+/q3dxTxCJViEwVtUARLWfqbS5Rswlg8R55ucUfohS8WohPBj7Pq0Q+8RDI
         qTAMMFTRSuoL6iTOkhZ5sjh5n6jrKfhJpccH4IGITbmwozAvHkKQ2T6pCi74uKCkSaCj
         YxB7MRlocf/1mWUb/zvp2ZfmCnBvZl/oU0d4wTW3d8RpAKqHcbVkx0Lmi3ODjUNX+25X
         p60nyjJu+3ucBFEkOylGkU1ywEV0i22muN+1ieAjHOP9+sF/1IhsyM2NVCF4wwugZ83d
         xqpAoWMGGbhOD/6t0u4J6bNF3+qqL18mRS5wqnBEeCZ7qpsZA11VPD1EevmPr0sNRgCH
         lcRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tgZfJka/sz4y2B4lxJ+kfUZ8Gy7t1Zyo+f/ngqobIhsknwmi2
	m9ggpwXo8cY6fkpMB2TkSgw=
X-Google-Smtp-Source: ABdhPJwEEGDfbmferSVsqfBWZoMDwskVNwNSPblsXAjcPrYccwq1DfMgkRD4loj23s6K1qUyxQdnoA==
X-Received: by 2002:a05:6a00:801:: with SMTP id m1mr3346135pfk.200.1592332598763;
        Tue, 16 Jun 2020 11:36:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:517:: with SMTP id 23ls4506819pgf.10.gmail; Tue, 16 Jun
 2020 11:36:38 -0700 (PDT)
X-Received: by 2002:aa7:9d9a:: with SMTP id f26mr3159079pfq.229.1592332598296;
        Tue, 16 Jun 2020 11:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592332598; cv=none;
        d=google.com; s=arc-20160816;
        b=glR1/+FLuf6+/cWefHO2uE0cGZyToiKgVH5pryNq5kyevInTabyO4096hZaEUZmy/X
         gsYs0IQkRvCurCDSKWVzdx1Kj4bi6Lu/z5/J78I1Yf3vRCIQkdNgIUrmEw9IjstYc8+b
         UoeUDLI0gb0ErYUjzyWTFoyULOKi+GqbMzpcllEPOZSNVg91gdLtIwlmzuFgvsTaIqPS
         zqeIvpJSPlULE9FBFfWlR10lwQRQ2oKcm6LmvyJoGA+FfK+gYmjeIjGvH90P5SHHXWch
         ht+4NppEVKASBArM2iscif7uqIAPFIIG+EexIHshI03nhSnJ98MxiPj4Wo6Jmol0SuLe
         dYUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=WFNjv/3el3KQinDmqTv5zNseabockemu91zPW9iCCBQ=;
        b=Q6nSr1H4rIlBw5SRrZeULaAF+B0BbECH4+2JJ39EskLuBlzbUGuIdlTM+M82tYr5p3
         foE3nMMUC3N4rlsZp4IymS9ZDUzp9SQxvumWyvVIb4ZEEaVwKhostMeAi0vs7yDAj40p
         CPKpJVyFxcsYH2N6ohrp3j9ZnqQJ6QIPFAA3ZiL2t16ML9k6rq+u4dTVlJg0epceL7wC
         KtndM/ZzwKI44hd1ZadnId4ud4kT7Uj51ut6/S2sWRjMVdZ18VS50FBwgSRCeuVTrK62
         yy4sFEU9y6PY+qqFH1jdpyO+Mt8c1e+rWcwtljjOijcQwA49IBwHYE1U5VuXeyxltaSc
         XhlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=b8cjVnkG;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x132si920673pgx.4.2020.06.16.11.36.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Jun 2020 11:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 66A05207C4;
	Tue, 16 Jun 2020 18:36:36 +0000 (UTC)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Cc: kernel-team@android.com,
	clang-built-linux@googlegroups.com,
	Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Mark Brown <broonie@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Tom Stellard <tstellar@redhat.com>,
	Daniel Kiss <daniel.kiss@arm.com>
Subject: [PATCH] arm64: bti: Require clang >= 10.0.1 for in-kernel BTI support
Date: Tue, 16 Jun 2020 19:36:30 +0100
Message-Id: <20200616183630.2445-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=b8cjVnkG;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Unfortunately, most versions of clang that support BTI are capable of
miscompiling the kernel when converting a switch statement into a jump
table. As an example, attempting to spawn a KVM guest results in a panic:

[   56.253312] Kernel panic - not syncing: bad mode
[   56.253834] CPU: 0 PID: 279 Comm: lkvm Not tainted 5.8.0-rc1 #2
[   56.254225] Hardware name: QEMU QEMU Virtual Machine, BIOS 0.0.0 02/06/2015
[   56.254712] Call trace:
[   56.254952]  dump_backtrace+0x0/0x1d4
[   56.255305]  show_stack+0x1c/0x28
[   56.255647]  dump_stack+0xc4/0x128
[   56.255905]  panic+0x16c/0x35c
[   56.256146]  bad_el0_sync+0x0/0x58
[   56.256403]  el1_sync_handler+0xb4/0xe0
[   56.256674]  el1_sync+0x7c/0x100
[   56.256928]  kvm_vm_ioctl_check_extension_generic+0x74/0x98
[   56.257286]  __arm64_sys_ioctl+0x94/0xcc
[   56.257569]  el0_svc_common+0x9c/0x150
[   56.257836]  do_el0_svc+0x84/0x90
[   56.258083]  el0_sync_handler+0xf8/0x298
[   56.258361]  el0_sync+0x158/0x180

This is because the switch in kvm_vm_ioctl_check_extension_generic()
is executed as an indirect branch to tail-call through a jump table:

ffff800010032dc8:       3869694c        ldrb    w12, [x10, x9]
ffff800010032dcc:       8b0c096b        add     x11, x11, x12, lsl #2
ffff800010032dd0:       d61f0160        br      x11

However, where the target case uses the stack, the landing pad is elided
due to the presence of a paciasp instruction:

ffff800010032e14:       d503233f        paciasp
ffff800010032e18:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
ffff800010032e1c:       910003fd        mov     x29, sp
ffff800010032e20:       aa0803e0        mov     x0, x8
ffff800010032e24:       940017c0        bl      ffff800010038d24 <kvm_vm_ioctl_check_extension>
ffff800010032e28:       93407c00        sxtw    x0, w0
ffff800010032e2c:       a8c17bfd        ldp     x29, x30, [sp], #16
ffff800010032e30:       d50323bf        autiasp
ffff800010032e34:       d65f03c0        ret

Unfortunately, this results in a fatal exception because paciasp is
compatible only with branch-and-link (call) instructions and not simple
indirect branches.

A fix is being merged into Clang 10.0.1 so that a 'bti j' instruction is
emitted as an explicit landing pad in this situation. Make in-kernel
BTI depend on that compiler version when building with clang.

Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>
Cc: Tom Stellard <tstellar@redhat.com>
Cc: Daniel Kiss <daniel.kiss@arm.com>
Link: https://lore.kernel.org/r/20200615105524.GA2694@willie-the-truck
Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 31380da53689..4ae2419c14a8 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1630,6 +1630,8 @@ config ARM64_BTI_KERNEL
 	depends on CC_HAS_BRANCH_PROT_PAC_RET_BTI
 	# https://gcc.gnu.org/bugzilla/show_bug.cgi?id=94697
 	depends on !CC_IS_GCC || GCC_VERSION >= 100100
+	# https://reviews.llvm.org/rGb8ae3fdfa579dbf366b1bb1cbfdbf8c51db7fa55
+	depends on !CC_IS_CLANG || CLANG_VERSION >= 100001
 	depends on !(CC_IS_CLANG && GCOV_KERNEL)
 	depends on (!FUNCTION_GRAPH_TRACER || DYNAMIC_FTRACE_WITH_REGS)
 	help
-- 
2.27.0.290.gba653c62da-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200616183630.2445-1-will%40kernel.org.
