Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBOK53WAKGQEKPJEAFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 373EDCEDFE
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Oct 2019 22:50:15 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id r19sf16610273qtk.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 13:50:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570481414; cv=pass;
        d=google.com; s=arc-20160816;
        b=lWfogBV0lF/goTkcEacVrJeBtJ/lxVgxmzD1hA2wVIOM/cI2e1a+L5iJ8a5aC+Mv6g
         ONpjUHhozN5j9j+WOZBe3xYASQQa1VghYJg08tC59HDx5x1hQGYBh5hc4/xCoK4kfwbu
         H4HRuMyXdDiUj7uRMDQub/i1qY1AwCjWc3IYjYpgG+xjSdjs+Qn70ukmHCv8MuIN8D3W
         t5Lb3xInjjqgRgn+w+5ByOV+Fv/UNEUAsXXsK2DEMSa6wuG9nVPoAuv6hI08laEo954d
         7cejjuHp/uhoIH2NwtiwIfM9HFytxGqiUUsCFbp39Ubfy0LMXn5xKbFg6Lsi1kweAqhM
         lnGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=GLeMPXSkqpK27fOlap2ZxZzhVc541hdxfBGd743XGsk=;
        b=KmY/fq326e/rN/KNresZLXSaS6mjQOqQlL/KsDSmkJfbe1dZP9f7IxupyKsViJLXiX
         2SpGXK3JOMsbsaa4ReXGVlts2FM50m8deURLjb4fUq0imNjqwt2J49gNYT1k0Piz2KME
         eRxcrE0FkxUtjpYnr6IPUMYO6YONtqLgqp7PphEcRJ6LW81QnNsw60Q9mJh4q0xU58Yw
         pr49A/MOkyORtrcTWjTvBabqqSmMO6oN8XzKNreLvniImFqdrS0Ua8R1L0zUR0xYu5Bh
         Hug/2IvrcgmNFtprdfqueo1/e5H0rzFg4xsDKYHtMbv06aha4r8BhSauCf9BsqkplZW0
         tG9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Guz9Tn5E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GLeMPXSkqpK27fOlap2ZxZzhVc541hdxfBGd743XGsk=;
        b=DTk9Z6FsLAZGELFFtx5O1l4i1xMAEbz457dW/rBHrB4Tk4YqMWkTquEDLvQdzRdmrt
         DSC4Xyi7TErtQKvK1Ypic/PDXiiR3desdEtzAl6mr/cN76lLMifVjtex1SrMQO1KHeE7
         IWE4XgG8vnseHfiPYVzipbpcj4cFuYRMW2OGcsI9kAILPldJ2ihZ8TgzvSDSshm/s/q8
         BXrKCwa5q8cm0mfZpu400P23wiJzutTVnRhnq4XKde2YQ54Xz1UuSc8g5kZLyJxHXOP+
         m7FWwDTiFmG2UcsUBlqzO3G39gaPKWRBa/NtO6OyUfiCo7KNufGPxNPXH6LBPB16UHBy
         sdfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GLeMPXSkqpK27fOlap2ZxZzhVc541hdxfBGd743XGsk=;
        b=bEC6L/03yfAVr3sxQ+hF7VurWZZGhnDnd+AotHxyh3Hspnd7uWO6MpLgvDp/b9ZDwR
         9FxRbDq3fcBHRt4Xmw3USrXWwBf3lOIEqB8Va+LFexBtMv1HuzMBE/6i/lEjC91W/+AB
         XBguICTtc+BZfaRqWLzkn7KMlf1p/mEDUcLoeIEfg3sKndiq4nixqMZqSx6OcFdVxfl3
         bdsGvmXp38LKX7bDhXAhmmDggEUhe+WLNyOZSJqx17hNRrFYmcnhnPZz2tRruKh2B+Vg
         Qlivue6spC4SDYd1D+t7XhSfo54u3b+5pRR/SFzzsrr2QOcmIF4H7EQ2cnExUJKQxfY2
         Nuiw==
X-Gm-Message-State: APjAAAXCu1CyNw0XBQeI111ivjnJpJY9KDU4VRgL0ghBkuG2XXGVqd0e
	s2sb+go5mEXIvDMGytKiW7I=
