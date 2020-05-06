Return-Path: <clang-built-linux+bncBCLI747UVAFRBFMDZD2QKGQE2JKB36Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id D35C91C64F0
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 02:15:18 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id p138sf15112iod.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 17:15:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588724118; cv=pass;
        d=google.com; s=arc-20160816;
        b=tyyPzerCJM7YlreBNBrFkwa9UvsNmO9Nyk7U3Ec263oe7T19tRrwSBT7PecbnA6eJK
         WJdJyWM1Qm9LzBjKF1WJghu7HCyuvZ4FcfKH8sVuJl4nq7soahzSt+y0OgKmf0QERK+N
         TH5LUKcoXNByEvijVUiNA/drq+R3Uvfz7teg8Pz+V0cu/V/sCFSKtKJCetHv5vyVN/V0
         h8PcTw+QkwJ1ueipslKFAs5DyNjbilqRRDAT45Wyyd9YymLoTpUwyE//Gx2OFZdry0XS
         XwiZgGZ66IfQAhJiAIzS+s5L/iEMgT+gTI46R+Ipb+a+qe0YIN0IEItELQgpTrgua6Uf
         C8FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QVVW5SJiKyCVvXqhZlFqwjMXEQw076IbC0yPAmoCAXY=;
        b=M0/fzgpKGYLBbe/B8RA/1V/NQUbkljyofb2XUi1/hJ3fUNM/3qi7sIg3+q7fZvvNe8
         R+I/fKAJEF+83pn57tYlqhZOJ8XxOPnkJ6i71bp/dhddNlwjsP+y/v5xP3iUEZx/T4QH
         VcaRE1ny7sb4zW9iNWy7/5DnzqBMWxTM98FK/SXWg5y2ebS4xs7EcLFp8AUjlBaRbfwx
         +fu8cagIwA4RQtR36Udu2aeejIoJsaeR9y2OlWqvmSB0lUKEBt9uUd+5kk+su9xbrlLD
         NuI7NxEk4+ozQQWtgxA0guM7UTxmmjJCKFTrdqZyrlisvjl/1zIhxWD95X4xze5TiQ2m
         LnJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=QrZYmVWb;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QVVW5SJiKyCVvXqhZlFqwjMXEQw076IbC0yPAmoCAXY=;
        b=LCRAoe+OLzETGXw2bQoYJ9mOJeugn6Azl5R0G8rAV9VrkWaxyQAKbSu+bgt6FSjux2
         HPhZm2IxEdIqYP8hq1eVCuHqF9JHSIouTxK+ru3sRoB0kQ80TcV9RemcpUUU973lw5pl
         R3agnkJJbOYsQ2ZgZewEIhqyflmH7ukCe7CQJ2DAC5SiI1ybstIfHHqmgdxLLOgs8KzZ
         GZIuD5V5sdVvwfTpCDHsqn32LZHimtyrhgtOFO6gzlgedw7bpUWucbXu52CDlAqivXGK
         BAT2Hk7uNAP4shJKUK+U1Eq01rjSUHj5x9GnQvqq/WSpnDi1Jr2nKwfpc7RT9OBc9Zhg
         gvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QVVW5SJiKyCVvXqhZlFqwjMXEQw076IbC0yPAmoCAXY=;
        b=fytvkZL16GwnE65hOGP74vh5drv0MiTL1ii82GqRhQTlQIaikx4fD0TznQdkHaXzUK
         qEol7P2I1qZjMlilqc7himjoXZ7+51YdmqnagvahDC3KKKjTITyfJGxe+aO6WX+2yj0V
         oawypnYtqnXILmgdeWpKY7cOAmAMgg8LbXiI1szk2je7NUA6ZUrD/hP81DyC8FSIB2z9
         gdeKOzfJmY/JLjDlNJbI5FSX4vxHO5iJAetdTDC2C/3AKmxkk6TEx5gaBbE93D+Nrtl0
         JvO/vwJiBS3JQl2WUUMNveClP8sooAvKNZs1i/PNJfl2Q/J5jgStXKRDVJ5ZnUUfavSq
         +P0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua9PoNG6g9WbqoO74b4KgYjASXZKE6EVcJ8j7oNCTHrjjXjLCTE
	vzgkltdsFVcYXRKqhgyYfw8=
X-Google-Smtp-Source: APiQypJZTkRMTth2vSi5Qw9AZk1DIxMnrxXVwxhjQuGx/uGOv+I0GYq+7z9M+RAksuImxgpWzRMbNw==
X-Received: by 2002:a92:3c55:: with SMTP id j82mr6652590ila.258.1588724117809;
        Tue, 05 May 2020 17:15:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:3a9:: with SMTP id z9ls88565jap.11.gmail; Tue, 05
 May 2020 17:15:17 -0700 (PDT)
