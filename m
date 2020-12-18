Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSXN577AKGQESEHMVMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC792DDC5A
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 01:24:43 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 193sf320657pfz.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 16:24:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608251082; cv=pass;
        d=google.com; s=arc-20160816;
        b=ch33UU8fUeH86supBMTKb2uCdBeu4VYdlfZgL68AxdM9iEi9Pc4Z0QFmqvxfD5rBDU
         yIuDbS4H501hhZUZo4ekgQ+ofqAA0N5N7BC6LbFaxD0687e/oHSa9P+S4hv8x2fQJSkd
         SoJ+4bMheag1o8teHDjDItUY/iu4r7LFfqPD283tF+S5hnS8u1euVIpJpr8+KbANqtsK
         lG5gsAhdEaGYneFXxN1cLvOQlMob9amrFA2StsjUq77/loPbBiZN+At2T/ueqeZ9qNMi
         S1b0zGHJcZkkFMnMAnK4/NWg2xZHYS07WVVG7fjlkGchttHnm/4EQ4Z3dzjgs8d5bfIF
         0XiQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=kzRWdWoMztit9H6QbzU1fTHr9T6dl9slctz4+Qekrc8=;
        b=HjWG90Ys4ydy8nQhmaE2BFngJcZwVI5jBymDEk5xW0r8uBVGXmEUXbq5/I9xZPFzOw
         F8z5jHIVtAU2xsBkdWzU2jRYsXmGd48uxQ1LVdWX1YLeaToPMfaC8hmhJsjJAS85PkSR
         zOfS8kX4RujhSA3f29B4bDhLzpnOMljrZOmr+V1xntQDNUUggig8kSAZzhcVvgizyYuJ
         8yMYWY6ThrCleZC+88vCQQK+NL2KA3MTz7aHxfdYK0/yTbLFU1nDpCdapLfvioYrck5U
         Ec1TlC0UjuyzkpZr5pW5vasaBj9Zd2hvjnlYHXRtjaXU9dGKhK9HQSKkEzgjn9z4LbTD
         yKZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kGo+noPT;
       spf=pass (google.com: domain of 3ypbbxwwkacsuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yPbbXwwKACsUKLZHbSUPLYZNVVNSL.JVT@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kzRWdWoMztit9H6QbzU1fTHr9T6dl9slctz4+Qekrc8=;
        b=khxXt6teEQzricBqais80qLS/Cths/Z1Bf1i8zv2LfarLOXZf8dWo502Az54rBKxu2
         oPseBKRp3AZZRbv2ihCOSoEkvfADlea4twGyvILyuJ5WdSzExglS6Ms71P8ApsIR1NgF
         k3oJq+UjqC8M3fOhgSAP4gNvla1avVf97w86txb1KEvekAAXuw0vB5KQI3u+dBg3xn4Z
         kyZArWMklrrque0xq4BE74owAqRxhGfgJnM2zY/anW6kiE2zcbEuB9nRda8W432u3R1Q
         xaFdzuTZJ72XAoAbsFw3Qh1O4rLmvcFMC6gwWsl73Ruh/zF4Zgcp6VyMTvu+gkPBzfy4
         YyCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kzRWdWoMztit9H6QbzU1fTHr9T6dl9slctz4+Qekrc8=;
        b=iV//HYwo8VHOTSSY8eWN+UHCaRf9A+M9tYw/m8I4r25AJrPN6Kg+hdI7wuxBUZb1P7
         zBb//HeX1CyOc3+vkoIKhhCS5jGJaQn7Fw05N3bQCc1HSoEspiJv/5wBSu65OKYTk7j0
         yLn0PoltXQV6393WiSy8tHKMCm5Z2Zi+aFHvU5eRE2NidivennzzU0+wX4wHee/qgwP8
         Jc9XKwQq9vUNppn+Mf3YLpuT6TbSwF7mOKNTgV97wJFF7usMdu4j7qBXRKDmIoUTbzc2
         +RWZriwISFuSBtmNGhGZtEKnA6mDZBxrO19nqzTBaVPAQ/YZzwPoDlBKNSflU9T4jmST
         QPRw==
X-Gm-Message-State: AOAM533M4AHe4eIbUvBWAK9hDpKHmox52J05lwX/5FFMKiibpQozc+ny
	iePCJs46UHOySs1hw85b6iU=
X-Google-Smtp-Source: ABdhPJwNPBqtNONan+J4VEBXDdMacIU9KXapokc+8rKfvRHVBWmd+Sv+Smx/0bbcDTdoWBUdDKKJ0w==
X-Received: by 2002:a63:2902:: with SMTP id p2mr1753488pgp.274.1608251082430;
        Thu, 17 Dec 2020 16:24:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5803:: with SMTP id m3ls1546945pgb.3.gmail; Thu, 17 Dec
 2020 16:24:41 -0800 (PST)
X-Received: by 2002:a63:b05:: with SMTP id 5mr1740072pgl.163.1608251081739;
        Thu, 17 Dec 2020 16:24:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608251081; cv=none;
        d=google.com; s=arc-20160816;
        b=IUH7ZtMefpWG6fK5jcUjnqPLelJV+P38FT+gr5W3XNeU5cxZPHho8FKSuVtU5pAJWj
         4wC7sLnUVBByy/9eK21oIaha0hVOxj7x16Uz5SN/hep4Z/OGeN2n3R7N6kw7FRSlzH3P
         PVKPOoCW6loDDObS+ZjEj4jBS9//WJLbMEnGXC97Opjeojz+q/AGdQX7QdW8gb0Ws+Iv
         uB9/g4+4THZUYqF7DSQLAlmzh6JWB+irMxITBgqK/R2uxKOsH+QPM77MmjcfPvGkD0UE
         yTXovD0kqbBJ5lVl63vPjCXEhTZW+qieg7zwR15stsUDfl8MuVuGSfc17HLRXx5m29dU
         kEiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=ERR2VE2oCwVj0NVrLHMHrJrZvp//bs46UVD4KXEsUV4=;
        b=uxnZ6FYDgePjEZxNXI6CXWIybEGLVVu5wiYUwheTLiu8LKnferNZixu7HxW/j3S78x
         UajRDzwkEWfeAEV4QV6b29MoKyxIvTAe6FuAWddykfUE4JFIEJSO65t6n/45RiVh2pnX
         KV5fpVvO+xMpzPDmcYyTW5JJelZt4GCkJzfUTDxZnokl10DdDHnfnfL88CuKfrlpzZgf
         4MlZDB/PtlJoUtwJy2azGGoGV4MVvs9Eu7+KPp0oPaXtqxu9vBs/pQjtNWtZGXBqz1+Z
         Hk4IwPlguvrVnBe7OWQns7l16pc+h7UlTkmRlANPD95jg05BZAzgMCz2NjVl/OmVmr3H
         QdkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kGo+noPT;
       spf=pass (google.com: domain of 3ypbbxwwkacsuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yPbbXwwKACsUKLZHbSUPLYZNVVNSL.JVT@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb49.google.com (mail-yb1-xb49.google.com. [2607:f8b0:4864:20::b49])
        by gmr-mx.google.com with ESMTPS id q18si700024pgv.5.2020.12.17.16.24.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 16:24:41 -0800 (PST)
Received-SPF: pass (google.com: domain of 3ypbbxwwkacsuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::b49 as permitted sender) client-ip=2607:f8b0:4864:20::b49;
Received: by mail-yb1-xb49.google.com with SMTP id q11so467570ybm.21
        for <clang-built-linux@googlegroups.com>; Thu, 17 Dec 2020 16:24:41 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:a5b:b0b:: with SMTP id
 z11mr2665128ybp.164.1608251080932; Thu, 17 Dec 2020 16:24:40 -0800 (PST)
Date: Thu, 17 Dec 2020 16:24:32 -0800
In-Reply-To: <CAKwvOd=LZHzR11kuhT2EjFnUdFwu5hQmxiwqeLB2sKC0hWFY=g@mail.gmail.com>
Message-Id: <20201218002432.788499-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <CAKwvOd=LZHzR11kuhT2EjFnUdFwu5hQmxiwqeLB2sKC0hWFY=g@mail.gmail.com>
X-Mailer: git-send-email 2.29.2.684.gfbc64c5ab5-goog
Subject: [PATCH v2] arm64: link with -z norelro for LLD or aarch64-elf
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
 header.i=@google.com header.s=20161025 header.b=kGo+noPT;       spf=pass
 (google.com: domain of 3ypbbxwwkacsuklzhbsuplyznvvnsl.jvt@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::b49 as permitted sender) smtp.mailfrom=3yPbbXwwKACsUKLZHbSUPLYZNVVNSL.JVT@flex--ndesaulniers.bounces.google.com;
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

With GNU binutils 2.35+, linking with BFD produces warnings for vmlinux:
aarch64-linux-gnu-ld: warning: -z norelro ignored

BFD can produce this warning when the target emulation mode does not
support RELRO program headers, and -z relro or -z norelro is passed.

Alan Modra clarifies:
  The default linker emulation for an aarch64-linux ld.bfd is
  -maarch64linux, the default for an aarch64-elf linker is
  -maarch64elf.  They are not equivalent.  If you choose -maarch64elf
  you get an emulation that doesn't support -z relro.

The ARCH=3Darm64 kernel prefers -maarch64elf, but may fall back to
-maarch64linux based on the toolchain configuration.

LLD will always create RELRO program header regardless of target
emulation.

To avoid the above warning when linking with BFD, pass -z norelro only
when linking with LLD or with -maarch64linux.

Cc: Alan Modra <amodra@gmail.com>
Cc: F=C4=81ng-ru=C3=AC S=C3=B2ng <maskray@google.com>
Fixes: 3b92fa7485eb ("arm64: link with -z norelro regardless of CONFIG_RELO=
CATABLE")
Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: Quentin Perret <qperret@google.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* s/relocation types/program headers/
* s/newer GNU binutils/GNU binutils 2.35+/
* Pick up Ard's Ack.

Note: maintainers may want to pick up the following tag:

Fixes: 3bbd3db86470 ("arm64: relocatable: fix inconsistencies in linker scr=
ipt and options")

or drop the existing fixes tag (this patch is more so in response to
change to BFD to warn than fix a kernel regression, IMO, but I don't
care). Either way, it would be good to fix this for the newly minted
v5.10.y.

I'll probably be offline for the next two weeks for the holidays, so no
promises on quick replies. Happy holidays+new year!


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
clang-built-linux/20201218002432.788499-1-ndesaulniers%40google.com.
