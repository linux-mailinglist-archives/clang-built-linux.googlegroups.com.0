Return-Path: <clang-built-linux+bncBCLI747UVAFRBROBY72QKGQEE4FTR4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 215CA1C6381
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 May 2020 23:55:19 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id l11sf265364pjz.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 14:55:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588715717; cv=pass;
        d=google.com; s=arc-20160816;
        b=y/FIp8aEYYXiv0F7Ww7uIKdq+3auNiLAa4zw6nmGhBpgCFZTFP/qoGbPysD5X43eME
         OPby0Twnb3GrHRdJBhhNgKGV0gY/6QMQH12cVybGSUfWh+Pt5bi3Phmfl87r6C+A0R8f
         gO4w+PPGZC27za0b8xzMKOqFh4R0oj89NfN8HX8kVLeEVOt24JZKuWGxzIH/EfUGT+y2
         mGM61GDZG6YALGyt1HTA/kjBJ0mPheaDK36c/8Ynu2Zknyjb1rS7cyT/ebC7/rjRkTjf
         5RqEz4edYhni9srRnDqXWDMC0Jx4T1wWhGO9hGpR9UcwwPF/FDIwQTPlk4O8B/XVzQn4
         4sJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=pRMhVm1g4qDlCXn0B/mDao2H2i8a4B4NW4TlFz0/nN8=;
        b=JwLgrmnIK6RWxFFzharVErL8YWXOcTMPZhB2nc6Zn31KHAYn2Cv9Krs685kOulsfPn
         1iWFx5C2Tirz6+BtbNgZByDCeQ80wRsEYShdUXOVUiRTJxX3VnLv62WL40od27Y37TW2
         u+6BgwHhRqDumvE2C4ZTs8a4As+uEF54g9NuqesyWmpZO+Y8LIYY/Xs5v9ksTwMVjYZQ
         xHTXDNVOR3f9e8nri2zrjgS8F/uNjuyvM02pXWcHJCzkYF9RmVImAVpDVveQX6P2H91r
         bV2ciol5bxMiTwR29jKJctosz00nFSd3pd3OKiVWWF7hYf2VE7oatyF2QXxX1LUl3UGk
         jXXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=jAfetrHu;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pRMhVm1g4qDlCXn0B/mDao2H2i8a4B4NW4TlFz0/nN8=;
        b=ZHH/sZ0OqmiI0yptj8FX9ct41EZOftswEt2mnjzQIlusElg23u6fW575dq09460wZx
         u24Tq44/PjcLlFbjMnaP7kEnV2vMQtsJDqgh4Ct5nY80qjyzFgbM/ns1RMOaJeJMfPO9
         bYrpaj2hrVfQJn+0FXbS91irC3I1p5IJCwJNqAVcP52qedwbqYEdWJhIhS1STgoGTdKp
         ZOHfNkmyFlAdz+OzCPYJPHjQNlvEUsKh7OghvxccOIgZ4Cxz/bu9PoBVRMFTuukYhnsT
         gtQ+pUAx8v4eR5rmLIWhpfou52oQkQyBjXsMz1zecDW/k8dKi4cImoDOVOcrrrbm4A02
         gqDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pRMhVm1g4qDlCXn0B/mDao2H2i8a4B4NW4TlFz0/nN8=;
        b=DdNbFT2uJD4WW6FL0mgZxe+SkU1Jh4aoc1vv2btpIbz/o5KaU0H4bSH8Vp4sq5JEie
         KiNtldc67kQUhzaqpHA6AIqQzbd9W7UhF7hOZ/OUe6vy3GDaoMr0c4bEziLmpR4JrGq1
         dyUIGC6vQLbz0fVi6R8oFsLBGEnJpe+Q0DZdK2IMxgXbrXHrhBuIjjRumWOzXGG5/MVr
         6FZFl9SFJXN9wgDvZ8di/pbjQhVwk+UrwTfdO9+QrYMMzEzCeM9/y/4tS9ynS441Qojo
         XlRi69sil6xRKCDhLZYpww7jAcq6rkAzHPFzGn4oFdG2aueJ3bHhPcLOZj4XzyhU8PPE
         Snvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub6GWnM6XnFSHUN6zXs4ld2N2K3Wc5kUSCKSTquF05kRrTP+1u1
	z+j39UoNNY/qeGQhHD75mNY=
