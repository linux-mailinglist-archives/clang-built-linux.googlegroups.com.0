Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF53YPVAKGQEFFWBCJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 79CAC895C9
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:31:35 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id i6sf49667840wre.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 20:31:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565580695; cv=pass;
        d=google.com; s=arc-20160816;
        b=bSYyTnG/t+quAPrvKJ+l3i9L63uDcsHTv4CpHdiO3gsUeb3Zfplr/DY+1YNN0cK5EV
         b3d1tQ9LQPG4uslA0L++hfVABNRq2Njhhf0meECh6kSxyX7SOJcPj9B3sQbCjHg7CXPp
         SBbC/ezSoPAihcqLau/nSr4iJMXg3YfPp2cgBJBh11EuNxkLjfMwMhvvLbskxsxXxMpZ
         QV0wmMK24WUle8I8rqH0SmpJB3lt4cgMkNbKtdhVZnz+PUwHE4DSds/8Z1t4zZFYUawn
         lrZV6AeJUfcuQ1AdGOjwAdLRdL0VKynvtWMotvGVWYGw4gD3TEpjORwKbdchNdEs4M/D
         02Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=SlDVTsGJfImdltvlZbwUEM6Ne4yp4BiuKnHINZRqUNM=;
        b=YxjcIR4kchOymyxCGngXvFTROUC2gzbdWqL+L06Yft9hEhdpROS8Jl/npzvp2oMRmw
         FQj7zN2EaCBBXrAZe1ngJTIOaiXAtYHumCccaT7oubco/FqDrOcO0BpNRupAWIgRifHj
         czbWSkoMY2eGYVf7SHk27GLRLOHjMBgi5yOEcZTtyWTiqsdf1w2XQ4co9SLtz2TgrnqX
         4+moWgBbCNgW+y8PpJGEhSbTybaJxHuyDZ9I3ZHMJ4Krp55x7l8YgCPTBO75qWpNQ9qK
         /Q4fmTZgbX7kkONLwdxTgsO5z6Tt2gSi2w9P2uLdRePpuUrt/8bJXFD4t1aAe9LoVAaj
         AFSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lpamp3vw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SlDVTsGJfImdltvlZbwUEM6Ne4yp4BiuKnHINZRqUNM=;
        b=Prp22z/MRrHa9Qf/3OVWDnvk7NJQyfWYlJxX59ICOGXQq6meEaz2V3yRk/F17w80eA
         vMnfH7KzI+sdPv+gNkdhPxlLNmp489gnJWz7Y45O+54ghkF4XsJOoJBHcbT++gFNGb7C
         nEIzQ/kqdoX1bD6SwKUhGVfjHrW3I4OJ6LFRVjyO1BuyXioU7Ox+lHIKZ2CS4SPtomSr
         rSvvf/pHHji3ID9NS0IFYlOoxNCcAhyWdi8538CGJArfW79oA1LkH73HQ+LXp+N3OZeF
         W165tGcbx0yJP23V7d8gPfd86GelRnEr7v24Gk0J3rwKI3MAIXUtW1mtYUD3+/gKjkFz
         b9/Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SlDVTsGJfImdltvlZbwUEM6Ne4yp4BiuKnHINZRqUNM=;
        b=tmLG8Phb6f/VTnlNDFo0ewVBwOlTO3R35QpgE6KuWPcn9ztmg9AkfeiL5hzj7IqBQ6
         St/fseDtwgBP75JA/Rcvz0HKOMANPD26/S58+6PwSVVByfPZN2nR9Px+5uuv50fDTW6q
         q9F+B9jxigwLgwbVykKGTxrkBukzYIlpTXcLxpMp16g/mZ6sRfpwOZlEzs1s3wdK0Tws
         Ce6XhRwtAaKFj/nQLYehsSQ5x/VffDnfH9s61Xb0g4Tm3qZ6Qf/ZYVo1OBVNTRdwzHWT
         71LuHJ2gIV5PkC5A6H1KPh8VhSMWQLD1k5JIN7YQsl+8XeT30RGAil4JS0ReymVpYxe5
         FfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SlDVTsGJfImdltvlZbwUEM6Ne4yp4BiuKnHINZRqUNM=;
        b=Pk6aF1Ci8igao0RRLZ/Wnhot8rFqUYakaqFRTpQuOo8jkjAs5UCsnM0NrlXIL80vFC
         1/b6cPqZTYdFNSv2IHD9WUs7GZTdbPdAgabB2M9LmQSsfG0sCwYEjvQLraB0ezGIDHye
         bx8SPn2fCSF44M+L18UpayuFxIBS/O5qJ4Jr7Y8PAfWAs1DaDA1TStfMRtxFJKzVSlww
         NHiWmfn6+4WqCt0kPNZw+x5XfOJKnyo3E9nih7e1rFpwY5/bxbBUnFDvvPRSzMO+h1ci
         d//aX1BgVU5EQ+QEdHrJ95v/cECaqO2Ppi8LA+hVsqGeOIvTPdVldwlMxZX7I9yinPiY
         VQiQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVPoACGLbndEsBwLpkwHcoy/s8k0ET7JafNDc0Sob1nbOWlmyqV
	AX6Oy3pkJ4aouqCWDe7oy74=
