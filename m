Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5H2YX5AKGQER3QBVMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF2025CE62
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 01:34:13 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id u128sf4423743ybg.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 16:34:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599176052; cv=pass;
        d=google.com; s=arc-20160816;
        b=cQpLq5HpKUnChJXf+d7phhLTpSQYy9nu2rIHpGNMQ+U7P8y1AKo2ACusI6J8L2TUhD
         mQqYE/hNK/Y+tqszSh0T2J84RJMY2D4RO0DlDDrg9na1Qw7KvbqlqF79A7QBwdSfkO4m
         Le/AxPtLexrBVUkudD7cvEA52wl45tq4pCNDvGbpGVIdzR7HZN0UC8eguSc9cGiwnguf
         wO7/9wfaoxfoeGSc0yW6h3moMdUNlGt6+dBV4LPiI+zC2zSXTJ3d+8p/6xw0TTKA81kW
         22OpIDbncKAd8hcfE3nM8HJdRrWeIVcQceWRwc1f6CsS5nTdEexRmSuvUt7KNkDGNNWp
         Z3uQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=aNBVaN9l2QsgIrhsUuyrOssHsriCISOfP5vyS7rOsho=;
        b=mes1UdqPSKbpvVmRkLJCujotVzBZoTS8W75rEwb64CwXQVNlz+jCB0crB1WNvpOtiR
         WCe5WGNO5uV5KKS7GOmduRlDhVZUDedh3MCnkBfgzZL2C3VNPdou7ucVvK6WZMIAS5c/
         ZZIVVGlqtwvIUhTHokD8r2ddGtywPhaWUeDQGRjGxhuq5Se/Eco//G35nqxpUtXlUph5
         cEoDpyjeOstOPAMDZ553dHp7NBimyeIa5brqq6eXhj2aMUlf8ZymDKP9n/ZSmE2z+WpE
         N06y5qMSYT1m76+Kq5tSWrPVP1hT2t55lcyjxeso+lHqzW7tPKJ5rQS9H7hb/J2qc5O7
         QRhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YPszo9Kh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aNBVaN9l2QsgIrhsUuyrOssHsriCISOfP5vyS7rOsho=;
        b=LeX2GmkhbhpxRl+OI4GOLm65ixraqeaIPEDyGDZSrri+lcCT+tQpmTovg87eCq+M9d
         OLHrl9h04BA26OGUL8b35pyH767BFJy67PgXo4tauJU1S4u72AykVOI4grSSODziDONx
         rErnkn2fuvAj9+NhVapsBENecvnPN/BKFzzRn84H1cCX3cXP8kaOiybJwtwK7QAGyN2c
         xNiDJX+5ls0wBqAJji65uaDI4xWbIEjk9nWVDCbYi80dZNnwJjGb2+fqz0MSKaiDciWU
         tunbspkyHbWBTooXVpcIKSG9McpDiQ7gIvUI39X60ZYylByPPD62H8y3kEUDJn5LZe5s
         x2Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aNBVaN9l2QsgIrhsUuyrOssHsriCISOfP5vyS7rOsho=;
        b=cLYHgImmqj6WryyOaFElZ7pz0ytMuLvUKcz8gddTRcRnzpKqeEqBVw+1Qnj4MlAU/F
         E+HxNGMNfktQnCReuYPXD7nXx4Gl2KzgvuKniSQN733/is9NfPkLEwIUQ2UXl0QpBiP5
         0S/DVdos37j+D/obEw6ZNunM47VdOOHhiO4IZ1wyb+IVsLsmNh4UiwQVSDoYUGzrLQXI
         +ebgFIIydW2nFumvLopZpJyaP3AGtrkjwKdOkFDzqXN7/be3HKznI+vsPUxR9BqUkcbj
         JydboEzlrO7cl0uq30BoR/QcfKcPGEKAJs5VfDBeWZ3lHUHYPeZvMGzFlWFx6EJ2Xzne
         jJrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y5e2AeKVFX30vy8fIEewq0oLxQVfYln/eSVd1LSwr8SgbJaju
	iBnLSWW3/UvQjpJt1rQ0fwE=
