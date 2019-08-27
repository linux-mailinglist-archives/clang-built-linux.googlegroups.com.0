Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBXPYSHVQKGQEB722HEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id E80B49DAC3
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 02:42:05 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id c14sf373098wml.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Aug 2019 17:42:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566866525; cv=pass;
        d=google.com; s=arc-20160816;
        b=GmW8xRez9Zr/IaXvvlH5VIRuXvRrDcJWabLUt9nSX/n7htQKGPsU4lZbEugGzrQyV8
         7rwBac7GRGctqa9oZvLjr9OdTO6l8B2NEsQj+gBqLTSTszG2p/i1n/5454OY8dhx84U9
         cnQmDMMA3jqJHjyu4q7uWDJmvQjsPZ0CNiku1qveeN+JugxzQMwVa7EUAS2BD6q4Gb1f
         mvmT0glVbvxlvtdkeHu00u70D7+3O+CAr8iGtDPqT02NYa+snZ/DJ2WjCL+M6qiJZ/8K
         wqRIItN5xyUk/+ssA7rgUjrVb4SPq4l4opLVPvYrPVpkKNMyfiS2V/5fm0BHhR5pj8F4
         wqwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=KRlPC/nkjJiBWAq1cXHI35x2vwlZ+aDnzjM28L1Ci1Q=;
        b=c8pbuKVMWFl/BA6096RkBSY5Bz3jBYmKK3qe0FoCuVxyzW/oRzAF9XclqeWJQxscVd
         mtpyqNXYapoDlRum2iDCPjZOQLqMdR8bL+GMpyF8ujp6XHexHw/KvJCRkDmVgjh5cFc5
         TZVhUzgw6J/1DUprcewd8dpBSlA2OCCFdTtudq4JiPsfTDuwSRjpNaL5xoZo2fmkNyJ1
         J8l1pwE6DCW5M/SiJAJSFlBbWus89ttREdrKK3pmiKcUU0m/B0ESl/Tn3DkxUstS2BiU
         GsOHRM7qTzGXzGZAwljyrcTBCuRl8DZ8KoFCUImFCQWhfpLSPk2Wu/bK7OFO7RXVcteg
         6COQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PeDP1g4l;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KRlPC/nkjJiBWAq1cXHI35x2vwlZ+aDnzjM28L1Ci1Q=;
        b=gIpfTUYMc0zacgACXGKu7u31FAa7nDqfUlTdSiIBjv7LOGL9yFibrW1kscaby3RuX8
         3enuEBqlD2LH0PUVqqF/kmQdhTt/fIxh29Q3tdoZHUG9iun+g8NHYJJwu6t03IPnHBvC
         Ybqb+YPNLSQuc5mhrKnZwguOT8c9t35mchXgePrmae10kWaSE0/g1vnkl6f+v0kOPKVi
         F7UHH/B1oLw3mDMhN4BSR8UE01+1qbIA/gp0Ih1OFqPj0TpZTJVzQoBVbVVqGG1JMkI8
         ANloGQ7z7ZH9gcrQzyOyk77GSk/nQzafTmYykEN/DPNh2RILIpY7fu83GjhwpDHFYoI4
         RzAg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KRlPC/nkjJiBWAq1cXHI35x2vwlZ+aDnzjM28L1Ci1Q=;
        b=Bpv3//cJyYzGRKmMRwysjyk7al3L8vEGJu3I8TpUcpHaXLtPZ77cZeF+iBac/BfLWH
         iOvsgPY4J5mDYydEA1iYbKAMQ/3bAOHUoTzSDWZuiqMEqm7wsPkncGT0V8I623dKBD4u
         uz9nDJFX9d4iXilmsBumPGi3Ko6okd0qmkPkS+cW52KAPyG0OiVUqg86uHqelz7bIcEc
         j8iufDqHywItIZoXicKLWV8dJOxgisIX1yD+hYebMb1vDrN8Esmuk0UUkr086TvW2G7D
         0cdi9WzqPl0hw/k/X6d+wjG1NrC2PSlEcLx9gOxLLPNLaLH4DibupLiT6JYr9eJ4wEUO
         gqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KRlPC/nkjJiBWAq1cXHI35x2vwlZ+aDnzjM28L1Ci1Q=;
        b=grsXoiEEZpZ2T5+Zj6ol+geVdKPxUD4vqGg/N8tXcKHOdp5NppFOVAkfNQ4ua9Ms4U
         4iiv57jBIORzG96VEPjpa2JHUZ0B05AEF/jyYwAq3wOwk/mu84mKaFQ65N5bA8aJ40fI
         3tDQXJiCwOa+qrk8Q0c5AphvxsOxGGl10UBqzdLvpK+5G2I5AaubJcfNmve8SbA04diK
         6DK1tv8SfFOA2cdMv189dnnCOXxKmdAO2vGnNbkN7x/nOJKE1hR6d7UARMrkIxgrythh
         RtU7r3SlZgnsnngHNhkbctiVARnwIBCd4KLqyhMGeAYZ2t5GxI7O22CTxiPcDb+aZFwv
         3hzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUPIxVT0beIBQm1a3dK3OifihaLdvlSkxrEYahPolswJ3Owy5QM
	hu6ffPjg+L/yBL+cmEF8Efo=
X-Google-Smtp-Source: APXvYqxWjHalHcnpv0akKBnkpS0c1saJpmxBDz5+dCfbB/g0VcQ/tj6yz62fwXy3rbDy47bGEJ7hjg==
X-Received: by 2002:a05:6000:4d:: with SMTP id k13mr25573141wrx.196.1566866525641;
        Mon, 26 Aug 2019 17:42:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a557:: with SMTP id o84ls6843696wme.3.gmail; Mon, 26 Aug
 2019 17:42:05 -0700 (PDT)
