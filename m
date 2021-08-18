Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBSWG6KEAMGQE5Q5Z66I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DA78A3EFAAE
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:06:03 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id u11-20020a0562141c0b00b0036201580785sf1494561qvc.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629266763; cv=pass;
        d=google.com; s=arc-20160816;
        b=ou2phSATvGv9CgPnY0mrNpM8rieeUpTh74yzYtJ6QelMVtUBoeKEXYonOb4Lco5FTI
         pmbytjxSLKavfUepFFr4CRzB0xfGki3VED4uhGK++Hd2g1+3/HI5GK5ufPEliZtajVuN
         BxYAWytmjgTxkHOetnP+TuEk0cQxPPpDvPPri59vZtbk77OSgeetH8qcHTubb5mpl2D5
         h/4KnuSsUmBoBXiPTKNt3HUw9HXtvK9oG8OGoDd77XyKZoGgfMl5M3+Nrz2Wiqji6Y6U
         Q/f7htKFt7XTT8ymBFpGy56lf4j5yMuC0jF3/Q69zAn+OTvdIgo4t3KcBe56Vy129qme
         5sqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=nSGGICwhcDcCk2JacERXsMIxFFh9IT6HdKvuVA5laTA=;
        b=GME8OO4DLzGMZr314igtOaVkJfGmXLZ8yII3QqRAZknsB3SmfyAoby+BBJ9Q4jXtcp
         GV93HIWGpWtGm43MhIRlgP1LAuWlU6QjGskZndHe4Oyb4JnbHNW5LpZM8vTovJrTQD76
         Riec/F+E9ZniNIfq6z/MeK3yW25yb2ooKTSpUSZ6mkzTfO3CgZnI+yUN6kv4f5JW13Z2
         vKstiNaq2dDz5KUiXzxEiQhfRrsOTcogNAwc08cfSp/BDxRnaRurntPlpLZoBQwDFLMm
         2Os8kBFcxdC36Hx8j6pM1ocbpPtDb0NnNhLGtk9k8ShBtFyPj2IHy9xgjZKITpAjhDg/
         njPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Y/DVgqUz";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSGGICwhcDcCk2JacERXsMIxFFh9IT6HdKvuVA5laTA=;
        b=VPAMF2LskUzWeIgz2FiNOe3i4Cp30w5Dc5ocmF8+HlWa1RbNlaswjESflecODLC1XW
         IzJs2zkxlvJBbfF9/d77BP3saAHZVPV3QIngAgQ5y9T9nOcbJ6rLhBRyE+plP8RHEQV5
         3ieOeNMhC1kMPjCb7pnw1J1gAt9dgLLinxWidVMyWO896i08CIXH/1hZrbaJKsxDgT+9
         IrS9UFq1l3gACcAUZcSizs7QB80T4GFBPw3HNKLgKbxK+lnpuLitqw3lJJx9/Hi0+ZrT
         mfq8pawXWqkF9MqrOTbb3SvDneRuCbJ0Pc+IFN6QGmCXCyrFcH/J4xm9wooiIbb9Oo99
         o0zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nSGGICwhcDcCk2JacERXsMIxFFh9IT6HdKvuVA5laTA=;
        b=e5d0ZAxCIJNOTKbMdZ/QeX6XA35eJB5gn8AYw30CFKSvCQodlonX0i62pIhFK24YRc
         joHtLfbktDuy66ayOR9uHJVQ5HtUpXHYEyBhKHAY05hXIRtm4t91IIK+KDMlMRQ3BRuU
         fpt8JmMtZL1+231uSrtIEjANsrAleUhGRua32Hvhi7jdN1QEqPuHo4I9bdIyK0w0ovZl
         GFthUOdUD0FuwSsj+rrB18RanQQ4MwSO19/McjzqOWgP4S1/h0qS7cpiGHLhDF17HxrT
         5Tkezk9qqIX+gvKwYrQFCTUeXX7l+IadeMSi6f/gT/NRDE03YJEoOkmEX+/pMV60GquG
         T3kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320rkCohny+OpV2Tr2Hytjw94c8mhKkVdHaSTFPcmo9nEXU+W5z
	w4g+ws5B5+o8PfTqZ+37OBM=
X-Google-Smtp-Source: ABdhPJzb8XFLFLG4OaAU/py/ZV+mjd1p311qGwHpacDiorzwqAWcfi8amGaEjGHvwLn9i41Y4ZalKw==
X-Received: by 2002:a05:620a:228a:: with SMTP id o10mr8044452qkh.342.1629266763034;
        Tue, 17 Aug 2021 23:06:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:298b:: with SMTP id r11ls761790qkp.5.gmail; Tue, 17
 Aug 2021 23:06:02 -0700 (PDT)
