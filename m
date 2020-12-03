Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBPKUD7AKGQEMPGQT5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 834612CCB18
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 01:44:54 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id z8sf320052ilq.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Dec 2020 16:44:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606956293; cv=pass;
        d=google.com; s=arc-20160816;
        b=0oo+j3Kn1sRlI9mXGO2qDLIo7CK3i6ftuZ2S3tRwXTiaDf8VL5/j/glVCbw6o3TfPF
         kZUkIzv2r83g8+5ZWRf+LuBKpmnuW3LupTDq9ULWfQPiY9+gGraO7gY+KDR0EmOmQB4+
         Rf+mGUxi9nNGTIVqRR22qm/TiE4x3jOZmTI8ZHno+cTGlx5LRFDi3vayvGmljFs8/Irm
         oIgRrFvNANmzd56rEE28p38zQIb4KHqJKyS+jr0BzEV5uY88CXkrht5jkPPL0bGc4CG6
         iCoRTNjEAJBumvU+FmADOSCwGP1ULpPt75TX2U5NcSZEwqx7ZRsconY5tFEgEJnNFoJg
         YVQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MFW5FY2LCJZuIENyeb2MzVx+dB0nhxR/r2Dsd+cUYaE=;
        b=mkwwi53dIBn+p8//kEibec1mCIzASSNvcU2gKVzTypsD2zCnCm/xd6wgG3+BZT6DQo
         Zx8QtKXl8tShoBS6HAl4diQgBwplCocBu9hlm4ktPWlGaz6eyYMGQ6RTRnlufEVvQbk3
         wd8C+1+ucR9rgqd3s1ecEqTn2FYZcUQUNpFrRuprbLR+U729czyfRf6Xvo8iJNAtdSkA
         C8+IBrnRHsa/0Vwrrwn8YL4XmdSmcrC+ua0yXyuVKeNpf+21slqghbaLs2poiex+ECEo
         pvZ8E6vLa9bIORhwmPk60QNSag1EYooOzSZkMxxXFd2QM1n7OKJajvsOVuSx0ac8TZCV
         95oQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KCozItYQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFW5FY2LCJZuIENyeb2MzVx+dB0nhxR/r2Dsd+cUYaE=;
        b=XrYUd7ExJ3BQRgzutvUUyOyvRn1FLCa3+rs1sWSdPHrb8ZzvSh8qI+REQcb5EDTK7s
         kPn+Wkk7MvnHAIcpgrDL/pCgf/97Vfae8B9Qb9L4ZpQYCIpjHS+oiAfLtYRLFA8R5tZW
         HSr6XNFffjdPKDimZX8ASriGjD+pu64DcbjFdDL0eM3bY2ejctE5CpOjGlG3KWBHzEJ4
         TjKWAUCAAZCfuSEZZVCgWLej1xXQNDZhQ+E5Vdcl06ACaPjicJYCelzrxp/vUpNHppgF
         WkdxY6ChgARjuw7dBCkQFQzGVYtJPGfjUoDENASUgD0Xpd9RU5KZPuzkq9Kjq3PA4Y46
         XaFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFW5FY2LCJZuIENyeb2MzVx+dB0nhxR/r2Dsd+cUYaE=;
        b=suR7PVd9pgFFfw9kXsO3FW4Wg8GAik4QzCqgfBsdm5Bt4r/Twwwb8trUk5f8D633yW
         gZdVN9GyB7cPeaVQCgcJs+jQS0En60980/8xOUDx/OP1QwfNBA78qjky/aRImr/UOr/O
         2biLAm1die/zDASrLCcG1PB5TAkYg8Tj+GZTAWRGa2xbjmUPRWazlHxqNjLkVEwq2/Tl
         mz2zkNqsDLpres/iY6sYoxJ9vhRhC/RkZLP33/QjFQk3UrQ2Pr4iEGRmISq2QInQMcJK
         1mwApQj+JPaLO3ksFU0JoDPjS7cPYjhjTby7V3ETSXfSbs9FASL6wg1B51WWgQmZzkQt
         /SfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533xXdzwLpJ/B2R7jxEHHSW/khpIQuL/zJX709uFQ7oa5R827RaC
	56+lYYmYdGB7Nixik2VPHmo=
