Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLXMZXXAKGQEFQ23S4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5D51012B0
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Nov 2019 05:57:20 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id u197sf14840722pgc.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 18 Nov 2019 20:57:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574139438; cv=pass;
        d=google.com; s=arc-20160816;
        b=bzflW7DOfpAuUoiJPEbQOHf3M/n+5V8VaRLdMmbopi6mjnOix2rm/7R+/YwuaaE1E4
         D10YnAZKXaORMULaGs1Jf68ntW7aphLJDQBM3CWjsBRhtF6SDDEDG5aceqEQ0h5XoFcz
         v2LBL8YUIoBNQEg8UIaIfShDweB94xPNM+Vv+2GcPMiGcL2serMQdpEX2CPzarugd0h+
         OuetdSYhXW2HfV/F5qiEFW1SejOAEKdOcl52na7bz2sMUH6jU2QOovwt+eh+UIajBwlZ
         ATVVw0HeLFO4htw1uv9P3ozaFBqlqmDTys5R9VxVj+QIpkte9pQA43UGC3AKGLlPUg/+
         yBGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=IS4n3ovp+gyHjxZ7hGYsfYJ/yAKSeDTMWZsgpbVRcaw=;
        b=Ok8ZX/Hl/ClpkT8B1Z/KHTqvFMW6mvDh6gWXAvD62kbVG90uXtYcU6kBcI+ZU3Lwgb
         Q+t+rUpMqZoVDYZbBvvnhk5urJdCUQ1G3nTx/4dGsLCdxHIdtlB6Q6TV0ZwKTvChqTs5
         Rmn2ga+FP/Nwtpofj+4cuDI154uxqqXWmY0VAILnd4B0kY1V0l1j8BDQJop4EH7VsrJt
         5jh2ci2rY/8zAv/Z3Tr7s1SSrgDZckU/v5cdhuURIWtejiwiPsbTLbKlGVsi49ank74w
         vQXnIGiBlRl8kM3RQYzSMqHQ7gaVDUFCPwXNIy+sFQ7M0ASPzbzW6UB9R0otC47uQSa6
         K9Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WCTtst3O;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IS4n3ovp+gyHjxZ7hGYsfYJ/yAKSeDTMWZsgpbVRcaw=;
        b=MJTbPgDzvP+2kbEk+LO83WGd2SxaDbm7lRJsPXpqaE2yQ7/9Ejp1C/vd69dR+dOhtu
         fF9/4JeMLXbtV8jNfFC0XEHZxJRMApM2EjekGQpMU+CagfZazkX3xtgz3bt/9CqBQNSX
         ZsqT/IHfRpaQUpEZ5kCiyYtadsaabngDiKHfRo720rYQANZ7kPP8hzVKqvRMRSTvyYSd
         dF3BK97iz3rB2xH8i3Gwl/AX8zOvCmL5iRuIttCnOh/nCcIViAO1Y2Ux1GyDYJxf7uCs
         ejUZ4dbW/A+IBRlKbmfvQRFpxvTFAYWaGCXKZx5SKDhU/wGQHouRJhVOLm0mb3REkwMK
         Nezw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IS4n3ovp+gyHjxZ7hGYsfYJ/yAKSeDTMWZsgpbVRcaw=;
        b=Auvabka7uvdRISMg4PLFMa5uegSB6mqQFcGUtUENayBS+fuspdLXxFlgRwdxn0PSNK
         qO5VbMS0740OQetKNkzkgyytg8TL/0Wf6n5VVTDu/RkOxCwIkIR8GUfhzEfVy3O6GDYP
         3a/4x0vMDSo//T64jZZARN1cWzubnHyCWoo3JZhrI+md5ES1L20JFafqvZZAyslmCv7R
         YhbOuZErymGffZ7lk7pMsBz9hqGTLonTANWAafZ0oJf4FcVsTjIKU8KA94lbOPnXTEzz
         jhEt5P8wQETLEpSGMh+M7U7kqILc9J3TOoB0Fwyh7Yxb/vuOgTAz/yTl9g1lw7dTVfAg
         b21A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IS4n3ovp+gyHjxZ7hGYsfYJ/yAKSeDTMWZsgpbVRcaw=;
        b=jWc6NLe65LMNVmt6R9ETxouu5be7glG4QBZviRDdhZcbKUyFSRoUYrt+x+3wRtbONa
         g/VJpmpPl3Koxswjvtabw3vfACDCUyk3EE8MjJEDTYj4Xy7SNwlGghcjmOhFPWwlk8So
         wYV5doaD+XA7w7AVppdszrjVMEwJLhoXOIaXzM9a5tWI1yBpYGxMnH8y2v+h7VJ7sf/d
         2avkAgUNAhiG8xbWXmbUFwlQGUcMM9Q+S0B+xpn1ax0eRtR3/DqByz3qXUQUH76KFpsF
         texIpOUlLOFW8ai+HfK2U/Soe4ymuQPklU40ZyWzmwjbpibvN/5/Ch+DTJWXPs56KHHh
         SlcA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUWImL7xZSsrIbpdYrYoftjbd9YHBS3fNNNYFG84Pirg5w1UneW
	fmToWKolXaEkdVwQ0il+mt4=
