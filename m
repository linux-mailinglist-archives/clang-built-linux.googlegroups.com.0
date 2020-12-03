Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAXKUD7AKGQE2LLUXAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0BC2CCB14
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:51 +0100 (CET)
Received: by mail-qk1-x737.google.com with SMTP id d206sf527281qkc.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956290; cv=pass;
        d=google.com; s=arc-20160816;
        b=bQ2SMaENvY0BgaRDh7G/ueLyIsBXE5hvpZNY34OGvMzt1CJZzNBANsbaRyF4UZN7N7
         7/A4FqaxyipT7dSOkNlV6oTmNXtrtPa4RQ38/MNoGSLZhnzFDRIPg12qMoFHmJRXltTH
         qtk2NpBs/SnMefkKrX5WnUAw8d0GT3yGs1oFUy+cYdRIcDJvdoudbvRrrDm7nA7bQsgL
         uNCL6hkTUwI7xCVklF+ORLY5W/4xOT2kqmi1Kx2HqoDFrD6RGvAny4hPOO+8pUo95pcp
         fAfCd4trYm93bILp3jw2Gu3ekq1DQP+P43gTUUJFp82037ZxkqyOv0mRx9MaCRjlDsPZ
         Uouw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=IONC9nsRsap3+pXjgXdW5kyzaT7zOGPeQP06pE6l7XM=;
        b=zQRTHhL+r++vfvSGUYNz5FzenIFBVHMsHroaZREPlq4Ly8P4Vb+57p35xgQroEQpgp
         T1cjYgIj6Kqq2a8URT5hW26Qy2CuBr2gbyM7RcKtIAsknGKTQPXI/aSirR7RyLTPadW0
         fgOpA2FESEEpcsTF8BJKoKAm8tlfwGHb0OKyrzaZ4L1iIWjoforh5u7Dgopy+C7wz0cC
         AkpQ18LhPggSONTH7GYNzDlRz7e84W/t2BOtRxNwBkbxM5q6CDuU4ihQVwbv6US+7xRw
         AcEnI4jVLQpxvqRzlcaxsMJRA3eLgvjUG4cKStwkQrhabMNBwMhW5DUFwo3lKS2Gtg6i
         SKNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Tiwu9Kph;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IONC9nsRsap3+pXjgXdW5kyzaT7zOGPeQP06pE6l7XM=;
        b=gl22JfT+ECMC2vr66SMGhBw+nKTqrbPvsHw9vGIhV/JBwvOVq1hOc5gbomacDYonX6
         u84XsVPTveaXpMGHngEdYXl/TBclr7AqkeLX1bfFTKJpF+VK7zpu6Um+iJKKAcBggto1
         Oh2vy2Q1r2YIs1DXQHTurYBExqZA0HiOAG/RSJ0vN8cDg/4WgDUi2LAYD4S1+YCmpPc9
         zP0qCPWWC7LQ0sW9ZR44Z0Mne1uyKjnewMGGyhvE+OCFp17Q9wXTPpew/x8fTdEF9e76
         uhjYHQjTdeAidspeO0CUF2neEbi2niV1DzcmTHDmnV4MwA6snhKshirpuga0Y3q2ocnx
         suDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IONC9nsRsap3+pXjgXdW5kyzaT7zOGPeQP06pE6l7XM=;
        b=FBU10w0AALgxRpYNZZhMlT7TFLHJm5WLb0bCuXRnALCh0Is6Myw7PUN/Cs1E2e/cwd
         fLBBR7XDhQ3fm9a73cDgE0FK3R0yyZPD0OvX+2m9qZR+Lf/DaSA78wmco9mTF0VrV5YC
         ArYCcAbvVLmRlRbW2D25meEp+vwPUmmJPJGN10wFBheu8YwgIwJh32lnccX+LjXg8bYC
         MQmzohjwajXgm7iBj3i+kOaSvrM5EoxRVMdP2dgJr9DWM6oMRk5jeataQLJ64+Cw4DzU
         4PcIjgjAf6Pz42G4tkl2BRVmG1LM9STecXsnFwdJUzs8p7AIlMid7ynNVthB+B/suixl
         nSyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uDFK+vKU54kluj8W+TD4BN+/fiC/rh6btaE5GhXQh5VYE8vTy
	tmx1hlK2LYn48wOaxbekJ8g=