X-Google-Smtp-Source: APXvYqx3AfLJZtjwZs9RV/zIucxqOcUvDro7zJTmecm7ust1NMXDO9taXSmft1/0VFayPt163nXfqw==
X-Received: by 2002:a0c:94fc:: with SMTP id k57mr28448177qvk.210.1570481413827;
        Mon, 07 Oct 2019 13:50:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:3809:: with SMTP id q9ls409366qtb.5.gmail; Mon, 07 Oct
 2019 13:50:13 -0700 (PDT)
X-Received: by 2002:ac8:5411:: with SMTP id b17mr33147715qtq.264.1570481413580;
        Mon, 07 Oct 2019 13:50:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570481413; cv=none;
        d=google.com; s=arc-20160816;
        b=C6ZGaBeaBqZmMbm+b+NxPnHsA+ISK/OSXxwrFnHZBn0SyB7o7nhlwY2wgjFPsZSh/y
         SqYQoY0pWNoJoKxOw+6q2fOL9WsCMiz0FNqATIS7N373bpKFC/QycXZzS35FRfU6Ao3N
         Br5NgQXeFWCatOA/3+knSrsEt8q3Aqh1A8rEj/xdfyAyrhpZJ3vYl8P5iH39G6rjhjfe
         tQYxQToKP8F5A7sQBeLNPeIorJAZi0rrcDQJqkS/fT75ri0q02Y7V12aYmD4a9tH5Xl2
         mqlHxc93CQRn4/LAjcPtnxpEuIqXWmXRVYE5PdmVFFXapbchWW9gjUEsXuaJRJkn48Il
         xUZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=s4Shsw+6sGxr3OmeI5cl0LB9qg4ku4vdDbmo7icsZlA=;
        b=no4aMjw0Zdd5Z6BnKBlW+IPxND2luUE5Bz0BolSnRJkbNywCpChfOlDamNnuD1dr2P
         AXuWFZasdMnTPEMHI2z68OdcnKAIzGfWAzg3LzfInZEqSP7O9lwyV148AmjULs4SWmBa
         xDz562kixOKHyehM5jq3veFRDvSVmLSUOXNK8S0Z6Ct/vkrwkJqSDPNLWe47fs+yyiBH
         lbSjqyCeRhn0aCYrO+QPuVdNa59yFMu1L8XJj1mKmQLp/peOBRSSuN6pub/2g//FH5LL
         QwnxmliaASNDpW2MBrIX/ODVGIT/QEXN5t/1JKAC/apLZKgCsbI+LdClulN1K9UTb8cj
         M3CA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Guz9Tn5E;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id x44si765618qtc.3.2019.10.07.13.50.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 13:50:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id s17so7424278plp.6
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 13:50:13 -0700 (PDT)
X-Received: by 2002:a17:902:820e:: with SMTP id x14mr192588pln.223.1570481412032;
 Mon, 07 Oct 2019 13:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190927214341.170683-1-irogers@google.com> <20191001003623.255186-1-irogers@google.com>
In-Reply-To: <20191001003623.255186-1-irogers@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 13:49:59 -0700
Message-ID: <CAKwvOdkug92BFruTKOSdkNgAXrQx4=pEEwc7TwqkAK8YctYamw@mail.gmail.com>
Subject: Re: [PATCH v3] perf tools: avoid sample_reg_masks being const + weak
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, Guo Ren <guoren@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@sifive.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Mao Han <han_mao@c-sky.com>, 
	Kan Liang <kan.liang@linux.intel.com>, Andi Kleen <ak@linux.intel.com>, 
	Alexey Budankov <alexey.budankov@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Guz9Tn5E;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Mon, Sep 30, 2019 at 5:36 PM 'Ian Rogers' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> Being const + weak breaks with some compilers that constant-propagate
> from the weak symbol. This behavior is outside of the specification, but
> in LLVM is chosen to match GCC's behavior.
>
> LLVM's implementation was set in this patch:
> https://github.com/llvm/llvm-project/commit/f49573d1eedcf1e44893d5a062ac1b72c8419646
> A const + weak symbol is set to be weak_odr:
> https://llvm.org/docs/LangRef.html
> ODR is one definition rule, and given there is one constant definition
> constant-propagation is possible. It is possible to get this code to
> miscompile with LLVM when applying link time optimization. As compilers
> become more aggressive, this is likely to break in more instances.
>
> Move the definition of sample_reg_masks to the conditional part of
> perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
> weak symbol.
>
> Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
> In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
> don't declare sample_regs_masks.