X-Google-Smtp-Source: ABdhPJweKTPRSq1Qciv6T3Kej9O57fteFjXaMDwHYXEeFX86R6fDTlnFpLCdMQnF9X7+2wS1VLPrNw==
X-Received: by 2002:a25:487:: with SMTP id 129mr6132735ybe.485.1599176052735;
        Thu, 03 Sep 2020 16:34:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:781:: with SMTP id b1ls3540055ybq.2.gmail; Thu, 03 Sep
 2020 16:34:12 -0700 (PDT)
X-Received: by 2002:a25:2c8d:: with SMTP id s135mr5966885ybs.466.1599176052353;
        Thu, 03 Sep 2020 16:34:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599176052; cv=none;
        d=google.com; s=arc-20160816;
        b=WFJgTGNvxbhYrRJIBf8fPO2IOgKnxvSTwWH3MDvcGiNIBc9FDsWnGgbxYxKvVZtVz/
         HbkOfJriNFO4X3ZzW4Cq5MMmebjAn+4c6pUizqeC+jULITykpPlp5nYo4lCu7k5wWNZF
         xsPkXyRaGYP2lL/xw8fnLS2uYHxU81n7uvQyJa105mEvz4heuDl8KfSe71ex2UZpx+Ap
         mmNlN27QabVext7SUxDpaVb4n/5Le8fuI1pmRV+2j814JTlW1c+KwF84iDon8eEleiwV
         KdvfsJb6DLSs4G03/BHe4xQ510bPBWZyfUODnGQeZmTvsvG5Nlf8emeQxAE/g0QZy6Cy
         XYhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4fH9b479jfHonzzWwhHXw+3tbSLJMOM3KzAo1jerfBs=;
        b=WNmF+YX6q/DVQzmm6C095/BphsQ/5fOAFoLjNdvlkdzfPe/sPmfEea/xSBy9S1BIrk
         7znITRZSDUkm5Qei5boA80gpyqYHwC971O1QXhMfBsybGbE+RbCmYzgPPQEdknHTL42c
         sBN2x7hqMP0MaONz0jwlzh7t3HvAXw7XpxwOx6qRnf7YrxT0NgKQz6bhYO77ecV2AGE+
         cMluofhRs3Am0RLyGLZrhWtMgQh8pHGElaRiOEg9ACG9zsLrK8XWzs9hJGj0JfKNYA/M
         B53wbWtPmHKBLdXkIbKbAgv4gRtiFu5dPoezRqfjoYYQss2u+HNOYB41LT+MNs7/KPlH
         Zf1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=YPszo9Kh;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id p14si552844ybl.4.2020.09.03.16.34.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 16:34:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id w186so3345906pgb.8
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 16:34:12 -0700 (PDT)
X-Received: by 2002:aa7:9707:: with SMTP id a7mr6021587pfg.257.1599176051457;
        Thu, 03 Sep 2020 16:34:11 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id my8sm3390805pjb.11.2020.09.03.16.34.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 16:34:10 -0700 (PDT)
Date: Thu, 3 Sep 2020 16:34:09 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
Message-ID: <202009031557.4A233A17F1@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-1-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=YPszo9Kh;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Transfer-Encoding: quoted-printable
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

On Thu, Sep 03, 2020 at 01:30:25PM -0700, Sami Tolvanen wrote:
> This patch series adds support for building x86_64 and arm64 kernels
> with Clang's Link Time Optimization (LTO).

Tested-by: Kees Cook <keescook@chromium.org>

FWIW, this gives me a happy booting x86 kernel:

# cat /proc/version=20
Linux version 5.9.0-rc3+ (kees@amarok) (clang version 12.0.0 (https://githu=
b.com/llvm/llvm-project.git db1ec04963cce70f2593e58cecac55f2e6accf52), LLD =
12.0.0 (https://github.com/llvm/llvm-project.git db1ec04963cce70f2593e58cec=
ac55f2e6accf52)) #1 SMP Thu Sep 3 15:54:14 PDT 2020
# zgrep 'LTO[_=3D]' /proc/config.gz
CONFIG_LTO=3Dy
CONFIG_ARCH_SUPPORTS_LTO_CLANG=3Dy
CONFIG_ARCH_SUPPORTS_THINLTO=3Dy
CONFIG_THINLTO=3Dy
# CONFIG_LTO_NONE is not set
CONFIG_LTO_CLANG=3Dy

