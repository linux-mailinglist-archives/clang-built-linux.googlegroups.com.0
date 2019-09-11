Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBL7W4TVQKGQEOECW6DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C586B037F
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 20:21:36 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id s24sf13142802edx.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Sep 2019 11:21:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568226096; cv=pass;
        d=google.com; s=arc-20160816;
        b=zbiLQ533SzNiRfkOoNxDfymxQiWhYoTU11TzmQGlGsoD/1Ra/1XvYGsMwNGdrPDJCO
         LJaUKYEm6jV4djY1tJOFuZ7q3DMyK6ohEy/WG5e4+hE+8zhve6WFlybWeEnRLq2LMUC5
         Dn/Oyjy2/6hR8QYbMEByXmSIiOswyT0L6+4ptCI6jUCAdalFQC8B/aun4g7D9N0HccfY
         aXR9e2vl9k8buNsRGSWxrUDHYMhDNlA8kaEy9kkidNJj34Wz8aR7JR6ksGE1+jNzMoWJ
         RTpxWOhwR3RtEErcUNpKCSTbh8PaDVmyE9zOohWkB8PihH7sUW8A9Jha6QU8Rtkvr9f1
         fZMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=xRS8gzb5F/w2YZmhOHljNeOXoocaWfdWYYEylbVJCq4=;
        b=reVXBnhZX8Jd9tJr97Rfl7OoC9Mga4cyFUa4jlvwIpF6i8QT8eABzp+leo5v8sVr9z
         CWE6alQDESyngDE5b287bZ5ZEdIVvXbwduMFqBsmIW9glWcqFK515Id6/37DaN+BNEqv
         8irWMlNBM8Jy5BojEvwuSSuGWasG9E5v2FzCg1Wj1neNki7t5e/s9SjSBS8qPAPSdKt6
         IIqI/DBGm6uip27iAv66uaQSBR45kXjVIr0XEdlm7dS3O42Q9fljszw7abiLkpHv+A6/
         vERUvMqiVXHyNlR2eeIFh6azM78sRTHF4g+6TrtC4ERWO5h0vXfF62E5D02c4xLdYy2i
         8vag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hKGZhQsc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRS8gzb5F/w2YZmhOHljNeOXoocaWfdWYYEylbVJCq4=;
        b=cKIhP1Kk8Q6vAtY54nK8kXgycN5SZyJfMVmojLwngXX1dfppt0lON4nd0uMgiY6GBy
         fvVprOp4LibHfb5YldDDw/9HFpYtLznogN7PmWnugqcvxpL5vnC97+6EJDxG9yTcgmmk
         uWQJyf63vAfc79VIrLOOv6IkUpVIg5Y2Ms7UaFTGQ+EPBmI/7aeXaJkkpQEIvIfWeZex
         3dhA/ie008zAUzgQbUoJvlBNJfsbD0CMgVTUW0I+AZ0eE1DbdGJk15oOVW4oy++UyD4F
         FnWWqaTE96KZm1GuFR1KfNAQRd7SBeyNpTsJayi8pKQwp9WbY3pR8vWpN5ZfdR9YJep3
         X23A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRS8gzb5F/w2YZmhOHljNeOXoocaWfdWYYEylbVJCq4=;
        b=Xl48w9FlQ5A9h7n5GEwaqO9d3Umfg36WA5qiC4l9bBMZWPZlURJV3dHTmV4eWTEEtL
         0vRH40UlegHCGUDoOlra63HyqHuxLnjRCAL5ayu4CNGzRaRYPrR3rCdnSwD85wTc8RlH
         M34qlESLb4ktSY4MVm9cGDO8y8jIkxbuEahejnU7X3vmcnil932Zt4YQxvZnLn4JoYDx
         C8OqksIhWIRkULRmn0IYc0LAwLmcP8iVjWm5ePn3jw+5lr1Buw8YF7DkqL+ZSlHwaB6j
         5Cyq4LHHiXxtPl2bG46uDVKBVj3kT6w4dHcjFinTEv3YRzXEH9HoBrzl3WF6WREKng1c
         R1JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xRS8gzb5F/w2YZmhOHljNeOXoocaWfdWYYEylbVJCq4=;
        b=AlW7PZKInr+bT7Hq9fG3Wvvx2OzbiE1HcCFdBK+UwgFXMGpQ2IPAIPdKStHKZyM6j1
         WQZ8iUKV4W9TPh5Ku62XLts/ZBhiw6F+BhIhAcpsE9rtZTiE7O8/c/RANvC5FuszUF6X
         iz85+qdMScgb/QpOXtykmWdeb1OtJi9qDJqDLH1vEzfekjXcdln9cCGsxShn7t5j9y6w
         Q+Wt93KGa0sy8HJ32IuK3DwAxIMX7RYLvk2agbGS/ZY5QGNlcYnqMEh3XQmccvKN73l5
         BeAOp/4MAQQrks39eGYmR1T2Qdg7xCBdg6OkwTGmm3F1poHwCJ5An5NnzP4qmBTrQ0RC
         0E/Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWQDpUsmSSkfcm94Eqm+j2e4KlsLE1z9x27/I7OeGDKBRT4/LAJ
	E7Qp23YoGS+HHGH0E807Jkw=