X-Google-Smtp-Source: APXvYqz+f8+z+V2vAjlv7NvgqwBMjBITw3v0RFmrS/MRcgdWaz0EZj7aGcZjBmXhQlJyFGyqKV1Ihw==
X-Received: by 2002:a63:3f4e:: with SMTP id m75mr3289190pga.392.1574139438575;
        Mon, 18 Nov 2019 20:57:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d56:: with SMTP id d83ls4655945pfd.13.gmail; Mon, 18
 Nov 2019 20:57:18 -0800 (PST)
X-Received: by 2002:aa7:91c7:: with SMTP id z7mr3547109pfa.111.1574139438129;
        Mon, 18 Nov 2019 20:57:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574139438; cv=none;
        d=google.com; s=arc-20160816;
        b=jQgfvtqw4SAj/KJbp7sf5movQYDl9MA4K7YeuKcDicUozjWoUgX2BxgMU9S2QyKAbr
         iX9/Pe+FLJrGja3cQ8U7mgfCuC/G8TqjGbGsN958ihqnfqnK0LCBcRM/t/qRxvvhseSv
         tyA0ZsdqTsQrbruDE06XgPyg+vZ5EyPkUr41eJzubw85/Uzr3SaI+ToBBzAAmW48sTc7
         jsDW+94tJO8KX1yryNjcrujeAg4cb892dL7R12Aa4X2l6RlFX6BouFPqpSBX2e/e5dAx
         /NsJ0IE+mGkH5QSE5u3KmDZaHwExMw8l6lC4auc/4K5SLNoSpQtO7Gac+Gv30jZUGt/8
         I3gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=HSoLoBQu7wvsTkiGTXx6M7EQNsRZn7u37ylvVoljrFE=;
        b=iN7jSElzfgvl/WAkawHdegtg1S4zzQ9of5PW69m3q2K/jMKdYr3rxAKKdWReQE0199
         iEeKYdgep6Y8yribXX9KyE+nFLHViqL4xnO7K9XbjX+3qbZFrsdvG3XApRGQgcGplFyB
         ix6KANfSyZ7+wwsh0hB9/wnSrxueTaY7UtEfBL2xhGioc6EvL8ESJ9YqaEKcOHJHtuu2
         CuHEvyrC07znfxMIsinKG03octe6SFIwcokSJqzO7v+kqxsGta1m8xYYywM20GJGF+dS
         taFzuls7IruI+hgNyGzKAVHxUnwhojV+01RWgOkn9jRxPEihXAv6xMfvWW44tyVkhSLC
         JAJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WCTtst3O;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id c101si38600pje.1.2019.11.18.20.57.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2019 20:57:18 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id u13so16754836ote.0
        for <clang-built-linux@googlegroups.com>; Mon, 18 Nov 2019 20:57:18 -0800 (PST)
X-Received: by 2002:a9d:12a3:: with SMTP id g32mr2321849otg.61.1574139437226;
        Mon, 18 Nov 2019 20:57:17 -0800 (PST)
