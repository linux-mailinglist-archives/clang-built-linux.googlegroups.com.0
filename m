Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEX2T6GAMGQEXYIVIXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C054473BC
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 17:21:39 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id kj12-20020a056214528c00b003bde2e1df71sf7624486qvb.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 08:21:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636302098; cv=pass;
        d=google.com; s=arc-20160816;
        b=FqINubEdkEKT/JK+Yr9iH+BBYgilVjpZW9jUZQktEiFrWjzYo+xClQM4Tbr+NhOn0T
         gmxTKlfhMA1PUW6jEXos9bskXIwYNCHeAnm2WSXCmLt6bONKpNaKmSOB2o7vAgzlIp6s
         eOw6SK3wQI10/nUYexUb0uC344sGtQXn5733bKH5RXT44vAsm8jq+lWw82OU/a3weL3w
         zf7/h1Q3YcMBJaR99CU848aYlHq8zexQniMXjK82i4B6ixcPxU9ByGVR/zmrhavjlU6D
         q8wc4ccTvIIFRwnBnhKZX5dc7DE/ZpYZg8mBpXY0S16QmIpb/3dIDW7x6rrznAaWbTPh
         CNXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=lmwh4Y34Niv4tW175jGjaIjTeodcjqTbi/bmVCYnIjw=;
        b=r25gWop8PJpsStLczMCzQb+YahyC6nVR4AVWGDFYwncqjv+RULK1rjFfLGuC/FAf6u
         RdgWxYzTUXJlD3fj109SYUpl17uOHZk8cySeOnF7+Nd28IP6QJNUyy7jedyqxeXuyaDh
         5w8kmPvvrxN7lCVV6gDbwIYr2lmrOWnhwds6sznSFed1gF0tr6zpRaoY//xSZxIvFyoZ
         47yb8364MRBtV5JtuS63TqxJT5extsV/lcMNuJ2rzxydM3ZTCida9GSkgxYgcHj8sp0W
         0GZxAcVh0BrwZWJ0Z8rrYu5r6zUo+UKO7manBfYTKsSCUWj1MW/pXEYctj4j3D6UIb3H
         46ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=m0YHGAor;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmwh4Y34Niv4tW175jGjaIjTeodcjqTbi/bmVCYnIjw=;
        b=mPHFxSOOND4a/AS0micDqvAsMkcY2e0tMYMown+bXKyR52I18TNQhLv6gkkUwElyti
         x4l2VzW9lhQhUhR4NY0VgBLHtbSF9xZCY4n2PKj/WwoH85KdAQP313CTuT2EcO2ogWYP
         gs5vQ0OPUFs8HerKtq5pZQ5cErXTvrPJEsZpVjtL+R2K0GW6DeHTtGs2mRkUUuy2nNjD
         g+/sKn9Qcvh8CnEUKC4GOCsqMWJhMsbVJJyOgQRfP8y5lfrFHHhkGdyHmH8A7wmZu8Lw
         J4jniIH1ozc+TE35I+EfRA/8LMRgLC+bbNvedMpkXNQ9Mo2a7lLYz26ifvuPRVI7qbHj
         Nsig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmwh4Y34Niv4tW175jGjaIjTeodcjqTbi/bmVCYnIjw=;
        b=7vu+9vRV8m8sgFZUi90zzeCwzsn6BYf+LotHJcxJhPmJT4q1FgnrY2sigLS9WGh2bE
         tbTns7ONYDJEBR1dZ4CacOVeEK8AnJeDPSsr8g7HF7YcPbzlToV7/L5lUoX4Q64wXS98
         C20CqGL4L0fw84tKLkOva+vAeGnCxowYRv+W+XdlXaeZnKWomedS10DfML2MmtNyxd15
         9Ps1WAQyxjVPqh9mNuIwsyp38Szk4+3DSOco9Qm2lBgJowQp9ZvAI2ioEgOVEHOF5Elv
         65uhaVdqezlwWNDyH+mqIAspFKLXqRWwCMmVSWE/EI8YkTS9ye6W7EqPbqvIdePytSVt
         DwQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tsp3fPdDZGLM0zTijGw6kwP5n0QFkQJJ+13Uo7pv4XvH5hKbD
	dZthpJezJazHwTKAv73EiUg=
X-Google-Smtp-Source: ABdhPJwfSzYdE2o8/vLIlakbiVt5sHMJ9ps1aLToMtqfKVvs+urEaGbjnO7k+Nk0G6+fJCOlvCvc9g==
X-Received: by 2002:a05:620a:240b:: with SMTP id d11mr49670621qkn.455.1636302098760;
        Sun, 07 Nov 2021 08:21:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:19a2:: with SMTP id bm34ls7639976qkb.1.gmail; Sun,
 07 Nov 2021 08:21:38 -0800 (PST)
