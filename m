Return-Path: <clang-built-linux+bncBC5JXFXXVEGRBZXDXKCAMGQEKRPSQ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 66489370CBD
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 16:06:32 +0200 (CEST)
Received: by mail-vs1-xe40.google.com with SMTP id v27-20020a67c89b0000b02902227f70aa8fsf1500814vsk.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 07:06:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619964391; cv=pass;
        d=google.com; s=arc-20160816;
        b=T/0Sx5eJYVyPyUCmmstpea2uvquq7hspjfxwRrLPq3nWsyL6L9Z+m3XQc9hDOXMPH6
         EQbEUZUGfA8h6lg6JpE3awyNwAO5zrbcAaCqV54CeGoB4XQVnNfIaeXVhxgt7g8I6Uz+
         QVgUf7PbbybQEnSxjcubs3UTWuNmEMc7JmsrrPXANzxO2UOMDUKjqwNjrjvgoe1qtUy7
         lyJhW0r0A0N0oQ0ZWs/ukhIWrFqGElmf8KBGfMNkdEm5j0CK/MXMJRxDhuy+npQsNYg9
         191VmfVLQCLk/zZnKBdKrfi4I2FRM3LMm4MMk8uRhu3HNj9MS1fDhqUWFOHuIyE1zAUQ
         6K5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:sender:dkim-signature;
        bh=e1i+LoahlFoL3JUZv5S+efuXygNfUw2BodYrs7buxn4=;
        b=YLxpOZeDKzzBWsBk6EfYhWWC2FJ3sPtwE8gK8VnarbgYzCGRtvF/c6XYTQDAzFq1t1
         YhEvBYg0vDmWE0EAD0uCW5YF12chVqYOiN2pEj2m6LZJmimk59VzUaYy1tkr66S0/hx9
         LSd5fTpdcdgy48/ygqiz0Y0FMve6DZvJCBkPEP9FGPZhjWSGal0+Im0ZkIXcg3n2RZE7
         nHKZAfY+6PQ9l2JTiqejjE6vMI3lymmPQT2KRz+ya61htcqLzAkEd1Q0BwNAsq8PnhD8
         0sKMXU6e2V12vz9Pwb9PwxDPqJyUTfao0vjeuGzV0/qufn+I6MGsAKWYfRnwZPhaaLCc
         6o6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=de6LUnVT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e1i+LoahlFoL3JUZv5S+efuXygNfUw2BodYrs7buxn4=;
        b=WbLrW+vRXNT6JRzLuD6jizgx6ZY9cpcqEp9XyvJbzAdg7kUAazu2iqBC9isKjh3Kdw
         kEu5jQgqO4MeU+xzPiOXol3EyOBsDd3YKbMkrwUMSgHLJ1sYYTR0kHcxEHOKQMTQroWU
         96hxqE9cEqcqFlZSqsbBjd+j58ixHxWXRfESIuJk48OcAxWzmwdjJqguEuFj2zW690Qf
         VQG/85mWKWHvC4AI95WGnsKctjGWf0zpbGk2drTRirFTGON1773PNUsYmCm1RMhR6wi4
         MKGZNsFSHFP3i3wPhG/o9DBSe29ovGnasOi4zIkLaVB7efDFrqw7z3m5G0ONE2A3PuMT
         914g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e1i+LoahlFoL3JUZv5S+efuXygNfUw2BodYrs7buxn4=;
        b=bMidie1/T5+p6R1WX6Ne18CVZTchVUSX9A1xqHOTVWcgo7XOYXCkH8D0udreXOCIIN
         RnDAyp7gStUz4zFh1GTUe1QBQyQfNYijnTQHLVKmannBMUdFS3+Y9oage/flMJ7Ne8Gq
         YBFq2hfI6hYkirfDx6Ks+BYAsn/4GlaIuPWQ1rbWfrYeqj6TjTXtXGCII2OskVGk81iU
         Lmuld0vNCjyES8SMsM+w4TfRgVXX1bEj5WU1h/Uk3VVFxUbz+thfLOdZCF9tVd72qISc
         hjZdNYtl6nyHB2+1re2aXQ9AvcinXsR8mfG6pZU7RLpes8THEV1xSYRkwsJ2jRO6djmU
         zXFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532TYTpI+i84AHks28L9CLz5IrJprJGNrktwXp9ut1rYh2BjCk73
	rIJFnA9L7T8w8jpmZ1n0iXg=
X-Google-Smtp-Source: ABdhPJwEx623csMUUNvxBNgA0ut9cm4xI5LWQl6lBQsO1VKgF+JJPNo9NZaazOhpuB/5669VxKNuBQ==
X-Received: by 2002:ab0:4343:: with SMTP id k61mr9179275uak.35.1619964390738;
        Sun, 02 May 2021 07:06:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bc2:: with SMTP id 185ls2123079vsl.8.gmail; Sun, 02 May
 2021 07:06:30 -0700 (PDT)
X-Received: by 2002:a05:6102:2126:: with SMTP id f6mr842229vsg.21.1619964390013;
        Sun, 02 May 2021 07:06:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619964390; cv=none;
        d=google.com; s=arc-20160816;
        b=ZgWCcEv0+QtparWxjf6vWziEseuDWwjUTYJ60Hns1DZhsEIlUnP48E7Cnsyqis16MI
         oJUdWBRQ+3/kKNLEFki0Ja+JV3eyfMEXY3DQCAXZ57jwah8ccJ2N8IZ2xl8o6u8ro5bg
         a45XLQUIevH40ZoZ5ykaqjkD+o948Yrq7v3kKCEqjkdn3hzQzV6axUzqcaRr02O6NUN9
         wVirPh467xjrGFB4CIwFl+35aukYhzQsloiCqkjnE2sZ6sa1a06vexJs6rMann4ePFqJ
         estUqV2Exv3YnU/TPcEqx88ybxKdgVi8JROtAQjt1HimxMSQuEWnFnLSSuALIWRrV4fS
         82Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=5j/a5pUhmCOpFl80FL7qVuZN6AU2fo0MWWq+48FsQ1U=;
        b=t/haJNTZltY92x7Q2Zwo3woUj3dtisqee5X6fPGUe3Rm0s+VgECy1COA+qC4/tVE9D
         XEgPN1URDjExzJ5GPsX4Qlr6QM01Zxgvz4D7y9QB80cw71pL6HWs2xvL5kuNsuSZjfzN
         z9HcXn3upC8j77Hm+AyosxabyV4qdCLBMJ80sFYecz11pl4fhbZQ9d9GEUI+uwkFzrHt
         ZywmnqrY+s1WWKF5q0k6SEB8i3idNnodRW/MUreZDPjHElrTSTbxbSSIxnIdePIc/Ycc
         lwsy4qDNLj5IYmT1nWcA1tt807MczdxJloQ+BgF224tzZTlewPyRIVA7xUqeA2D8w05x
         dZ0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=de6LUnVT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t11si707776vsm.2.2021.05.02.07.06.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 May 2021 07:06:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0554F613CA;
	Sun,  2 May 2021 14:06:27 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 04/10] x86/build: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
Date: Sun,  2 May 2021 10:06:16 -0400
Message-Id: <20210502140623.2720479-4-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210502140623.2720479-1-sashal@kernel.org>
References: <20210502140623.2720479-1-sashal@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-stable: review
X-Patchwork-Hint: Ignore
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=de6LUnVT;       spf=pass
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
index 2b3adb3008c3..c0045e3ad0f5 100644
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
clang-built-linux/20210502140623.2720479-4-sashal%40kernel.org.