X-Google-Smtp-Source: APXvYqxdmupDQX+8rD6Dk5i/vRfnhOVS7rn/pWU6MQT5WGD2li9jQi4VvRpzI6dIetwhid3rjLHhZA==
X-Received: by 2002:a50:9438:: with SMTP id p53mr38304686eda.291.1568226095906;
        Wed, 11 Sep 2019 11:21:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:326:: with SMTP id q6ls5835110edw.0.gmail; Wed, 11
 Sep 2019 11:21:35 -0700 (PDT)
X-Received: by 2002:aa7:dd07:: with SMTP id i7mr38090253edv.133.1568226095513;
        Wed, 11 Sep 2019 11:21:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568226095; cv=none;
        d=google.com; s=arc-20160816;
        b=Kr0ZpSp5o/59CUdsTaLwgPdQI5oW5RQr4aWyiCNu0Zl7gUGYp7nwPB3Jne1pbCNH0V
         SWtmaF8KUycBwHSXVxp90m6vix46TmwVh6DeO/cAByb7T/YjCpOpTF8zw1m46OMInrs2
         uzuMog8e1XBBaB1+nz5zLqtbLwxLzXKQw6cH/gAfCv6gcOAeNa37ST46JvaiWMIMRU3U
         7LmXVlkivkiAcaYbKUDrFkiHyftWJF0fyu3BzJ0W4UMdnh3Kj5pv2n4wsCx1S9JK80hM
         TpIkzDjPtW0j8zUglBrI5iMeIH9M2fR5c6e/h1U9Vye6J1Ng0/hel7+sxEwoX+8YYGgp
         hYsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wlwkreJLiH000TkL/I+nagVzmxnKwtX6/RI0S+Wf63c=;
        b=fh4jE5lLd1estB1Cr2vELLRUXqeI6oX5ltXgciedYhar4GuIDNcZIj8E9zXDv0KGXk
         2X6aWShu9oRzNEFI1HROKF3rCgmyp9SpFJbCcxpzA9MpaV4QWqS8fPQH7xQsaQ+SuDA2
         oM5NW1iS31iUPQVEvp/hMnrnYa1XVF5mHsnHQQDcpiyZwz9dO8WQStvpPzX18bmMOtgI
         QB6ZOQOzATHptjnZEkeD9tJaVuvBkL+qljypmR6+uYOxAiw/YTjtdBbJXQbtl4I5OyF6
         ABf+AMJKvtpaVnqIxHBa9PyB6XWv4mJEiIIza+67OTqKh7jeeD4dX2XrpqLVWkEfZDgd
         eR8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hKGZhQsc;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com. [2a00:1450:4864:20::341])
        by gmr-mx.google.com with ESMTPS id f20si1044742edx.1.2019.09.11.11.21.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Sep 2019 11:21:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::341 as permitted sender) client-ip=2a00:1450:4864:20::341;
Received: by mail-wm1-x341.google.com with SMTP id o184so4688505wme.3
        for <clang-built-linux@googlegroups.com>; Wed, 11 Sep 2019 11:21:35 -0700 (PDT)
X-Received: by 2002:a1c:7314:: with SMTP id d20mr4832772wmb.107.1568226095056;
        Wed, 11 Sep 2019 11:21:35 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id q9sm2356753wmq.15.2019.09.11.11.21.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2019 11:21:34 -0700 (PDT)
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
Subject: [PATCH v3 1/3] powerpc: Don't add -mabi= flags when building with Clang
Date: Wed, 11 Sep 2019 11:20:49 -0700
Message-Id: <20190911182049.77853-2-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190911182049.77853-1-natechancellor@gmail.com>
References: <20190911182049.77853-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hKGZhQsc;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/include/clang/Basic/TargetInfo.h#L1073-L1078

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Basic/Targets/PPC.h#L327-L365

Commit 4dc831aa8813 ("powerpc: Fix compiling a BE kernel with a
powerpc64le toolchain") added these flags to fix building big endian
kernels with a little endian GCC.

Clang doesn't need -mabi because the target triple controls the default
value. -mlittle-endian and -mbig-endian manipulate the triple into
either powerpc64-* or powerpc64le-*, which properly sets the default
ABI:

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Driver/Driver.cpp#L450-L463

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/llvm/lib/Support/Triple.cpp#L1432-L1516

https://github.com/llvm/llvm-project/blob/llvmorg-9.0.0-rc2/clang/lib/Basic/Targets/PPC.h#L377-L383

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

 arch/powerpc/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/powerpc/Makefile b/arch/powerpc/Makefile
index 46ed198a3aa3..150925a2e06e 100644
--- a/arch/powerpc/Makefile
+++ b/arch/powerpc/Makefile
@@ -93,11 +93,13 @@ MULTIPLEWORD	:= -mmultiple
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
@@ -143,6 +145,7 @@ endif
 endif
 
 CFLAGS-$(CONFIG_PPC64)	:= $(call cc-option,-mtraceback=no)
+ifndef CONFIG_CC_IS_CLANG
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2,$(call cc-option,-mcall-aixdesc))
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv2)
@@ -151,6 +154,7 @@ CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcall-aixdesc)
 AFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mabi=elfv1)
 endif
+endif
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mcmodel=medium,$(call cc-option,-mminimal-toc))
 CFLAGS-$(CONFIG_PPC64)	+= $(call cc-option,-mno-pointers-to-nested-functions)
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190911182049.77853-2-natechancellor%40gmail.com.