X-Google-Smtp-Source: ABdhPJyzkD+GA26veQS67Op6+CGo0Ug6hlvPhIO89NAFBHrM2kqfUa9xivbXqG/ADLLwCCIf1Dv9cw==
X-Received: by 2002:ad4:470d:: with SMTP id k13mr626106qvz.40.1606956290161;
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f90b:: with SMTP id v11ls811027qvn.8.gmail; Wed, 02 Dec
 2020 16:44:49 -0800 (PST)
X-Received: by 2002:a05:6214:a8f:: with SMTP id ev15mr637879qvb.20.1606956289809;
        Wed, 02 Dec 2020 16:44:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956289; cv=none;
        d=google.com; s=arc-20160816;
        b=dbXueeGnUlj/DHTuywg01KzyKb0Cn67X5/BkXUJYZlLHiT8jv4V8d8o+LcP9m5NeKY
         ZIU2CU4xd1voZtNEtZAhPkuwE36jbOP3iGDi/g6rkQQW0eDFPPCV2GuLS9tzGqTCts4W
         0gfai0MnSsY68s+VIvp8EEnBKD54UdIjP0mAvJNmpDfWepSE8Fz8zYxL2kk0M4Pwf74s
         VkvWbcTW68OsFUXmhQ0QZ5hSJsxz+nNhQSwgx9Vp+os0R0CBSs+cCKbR3z+SIWS4dIwZ
         rschM4DLqhlMYSVBHS/98rDoux6VgWJjnHi7aD1jllfQO6apW0NGe6HDCqsHaT/fULIg
         WxRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=4mF58RYpIRG7fPZoiTOvLhS/VFugc/ZHEabEBpUkj84=;
        b=jWD31Jh1hmdUHHjEXBmgsHJqLz4PyI4hT8amPRXT6fXiMN/d4/dKGDssqWf01IrkHZ
         pVDYgz7A6rcf8Q0WRVXIyBS/EW/F06QX+UiHlw0c9r8BrOQm82YeLeiUniroX/Cv41Yd
         ldls9pfygY2AZslXpUO84Rff3S0kt4yByYeFz1i+BMpFezjEi24QYjbB58AALGxb9QyX
         IsUThzqrPTg9heiMItZ1V9y0/2waOcPEqP0qj7528kEKziBhiaNx+uCnx/C62ViYd8ci
         LxLqdLptzHXRMLsgwt/RLY0VsgeTJwxxGxL0/H3It3pzB4sn871kEef5HLOycAdogksO
         dpoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Tiwu9Kph;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com. [2607:f8b0:4864:20::630])
        by gmr-mx.google.com with ESMTPS id f16si36015qkg.3.2020.12.02.16.44.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:49 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630 as permitted sender) client-ip=2607:f8b0:4864:20::630;
Received: by mail-pl1-x630.google.com with SMTP id j1so185140pld.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:49 -0800 (PST)
X-Received: by 2002:a17:902:26f:b029:d9:f9dc:e2db with SMTP id 102-20020a170902026fb02900d9f9dce2dbmr719428plc.65.1606956288968;
        Wed, 02 Dec 2020 16:44:48 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a81sm224989pfd.178.2020.12.02.16.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:46 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marco Elver <elver@google.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Dmitry Vyukov <dvyukov@google.com>,
	George Popescu <georgepope@android.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrey Ryabinin <aryabinin@virtuozzo.com>,
	clang-built-linux@googlegroups.com,
	linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/7] ubsan: Move cc-option tests into Kconfig
