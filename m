Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5OLW32AKGQE4BHKBEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 439371A1EB1
	for <lists+clang-built-linux@lfdr.de>; Wed,  8 Apr 2020 12:22:46 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id g7sf6308077edm.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 08 Apr 2020 03:22:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586341366; cv=pass;
        d=google.com; s=arc-20160816;
        b=cmasjG68e5xdy88uQSptY8D4FFQJcDL/yZ2h+wXl1LAfFc0IC82XUvh5XsUWixmwyl
         kb+ywa6McElsmnFaxT1ZZKJNK0DkM7h66Eto9F0fRFnoeE5Oxg5ki+wZ+lPA4Q8zPrvj
         RkzwMKyt7K/D0CT8A5iJCw51i/F7uN2moVRfnvWYM8cErr883fWcVuy8ZLmJmtf82xdQ
         mq1gi0HJuzon5gxDvXRoG8XwqVkH5gwC6WO8om1MlhJ7lmaEFfOqhUinzCF97Sn8KIbc
         YXlXE4IDzLzu+Iv6RqsNc4NRKvYzaK/o41i0RymxNTbvLE4SpyCJjKHLzWICbCnsmnYC
         gxvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=KqPZvo5dxvVkJEkbJDDm/1HNhsZQZEenbBkBmMeuzp8=;
        b=qtF9aGIPa4/glfXFdhj9CyAAcMjsgY1A0FGqVV34CpSKXrFw2Lmjnd2/y/9BwS8MvL
         sS7/cLv4hha0p4WsxCgA12Rm8wUF+fPCdzWYYqKG9kaUqw4yYKzuUJ2oP1sFbcgf1h1w
         MIinHPyznQgupy61hkhOePC/4wgw+fGEVUrNniGQHGB5QD0PeoSjX3021I+oBQILASKJ
         2VisERTSljTnVNDOT7ZX/uy2uj0J8bX39jCCo167bNZdU3debIgWnZx9lgdE+UYnDoLE
         ZirLp4+gYm8WUeUKCI0Q5YjOrrw05+rIQkLjkFrHMcmOKGQDeqeFBBX/Lc6gMRN/aJGv
         bIMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AqIGPXCI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KqPZvo5dxvVkJEkbJDDm/1HNhsZQZEenbBkBmMeuzp8=;
        b=Xx1/4qp3Bu9BT1hoP/gcYoW3mMZUa7MB/FPn3kzjXu4Q4778te1VV6t/aqdh1Bc36O
         BTWZXCXsWDpYNUOQxakrll9ScreQsIDzXuZUPszwaIx2JJlMfuRWHp9U2KTTbDFbciRL
         iJF3sP8TiEI5RjhMf1vBKr55ccEdEAE3YlpmHeIJPIQVdnXJr1XO0Y3JB8MZ9Zhnl6a6
         E0BcXqLTccSnAnPKSqj7dgXYi+Z1Aeo7566wmCZFjMxo4PIm1FpUcZraXuwNdydvpavd
         o7cJ+jVSIBZeYPMvoICgHBdRZjr6XjAC2GmORDp5t7quIwsBicXAN8++xSrPRLIgOVP1
         f5wA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqPZvo5dxvVkJEkbJDDm/1HNhsZQZEenbBkBmMeuzp8=;
        b=OTul9MKL5UUgCqOogNb7KUZt1NRI9X7arQ5R044cK9CbnIQ3h9e0eatJO7mOeV37I6
         bDI3habS05Z0hKxRyVCPBuxf0BC9e0MVcPN08FNeIL05/F4HB0HpWNWBNKTt/apPuzfq
         o4+xiCuY3bfjvtGHZVJduLb9FEbLpIpeMnlxHQYHb2JfUIKtrp+F0Px+e1eHuvortLCV
         t3GreTYSnLNnrOB/LZlu4B3F3Ot8ppevvhhXOcFB5X/3lwvDT5j0VcwPwW3jwWmHtADz
         X0AcrVU+WjZZnwtnLhWmFdzn8FFlNTetDFUdsTrVhHpU4vbK0v8YAWi3vEjR8fU2FLkT
         0KMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqPZvo5dxvVkJEkbJDDm/1HNhsZQZEenbBkBmMeuzp8=;
        b=rtEIPf86K2Mx3K3LKGvck0y/Pf14ZaH0cPQDk7XNZfVeAbkybNmyBoMzSR66flFLWq
         WfVD4BXRoDCn/KhPJUjDFiJrXcqoYR0FRDBGzGdcIKWbSIB4jCfVqq/471oFwHSkfhJ6
         1/l1EnP0326cNcKoOFBL5x9wLQygn0VOA6SD1J2w5CXlvsRwVU9YUUgaMSLZjMp42xQF
         0bTuiJxd+T0KlV7lo+oKWdGL2hkDWi7ZuLEoIufwYBfDrrpx8zkQVjvwCUC0deUFvcsh
         wLHWVu/IYzPhJTBBZMm5jRtN5ZxNtQWeTyDhyRXz1sWqevAYoErmu9gn235u8gj9ivQ5
         E3kQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaA2itvg+cMscHW1+pK+zsTJ0V7MonnJKpijSmLMnnC1UtZxCVc
	yDSub/+bfJGdSQ8n9FG1jOg=
