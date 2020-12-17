Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIWS5L7AKGQEHG6URMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F044A2DCA0E
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 01:41:07 +0100 (CET)
Received: by mail-vk1-xa3e.google.com with SMTP id k187sf11322965vka.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Dec 2020 16:41:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608165667; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jv1k/xpHJ8qiuV668MBs9YuSqCHs4UffwhghrU68RlcHhs0C+pXCYZuMsWfzbWFMYz
         9tezEbUYeDKxt2YMOwHdjTgZvLfAVldvLjSHv8+JedkLqxATPrEv1abEm45OhYa5AcHW
         n1niAFCrAWK3NXgrtetkoDY1i2/ZTTM7GUJtHHRL5PmxWV0wAyYR2szvBLBr6xT4x1iO
         Fcz8lMsyRI2sAhD0pBEl1Swn+K4ew73HjIBlCLTPNAZCR14EsOwWfltdCOkJrmqdCyIi
         6kZOjARBjNVZW2esZKo1mKu/VDO5HrfqAOlog+8Iw3ZtwAutpD/n698luRALsCGi4lmW
         pVag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=QwRGFly/K8KgCDJFNejFJ6+QBOoy71OHJejs97d5Fa8=;
        b=1AjNRpkx72KFikZWsbkwA9t6l0KneWgpe8aGjSQn2gyURbIfAueN8hXSWjB0uUvWhr
         5ez5iY0U7CFpU/OxXk7YuCUfyBpMg1WFxpxGM14pB5TPCRVZ8KkubZ9CuNO+9xfblRGi
         pt6tidqhQVBV/T52HcS74Dphki1UmdT4De7sYidAfP3d2aKFLmDOKuTg7BU55hwZFv/0
         d9REOUh4F/AeEhRGMXREu738T2KpuS6yBwAr4T77QX1768/FdbS+JKJsmJ2prQDtR604
         znjsvCMKZqF4XxZlmpOb91zpv+b4bM/HMaLvE5+6se61b9bT/c4sbN6giqkbPAXKS9//
         7Irw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EPE7cvqG;
       spf=pass (google.com: domain of 3iqnaxwwkaomsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IqnaXwwKAOMSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=QwRGFly/K8KgCDJFNejFJ6+QBOoy71OHJejs97d5Fa8=;
        b=W/qgEhzasZUe9qF8HEzfljTt0Ld52RhUeCYZ5ypllclakp7VlaMVhp73obWD331/vM
         QzY2CANsn2lppEqNpLeoHuK1nLrOsg5bAgvWTi8vTNTJRrFSgHLnfVfeX63hvVvVAOXA
         xOBT0rDwuMrMW1p8Iz2f0+Sd+PvPKPzZ878vriI5H/kK8LsHqXEhQU5BB8cLVTcNarzI
         Ka1Ks+ho5rxRchW62BiBDINV5v1jifRRX6SKRsVCvbyDgRRUxro4H9n65N/EDQ1LbhXp
         j7ftGI2meA+W7g3rzvVlWqb+pKFdA8cggksdILwH+RFdK0XQyXgfco5nn/d/5a5ozzYb
         E+MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QwRGFly/K8KgCDJFNejFJ6+QBOoy71OHJejs97d5Fa8=;
        b=QQ7fhMkCYgIN3fPucvE2tJg/JJy2cfwQg5EmA9PRbRoDT9SKEDI1O8FzxmnJXkNR79
         Nz5HfJczqCZ+4VTBNMS4aC4WdFDNOXSjS3eEaEt61CjpQb+xl2LRKA3ObZig83czaOeo
         /4cOguWaPdwA5YozMfpQI+zZKA4L/5t888CMuVD0I2z/Un/bp/II5DyKgxl8O1xQM2O/
         42HMHE/E2NtExI1RLk7iCZSvY4fbWzod88hMmfNO0p6MHR7jIBCSoNb0fHueOPFy+Qhi
         TFQEUbdnkSVg6/sLExkTEGwD0LkUXX3rMdE9ieE1Fn74cAFqAXT4QMvfy1V67lJWdNoD
         QxqQ==
X-Gm-Message-State: AOAM5310pLqSNgTjk3nRoVmppkkPT6aqvjQpqpKpZ5Q9t41+yq8QxbNf
	HtE0VYwgDzdGHd6ygfsuwXM=
X-Google-Smtp-Source: ABdhPJwLdsB0wFKH+FqkqaaTd6tRUmWEkCVa+VdQ3H3TLv36nF075Xm0hbOLWCRCjCbT/ov2GSNGPA==
X-Received: by 2002:ac5:c2d8:: with SMTP id i24mr36420877vkk.12.1608165666947;
        Wed, 16 Dec 2020 16:41:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls3225101vso.9.gmail; Wed, 16 Dec
 2020 16:41:06 -0800 (PST)
X-Received: by 2002:a05:6102:d1:: with SMTP id u17mr36389081vsp.8.1608165666516;
        Wed, 16 Dec 2020 16:41:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608165666; cv=none;
        d=google.com; s=arc-20160816;
        b=ferOXSlTU645Kcu9O2ff6/u/HK2EBHQuDaxm/IkVEZ+fHwSbQrwiydzYg6dddg68uy
         3frDZOThiX97iO4E1LBJ1pW+Fh1+Ztve9ECiFYtJYRvLZ2nDzP6nVU0/FnmKw8y+5l/g
         ozmhjSnSd0Svzx7Osohw6UD+My5Pz4J4tk52sTZGqX4QmRM0qoRsTYeW3PreVbXizMB7
         L6JFQcEtIyQQL+2+xjMeXqqKolnQQIRvSFMdk6MLbxQGxCwTN49jfveR7+oHRiCxYSnN
         5JyRalanCsvsCMiph8BzEECaI8LcrX3ctQNb+7QfJX+t2hgAijaVTcb237brxnKDTwha
         AnPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=nQgcH8JHZsnhKqD6NfgVnumKz059kSgcZknDGcmmB+s=;
        b=vhuyUrBt9CbZXedd/HmBtVZSvfqoGRv5c4n76vsTUMSGSPqnXr9mgYDfI9cQUUrqxA
         nVixMe6N93bGABTiHfHBn9ZSsF92vgXfWitzIFFol/ra3SrLe/bOok3Z3gvHwUs7gFqd
         VNPb17JvCZdPW0sUAQrGqJkRFVzxa8eRJcFOyS+64G9SajUzZhyV1/SNdE2yK5WYs/6W
         fe5xY0DLZ0kcrQwv6hkzI+SBf3Tz4Rv+ZAlfHbYcMOFjLc5y0b6ySbGJlwFBMe7NViVl
         3dZjnKq+n/JNHb/ImGRREXriECUhiIxT7L+K3RfiGfAhZJOcE5ai4MY/hJCtY9f8wBUV
         4qUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EPE7cvqG;
       spf=pass (google.com: domain of 3iqnaxwwkaomsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IqnaXwwKAOMSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id q22si374185vsn.2.2020.12.16.16.41.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Dec 2020 16:41:06 -0800 (PST)
Received-SPF: pass (google.com: domain of 3iqnaxwwkaomsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id x17so14718992ybs.12
        for <clang-built-linux@googlegroups.com>; Wed, 16 Dec 2020 16:41:06 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a25:ed7:: with SMTP id
 206mr50304845ybo.136.1608165666117; Wed, 16 Dec 2020 16:41:06 -0800 (PST)
Date: Wed, 16 Dec 2020 16:40:51 -0800
In-Reply-To: <CAKwvOdkP8vHidFPWczC24XwNHhQaXovQiQ43Yb6Csp_+kPR9XQ@mail.gmail.com>
Message-Id: <20201217004051.1247544-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOdkP8vHidFPWczC24XwNHhQaXovQiQ43Yb6Csp_+kPR9XQ@mail.gmail.com>
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
Subject: [PATCH] arm64: link with -z norelro for LLD or aarch64-elf
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: kernel-team <kernel-team@android.com>, Peter Smith <Peter.Smith@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, stable <stable@vger.kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, 
	"=?UTF-8?q?F=C4=81ng-ru=C3=AC=20S=C3=B2ng?=" <maskray@google.com>, Quentin Perret <qperret@google.com>, Alan Modra <amodra@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, "kernelci . org bot" <bot@kernelci.org>, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EPE7cvqG;       spf=pass
 (google.com: domain of 3iqnaxwwkaomsijxfzqsnjwxlttlqj.htr@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3IqnaXwwKAOMSIJXFZQSNJWXLTTLQJ.HTR@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

With newer GNU binutils, linking with BFD produces warnings for vmlinux:
aarch64-linux-gnu-ld: warning: -z norelro ignored

BFD can produce this warning when the target emulation mode does not
support RELRO relocation types, and -z relro or -z norelro is passed.

Alan Modra clarifies:
  The default linker emulation for an aarch64-linux ld.bfd is
  -maarch64linux, the default for an aarch64-elf linker is
  -maarch64elf.  They are not equivalent.  If you choose -maarch64elf
  you get an emulation that doesn't support -z relro.

The ARCH=3Darm64 kernel prefers -maarch64elf, but may fall back to
-maarch64linux based on the toolchain configuration.

LLD will always create RELRO relocation types regardless of target
emulation.

To avoid the above warning when linking with BFD, pass -z norelro only
when linking with LLD or with -maarch64linux.

Cc: Alan Modra <amodra@gmail.com>
Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
Fixes: 3b92fa7485eb ("arm64: link with -z norelro regardless of CONFIG_RELO=
CATABLE")
Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: Quentin Perret <qperret@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
 arch/arm64/Makefile | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 6be9b3750250..90309208bb28 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -10,7 +10,7 @@
 #
 # Copyright (C) 1995-2001 by Russell King
=20
-LDFLAGS_vmlinux	:=3D--no-undefined -X -z norelro
+LDFLAGS_vmlinux	:=3D--no-undefined -X
=20
 ifeq ($(CONFIG_RELOCATABLE), y)
 # Pass --no-apply-dynamic-relocs to restore pre-binutils-2.27 behaviour
@@ -115,16 +115,20 @@ KBUILD_CPPFLAGS	+=3D -mbig-endian
 CHECKFLAGS	+=3D -D__AARCH64EB__
 # Prefer the baremetal ELF build target, but not all toolchains include
 # it so fall back to the standard linux version if needed.
-KBUILD_LDFLAGS	+=3D -EB $(call ld-option, -maarch64elfb, -maarch64linuxb)
+KBUILD_LDFLAGS	+=3D -EB $(call ld-option, -maarch64elfb, -maarch64linuxb -=
z norelro)
 UTS_MACHINE	:=3D aarch64_be
 else
 KBUILD_CPPFLAGS	+=3D -mlittle-endian
 CHECKFLAGS	+=3D -D__AARCH64EL__
 # Same as above, prefer ELF but fall back to linux target if needed.
-KBUILD_LDFLAGS	+=3D -EL $(call ld-option, -maarch64elf, -maarch64linux)
+KBUILD_LDFLAGS	+=3D -EL $(call ld-option, -maarch64elf, -maarch64linux -z =
norelro)
 UTS_MACHINE	:=3D aarch64
 endif
=20
+ifeq ($(CONFIG_LD_IS_LLD), y)
+KBUILD_LDFLAGS	+=3D -z norelro
+endif
+
 CHECKFLAGS	+=3D -D__aarch64__
=20
 ifeq ($(CONFIG_DYNAMIC_FTRACE_WITH_REGS),y)
--=20
2.29.2.684.gfbc64c5ab5-goog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201217004051.1247544-1-ndesaulniers%40google.com.