X-Google-Smtp-Source: APXvYqz6P2ic2RY21CBOCyiGEYzpdRAHX6a0pzyvYCV39PZRvzGBajZ2UnblqhBsAAHFq4PCbjDelQ==
X-Received: by 2002:adf:e782:: with SMTP id n2mr10433078wrm.1.1565580695228;
        Sun, 11 Aug 2019 20:31:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a557:: with SMTP id o84ls4139393wme.3.gmail; Sun, 11 Aug
 2019 20:31:34 -0700 (PDT)
X-Received: by 2002:a05:600c:292:: with SMTP id 18mr24971154wmk.51.1565580694870;
        Sun, 11 Aug 2019 20:31:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565580694; cv=none;
        d=google.com; s=arc-20160816;
        b=P40PpToxSZPRuB0+SGHTl8n88w3DP2hbawp9O7L59P0rRl4ZmiNssshL/pYqOm0I+4
         tP+HHUhszbU6ip3+lp+esjLXow22rr9v4J/Pm6bSyG4JZOVDSA+jkeKMno0Ncp5p344X
         x/T5B2Rao9h4XdlSN11qIjcOn7vlEhhUGXOry4q9McO4fa1WIPgnDOsI+lCZmfzj4LWa
         cCnWR90gd/IaaGb7idh5SrZTMx+yl/nP/Wjc/FrC58aP3IFSQoVnBYa1zeIEDNbS5TZs
         Tcq/8ctXnaYSExapbFmK/Q9x1kBrFUKYlLQ8m0GjxKRkXUs66hfWUS/l0k3Ayc/17VkH
         hUzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pX+X19b0YkyFPAZFTnPH3TVfzRvutgNdCw+9iXgOsdU=;
        b=X/1lCLGF0EtvlXg65kdM/VkusF3K7PD755Lj1y7DPAOC3nhQ5k72RZs+PU9lgzUFSJ
         JFXPHgrSONOVFsXVBc/DISlt2LNh7Pz3YN9n5krFcmI6hbdI8/FQqPKF0Dakm6poi/tO
         afZbYYuzISuDNZDeBZvBRgxCvQuOWN1Ss2sKoEwkXhiR6PihmCUdQ6pRpZZPyiwxF6oi
         K56mcnOJRO776u2JxoILCXJwNyZW+yTcAGMOH9NZRoNSSQZ9dzYTFdMRKsiAAVtJDHvX
         PUPe0/PYyg8JYQC2oHXIGlTpcq+iHAqqzJdk6HX412nf99HX04YCVOZSC70iLLS7W+OY
         eZcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Lpamp3vw;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id q14si485319wmc.1.2019.08.11.20.31.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 20:31:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id p17so103304306wrf.11
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 20:31:34 -0700 (PDT)
X-Received: by 2002:adf:b613:: with SMTP id f19mr5713852wre.192.1565580694370;
        Sun, 11 Aug 2019 20:31:34 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f12sm117299330wrg.5.2019.08.11.20.31.33
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 20:31:33 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Vladimir Serbinenko <phcoder@gmail.com>,
	Jussi Kivilinna <jussi.kivilinna@iki.fi>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Date: Sun, 11 Aug 2019 20:31:18 -0700
Message-Id: <20190812033120.43013-4-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
In-Reply-To: <20190812033120.43013-1-natechancellor@gmail.com>
References: <20190812033120.43013-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Lpamp3vw;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

From: Vladimir Serbinenko <phcoder@gmail.com>

clang doesn't recognise =l / =h assembly operand specifiers but apparently
handles C version well.

lib/mpi/generic_mpih-mul1.c:37:24: error: invalid use of a cast in a
inline asm context requiring an l-value: remove the cast or build with
-fheinous-gnu-extensions
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
lib/mpi/longlong.h:652:20: note: expanded from macro 'umul_ppmm'
        : "=l" ((USItype)(w0)), \
                ~~~~~~~~~~^~~
lib/mpi/generic_mpih-mul1.c:37:3: error: invalid output constraint '=h'
in asm
                umul_ppmm(prod_high, prod_low, s1_ptr[j], s2_limb);
                ^
lib/mpi/longlong.h:653:7: note: expanded from macro 'umul_ppmm'
             "=h" ((USItype)(w1)) \
             ^
2 errors generated.

Fixes: 5ce3e312ec5c ("crypto: GnuPG based MPI lib - header files (part 2)")
Link: https://github.com/ClangBuiltLinux/linux/issues/605
Link: https://github.com/gpg/libgcrypt/commit/1ecbd0bca31d462719a2a6590c1d03244e76ef89
Signed-off-by: Vladimir Serbinenko <phcoder@gmail.com>
[jk: add changelog, rebase on libgcrypt repository, reformat changed
 line so it does not go over 80 characters]
Signed-off-by: Jussi Kivilinna <jussi.kivilinna@iki.fi>
[nc: Added build error and tags to commit message
     Added Vladimir's signoff with his permission
     Adjusted Jussi's comment to wrap at 73 characters
     Modified commit subject to mirror MIPS64 commit
     Removed space between defined and (__clang__)]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 lib/mpi/longlong.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index 3bb6260d8f42..8a1507fc94dd 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -639,7 +639,8 @@ do { \
 	**************  MIPS  *****************
 	***************************************/
 #if defined(__mips__) && W_TYPE_SIZE == 32
-#if (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
+#if defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
+					      __GNUC_MINOR__ >= 4)
 #define umul_ppmm(w1, w0, u, v)			\
 do {						\
 	UDItype __ll = (UDItype)(u) * (v);	\
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812033120.43013-4-natechancellor%40gmail.com.