I'd like to find a way to get this series landing sanely. It has
dependencies on fixes/features in a few trees, and it looks like
it's been difficult to keep forward momentum on LTO while trying to
simultaneously chase changes in those trees, especially since it means
no one care carry LTO in -next without shared branches. To that end,
I'd like to find a way forward where Sami doesn't have to keep carrying
a couple dozen patches. :)

The fixes/features outside of, or partially overlapping, Masahiro's
kbuild tree appear to be:

[PATCH v2 01/28] x86/boot/compressed: Disable relocation relaxation
[PATCH v2 02/28] x86/asm: Replace __force_order with memory clobber
[PATCH v2 03/28] lib/string.c: implement stpcpy
[PATCH v2 04/28] RAS/CEC: Fix cec_init() prototype
[PATCH v2 05/28] objtool: Add a pass for generating __mcount_loc
[PATCH v2 06/28] objtool: Don't autodetect vmlinux.o
[PATCH v2 07/28] kbuild: add support for objtool mcount
[PATCH v2 08/28] x86, build: use objtool mcount
[PATCH v2 17/28] PCI: Fix PREL32 relocations for LTO
[PATCH v2 20/28] efi/libstub: disable LTO
[PATCH v2 21/28] drivers/misc/lkdtm: disable LTO for rodata.o
[PATCH v2 22/28] arm64: export CC_USING_PATCHABLE_FUNCTION_ENTRY
[PATCH v2 23/28] arm64: vdso: disable LTO=20
[PATCH v2 24/28] KVM: arm64: disable LTO for the nVHE directory
[PATCH v2 25/28] arm64: allow LTO_CLANG and THINLTO to be selected
[PATCH v2 26/28] x86, vdso: disable LTO only for vDSO
[PATCH v2 27/28] x86, relocs: Ignore L4_PAGE_OFFSET relocations
[PATCH v2 28/28] x86, build: allow LTO_CLANG and THINLTO to be selected

The distinctly kbuild patches are:

[PATCH v2 09/28] kbuild: add support for Clang LTO
[PATCH v2 10/28] kbuild: lto: fix module versioning
[PATCH v2 11/28] kbuild: lto: postpone objtool
[PATCH v2 12/28] kbuild: lto: limit inlining
[PATCH v2 13/28] kbuild: lto: merge module sections
[PATCH v2 14/28] kbuild: lto: remove duplicate dependencies from .mod files
[PATCH v2 15/28] init: lto: ensure initcall ordering
[PATCH v2 16/28] init: lto: fix PREL32 relocations
[PATCH v2 18/28] modpost: lto: strip .lto from module names
[PATCH v2 19/28] scripts/mod: disable LTO for empty.c

Patch 3 is in -mm and I expect it will land in the next rc (I hope,
since it's needed universally for Clang builds).

Patch 4 is living in -tip, to appear shortly in -next, AFAICT?

I would expect 1 and 2 to appear in -tip soon, but I'm not sure?

For patches 5, 6, 7, and 8 I would expect them to normally go via -tip's
objtool tree, but getting an Ack would let them land elsewhere.

Patch 17 I'd expect to normally go via Bjorn's tree, but he's given an
Ack so it can live elsewhere without surprises. :)

Patches 19, 20, 21, 23, 24, 26 are all simple "just disable LTO"
patches.

This leaves 9-16 and 18. Patches 10, 12, 14, 16, and 18 seem mostly
"mechanical" in nature, leaving the bulk of the review on patches 9,
11, 13, and 15.

Masahiro, given the spread of dependent patches between 2 (or more?) -tip
branches and -mm, how do you want to proceed? I wonder if it might
be possible to create a shared branch to avoid merge headaches, and I
(or -tip folks, or you) could carry patches 1-8 there so patches 9 and
later could have a common base?

Thanks!

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202009031557.4A233A17F1%40keescook.