X-Received: by 2002:a05:600c:22d7:: with SMTP id 23mr25574823wmg.0.1566866525190;
        Mon, 26 Aug 2019 17:42:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566866525; cv=none;
        d=google.com; s=arc-20160816;
        b=pgEbIS8aLwqaCBJyQZEMXsbnSXPcb0R/9ZORsItuoTxf1flLC/80b719lFxPFR35u3
         MIb4rsvs61gfdfWxnfDqZPQUqKrDongr/x06rtOfbC0EwH+3oHeo7ITZwtBTs8zttrzh
         9oMvn/J4wxy8hhXJwP/UyYe4omVg3q1DHVyuqY3EsOiKurSqEVkqj9T9gukcaz203DdV
         XIv1GgmyfgfpvRebBMem2u+TxhU10941M7pRA+V4wWIkX+QZljAy0OfLsjITZYX9tCLf
         K+SI4Mvh89jRnJkAsF+S5CwB3BAGPN4t27DVRwB931omakgo+dLsH3v8dd0cnyaSPeHE
         A5ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wraJLvz6EmcrQqM6J8VAkrpu9wLHEffkySlFIVb29F0=;
        b=0FnHyS2R0WV9ydy/wt7WfIwO1mQnepFw8iv5UGOvpIcpzLYa3fTK8DR9vIKGUakFG2
         74SVKJsANe9/G4qjYocS30aH7HgftIhF687l5+aDrzGyRK5GrGX7ZIBTU0C2JK16SaSa
         qHIPhBgzBrIvvcoOTHIvqNmc9AYjVcaTVjch8PtSamhvIgwm/yyJvchwIP/RUbveH1we
         NgSfw7/HnYjYVtoNnIxrkdyDlQhtjx+5ZNKqZ1Ry3joM4D9C2xHc4bUwNNHUQm/FIm/X
         r33xLUxA0o0U/raPjnRXNC2HkHdz2PpgjZGE3muXc/DPRNkOARhrGfjPE1HJ9ywe2YWd
         N7IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PeDP1g4l;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id r13si504023wrn.3.2019.08.26.17.42.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2019 17:42:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id d16so1175139wme.2
        for <clang-built-linux@googlegroups.com>; Mon, 26 Aug 2019 17:42:05 -0700 (PDT)
X-Received: by 2002:a1c:9648:: with SMTP id y69mr22955151wmd.122.1566866524573;
        Mon, 26 Aug 2019 17:42:04 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 7sm882049wmj.46.2019.08.26.17.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Aug 2019 17:42:03 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>
Cc: linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Nathan Huckleberry <nhuck@google.com>,
	Joe Perches <joe@perches.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: [PATCH] kbuild: Do not enable -Wimplicit-fallthrough for clang for now
Date: Mon, 26 Aug 2019 17:41:55 -0700
Message-Id: <20190827004155.11366-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190815225844.145726-1-nhuck@google.com>
References: <20190815225844.145726-1-nhuck@google.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PeDP1g4l;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

This functionally reverts commit bfd77145f35c ("Makefile: Convert
-Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for clang").

clang enabled support for -Wimplicit-fallthrough in C in r369414 [1],
which causes a lot of warnings when building the kernel for two reasons:

1. Clang does not support the /* fall through */ comments. There seems
   to be a general consensus in the LLVM community that this is not
   something they want to support. Joe Perches wrote a script to convert
   all of the comments to a "fallthrough" keyword that will be added to
   compiler_attributes.h [2] [3], which catches the vast majority of the
   comments. There doesn't appear to be any consensus in the kernel
   community when to do this conversion.

2. Clang and GCC disagree about falling through to final case statements
   with no content or cases that simply break:

   https://godbolt.org/z/c8csDu

   This difference contributes at least 50 warnings in an allyesconfig
   build for x86, not considering other architectures. This difference
   will need to be discussed to see which compiler is right [4] [5].

[1]: https://github.com/llvm/llvm-project/commit/1e0affb6e564b7361b0aadb38805f26deff4ecfc
[2]: https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/
[3]: https://lore.kernel.org/lkml/1d2830aadbe9d8151728a7df5b88528fc72a0095.1564549413.git.joe@perches.com/
[4]: https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432
[5]: https://github.com/ClangBuiltLinux/linux/issues/636

Given these two problems need discussion and coordination, do not enable
-Wimplicit-fallthrough with clang right now. Add a comment to explain
what is going on as well. This commit should be reverted once these two
issues are fully flushed out and resolved.

Suggested-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---
 Makefile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index f125625efd60..6007a56bdbee 100644
--- a/Makefile
+++ b/Makefile
@@ -751,6 +751,11 @@ else
 # These warnings generated too much noise in a regular build.
 # Use make W=1 to enable them (see scripts/Makefile.extrawarn)
 KBUILD_CFLAGS += -Wno-unused-but-set-variable
+
+# Warn about unmarked fall-throughs in switch statement.
+# Disabled for clang while comment to attribute conversion happens and
+# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
+KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
 endif
 
 KBUILD_CFLAGS += $(call cc-disable-warning, unused-const-variable)
@@ -845,9 +850,6 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 # warn about C99 declaration after statement
 KBUILD_CFLAGS += -Wdeclaration-after-statement
 
-# Warn about unmarked fall-throughs in switch statement.
-KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
-
 # Variable Length Arrays (VLAs) should not be used anywhere in the kernel
 KBUILD_CFLAGS += -Wvla
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827004155.11366-1-natechancellor%40gmail.com.
