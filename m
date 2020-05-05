Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB4HAYX2QKGQEMC6CUYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 4926E1C578F
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 15:56:01 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id h3sf446625lja.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 06:56:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588686960; cv=pass;
        d=google.com; s=arc-20160816;
        b=N0/J4jZnAW7cX3+OwUo38om+S+oza9q6Ft9Zy075LLr6uT4nEvr5IXUQ4A2FwGYgrb
         SvW8FdtStk3LcN2z7boXIDSG0nCgtlGUKY5a6tgnRvKz+/znXl9QY+Wb/5HpPaCCHWm3
         TZLCUYc1l2DihwmTpDVzJWAMMKAUC54ehu4dJv8Q2YoAMS+vQtCnezM8KMfnMZgJoznC
         az0zjx11NktnXlbux4rEsUjimkC1RcPbZKXTUORwO7X23jcgJHYgwbHtpDZRQcN3PA3u
         n9ktQblISwM3V0kMgbDe+O+a5Vqn4XY3yC/5LopH7DT6mqdyuFxOlbXo7A8m3utGpCRs
         sHjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=eQ72a319qGBt/SNeA2tBubVVu7RIMOvrSWE+8uURlOM=;
        b=S87/BZK+O/6I5Yo6iMThL9JkCIxe6vVnjxo0xpqDBIM5JfSg+hrS6gwm/cm2OyYeYT
         4LKV1Du+2PFuIc3WtqM96OrJ2aYEOft2IilOiD3k6eHN6Mpy9+8nY4FzGjR7xegUXH9g
         Uspm4Pa5t7KZgd8nUnSPmUCfkshyRTDHz9pp8XPLx+2J1QePhOdUBU80Ctsw7l70L6Vm
         3VJLKa5x7dHbOF0TPYLbVwoccx1s5ZvRkgGXFPuuskWpuHgBBTyQ8NKyhbBTSWpj3UFJ
         VTuLt09MpyvQauv93k1zACsDiAl7VxEeWEmPgt20VGmUgadmc3AU+LrBcra5g5Anq0d0
         s71A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eQ72a319qGBt/SNeA2tBubVVu7RIMOvrSWE+8uURlOM=;
        b=I47BbJQ+2CDhfUTlr1LQcZ2b0xR53aiU8XuSkAP9me7DWQPdsjXjT+xCILi3NGWAiH
         Wg6W270ewGtSysLXmFFAH6uplzLUXbNFlXWGAgsNhUHUaCNuk5q51jWLSuIcEOKJU3bz
         Avsh8GniRwUzLDLw/pstrNFMlOQctsq3SYb2hb1cV0UXdU0FGUpOjeCphcZ1vVhzZ+EU
         7yH3abZPgGaK/TDupW2f3kbyz9DgUHy2+264gxnWYYlmCYr878hUKWotr9v1oHWpt3A0
         bR0mvSAWZOO37znKkjbg45AQcuPXXMT9Eb0HnF5CQp9i5fwZUFfV/4nMHE1IDYZ2XRGn
         rhEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eQ72a319qGBt/SNeA2tBubVVu7RIMOvrSWE+8uURlOM=;
        b=gIRo2PkQ4thmyEJcv1F3NFOpkzUbk4J3PhIF8mzZdl9soy+bjqsFRrPmuEnmT/bORs
         Me27kPr2ospCqTnZRxfr0nPl4SXypU1N2JXz8UOWSzJMOlOM62O5+kdzj3zQHtUfm3P3
         I4WK3oh4JEaT/14jn6EjXMKg8N9BYb/AnH9NOhZJ+qi3k/Uy3zZ7KkhI3Qm+8SfG2rAL
         0XoSqHk0CGoP/xWjy20wGrAFNWuiBHYCTStFF/5FRuye143FfdjBdA0SvMcoXGh4IyHq
         25yweze7iYUkRWr8T1r1GtShxQ/UmYXD0EmIdSoS+0vWbyMEh/p2uGjBS00g3s+hJvxH
         p7Rw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZnhNxl1Dps+2rOKOn/9adffEtvx4TTmDnjljZLyJA8AGsmRXvc
	2IjBofHt8xvi6lsfMKbTUX0=