Date: Wed,  2 Dec 2020 16:44:32 -0800
Message-Id: <20201203004437.389959-3-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203004437.389959-1-keescook@chromium.org>
References: <20201203004437.389959-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=23601034a948399652856e383ce3b9baabd734cb; i=1TQY5Z7nukcRSTlMqgOgFhdwdnp7eQleiAAeYfV7E8U=; m=olsT5dGDBAih2Gr5eudSRiOFe9OaxbgoUVU4R/ZLtgM=; p=eVrpb0BFWCi/Oj2Iv4KBoX7jRJwE291OHoHKFNJZ4eY=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAl/INPMACgkQiXL039xtwCY/bQ/8DV3 0y2AKRc4TPksw0LQDrOqk39XV9Fu94KJk2jOQ3zx8POuqGHo4pKShuPf6VsGAAn5asA3tdNEI2TeX 5qPo/ahYc1HX5WZ5CwZpXiz4ldk3xKXDwaO8BC4MfljKyG6tsNagiKpYAfAafddx+9/n6tM1fTGh9 cPPG4DeOLiHznSlROZpFMaQN/az/Mpixwvih8A554oxEzJE0FM/nkHxruC3bkRhf0GV2UtsYRE5Zs uYnDGHm42c3iuntA9u9W9R16cpwBzkLsxSvMmRFVktF7Tn8o1RGYEiH5QLDplqgR74rFk8gSfxaYn fOnWZaYKvztDBxss/eHcBh9+Jceft2Jfcn/TxNJAGCFdclyXfHC9zxYIy+g0RtqVqr9NVmTe/PBVr YsfeP7Jb5pw/fiN9k/Z/pYIzQJqrnu09ey6pyfvv0ehhFIB0LIzXCr+C4CvzmnZXhdrD8j4HnyJ8S aiDS014u1AWuaqX2DLdbZUka4xsQYqg/kvDC6hYFE2mU0MuByE9MIQh7i/oNSydYTyLP3L3dHj91C 2ZOSWrCpFhubPN4JUQmXP3cJOB4YtEKuhy6SGQPd5k1qinA4bAl9BgKRWj2a3tj3AbA7U/rbhAsvq BS4axf3aYIn4CI+TdG1xgOmM6ELNxTeaN77Ib+WjJW34KYOhMRWtfOP3zoL91gVU=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Tiwu9Kph;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::630
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Instead of doing if/endif blocks with cc-option calls in the UBSAN
Makefile, move all the tests into Kconfig and use the Makefile to
collect the results.

Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Link: https://lore.kernel.org/lkml/CAHk-=wjPasyJrDuwDnpHJS2TuQfExwe=px-SzLeN8GFMAQJPmQ@mail.gmail.com/
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan      | 61 +++++++++++++++++++++++++++++++++++++++---
 scripts/Makefile.ubsan | 45 +++++++++++--------------------
 2 files changed, 73 insertions(+), 33 deletions(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index d8d4d6557b80..05147112b355 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -36,10 +36,17 @@ config UBSAN_KCOV_BROKEN
 	  See https://bugs.llvm.org/show_bug.cgi?id=45831 for the status
 	  in newer releases.
 
+config CC_HAS_UBSAN_BOUNDS
+	def_bool $(cc-option,-fsanitize=bounds)
+
+config CC_HAS_UBSAN_ARRAY_BOUNDS
+	def_bool $(cc-option,-fsanitize=array-bounds)
+
 config UBSAN_BOUNDS
 	bool "Perform array index bounds checking"
 	default UBSAN
 	depends on !UBSAN_KCOV_BROKEN
+	depends on CC_HAS_UBSAN_ARRAY_BOUNDS || CC_HAS_UBSAN_BOUNDS
 	help
 	  This option enables detection of directly indexed out of bounds
 	  array accesses, where the array size is known at compile time.
@@ -47,15 +54,30 @@ config UBSAN_BOUNDS
 	  to the {str,mem}*cpy() family of functions (that is addressed
 	  by CONFIG_FORTIFY_SOURCE).
 
+config UBSAN_ONLY_BOUNDS
+	def_bool CC_HAS_UBSAN_BOUNDS && !CC_HAS_UBSAN_ARRAY_BOUNDS
+	depends on UBSAN_BOUNDS
+	help
+	  This is a weird case: Clang's -fsanitize=bounds includes
+	  -fsanitize=local-bounds, but it's trapping-only, so for
+	  Clang, we must use -fsanitize=array-bounds when we want
+	  traditional array bounds checking enabled. For GCC, we
+	  want -fsanitize=bounds.
+
+config UBSAN_ARRAY_BOUNDS
+	def_bool CC_HAS_UBSAN_ARRAY_BOUNDS
+	depends on UBSAN_BOUNDS
+
 config UBSAN_LOCAL_BOUNDS
 	bool "Perform array local bounds checking"
 	depends on UBSAN_TRAP
-	depends on CC_IS_CLANG
 	depends on !UBSAN_KCOV_BROKEN
+	depends on $(cc-option,-fsanitize=local-bounds)
 	help
 	  This option enables -fsanitize=local-bounds which traps when an
-	  exception/error is detected. Therefore, it should be enabled only
-	  if trapping is expected.
+	  exception/error is detected. Therefore, it may only be enabled
+	  with CONFIG_UBSAN_TRAP.
+
 	  Enabling this option detects errors due to accesses through a
 	  pointer that is derived from an object of a statically-known size,
 	  where an added offset (which may not be known statically) is
@@ -69,6 +91,38 @@ config UBSAN_MISC
 	  own Kconfig options. Disable this if you only want to have
 	  individually selected checks.
 
+config UBSAN_SHIFT
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=shift)
+
+config UBSAN_DIV_ZERO
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=integer-divide-by-zero)
+
+config UBSAN_UNREACHABLE
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=unreachable)
+
+config UBSAN_SIGNED_OVERFLOW
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=signed-integer-overflow)
+
+config UBSAN_UNSIGNED_OVERFLOW
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
+
+config UBSAN_OBJECT_SIZE
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=object-size)
+
+config UBSAN_BOOL
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=bool)
+
+config UBSAN_ENUM
+	def_bool UBSAN_MISC
+	depends on $(cc-option,-fsanitize=enum)
+
 config UBSAN_SANITIZE_ALL
 	bool "Enable instrumentation for the entire kernel"
 	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
