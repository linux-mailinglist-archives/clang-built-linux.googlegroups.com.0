Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBK732XUQKGQENN7PD4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id BA78C6FBE1
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 11:11:07 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id o184sf3499469lfa.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 02:11:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563786667; cv=pass;
        d=google.com; s=arc-20160816;
        b=NwstBH+8l7RtWzQWdaXR+wWBeC8Q20AR6ttq4pHc4TKpOnYnAhranSg6zn94WcXWrO
         MFcgwdMsMlS7MMMDBRpyeWzKrC48mB9eIKlExXRMxuymj5A3Q+od/ZhGGslxu7cqcndU
         FfjOoIfvPJRPu5kOJSlR6nZBQVmenYBfEKKKqQnARudkKN4TIgZ52cmvdkrF5BdrrC6d
         Ezlu0iiXc4wj4n0fplWgqhb/tIE2tWQemPRh6GOhCFZagfVxBXY/6k6AJSW/Ai0BH0fX
         LK/st8iZ1473BOVNMvD/1zrfTPSlsGB47CKPzEksQLUDPgMttr9w8ZdRzFuU8u7fVFQL
         f8ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=pN6brsIEmTh+BcyR6VdUWJRzFzMbZtvB6nS+oWTQTSo=;
        b=ppL6M1gydUkToOhKvb5qiSINFXJcsSEdbc4p8sAeQW+uHccd2HIVX77B7S5EqNJWQy
         8npsBFui0+NQWJIik3lMelgYyXqP4N1J4BOVziOBBKKpru86qtjqJLHmLhRBNHKXnC6f
         JkL8s1/b5wMvKNod2DOeHqJ98++vOhvonKEZHuFcZr5JrVtGLIf5E50cuWYs68ApQDnc
         jHUNZtg/FilsKZzacRdIjPrQY2wXN73NdYZel/eKYvc7PxC5OY0cKSUj1I/9gRO6zpkx
         OSlgddWMXw2eVxzWCYyzK4yosSrK0xSgi5d3alrv/896zCPMdLWxk0WR8BugAJ+dl1Y2
         wyVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pN6brsIEmTh+BcyR6VdUWJRzFzMbZtvB6nS+oWTQTSo=;
        b=dRjGxCd0qPeUUORHMY6rO8t3v6QGmhKTjfYWJm4eHhxMgR76UBoIpTp+5VWi6joym4
         mYtKYJzu4etd9vvzho14zq3CQ+PYc070wegjrY5WVPpAZmG3nR2VuIpxYLqfgLido9DG
         IFVtdB6Q/3tW4zOJER6CXEhiT0YlsIc4x8/sry73iTUMRJJcI8YBef8/KvqegFJBmn7h
         Fhzvhe1n5CjxB/JNf4Og/dbk1rLsEzJSYfTgLqU3Tzrq8zWOh/aA1Dl+w5wsmNOA/5W0
         nPPP77/NAXkPFFLSUWBdUO3bGcmwtxMRP5RJQUaLSTpT7XXn4cC2oTCqn8Js0HQ2Wq/r
         s+gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pN6brsIEmTh+BcyR6VdUWJRzFzMbZtvB6nS+oWTQTSo=;
        b=GGykS2c+ABpdXMwORplIG7uPADO5ROkJ1I6zXPfTyswYeRUnobsMigydhRsHWugMG4
         hx3nXPK/PdEV3wy4VtrzjxbYv5LZj2Vpwx9gv5IQvphS5A05gL/g3I6HhD4QjEXm9nMf
         Voi9Fp/mT5iRA9g3rmZi4MJwvWxoA/pU3bvkhFT3OKk02y5v/S2atGKg36g0SvoVDAOk
         iZCBA5KFA/7UN0MefhvfR/Ch48osz4KjJhTYWrqlTBbFm+t2dDbYD+lsD84bt3YuavlY
         pgIF0M6NMA4Ug/gFnGqSOC7KDYhG5p6Fq6xd3KUJji0hhV879X6ZaBo4gJGP0DzHRI5u
         k+GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUTfzDBjFYEBE5Fm9isYTwdHcZpUWjbCP+qAsEepObq3KS8gPVC
	h87Z2fQ4yXRFqdHEA5cYJPI=