X-Google-Smtp-Source: APiQypJomAK7mtJwcVvPd8XlI8i4W0yqPGPCVFwrgvkvIxv9jJMi9zzq3ledVqRTRWq2y8w8p5MugQ==
X-Received: by 2002:a05:6512:1044:: with SMTP id c4mr1859599lfb.7.1588686960686;
        Tue, 05 May 2020 06:56:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5456:: with SMTP id d22ls400257lfn.6.gmail; Tue, 05 May
 2020 06:56:00 -0700 (PDT)
X-Received: by 2002:ac2:50d8:: with SMTP id h24mr1856084lfm.63.1588686959560;
        Tue, 05 May 2020 06:55:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588686959; cv=none;
        d=google.com; s=arc-20160816;
        b=B0v1QJJwXbv+vmTmb/rWjS5uYe2kkb7PLOuOk7nru4FnT3vWinfsd/RE1h/plcpnSu
         TnjmeKnf7m/yoIPZTVD0QsM3U7/cRVabj6f6SwczV9Cs4XKGDKwtGC2j62+dUgfc19lw
         8/FKUFyh21tFM3YuIWcxys8x/5NTrCv9g9wv3rQOgJwV+uFdx7biuRjRWSh5Ft1A+93a
         TACgfMrkbCW7hOiyJgeCxSCts+PPu2UaPzuG+i0cw7Dicta0uPMRJA8jHcSGOkVuZflu
         5Wu+e476414uHIowuD+tSX3ev16wqpFWNKgqhyyDAZdXAaj3zH40gCVIjm1XzIvYMvtw
         3XNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=0Xj8KcCU4yrWj1s00JOCAad+Mnb6BhWel39F8q+EbUw=;
        b=K53DXlrXCoiXR+9p3kFCMNosmnyzpyS/4RTi+q+qngeRDCq0glSBjTlxiG+M52lppl
         XGz1XeZ7m+rh6/RWFbj2b9Qq2nG9SaNpWpQUKRmyh1Y6EpIfVicENjhYrXFzV+G6xqJ4
         /c6cdsycZa4M1zu7XhjsnnUB59AHzl0ONXudM8+C3PZiBm7ZkDSOy+Rr6/ysP4jE6RWh
         WKFh+izx8+78hW3lfJswymYAMtYTBA2mo0Ia0e/xZCeLANof7vDQS5t6sN2AfZLS4wgp
         7DJ1BfWWFACPUenDXGbHPafvAzylNsKO/st0NI8NOn5IOOl4Hkvxnv/82H2PEpxBNPNL
         d+6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id f1si145023lfm.1.2020.05.05.06.55.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 06:55:59 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1MAxPb-1jP4Hl36TZ-00BIW3; Tue, 05 May 2020 15:55:56 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Christian Brauner <christian.brauner@ubuntu.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] bitops: avoid clang shift-count-overflow warnings
