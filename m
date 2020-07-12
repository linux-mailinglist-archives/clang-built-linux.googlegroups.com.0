Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBF5RV34AKGQEWF5K4NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1925B21CBFF
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 01:11:20 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id x15sf16483951ejj.23
        for <lists+clang-built-linux@lfdr.de>; Sun, 12 Jul 2020 16:11:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594595479; cv=pass;
        d=google.com; s=arc-20160816;
        b=kYHVdMhdBlLlZreFpDmi7V36j4BGai0F0rbGIEJguP8Je9XkTFofRUKz9+F9lBJAup
         0L7y/YIVtEa8PiuvZGspBQGQKjNmAsRrbZj5IBqAHgbigK5X/UnT28lQRMEyq0ETniI9
         ofmFWX/bPKao7j2LQyjR94fR0m5GikRi+IhlfvH7sJ8YGkdKdoyWGI53Q0w3oTWL8s31
         NdPXPiAdAvLMERPAwe8i1/s7V5iQnfPZeRuuuweS28G9nbGYPF6KHQFw8VB7OWTUaaII
         TpWr+Thn5t/j5NPLr5vmM6q26hcY2bearyj9F1p6De0/gz7yMTlCY1IOB4EfthzEGR+m
         OuVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature:dkim-signature;
        bh=OwnGUbqb/paMBF8rT4wA6gzp+1lZZVeNYWSjU0a/L5w=;
        b=JJmFE7HK5uOvLYTUvfatS+XEhhaVGb2UEwe4cuplymPFXkbwPkwHVP9E/zTrD4A/md
         Cga9A5vjF12Uh1PDdwWNaWntkTgkCgd9w0hEUmmai8o3lH+TgiNeFcJKBLdwzlSE+bhQ
         Az2ky0CJ4pPXqEw83fr7mZr0PQfxRmTNpe54BWswunphzw1EiIVBd0rIKOqkVuIfMc68
         7EM15gS9PmG7DxKJ+iMNAxylrtxd/pwQU9AD7w5TjIzvnmhUnJaL+OSoRhDKQyHTBTEV
         rS/xz3CvT6urRoQW0fpny62px5Y/L3M9Mc1ahyLCDDehodhJbfnKMYedbigpimKIgUPw
         7I8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kEL8vD79;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OwnGUbqb/paMBF8rT4wA6gzp+1lZZVeNYWSjU0a/L5w=;
        b=Jnzr7RQH7iNk+qgIEpSjv07Sx9wHXbxJVPgk18x53W4SyxGcXEhFRZZ5KrZEOABgnH
         rataX/XyfTxANNynyc07W9f6aoeKCncNDrbdiQPXT0cNgLjpRD/R9QiPLMmECQwd268z
         NvAFoUw1WpYC7dwbjkEJ9wrH4xVHUZxHD4YrmLDXjznI+Pqv9D6XqfwfWQTFnMGr3Sbv
         xQr5Gd/jF03Zf8FYhYwXisj4qZMhzYu0QvrAzFQhvepNp4ClOllCOPldPCbdtw+WplVD
         oinSL+o21AQzIVtfRG+v5atfg7q3SuTMY/kJ3APQ57GuTxTSOwzLO4E230AhPAC5yl8W
         bV5w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OwnGUbqb/paMBF8rT4wA6gzp+1lZZVeNYWSjU0a/L5w=;
        b=SjH1/q+UyYhhDHe/omrMNZ020Oexjj6qQ/wFHDdUXlnO4BFIj6sFKvaJn/6nG/qS1/
         yC0809KaXP2OeOvZrVFqEIAjKGlwWK9BIoQlAlEOJ0bXgupChJe+V8fEqgzWnBDYYEsF
         CN464NNsPr5Djvpaq+s05ztPlPxUi9D+Bb5gkcSfJ4izxlJFhGsSWE6VHC+pURaV6drn
         /sb96CN4w4cnLvFIE+Y+5kMB40xVuVrjBWtwMMhvYcoH/fT2e3r0O5Xeos7vPeUGo94r
         CETU3bCpQg3X50tao69n+rCuV5b4XoBAMnvpSu19J6a85A/KABJKlMrSr76bb8/5GiyK
         qJSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OwnGUbqb/paMBF8rT4wA6gzp+1lZZVeNYWSjU0a/L5w=;
        b=iJ1FTfsBSG0DQyxHs3hna8FhyTlHZ2/GogZNDNfwsnVjS7JNgRonWd4fJvGbjzzMe4
         DpAqi9WfoHYtYpcrAMNPflU0u/bRrp81+kIreZVLVGXOaKLKPcVTtGusLRwnYtNMkudx
         gZcGbid8SAZEAM+2nfIst7Jv2vyun4+79Cv6S0TnXk+6/Cnk7aF12gMuZc8AJL2b3RHa
         w14ibm5mUujmBwHHUJmjhz0538XfAey9d4gXn7w/5RBGso+u9AxqoIQ5StpCfyXLslRs
         yIx/Dehip1DhDiTArym6uY1Qc+KSGndojMzamtJKHKyyOd8e8e2hs5O6QrRWv2StHpZB
         9+GA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/cO4tp27A6JGNtWEF/b9r2VqZmRmafMepuFpgIEkAZsm7XRGG
	asZEwf7fstn/GDjx3AJKH9g=
