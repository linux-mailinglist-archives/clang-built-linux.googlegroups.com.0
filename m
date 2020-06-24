Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNH4Z33QKGQEO5EWSUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE91207DC2
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 22:57:25 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id y36sf2510046qvf.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 13:57:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593032245; cv=pass;
        d=google.com; s=arc-20160816;
        b=dgo6dS22d4JVyQGtMXEZwm36Jd8ld6PLuHWK3O0Ti4sp7nUr959yaBfAgdXLK3ZCO4
         FuvvOiP17JUVMNM4SSaNalgjt0cs0XrNS2GCRlpcwzdpFs9cZXxMJ/pdJ5phMoibHTqN
         1Rz6+qaxVyOgT0uMn8MVBrnMp+y8xU2rX9ydqXA6aAmVmLYtCIDSV4QKaWHPIwwAgUWs
         xZZlM888J3xZlSCs9xtbr83UEu5hUKwCL7sCchUZXa4tUcjzQTfGdRL+NLIDYxGib3Hj
         c4QPofkwStsLdn417GuksEmn6LCUMMpGvnAzw1m33MfAKZJJKvUnlIXGuF0NKThMmvJs
         StxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=RzEyIgKISh2S7HsDD49Bxyxdua6ITgdN1M/F1N3m85I=;
        b=ojQ9RIvrrqa/dTd9VGNvM8b8vRR1iDZzZtacTaxBVm5ZvA1n+4T7t7me9voILWSHKe
         IK8gwI4fJYLT+kYzFHQS6zZysKqjunfFsYBfceGV3jfOnCTB4BUH3WMm8KODmP7k67k2
         AT89I+cpTGbb7zoTVyvvXlKL5hAxRA9mUTq7yk3jC9J26E8Ofu9Nnp1TY/rcu35qDCte
         fetEt7e04FdvCOEqEWxgJNGPitZeAvjHCERb6cY0HDFSllP3mK2w30RESToj7q8oQCSK
         NybaM5ojZRYXL/RkBJVOEoOViXEVp0Y2ICmu8lgGWN7h5k+/k7g9SKHF+YfGvSp47HB+
         tVDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPMaWjSi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RzEyIgKISh2S7HsDD49Bxyxdua6ITgdN1M/F1N3m85I=;
        b=nyRJcAnafSSrqoeHsYl8MgIq5kLX+tSt1o4pexZdaY0IUP6neLu4tFtfAK0SOiiTM9
         KOSEjkMtvIiPteDAi1N68FGZbb/yNeduycsZAZGHRRqQjRYo/LU09X9qq3qnwV6QxKTd
         9n2/rcfCxq38twNx4YqnRFcsnauoCtek+bQHacz5NuXNup5J/Gwtoc8ES8IizFHj+A5G
         y0FXnWQLz8VxQvqiOfNapaBLLRGoWND8NR+hDR/rJesZuzA+4RFhXRHi3p0mtJIiNeIQ
         z4FlFCvkFdGq0CD8LKNWXCcOt5ZC4/IlFsE2K7nsEtRRAvfszUAfn45/KbH0eLaF206n
         ts0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RzEyIgKISh2S7HsDD49Bxyxdua6ITgdN1M/F1N3m85I=;
        b=FKJ/k9FimMO4MdyiSSs139ZxLcu0VJ1Xy3ptQoYSQS/FcXX10SN8hQHC/7wf2L9M9s
         W4bUaYDX63NGT9IheVOsK5aaO+vmh6yz5FRbvry89hvlIRwGrIsBU3SvFoI6qeX4pmqc
         EPvHWdIdwh0dbXxRalFmTHi22NRlFcDSKPI+rOHIwtt7DUj5PqwPTQVb1gdtrXTmYCa3
         1cZH1OXY3Y1bnTDbMzX3czcVkXoruhF12Ct55gqbo1OMhWlncvW8mJ0UP58LWFOHTlnG
         82AvmTP/sS4TwPJqVgOXknsE1zDXbKXjbsvy8kWoYLs++9kCEx3EcNo8RX9Taex6jK6I
         /v0A==
X-Gm-Message-State: AOAM530eKWd6AAd4oC9qM1MonIFj2SW21RSLiniS3WujMHKX62FdXhsJ
	QHzHEkxAZxsQn637lxcxjAc=
