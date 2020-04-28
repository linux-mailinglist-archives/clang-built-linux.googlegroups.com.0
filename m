Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWGVUL2QKGQEQGKVALY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1931BCF9D
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 00:14:49 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id g50sf139272otg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 15:14:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588112088; cv=pass;
        d=google.com; s=arc-20160816;
        b=BcHs0t0uaw4LdgYsHJ5BYZx3Lh5BFPxr4TuNiPyrG+zRqnVixHB5mlJt3OXjQbNsdI
         cJdS0HfboFo4LEkTmsipKlyWXzZP8nPWVaOdLpqjp8QAE2Lq0GCoOMp3sMcYxE8AqTj1
         ciN6F5JqOLyISgaVRGhtSKIkwSzzhGQmEjO5UEpzfFwtTijGC85IMCDAdwy0X1P/Ek1Y
         Kbi/AWQzyEMpSRLnu/6UvFBjhDnau2y1ugzrlhHgLrUPpliHekg3KRgK3kj1JNPMzvrb
         u0PWwFR0IiGdJ/L4CepqEEkClKK2y3IaT8rS051FGcZIM1ZgTgonJpPUeVK8TxcADpvL
         uwsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=iIa064c8Xanbx4fVsSkH/k4/0uiqt5TyjD9ApvcX5+Y=;
        b=CHlCEYMjSaafu9bG0SAHbWVugcnT6LMEW4dT8ASE/bnxDUnQLqbRwQDckmu5Q+a1m2
         5EPXBXCM8uL/Ra+YkHEnASl0v43E4wDv+iUgvI91E29w4w9LZv4Gs4zM37RY+5brFGnq
         WSnfW+JGECxRnw/Xk7mh7EHZJtQhCmSNmvIq7Sax2MAZVH64HAmoWnJf2/JnVOlchz9p
         Is1FoThWKEDOPWlt3XWTLZklX/zyC1RzMVnNciW/Akyc5iRJMh2pvT0ElkFbCigLhsC4
         X3pI/IGV9EKwOK3JHBfpKrxh/Z+LMOJkihUtOwrq0cOw3ELsMloR+i1HMjXgGjoHMAn1
         oUAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cboZAHaR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIa064c8Xanbx4fVsSkH/k4/0uiqt5TyjD9ApvcX5+Y=;
        b=TEp3gM+a1Kqvoxhd9Z1OY1mLIrzrIE+Z6LX4tzNUY0DbT5Ahs9KZTlsuMxOeHcNlVz
         T02UxqeG8xewwJPYOkG21ikzLYIl34YcH3kC8v2viUPcnSO73Kd5PvHkSrmkCgCicGih
         EMWe0/xgJXW+kXKO3cJP5PphPzQtEipX6wDD2ANUuA8Ys5Zq/02A7ZRNGtWNkgloEUxz
         vhVLqx9d4y04ipiDLJ7T7qoODoP+dtV4IcYBxA2MfgtRYbVu5zH6xZpbrU2GR/PyzQ5z
         Q9Y64chh4LMnkKQ+9a1MBhYFo8hc1GCgRyYTVGvLFf4QqQFZfLfSIdt+LSgYbEfAsQpB
         iwJw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIa064c8Xanbx4fVsSkH/k4/0uiqt5TyjD9ApvcX5+Y=;
        b=c7ynU1kuQ/LkyFYuZi9Mm3IEg9ekjM1LslkyZR8O4oMwIXi9JWfB7PG9jpvjzqxnz0
         finwZOP1yeaSUVOLA9fUwl7kf70OFcWutmhHfqaAUfPYoa/VXOyq69DZu34FJYGAgaNY
         zXODb8sbL18qg1pkmf9ntzE7oXfY7CTL2fjvvzNBvzpOjNbSxRAWGvmHmpHIaIKmlv9z
         bg0mOm7X7pWCwrSlxrUQmDfpfBCkm+paW1cJiJRfEx1Vdc6lk+BwHs33NR92jycFabz3
         QlYwKZs/wRTfQ+uQREN0tUnBMAKvUg9B39B+lSW3j9ZDG35kIC+U7YiC+tEKPofK7jKK
         fziA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIa064c8Xanbx4fVsSkH/k4/0uiqt5TyjD9ApvcX5+Y=;
        b=oZw6p/1gyhzKYR+7tnqw76Xg1ttbpCh3G1Omtg7HLiw+/pOMYTqyd131F4nxk4a2V4
         66Wg71vDmk6Ki/dtevIrPpkgG1X0WqLKzpxI0WNnGjE35/ZOdwp5L6PuXcltIs69Zsmn
         YuiMqhDfs+mMgqb3yNvq/XfUbsBydRgqPjUTAdkhbaFhymz7GKHWLRe2kLtS8tAiAQ7t
         xJKI/wtRdQ5tNZAlxfu7qp7ij5W8skN4QTiGfHmxF45egags9RPidZ5VPTvOQsfQ69r6
         HW5g1vSmEK0+x/FHcxKaQWOsDhBmH/kp2xaDRFz0F3wYp8nbnkaqlSBJ1grwxQUDXwzC
         hA1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYC8AS+oy+CvjOwpM75jfDLUcyDQwe2JZgPOYDJAqI0K5INelVl
	nxz1VfHz/0p8XxX9395Sphk=