X-Google-Smtp-Source: ABdhPJzDa/6EJcUb0o7bAVs4KZT9DVABbv0g62ambUB4s6LlPWEExa+V0AjfKAQuRmAwT1nRKsx1cA==
X-Received: by 2002:a17:906:160f:: with SMTP id m15mr66229352ejd.423.1594595479850;
        Sun, 12 Jul 2020 16:11:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:834a:: with SMTP id b10ls6489819ejy.3.gmail; Sun, 12
 Jul 2020 16:11:19 -0700 (PDT)
X-Received: by 2002:a17:906:5909:: with SMTP id h9mr70412569ejq.501.1594595479204;
        Sun, 12 Jul 2020 16:11:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594595479; cv=none;
        d=google.com; s=arc-20160816;
        b=uJ83blixy3MaCT2mkO+4/g6cZByALI6bqF7o2yjhjVqIhFrx5DWlaWwUAhHTVrgfiN
         iX4LZ2Hzldna1RG7odypja+Dgw+vauu7v1Eeb/TSkPiQa0Qnh6mBvJlIBzPddiSU62y8
         kavvslYosmbTmSjiqXK64kUq2ylaOyFkQKbIO6m42P06tzmHRebuSJVpfFyZBiODhNau
         Xf3FRu8pqT7b6VV6tQ2YsI+LeZ0D9W4jz3QeYD6dgCynbqEwuxF8Plsv8WCFYxB/VY2b
         Iamomp6e6e8LaubMIqcVbOMyXe+Zr4a/n9rfp24whgFqoAZqkpg3Dic0ngkp+Jmi0A2E
         3dhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=KOnODFdxaf/iGRsoCulw/4z2XvDjjoLo9EZO9SOI1jQ=;
        b=lYOQDu74uh2tRmckJV8i6WDWo6BsCJdFVvHp5BJZNlcDfy8M4nQFTT8CUAWKKxU38K
         WT4ksjG/vAtaEgDUTn+94H7tpAk9JwfavBuOf3sV7kK6UXnMTYzOSmloTskYof+lIL42
         xiNH6JK4MeCmg1DOrySN1FBz8XAVDIkozEfQVKGKh9RN7ensxQd+QCU0kXsVKnb46bd8
         pmg+s5WPvc0O9rKHuSG1jtCsWyFNq3UU5xRcKVvsjFGt0Ke1l8wcrDUN5lh+a8AvLt9K
         XJsynKTdvM8s2reKQ62OJxLIcktNEbz1oMLy5nhMS3RcrvqV7vCqhl62dzWGw8xvTZ9l
         VSPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kEL8vD79;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id x14si757487edq.2.2020.07.12.16.11.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Jul 2020 16:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id f7so12432937wrw.1
        for <clang-built-linux@googlegroups.com>; Sun, 12 Jul 2020 16:11:19 -0700 (PDT)
X-Received: by 2002:a5d:44d1:: with SMTP id z17mr76096451wrr.259.1594595478907;
        Sun, 12 Jul 2020 16:11:18 -0700 (PDT)
Received: from localhost.localdomain ([46.114.106.47])
        by smtp.gmail.com with ESMTPSA id f9sm21238786wru.47.2020.07.12.16.11.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2020 16:11:18 -0700 (PDT)
From: Sedat Dilek <sedat.dilek@gmail.com>
To: Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	x86@kernel.org,
	"H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Alexandre Chartre <alexandre.chartre@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Wei Liu <wei.liu@kernel.org>,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Cc: Jian Cai <caij2003@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] x86/entry: Fix vectors to IDTENTRY_SYSVEC for CONFIG_HYPERV
