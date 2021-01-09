Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBVPR4P7QKGQERSLGEAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A952EFC1D
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 Jan 2021 01:29:10 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id o12sf7302978pls.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 Jan 2021 16:29:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610152149; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5cpc313/gb6BxSQ6rKamkP2wdxFzEa77klODeJtdCokx2bz5v+kt8WizHmS9dlf4/
         H+PdFSqzl/5XLxxZPkZN5gSgAlU1jjX5wIrAYWc3s+eH0wLIzDAhkq7zTsA/qqOq0RJK
         zIovePZcXvTLbjGX/VEhu7j6wzpCZusHlNGQprsDcd5fGzcbJMxbHcfmsY9iOVdbgp1F
         CLcm3pAKz09nt2gKCpr0R+Ld53hNjHty5WsuUJ0qdX5DZxi7hhW0pHuziwLnbKLDU6LG
         Cvk8nZhF6hSqKJ5ghpCTcBFjspP6JCZ1NH2RHIauv0evU7+NM4UITWj4FA+bH0Fenm67
         uNjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kWJmebVTjLNgTsI79Vdj9nymApNmgakA8eVEHbHIfcw=;
        b=bcRA8hS1rcHksdlNPpJ9MIZ6ZxDyPCatbgXCvOFkbjqydzdVVa/qN+TPdzi1xzeqm1
         2vTRTcGf4eC6FHCEzel0tpqcHmR7YLgrg7XkOhMbp79A5BJ0uW0Q+xwrhqUosTHiV8Of
         rBHgqPmYf0vMSaGgcNF7mNcU9HJDwJ1VgNgGmT2vqft4s0cSyMISu3OtK6BGGZypjFHQ
         1lErovZZBl5FE+iG4PCSO4IdsWrM8UbXdK82IiUfLg29666eATN+yTFO0ketwrJKnbhF
         VvMigDqZvz0QcaZhOeC8LNLEyJIOlNVx+T0zAjRPX44dEBRIEFg9K/aJCXeNte6gloUz
         +kYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cemTR8rQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kWJmebVTjLNgTsI79Vdj9nymApNmgakA8eVEHbHIfcw=;
        b=rfYxydhW70b01aDejOyI7Gvim6BJ5X2CXyjxHavYdw1KnSMh8lcq89tWZRbV2Uo8No
         b9kbEQ9Ze9ex+iDOCU6z+Mz5wEQRv+xDYtkS8cR9iTYW3tUe58iOI2Nwir38eH/df8ub
         Lf6VkSYnV1OGx/EZGZRClESGgsSGx88LiWQ9PZnDVkTDmmUC8TMS6RNe42+9hVSnwihV
         NIdmOIVchZe7jBKEoITOtcivwhe4rdeH6mAU02UE7KDWULjxDlGYfDDToKjzOz8M5oKW
         yub+7YrzUMhsRe/twNQ1JhmNLuqla7tQ5H29niqQKeNMVny8pnG+Lb789EBleCycokX4
         ejvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kWJmebVTjLNgTsI79Vdj9nymApNmgakA8eVEHbHIfcw=;
        b=kD1rF5K//0TOtk0258S1teSzJQjcChhvNPMUFQ3rmativ6SCGqafnL+8lVIlHaX/kg
         tO8Mj+zLYF7L/aYZI0OGHRsICXgGEgEjKhEXBJACah5iJvczFrd0ks96kYctUPJDjkSB
         EBLqnZLDq6TyRA+IGzES0VidGhasOhl+D9rpICTUCxePqyog9agqHYbIYCdQNya0e3nU
         lHCYeT5qeQn3+8TbFuinstQmq/3rojgwJcJpuMa2dNsNpev8PcvT4Ktky7d1xHK77HWC
         XZUkRElA76DHcbD7HH5ZqBLoGNvp+/xDSzXFUG+WjW4DI7RAUZKLPYUyzXEb4/mnTNZH
         ukTQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5306/n5D0Xi2iDR3PVg5DEQIH3f+/tg0pPUlFXfC04tdZzCNDayv
	XjYmUf2zVhrjmHUtFVHT8jc=
X-Google-Smtp-Source: ABdhPJyfTKjcwsnhutF8iPuR/bnqGvtKIDPQMW3hgyrMdCkldKTvOAJP3xE1b+PjKKrccTJM2eaWGQ==
X-Received: by 2002:a17:902:b584:b029:dc:1425:e5af with SMTP id a4-20020a170902b584b02900dc1425e5afmr6373867pls.3.1610152149503;
        Fri, 08 Jan 2021 16:29:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:548:: with SMTP id 66ls5515429plf.6.gmail; Fri, 08
 Jan 2021 16:29:08 -0800 (PST)
