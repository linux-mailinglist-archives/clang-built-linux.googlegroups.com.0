Return-Path: <clang-built-linux+bncBDS5JPEL3IIRBMGG6P6QKGQENWLIPLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB252C2319
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 11:40:48 +0100 (CET)
Received: by mail-ed1-x53a.google.com with SMTP id i1sf1718924edt.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Nov 2020 02:40:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606214448; cv=pass;
        d=google.com; s=arc-20160816;
        b=D3MKDG488tcdfvdUb3dbYUY+B8l1ewbQM+YV5mRE4L3/YnPkLNUSqlI26Onj/JH70f
         tOjNgjW4yMUHt7+Nlzfm29jGQCpHXFh8yelq+1oekIMQN7vQoK9HadCoOutxjSfzE3Bf
         LTpq9wOLooax9PtWCNne7J6l0yOvPW6P9aal9HZiJvEvKVS1/hwjs2lW5FkqIqF2ZN0N
         dfdqUscv0jXsOrtee94BDp8Ul8ipEXogJcdkvzIfF6B76N52fK8LUVZ1xGdFHnpSqgFW
         1owgMsMXpJ2La9J7JhGCSzZPbg1YUzQq3KZehndCB+VnRhZiQGXWN1WwD9xNpg8RX4so
         zrTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=Qbps42Q5DwFCACoSrJR41JqxS8LAdZ96wujAr4/FCM0=;
        b=IME5hT5dCw1G1xGDPp1r6yWt+SnCP34Zn1w0ZVhVEuP18lNojWa4PxgKZLACsVBlfB
         okH+gmuQug0CMIWHMrMX6LnNlD0shMRbWUwR3XHE9BpywIsIPcJAbBrW3Ylscc/mMLNS
         /enpuywjbfYwnzKWdvwWKXwRhYhw00gppHR3UhHmfVuTZPiQND9Hr7/zwirvG6ev29dK
         lFIm47IblNMZ9vYzRrkJ/Wfolzp1oOu8OTbQHiLZT8MNBo3E68aYW8CHFEe5ELmcFCTc
         BlNN4z89xm5UvUq6qQavYrfoCBk7cBZIh6xOYdq4v9KTSTBtmZ3zvbwUnhIrFAgXzlXr
         GWuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hbkiGZR9;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qbps42Q5DwFCACoSrJR41JqxS8LAdZ96wujAr4/FCM0=;
        b=VuA0EwAlFcuRDUl8PgNGeFr6yOJ6kpjJ0bFF/3wWuTlvWEnuwitQWi3y0Kz1n4K6Mx
         1zA4HbTjsVacsILb+HFdhqdBT6uJZ1EcvaWGrv65hnVfHwzSy3iGefw9tP0hzqW6rvbc
         Fm7oDDlpmmOGR5gykzWf5EU23xusC74q9XZuSq/KX4tSWAUA3sWTSD9aetnhuXa6Hf9O
         BzWNdvrmCYbpZCHV+imLqdTF7be/1XEcO7xLAUK1Fq8vUNRhAYHQTbQAgTZbNYp+F92w
         iWAanwNddLFpTUMx3kYMYo2Ni4N3WBpS+8oplY1ERitKKDU7QU7HX6+tULuS4icnFw7H
         /iKQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qbps42Q5DwFCACoSrJR41JqxS8LAdZ96wujAr4/FCM0=;
        b=t+COqp7cTUTEvmt1cRA0B7S3+aSZINlmo0keKhNVKbVq0okO+g/rJlodiMG5mPDnvR
         6ffw2WF/lB2IL0DqwQ71ptCSkeQZEOSiVdqXLHhex1B2eO5Ppeugn/01vg921OpI6bWm
         3H4TzNPgIGpd4gjRVqUFvRORrkxymnd18ih9IpPKXoYOkjBJlCFGlq609iaOpibpr0x4
         2MG/gYcmVxRAzCdHkrlSZNjd88ELD9ptl0c04S52kkI/qzcOafRa63bAFHbYqhrFhpoC
         WQQgEm7BmGwIiPs3y+3//lH0jNuH8xvMdyT3fTvDA7Cg7F3ml3OdrNnk2mcLWfI0QjoZ
         mquw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Qbps42Q5DwFCACoSrJR41JqxS8LAdZ96wujAr4/FCM0=;
        b=j41WcCBBysuWPw93+DdXFK3W6N+aV0wIH0PyWnSXeOhU5xME9J+uTQz2i9U8x4ZvsR
         f/8lmIzqcbMsyGMdPRso0hKa1BPuK4Lt3QQVwt9NMCfo7eDOtQIWW8aa7hSaTmPWcgyr
         MT4sW0XivC5Js3LSMNlQ1Zb29hLL4DPbd3920u+JZ0q14tCO5vs72OUqx5tX9nbjljx3
         JJ0Ru4IFKfjU1CsbT71QDG6R0qW+iwiBOwkbfSKF1MJkdxgJTJstDHDjUL11WCgk9Ns2
         pPtgcHT1AASxyBjdirZbEwlorOEJ2vdQs0+AaHY91lzsCvcZ8k5FJRO4J/m6nt5uiS/k
         iicg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rC0EJZR3I2SdRWdWqxZXmY9pbB5SMSdZ06+QVFPgCSbnPZvaX
	EPPxSFNjiELVm2RnDEu23mU=