X-Google-Smtp-Source: ABdhPJz0/ckSQ6u7DFW+G9bJ3PuV0TYH16jZ4f4UztKrEX8QhbsLSr6N/YZ0R7utmMXBli6wSsJ0uQ==
X-Received: by 2002:a02:a419:: with SMTP id c25mr1103013jal.91.1606956293378;
        Wed, 02 Dec 2020 16:44:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:17ca:: with SMTP id z10ls954494ilu.2.gmail; Wed, 02
 Dec 2020 16:44:53 -0800 (PST)
X-Received: by 2002:a92:cace:: with SMTP id m14mr817085ilq.269.1606956292914;
        Wed, 02 Dec 2020 16:44:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606956292; cv=none;
        d=google.com; s=arc-20160816;
        b=1F7R259hREqm1MDaNFdhf3qBnpquh36BaiRwUy/XL3JnQaZaO1p9bElH1wK2UuuX4R
         b93NjB77ssN6WWRYlDjpwKUBKXzDzljo/4HBAtHhzsjhZcBtxm5coSH7vB8tNX501BrX
         0saXXYqQ80CZDBNLEgj2JqXN4FwodtGx/Xoxh0qL91gVfmoGZS8lZTxE+gwTfYl3rGz3
         /fCM4gXt/tJsaY1smx7IcWKaEKNYzjYhq4Y2aUtum6MavGQwgFlQqWR/II4JTN5udNHt
         CCo0K0G55B+RnGISwTd8qTUJrmGYF3nP7zOGqFb/bM9hCK09VMxHLmqV9C6msd9aLuN1
         fUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=dc/B94hjAeeyKCOv3YRX+BzkhQc/9V1asn3WsTw2Emg=;
        b=chPVNzLpY5qQrMhN7TVg4OQHYeJz9z5gI44LS35iPVUwhuCCFm26lxN5cHGk9qY6mE
         lNbIBOEuenRTANxvLPf80+vtiMqmSAUhkqT/UMkrAXAuse3CGcItOtfE5W2UYuFB+vzn
         3EsaVXKyhW1JjSHIEnFg02x6frmPTJ5cM5X0UEm0BYIAtaYTRh1b9RgrhR5G+0tJf24j
         8lgXwS02RQ0hxQdW0Kvrkoo0KE2hEF9yitMTfyXpP9hRZczueSDOaV+KxKXrDms4wEg3
         pfyTuLwo/Rh21YUIiZ8JuxTZgC1smmyS+7peLJEQQaZljaGbbZEfuYQ6/YcHOxTstOUM
         bWSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=KCozItYQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id a2si25556ild.4.2020.12.02.16.44.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Dec 2020 16:44:52 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id iq13so137254pjb.3
        for <clang-built-linux@googlegroups.com>; Wed, 02 Dec 2020 16:44:52 -0800 (PST)