X-Google-Smtp-Source: APXvYqyG3ETh/dDJTZHsRf5gBty1eEqvVo91H3OOaERQc1LyUsxffMpJlAUbTbJkJ6+glUgEsMu/3g==
X-Received: by 2002:a05:6512:51c:: with SMTP id o28mr32482563lfb.67.1563786667279;
        Mon, 22 Jul 2019 02:11:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:96d5:: with SMTP id d21ls4354708ljj.16.gmail; Mon, 22
 Jul 2019 02:11:06 -0700 (PDT)
X-Received: by 2002:a2e:9754:: with SMTP id f20mr35295229ljj.151.1563786666871;
        Mon, 22 Jul 2019 02:11:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563786666; cv=none;
        d=google.com; s=arc-20160816;
        b=qk1xS1J1R3sX8imMvGf/iNIUz7uqPNx9MLSLGPAFS4YLlMkf7QpIeVFdU6NwjGPsiI
         6PiC4HaD0pSmLIPAtd1q2TBjx8TNfFCz7tlphOKpn6Hkb3AwRNFal+F0aXaVV+mDvrrB
         2vtr/V64g61jbBMTf8Q4blwTg4QJW4H7DWGP8vsRl37bRUfEiA8JihUKzz01v8PRbi9o
         Z3NN1nJbS8MRqpJ/hZKXyyPwfV0bXSBP8w9WTFEN2+8HYSLeFPYRIwf27S3q+4RGB0HM
         HoH4/TE1Pl8oecVJVKcHQj9Qdo9YkSlm96Ucnxotzdp9sadDFWAm0ckS0MbYSZueOtw4
         +kmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=qTdNYd7RRzSN6g603TztgCetff+EJPbzsjh2FRpWidc=;
        b=BLdvyT8YhJYJTAtuaCLtBYyrQNicm/2C9/Tv0joskheKz4WxGv7t7ypnK2qSBun2ap
         eFxqB5iy1FXmOpz0msAXpvEB4x2qXdWJ+LGTcvGiN65iunZ8qGCasCOBvn/s4w5saJt2
         1dm8o8eTqK0M9GLSTW0BZApYaSw0NvzWWQsy+Sv+sYY8iYgwcJ63ahL3UA8BAjjiQMbO
         6WMO6t8U/xI8qRIF4TjgKiSm2r5MZeIPKzwOu7ep5uGf6jknT3NdEzOBIx1Hh2inRqRv
         n6pfna8GQe4J/qi48CgFDfLFwFQ2tZ67A34bex7H1muIHmumkjwSaa/TxhSsJJ785Iqo
         6zHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.187])
        by gmr-mx.google.com with ESMTPS id m84si1297380lje.1.2019.07.22.02.11.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 02:11:06 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.187 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.187;
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.129]) with ESMTPA (Nemesis) id
 1N3bb1-1iXnOP1GRX-010ghb; Mon, 22 Jul 2019 11:11:02 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>,
	akpm@linux-foundation.org
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Arnd Bergmann <arnd@arndb.de>,
	stable@vger.kernel.org,
	Sodagudi Prasad <psodagud@codeaurora.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Kees Cook <keescook@chromium.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"David S. Miller" <davem@davemloft.net>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] ubsan: build ubsan.c more conservatively