X-Google-Smtp-Source: ABdhPJwZ9aV65goUEEW2618CLHXa7JSZ6DdgddD71Q3c9Gmqf1Fg3sVdu2GemrJJlbQejkfE1eqeUw==
X-Received: by 2002:a05:6402:2059:: with SMTP id bc25mr3411674edb.13.1606214448438;
        Tue, 24 Nov 2020 02:40:48 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:931c:: with SMTP id m28ls967403eda.2.gmail; Tue, 24 Nov
 2020 02:40:47 -0800 (PST)
X-Received: by 2002:a50:a845:: with SMTP id j63mr3496095edc.32.1606214447395;
        Tue, 24 Nov 2020 02:40:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606214447; cv=none;
        d=google.com; s=arc-20160816;
        b=wondJKtOK/qWDCB6s0rph+U7b1fb/d6IDRIIXcylt3lZXXTmK3vhztWTkY0rfJXFME
         KqRW/rUOEgFzLPF8PT2BJVMnERlxF+dhfuruYDnpZJ3FCK92vM2qhbrP4oCkB4hLSihy
         +D7WBoORxGp4ncxW9LBrWHVzuusywc0Onp2AAfTLwheQDNmI1w8NLULvJaHGhPvS1tLY
         vgiN6w2ENNs5eUsdvRqK78L/4ovm9tdZNj2adc1PlGCxQEtTh/Ga+5btSs28CW60HTUC
         bJ7HqvsCnffHHLhYvsieZJn9GG2uK/mtkSGcMdiKSHEvkNaHLRrark6T5xwu/hUiYouX
         unFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=npqzxLRCrGkHUhaQyNRoZgZ1pTCF4pQdXZS5ZUJCVmk=;
        b=Z2qeMFYPF+TvrlyRvKUvLvAWcVkqIaRM/l5IWcQCgJdtNtXD+uNdJAulOnNnq+1oLL
         F0H3QupxeTJLoNrpvNeFfOfbVPbbYlzXz4YZAxTWOLOtjIR46DO7S9UC2PFA6lfSnSWP
         1lQ0bawE9S2jjlb0imonm8vOmVfPToJM5/QFGTmB5rOrNOLLPI5BWDg797D5wqJftZQw
         J1KDHGWXNU290akSIqYh5Oi1Y9wGLVJrVhZc1J+ep5sTuMhxw+wRVLsrmj2wXDHWpJKP
         u5/sTVTwhAVszbfinHGbDbWLPdm5gHGjnE8+D0THJTSP4pAFQtSVRWrBbZnHgJNgd3ct
         Xklw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hbkiGZR9;
       spf=pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h5si495937ejl.1.2020.11.24.02.40.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2020 02:40:47 -0800 (PST)
Received-SPF: pass (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id a65so2352456wme.1
        for <clang-built-linux@googlegroups.com>; Tue, 24 Nov 2020 02:40:47 -0800 (PST)
X-Received: by 2002:a7b:ca4c:: with SMTP id m12mr2759253wml.11.1606214447117;
        Tue, 24 Nov 2020 02:40:47 -0800 (PST)
Received: from felia.fritz.box ([2001:16b8:2daf:7e00:40d0:5d6f:88a2:6c4f])
        by smtp.gmail.com with ESMTPSA id w1sm4359378wmi.24.2020.11.24.02.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2020 02:40:46 -0800 (PST)
From: Lukas Bulwahn <lukas.bulwahn@gmail.com>
To: Jann Horn <jannh@google.com>,
	Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Tom Rix <trix@redhat.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: [PATCH] zlib: define get_unaligned16() only when used
Date: Tue, 24 Nov 2020 11:40:30 +0100
Message-Id: <20201124104030.903-1-lukas.bulwahn@gmail.com>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: lukas.bulwahn@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=hbkiGZR9;       spf=pass
 (google.com: domain of lukas.bulwahn@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=lukas.bulwahn@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Since commit acaab7335bd6 ("lib/zlib: remove outdated and incorrect
pre-increment optimization"), get_unaligned16() is only used when
!CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS.

Hence, make CC=clang W=1 warns:

  lib/zlib_inflate/inffast.c:20:1:
    warning: unused function 'get_unaligned16' [-Wunused-function]

Define get_unaligned16() only when it is actually used.

Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>
---
applies cleanly on current master and next-20201124

Jann, please ack.
Andrew, please pick this minor non-urgent clean-up patch.

 lib/zlib_inflate/inffast.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/lib/zlib_inflate/inffast.c b/lib/zlib_inflate/inffast.c
index ed1f3df27260..ca66d9008228 100644
--- a/lib/zlib_inflate/inffast.c
+++ b/lib/zlib_inflate/inffast.c
@@ -15,7 +15,8 @@ union uu {
 	unsigned char b[2];
 };
 
-/* Endian independed version */
+#ifndef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
+/* Endian independent version */
 static inline unsigned short
 get_unaligned16(const unsigned short *p)
 {
@@ -26,6 +27,7 @@ get_unaligned16(const unsigned short *p)
 	mm.b[1] = b[1];
 	return mm.us;
 }
+#endif
 
 /*
    Decode literal, length, and distance codes and write out the resulting
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201124104030.903-1-lukas.bulwahn%40gmail.com.