X-Google-Smtp-Source: APiQypJYrdQXagbrlpvGvhehxCj6WzYGVY6gzdq/JwQhZZUYpasRIPx8ubWXTlxukHv5+QJYocltyw==
X-Received: by 2002:aa7:db57:: with SMTP id n23mr2179701edt.211.1586341366026;
        Wed, 08 Apr 2020 03:22:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:368:: with SMTP id s8ls1100557edw.7.gmail; Wed, 08
 Apr 2020 03:22:45 -0700 (PDT)
X-Received: by 2002:a05:6402:17a7:: with SMTP id j7mr5838074edy.334.1586341365399;
        Wed, 08 Apr 2020 03:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586341365; cv=none;
        d=google.com; s=arc-20160816;
        b=y+jwap5PaLoYgxu54BdSzXAFxYjs25JAcTwutLVIBUgsxxfS3Iq6hWQP9lVz+bJvRI
         IXQPEKFYIBK0vfQm+AJ0/Hz1AspqddJPckosmKY43gb1LTjuo6Ch4Qi2WIqy+O1cradZ
         /G2Ah3gKsXmaDs4JixbFEZEeNs7esidQAx2ZhzlBvswyDoJ0BkBpXXB+14HjD7vxpFEI
         m8z1NPE4UkymrUzXj3aZg8SBlpqUJtN2m/DyJ/ee3Uh6QRKI3UkPGaYa+AzItdmRXIvm
         cLlVXSt3ZwTo/10wkINELfNxQKcghRJz2YQkv4+BBUQ3O+XCDCnD+wB635p12UEhxn9m
         qbvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hFUWuQvfH3+RvUKxsWJsL4BSP/idRCjudICth1NHT3s=;
        b=Il/kaGdeUZ04ld3h2ir8pcGbgFOG4bXJkKcMXZcTPvwVmDduDOhl4AdAx5PnPQFOgn
         ooRcUeaQAhQ81hBqfMkaevH5tLl8LZSJdyzUlmiRDu1UKqXdg5Y58t92G5qQkA8uFO5r
         K/jHOhRt0czY38O6n70jpxsV+5mBKM+Db08kpa7oz0hx3TN2Ri2YY+dfWiRusiYXzDGo
         W2fzWMmVEpTq3xQg6E8OtL4KcmdJa97hrqTf/pRetk/FOa6hzVEuyi/EMkl3AKR5B21d
         HjrQ7tux7VH5z2D/GJ115IpyX5eSSAGM0potConU+0DkmDQxKzPXlO720UDFmgOMPDH9
         DfQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AqIGPXCI;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id v14si284083edr.4.2020.04.08.03.22.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Apr 2020 03:22:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Received: by mail-wm1-x344.google.com with SMTP id r26so4855384wmh.0
        for <clang-built-linux@googlegroups.com>; Wed, 08 Apr 2020 03:22:45 -0700 (PDT)
