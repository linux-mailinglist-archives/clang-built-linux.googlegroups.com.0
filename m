Return-Path: <clang-built-linux+bncBAABB2XCXDZAKGQETGMRUTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CB43E165846
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 08:12:43 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id a16sf2427836ywa.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 23:12:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582182762; cv=pass;
        d=google.com; s=arc-20160816;
        b=N0JDCts+ywZmV+Oa+XqDF0GL7VgoqaQsbOk//dx4LZ6wCouTJkokSnmlFd2d0rmFHg
         NWrK8KbgFGb3MRq63bra0f4fZpyVkrrIRluUwioCWpvqFPWTiOSYM3/55kLUc7HvYU9r
         2oFgJIL1fR2vN0x/oqFC5f8PGClaBLbrJ+aoi4VIPuha1mPcj4NXRzH7rObhSwnqqgF4
         Kb3T+q4DFI0jUX0MEXTLaDUPGf6v3w15XFxJA2QP3u5rCCOKzJ92oz0ONLasG9uS2U8M
         pG03KpokyMBcSV+jyRfg1gpp6iCVhxkIC702WTbhGgBwbzNFehYEU1oEjy9FkJXM6sMx
         n4EA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :dkim-filter:mime-version:sender:dkim-signature;
        bh=DzvqN88LmKQhgirmbVzrWWpZaHAJEJ7YCz0XqQJdOd4=;
        b=b95geBQ4LuSKTbj4QYlAV7Zt1sXimnspQD0xfkv+t0mJjnztXAZ8oHmvJit6TfYI7l
         SuS6bXVdDuFLZDquh7vdQRpTgnHSYCHYSUHJMK885vSGUKoOORFI725LoTC3WMFIio7y
         8PKMt6ayZmc6NpjT2TiIuvnI6YzqgWzgc5YJ9tyBXsXpG425ULPvnVjvrDPyOqc+xI+t
         IIcoNIMdwcCaj5GbZ8cj7xkiDTqM6QgheCvPrgpGK2ZpWIdriJIZkclrgPxyLuEu0Vi1
         q4tfGMznj2K2tpzsJ+jsgu/KMcdoH2HR1sPzzhnXoJ8/dPQ+9dlqK3/yCTrImnqumK5w
         Qh9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AWHBX0Ud;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:dkim-filter:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzvqN88LmKQhgirmbVzrWWpZaHAJEJ7YCz0XqQJdOd4=;
        b=VTa7PH1RziymcxJAaAmrxdcXZ6BiHQh2fBmivENsu0qnhvWzVDBnt5mYg+7jnRdxnr
         bnz1iXhhxhB++k7FBqewzvRmvdbns71G4atOham7bkdPYmJEFh+3WuyCnrjUa3H/KkBH
         OO7OY4vOUUIPdWhb+uvYWWi0G1pvHlGQkLSOUzFoyRgtinUXCyHIPWE2ZcYdbPI/J7U3
         uRQDa91yY+Q3VhiLTvrYC5m+9+pOl2/C1memwMPsL+/Ou5sSbKp17JhIONPRgtLBI7Fp
         ME369S2hABT43Oy6v+w/veWT76MF7GEjm/O+HePZjn+/1xIJPOwRAv1pxdCUCZlbdu52
         2k6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:dkim-filter:from:to:cc
         :subject:date:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DzvqN88LmKQhgirmbVzrWWpZaHAJEJ7YCz0XqQJdOd4=;
        b=ZrubuUUUBBBIW3Lbxmva8ieW7nn9B60Quk4kp3RhV8B+YNl00VNDySE3ud2f9dr8A1
         1frf48nJx+OWuoYZJg0FmPFmG5sYr/McP1F+bBdnzQFjjGdWwCTu6661R4DBMUpT70/E
         ARjVyBBEvw3v3ShikL/5gm/VmPhoc09CSAj0avVr4/b0eJ8btfDcUv0WBgERr/25D9jS
         Sgg8FmRxmqK6cAk8505ALeAS77h/SmfZsI3TcmwJfrJ6Ce5ggTBwu8nN4tEW0NLLog7u
         X/IRW7Hp/kVMUHeHxNhn1WWBPDOTM0I3wCuTotdhAb4auxg7PJj+PGAU4h6BTl7DIX4o
         iOgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWs6p2Zw+f8awdyukCGj70wyhbIL8aQaE6amkfIm3kdnaeBGrb3
	j1u7XjEl/0bbZw0Z2/6w0gU=
X-Google-Smtp-Source: APXvYqychIuxHTlGDt/+J5goZoWFvpKOUKokrJYsVxQFgAoCRbzSC84Q5RUHQzUrdAzLq7KDtdmtvg==
X-Received: by 2002:a81:1358:: with SMTP id 85mr26432396ywt.418.1582182762778;
        Wed, 19 Feb 2020 23:12:42 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:dc43:: with SMTP id f64ls483295ywe.2.gmail; Wed, 19 Feb
 2020 23:12:42 -0800 (PST)