Date: Mon, 13 Jul 2020 01:10:50 +0200
Message-Id: <20200712231050.5147-1-sedat.dilek@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kEL8vD79;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

When using Clang's Integrated Assembler (LLVM_IAS=1) we fell over
ClangBuiltLinux (CBL) issue #1043 where Jian Cai provided a fix.

With Jian's fix applied another issue raised up when CONFIG_HYPERV=m.

It turned out that the conversion of vectors to IDTENTRY_SYSVEC in
case of CONFIG_HYPERV was incomplete and fails with a build error:

<instantiation>:9:6: error: expected absolute expression
 .if HYPERVISOR_REENLIGHTENMENT_VECTOR == 3
     ^
<instantiation>:1:1: note: while in macro instantiation
idtentry HYPERVISOR_REENLIGHTENMENT_VECTOR asm_sysvec_hyperv_reenlightenment sysvec_hyperv_reenlightenment has_error_code=0
^
./arch/x86/include/asm/idtentry.h:627:1: note: while in macro instantiation
idtentry_sysvec HYPERVISOR_REENLIGHTENMENT_VECTOR sysvec_hyperv_reenlightenment;
^
<instantiation>:9:6: error: expected absolute expression
 .if HYPERVISOR_STIMER0_VECTOR == 3
     ^
<instantiation>:1:1: note: while in macro instantiation
idtentry HYPERVISOR_STIMER0_VECTOR asm_sysvec_hyperv_stimer0 sysvec_hyperv_stimer0 has_error_code=0
^
./arch/x86/include/asm/idtentry.h:628:1: note: while in macro instantiation
idtentry_sysvec HYPERVISOR_STIMER0_VECTOR sysvec_hyperv_stimer0;

I and Nathan double-checked the hyperv(isor) vectors:

$ rg --no-heading "HYPERVISOR_REENLIGHTENMENT_VECTOR|HYPERVISOR_STIMER0_VECTOR"
$ rg --no-heading "HYPERV_REENLIGHTENMENT_VECTOR|HYPERV_STIMER0_VECTOR"

Fix these typos in arch/x86/include/asm/idtentry.h:

HYPERVISOR_REENLIGHTENMENT_VECTOR -> HYPERV_REENLIGHTENMENT_VECTOR
HYPERVISOR_STIMER0_VECTOR         -> HYPERV_STIMER0_VECTOR

For more details see CBL issue #1088.

With both fixes applied I was able to build/assemble with a snapshot
version of LLVM/Clang from Debian/experimental.

Cc: Jian Cai <caij2003@gmail.com>
Cc: clang-built-linux@googlegroups.com
Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Fixes: a16be368dd3f ("x86/entry: Convert various hypervisor vectors to IDTENTRY_SYSVEC")
Link: https://github.com/ClangBuiltLinux/linux/issues/1043
Link: https://github.com/ClangBuiltLinux/linux/issues/1088
Signed-off-by: Sedat Dilek <sedat.dilek@gmail.com>
---
 arch/x86/include/asm/idtentry.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/x86/include/asm/idtentry.h b/arch/x86/include/asm/idtentry.h
index 513eb2ccbdbf..a811f6c6cf15 100644
--- a/arch/x86/include/asm/idtentry.h
+++ b/arch/x86/include/asm/idtentry.h
@@ -624,8 +624,8 @@ DECLARE_IDTENTRY_SYSVEC(POSTED_INTR_NESTED_VECTOR,	sysvec_kvm_posted_intr_nested
 
 #if IS_ENABLED(CONFIG_HYPERV)
 DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_CALLBACK_VECTOR,	sysvec_hyperv_callback);
-DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
-DECLARE_IDTENTRY_SYSVEC(HYPERVISOR_STIMER0_VECTOR,	sysvec_hyperv_stimer0);
+DECLARE_IDTENTRY_SYSVEC(HYPERV_REENLIGHTENMENT_VECTOR,	sysvec_hyperv_reenlightenment);
+DECLARE_IDTENTRY_SYSVEC(HYPERV_STIMER0_VECTOR,	sysvec_hyperv_stimer0);
 #endif
 
 #if IS_ENABLED(CONFIG_ACRN_GUEST)
-- 
2.27.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200712231050.5147-1-sedat.dilek%40gmail.com.