X-Google-Smtp-Source: APiQypIZ4rZP383jS1BeKTFdtGAai3jXCg+WHRRaE//fEGi/xPmR1IZe1okABQT5XiJrYTcK8agEuQ==
X-Received: by 2002:a63:4c08:: with SMTP id z8mr4388917pga.175.1588715717276;
        Tue, 05 May 2020 14:55:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:56d:: with SMTP id 100ls120598plf.10.gmail; Tue, 05
 May 2020 14:55:16 -0700 (PDT)
X-Received: by 2002:a17:902:164:: with SMTP id 91mr4744594plb.207.1588715716811;
        Tue, 05 May 2020 14:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588715716; cv=none;
        d=google.com; s=arc-20160816;
        b=tHOJdVZCB8g78KdUmiNo7H7oTU82Xj69Pr/BAMhNql1HObZYOM8YpI1BB/VjSXgwdw
         p4c5ZR0bihcKW636TMn6WSaA//eoZA+jBV+XGEAtjP84JewwdHP6H1GF77FIO08GZlT7
         s/RuEpQdhkbS6WMOvShN2EZP6jLLRr4gQEqBRMapbe0aP6QRkgo5BbhOVF2nB/40cNLO
         xIKNOLZDFD3givY1NHjPFjs8W0keTcBYJM8catsteIAMXsiPTNlFxcG0ycqvuvWfBxqn
         AecyInNQ6KU8mXsv1eEh4EDcNHrrD8yK6cY43vvC6e+T6bjWjC8IEqjBwCN8kcmW9jzL
         zG6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EztCIpzkgJb1UmNn0I7oXuAR2JllYZkxeGlshaimSyM=;
        b=nAxLbzRtppPL+qQXw+SBnCYHWt6b3qLZasO7TPI0wvRJMbYUM3SvEN3wiCkrr2kmW3
         F65LGN7T56GR4G+t/ioAWQiUtXZHod3nSDXBunRWNaMDgVz/vT8lJb6qPkaYzpSqZptE
         Uv9SzQJz8RZd2uWoYNfcmNgK1QbR/i7iSiNYlvB0xsS5xzvWaoPSzQe+KmNr2eq0jYXu
         eYfScN7rAUbYtO4GGj7px6Hoq7KdlmZbmr7u+fJfv9QE7cdPZci2EADBx6xtuhURrRrq
         oIa0V4SQ8crHSmdv87FcNiPv5z/S4flkl3d1kWk3H/si145IU59B26f3zFy8x/o66/Mf
         x14A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=jAfetrHu;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id u18si13744plq.0.2020.05.05.14.55.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 14:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id bd6ce752;
	Tue, 5 May 2020 21:42:39 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 6efe512b (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Tue, 5 May 2020 21:42:39 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	arnd@arndb.de
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
	Kees Cook <keescook@chromium.org>,
	George Burgess <gbiv@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
Date: Tue,  5 May 2020 15:55:03 -0600
Message-Id: <20200505215503.691205-1-Jason@zx2c4.com>
In-Reply-To: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
MIME-Version: 1.0
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=jAfetrHu;       spf=pass
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

clang-10 has a broken optimization stage that doesn't enable the
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

This is present on the most trivial bits of code. Thus, for clang-10, we
just set __NO_FORTIFY globally, so that this issue won't be incurred.

Cc: Arnd Bergmann <arnd@arndb.de>
Cc: LKML <linux-kernel@vger.kernel.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: George Burgess <gbiv@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Link: https://bugs.llvm.org/show_bug.cgi?id=45802
Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Makefile b/Makefile
index 49b2709ff44e..f022f077591d 100644
--- a/Makefile
+++ b/Makefile
@@ -768,6 +768,13 @@ KBUILD_CFLAGS += -Wno-gnu
 # source of a reference will be _MergedGlobals and not on of the whitelisted names.
 # See modpost pattern 2
 KBUILD_CFLAGS += -mno-global-merge
+
+# clang-10 has a broken optimization stage that causes memcpy to always be
+# outline, resulting in excessive stack frame growth and poor performance.
+ifeq ($(shell test $(CONFIG_CLANG_VERSION) -ge 100000 && test $(CONFIG_CLANG_VERSION) -lt 110000; echo $$?),0)
+KBUILD_CFLAGS += -D__NO_FORTIFY
+endif
+
 else
 
 # These warnings generated too much noise in a regular build.
-- 
2.26.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200505215503.691205-1-Jason%40zx2c4.com.
