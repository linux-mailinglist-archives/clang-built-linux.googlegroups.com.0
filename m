Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBIPHQGEAMGQEXHGORIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id DE66A3D7FB7
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 22:59:14 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id b11-20020a92c84b0000b0290205c6edd752sf281019ilq.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 13:59:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627419554; cv=pass;
        d=google.com; s=arc-20160816;
        b=KktpP+j3CawFZDQYa6Ag8EZZr5FaKTQC/qHufdThYfTJKRXhc7WN8itaQ2/URY0L5l
         CNOCSbUKKZMXp5qsoDQZYC2c/cGATikE3/8K4ZHmmYPmFSUKX6a0NjZcwLyjtIvj2tkX
         lamrd0/WLXW/dtIqs+nEQ4pEHWVa4WTAvTinhLL9/8VB1y3YJiytKO+J021IHzaxih8R
         EowMhFeFwvhHOK+ahQfLKOn594jXuNSb/on7xj9qyYa1z+FDyWZaFpPAJLwYUoFdqV8/
         ZNRPSBPkkOTR5gFkIdemGj7vfW+ZIxkEaF4C615HAFVysBpMEko8hD6roip6ROQ5DAXC
         qAZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=YDyuD41kuj+0+3XXPAC9Rpik2GSAdSGhA7siPd8xG1A=;
        b=dVHsVmuY30vb2Zeu7Rylaa6aU22IHk4hDro+e60Kwilue1+9vX3GF9RRU/DfB8ldv0
         1VVlPwgiZTOqPoublC7h8c4fOeRhXXBzxxOZ6kGWYyzyAAIdA4s8eJMQGvO4iylbch4m
         BaP613DXFguV8r4mVuxrkePiFJYu0hXgKok8eVCVe3MhbdwI9K7L3jwWlPw2fA69nJSW
         FRBm411jzpBn0URI7gdx4oN/Q5OiuajwWyFwcw7zeiYUd8quqWzdXOq2g35FuHIimpoG
         a9Xz92GYLabIcY3OJ8xFhFf75SI4rFInp3kXm6oe8QRlBJ/RKONkTvcg8tSXMdU7h3yk
         Zwiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Nsz8DWlj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDyuD41kuj+0+3XXPAC9Rpik2GSAdSGhA7siPd8xG1A=;
        b=VgIT26MZPjL32Nrj4CqHMVUcuT7J3czg4rAywN9ki4RJBU1TtT1U9vQV120ch/XMVq
         qB1oNcBnaDXNJT9cEewj/YjarRUSJ5KnX1VR1K9vPc2gqYEtCzXQQ1FSustAij6L3CVb
         PoQbaBUCuCbrt3Q7o5IRp0KwdWgK7V2YHTZQ2LyAB47Y/YWrGjm7mzb3nMOsVPZzYAaD
         WN9nCKqqTerJQkoM0bFqvTiqwNlS/X/WPRsZEImjQklgkk55onaMIH8bWLM+P2Tp8/5r
         BmoC5c2MHMk3zJSwddqaVY6caZn6Mnoyr20OPpUPt1QGw2PA7aFV6W9uqnOP06BtcirC
         hUng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YDyuD41kuj+0+3XXPAC9Rpik2GSAdSGhA7siPd8xG1A=;
        b=fddSgQ1n+uCY9dONBSIIQ3CKd/FWGa3g7cxJSu/lbhfeOc0NRnvzT+9XDmMLMvgjzQ
         kTC0l6cbSnuw4Qr/AmtlKtwLwQBO7KyYni+xq1tZ/5z2cOosYapSUFOycR9+ZhxOeJeX
         yu3izng85DWtfoRNn+/DvnQeeBc5Ierx4vK/H16HXcspBtjmZT+5HVAeyPm5A0BzCYI1
         7YAvBQho9Q026vc/Phzw/QGyYTMXa7mY60rCu0EPBJqMj+NAOZEpGu6oDvi80zCucL8Y
         zSMsJR23lZacfVS/zcJhP3/5a4HwOl26jlRfRf1kgUyAOXTbxLkPbJcnR0VQVaIK9u/j
         9+XA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5303KtSJGHqRviA3quYBE29SFu1zh3dunHqh9oOSaaHpHdcs9q7r
	yx0aotiA1SmSII5UifQmgwk=
X-Google-Smtp-Source: ABdhPJwXSYPImi3DhroTkoc2QOwKPDsqAqnvi2gFobCm6ifvWvVswBSW8dIYYRWye2/KahW0aXlMlQ==
X-Received: by 2002:a5e:a908:: with SMTP id c8mr20523247iod.116.1627419553949;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:141:: with SMTP id y1ls27940jao.2.gmail; Tue, 27
 Jul 2021 13:59:13 -0700 (PDT)
