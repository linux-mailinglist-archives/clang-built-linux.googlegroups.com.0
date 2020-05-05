Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBX7CYX2QKGQEQIOZD7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C041C57A9
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 15:59:59 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id cb22sf1278902ejb.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 06:59:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588687199; cv=pass;
        d=google.com; s=arc-20160816;
        b=HopC5lUti4ITsFC8dLjcnVGcxABZB5pwSLJHVx9oZKvz6JhhfHHfCVE6KOqy4nzq1G
         sGxcZ6Ugsz9iXsSrV7/+6LMbiflX09GtLv2/3w6ncjdWdTZknLVfpL2Xd96p4V5woBfV
         tGQZ8LkVBwObZw+FffLwno8A0oNuXxKjxGwhOLAWQq/8rZocqN/eyWK9AaM2Hf8MFl2n
         QP+xlIyddXigCJmJ6zhYsy8ATtTsYBcWk5odUrOKlvVTsnFawP2vyV63OxgFe1UhI5Ug
         D/muOC657g9mDlWbU3RF+wQSl2spl+cqz6FMPWFvazmWcOzwZfUcUWSlseHeG3+ejDY3
         fzUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=y3mon62nvxU83X17iqHqqUhjDclMg8ACtHILe+1RkXI=;
        b=mjVUU8AH+lXdgVxlk5wp1YjV/jBhY8OQke5EdBIDdc4vxZ3UABgBDc9mvw+4mEt5K0
         4A6eR5NNrJSxctTQxIrrjB6cELwc/YMgFeku/kovRO09HZlug5pdbGafT2hhzTPSlZM7
         nd3vIVQA0GV1uMloYXZjNmLdIc/OmbZc4rm+y9eE0rZXJaw9Tb7WNhR2KpS1EGNAfTX+
         Tp0scZZ2ssSH07+JWC0eC+aWwZfE4zbG2Sw5tk34uFxAPcg3ombE83o2We1HicCGDa0X
         96iVzMo1HcvDMUfc0DwpRBDRfD8lkuqvEDkmQyMUwBvVVt8/QTaTTKumQoWxYmTWcSw7
         zFYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y3mon62nvxU83X17iqHqqUhjDclMg8ACtHILe+1RkXI=;
        b=M5xXhB8WWmYdekMo/JqRLHdeG7jRQWZG5vgjMD05YWngfqEQ1ShwfH+6obsPju9F8i
         7MB5Bt0WW+kg1fnohIAxRSR4kM7xrGG3EkaCJimPAJpI21RtGcbrlHSazT/znpqjSFY7
         z3bidgQ3ejXkL1ifgSgue5vXauzUecGTNv1jPLDlsQGhmpNB8mSXsgOBnq7udSYgRCos
         ZIxpkzVrcY64TSohYqv7V+YzegEnyvgs1UZ7xTEYGPOwDmzjxdj1l73mF6C8HCmm3eJk
         ButGx74yR+mbcgo91K3GsXt6BBieLNDZdzYpDQYeJ7+cmI2ITzAs0VCPdw66i+7NNq09
         T3xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y3mon62nvxU83X17iqHqqUhjDclMg8ACtHILe+1RkXI=;
        b=JAEPajWDsLxciFgxPM1b2l8wkyDGMEUfPEZzPU/RrP1sHK21uKYtbnFoqcQnozjnCg
         NGMJ8UELX7/28gUzZi2Ptb1ylVB18rBgiZaP3CYYTfOsN1iFlnzeMCi3AsWxmE1Tw0zA
         puekRKy41D9PlvMXoz+K5ieUMe3Vefhfn9CNJ4r7Zk4qkQcBLaSwBeBQMS960JyWaGCO
         8yEy8YCGg0ULjGnLlj73FcwlVk3kcH3wqy+1f1rc1SrI4kozjXwQRjV7u3V9Uo4sK61X
         7ywQY6xo2BO5i6RPyXVIYHr1DgVl8oTpeh21LcZQ/iWBmzWGWOGKpx4X/OgXa2OyHZS/
         sH/A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaX1RPPX9pQKnoLQvV9PBxK7P4XE0aQvn7z9B5ep3uCFX6HqQf4
	PZFfmceEPuTuQ1F3jz8P4LA=