X-Received: by 2002:a17:902:b781:b029:db:e4ee:b8c7 with SMTP id e1-20020a170902b781b02900dbe4eeb8c7mr6339771pls.69.1610152148829;
        Fri, 08 Jan 2021 16:29:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610152148; cv=none;
        d=google.com; s=arc-20160816;
        b=dvw9hhF559k9BGrjjHQJ3k8/5B+nPxGdABGB1a4DNHmeE8Xp7sKbqJvL+DbenY+KzX
         d9i4htPpPnk2krSMqccW9QQqdhPOQAFW34g2aRlIU+S32P14/CjA8C4kOtaN5LkhMiI8
         Snval/IaIykRlhh1f4ET9YXmS7GwglAKNY4l8WmlXaurGOSnJwXck4FY2FqgGfKvOMR4
         Rzwjnfwm5xFeyyUlTWD+2MyBbMgzLrnUJTHJkMHWqL6BB55JvN8VszgaD6huPUKhAkgC
         RGzCTg2YahR9eSI1/ALGmfN2nOzRY5iT30sMM7Swef1LZ99hW+W3ZNGW7G988OQ0eqCG
         4+1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=eveSrO3foL1YR94SADi/xGNY6RU/HiTPaoR//1jI2bc=;
        b=vwDosWNc+zsou538aTeHyB3flp0kX0vzu8Zd76hmuXDZPEw5wq2CbuWP45K9KY9Y+n
         i+OEYiDsnPnZvwxiIeIYfRur0iIGHyw/H3c0FRF47VaUmJ2kAWvSnPXGXTsY9ms919Hn
         N/CQq2MxPZ2d8ed1J48x8tktBx9eDGK9viDW42xDN+SZIak/llPPH7N4UR+rgQyw3v6F
         SIAfupIA1MRsOl2JzFhK+Awc3n0goWWqlpvfj6eZTsMh27X/u21KYCJeH2hp8Zt7Cmj2
         0pS6wREY3/ds+Y+QOY4gEBc90qli4gE1ZC0dAX38SI8e+IoKPTLsM2Thl4mfHP8OjXXa
         k/+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cemTR8rQ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com. [2607:f8b0:4864:20::632])
        by gmr-mx.google.com with ESMTPS id z9si981959pgv.2.2021.01.08.16.29.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 16:29:08 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632 as permitted sender) client-ip=2607:f8b0:4864:20::632;
Received: by mail-pl1-x632.google.com with SMTP id j1so6548444pld.3
        for <clang-built-linux@googlegroups.com>; Fri, 08 Jan 2021 16:29:08 -0800 (PST)
X-Received: by 2002:a17:90a:db08:: with SMTP id g8mr6363172pjv.163.1610152148560;
        Fri, 08 Jan 2021 16:29:08 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p16sm9332768pju.47.2021.01.08.16.29.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jan 2021 16:29:07 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Steven Rostedt <rostedt@goodmis.org>,
	Sami Tolvanen <samitolvanen@google.com>,
	Will Deacon <will@kernel.org>,
	Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org,
	linux-pci@vger.kernel.org,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	linux-kernel@vger.kernel.org,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kernel-hardening@lists.openwall.com,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v9 00/16] Add support for Clang LTO
Date: Fri,  8 Jan 2021 16:27:13 -0800
Message-Id: <161015202326.2511797.6087273163265436487.b4-ty@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201211184633.3213045-1-samitolvanen@google.com>
References: <20201211184633.3213045-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cemTR8rQ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::632
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, 11 Dec 2020 10:46:17 -0800, Sami Tolvanen wrote:
> This patch series adds support for building the kernel with Clang's
> Link Time Optimization (LTO). In addition to performance, the primary
> motivation for LTO is to allow Clang's Control-Flow Integrity (CFI)
> to be used in the kernel. Google has shipped millions of Pixel
> devices running three major kernel versions with LTO+CFI since 2018.
> 
> Most of the patches are build system changes for handling LLVM
> bitcode, which Clang produces with LTO instead of ELF object files,
> postponing ELF processing until a later stage, and ensuring initcall
> ordering.
> 
> [...]

Applied to kspp/lto/v5.11-rc2, thanks!

I'll let 0-day grind on this over the weekend and toss it in -next on
Monday if there aren't any objections.

[01/16] tracing: move function tracer options to Kconfig
        https://git.kernel.org/kees/c/3b15cdc15956
[02/16] kbuild: add support for Clang LTO
        https://git.kernel.org/kees/c/833174494976
[03/16] kbuild: lto: fix module versioning
        https://git.kernel.org/kees/c/6eb20c5338a0
[04/16] kbuild: lto: limit inlining
        https://git.kernel.org/kees/c/f6db4eff0691
[05/16] kbuild: lto: merge module sections
        https://git.kernel.org/kees/c/d03e46783689
[06/16] kbuild: lto: add a default list of used symbols
        https://git.kernel.org/kees/c/81bfbc27b122
[07/16] init: lto: ensure initcall ordering
        https://git.kernel.org/kees/c/7918ea64195d
[08/16] init: lto: fix PREL32 relocations
        https://git.kernel.org/kees/c/a51d9615ffb5
[09/16] PCI: Fix PREL32 relocations for LTO
        https://git.kernel.org/kees/c/dc83615370e7
[10/16] modpost: lto: strip .lto from module names
        https://git.kernel.org/kees/c/5c0312ef3ca0
[11/16] scripts/mod: disable LTO for empty.c
        https://git.kernel.org/kees/c/3d05432db312
[12/16] efi/libstub: disable LTO
        https://git.kernel.org/kees/c/b12eba00cb87
[13/16] drivers/misc/lkdtm: disable LTO for rodata.o
        https://git.kernel.org/kees/c/ed02e86f1752
[14/16] arm64: vdso: disable LTO
        https://git.kernel.org/kees/c/d73692f0f527
[15/16] arm64: disable recordmcount with DYNAMIC_FTRACE_WITH_REGS
        https://git.kernel.org/kees/c/09b812ac146f
[16/16] arm64: allow LTO to be selected
        https://git.kernel.org/kees/c/1354b8946c46

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/161015202326.2511797.6087273163265436487.b4-ty%40chromium.org.