X-Google-Smtp-Source: ABdhPJx04HoYwqz2xynM9AZWxsNgpon6XwS2U3MHhJNS5kxDN2j+xcGLomjL3qGEo/zF0z/e5U9KCQ==
X-Received: by 2002:ac8:24a7:: with SMTP id s36mr2946808qts.125.1593032244945;
        Wed, 24 Jun 2020 13:57:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4f30:: with SMTP id fc16ls756658qvb.2.gmail; Wed, 24 Jun
 2020 13:57:24 -0700 (PDT)
X-Received: by 2002:a05:6214:1333:: with SMTP id c19mr33140063qvv.72.1593032244536;
        Wed, 24 Jun 2020 13:57:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593032244; cv=none;
        d=google.com; s=arc-20160816;
        b=TzwsNQyw8H6B0AkMnD7jb1wHv7clufwckvHGbMZnmG173x+LgyksnoCGdJWDdmQoW6
         VePY6dlczFmYgRLD4aaG0QezQE5ET1BO7Exzwfs9yxIhlRzKCqtp+esY8vHAAkGlGCzm
         QeDvNs8nF+K0Wi6Mf36IXNwmD0vfMqcZmMCa5PLk+t4jS4ORPUz5UuHbdOaNkvVe5tbz
         epYaMYykcp7dpT3O4zb4kFCN/8183PW3F+94kkDyaZWZJlKk48PqplZw977YDZza51Xs
         axHebtH6j6OAgMsAYomhxueCX3iiffp5Wa4WoevS0BHhv1kogdOREogAULvnMCtthiLV
         RsOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2UVd4Vpuu4Hnm6XlHGR5cRrZnqXWEFfAzghKkxqA5PE=;
        b=uPc+er41mOwJaq9fBmwmNH9B0NQAW8ugFWzzJX4Q3JQcs2/n8s35GqmQ6g6dRa47Qn
         ld8I4B8HebQI5SR4lqpg0c/lLOdB+E7mtZXLZB365nzPxmbnw1n5O7zcQv3FotioUgVc
         MdjSX2gvg8b4qKsnjb/jlehXGtVw5owEDOFP6OwhrLkmegKollE9XFpwDVYOsl6x8Ypi
         XZdkCmJDPhkNpf4Armb6UitdIe2K7G2NQdYNr6NevHeWlDtQ6wX14blvIQNF+rxvxUc7
         hltWI+wAEZcbrBhqDHNeVm4GtH76QSWcm2AJy/CR3IDnZeScJ1Wmv+MlksKCBDX+lAFe
         f42Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=BPMaWjSi;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id v199si1300143qka.5.2020.06.24.13.57.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 13:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t6so2045237pgq.1
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 13:57:24 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr22841048pgf.10.1593032243514;
 Wed, 24 Jun 2020 13:57:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com> <20200624203200.78870-14-samitolvanen@google.com>
In-Reply-To: <20200624203200.78870-14-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Jun 2020 13:57:11 -0700
Message-ID: <CAKwvOd=XxsGowjitcqDrw6g-cxB=kqAsvRS+PyaMrYWnPgjqbg@mail.gmail.com>
Subject: Re: [PATCH 13/22] scripts/mod: disable LTO for empty.c
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=BPMaWjSi;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

On Wed, Jun 24, 2020 at 1:33 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> With CONFIG_LTO_CLANG, clang generates LLVM IR instead of ELF object
> files. As empty.o is used for probing target properties, disable LTO
> for it to produce an object file instead.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  scripts/mod/Makefile | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
> index 296b6a3878b2..b6e3b40c6eeb 100644
> --- a/scripts/mod/Makefile
> +++ b/scripts/mod/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  OBJECT_FILES_NON_STANDARD := y
> +CFLAGS_REMOVE_empty.o += $(CC_FLAGS_LTO)
>
>  hostprogs      := modpost mk_elfconfig
>  always-y       := $(hostprogs) empty.o
> --
> 2.27.0.212.ge8ba1cc988-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DXxsGowjitcqDrw6g-cxB%3DkqAsvRS%2BPyaMrYWnPgjqbg%40mail.gmail.com.