Date: Tue,  5 May 2020 15:54:57 +0200
Message-Id: <20200505135513.65265-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:BiSQj1YLbY/CRWKicFaaFMBElVVvRY9U5E+P2ZVt/EQnQS7Iiz8
 5s17kUqWTn8PdXT8cr1iN7ynO0bvtGxc9R2tF19Z7ZcKg1HtUXsHwB75LIm2d6fGNJKaHOF
 Y9c/7XJQ7nvzhPkdl7XHpTsbgxlO267dmTtvSigxCbHiiuiay3zpEdmMi1Av2QbsIadoAlX
 DBV4/H6YDAcF4cdvJvi3w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:xJB1mQosZZc=:uTAUDwbFciv0vIToh8Se3v
 u66nD+WooNufSWVYPx6EP0Dv45Item0Y82oh57iB6ENOrVQDUM1efgqIG3nbYrG9GsNDRXylo
 ufQOqnJH36rTqYbhUB7r/8JAJaDxrr6j0AOY16mYQ/2Cn4WfFtRZsHfmSw7qU+YnTINVurqec
 G2JurhcjR2+DsN7JrrFcrwmo5/qhAAKcQAhLuXcJGs61b0ddEF6dUfMf/dirOZKtEY6lECheE
 RsIfztgIapkSvP+YOirMiytEXFpYIMwy385AgTALgyfiRCojACKrxU8SW10H0OAhgpstZGM8X
 DkmqMU9qvdlxQJfna4tV4Sy/7CNkRhP3Fl6U8uCoFDUKpNYrGZz9bmABS0XVpEmTpw3tEk22g
 BbORpLZ0VICrmi29qkTrZW7L/QUoAivPh6HVoISVb4iCOx9YYO6VZ+gxhiT+MrAMBjx80MToX
 qgdtEH5b6QUthnpdXdznxraGaDmgnrJwfcpiMP+RMpfsBvCbwUoH36RWNrPLZcMgTqloKV48t
 gkCTFbfB4eSATJPghVICy08UQhH3rp/HsQyR/nHEJ0YNVjPECgzuaHoO2/JTRGdPNIusFr2VS
 psar5BZRBbt/WwlE8CzNc6jiFX0anczwdblziFl1n0WDMrkh8oB3CiUqY74ityD0G1/J8lOKu
 LhtuPCd3puiOHQrdicXCRHxt5SLoBhJ3a0oGP8EWe8+4k557leFT2Zs0WogRpiFJCfqH0LCc9
 d1WczhTSThLBUYzRYCRpy2BTWtTe+iDNrjJfE0g2Up70ncAC3kOkEA4cT4HsUiLxctLuIfJMm
 fDf63ut2/+mk2uTnmMgR0RzgP+B7wdpgd74N8ePkSg2mdC/5FQ=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

Clang normally does not warn about certain issues in inline functions when
it only happens in an eliminated code path. However if something else
goes wrong, it does tend to complain about the definition of hweight_long()
on 32-bit targets:

include/linux/bitops.h:75:41: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
        return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
                                               ^~~~~~~~~~~~
include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
 define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))
                                                ^~~~~~~~~~~~~~~~~~~~
include/asm-generic/bitops/const_hweight.h:21:76: note: expanded from macro '__const_hweight64'
 define __const_hweight64(w) (__const_hweight32(w) + __const_hweight32((w) >> 32))
                                                                           ^  ~~
include/asm-generic/bitops/const_hweight.h:20:49: note: expanded from macro '__const_hweight32'
 define __const_hweight32(w) (__const_hweight16(w) + __const_hweight16((w) >> 16))
                                                ^
include/asm-generic/bitops/const_hweight.h:19:72: note: expanded from macro '__const_hweight16'
 define __const_hweight16(w) (__const_hweight8(w)  + __const_hweight8((w)  >> 8 ))
                                                                       ^
include/asm-generic/bitops/const_hweight.h:12:9: note: expanded from macro '__const_hweight8'
          (!!((w) & (1ULL << 2))) +     \

Adding an explicit cast to __u64 avoids that warning and makes it easier
to read other output.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 include/linux/bitops.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index 9acf654f0b19..99f2ac30b1d9 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -72,7 +72,7 @@ static inline int get_bitmask_order(unsigned int count)
 
 static __always_inline unsigned long hweight_long(unsigned long w)
 {
-	return sizeof(w) == 4 ? hweight32(w) : hweight64(w);
+	return sizeof(w) == 4 ? hweight32(w) : hweight64((__u64)w);
 }
 
 /**
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505135513.65265-1-arnd%40arndb.de.
