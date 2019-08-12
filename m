Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGF3YPVAKGQECUUSPVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CD0895CC
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 05:31:36 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id r4sf50061101wrt.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 20:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565580696; cv=pass;
        d=google.com; s=arc-20160816;
        b=PzZeQuzsgnGiOIr7rhu6gniVGDLeaslT98tW5C4fYJKrsDV0aTFsLLC03gAb4HO+Fp
         6XStr5z/NvsUrFggYmPe0ZQAWHxpRO10dmt+BYPQKVVc09nr7/Psr8Czd4IDQshPJOC1
         XrMj7Ddd1RrSjRZXNdACwNLT/ozYslzfapJjwR/hU9e62SyjZjYhYdQ4u+f7C88A3Og1
         j+x3NC8xbFTahTapweEXTHl+RL7PO4WnE7ZsOMmXjijY5FDwBebNLIparl01fCAg+Qqn
         Mb0ssiTrgQz9xw2mgUgVHUZ4cVJPVelW20/3ANahKKC8FGJcI4Rzvk2XAq65XP8FCg55
         jmTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=SuPGwX808leIovYc7kY2ee/zFjpY8Ph41L504AOB/gc=;
        b=HncmTgVMMLQ6z7BNesFTQSS+LstW25gGLmPIjVYiPniR9n+SH1TvxtoY/H4zuLuF6e
         Ql+QJULgedCK5sgGr2TPP6qxhoimDItQAMmPqAC35RqV24kB7utF5jeOmYNKIpj9XPqD
         9e27ZEkLsIoApUyGov2U/Veey8Y45ZRvzzz09fITAk02ye0ciLxEDsMFaEtPEqVCRX+k
         WURClJpXngKfVdgv5I8QH1xgX0CTrqdIO4NrQVj8KM0iQEMqq9Q7fE8zVVJYkmJgEsaS
         2utIExOiWuxyJLUtXLIWAg7H6jwLgfoXpoA3u3eO/xVcYB+isSl8LHVoUWiP8LSgF3AO
         EuXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSssZDQZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SuPGwX808leIovYc7kY2ee/zFjpY8Ph41L504AOB/gc=;
        b=nNq7CQZI7VeOHP0PIHV+4h0Gq2UGcNIGEBGOMZithuXffMGgH/cpf2HDZdke0YnqCS
         UDRBAtuK6PTIBWJi2IFM/fNKhWzemKjhz9Nyj7QI8HY3lt7wc1m7N0vNFGYo8Vm+flU8
         Tl7wDwAjpOs6JObmYHq2qRywa+nM5DRHc+mfMLRuyMscayUBlz7zz4RUlSu+s9SjNlTe
         JqiUnwEh/Gfr3VySaeK3xodHjcjWC2kjw+jariMcAS3BxTRsBt1+Iol9X95c7Pujrs51
         v1uzeyeApe7CiUPo0OQiS8HPNkj8CUWWYS33aS8B4anQ34tVHqKUUokjIe6qIFHXeWr3
         kDug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SuPGwX808leIovYc7kY2ee/zFjpY8Ph41L504AOB/gc=;
        b=aLzZRAtu07Av/0wNGscUkGM+7OoA9LLaZxVw4FaIYw37SNc6kZaUiIcL2BOpzpgYaK
         DZ1l58Jt2Rjz6FhMSPEuba5OiEQwdQVJLjjviKca/8Sd6UzD42CCpEt2evel8hm1Ac1K
         hXROhvjQ7U9KrBNWwQJhIId7nt8R2k6o8e1oPhNsNKD1cu3rvE2uaj76MrzKiCoX8vd8
         AvMpjeLODWBksHUwEm/4cdwxWJJ7zeLANrhGqAWjA7BLfXYDcTLXXIsFh04iVWktDtWK
         8xDjvQpZTrrCqQ9+8L4IMMLV1I6O97AVWhwlMH6Ax4R6RU4JrWRaRRNbxbLWA6E9l1aY
         gk6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SuPGwX808leIovYc7kY2ee/zFjpY8Ph41L504AOB/gc=;
        b=IXbxhPItuWNMPDiSfo3BIXldNfWZVioKgU2aENOvifInwM57WKLUF+b7B/rtnfoKP/
         fPYVMmHUmUAkECmW6JJokOFRPKb7gPYaXxLwzYWraa/oAOnlHIO0L6YK4pPVGxjdCR6p
         SMx4TEHYpvoIVe7OmG7JztQFHWmv7C/IDeMlcrTLOnAYghpii7nKD7mQUP85bIwHjPle
         oxTHI4OlobxvoF2b0psM8q5u/oBRhopZSNp3XBC4TXGChpEF8vARVZXMpBAAzCGUDVpz
         yuUSRLCcsj1QyF17+x1FIFMK3vkmzeJCmf/IIHy+IEq4WK0GjhkVUvLkj5Y74TG/HAyC
         7M+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUXblmA17V56RtrnzYagbJnw+mAUNTtqSMgfdWX9lhD93CNoLdQ
	ts5JAdLNaUnWDSdEUAzfvXA=
