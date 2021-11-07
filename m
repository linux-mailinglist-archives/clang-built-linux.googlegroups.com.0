Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBQP2T6GAMGQESX42XTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AF94473BE
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 17:22:26 +0100 (CET)
Received: by mail-ua1-x93d.google.com with SMTP id o4-20020ab05944000000b002c9c4d839d1sf7660191uad.13
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 08:22:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636302145; cv=pass;
        d=google.com; s=arc-20160816;
        b=DT6u39F0s7gWMyuAyiIiEIHEhiK8gQEObtBR1rufNYRhZ8sc3af4DZyLcs75NGh7kt
         437ZRRCGd57VmaVfmOiiJL60DWgAkwk7Tcc3UKkVM5timzeSkJccebdSpEep9BcckU0O
         gQcjGcU8haPmFhyPvuer7TuanU4RfSCq5Rk1eIgRf2i2cnukstJg1+91u7byPkXzhioE
         ve3u9k6F1BBGXrhD3zJC3XncsBtUcAU8m0IA0vXOdTdD4bjlsoZ49cbgkC9edvEptWYI
         HYBF85AnI34I8XomqHtruY/9Kdp6Lu2hbYmT/Z8zCcn8DWA1aTsssmfsnqYQdaArztbg
         zHrw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=66C5Z2vsmq38ekyGKJwn5NEIgw1BofVua9Wztx+N7Kk=;
        b=ThYxYRQ2Mtg98AwI8zGpr/7+CwXsg6v2bWRqSMZwyQyIkznMvajTqDvcn0w6xY+7am
         daqEG2h+La3fWJP0iYH0tBU4/RlZE2vBmj5LlZgomG+9Ye5r5rUsjH5mskxyCVlLarM2
         1CNYnyg7qbyBt/86ChXdxUdRelbb1ZuytCA6g8Z7pKnoT+fz7jCfuPxRmvgQSj0yQGnB
         IghB+eCoaDvFpHzkEkZDmNJIJXF3vDoCSLG+4qXwljQbKsN8csG3fcOS3t83/O2fPLf0
         VJj0BHravE7KDB/yKTKaVqA2sqYDsxzQZ2NgFaq0mvyliRVo4dGrsWHkLdtq6ziEduRH
         v0qQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Jl0tjuc2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=66C5Z2vsmq38ekyGKJwn5NEIgw1BofVua9Wztx+N7Kk=;
        b=TlbuPkEaFTr+Z7esipeTU7GQTmfMaQMaxQ1zQTOqIbtA/TFM0XniGGiTfAlffTdfYV
         tY1qIvKPNFSZ6TgztFWLe/6xqap62f1w+sZ1n+NA1TGa3CkxCzvfrX1q+1J2pOyzhn2h
         U2iP0jGmeBT1c/8YGJY00VsKqrLK0PnYv/LrhNoeUZFYe1yj+A79C3GDetjGK6wckvYf
         BR7y/+Xs8hbjac0BcuQGuC5nyrLgj61WVzQ8jU6hmBWViqu2yjKyME6xXIoZsufyDJRC
         JVhbJR/SwQYCnk2ZEZF4iyXxnHSfcB2iATIgCh49OXgZ2esOzcN8XW/m4TEdSHQJPYCc
         hjqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=66C5Z2vsmq38ekyGKJwn5NEIgw1BofVua9Wztx+N7Kk=;
        b=gQ18zqIYxOWLaTccJJtWo9JY5mlV/DyeXh93EwbJtbYBbngCuO/86a7fxV6HLG9Rq8
         KykBC6VkrrbfVeqZ2S2PFheozdaddr/JFAelF04xyn5qVgSUFk0fXA+8OMO9+8At/CaG
         tUYIzcdezBwukly4o3ywQRkx8M+k6bdd0xd/8jNrAPszIIKOlt+IzpGbCnxWj69O0bPH
         jLtnBzfAU7H6eUAssX39yFkE6xfjPpUPH0Sc/NbeFwyzWhbMEz3cXinYgvVPgbuX/qXD
         XInm14zlLstBIhh9lFSusqOBRFPsPP00ZEiEyEwTnjsvWKVxQN+F2Qz7GU7d6clOjYGJ
         /ung==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530EgtI6JYM5UFOGiV4lj2Zb8wWmZLvdxDFiXKfCAPo28c1yxLym
	MHQoiDNCw9cc3ir9iAQ1Wgw=
