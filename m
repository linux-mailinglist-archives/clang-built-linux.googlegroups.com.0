Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBEPZT6GAMGQECZ3CGNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6D44473B5
	for <lists+clang-built-linux@lfdr.de>; Sun,  7 Nov 2021 17:19:31 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id h8-20020a05622a170800b002acc8656e05sf1604410qtk.7
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Nov 2021 08:19:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1636301970; cv=pass;
        d=google.com; s=arc-20160816;
        b=fvSiJpQPvsOHYG9AISd7RH4iXo9GuePy8kQbV0BJ/vGsrqb+rPuBxQcgeD/rhiDfNl
         3UHG4BuAG8ItpeJzMsiu3SnQbgGlCuX1lbU5egUJxPoDTQP25+GJpeyjfgQK/M50OKmv
         66KcJ/UOdiPFzfdEGXt/NfdiLQfi8/C0x6Gq75pYDCc80JK3VrGprlyWKVZ5znuwHW0w
         ejSSzJY4fsod/lmmYLI/TyrAUL/Wm4OFqlp/gsQtZiFW0QsWBwK7kQ01AmJp7bRKlVJC
         iJD+fpuuzbPMZS4luvBkBeiqixaYnTg33MrcdScujswVNye96pTqhHYaRassoHYRYVR5
         R6Aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=i4iD6YNpb8fJKmNaNR6+JVyfKtSKt7neEbUv3V/gehM=;
        b=Aoe+1qafWEdqUVkE0FGPcHabNA/hrXgiWmHLRZv7JG9DZ/wwM1JJsCOcDtwExUthEf
         NJQYEUD8NZViJiDSF8kF/MYVhbNi8QKDrGOGtJmlNL0Jr7R2Y6bNXgP78zA4o9DrTgri
         4MjpxqxCXZ6YhUPgjIwfzfSJxU+xF/OMBd6GuW3y3u0G7qSpnoBzb7/oNSDOEytWXsmI
         bOivhqARKiflt4evF0NtDUj7W7k/lR95svmS++XCajTW+vAYihaVeZefPzlXdcHUqsvu
         7G9NDdJLUgRIzToQwWL6F1KqsZ5l6qonmYtyD8S251l3EIytQolDKzb0P31bveBhVi+V
         kJfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=acS5ty7T;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i4iD6YNpb8fJKmNaNR6+JVyfKtSKt7neEbUv3V/gehM=;
        b=obWoifhgEQHqpP5KMBZxE8IC0PxXZ/DZHEH5Jb0x2BhYLpPipbxYwGhjJ7uDEXaC2k
         EkXZSJIvjxNNymDyqMILXgSj8c1u+NUO6pbW8pkJmXH7NmvqOqVBAnzD30jab8S+R69L
         xBhlBpL5yNZXIQ8ptjrjdRnb5CCzy80pb3gcQGAf5KxZ6vjzeucmmkkOuBpZPkxSm74Y
         E9sohyZAXhG8AQ7TMV7tYurVtdu6rVtUrgvFtwxnq7fWaDd6MoFJrabxz2I/Rf6/PJg+
         RbBFuwxPB3GV/cUUjKlMX7LWBqz1Mc5D9CXDNTQWi/7dDUP7YsPHbF0S5odG34RIpR6L
         dk4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=i4iD6YNpb8fJKmNaNR6+JVyfKtSKt7neEbUv3V/gehM=;
        b=RebLnXmf1If29oRE6vMuqSHKlciU3PlEJUfzqxEx9IF63MjH5yewYx9U6nyS+xjz44
         qro6iWmjLAC7uk8QqST2eyP/0KhWeNrbZNHTe6mamkUO1BnmLDO1pCgvne6DsFtv4X+D
         PGJSeYvCgd0YtbsyDqgrgQoEQHXBgI7YlsaA4Tnb61wAoKQUEOcHj5pLEvgBoSEkwqD5
         Y0+9wSj8uIvdP+iXsqKXFkiipvbQtsmcK0VvZnBSvJX2k0HJzgjO/A7Iv6LngN8xpCVp
         6QOSPVm2Ub0Zbm1LdHyi4bAAchkxdlyxYVXd+7/mPPJS+4IpKnD33v9/Wn51BjhaLkms
         wCIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530N0zqKacH4nBXqD+Cl6gIdY59Vj0pXiJ76pidWz5hRyeyHQPOG
	QK2nV07Szhty3ccaTJEpgIY=
X-Google-Smtp-Source: ABdhPJxgRyV4J6G1BLSGBPit0KAd+Rz8ENHytIf8ZZDekBuPL/07tKcJBd73y5fj51KGhtYLQvysNw==
X-Received: by 2002:a37:a96:: with SMTP id 144mr4026993qkk.358.1636301969948;
        Sun, 07 Nov 2021 08:19:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2724:: with SMTP id b36ls7622017qkp.7.gmail; Sun,
 07 Nov 2021 08:19:29 -0800 (PST)