X-Received: by 2002:a05:620a:15f5:: with SMTP id p21mr7693708qkm.420.1629266762616;
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629266762; cv=none;
        d=google.com; s=arc-20160816;
        b=ZyErfviAXT2oWcdHedEg0iWGf0u2Of1zAhCrd42TOVnXH8Hh7hrkQDmr5tQTUQMrPY
         5SzBVMVkNI2GieHfhZ8fTnZPPtuPChCZ6a9sNYwsjocvp4aM4u5CELGw9g9/BAASlHap
         ML0eM9JJVvN9TswVX4tVEREQk7RU5ysp4flCRkuf2+0/kbrD3oVX8IVzoSr0tWk9HCcq
         iAHHHcouO2aqZP1A6jsVHqDqNruLTSphtkYGfFEDtUBLrKZuCI7N/D3GqL7c5FfVJMZ6
         NlnIGXGCrFHmKM1tbu663f8rHK53WAV83zufzLVG5gZfpauxeDB/arNmpoG/vWCGFh7x
         w0Ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=6lG0U8bM2TUXGlj9bAHKfwVFEdBo2YZlvkgJ69Lo3ko=;
        b=ATRdmbBD5Mt6j+WZGhFmCN7+C9rRAMegDceAwj2yH4Y+QNfKoSt2a7AL+R1bMeSiXV
         jTzgpjTmx2L3HtG1fZGn8GtmaNcPnsSR4up+6LCL9NIJivPWjol7VjG4EqSasbTz00tM
         VBTef0NIcsiSgSVN7DLFIm5PIDRoL2n1cQ0IZO3VR3spoGVDYvdkdUuCrYzPUkpf0p1I
         Kb2jHJRSOYB0dhg7/eKWEqevOWjsnldFfbbbLiMVAZoPBl2DUW3pQ5dJ5OcCHtqBDqoO
         Y0Z3I8J82dbUyzXokVQA4q0VQvRXxu5LpxQIwIrzzMS307+Y1YbieAU0SFEbX7kfvdbA
         PFvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Y/DVgqUz";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id n2si278919qkp.4.2021.08.17.23.06.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id w68so1060033pfd.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 23:06:02 -0700 (PDT)
X-Received: by 2002:a05:6a00:cd0:b0:3e2:209e:4e30 with SMTP id b16-20020a056a000cd000b003e2209e4e30mr7598474pfv.59.1629266761883;
        Tue, 17 Aug 2021 23:06:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id r10sm4624434pff.7.2021.08.17.23.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:05:58 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: [PATCH v2 28/63] fortify: Explicitly disable Clang support
Date: Tue, 17 Aug 2021 23:04:58 -0700
Message-Id: <20210818060533.3569517-29-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818060533.3569517-1-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1427; h=from:subject; bh=MScHo/g3fAm2U5yn8644/6JAGaRCvw+x4s3NMxUkYP4=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhHKMkDmaoP7/LrBvrUTwAq8PIwkOtE8yNEb1/iGaE eotqJxGJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYRyjJAAKCRCJcvTf3G3AJvkeD/ wK2I9wXb6VkTqNx8ve7VdNSMmlz+1i164ClH9CGR/35x6hLdSQ8qayX0H9g6LrgzVflJDSu0VPqZq6 B60wT0GUsaN+NPYsGb2bVu1Rg3uumqZGiK90AHNJmSYkYU2G3Fqfi/WbeuSh9MygcOeGp/a9x/PQH5 e8dULezGq6dCpC7cs5Zl3okkhjEBCJNG2UsDzKuR/shPokEXvmczONNPE0wD9SGKoJlCrtTATmKvin 4tu2+3vQYizkssvftVjPL/zU+2R6x89hzrj96XdH+uAmeG5P820sWztifwnAHNcLVL5gq7wUOMrJ+f Z4XjIAC/G5EaSS4AhVIu9sD/iX8aeWmFJWF/Y21WLVPcvT0CbToC2WmKfl6Cf/5cmduks3BDmUc73D LWQ9JncTl44MKCvuBhARaFmlaFAJHnLG2EvjMIRi62WS27zMVn6Had7IAo/qffp70xB+LqBNwHlEFR 1DOf7RDGukFMS2YPB64C7srE0otlJasITjwoT2VlC8SUubfSWf2Xs29w2K9ID2LufJo4jW+DES/y1x In7sKpTi8O1ywlBFrMpRGpBZemeuMVX+n2a4KW0Dlmr8PJZVEczotW0P4mEO8JYhohZFLrpQR/oM0d v1l42WB3iKEQLRJlt/B8Os8r3w8Ad46AyHq8GE3PhyPABlRRPciSKq8TGApQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Y/DVgqUz";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::430
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

Clang has never correctly compiled the FORTIFY_SOURCE defenses due to
a couple bugs:

	Eliding inlines with matching __builtin_* names
	https://bugs.llvm.org/show_bug.cgi?id=50322

	Incorrect __builtin_constant_p() of some globals
	https://bugs.llvm.org/show_bug.cgi?id=41459

In the process of making improvements to the FORTIFY_SOURCE defenses, the
first (silent) bug (coincidentally) becomes worked around, but exposes
the latter which breaks the build. As such, Clang must not be used with
CONFIG_FORTIFY_SOURCE until at least latter bug is fixed (in Clang 13),
and the fortify routines have been rearranged.

Update the Kconfig to reflect the reality of the current situation.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 security/Kconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/security/Kconfig b/security/Kconfig
index 0ced7fd33e4d..fe6c0395fa02 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -191,6 +191,9 @@ config HARDENED_USERCOPY_PAGESPAN
 config FORTIFY_SOURCE
 	bool "Harden common str/mem functions against buffer overflows"
 	depends on ARCH_HAS_FORTIFY_SOURCE
+	# https://bugs.llvm.org/show_bug.cgi?id=50322
+	# https://bugs.llvm.org/show_bug.cgi?id=41459
+	depends on !CC_IS_CLANG
 	help
 	  Detect overflows of buffers in common string and memory functions
 	  where the compiler can determine and validate the buffer sizes.
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818060533.3569517-29-keescook%40chromium.org.