Received: from localhost.localdomain ([2604:1380:4111:8b00::7])
        by smtp.gmail.com with ESMTPSA id e88sm7019765ote.39.2019.11.18.20.57.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2019 20:57:16 -0800 (PST)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Daniel Axtens <dja@axtens.net>
Subject: [PATCH v5 1/3] powerpc: Don't add -mabi= flags when building with Clang
Date: Mon, 18 Nov 2019 21:57:10 -0700
Message-Id: <20191119045712.39633-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191119045712.39633-1-natechancellor@gmail.com>
References: <20191014025101.18567-1-natechancellor@gmail.com>
 <20191119045712.39633-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WCTtst3O;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

When building pseries_defconfig, building vdso32 errors out:

  error: unknown target ABI 'elfv1'

This happens because -m32 in clang changes the target to 32-bit,
which does not allow the ABI to be changed, as the setABI virtual
function is not overridden:

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/include/clang/Basic/TargetInfo.h#L1073-L1078

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Basic/Targets/PPC.h#L327-L365

Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
powerpc64le toolchain") added these flags to fix building big endian
kernels with a little endian GCC.

Clang doesn't need -mabi because the target triple controls the default
value. -mlittle-endian and -mbig-endian manipulate the triple into
either powerpc64-* or powerpc64le-*, which properly sets the default
ABI:

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Driver/Driver.cpp#L450-L463

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/llvm/lib/Support/Triple.cpp#L1432-L1516

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0/clang/lib/Basic/Targets/PPC.h#L377-L383

Adding a debug print out in the PPC64TargetInfo constructor after line
383 above shows this:

$ echo | ./clang -E --target=powerpc64-linux -mbig-endian -o /dev/null -
Default ABI: elfv1

$ echo | ./clang -E --target=powerpc64-linux -mlittle-endian -o /dev/null -
Default ABI: elfv2

$ echo | ./clang -E --target=powerpc64le-linux -mbig-endian -o /dev/null -
Default ABI: elfv1

$ echo | ./clang -E --target=powerpc64le-linux -mlittle-endian -o /dev/null -
Default ABI: elfv2

Don't specify -mabi when building with clang to avoid the build error
with -m32 and not change any code generation.

-mcall-aixdesc is not an implemented flag in clang so it can be
safely excluded as well, see commit 238abecde8ad ("powerpc: Don't
use gcc specific options on clang").

pseries_defconfig successfully builds after this patch and
powernv_defconfig and ppc44x_defconfig don't regress.

Link: https://github.com/ClangBuiltLinux/linux/issues/240
Reviewed-by: Daniel Axtens <dja@axtens.net>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Improve commit message

v2 -> v3:

* Rebase and merge into a single series.

v3 -> v4:

* Rebase on v5.4-rc3.

* Update links to point to llvmorg-9.0.0 instead of llvmorg-9.0.0-rc2.

v4 -> v5:

* Rebase on next-20191118

 arch/powerpc/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index a3ed4f168607..f35730548e42 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -91,11 +91,13 @@ MULTIPLEWORD	:= -mmultiple
 endif
 
 ifdef CONFIG_PPC64
+ifndef CONFIG_CC_IS_CLANG
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 cflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mcall-aixdesc)
 aflags-$(CONFIG_CPU_BIG_ENDIAN)		+= $(call cc-option,-mabi=elfv1)
 aflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mabi=elfv2
 endif
+endif
 
 ifndef CONFIG_CC_IS_CLANG
   cflags-$(CONFIG_CPU_LITTLE_ENDIAN)	+= -mno-strict-align
@@ -141,6 +143,7 @@ endif
 endif
 
 CFLAGS-$(CONFIG_PPC64)	:= $(call cc-option,-mtraceback=no)
+ifndef CONFIG_CC_IS_CLANG
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2,$(call cc-option,-mcall-aixdesc))
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2)
@@ -149,6 +152,7 @@ CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcall-aixdesc)
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 endif
+endif
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcmodel=medium,$(call cc-option,-mminimal-toc))
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mno-pointers-to-nested-functions)
 
-- 
2.24.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191119045712.39633-2-natechancellor%40gmail.com.