X-Received: by 2002:a7b:cb86:: with SMTP id m6mr3740892wmi.64.1586341365114;
 Wed, 08 Apr 2020 03:22:45 -0700 (PDT)
MIME-Version: 1.0
References: <202004020117.6E434C035@keescook>
In-Reply-To: <202004020117.6E434C035@keescook>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 8 Apr 2020 12:22:33 +0200
Message-ID: <CA+icZUU_5St7Z31_vSb_57YSm=u9NCKW=MJ2gZUGXnQ8Wx9Mbg@mail.gmail.com>
Subject: Re: [PATCH] kbuild: mkcompile_h: Include $LD version in /proc/version
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Thomas Gleixner <tglx@linutronix.de>, linux-kbuild@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=AqIGPXCI;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::344
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Apr 2, 2020 at 10:18 AM Kees Cook <keescook@chromium.org> wrote:
>
> When doing Clang builds of the kernel, it is possible to link with
> either ld.bfd (binutils) or ld.lld (LLVM), but it is not possible to
> discover this from a running kernel. Add the "$LD -v" output to
> /proc/version.
>

What about also having the linker and its version in the generated
linux-config file?

$ git diff
diff --git a/Kconfig b/Kconfig
index e10b3ee084d4..98fd210786e5 100644
--- a/Kconfig
+++ b/Kconfig
@@ -5,7 +5,7 @@
 #
 mainmenu "Linux/$(ARCH) $(KERNELVERSION) Kernel Configuration"

-comment "Compiler: $(CC_VERSION_TEXT)"
+comment "Compiler: $(CC_VERSION_TEXT) Linker: $(LD_VERSION_TEXT)"

 source "scripts/Kconfig.include"

diff --git a/Makefile b/Makefile
index 91b90ec1737c..42d6834b2255 100644
--- a/Makefile
+++ b/Makefile
@@ -553,6 +553,9 @@ endif
 # and from include/config/auto.conf.cmd to detect the compiler upgrade.
 CC_VERSION_TEXT = $(shell $(CC) --version 2>/dev/null | head -n 1)

+# LD_VERSION_TEXT is referenced from Kconfig (so it needs export).
+LD_VERSION_TEXT = $(shell $(LD) --version 2>/dev/null | head -n 1)
+
 ifdef config-build
 # ===========================================================================
 # *config targets only - make sure prerequisites are updated, and descend
@@ -562,7 +565,7 @@ ifdef config-build
 # KBUILD_DEFCONFIG may point out an alternative default configuration
 # used for 'make defconfig'
 include arch/$(SRCARCH)/Makefile
-export KBUILD_DEFCONFIG KBUILD_KCONFIG CC_VERSION_TEXT
+export KBUILD_DEFCONFIG KBUILD_KCONFIG CC_VERSION_TEXT LD_VERSION_TEXT

 config: outputmakefile scripts_basic FORCE
        $(Q)$(MAKE) $(build)=scripts/kconfig $@

This generates here:

--- /boot/config-5.6.0-3-amd64-clang    2020-04-01 13:18:13.000000000 +0200
+++ .config     2020-04-08 12:16:43.477674201 +0200
@@ -1,10 +1,10 @@
 #
 # Automatically generated file; DO NOT EDIT.
-# Linux/x86 5.6.0 Kernel Configuration
+# Linux/x86 5.6.3 Kernel Configuration
 #

 #
-# Compiler: clang version 10.0.0-1
+# Compiler: clang version 10.0.0-2  Linker: LLD 10.0.0 (compatible
with GNU linkers)

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU_5St7Z31_vSb_57YSm%3Du9NCKW%3DMJ2gZUGXnQ8Wx9Mbg%40mail.gmail.com.