X-Google-Smtp-Source: APiQypK/h2uzOdjV/SHepYDbGbkCQfL1zxugkAFlPOfmz3AQ7kkBfMd7xidtoThdjz7TYWrQiGQtFQ==
X-Received: by 2002:aca:ac84:: with SMTP id v126mr3067447oie.132.1588112088613;
        Tue, 28 Apr 2020 15:14:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:69d7:: with SMTP id v23ls6136874oto.0.gmail; Tue, 28 Apr
 2020 15:14:48 -0700 (PDT)
X-Received: by 2002:a05:6830:2317:: with SMTP id u23mr1377533ote.203.1588112088279;
        Tue, 28 Apr 2020 15:14:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588112088; cv=none;
        d=google.com; s=arc-20160816;
        b=g02LtKKxhcF2bzsXsdUGPwTZnf4XbnFEpa7ckRhimsdjwl7k7XtiznU+Y0XZ5Uso1O
         KKE7HraQQTvSiTdxdxL+gcu6/Z53R9Vd9t9MMySiFkaUAx12tTTfhBg+NycKGvI2RIOa
         XtwPuVHbc6oPUkG/reqjXY9yCYO0TDZnYtfKWQe2Nr3OstuyArgeB7ou9fyRcSqjAtn0
         CjFHlmoXEdthlOcY/XIHlZFbZYTiuyT56ibrMsnh4yvTs84vHQQEeBVy8Qj5SbQSyXTA
         NF24dYOH2BR4WeMGG39wCOvNiTLFPa8I8TIWxf0R7PHWv4nbp+KC8O/1nTmhMPNVmVNU
         ejNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=7RXicgLKtxfo0xJMhMqi5KWPBmvi4LyzTbOskfEYJQQ=;
        b=qvU91j6yzrADQyyDLKwJd/f9uJmPRI26gCq0XKZWJQ6PpTuJepmU2FRSFAOIENHUn3
         H/E1eUyQ1WKmxwGJtNk11yJxhRdAKaUAcWI27l2Y5svLrdrNbNcxi3yHCOofdzFKqfv0
         b9sXOG9h2Ba+Xod9RqLAFoZHiO7zEvnaZhjxVFgtRivjcqJchIXyE/KQG41XVGRg6Gt2
         DxEFpey/Qm8uvUFg4L3yEIECSBvCsaXLU6mal/iVcr775lWgA2nJDsVoAapolYBH+k5s
         X3dtK55Gb2/rgUs/+hgTGlDcbycmeuexcNJrfEedmPAIbXziZlGZmICKI3ae0Wm1fO3e
         +gKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cboZAHaR;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id w11si494602ooc.0.2020.04.28.15.14.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 15:14:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id e26so35693991otr.2
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 15:14:48 -0700 (PDT)
X-Received: by 2002:a05:6830:92:: with SMTP id a18mr25129047oto.317.1588112087977;
        Tue, 28 Apr 2020 15:14:47 -0700 (PDT)
Received: from localhost.localdomain ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id 186sm5267476ooi.30.2020.04.28.15.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Apr 2020 15:14:47 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH v4 5/5] MIPS: VDSO: Allow ld.lld to link the VDSO
Date: Tue, 28 Apr 2020 15:14:19 -0700
Message-Id: <20200428221419.2530697-6-natechancellor@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200428221419.2530697-1-natechancellor@gmail.com>
References: <20200423171807.29713-1-natechancellor@gmail.com>
 <20200428221419.2530697-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cboZAHaR;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

Currently, when linking with ld.lld, this warning pops up:

    arch/mips/vdso/Makefile:70: MIPS VDSO requires binutils >= 2.25

CONFIG_LD_VERSION is set with scripts/ld-version.sh, which is specific
to GNU ld. It returns 0 for ld.lld so CONFIG_MIPS_LD_CAN_LINK_VDSO does
not set.

ld.lld has a completely different versioning scheme (as it follows
LLVM's versioning) and it does not have the issue mentioned in the
comment block so it should be allowed to link the VDSO.

With this patch, the VDSO successfully links and shows P_MIPS_PC32 in
vgettimeofday.o.

$ llvm-objdump -Dr arch/mips/vdso/vgettimeofday.o | grep R_MIPS_PC32
			00000024:  R_MIPS_PC32	_start
			000000b0:  R_MIPS_PC32	_start
			000002bc:  R_MIPS_PC32	_start
			0000036c:  R_MIPS_PC32	_start
			00000468:  R_MIPS_PC32	_start

Reported-by: Dmitry Golovin <dima@golovin.in>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/785
Link: https://github.com/llvm/llvm-project/commit/e364e2e9ce50c12eb2bf093560e1a1a8544d455a
---

v3 -> v4:

* No changes.

v2 -> v3:

* No changes.

v1 -> v2:

* Move into Kconfig so that the warning does not happen.

 arch/mips/vdso/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/mips/vdso/Kconfig b/arch/mips/vdso/Kconfig
index 36a52158d849b..7aec721398d59 100644
--- a/arch/mips/vdso/Kconfig
+++ b/arch/mips/vdso/Kconfig
@@ -12,7 +12,7 @@
 # the lack of relocations. As such, we disable the VDSO for microMIPS builds.
 
 config MIPS_LD_CAN_LINK_VDSO
-	def_bool LD_VERSION >= 225000000
+	def_bool LD_VERSION >= 225000000 || LD_IS_LLD
 
 config MIPS_DISABLE_VDSO
 	def_bool CPU_MICROMIPS || (!CPU_MIPSR6 && !MIPS_LD_CAN_LINK_VDSO)
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428221419.2530697-6-natechancellor%40gmail.com.
