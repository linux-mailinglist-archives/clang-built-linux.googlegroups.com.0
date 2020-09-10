Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJ675D5AKGQENG6WOBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4FA26477E
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 15:52:40 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id 82sf4463666pfz.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 06:52:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599745959; cv=pass;
        d=google.com; s=arc-20160816;
        b=GF2Zq4w7+YTJY0DWEdmQbkgWiJTAhaZ3qLtVkndc1TR0VeF44IEnngigEtbzgBY3dh
         W+HyGNBmau0vpPFe4BQFukW8lbNebprF1XaHp/f+TuH/UfvTdnzkD+XZT/jacTKvAUDr
         CzITuk12L/s0YUBxcv8ZUKqM8kc+8aoB1zqdM8YBm97a7ji81Rdx118wKGku3QJAmexb
         sPqgC9Mg8eInh6GG8Ah3iT6VyHRcNzkcjn3J0GQJLXTpYkPeva+czXB2VilwuYGd6UrJ
         Q1eAYQJmgC0kChJoEYRgXf2fBFPAA1iDqrsB+t1N0pcBB9cekrk4yuxE1SEeaiLhxqtT
         MNPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=aTDL2iUDBJdLnwFdMS6XRY6eWUjnRmipq6IqA9v4yyU=;
        b=RXS70cJJi4COqQfc73saETluiE8rOWjkh9lnmMbM/Pu5akz2UPFEXwuAP1sPHbX5sV
         +EGZVeFrU9Om2YB5w2xsmv1BriUhzYoBVinmC4lE9bpg2zzlRvRqeqB30L6gPwPAXl33
         wSeuiJGO8GTvrF2q85fkyL4hNvTKbU7eIQlcLJbCsQ/VA1clhXzC3i8ibEXH2Rog7Uht
         BfIVFgnA1yZDXw+eZbvCLR7TRTnAzxz0u5EQ6xqtmjgizNwVurUsHNODfdMmaJFlZzhE
         JUo9T/BAzSFTg7PUYGxiX9zNVBmqyBwoBOVTTh44Pp352P75t7bUxT01vEVF30T77G7a
         lolg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=buyXflRa;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTDL2iUDBJdLnwFdMS6XRY6eWUjnRmipq6IqA9v4yyU=;
        b=DEanTybg1XZNHHizpfRO/cThjdbLurFjeKhixzM7IHLNKrCeWlrji6kfP2QILcpg4O
         vdGb3hiX8CjAS35M8eH7Prxube7ltFZ0VTLi3KoTBFHZQAZhFSCigaVQZeoeWcmCaBwL
         tbS8zEjC7soC+Odaml2rJe82+/efOe4Ga7OaRyh/vO4/gN9Vaj5Re8reH2L3uGSGx1c2
         vFXo4JTtW7EiKuZok1ZwAn1FE6wzXJYADhlW+B2WWXt4V74wcBYl/Ac8ZEmsE2cao/5D
         M7N2KcdrCurmjyQTRSVkScdUUZLNLtJNypTbZtfwgP98D6Fa83J0+Mo9ErJygLj94Y4Q
         6e9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aTDL2iUDBJdLnwFdMS6XRY6eWUjnRmipq6IqA9v4yyU=;
        b=PJY00jkbjIukO87CRiehH5w9Q8fSSVvIJqDhlXzAI54093kUD3fFb1O5cAnpgQRo3X
         q9xUqTdIXvCIwvY+JyEriUbgs57Q3NJ2NVDfoTUvnbnhIUk46VF1XvAeHBPwKAANTUd4
         LIJb6jfCDDrp35q/n5TzD3ANCMZFOt1L25aRLXHgCBvUgJrjmzCn1PUNv9mAx/flX0nn
         uqBGQuUFxP9sUnH0k3khgH82HnGLxSaqw2WKtG5LODMGAEyS2lRmzhH9QAfWWhyCoGLY
         y1+otzmvk3VzMUAAMoSYNySfgKXaplVN8wA8oe21sw3YaxEr/9I1QtNheQglQo3hJ+Nv
         CKKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cNTBL+05CUsxdVzJ0QLy/pNcJz4e6hDJMO0oHUh1t5UFlu5Cb
	fyJiXJGwoh8b7P83Y+haNGM=
X-Google-Smtp-Source: ABdhPJzQCvu+uXdTquppZkLewFop2qfihE1cxwnN7vJAUaAP4ZNuTcbP3agCe2BweT+T5TO5hIW/hw==
X-Received: by 2002:a63:e741:: with SMTP id j1mr4604099pgk.422.1599745959245;
        Thu, 10 Sep 2020 06:52:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d89:: with SMTP id v9ls3205083plo.4.gmail; Thu, 10
 Sep 2020 06:52:38 -0700 (PDT)