X-Received: by 2002:a02:6514:: with SMTP id u20mr6104560jab.101.1588724117439;
        Tue, 05 May 2020 17:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588724117; cv=none;
        d=google.com; s=arc-20160816;
        b=AwZtjTCu4o85JQ0ESioSVN0qP33rKyeIjSkDzW2bcLAPZsZrEsOPGcobVoniR1kuvj
         4BKgfMis7J/D4LH3kOuMEOahhaRdjuF7BLCEJCItrXMrpci3o+UYTcNWTgeYx/trAfiL
         3+pz8tmX20fnc/juD1xZlhT0eBcN3V5FxC8g5beok7aeGD/FYDe3lEbZDCUGHe5mjNOh
         /wvZ0Nfz/MvV43IOj34hTQfBcHKbfiWT2Rv3Gyys3bk5+mOWIKf1bqNWP6Pbhp1W6PSc
         ptymYphU76MZCTOwWVOB8MKNlZpb4vHY/Tq2KsYZNeYElPPfULLWJsswgz+vfcIb3HYL
         iK8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nL2WKh5dmlq23n1vPGPXyqBKBVoZTO9PKHzRSqEUiBM=;
        b=VCQeZYa7fKnVprtdWvJjyBE/D0XDArqypltor0shOg+gTWPX/XGrcu2VwcKOq6LJMs
         Pbx/vIsvKE9FYIaIivPBY6Nm/WuNmr1e+Fpv9DMl/0zys/l6GM96nEILnI0Xb0YjOhms
         hXS26TivbAY+zD/3SfnXsjyC11ttMfWIvZLet1FM5jgbsLJrtPz2IhxiELEofSveJ8c0
         Rh6zzPTHxB0SqAlviOEv64lxYL3TadRPi58P73/cTRl6fsHa2zm3C9sQFLC49MTK6e3K
         wBt2lpP+uh/TcGi2pMKsoaO6K+fOpQvN9CSKBYEsToCSa8H0DaaPXYodNo5zhLELeWUC
         Ej4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=QrZYmVWb;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id v22si60187ioj.2.2020.05.05.17.15.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 17:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id be89da68;
	Wed, 6 May 2020 00:02:40 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id bc6ea39a (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Wed, 6 May 2020 00:02:40 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	arnd@arndb.de
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	Kees Cook <keescook@chromium.org>,
	George Burgess <gbiv@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2] security: disable FORTIFY_SOURCE on clang
Date: Tue,  5 May 2020 18:14:53 -0600
Message-Id: <20200506001453.764332-1-Jason@zx2c4.com>
In-Reply-To: <202005051617.F9B32B5526@keescook>
References: <202005051617.F9B32B5526@keescook>
MIME-Version: 1.0
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=QrZYmVWb;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

clang-10 has a broken optimization stage that doesn't allow the
compiler to prove at compile time that certain memcpys are within
bounds, and thus the outline memcpy is always called, resulting in
horrific performance, and in some cases, excessive stack frame growth.
Here's a simple reproducer:

    typedef unsigned long size_t;
    void *c(void *dest, const void *src, size_t n) __asm__("memcpy");
    extern inline __attribute__((gnu_inline)) void *memcpy(void *dest, const void *src, size_t n) { return c(dest, src, n); }
    void blah(char *a)
    {
      unsigned long long b[10], c[10];
      int i;

      memcpy(b, a, sizeof(b));
      for (i = 0; i < 10; ++i)
        c[i] = b[i] ^ b[9 - i];
      for (i = 0; i < 10; ++i)
        b[i] = c[i] ^ a[i];
      memcpy(a, b, sizeof(b));
    }

Compile this with clang-9 and clang-10 and observe:

zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-10 -Wframe-larger-than=0 -O3 -c b.c -o c10.o
b.c:5:6: warning: stack frame size of 104 bytes in function 'blah' [-Wframe-larger-than=]
void blah(char *a)
     ^
1 warning generated.
zx2c4@thinkpad /tmp/curve25519-hacl64-stack-frame-size-test $ clang-9 -Wframe-larger-than=0 -O3 -c b.c -o c9.o

Looking at the disassembly of c10.o and c9.o, one can see that c9.o is
properly optimized in the obvious way one would expect, while c10.o has
blown up and includes extern calls to memcpy.

But actually, for versions of clang earlier than 10, fortify source
mostly does nothing. So, between being broken and doing nothing, it
probably doesn't make sense to pretend to offer this option. So, this
commit just disables it entirely when compiling with clang.

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: LKML <linux-kernel@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: George Burgess <gbiv@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Link: https://bugs.llvm.org/show_bug.cgi?id=45802
Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 security/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/security/Kconfig b/security/Kconfig
index cd3cc7da3a55..76bcfb3eb16f 100644
--- a/security/Kconfig
+++ b/security/Kconfig
@@ -191,6 +191,7 @@ config HARDENED_USERCOPY_PAGESPAN
 config FORTIFY_SOURCE
 	bool "Harden common str/mem functions against buffer overflows"
 	depends on ARCH_HAS_FORTIFY_SOURCE
+	depends on !CC_IS_CLANG
 	help
 	  Detect overflows of buffers in common string and memory functions
 	  where the compiler can determine and validate the buffer sizes.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506001453.764332-1-Jason%40zx2c4.com.