X-Google-Smtp-Source: APXvYqzTsTRw2UB8qMn9bQJmaEvhJnucppbwdt/7Pt6s/282PMAssVNo0OA7V2PSXFzQUcfGwecwWw==
X-Received: by 2002:adf:ea51:: with SMTP id j17mr14291277wrn.184.1565580696742;
        Sun, 11 Aug 2019 20:31:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ec43:: with SMTP id w3ls3140408wrn.14.gmail; Sun, 11 Aug
 2019 20:31:36 -0700 (PDT)
X-Received: by 2002:adf:e750:: with SMTP id c16mr6622715wrn.199.1565580696377;
        Sun, 11 Aug 2019 20:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565580696; cv=none;
        d=google.com; s=arc-20160816;
        b=FyZWIdL70PtSg91XrtB8gWlsA3rOtQAZ75SZN7Ts11JCv652NwsyE8DVYqhPl3piuc
         0rgg78r8cA9vhjGp5qUhWBazLYWr12Az+4iwgKXoPIP0UNHg5y5yHyjPicwv1fkbtJMg
         wGC5iOyiBYJmDpQGc+ZX73z+7GT9lMVSjeh4Fq+lHWi1ruvLjGppR0nELrznVxtTlE42
         hD+ryg+TD6sSrCd+Rz5tsy4uUrRTKlYM2S1QjjW3l/8iRuLiN3WkP6WQhwcfb9dbhL+u
         dhd/wc65T0ua0p7FP81LhOUT41LUZIprLsrmH94GD34yvJxxG2tRDHGSNlXCcgpuRKke
         KaWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XMXycnbWce+UbHDUEMzCA5GYy2ZL0FeWSfMNGV83HYk=;
        b=vpG/t9bTwPZOALagJIemHZUcnae5LIThrSQ6llTtKg7ThXX5yiu6FewNRK9sOTWUX3
         CX+2KkEV88saSZ+KKONTZEu389TXP0ZowhWyCIpOd67e3I3T0asBkoQX6EA1ZgM2F6C8
         L0YVDXiK+H0AskwAIH+Mu+mwGMV+9PHF1EtaSWJMiipoOolJbCxu72N/zrZfu/mZqw05
         al41ZoRV2P4navQLwGl43IyQYyacFlL86ii6OiuotPaCKXtw0SNiaw70sdHXL48oZQ1L
         AQsZSvRI/uw0DpNz+OeB4lv2dGE+Zw8M5umPcOCLiDVStwQE6oJNny1uaUzA2rL7nuBs
         /m3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RSssZDQZ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id e23si324030wmh.0.2019.08.11.20.31.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Sun, 11 Aug 2019 20:31:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id z23so10474095wmf.2
        for <clang-built-linux@googlegroups.com>; Sun, 11 Aug 2019 20:31:36 -0700 (PDT)
X-Received: by 2002:a05:600c:228e:: with SMTP id 14mr425013wmf.101.1565580695864;
        Sun, 11 Aug 2019 20:31:35 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f12sm117299330wrg.5.2019.08.11.20.31.35
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Sun, 11 Aug 2019 20:31:35 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ralf Baechle <ralf@linux-mips.org>,
	Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Werner Koch <wk@gnupg.org>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH 4/5] lib/mpi: Fix for building for MIPS64 with Clang
Date: Sun, 11 Aug 2019 20:31:19 -0700
Message-Id: <20190812033120.43013-5-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0.rc2
In-Reply-To: <20190812033120.43013-1-natechancellor@gmail.com>
References: <20190812033120.43013-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RSssZDQZ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

From: Werner Koch <wk@gnupg.org>

* mpi/longlong.h [MIPS64][__clang__]: Use the C version like we
already do for 32 bit MIPS

clang errors:

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
Link: https://github.com/gpg/libgcrypt/commit/e7ae0ae243c8978a67c802169183187d88557be8
Signed-off-by: Werner Koch <wk@gnupg.org>
[nc: Added build error and tags to commit message
     Modified subject line
     Removed GnuPG-bug-id
     Removed space between defined and (__clang__)]
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 lib/mpi/longlong.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/lib/mpi/longlong.h b/lib/mpi/longlong.h
index 8a1507fc94dd..5636e6a09f7a 100644
--- a/lib/mpi/longlong.h
+++ b/lib/mpi/longlong.h
@@ -688,7 +688,8 @@ do {									\
 		 : "d" ((UDItype)(u)),					\
 		   "d" ((UDItype)(v)));					\
 } while (0)
-#elif (__GNUC__ >= 5) || (__GNUC__ >= 4 && __GNUC_MINOR__ >= 4)
+#elif defined(__clang__) || (__GNUC__ >= 5) || (__GNUC__ == 4 && \
+						__GNUC_MINOR__ >= 4)
 #define umul_ppmm(w1, w0, u, v) \
 do {									\
 	typedef unsigned int __ll_UTItype __attribute__((mode(TI)));	\
-- 
2.23.0.rc2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812033120.43013-5-natechancellor%40gmail.com.