X-Received: by 2002:a02:8206:: with SMTP id o6mr22843881jag.92.1627419553590;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627419553; cv=none;
        d=google.com; s=arc-20160816;
        b=G5TYXQG1iMXO29enWzQPBSAJAwN5JIfrF9hSwEqdhhmzg2fd3JJ0jAypiZ7oCxWY4l
         vv98HzAtKwIddFJq+MmA0RtoRrHsBLv0TwJp44qWc9ex7gVDZG8x++4c5m3BeAcIJob3
         fb7Hhc4C2frxj5vsa8uuJ2s7J7IjhJ17ws6YHyFzXhQiwiul1qyRevmiX4ASnPW0E0FU
         GeX7jXhS2zek8vw6INla3RzFYounR1ah8rfwZX49xQQcOdYb8Md1HxSU4jxnH855I+5t
         az7HXF2uTSJWhxSaDXnPZxbJAKubCxLigtsksxJJ89MjftZLjj8Nqf41P6DwzPHoWJN1
         awgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vRBStJlDhZm0d9eTtG5cRn3WlrdJwJNmuGhxV2K5EZo=;
        b=Zj+g8X1GqaFyUkYiMVKEWOf432O6tP8EycCfpm37JqIS4kpMaGCmeysEES/M9LuWyF
         pAbFHTPlPhSW7CPv00Hmf2iMSFoE3wibp6UJJBpYW/hHS+mBQ8UaZLhqbEyaOYbLV/vc
         RFKf7rfHTLE01bE8Jv8Jj5lBD1sGME1eb1IOZ3NN3SNvbZ/C5B1Smxj9aQ9KIl5nnl5r
         AxAedLTGcoIkx+GJKmYsIL4UGydxFn8eq2ULfG01DsuBoxKmuKydZGpGH7w8ccsXCtrA
         dHdMH4CztKQUwdnht6GyTjkeXeIfbLpNJKuJU+6CZRzr9Nn0zBzPQ5nlcmsuIjuniJI0
         OpYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Nsz8DWlj;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com. [2607:f8b0:4864:20::102b])
        by gmr-mx.google.com with ESMTPS id q12si362313iog.2.2021.07.27.13.59.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b as permitted sender) client-ip=2607:f8b0:4864:20::102b;
Received: by mail-pj1-x102b.google.com with SMTP id m1so1827903pjv.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
X-Received: by 2002:a63:67c5:: with SMTP id b188mr25442155pgc.333.1627419553101;
        Tue, 27 Jul 2021 13:59:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id f4sm5114945pgi.68.2021.07.27.13.59.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jul 2021 13:59:12 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: linux-hardening@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH 31/64] fortify: Explicitly disable Clang support
Date: Tue, 27 Jul 2021 13:58:22 -0700
Message-Id: <20210727205855.411487-32-keescook@chromium.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210727205855.411487-1-keescook@chromium.org>
References: <20210727205855.411487-1-keescook@chromium.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1434; h=from:subject; bh=OZRSNCCQRK4SI9xKythqbv7zK3vuXtwb3QhiwmK2e2s=; b=owEBbQKS/ZANAwAKAYly9N/cbcAmAcsmYgBhAHOHwCOrXdjKPaQWQTp+uW9oUvftBkVWr8r2JNok P/qAaYqJAjMEAAEKAB0WIQSlw/aPIp3WD3I+bhOJcvTf3G3AJgUCYQBzhwAKCRCJcvTf3G3AJoCzD/ 4rXCWl0wg4txaWiFFhdg/2zB4GZpYJQfc3gKG+4JFGMNSSyMqsjR7wvIcQ9gEw3+cnobZIiaO8b8Ts 4y0sNy+ntUvilrHAnRZtWZQVZ7Z0bphyaYuQgnGELUkyMmslVUhPTzSDaughNmfUsvkEFM+na0EDon 9JJonN1vAou+/HN62VbGE5PteJlTDw2ARwNaB/UDzOa8CrMfLABC2YCMWBQuW/UqXG+bpRn/qLi5tt MCnGh7OYAK68OrH12PTZeNI0ZH3K0pon9xoKCGRcbv4RNDpmHve1klM4hflJJRVdZs1aIaNJguaJTr 6HzvMH1IlLaBIYA4lMHcv39fbSr1Z24Y78ZwSdi26YFWkGiIV/xASK0JKJFtw2FqAGh322XFPKawrG jQORn0cKmpkW9asI32mQRS70BV/yIqqzFwVau7oE8B1pGVFNOb3v7tHQ1pe2FZlG3aDgzaXiZQvgvE BV8eE10/S2h2Ma/rMjBUEOjYcpqfCji2YQ9KXUQ9H8bATOOhL+MA0kKSq2drNbUrOiob2qLfmjcBrM 9FB51isfS+QH+Q88vYo6UjSXdNUljwv7UMKGBHm5ndrT3nefrnbGQCZFQt+GVMpwNv9zz9cx59pBu/ EGTrabicSmfTon6Nxko75RGn3EwP6RSQtf7jrirENHsTFm5z7IgfJKZI28iQ==
X-Developer-Key: i=keescook@chromium.org; a=openpgp; fpr=A5C3F68F229DD60F723E6E138972F4DFDC6DC026
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Nsz8DWlj;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102b
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
index 0ced7fd33e4d..8f0e675e70a4 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -191,6 +191,9 @@ config HARDENED_USERCOPY_PAGESPAN
 config FORTIFY_SOURCE
 	bool "Harden common str/mem functions against buffer overflows"
 	depends on ARCH_HAS_FORTIFY_SOURCE
+	# https://bugs.llvm.org/show_bug.cgi?id=50322
+	# https://bugs.llvm.org/show_bug.cgi?id=41459
+	depends on !CONFIG_CC_IS_CLANG
 	help
 	  Detect overflows of buffers in common string and memory functions
 	  where the compiler can determine and validate the buffer sizes.
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210727205855.411487-32-keescook%40chromium.org.
