Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6W4ZP2QKGQE2KHPZRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E4A1C7766
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 19:06:03 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id l15sf2759787ilj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 10:06:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588784762; cv=pass;
        d=google.com; s=arc-20160816;
        b=M9XqVu/hlRZnSDpTzSsznX+HufORA3BAkmd6M+QpxZGKe2g8jobpW1BCW7mGE77Cvh
         /PiCZYP5z+YaWObchonqXvtij2MQeffI54dDcI37ekQwfy0fsHInm7HF7xSDkYqZDQBo
         q0TL940njrK6ibIxEzfrFx0lIPlbHLM449xuMEN9e42thlof2fp7/kUa35XP3aXPsM6X
         JrfRNTRj5PpgkCrXKeyqd9ZWLAq4pMosBx3C++VU9qWRIl2LNUEd713+jBHOLgtl2btF
         HWGdCrySuaoIqDd2529zzLNWdpjx1YYuDVh4lBXAPpwBgX0+gA5hEOnSPXBvwsg5m+aw
         M+cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=qelg3vt++7pKoemFOz7dRe/Fpopfz7/Kq20+dvRFfaQ=;
        b=ZdnltHX3s69wq562Xz4IlA1mTT+2T8RCbNFh9Zs2tS4AIjlWsizZWCEldMSK/9yanL
         Ja1ElIMWT2fY8tgwGDFLSdu4yggOdPWW5Xib5+m94Y0GpydN+IZ7EJQ5ZApvx/zfhgw+
         VSRv+formEDPAIMpQxObxOdAicXttLNwQEo171kOe+M2uXnct69yTBB/CgUuDD/PPpJV
         d9su1IQ9wr2dSUrnBTaqeM6P2iqHEDSxfdAxNMqn3TBw2ikgTSiStycNtHYOxKEoah02
         m85ESU1xMM/Z2s/SEseMjZzVe505xjPf8dATnR97MoIocNmS2Ua6N9Rv5XaSfiPRH0yh
         Hwkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vpdo5MHE;
       spf=pass (google.com: domain of 3ee6yxgwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ee6yXgwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qelg3vt++7pKoemFOz7dRe/Fpopfz7/Kq20+dvRFfaQ=;
        b=jItp9AWG/G1FFrh2GzuJlNz4nd9H4UrU207D/BgSWYdiyqtBCnd7tfU3IKTJOgMStf
         Aue7kSHycq6Hn1GJuKkUpHl5b+g3Kt9kesseok6WTiU+yM4KpmEAVDov1Qopm96PbD5i
         vrpGHJxHZeU2yN5pVqIWneijwzn8QcD1G+LvNsvsxbXYPTjO1Gkx00OUjRxyNxrWWQ1N
         +KNmuyJ0e86p1/c7AXJWaxMIHI0EbBws66XPKmz5jhtc3AVHPPiCK1edyHZBCabyboUS
         J9sMSrfXD1K3cgDaNrsBYCv3DBSVZuQLtO2kkgN/yhNM5dlDRSPiY3+obqg9ynvGb8SN
         8EqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qelg3vt++7pKoemFOz7dRe/Fpopfz7/Kq20+dvRFfaQ=;
        b=S17GGXOrsSOo64173uWcF0RWQdoaHLV0UlyS5UKoXP7Ow4tKR3pa4ncWIvihfmnwcM
         gRoZEt85jFqFW6OA94uxjRyS8mzDpe87bE4ivNHe4FY4Xn8W2jTjPb2VoaeO6HGTN68U
         MKrGeh/kqmZWMlO1mefgc7IWDq0pVKGfP5uqEAc9Z8mguTHKzjX69AHO0n3jg7R5Ot9J
         9j7eMrg5HexrPYEtGRqoR57BOuKAyl5SlTKcpL1wXfkng8a/RJBWFuyeKFotJle9Aad0
         K3dvtDmutKf7yxvgPEScms2qkl/NIlb6BQ49oPDpLOz2cWc8xRIQDOP/ik1TXXcjaHGa
         MUsg==
X-Gm-Message-State: AGi0PuZn3jd4oSUhIyu+DB51PHG99VVbTklxu8NTmTw1nmdHm0TbrZYT
	wQKLnEK6QRbAiqxdanlni5o=
X-Google-Smtp-Source: APiQypIX3A4tjvaEZcX2hbtISUOBNXfxG8pI1BIaO9OqtoQqhd6FRd2KEWJzEqnU2Okt/BE+V0/fEQ==
X-Received: by 2002:a92:d341:: with SMTP id a1mr10339467ilh.130.1588784762522;
        Wed, 06 May 2020 10:06:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:d516:: with SMTP id e22ls1032407iom.3.gmail; Wed, 06 May
 2020 10:06:02 -0700 (PDT)
X-Received: by 2002:a6b:f20f:: with SMTP id q15mr9530176ioh.48.1588784762096;
        Wed, 06 May 2020 10:06:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588784762; cv=none;
        d=google.com; s=arc-20160816;
        b=HFAl7eNuRFDCOYO4tZqV77I3gi7aEEp6HwTt1foluejpPROuqzsJ3qnomFlQM6hzuZ
         p+lKVxk0X5Yw+jI1qgG65cXV0Wy6J18r1T61OMT8OHJla84x9FvlD8sKIPiFM3uc5IYy
         1g6Qi95hIgioJxObEA0/fN4/uu0+xz5duB2AXeyqe990HN1OEQ5j/1n3ZUaA+7OAkCtK
         WmqVxLrznmT9TFbFsAo0D/IgL7r2Na/Kr5ifZulEEKh1pEPKYr9YRr3WQjAO9gMEqhG3
         c48CbEYRiIaTbs6dRERo/XpdxMZXfBHkJmmY1qh3xoYgBmTuew6PQMoIT94SHEQOD/8D
         FpKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=38D9XAXV7mzVHBBpOcAS7ARBaUBu+dmzE+ZxtJSi07k=;
        b=ZtrX8NPmAzi5MMkPjQhpsXw8zLM8/xyQlg+bBf3oCmyhxZP0EkdI18A5nz4KtX6ZzA
         PjffISrNzLWUbvMh1yooF/3U0sOEsqJuzcNIquBzHBAUUCKl6fiFRQQ5No0xWQU0eV9N
         GmWMvbjnYEzF6SDwFAM7fpni+nQchiYWM536Y1pwBN3Kv8ul4dV43eMqOGO1bLgjHoW4
         O9UM4mshk/yeGfT2Lr0N+sjE3dYMLP6e99gPzYDYbubmeYulKZveMR22g8EfKr0NOGDy
         2ComPMioA8r9CnbK2pyHTY+YYgNZExL7Nt9k/H6Tz3zzmblYF8S4keuNAmnV0KzvRzIB
         dc+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Vpdo5MHE;
       spf=pass (google.com: domain of 3ee6yxgwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ee6yXgwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id k13si284785ioq.3.2020.05.06.10.06.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 10:06:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ee6yxgwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id h185so3311743ybg.6
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 10:06:02 -0700 (PDT)
X-Received: by 2002:a25:3555:: with SMTP id c82mr15199015yba.378.1588784761448;
 Wed, 06 May 2020 10:06:01 -0700 (PDT)
Date: Wed,  6 May 2020 10:05:53 -0700
In-Reply-To: <CAHFW8PQ1jusUS9xNUmiwwTU3x=GCqL3AJwwirhJOAgZUjx9wVA@mail.gmail.com>
Message-Id: <20200506170554.54635-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAHFW8PQ1jusUS9xNUmiwwTU3x=GCqL3AJwwirhJOAgZUjx9wVA@mail.gmail.com>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH v2] x86: bitops: fix build regression
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Ilie Halip <ilie.halip@gmail.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, "kernelci . org bot" <bot@kernelci.org>, 
	Andy Shevchenko <andriy.shevchenko@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
	Marco Elver <elver@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Daniel Axtens <dja@axtens.net>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	"Peter Zijlstra (Intel)" <peterz@infradead.org>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Vpdo5MHE;       spf=pass
 (google.com: domain of 3ee6yxgwkab4h78m4ofhc8lmaiiaf8.6ig@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3ee6yXgwKAB4H78M4OFHC8LMAIIAF8.6IG@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

From: Ilie Halip <ilie.halip@gmail.com>

It turns out that if your config tickles __builtin_constant_p via
differences in choices to inline or not, this now produces invalid
assembly:

$ cat foo.c
long a(long b, long c) {
  asm("orb\t%1, %0" : "+q"(c): "r"(b));
  return c;
}
$ gcc foo.c
foo.c: Assembler messages:
foo.c:2: Error: `%rax' not allowed with `orb'

The "q" constraint only has meanting on -m32 otherwise is treated as
"r".

This is easily reproducible via Clang+CONFIG_STAGING=y+CONFIG_VT6656=m.

Without the cast to u8, gcc and clang will not select low-8-bit
registers required for the `b` suffix on `orb` and `andb`, which results
in an assembler error.  Without the mask, sparse will warn about the
upper bytes of the value being truncated.

 [Nick: reworded]

Cc: Jesse Brandeburg <jesse.brandeburg@intel.com>
Link: https://github.com/ClangBuiltLinux/linux/issues/961
Link: https://lore.kernel.org/lkml/20200504193524.GA221287@google.com/
Fixes: 1651e700664b4 ("x86: Fix bitops.h warning with a moved cast")
Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
Reported-by: kernelci.org bot <bot@kernelci.org>
Suggested-by: Andy Shevchenko <andriy.shevchenko@intel.com>
Suggested-by: Ilie Halip <ilie.halip@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* change authorship/signed-off-by to Ilie
* add Nathan's Tested by/reviewed by
* update commit message slightly with info sent to HPA.

 arch/x86/include/asm/bitops.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/include/asm/bitops.h b/arch/x86/include/asm/bitops.h
index b392571c1f1d..139122e5b25b 100644
--- a/arch/x86/include/asm/bitops.h
+++ b/arch/x86/include/asm/bitops.h
@@ -54,7 +54,7 @@ arch_set_bit(long nr, volatile unsigned long *addr)
 	if (__builtin_constant_p(nr)) {
 		asm volatile(LOCK_PREFIX "orb %1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) & 0xff)
+			: "iq" ((u8)(CONST_MASK(nr) & 0xff))
 			: "memory");
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(bts) " %1,%0"
@@ -74,7 +74,7 @@ arch_clear_bit(long nr, volatile unsigned long *addr)
 	if (__builtin_constant_p(nr)) {
 		asm volatile(LOCK_PREFIX "andb %1,%0"
 			: CONST_MASK_ADDR(nr, addr)
-			: "iq" (CONST_MASK(nr) ^ 0xff));
+			: "iq" ((u8)(CONST_MASK(nr) ^ 0xff)));
 	} else {
 		asm volatile(LOCK_PREFIX __ASM_SIZE(btr) " %1,%0"
 			: : RLONG_ADDR(addr), "Ir" (nr) : "memory");
-- 
2.26.2.526.g744177e7f7-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506170554.54635-1-ndesaulniers%40google.com.
