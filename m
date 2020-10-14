Return-Path: <clang-built-linux+bncBCQ2XPNX7EOBBGMRT36AKGQEMVT6AII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 5011128E926
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 01:24:10 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id 47sf476310wrc.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 16:24:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602717849; cv=pass;
        d=google.com; s=arc-20160816;
        b=YYNRUuYhBrlUn3FtV+u5aD3JAVBHxJRsqD8hjd3KjvQwok7SS0CqaGVzdFt9iNtLUR
         chNLga//DHVCgydDF9lKcUQ1x0OE5YV2LkTRP40b1RtH/R+nXNOiaz51NUCdgQ/3UR00
         SgNvddGjzuy2PFrNp1PJxcxsyNowYoRo46OkUKs/2GoctE2pDiNtqtyqOoqT2uzNvNBI
         kJS9z4e7mC+/93+6eOa2cLB/A6MPqtVzz2Mej5IdprOl9cGQARAbt0Fdh22so0a7tdVr
         1zanwBI2XTXHTrqjyOfzcYFwCHgVBjib6fmef4Ltr2CNOJ+Y9Kls1YiSQSXpIwVuouc/
         NO2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Q8bVpc2Q6EdrL4tuLrYqy2CpAqJGyvpSLnXRXSWWmes=;
        b=vbVUQ5qgpUb6eh9i+Mkh+IszaooLfd5Msi09kYEUUmYUxrYI+bnHPvmBKzdgASSw4n
         lG0m0Wf9AjvdNxzSu+0bjHCmpanDxzaLvPeZyzKr2vkJOZYF2iFDxuJRzLxat3g7PIZ3
         Hdaxw9pse/Odvl2IHq436Sw1E/HH+vaC4pwA8vtEyorNEPJXJJ8ORvPVwMhHTfvm6Q45
         E1FQG/f06sgs6Qwyinj9g1rqy5jjlvT7S0UaLFANJddI1rWsH3JxUdC52pHjZsABj5E+
         zlf78sOWl27898h6QLl3DeQZd5UkSb40nVff8VIsAMdwCVC/QkagkkotHP5OBGoj9dYP
         61dw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WE7IFwP9;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q8bVpc2Q6EdrL4tuLrYqy2CpAqJGyvpSLnXRXSWWmes=;
        b=rNrlQzeoAZQHtTWe/rPcRh9SDSR2d9wTzvUfaGwtSPZNJRxwHekKdYFqOe4k6SlKyC
         8J6pIBZYN6/u/DpaFwJKZsy++Wg8Y/Nrkbhhvju0q+jTu9mDANvyhjnlnz+Wyz/MxpEw
         pQMgsU/Z0KwHdZ/TQ0D5iOSKWHeo2eTumNvv9UEwz3dxrFcpMXYEhDb+7P9XWtRCWMKp
         1cTFQOQSB5qceQlTfaH3nk5QpsDHpXjDdDFrIH1O7e04y2HipU1RBXrIR9enKSiHhIfx
         /EOreNiarGrXqzCQw2QiT/TI4wr/ktj/HUqqKympcwfXkJeQ+bBooKmM9HI5knw1Tb7x
         ACcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q8bVpc2Q6EdrL4tuLrYqy2CpAqJGyvpSLnXRXSWWmes=;
        b=ZMP0oVJ/iIwOBrMt/wZPcT05DgQAA7KnVnOKq5L30QhcDczIkfZTNQYhsghtEYA875
         TO/UsrxXHoYrSpMuX271IvLdO5WcEi6EnYD72zRE7+lYGEyhmNG2rnDTUmIV6OIOTgQA
         goNrMrb8RShsjsJ4lHtVhWimjCv4zoauj1/DeelPVkWth6ZPmlq/vDMqTXtdFfoGA4G+
         8KQghHPBx9nHyKeQraoJ2HFWSiYicZG4IQtZg7gsIIUepp2FvVFVMM1rHyIHLPeILlcT
         OwbUIo6EXhtfYkgY9+4R+aw30DvKHFaXeMoKd1n8RKJ0N7Y1QlQ1aqHEq9G6W/mbMaGO
         bIxQ==
X-Gm-Message-State: AOAM531A2BiwxeUkzO5nror2Jun9/cTT9KemPORGYYcCf6jCwsk09w6v
	JLP1SmD61QhRRHlmYqISScg=
X-Google-Smtp-Source: ABdhPJzDYjknjEz3HSASlEki1uvOr4hIdUha+Ozm3vPfdXswc7YQvEtPU3tbFrBEaxTJp1uowPC3ig==
X-Received: by 2002:a1c:32c6:: with SMTP id y189mr1096532wmy.51.1602717849626;
        Wed, 14 Oct 2020 16:24:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4986:: with SMTP id w128ls466368wma.1.gmail; Wed, 14 Oct
 2020 16:24:08 -0700 (PDT)