X-Received: by 2002:a17:90a:72c7:: with SMTP id l7mr53901pjk.19.1599745958684;
        Thu, 10 Sep 2020 06:52:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599745958; cv=none;
        d=google.com; s=arc-20160816;
        b=iamGWMmTBsQi3bGRymXY5O1HHJutW39QMcdS7sEppO8ZoKoVtCa7MEsIiOh9R4xMCn
         svWdfTSEMWYz8owxkcx1yX4JH2JvMD+6SrVDcq26hirMI3zZo25y2gSK0YSsK57A5rKf
         7cXHSLoJGC5i3IFX0EaLEodobDXALBapJ7NQOdWJ/KU3XYuQTsHZCjFh1KSFfUCIOW9h
         UKcGY0BhXJxPSgE2AUDHf8nrH0pRVsccdMwwZdamgvxLc8ERgIxSieqHV4nuf3A66814
         wborDaB9jHnZ9jeRVYEFbAn9BGplon3ebeOWRUagOgEYvza9GKfApAQ5dxTHKUnPJ4sU
         pTAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=JHjawyNi+2UsmyXrYxyqMJXMi2+rCaAViXhyNLVuK8M=;
        b=jtVFne/AF9tPdJoO6kBFRfUTXCHzzGstPosed3XBsUrcHcSzuXMCXqy2aU97qw3bu5
         Hk9GCHv9RJLLhL3nq0U7aT1fhTg8H/6CKt6Pw8eyeJ6cLoJ26ms/LBjPrBvXtFfffsNl
         DXtz5VnFJAfg0A3hOqK44xvAOmQKR8DbdMGt1DqU4J9NmL5uIX50q/jXOs4Z24H5/u2E
         QQMcxZufSxCPLp/N3pqC7ZA5eqUzGjQTUx7Lb4xbf2yWRl6/VacZHfjNVnbWOM9OzBr2
         hOs2mbgv8UzWoGPIvoMxIhRKQdiHcR7ZJoE91ZYpGOZ+UfOgBvKtd3+slAHqAgoYz4Qr
         GVgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=buyXflRa;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-10.nifty.com (conuserg-10.nifty.com. [210.131.2.77])
        by gmr-mx.google.com with ESMTPS id v62si313922pgv.0.2020.09.10.06.52.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 06:52:38 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.77 as permitted sender) client-ip=210.131.2.77;
Received: from oscar.flets-west.jp (softbank126090211135.bbtec.net [126.90.211.135]) (authenticated)
	by conuserg-10.nifty.com with ESMTP id 08ADpSIv001308;
	Thu, 10 Sep 2020 22:51:28 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com 08ADpSIv001308
X-Nifty-SrcIP: [126.90.211.135]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Cc: Ingo Molnar <mingo@redhat.com>, Masahiro Yamada <masahiroy@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        Will Deacon <will@kernel.org>, clang-built-linux@googlegroups.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] kbuild: remove cc-option test of -fno-strict-overflow
Date: Thu, 10 Sep 2020 22:51:17 +0900
Message-Id: <20200910135120.3527468-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=buyXflRa;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.77 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.

Here is the godbolt:
https://godbolt.org/z/odq8h9

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                          | 2 +-
 arch/arm64/kernel/vdso32/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index 4b5a305e30d2..059b36f2ea53 100644
--- a/Makefile
+++ b/Makefile
@@ -922,7 +922,7 @@ KBUILD_CFLAGS += $(call cc-disable-warning, restrict)
 KBUILD_CFLAGS += $(call cc-disable-warning, maybe-uninitialized)
 
 # disable invalid "can't wrap" optimizations for signed / pointers
-KBUILD_CFLAGS	+= $(call cc-option,-fno-strict-overflow)
+KBUILD_CFLAGS	+= -fno-strict-overflow
 
 # clang sets -fmerge-all-constants by default as optimization, but this
 # is non-conforming behavior for C and in fact breaks the kernel, so we
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index d6adb4677c25..dfffd55175a3 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -90,7 +90,7 @@ VDSO_CFLAGS  += -O2
 # Some useful compiler-dependent flags from top-level Makefile
 VDSO_CFLAGS += $(call cc32-option,-Wdeclaration-after-statement,)
 VDSO_CFLAGS += $(call cc32-option,-Wno-pointer-sign)
-VDSO_CFLAGS += $(call cc32-option,-fno-strict-overflow)
+VDSO_CFLAGS += -fno-strict-overflow
 VDSO_CFLAGS += $(call cc32-option,-Werror=strict-prototypes)
 VDSO_CFLAGS += $(call cc32-option,-Werror=date-time)
 VDSO_CFLAGS += $(call cc32-option,-Werror=incompatible-pointer-types)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910135120.3527468-1-masahiroy%40kernel.org.