X-Received: by 2002:a17:90a:2941:: with SMTP id x1mr536181pjf.25.1606956292378;
        Wed, 02 Dec 2020 16:44:52 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v17sm182577pga.58.2020.12.02.16.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 16:44:50 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nathan Chancellor <natechancellor@gmail.com>,
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
Subject: [PATCH v2 5/7] ubsan: Enable for all*config builds
Date: Wed,  2 Dec 2020 16:44:35 -0800
Message-Id: <20201203004437.389959-6-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201203004437.389959-1-keescook@chromium.org>
References: <20201203004437.389959-1-keescook@chromium.org>
MIME-Version: 1.0
X-Patch-Hashes: v=1; h=sha256; g=b538973a44c54262367b4d33deb73da5b9328033; i=y2ZB2kMMmteaaxHC5mHSUdhJgsBf0nGKs7RacrLCqlE=; m=zUsL7RmnkOj+b6Khcg8fr3fiXPqryJ08VhnTKbEU1Mg=; p=adBx699hUBCCxPOKJsyVzds6QQ4qK9em/JNMtma7uYk=
X-Patch-Sig: m=pgp; i=keescook@chromium.org; s=0x0x8972F4DFDC6DC026; b=iQIzBAABCgAdFiEEpcP2jyKd1g9yPm4TiXL039xtwCYFAl/INPQACgkQiXL039xtwCbckw/+MHF DMemlYPqFYSNUkcUBfZkp72BYFal/uMFeRTNr+JH7SmQ4qADnIuKPhg/IkuA1CrBhfLoCIVZz0wJp 9uXYIeY73Y9goLfi/uQycbAv2+6n0Ev1ZnEKbRWTXDmJ1PBJdM+SIxx6LgRh+6pwNhF9w+0l4GCuD lU10CJhAwxFaCaA92ijuU25oCLheb+3gCqKK4N0u6diUnxDr61oGnupq/ErwQs0jI5JcoP8tM6T2Y BDRqMr7ZcM5nf/BUTL44oFo0xTWzCfpRzae2Q/OwzWOrAD/ni6Vxtuh59XtxEtMhPXj/GqJTbfl+t DP1xgLbIOiWPC/SCWcg5KS4XEwVCTttkr5pfITzNMs2aqkq5ZvwrX3tHrKHuwZTnje9g1Sxqc8Klq ivVMtK/UrUIZNjMjgzuKIzDwomKSD1u+u2k9Lj+1hnMM+6IceZSDVufUKHMbDnQDZqpBzWGLd07Uv e9EHanX905neUm1uHstqg3R0vX+AP+7DfhYZPwLCTRR2fQoIZIlWvE31QwgZZaSML8wCUUhYAIb4n X2Y/CFvjoyQrNIGHgmOnX9DlUZyFwiljzrqGgUUQCSWv5r3M2tdqkqDtZv99lBPJo/p+Bq3aNUp1V SH9kNgtWPR7W5Gk/bdHcXz7b/lYxykHiAFMe+nZzOBSr4nn/jSKTTDQPJqE8e7Tc=
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=KCozItYQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1042
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

With UBSAN_OBJECT_SIZE disabled for GCC, only UBSAN_ALIGNMENT remained
a noisy UBSAN option. Disable it for COMPILE_TEST so the rest of UBSAN
can be used for full all*config builds or other large combinations.

Link: https://lore.kernel.org/lkml/CAHk-=wgXW=YLxGN0QVpp-1w5GDd2pf1W-FqY15poKzoVfik2qA@mail.gmail.com/
Signed-off-by: Kees Cook <keescook@chromium.org>
---
 lib/Kconfig.ubsan | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
index 6e8b67d4b0d9..fa78f0f3c1dc 100644
--- a/lib/Kconfig.ubsan
+++ b/lib/Kconfig.ubsan
@@ -130,7 +130,6 @@ config UBSAN_ENUM
 config UBSAN_SANITIZE_ALL
 	bool "Enable instrumentation for the entire kernel"
 	depends on ARCH_HAS_UBSAN_SANITIZE_ALL
-	depends on !COMPILE_TEST
 	default y
 	help
 	  This option activates instrumentation for the entire kernel.
@@ -142,7 +141,7 @@ config UBSAN_SANITIZE_ALL
 config UBSAN_ALIGNMENT
 	bool "Enable checks for pointers alignment"
 	default !HAVE_EFFICIENT_UNALIGNED_ACCESS
-	depends on !UBSAN_TRAP
+	depends on !UBSAN_TRAP && !COMPILE_TEST
 	depends on $(cc-option,-fsanitize=alignment)
 	help
 	  This option enables the check of unaligned memory accesses.
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201203004437.389959-6-keescook%40chromium.org.
