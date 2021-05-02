Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBV7DXKCAMGQEPTI3XBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 06358370CA4
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 16:06:17 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id n128-20020aca59860000b0290159ccfcbd31sf2343210oib.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 07:06:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619964375; cv=pass;
        d=google.com; s=arc-20160816;
        b=uiFCpnPMPW71PeLf5RwXJ68fkgM4KiCWouQXF+SfTPLirFusAWqayU7l7SqpU5+epT
         +xd1BPFt1YISher6f9oeFCh+4cnzrh+Fyl8AhCMN1OEauUO7ycjekzTq/IrI2+C2E9+S
         ZvKOamh/o5dd0l3QT0XCKUv0+HVAT2Ym8PlP8SxRXlM7XB1tVY+ZJa7W+3spEGEf3129
         g8XqB/7jkM5xwC27Ekinqvi3s36pJ7J5M0p/dALYp8EnUb34mmKX/ppNJDSZHmJetFyZ
         NLtIXfUJSx+F79PMS58e2/MmMQWa0xpZ9FKWe1Vj8U517eQA5+RKWuNY9d8lKb6PUC8b
         lCmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=FHpoLcBMWWECd5PAWsZYPf4RZL7YM7SFgdGfb1nejvQ=;
        b=0i1RNcya2sVsQ6pM1PbcI2ga+tm4rKjmp9Bz7RjkcMT/OsmQmgDsXtSUZ/lGkcUpx4
         CERPfmDf97EvbFRMB7mERLbwOqyyVtAcnO9xoKS9HNFzPxtYG04y3qx0wLC07Y1H1FNA
         ezf9EyeXNdWp3J8/fMKm3I8rYsPbfAj1YtFziIJcg3mgEqbeVQT1leUb2/xhe4D+E7bv
         ZVUjlUvnFK+51CHhwbRKKbQ1zqkyszCqYG3FKWOTWwNSDZoQHKK4Fow1Bjqmx8/nNG3q
         uftCQJy85Y4y3bGG0eUQExWL8zX/+IjsHQk/6PcHj7xC1JyeIlAc0pRwrlc2Z3EDDj57
         Ru7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mEzzr+zB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FHpoLcBMWWECd5PAWsZYPf4RZL7YM7SFgdGfb1nejvQ=;
        b=bJEwL21zve6NJ8qlJOxEr4oNB4nqLOK3G0VlC1lhdQLTRJ+W7+cgYKkldrcRlJUT2A
         Uq7gcm+RGfM0qOdfP6XcE/dngOOi937FZMSNhUXaeiDdyZleVFjKA+/FjSLbMabr+nds
         Nx1RBkCldBsxKMop9PbJmlfzZbgG9HbkJX5udNFWV2g7BFJpU8l4w40EhD4y8L0kHBue
         zbU+mN03bMSJMP3pykBHNUbenDhbva1ShOAEkqp8iyZLFw4ie6xVN4jSqzHVqENkoenu
         9f1eF1pQruGGNjC2tId/04fyTmxlrXKh6sSeY2onWVwTUdCRJHqfqLb97QxIawnOFZpV
         jJGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FHpoLcBMWWECd5PAWsZYPf4RZL7YM7SFgdGfb1nejvQ=;
        b=qpJT+zqOsZhT2hL6O5z4116dWRnihfajDb9zYNY/F4ajbBumoFB2/Y2zouaUUvPF1N
         0CkpfE1IRX+c/kovHfjb0B2jrJUhevanolsMf2/+Zdglz0DnanL0fx9BXCcMuazl49v4
         L7eHjOk53ixhr7Jrmxreg31RPN5rfPdo/14Ekp8/bFBy0XEWBJ26N9Ae0tF3I9ea2dTK
         lLDI7hFWSrmpK6PPN+Y2cvaa8zuRhOVFQxxDjSF1T6unsO1PxSHs04fIZWfpFjB1YI9b
         mvdqjw6l+34LZNXELh2SQ0/kELL9sttfGQP67kgyVSx1wynv3jjyF8lGKNR3hvsIYa8n
         fm9A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530KQ1nfZNHDWTfhbZ5KcEjsFTJlyxo567wSTDyrHt4Rj/SKLgjL
	r/y83cf+vG1oM1PmP26p7Y0=
X-Google-Smtp-Source: ABdhPJyGddAPMbdPkwwYNgE4x6UxZbPXztj9K0WA4TNZ5zikbG680plF8jmtVDEGsgTqgtn4zUyeOg==
X-Received: by 2002:a9d:6317:: with SMTP id q23mr10763591otk.151.1619964375541;
        Sun, 02 May 2021 07:06:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a90:: with SMTP id l16ls172690otq.6.gmail; Sun, 02 May
 2021 07:06:15 -0700 (PDT)