Date: Mon, 22 Jul 2019 11:10:18 +0200
Message-Id: <20190722091050.2188664-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:JRfD2+R8cl2MpZ0Zaxxg8tUpm69nNkWykZmnDl1qh32EVPdlKtE
 feSJZgESNtHDb2ndZGxg9yLvPE3xOaO/zQ6RIFEl59plmT0MYDgVWRxeD2ia6fgtqKP96pZ
 c3a9q9oTdIKkeVckRiZ85phK58GVGTCqUxQ19o6DYjM6emumoqVfTCEpJNZU8I9HbMLNK0j
 SG7WTRjuVhHqmFl1VMLLg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:iYdJrXJ7yi8=:+VQeBL+nIZ99R9qas4XCAf
 JVehlIWqUOXYHMbMds8Lk6aF1ARdIDjQRiz3IgnzlLpuyx6Lh8BwzXxwpVLRJkDISxElGyZqZ
 tCo4+uvUoJqrT7IezXOLCMDX+pYKj62Qu04HNg2bhhf+zcxE8ZbRBgWq6Qqu4k3e3vqxF5Tpg
 dJ0jcz4AUzqn3e4PpHGxqRnFfGyfmkXqMjbLF6pjGIWYjdd2L/hY04IM4gtlNdY881Q9ztYV0
 hvublVP6vIuStwuNKsid45s1GhqknIakTpgAl7ralnEoX7nIJFRCW3A8nmHpR4kpGb4vKORd7
 FddKLU5zEzib5E80VV5NvXSuZozdLxoATZ9lZajNj8RjrahzoKiX0/0n7N4fiEXNyECqTUkdn
 qLkHOsI6THRAhD3Ga8ksZQRfFkezZHHzpp31COWftnXj8AZLodKh7K5ZvQCWMlBVofclfhHiR
 ndHO12eg6A9ChqN/1xqhj2DiquLQOLPB9sVdAGYHSNYXVrUiINY2XRg7pLk52KMdtQn+MFa/o
 XU9vI7AfHQWK1MzqlFT1d41nVRvp7+5vAQ4KZcgqL952lCzbyiF/sdNcOJteN9NnCFVQ5DD/e
 83Mp+jdKnCj116HLHJak0Ed1tFSNlvJow5hw2Qu0Biyv3kLNIFQo7THz8c2OfzOzke92odu8Q
 eH2b37g4p1ih79+wLl3nNSVZtguQ371lSgzu8LMjnwra8iPTrs3mHzecal76nXpt0q8YkKqK8
 RHQHOpj8iiipJxOTicd3LWlcOsbIY90Wj4/GwQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.126.187 is neither permitted nor denied by best guess
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

objtool points out several conditions that it does not like, depending
on the combination with other configuration options and compiler
variants:

stack protector:
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0xbf: call to __stack_chk_fail() with UACCESS enabled
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0xbe: call to __stack_chk_fail() with UACCESS enabled

stackleak plugin:
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x4a: call to stackleak_track_stack() with UACCESS enabled
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x4a: call to stackleak_track_stack() with UACCESS enabled

kasan:
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch()+0x25: call to memcpy() with UACCESS enabled
lib/ubsan.o: warning: objtool: __ubsan_handle_type_mismatch_v1()+0x25: call to memcpy() with UACCESS enabled

The stackleak and kasan options just need to be disabled for this file
as we do for other files already. For the stack protector, we already
attempt to disable it, but this fails on clang because the check is
mixed with the gcc specific -fno-conserve-stack option, so we need to
test them separately.

Fixes: 42440c1f9911 ("lib/ubsan: add type mismatch handler for new GCC/Clang")
Link: https://lore.kernel.org/lkml/20190617123109.667090-1-arnd@arndb.de/t/
Cc: stable@vger.kernel.org
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/Makefile b/lib/Makefile
index 095601ce371d..320e3b632dd3 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -279,7 +279,8 @@ obj-$(CONFIG_UCS2_STRING) += ucs2_string.o
 obj-$(CONFIG_UBSAN) += ubsan.o
 
 UBSAN_SANITIZE_ubsan.o := n
-CFLAGS_ubsan.o := $(call cc-option, -fno-conserve-stack -fno-stack-protector)
+KASAN_SANITIZE_ubsan.o := n
+CFLAGS_ubsan.o := $(call cc-option, -fno-conserve-stack) $(call cc-option, -fno-stack-protector) $(DISABLE_STACKLEAK_PLUGIN)
 
 obj-$(CONFIG_SBITMAP) += sbitmap.o
 
-- 
2.20.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722091050.2188664-1-arnd%40arndb.de.