X-Received: by 2002:a7b:ca42:: with SMTP id m2mr1067984wml.145.1602717848793;
        Wed, 14 Oct 2020 16:24:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602717848; cv=none;
        d=google.com; s=arc-20160816;
        b=Zbpv0JMr057TSSuePORIVCqc0ebICJ+UVdH337hSZNBCDoys6qlJH5DC5kKbgQU0CU
         qwA8a9s87Igk1xVOuTheommV6VkHkiCYlqfVGZjOWpy3H6xDG2+JV0FJ4VRUB9JyDAZ8
         wvGswtwS/MzWz0kjr0FH7EId2KYyyhzLKFUVMtpp5wqDKO3v0/yt2/9POAa8Wuu7he6V
         Wa6hUKrkxbSKhO3qhx51jA/yOqVFnez27Fws4+qZJWEN0scsINCHTQzELfJ7xajXIniv
         9SD8fyMmRk5Q/YHA/1zP0kDKbhSSs+m42H7zD2KY/wU09Cp15tvA6UtqlsmZWbfRjATg
         JuDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G1p4V+7SeMLHnh08qcMlfbDl3wtxivqtmtup/MyvFDY=;
        b=xnApAiZQk+ATVmweIODgYgvWidLe7EgJJSkNq+vHiPr+dpV2sevlOiazYhFTFqwPJP
         wNscM0c8QFWDfmGc0KktSp662cc7DpogDH2M16GDF1ZmnpU4CKBXT153uaWVa7625mRd
         a2vubVi/I6XpHsKlPHcCLe+ihp3fEACgnCgYVNsYzUBsKSIy0k3NxSHebckur2VQKM4I
         Vw+dehJtR8eOo0bm5WbY/X8vRT+6/lWpXnG4wEDEfS5LlGm951M/k5PZLDkwkaxRiIuk
         ZTrBFi/XTyTFd0TMmymNzsH7vKZ38M1UsB6BrgtBnllThPV6yEZU2vMuYbXxaoiEeNMC
         0ryA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WE7IFwP9;
       spf=pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::242 as permitted sender) smtp.mailfrom=jannh@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com. [2a00:1450:4864:20::242])
        by gmr-mx.google.com with ESMTPS id f144si25816wmf.0.2020.10.14.16.24.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Oct 2020 16:24:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::242 as permitted sender) client-ip=2a00:1450:4864:20::242;
Received: by mail-lj1-x242.google.com with SMTP id f21so1190789ljh.7
        for <clang-built-linux@googlegroups.com>; Wed, 14 Oct 2020 16:24:08 -0700 (PDT)
X-Received: by 2002:a2e:e1a:: with SMTP id 26mr156295ljo.377.1602717848016;
 Wed, 14 Oct 2020 16:24:08 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com> <20201013003203.4168817-23-samitolvanen@google.com>
In-Reply-To: <20201013003203.4168817-23-samitolvanen@google.com>
From: "'Jann Horn' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Oct 2020 01:23:41 +0200
Message-ID: <CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM=CErjsv_A@mail.gmail.com>
Subject: Re: [PATCH v6 22/25] x86/asm: annotate indirect jumps
To: Sami Tolvanen <samitolvanen@google.com>, Josh Poimboeuf <jpoimboe@redhat.com>, 
	Peter Zijlstra <peterz@infradead.org>, "the arch/x86 maintainers" <x86@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-kbuild@vger.kernel.org, 
	kernel list <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jannh@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WE7IFwP9;       spf=pass
 (google.com: domain of jannh@google.com designates 2a00:1450:4864:20::242 as
 permitted sender) smtp.mailfrom=jannh@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jann Horn <jannh@google.com>
Reply-To: Jann Horn <jannh@google.com>
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

+objtool folks

On Tue, Oct 13, 2020 at 2:35 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> Running objtool --vmlinux --duplicate on vmlinux.o produces a few
> warnings about indirect jumps with retpoline:
>
>   vmlinux.o: warning: objtool: wakeup_long64()+0x61: indirect jump
>   found in RETPOLINE build
>   ...
>
> This change adds ANNOTATE_RETPOLINE_SAFE annotations to the jumps
> in assembly code to stop the warnings.

In other words, this patch deals with the fact that
OBJECT_FILES_NON_STANDARD stops being effective for object files that
are linked into the main kernel when LTO is on, right?
All the files you're touching here are supposed to be excluded from
objtool warnings at the moment:

$ grep OBJECT_FILES_NON_STANDARD arch/x86/kernel/acpi/Makefile
OBJECT_FILES_NON_STANDARD_wakeup_$(BITS).o := y
$ grep OBJECT_FILES_NON_STANDARD arch/x86/platform/pvh/Makefile
OBJECT_FILES_NON_STANDARD_head.o := y
$ grep OBJECT_FILES_NON_STANDARD arch/x86/power/Makefile
OBJECT_FILES_NON_STANDARD_hibernate_asm_$(BITS).o := y

It would probably be good to keep LTO and non-LTO builds in sync about
which files are subjected to objtool checks. So either you should be
removing the OBJECT_FILES_NON_STANDARD annotations for anything that
is linked into the main kernel (which would be a nice cleanup, if that
is possible), or alternatively ensure that code from these files is
excluded from objtool checks even with LTO (that'd probably be messy
and a bad idea?).

Grepping for other files marked as OBJECT_FILES_NON_STANDARD that
might be included in the main kernel on x86, I also see stuff like:

    5 arch/x86/crypto/Makefile                            5
OBJECT_FILES_NON_STANDARD := y
   10 arch/x86/kernel/Makefile                           39
OBJECT_FILES_NON_STANDARD_ftrace_$(BITS).o          := y
   12 arch/x86/kvm/Makefile                               7
OBJECT_FILES_NON_STANDARD_vmenter.o := y

for which I think the same thing applies.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAG48ez2baAvKDA0wfYLKy-KnM_1CdOwjU873VJGDM%3DCErjsv_A%40mail.gmail.com.