X-Received: by 2002:a05:620a:44d1:: with SMTP id y17mr60565166qkp.235.1636302098338;
        Sun, 07 Nov 2021 08:21:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636302098; cv=none;
        d=google.com; s=arc-20160816;
        b=x38zlbEGOZLt/l3GAnmoZVZ5g2N6/MdnnToI7ypMYND+2+ZACeIf18AbjaZ/04eYn/
         z58NXjNp5T/Lc68M7De4wnMIGiouhFnbyU8lU5mvX/3YKtW+EzMYYqMBOeu5eQOu2d0X
         gj/I1VmhHyyPNnwmIemkCtU1iIB1rcd9IV4QSXT9GEMlBdsrG/t2GpamCK+Fc/4Q5QLg
         PvMMBbhsaUL1HQZrT4rPTtfd/PE261IILNIGXb5MmQ8ALUT1g1KvdO9pTUmdxbukIv+B
         aghQJnWFcJ9uZhJvCQo0yewQlFFIkzlMaIUcs7EEdUprHuDpMGSWeh6aYOa4k61CE9fG
         NmlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=s1NyX1ZaqRz0lA+F7W3QeWU8jgMRJfk5xOkduk3mJDw=;
        b=PpG2cTJmlrblL0oAM4jUPl5lCp3LWVlhUsdBVzLzj4rEqGmc4tV8ijYMqLEYjWEkwI
         IBnsFJVgNSmdEQDvkhSWJIAGc2sWqMhf55e9P2BxFAMllFOGvyGwkA+l9fTlaMm+a1bT
         jaAWv25vyzgZbKfAnkDQSBP7bacqEyQo33tHXWogsaHsS1NefPi3foX3uLEyV60s3hk7
         xzBYMl233W4XlmNUCbHdwxtdHCX6LK6m4hnHJmi9dfHMZa2U2EtNdatNLDOluMJsvozE
         p2yu7n3J+939WBrl+4QJCoZSe/ngwtQ1okuFOancvRvW/4pBahmdc87SlSHhcG+g5OY6
         WkQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=m0YHGAor;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id m22si725402qkn.2.2021.11.07.08.21.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Nov 2021 08:21:38 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 1A7GLGH8014967;
	Mon, 8 Nov 2021 01:21:16 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 1A7GLGH8014967
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Alexander Gordeev <agordeev@linux.ibm.com>, linux-s390@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>,
        Ilya Leoshkevich <iii@linux.ibm.com>,
        Sven Schnelle <svens@linux.ibm.com>, linux-kernel@vger.kernel.org
Subject: [PATCH] s390/vdso: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 01:21:11 +0900
Message-Id: <20211107162111.323701-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=m0YHGAor;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

The -nostdlib option requests the compiler to not use the standard
system startup files or libraries when linking. It is effective only
when $(CC) is used as a linker driver.

Since commit 2b2a25845d53 ("s390/vdso: Use $(LD) instead of $(CC) to
link vDSO"), $(LD) is directly used, hence -nostdlib is unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/s390/kernel/vdso32/Makefile | 2 +-
 arch/s390/kernel/vdso64/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/s390/kernel/vdso32/Makefile b/arch/s390/kernel/vdso32/Makefile
index e3e6ac5686df..245bddfe9bc0 100644
--- a/arch/s390/kernel/vdso32/Makefile
+++ b/arch/s390/kernel/vdso32/Makefile
@@ -22,7 +22,7 @@ KBUILD_AFLAGS_32 += -m31 -s
 KBUILD_CFLAGS_32 := $(filter-out -m64,$(KBUILD_CFLAGS))
 KBUILD_CFLAGS_32 += -m31 -fPIC -shared -fno-common -fno-builtin
 
-LDFLAGS_vdso32.so.dbg += -fPIC -shared -nostdlib -soname=linux-vdso32.so.1 \
+LDFLAGS_vdso32.so.dbg += -fPIC -shared -soname=linux-vdso32.so.1 \
 	--hash-style=both --build-id=sha1 -melf_s390 -T
 
 $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_32)
diff --git a/arch/s390/kernel/vdso64/Makefile b/arch/s390/kernel/vdso64/Makefile
index 6568de236701..e7d911780935 100644
--- a/arch/s390/kernel/vdso64/Makefile
+++ b/arch/s390/kernel/vdso64/Makefile
@@ -25,7 +25,7 @@ KBUILD_AFLAGS_64 += -m64 -s
 
 KBUILD_CFLAGS_64 := $(filter-out -m64,$(KBUILD_CFLAGS))
 KBUILD_CFLAGS_64 += -m64 -fPIC -shared -fno-common -fno-builtin
-ldflags-y := -fPIC -shared -nostdlib -soname=linux-vdso64.so.1 \
+ldflags-y := -fPIC -shared -soname=linux-vdso64.so.1 \
 	     --hash-style=both --build-id=sha1 -T
 
 $(targets:%=$(obj)/%.dbg): KBUILD_CFLAGS = $(KBUILD_CFLAGS_64)
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107162111.323701-1-masahiroy%40kernel.org.