X-Google-Smtp-Source: APiQypLaX32WM/o6CWx7L6HT/CJG77o+mAyhfgtnSSrnqhK+4MujHKgDZx8bXg+ls9uqo0RK/XuYLg==
X-Received: by 2002:a17:906:1502:: with SMTP id b2mr2747371ejd.359.1588687199620;
        Tue, 05 May 2020 06:59:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6b89:: with SMTP id l9ls1432934ejr.6.gmail; Tue, 05
 May 2020 06:59:59 -0700 (PDT)
X-Received: by 2002:a1c:678a:: with SMTP id b132mr3585992wmc.107.1588687199150;
        Tue, 05 May 2020 06:59:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588687199; cv=none;
        d=google.com; s=arc-20160816;
        b=wwNp/Lgc2a0n6EOIANifW2YxeHq8PaaTRQN19z04nCTJaXvCbVR6GGem85dGJwrubP
         2gI3lA8tqXjV+9RNZ6zRYy5U/RaEVTaKSq9dBJlke50+BJHwiN4/IxMjCA96xnN+hBwQ
         NStQPo5Vjj2DgXzKC8utXnz399yFdkin7RpEMizBrdto7xT4UrHjFnxmC1YhnK1PeOXw
         tXnfWtuOQ556QHO47h+djCW8C/yTjKxFs25buZ0Sqzzy3yPDXsRZFE01ieOB5K7jaDDM
         tfpRKVBN2pwAYptkt9RS8TvnN2Jn2i3znXKYBpvWRX/GQOb4vwTYnKJWhmHsUupZvfhU
         ob+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=lmZJvtmMIKnaGl2P5thNG0gnDaPpcPK3w+f6AFWnjB0=;
        b=XQ3dN0J5uroA1XTyeJNjl1epL1UK3wkK/fl/dUwgFj/UZ1htBuh1XvGU2dWPI+vUjB
         YFaPeilPOISddHNSjjTjVSUlfzs0C8VBYYMN8y3iEpMNrTYht7VWLbXsnypSExIXsZTp
         PGEbuyHu9lR31FMq1WRedV/HTSbPGh0UzJTjSApTRXA/TLocFELQDvG1hKGuP2rgwX/W
         GyTj7TaY/vmH06igIphnL0NKcPXZACwhhByD0k4O0b5u9NpOyaVdFrKXDioPhQJ4Yiz3
         AOnrLRp+57/5BIu8yIHWXR711/EnJzRBZ1OocAgiFAOFSMwbeH2zeJxaadPygeM6Sv+v
         nY3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.13])
        by gmr-mx.google.com with ESMTPS id u16si171199wmd.2.2020.05.05.06.59.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 06:59:59 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.13 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.13;