X-Received: by 2002:a81:bb54:: with SMTP id a20mr26046426ywl.408.1582182762425;
        Wed, 19 Feb 2020 23:12:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582182762; cv=none;
        d=google.com; s=arc-20160816;
        b=Hw1oTibVi6HSxh85gkA9SKCjRFqfYWuROcpK/dN1fQEhtxrqkp09+NUNorcY6FTcfq
         /bTcfhpulNg7mAaGlVa1zMP8YxpziJdu6sXsv8K6A1aC6/p/IfcESqau5N5OGn8sVq5e
         Q6h443ImBo1NrDxxkAad0QoUXOqSM7nu0Ee45+siFRcSi3fZ6RlJcKJg1VRQ53yR2lOA
         SRQ05DkXoKcf2ygzgTbTfLqysA1Z5KNH+JVyE+ugZxotp5nA39LN5THDvt6YTllFWXXZ
         JBjSfHumny/y3rRWsFY6NuPDFmRJDPfx6r/4uehnqbFH5cQjzpb1QE7Ex9191D81gLX+
         m6ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature:dkim-filter;
        bh=RGjdzwfQtcxcoKdnoWUCQmUyQN1VFbdpPZmhgB3NQTg=;
        b=POYMpcMhsRB4VzhpceWBNPVZZpBaTuK4OLqWXMMM4ogog69TAB/1zPrw+P5zU5ds/E
         kMMhlWNt30tsJrM+ffOrqS+EBaLmtjfMi1lZtsHuNv196thdOo0hAZ1hXcggry/gz9Nz
         l4cSCpnzVAGMyPoVogdKuNjW3oI9ZxQWdr9YNyvnY5s0KJ0V/pe4Z/XFZSMsJyEeDyh5
         QEwAEvMd/wPC8VSNUHAgWUdsrg9K5LXHsbaM1uAtssmqykjCWfaySUjJPyzhOKImJ42F
         FVQ1NAnVNzQzEDV0l60axexzFazXSsDqHrNEkovgjdVh69w/1/uHXOKWtdHjQ7N+/KmO
         cMrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=AWHBX0Ud;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id t82si105621ywb.2.2020.02.19.23.12.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 23:12:42 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp [153.142.97.92]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 01K7Bl6d011059;
	Thu, 20 Feb 2020 16:11:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 01K7Bl6d011059
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
        Thomas Gleixner <tglx@linutronix.de>, x86@kernel.org,
        clang-built-linux@googlegroups.com,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        sparclinux@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
        Andy Lutomirski <luto@kernel.org>, Borislav Petkov <bp@alien8.de>,
        "David S. Miller" <davem@davemloft.net>,
        "H. Peter Anvin" <hpa@zytor.com>, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] vdso: remove meaningless undefining CONFIG_OPTIMIZE_INLINING
Date: Thu, 20 Feb 2020 16:11:39 +0900
Message-Id: <20200220071140.14080-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=AWHBX0Ud;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

The code, #undef CONFIG_OPTIMIZE_INLINING, is not working as expected.

It is because <linux/compiler_types.h> is parsed before vclock_gettime.c
since 28128c61e08e ("kconfig.h: Include compiler types to avoid missed
struct attributes").

Since then, <linux/compiler_types.h> is included really early by
using the '-include' option. So, you cannot negate the decision of
<linux/compiler_types.h> in this way.

You can confirm it by checking the pre-processed code, like this:

  $ make arch/x86/entry/vdso/vdso32/vclock_gettime.i

There is no difference with/without CONFIG_CC_OPTIMIZE_FOR_SIZE.

It it about two years since 28128c61e08e. Nobody has reported a
problem (or, nobody has even noticed the fact that this code is not
working).

It is ugly and unreliable to attempt to undefine a CONFIG option from
C files, and anyway the inlining heuristic is up to the compiler.

Just remove the broken code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/sparc/vdso/vdso32/vclock_gettime.c     | 4 ----
 arch/x86/entry/vdso/vdso32/vclock_gettime.c | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/sparc/vdso/vdso32/vclock_gettime.c b/arch/sparc/vdso/vdso32/vclock_gettime.c
index 026abb3b826c..d7f99e6745ea 100644
--- a/arch/sparc/vdso/vdso32/vclock_gettime.c
+++ b/arch/sparc/vdso/vdso32/vclock_gettime.c
@@ -4,10 +4,6 @@
 
 #define	BUILD_VDSO32
 
-#ifndef	CONFIG_CC_OPTIMIZE_FOR_SIZE
-#undef	CONFIG_OPTIMIZE_INLINING
-#endif
-
 #ifdef	CONFIG_SPARC64
 
 /*
diff --git a/arch/x86/entry/vdso/vdso32/vclock_gettime.c b/arch/x86/entry/vdso/vdso32/vclock_gettime.c
index 9242b28418d5..3c26488db94d 100644
--- a/arch/x86/entry/vdso/vdso32/vclock_gettime.c
+++ b/arch/x86/entry/vdso/vdso32/vclock_gettime.c
@@ -1,10 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 #define BUILD_VDSO32
 
-#ifndef CONFIG_CC_OPTIMIZE_FOR_SIZE
-#undef CONFIG_OPTIMIZE_INLINING
-#endif
-
 #ifdef CONFIG_X86_64
 
 /*
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200220071140.14080-1-masahiroy%40kernel.org.