X-Received: by 2002:a05:620a:5af:: with SMTP id q15mr4672158qkq.278.1636301969501;
        Sun, 07 Nov 2021 08:19:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1636301969; cv=none;
        d=google.com; s=arc-20160816;
        b=FZUQ0WpixbKUCgMuUlJfJIQ/Q214j/4Oi9XFt+Fn4MiKth/a7UcYwrQ2au0JpwvRbP
         l0+eTALtnJCDl2Q45i4IRTr7uBdy5fMOj++szY9NwHI0VhKmelLG4G7svlvjRVU+R/Bf
         9FUkraqv9kkSoMMXPdvKYflMcmTvtbJxP3NtQfV/AGwZjAvgs6yLRVMgcagnTdDEiMwX
         TzSl1+oejmsS/B6f4Y5AtP2Vkp6Of93hyb4mczZ8H8jVBWNQARjoFE5g0aVLWRj3SB0/
         U1YzrHlwUdn1tRz3DaBXf3jLE2Uv/lhUo8EDvJpWtuWrU+/ExM3p0nK9oXZLhKI4+RF0
         wcvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature:dkim-filter;
        bh=L7NVYUTKQRaSf3zmJ7tch8Fq/p/5g/YPanoKCU7mZ9s=;
        b=tmEeAxwXs7ycS1qXxCW5SRyrXDlTwNLfC3DcDIrSRkc99nTe2gJr03HbmGFjPN+Zvu
         /+NgldTZ6+1T5QdOpq6JaFjcegwRpgOjCB6hvfJOI9UeXGEyKvZEfpG6t+LBi/1qdvp2
         4Eqcie9l6ZG+wOdGKF79CHt4F0JAPPtl5IjfbGrvILEPGQEn0HV57ecmhWd32KXrRPwT
         539unJfxGlidIIVTbe0anaBQePd5TWtuAaHbTHAMB8MbEpBZG93iElgJHRppIyQ214FG
         8ZJ/2IBDDgkLFuHqXCpaOywKznl+MtPovWQaWGzVS9nF+B0jZHfWvD0iOW/+WFTFDeey
         QijQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=acS5ty7T;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conuserg-07.nifty.com (conuserg-07.nifty.com. [210.131.2.74])
        by gmr-mx.google.com with ESMTPS id s4si408354qtc.4.2021.11.07.08.19.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Nov 2021 08:19:29 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.74 as permitted sender) client-ip=210.131.2.74;
Received: from grover.. (133-32-232-101.west.xps.vectant.ne.jp [133.32.232.101]) (authenticated)
	by conuserg-07.nifty.com with ESMTP id 1A7GIBqt010505;
	Mon, 8 Nov 2021 01:18:11 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-07.nifty.com 1A7GIBqt010505
X-Nifty-SrcIP: [133.32.232.101]
From: Masahiro Yamada <masahiroy@kernel.org>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
        linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com, Masahiro Yamada <masahiroy@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Peter Collingbourne <pcc@google.com>,
        "Peter Zijlstra (Intel)" <peterz@infradead.org>,
        Sami Tolvanen <samitolvanen@google.com>,
        Vincenzo Frascino <vincenzo.frascino@arm.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: vdso: remove -nostdlib compiler flag
Date: Mon,  8 Nov 2021 01:18:02 +0900
Message-Id: <20211107161802.323125-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=acS5ty7T;       spf=softfail
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

Since commit 691efbedc60d ("arm64: vdso: use $(LD) instead of $(CC)
to link VDSO"), $(LD) is directly used, hence -nostdlib is unneeded.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm64/kernel/vdso/Makefile   | 2 +-
 arch/arm64/kernel/vdso32/Makefile | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 945e6bb326e3..700767dfd221 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -23,7 +23,7 @@ btildflags-$(CONFIG_ARM64_BTI_KERNEL) += -z force-bti
 # potential future proofing if we end up with internal calls to the exported
 # routines, as x86 does (see 6f121e548f83 ("x86, vdso: Reimplement vdso.so
 # preparation in build-time C")).
-ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv	\
+ldflags-y := -shared -soname=linux-vdso.so.1 --hash-style=sysv	\
 	     -Bsymbolic --build-id=sha1 -n $(btildflags-y) -T
 
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index c8fec493a450..6c01b63ff56d 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -102,7 +102,7 @@ VDSO_AFLAGS += -D__ASSEMBLY__
 # From arm vDSO Makefile
 VDSO_LDFLAGS += -Bsymbolic --no-undefined -soname=linux-vdso.so.1
 VDSO_LDFLAGS += -z max-page-size=4096 -z common-page-size=4096
-VDSO_LDFLAGS += -nostdlib -shared --hash-style=sysv --build-id=sha1
+VDSO_LDFLAGS += -shared --hash-style=sysv --build-id=sha1
 
 
 # Borrow vdsomunge.c from the arm vDSO
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20211107161802.323125-1-masahiroy%40kernel.org.