Received: from localhost.localdomain ([149.172.19.189]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mgf4k-1ivnwQ1PHY-00h8U6; Tue, 05 May 2020 15:59:58 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>
Cc: Arnd Bergmann <arnd@arndb.de>,
	"Jason A . Donenfeld" <Jason@zx2c4.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: [PATCH] crypto: curve25519-hacl64 - Disable fortify-source for clang-10
Date: Tue,  5 May 2020 15:59:34 +0200
Message-Id: <20200505135947.216022-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:lga6gFSMOtoE9mutrLnQJE7st0bQNAzIeIYfftcfMNCL7iZsqJQ
 JviJeYnETa8FS6wxzULcnVU5pwk6XzwEeQNgc1N9Zegd0vSPT8udDcc/dLNdT+kFJKuKRhM
 pCcuCgkqdQkZFnO25/DxLaQCMQ9xi7obGLLAOWZgLjMS9hGQdNJ+zq/WfLkzEqkfVOICGQT
 dOi7yOzxKWdNBMS3D/ruA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lziD+9ryinA=:tNSwIO9eiImUWcWzM7o7Yw
 /IXnoW8Wn+JMx/zGIvnc/9jMRhHbe0jJvaWE3XWRWvQtv640zle7dGxD3ITwoBIKvW8BglR/+
 X6n8DodtwVEVn50jJLaLfZSLxYycqL20C2qB2AQxsI7F9V2yeNz1H1v2Q/9RJXUq+8KH1dEko
 GuIrjHzNHIq4QKluBgnGKugirOutwiQttifk76ghCblvVoXxNGQw81DJ/WUvQJLo6XxXo0sIR
 6VF4O/d5ptPzv8X9kEYKwH5N6uLU5lxy1a4sNEVR2gHUp0CE0tZAH/hl+KGOVcV0M1XptQeDa
 LP9PsmsHPf4GLCZcdvq4uuEP9fifieYr885wEuGI6oxz/ahfDHiiiRKTkS3Yls22ToNXvUU5L
 +3ulrQra3lWiD7+TMQQvBk+EsfGWUHm2Eofm1W1UfmN8Mbr+k7QU729dOwRikSeMMFHohhBgs
 LVoKGzng6dhFRgv12dCPWqeI6+WqqAr+G0r09Wq0g1chqjpKSRWFvHWemnqxGcgP1NGR7fmIs
 F29a/PH3VNORl+cIdUV1dwJCNfT8OzlhtcjEy1NDmZ/QxWysfw/pwXbwhTEGQK8yXEh21DrGM
 FOxC3ng9GNHpNbCnD0hhVedW36jqeZlEQw4O/0Q737f8slLpdvm5YoUGdWdmEAb421gfGCvS9
 HD3530hLbMvGA7rDUtaZQD6A8SvsyQf9opZ3Vf1l9WbIJdiwHHDwV+DxnbUhRESVc29pJfvLM
 sPUHiRo21hMwdp89LUGuxi2WBvbVJckmIpTZuyYpTD5oMvwNc0nZto4P1b5V+hFrnwYzIqq/V
 YbKjFtohfywfJwXSOcPghR1tlLnCszKHERi7dzhkCX0JeTCnMY=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.13 is neither permitted nor denied by best guess
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

clang-10 produces a warning about excessive stack usage, as well
as rather unoptimized object code when CONFIG_FORTIFY_SOURCE is
set:

lib/crypto/curve25519-hacl64.c:759:6: error: stack frame size of 2400 bytes in function 'curve25519_generic' [-Werror,-Wframe-larger-than=]

Jason Donenfeld managed to track this down to the usage of
CONFIG_FORTIFY_SOURCE, and I found a minimal test case that illustrates
this happening on clang-10 but not clang-9 or clang-11.

To work around this, turn off fortification in this file.

Link: https://bugs.llvm.org/show_bug.cgi?id=45802
Cc: Jason A. Donenfeld <Jason@zx2c4.com>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 lib/crypto/curve25519-hacl64.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/lib/crypto/curve25519-hacl64.c b/lib/crypto/curve25519-hacl64.c
index c7de61829a66..87adeb4f9276 100644
--- a/lib/crypto/curve25519-hacl64.c
+++ b/lib/crypto/curve25519-hacl64.c
@@ -10,6 +10,10 @@
  * integer types.
  */
 
+#if (CONFIG_CLANG_VERSION >= 100000) && (CONFIG_CLANG_VERSION < 110000)
+#define __NO_FORTIFY /* https://bugs.llvm.org/show_bug.cgi?id=45802 */
+#endif
+
 #include <asm/unaligned.h>
 #include <crypto/curve25519.h>
 #include <linux/string.h>
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505135947.216022-1-arnd%40arndb.de.