X-Google-Smtp-Source: ABdhPJwuuqUL+BOrOcVlokXQ6WFAVcvW06KAKdykRVWmvs53U0vy46nkaCe6yo+uAUKs9mgEniEVXQ==
X-Received: by 2002:a67:f64f:: with SMTP id u15mr57569842vso.15.1636302145279;
        Sun, 07 Nov 2021 08:22:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:66c7:: with SMTP id a190ls1796470vkc.9.gmail; Sun, 07
 Nov 2021 08:22:24 -0800 (PST)
X-Received: by 2002:a05:6122:1350:: with SMTP id f16mr11919753vkp.26.1636302144779;
        Sun, 07 Nov 2021 08:22:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636302144; cv=none;
        d=google.com; s=arc-20160816;
        b=iqeIaWxMaK6sDmxFyvonmgd8MlPEezt2au/DVYBvNjaeMr+AbU0mIreHnsUShXy7fm
         LhNBPghnX6RNsXEvsPclRClnif2KR/CLAhMr/iTYNDW5ujkoZUWLbWUbuTk19Rk6s+vy
         4hiaGzeQyZAd0GQK7FEm5mFR3+4x7yxCMFwHdMl6gRV77WzFUKfkFdFRNpMbR99d+BzV
         RbypHI+Us7I+XN7xmINnAT2Mhnq/sxFtzDvu/OhVDmJIO850CFozCSTs0isM3RviigSs
         7q0UhvpkPlFs96xpKeIW161cNNe0PPUZl2bzLrgNPba2s/qGWU1P/FZ/3i3VbfygOo4f
         lj2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=LPT7fqng908AUrpkMha16op10BGK0GQAuZ1ffUrIu30=;
        b=iZfzy6YGv11gdZGzrhc5XuGqI5ZbSOWv4jDhAucHRytHnVw4+PKur0N1tuppBkLqYr
         FSoAkybHkjLU7WLHAppAp0+Yi8ZI/Be5sfvENCD9iwZ3C4iNdMd7VIwjef6lu3Cizo0S
         Tq6quwaumMQyuIEBFnRT/XZ4+rfiEsMoJeONHNTYcUQUZngyggXluO+4EvqYnM3sNVz+
         KCxzi95TQJfmkeLBtOrUFIo1x/CDz4BFYtVKkcxQcxHjkJ5RzpoOfRRBKrcvNsS+jQIX
         UldZX6hgpnUXdA03ZhykKkFDNuGJWlpUs8IyjYRGCqqjX27KiKLk7JHpHhmpmbArhAWp
         ecOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Jl0tjuc2;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-08.nifty.com (conuserg-08.nifty.com. [210.131.2.75])
        by gmr-mx.google.com with ESMTPS id h133si874871vka.3.2021.11.07.08.22.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Nov 2021 08:22:24 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.75 as permitted sender) client-ip=210.131.2.75;
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-08.nifty.com with ESMTP id 1A7GM2eN016622;
	Mon, 8 Nov 2021 01:22:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 1A7GM2eN016622
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: sparclinux@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>,
        "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org
Subject: [PATCH] sparc: vdso: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 01:21:57 +0900
Message-Id: <20211107162157.323873-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Jl0tjuc2;       spf=softfail
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

The -nostdlib option requests the compiler to not use the standard
system startup files or libraries when linking. It is effective only
when $(CC) is used as a linker driver.

Since commit 3c2b2d9408b1 ("sparc: Really use linker with LDFLAGS."),
$(LD) is directly used, hence -nostdlib is unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/sparc/vdso/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/sparc/vdso/Makefile b/arch/sparc/vdso/Makefile
index c5e1545bc5cf..18be71250a0a 100644
--- a/arch/sparc/vdso/Makefile
+++ b/arch/sparc/vdso/Makefile
@@ -108,7 +108,7 @@ $(obj)/vdso32.so.dbg: FORCE \
 # The DSO images are built using a special linker script.
 #
 quiet_cmd_vdso = VDSO    $@
-      cmd_vdso = $(LD) -nostdlib -o $@ \
+      cmd_vdso = $(LD) -o $@ \
 		       $(VDSO_LDFLAGS) $(VDSO_LDFLAGS_$(filter %.lds,$(^F))) \
 		       -T $(filter %.lds,$^) $(filter %.o,$^) && \
 		sh $(srctree)/$(src)/checkundef.sh '$(OBJDUMP)' '$@'
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107162157.323873-1-masahiroy%40kernel.org.