@@ -85,6 +139,7 @@ config UBSAN_ALIGNMENT
 	bool "Enable checks for pointers alignment"
 	default !HAVE_EFFICIENT_UNALIGNED_ACCESS
 	depends on !UBSAN_TRAP
+	depends on $(cc-option,-fsanitize=alignment)
 	help
 	  This option enables the check of unaligned memory accesses.
 	  Enabling this option on architectures that support unaligned
diff --git a/scripts/Makefile.ubsan b/scripts/Makefile.ubsan
index c18fecc53605..0e53a93e8f15 100644
--- a/scripts/Makefile.ubsan
+++ b/scripts/Makefile.ubsan
@@ -1,33 +1,18 @@
 # SPDX-License-Identifier: GPL-2.0
 
-export CFLAGS_UBSAN :=
+# Enable available and selected UBSAN features.
+ubsan-cflags-$(CONFIG_UBSAN_ALIGNMENT)		+= -fsanitize=alignment
+ubsan-cflags-$(CONFIG_UBSAN_ONLY_BOUNDS)	+= -fsanitize=bounds
+ubsan-cflags-$(CONFIG_UBSAN_ARRAY_BOUNDS)	+= -fsanitize=array-bounds
+ubsan-cflags-$(CONFIG_UBSAN_LOCAL_BOUNDS)	+= -fsanitize=local-bounds
+ubsan-cflags-$(CONFIG_UBSAN_SHIFT)		+= -fsanitize=shift
+ubsan-cflags-$(CONFIG_UBSAN_DIV_ZERO)		+= -fsanitize=integer-divide-by-zero
+ubsan-cflags-$(CONFIG_UBSAN_UNREACHABLE)	+= -fsanitize=unreachable
+ubsan-cflags-$(CONFIG_UBSAN_SIGNED_OVERFLOW)	+= -fsanitize=signed-integer-overflow
+ubsan-cflags-$(CONFIG_UBSAN_UNSIGNED_OVERFLOW)	+= -fsanitize=unsigned-integer-overflow
+ubsan-cflags-$(CONFIG_UBSAN_OBJECT_SIZE)	+= -fsanitize=object-size
+ubsan-cflags-$(CONFIG_UBSAN_BOOL)		+= -fsanitize=bool
+ubsan-cflags-$(CONFIG_UBSAN_ENUM)		+= -fsanitize=enum
+ubsan-cflags-$(CONFIG_UBSAN_TRAP)		+= -fsanitize-undefined-trap-on-error
 
-ifdef CONFIG_UBSAN_ALIGNMENT
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=alignment)
-endif
-
-ifdef CONFIG_UBSAN_BOUNDS
-      ifdef CONFIG_CC_IS_CLANG
-            CFLAGS_UBSAN += -fsanitize=array-bounds
-      else
-            CFLAGS_UBSAN += $(call cc-option, -fsanitize=bounds)
-      endif
-endif
-
-ifdef CONFIG_UBSAN_LOCAL_BOUNDS
-      CFLAGS_UBSAN += -fsanitize=local-bounds
-endif
-
-ifdef CONFIG_UBSAN_MISC
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=shift)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=integer-divide-by-zero)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=unreachable)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=signed-integer-overflow)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=object-size)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=bool)
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize=enum)
-endif
-
-ifdef CONFIG_UBSAN_TRAP
-      CFLAGS_UBSAN += $(call cc-option, -fsanitize-undefined-trap-on-error)
-endif
+export CFLAGS_UBSAN := $(ubsan-cflags-y)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-3-keescook%40chromium.org.
