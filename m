Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBBXDXKCAMGQEHFH6DVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 25ECC370BF7
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 16:04:56 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id p14-20020a056a000b4eb0290276eb69fa71sf1588494pfo.15
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 07:04:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619964294; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kv4OYmb+RzZdhetcuWuksw4HpLNYrii8TRaxAZglVYCZrQTzva0U4bNo+4NyQnIFOx
         R0j9VVBd8D/aaG84le7qZNfdi9w7/zuGmZ1nQ0BjDMCRmjfWR9hxj93Sk5bgZk3JZqjt
         yJUjeLvY1qwvPgB5WsnnDTwHGkeX7W/pxDDTJU7WB34CO8lGIUob3YkXcBtZM/sRQUoJ
         P8CVIg8h0b9XhXyWksMG0d5I0iEwlv4fiwp8LcDxXlP0A20M1zm2JykVNDAMAaB1VAhd
         TbeJPTkG6n6lrnRUcUGxArBZ7FZZZtK3nj4XF45OEHfqziW8dwq7sRLmcn9ppDhWWYx7
         zlwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=Rr6isytiOEfp04q6sNO6qix7QLSyanBWyqOsWXpYzuw=;
        b=hZcKgj0HbV4+3UeuPX2FgRBOoRolwEf5ylxtn01vteBDJMYXTyx2WngsAqrUmXWkj/
         dVysI5vlt5aLOL3/aZ6PIX9/XJpIhLdakijWLUvzzs76SHofH5cDMbChawbsgI+XRlXF
         l5AxGZjqa6i2b74ln2eV0Yzq0e34eP7dBjE0bzko/ia4bRqimgrZ3OC+Y3Nam+/1XlDF
         XRacko7P/Ufs9NJUoSdfG+R3Z01hojmsPNdkhqwOMSdZzUzJ0sxrh7xiCIdmXy0GABB4
         WysAGFTNSDwulhQcSwMV9u0D34+f/C9beI7E275mHGMg95i6OmeU6HEGhIm5REucR3si
         SdKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RHdYGKeO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Rr6isytiOEfp04q6sNO6qix7QLSyanBWyqOsWXpYzuw=;
        b=g5BOYdMrenLrfa2WcIXdz4XZIEduP9Qh04m5iowq/jD8T3i9In9qoYRs20fZdN7m7+
         mJZSglVwkz6B6I4Ui8BEVnk04MRI/4/QCBCLWXP55hUhbQZNAQ74uP73BE+80FNVlaEB
         9rWTxLmPbWFm/Y+zl8dWkHR2hDDF3RBB1uFpkepwNSYEWbiPeaKFj8DJzhIG1djwWm6p
         2bw5kZdHMZQqL3wp68m7m2zK/BpT5e1v9dMS42WBJ6GYIFKr1nXFt+RbUxnHgNbWQZQG
         Zu9zzMJLcNuzt667blgPt++kJTl9r3nyhcEUQdQtp4crwIklvjE7a5JIfMPrwDLeOCEU
         SzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Rr6isytiOEfp04q6sNO6qix7QLSyanBWyqOsWXpYzuw=;
        b=CfnvfkOGKH4GHvfiHF0aDT5FJckrE+g3/zd9ROZbE2/BP5u/UWuHl8W/TyRbP9apic
         uFIH4IIW+Zcv/bLR1iIaDXMRSZ1FZW9WiV+ifBBb7nBj0aS20d4X/SSRu+AcNCKrFjuY
         yZdq1Mbs2rFLNoZOWiXbbent6iv7FLt5TAJHivjGzhjgBoqlkzDJPwvbdkM5M1R3GlQG
         E5dNX1cM5tP2sbK23t7mvUZvMLukyi4j1n+ZbfUHMVIy+ybz+s3J3pXiH7cm6TDoJ2Jh
         HWG1Qg3y4shlCn5uWkU5Ijxjb8JvDY1EXG6Fje/GztSXY+zi1H/RfC4hNJCYJEjPhJrd
         zkJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532WPCx741VZrB7+qgXy1/Ztwyt0isr2PSDKxABt08/ZSM3/5RFF
	ySso9cq8uNjDWspXC8V5UYU=
X-Google-Smtp-Source: ABdhPJxlJwOlQexxIKBy9be+BWrxfyNpqe4/ZPINkWoA2h5jm4G8K2IGwhURX/4utPKeR1Fdhnawbg==
X-Received: by 2002:a17:902:ce85:b029:eb:46e1:2da2 with SMTP id f5-20020a170902ce85b02900eb46e12da2mr15419733plg.38.1619964294452;
        Sun, 02 May 2021 07:04:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8f8a:: with SMTP id z10ls6285429plo.1.gmail; Sun, 02
 May 2021 07:04:53 -0700 (PDT)
X-Received: by 2002:a17:902:501:b029:eb:7a1b:c96c with SMTP id 1-20020a1709020501b02900eb7a1bc96cmr15706389plf.76.1619964293864;
        Sun, 02 May 2021 07:04:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619964293; cv=none;
        d=google.com; s=arc-20160816;
        b=mU5/7h86fEq3KhDE0sUNCc0kYP+kd9KFwGDw53AAs8WHMupMAn/QTsyWh9I/VLsRsa
         ILMKEYrkHeVO4kYUmqoOrdiIxcVJDS1fARUW2XKyN/eVBBFPvuTW3KFAu7rL7qBuwpkU
         Etmqyb3jfQzblS+dUu33VYa7lBmrdcQW3LEAsU2rUDY8pJIl2T3yhFKQDzqlCPW1rQdD
         hyJKwO11V/X2vmieAk6hweg/0chyKY1sGiiaiaDfot6/pCMsC25Qx7ZoJI7eaSrj7NR8
         N9QpcO93rIRhg6H+pqnBDvTf/aqDQHqC8hBii2NLegTlmTsXM9vivhmgHup+jRw9TpMA
         qhgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=W7a0kX6X2tiuRspYbtd5dflI94TAwtkUOUgM+zV/r00=;
        b=jkhAzfSkVnOkqkph+n8M/xazYntf+6fI6ASWCde30tUWdtNBdprzDZhBf6bcINXm9j
         zy00yEWzSeou9m5kBGNUY9WrsKm1/n1VMKEmUVzDQ4kxGvjmNBD7vJLwdRFIELQ490Q2
         7Sz/oXP9R2IXW/wsg8hRqFTHyrytMctR8JiC9s6/YhdWGUhBjjF/vKiE3dCHO5QFWZ+T
         Gz/uN+WfcrMBGQDRGKst+vV2W/7gbGCqXn0Ae7iE1QpodROhXCUm4TKUSSyO7nwBvpne
         I1hkBbM2dINzo22d1U7nQn6kEdvHdLy60jg0k9ggLV+3ideNN4/yLDWDHP6oQfvpB4vQ
         heqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RHdYGKeO;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si1295069pgs.1.2021.05.02.07.04.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 May 2021 07:04:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9D47F61462;
	Sun,  2 May 2021 14:04:52 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.4 15/34] x86/build: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Date: Sun,  2 May 2021 10:04:15 -0400
Message-Id: <20210502140434.2719553-15-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140434.2719553-1-sashal@kernel.org>
References: <20210502140434.2719553-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RHdYGKeO;       spf=pass
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
index 59942e349e5f..69f0cb01c666 100644
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
clang-built-linux/20210502140434.2719553-15-sashal%40kernel.org.