s/sample_regs_masks/sample_reg_masks/
(otherwise I thought for a second that my grep was broken)

So powerpc and x86 set `NO_PERF_REGS := 0` AND declare `const struct
sample_reg sample_reg_masks[]`.

From what I can tell, it makes the below architectures match the way
x86 and powerpc are structured.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/arch/arm/util/Build         | 2 ++
>  tools/perf/arch/arm/util/perf_regs.c   | 6 ++++++
>  tools/perf/arch/arm64/util/Build       | 1 +
>  tools/perf/arch/arm64/util/perf_regs.c | 6 ++++++
>  tools/perf/arch/csky/util/Build        | 2 ++
>  tools/perf/arch/csky/util/perf_regs.c  | 6 ++++++
>  tools/perf/arch/riscv/util/Build       | 2 ++
>  tools/perf/arch/riscv/util/perf_regs.c | 6 ++++++
>  tools/perf/arch/s390/util/Build        | 1 +
>  tools/perf/arch/s390/util/perf_regs.c  | 6 ++++++
>  tools/perf/util/parse-regs-options.c   | 8 ++++++--
>  tools/perf/util/perf_regs.c            | 4 ----
>  tools/perf/util/perf_regs.h            | 4 ++--
>  13 files changed, 46 insertions(+), 8 deletions(-)
>  create mode 100644 tools/perf/arch/arm/util/perf_regs.c
>  create mode 100644 tools/perf/arch/arm64/util/perf_regs.c
>  create mode 100644 tools/perf/arch/csky/util/perf_regs.c
>  create mode 100644 tools/perf/arch/riscv/util/perf_regs.c
>  create mode 100644 tools/perf/arch/s390/util/perf_regs.c
>
> diff --git a/tools/perf/arch/arm/util/Build b/tools/perf/arch/arm/util/Build
> index 296f0eac5e18..37fc63708966 100644
> --- a/tools/perf/arch/arm/util/Build
> +++ b/tools/perf/arch/arm/util/Build
> @@ -1,3 +1,5 @@
> +perf-y += perf_regs.o
> +
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>
>  perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
> diff --git a/tools/perf/arch/arm/util/perf_regs.c b/tools/perf/arch/arm/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/arm/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
> index 3cde540d2fcf..0a7782c61209 100644
> --- a/tools/perf/arch/arm64/util/Build
> +++ b/tools/perf/arch/arm64/util/Build
> @@ -1,4 +1,5 @@
>  perf-y += header.o
> +perf-y += perf_regs.o
>  perf-y += sym-handling.o
>  perf-$(CONFIG_DWARF)     += dwarf-regs.o
>  perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
> diff --git a/tools/perf/arch/arm64/util/perf_regs.c b/tools/perf/arch/arm64/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/arm64/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/csky/util/Build b/tools/perf/arch/csky/util/Build
> index 1160bb2332ba..7d3050134ae0 100644
> --- a/tools/perf/arch/csky/util/Build
> +++ b/tools/perf/arch/csky/util/Build
> @@ -1,2 +1,4 @@
> +perf-y += perf_regs.o
> +
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> diff --git a/tools/perf/arch/csky/util/perf_regs.c b/tools/perf/arch/csky/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/csky/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/util/Build
> index 1160bb2332ba..7d3050134ae0 100644
> --- a/tools/perf/arch/riscv/util/Build
> +++ b/tools/perf/arch/riscv/util/Build
> @@ -1,2 +1,4 @@
> +perf-y += perf_regs.o
> +
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> diff --git a/tools/perf/arch/riscv/util/perf_regs.c b/tools/perf/arch/riscv/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/riscv/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/arch/s390/util/Build b/tools/perf/arch/s390/util/Build
> index 22797f043b84..3d9d0f4f72ca 100644
> --- a/tools/perf/arch/s390/util/Build
> +++ b/tools/perf/arch/s390/util/Build
> @@ -1,5 +1,6 @@
>  perf-y += header.o
>  perf-y += kvm-stat.o
> +perf-y += perf_regs.o
>
>  perf-$(CONFIG_DWARF) += dwarf-regs.o
>  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> diff --git a/tools/perf/arch/s390/util/perf_regs.c b/tools/perf/arch/s390/util/perf_regs.c
> new file mode 100644
> index 000000000000..2864e2e3776d
> --- /dev/null
> +++ b/tools/perf/arch/s390/util/perf_regs.c
> @@ -0,0 +1,6 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include "../../util/perf_regs.h"
> +
> +const struct sample_reg sample_reg_masks[] = {
> +       SMPL_REG_END
> +};
> diff --git a/tools/perf/util/parse-regs-options.c b/tools/perf/util/parse-regs-options.c
> index ef46c2848808..e687497b3aac 100644
> --- a/tools/perf/util/parse-regs-options.c
> +++ b/tools/perf/util/parse-regs-options.c
> @@ -13,7 +13,7 @@ static int
>  __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
>  {
>         uint64_t *mode = (uint64_t *)opt->value;
> -       const struct sample_reg *r;
> +       const struct sample_reg *r = NULL;
>         char *s, *os = NULL, *p;
>         int ret = -1;
>         uint64_t mask;
> @@ -46,19 +46,23 @@ __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
>
>                         if (!strcmp(s, "?")) {
>                                 fprintf(stderr, "available registers: ");
> +#ifdef HAVE_PERF_REGS_SUPPORT
>                                 for (r = sample_reg_masks; r->name; r++) {
>                                         if (r->mask & mask)
>                                                 fprintf(stderr, "%s ", r->name);
>                                 }
> +#endif
>                                 fputc('\n', stderr);
>                                 /* just printing available regs */
>                                 return -1;
>                         }
> +#ifdef HAVE_PERF_REGS_SUPPORT
>                         for (r = sample_reg_masks; r->name; r++) {
>                                 if ((r->mask & mask) && !strcasecmp(s, r->name))
>                                         break;
>                         }
> -                       if (!r->name) {
> +#endif
> +                       if (!r || !r->name) {
>                                 ui__warning("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
>                                             s, intr ? "-I" : "--user-regs=");
>                                 goto error;
> diff --git a/tools/perf/util/perf_regs.c b/tools/perf/util/perf_regs.c
> index 2774cec1f15f..5ee47ae1509c 100644
> --- a/tools/perf/util/perf_regs.c
> +++ b/tools/perf/util/perf_regs.c
> @@ -3,10 +3,6 @@
>  #include "perf_regs.h"
>  #include "event.h"
>
> -const struct sample_reg __weak sample_reg_masks[] = {
> -       SMPL_REG_END
> -};
> -
>  int __weak arch_sdt_arg_parse_op(char *old_op __maybe_unused,
>                                  char **new_op __maybe_unused)
>  {
> diff --git a/tools/perf/util/perf_regs.h b/tools/perf/util/perf_regs.h
> index 47fe34e5f7d5..e014c2c038f4 100644
> --- a/tools/perf/util/perf_regs.h
> +++ b/tools/perf/util/perf_regs.h
> @@ -15,8 +15,6 @@ struct sample_reg {
>  #define SMPL_REG2(n, b) { .name = #n, .mask = 3ULL << (b) }
>  #define SMPL_REG_END { .name = NULL }
>
> -extern const struct sample_reg sample_reg_masks[];
> -
>  enum {
>         SDT_ARG_VALID = 0,
>         SDT_ARG_SKIP,
> @@ -27,6 +25,8 @@ uint64_t arch__intr_reg_mask(void);
>  uint64_t arch__user_reg_mask(void);
>
>  #ifdef HAVE_PERF_REGS_SUPPORT
> +extern const struct sample_reg sample_reg_masks[];
> +
>  #include <perf_regs.h>
>
>  #define DWARF_MINIMAL_REGS ((1ULL << PERF_REG_IP) | (1ULL << PERF_REG_SP))
> --
> 2.23.0.444.g18eeb5a265-goog
>
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkug92BFruTKOSdkNgAXrQx4%3DpEEwc7TwqkAK8YctYamw%40mail.gmail.com.