X-Received: by 2002:a9d:4e9a:: with SMTP id v26mr11198520otk.74.1619964375152;
        Sun, 02 May 2021 07:06:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619964375; cv=none;
        d=google.com; s=arc-20160816;
        b=GpNsXpRCsTNp8QjcCQo4sQPKr8EJxoVBsDiEy9zKyiPB7plUN0qG5L3JeXIIfjebfz
         rXkVXE/ZmUaUI4X3/lnOBDzIFxvBfdDdGK4+CEwqRK6vULca+dyro5OIV5FhJQSr2w28
         PqmoBGM5M1esI4YvSPNoGM4eAjH7pz4rx8Mld53LOR18Ek2DFUKCP6Ekhbzr15iRYwZx
         vDMpF4s4gq7YTZjXTha2ilGF3P2RTthmU7VtgtbXq+73PgnEn3O+vSoIsJks9SrfqAHU
         CU8DbGxpVmt1V4fp8tPZPsKMmUzovjRktoeG5u81BvWEg9sbT4IlTZ2LqedBqwGvwF7d
         b6tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=+1Ta055Utx+l1kEfgya6K02zreXuokEp2giFxs7i1II=;
        b=mElZSBQBz+n2dmLoFlbPapUuRQxSKgBvLNqdfbixOa/9jHel2Uy/r8C2UiRw1xtfGQ
         2nO+/7KXjr6HOebJL+iz/7PitRIJv11YcaLDVJbbN5DYv//nbgGkcVotKsicLbW+gWYq
         zuUfQVWW8hp6LJ7DWM5/nZ2MBh6qzXG9iQ7GRALnz7+YPsfuiVC8uIkz3eHsEx1jUGys
         9GGMRBIDYr8qoQiXrJFgoFp70Ike5qDwII5+ZjWQsv9W0kR0Ic21KcoQtue8i9zE8bFp
         92ivH7P90gcEfB6aXuQZDDn4DwlqP4iev8q6+rAUZVbDFyAPSzWYGAZ/BKx++z8aG/TW
         aQXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=mEzzr+zB;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 4si457935oiy.5.2021.05.02.07.06.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 May 2021 07:06:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6CB2E613CF;
	Sun,  2 May 2021 14:06:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: John Millikin <john@john-millikin.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Borislav Petkov <bp@suse.de>,
	Ard Biesheuvel <ardb@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Sasha Levin <sashal@kernel.org>,
	clang-built-linux@googlegroups.com
Subject: [PATCH AUTOSEL 4.9 06/12] x86/build: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Date: Sun,  2 May 2021 10:06:00 -0400
Message-Id: <20210502140606.2720323-6-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140606.2720323-1-sashal@kernel.org>
References: <20210502140606.2720323-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=mEzzr+zB;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: John Millikin <john@john-millikin.com>

[ Upstream commit 8abe7fc26ad8f28bfdf78adbed56acd1fa93f82d ]

When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
contains additional flags needed to build C and assembly sources
for the target platform. Normally this variable is automatically
included in `$(KBUILD_CFLAGS)' via the top-level Makefile.

The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
plain assignment and therefore drops the Clang flags. This causes
Clang to not recognize x86-specific assembler directives:

=C2=A0 arch/x86/realmode/rm/header.S:36:1: error: unknown directive
=C2=A0 .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real_m=
ode_header
=C2=A0 ^

Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
which is inherited by real-mode make rules, fixes cross-compilation
with Clang for x86 targets.

Relevant flags:

* `--target' sets the target architecture when cross-compiling. This
=C2=A0 flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
=C2=A0 to support architecture-specific assembler directives.

* `-no-integrated-as' tells clang to assemble with GNU Assembler
=C2=A0 instead of its built-in LLVM assembler. This flag is set by default
=C2=A0 unless `LLVM_IAS=3D1' is set, because the LLVM assembler can't yet
=C2=A0 parse certain GNU extensions.

Signed-off-by: John Millikin <john@john-millikin.com>
Signed-off-by: Nathan Chancellor <nathan@kernel.org>
Signed-off-by: Borislav Petkov <bp@suse.de>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
Link: https://lkml.kernel.org/r/20210326000435.4785-2-nathan@kernel.org
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/x86/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 9ebbd4892557..0bc35e3e6c5c 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -40,6 +40,7 @@ REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMOD=
E_CFLAGS), -ffreestanding
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -fno-s=
tack-protector)
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), -Wno-a=
ddress-of-packed-member)
 REALMODE_CFLAGS +=3D $(call __cc-option, $(CC), $(REALMODE_CFLAGS), $(cc_s=
tack_align4))
+REALMODE_CFLAGS +=3D $(CLANG_FLAGS)
 export REALMODE_CFLAGS
=20
 # BITS is used as extension for files which are available in a 32 bit
--=20
2.30.2

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210502140606.2720323-6-sashal%40kernel.org.
