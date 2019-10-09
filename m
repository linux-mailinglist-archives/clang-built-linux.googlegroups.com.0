Return-Path: <clang-built-linux+bncBDPPFIEASMFBBRWQ7HWAKGQEDNRQEUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C819D1C66
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Oct 2019 01:07:51 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id n18sf1785958wro.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Oct 2019 16:07:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570662471; cv=pass;
        d=google.com; s=arc-20160816;
        b=cW0B1BQrIuGdg0kb/9slDzUVkcDALXOsZ3+Z6sSsv6iXihZejR54uR4GYBC91szxK0
         gpGM78HG2omGFIxasEl1+MVTAwIKvgWdN79KPvKfntbtJ2wdnrmgJsaXyD9uG1kSImJR
         sA6NTp7Cju8uEkqqIKsR4qjVxbHnvAqNvDIcZay3XxKZfbtEiy5IXqU7sdxXQTRmn5I9
         WeT4BXSz449HDaKq/D3eKtz8tPiElyKbLqWfOAb1UaVZBTPDIfM/F0Z0q+WZ3l+RHauF
         N5/+TU3uHuNHj10VEvLgYdJBSu2dRcrG/ebZu8DqJPpTFFirhYiDRTvqEPjTvtP/56yw
         w94A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=LuZcHbY7BUyo/oxXMENpqZ18EiJ/k3md4HI46yXBUVA=;
        b=gLbC7okyv711igSnY3oGRyvXlRywCB6oWYiDhd+4HNrr0eMRiCSkozX1pUdAd4ydjH
         rF2/BbJedqi5F0NS30ga/tzd49zUtiSsYbMuzqzhEmaaHuG/p62TBvGp4UFmEsEssgiV
         zI58CMOxC9xBQq3kFxXIBVdOVUGxn6/xYpCeq5cI+Xpcbt9kunBAs8dq0XZ0ZRWE3Sfa
         979gkVsMxmW/KXOKYGVA9NOpQrwrFf5nlaKkuFIz1zByFCcllayermhBXctld6Ja7qE/
         h/nRNJPsHMWPphf+TAllZGJH4EnZTRupDGMbri+RiaDaCV5J+PKes2U1Dt4sAb+J1B91
         E9TA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KiP2nj3m;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LuZcHbY7BUyo/oxXMENpqZ18EiJ/k3md4HI46yXBUVA=;
        b=nW2i0mlTxtCJd/7EphknImhFntzaWF/7zpqI6zskm3bN5eL/ZgIr9K+luxNLqNydUL
         l/mvBwWs3+abApn8iIWOAK2/P/O5rNmhjQLudyJhpuEH73nTEqDZFBn62d8Q5W+U6dIO
         D0OzFzY06drHfGXJtFa7luZHAswst9/tLUaZ8wDGKBwd7wV817GMnQ8s3bR7Wdsl019Z
         X0EVHTxZSu+/Q4TNksSYwk0BEzCN8Qiz6W1qZDxPLkyr7bSKakjJBMjKJN9slaPs1SoI
         x0flDjpAA1eASLGZ2V4h3IHWNZN1khopr4KEFd6Lr7HBtINak0Tn/Xm8ugXSCOEBvz/S
         pwqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LuZcHbY7BUyo/oxXMENpqZ18EiJ/k3md4HI46yXBUVA=;
        b=SUIp0wx/NwOwCCBT+c9Wo37BfKG/eDSPR2J065LnLFp62wHOPqe1tMLcOxtfH6xs0P
         TLk7g46QlzTezna92KrsgBlCu8xXPeNKZoN1lgoHavM/e8SnuHQ8ptt6kyB2tVGzxJ9C
         Inz7Nd5OfnNSXbrP6OAJkHuf6Hy6w5W7AFckBO85xoua6Ml3nU4XXev+7CilNFD+JeVC
         h1PJbreynyOD0zrowNW9oLaqnHv1X456GdCqvqGYea1gs8zcJhBi9iisMVsx3fgh22fF
         3FRIlgZTwt7xhfYH3XAq9arcsz1mJIrJ95D+2XupVP2zcu5xzPz3jmzNxj/KZCzny8KA
         fV6w==
X-Gm-Message-State: APjAAAUtncaMWmKBqqMtkAVNqh1lR+1ytY8x5gwreaDnWLxo54ah8jXR
	IQk9CXnqhVxfRvE2rqJYfTc=
X-Google-Smtp-Source: APXvYqzwZbWeFvDNRFx1KKtwsKGpocyPBFjTXPxwaZSc3RBzGj07wX6rY6JcjcBiUbJqI05l5dDF3Q==
X-Received: by 2002:a7b:c093:: with SMTP id r19mr4437430wmh.159.1570662470979;
        Wed, 09 Oct 2019 16:07:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c44e:: with SMTP id l14ls668110wmi.4.canary-gmail; Wed,
 09 Oct 2019 16:07:50 -0700 (PDT)
X-Received: by 2002:a7b:c8d9:: with SMTP id f25mr4629150wml.153.1570662470488;
        Wed, 09 Oct 2019 16:07:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570662470; cv=none;
        d=google.com; s=arc-20160816;
        b=g3hcDM68d43mJCBkYonvExLlsFiRonsTC/dWAYJqOChat5JmOhOxhXP6q5F7d2TYnp
         Z9DlAPIuzjadcwZuldYmsx94jXWz9OnMPBfGfWh0S+/RGv/NIOaEg640PpiSWKIr5ajc
         AVl8B6n6nxM1ufuqcB+U4Ty8mOlNRmhEL76o+R3TnbH8z8GKv3YUNRK6cfaN4ns/oBDr
         9hmxKjW9UuPI3qSdZGPiXQq82ugm3JUMIaTsJD0j7iZMAX0AjYRzrnTkJjnKfYCV4TQz
         NHfHDZpeiaBulz51dWVI/1gWpddQ9uYFyqoX7E3TxQZ14XBvzEjWVGDfUq7gzJLFxgHh
         0IMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7cg9A8ssoGgVdg1c9PU73u6OSiYvfVubeuTNtfdhXWo=;
        b=E+iy6XXue6zTx+J0WlNYWtXMdA+4arz/H2CVNXmwYkF235rkUVli9fWAwOdMn4cmXM
         xFK4wqgzxbFvBMF2wDCRZ2EZQyKxrKLgnOwXPi3VlXccno0XYmhpWVWHFYp2rYsKRxPC
         9w3zIirsKi/II7+hez+s+OlBo6WjeVscRBtFqIw0yna1VZKKiaW988F5B5Ad3Uo8AUnI
         6taAHJ7D+AuCbgDvYshc3SsCquzLtxZbx+f7yEcroF6QYZlL45Bb80BvWViIdlZJLxVU
         kgkcSNLtYbiOzU12ks2jA1avMhrT9fyLpAGZXBUictdI+WpBvvkE9xyccF2Igg3WVYIQ
         nnGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KiP2nj3m;
       spf=pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id n16si227797wrs.4.2019.10.09.16.07.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 16:07:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id n14so5212279wrw.9
        for <clang-built-linux@googlegroups.com>; Wed, 09 Oct 2019 16:07:50 -0700 (PDT)
X-Received: by 2002:a5d:5228:: with SMTP id i8mr4788125wra.191.1570662469675;
 Wed, 09 Oct 2019 16:07:49 -0700 (PDT)
MIME-Version: 1.0
References: <20190927214341.170683-1-irogers@google.com> <20191001003623.255186-1-irogers@google.com>
 <20191008123104.GA16241@krava>
In-Reply-To: <20191008123104.GA16241@krava>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 9 Oct 2019 16:07:37 -0700
Message-ID: <CAP-5=fUSgjyLkZJaHTvdFbzZijy6Gzmx5UZHK_brxVEhFpMG8g@mail.gmail.com>
Subject: Re: [PATCH v3] perf tools: avoid sample_reg_masks being const + weak
To: Jiri Olsa <jolsa@redhat.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Namhyung Kim <namhyung@kernel.org>, 
	Guo Ren <guoren@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Mao Han <han_mao@c-sky.com>, 
	Kan Liang <kan.liang@linux.intel.com>, Andi Kleen <ak@linux.intel.com>, 
	Alexey Budankov <alexey.budankov@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-riscv@lists.infradead.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KiP2nj3m;       spf=pass
 (google.com: domain of irogers@google.com designates 2a00:1450:4864:20::441
 as permitted sender) smtp.mailfrom=irogers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ian Rogers <irogers@google.com>
Reply-To: Ian Rogers <irogers@google.com>
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

On Tue, Oct 8, 2019 at 5:31 AM Jiri Olsa <jolsa@redhat.com> wrote:
>
> On Mon, Sep 30, 2019 at 05:36:23PM -0700, Ian Rogers wrote:
> > Being const + weak breaks with some compilers that constant-propagate
> > from the weak symbol. This behavior is outside of the specification, but
> > in LLVM is chosen to match GCC's behavior.
> >
> > LLVM's implementation was set in this patch:
> > https://github.com/llvm/llvm-project/commit/f49573d1eedcf1e44893d5a062ac1b72c8419646
> > A const + weak symbol is set to be weak_odr:
> > https://llvm.org/docs/LangRef.html
> > ODR is one definition rule, and given there is one constant definition
> > constant-propagation is possible. It is possible to get this code to
> > miscompile with LLVM when applying link time optimization. As compilers
> > become more aggressive, this is likely to break in more instances.
>
> is this just aprecaution or you actualy saw some breakage?

We saw a breakage with clang with thinlto enabled for linking. Our
compiler team had recently seen, and were surprised by, a similar
issue and were able to dig out the weak ODR issue.

Thanks,
Ian

> > Move the definition of sample_reg_masks to the conditional part of
> > perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
> > weak symbol.
> >
> > Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
> > In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
> > don't declare sample_regs_masks.
>
> looks good to me (again ;-)), let's see if it passes Arnaldo's farm
>
> thanks,
> jirka
>
> >
> > Signed-off-by: Ian Rogers <irogers@google.com>
> > ---
> >  tools/perf/arch/arm/util/Build         | 2 ++
> >  tools/perf/arch/arm/util/perf_regs.c   | 6 ++++++
> >  tools/perf/arch/arm64/util/Build       | 1 +
> >  tools/perf/arch/arm64/util/perf_regs.c | 6 ++++++
> >  tools/perf/arch/csky/util/Build        | 2 ++
> >  tools/perf/arch/csky/util/perf_regs.c  | 6 ++++++
> >  tools/perf/arch/riscv/util/Build       | 2 ++
> >  tools/perf/arch/riscv/util/perf_regs.c | 6 ++++++
> >  tools/perf/arch/s390/util/Build        | 1 +
> >  tools/perf/arch/s390/util/perf_regs.c  | 6 ++++++
> >  tools/perf/util/parse-regs-options.c   | 8 ++++++--
> >  tools/perf/util/perf_regs.c            | 4 ----
> >  tools/perf/util/perf_regs.h            | 4 ++--
> >  13 files changed, 46 insertions(+), 8 deletions(-)
> >  create mode 100644 tools/perf/arch/arm/util/perf_regs.c
> >  create mode 100644 tools/perf/arch/arm64/util/perf_regs.c
> >  create mode 100644 tools/perf/arch/csky/util/perf_regs.c
> >  create mode 100644 tools/perf/arch/riscv/util/perf_regs.c
> >  create mode 100644 tools/perf/arch/s390/util/perf_regs.c
> >
> > diff --git a/tools/perf/arch/arm/util/Build b/tools/perf/arch/arm/util/Build
> > index 296f0eac5e18..37fc63708966 100644
> > --- a/tools/perf/arch/arm/util/Build
> > +++ b/tools/perf/arch/arm/util/Build
> > @@ -1,3 +1,5 @@
> > +perf-y += perf_regs.o
> > +
> >  perf-$(CONFIG_DWARF) += dwarf-regs.o
> >
> >  perf-$(CONFIG_LOCAL_LIBUNWIND)    += unwind-libunwind.o
> > diff --git a/tools/perf/arch/arm/util/perf_regs.c b/tools/perf/arch/arm/util/perf_regs.c
> > new file mode 100644
> > index 000000000000..2864e2e3776d
> > --- /dev/null
> > +++ b/tools/perf/arch/arm/util/perf_regs.c
> > @@ -0,0 +1,6 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +#include "../../util/perf_regs.h"
> > +
> > +const struct sample_reg sample_reg_masks[] = {
> > +     SMPL_REG_END
> > +};
> > diff --git a/tools/perf/arch/arm64/util/Build b/tools/perf/arch/arm64/util/Build
> > index 3cde540d2fcf..0a7782c61209 100644
> > --- a/tools/perf/arch/arm64/util/Build
> > +++ b/tools/perf/arch/arm64/util/Build
> > @@ -1,4 +1,5 @@
> >  perf-y += header.o
> > +perf-y += perf_regs.o
> >  perf-y += sym-handling.o
> >  perf-$(CONFIG_DWARF)     += dwarf-regs.o
> >  perf-$(CONFIG_LOCAL_LIBUNWIND) += unwind-libunwind.o
> > diff --git a/tools/perf/arch/arm64/util/perf_regs.c b/tools/perf/arch/arm64/util/perf_regs.c
> > new file mode 100644
> > index 000000000000..2864e2e3776d
> > --- /dev/null
> > +++ b/tools/perf/arch/arm64/util/perf_regs.c
> > @@ -0,0 +1,6 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +#include "../../util/perf_regs.h"
> > +
> > +const struct sample_reg sample_reg_masks[] = {
> > +     SMPL_REG_END
> > +};
> > diff --git a/tools/perf/arch/csky/util/Build b/tools/perf/arch/csky/util/Build
> > index 1160bb2332ba..7d3050134ae0 100644
> > --- a/tools/perf/arch/csky/util/Build
> > +++ b/tools/perf/arch/csky/util/Build
> > @@ -1,2 +1,4 @@
> > +perf-y += perf_regs.o
> > +
> >  perf-$(CONFIG_DWARF) += dwarf-regs.o
> >  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> > diff --git a/tools/perf/arch/csky/util/perf_regs.c b/tools/perf/arch/csky/util/perf_regs.c
> > new file mode 100644
> > index 000000000000..2864e2e3776d
> > --- /dev/null
> > +++ b/tools/perf/arch/csky/util/perf_regs.c
> > @@ -0,0 +1,6 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +#include "../../util/perf_regs.h"
> > +
> > +const struct sample_reg sample_reg_masks[] = {
> > +     SMPL_REG_END
> > +};
> > diff --git a/tools/perf/arch/riscv/util/Build b/tools/perf/arch/riscv/util/Build
> > index 1160bb2332ba..7d3050134ae0 100644
> > --- a/tools/perf/arch/riscv/util/Build
> > +++ b/tools/perf/arch/riscv/util/Build
> > @@ -1,2 +1,4 @@
> > +perf-y += perf_regs.o
> > +
> >  perf-$(CONFIG_DWARF) += dwarf-regs.o
> >  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> > diff --git a/tools/perf/arch/riscv/util/perf_regs.c b/tools/perf/arch/riscv/util/perf_regs.c
> > new file mode 100644
> > index 000000000000..2864e2e3776d
> > --- /dev/null
> > +++ b/tools/perf/arch/riscv/util/perf_regs.c
> > @@ -0,0 +1,6 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +#include "../../util/perf_regs.h"
> > +
> > +const struct sample_reg sample_reg_masks[] = {
> > +     SMPL_REG_END
> > +};
> > diff --git a/tools/perf/arch/s390/util/Build b/tools/perf/arch/s390/util/Build
> > index 22797f043b84..3d9d0f4f72ca 100644
> > --- a/tools/perf/arch/s390/util/Build
> > +++ b/tools/perf/arch/s390/util/Build
> > @@ -1,5 +1,6 @@
> >  perf-y += header.o
> >  perf-y += kvm-stat.o
> > +perf-y += perf_regs.o
> >
> >  perf-$(CONFIG_DWARF) += dwarf-regs.o
> >  perf-$(CONFIG_LIBDW_DWARF_UNWIND) += unwind-libdw.o
> > diff --git a/tools/perf/arch/s390/util/perf_regs.c b/tools/perf/arch/s390/util/perf_regs.c
> > new file mode 100644
> > index 000000000000..2864e2e3776d
> > --- /dev/null
> > +++ b/tools/perf/arch/s390/util/perf_regs.c
> > @@ -0,0 +1,6 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +#include "../../util/perf_regs.h"
> > +
> > +const struct sample_reg sample_reg_masks[] = {
> > +     SMPL_REG_END
> > +};
> > diff --git a/tools/perf/util/parse-regs-options.c b/tools/perf/util/parse-regs-options.c
> > index ef46c2848808..e687497b3aac 100644
> > --- a/tools/perf/util/parse-regs-options.c
> > +++ b/tools/perf/util/parse-regs-options.c
> > @@ -13,7 +13,7 @@ static int
> >  __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
> >  {
> >       uint64_t *mode = (uint64_t *)opt->value;
> > -     const struct sample_reg *r;
> > +     const struct sample_reg *r = NULL;
> >       char *s, *os = NULL, *p;
> >       int ret = -1;
> >       uint64_t mask;
> > @@ -46,19 +46,23 @@ __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
> >
> >                       if (!strcmp(s, "?")) {
> >                               fprintf(stderr, "available registers: ");
> > +#ifdef HAVE_PERF_REGS_SUPPORT
> >                               for (r = sample_reg_masks; r->name; r++) {
> >                                       if (r->mask & mask)
> >                                               fprintf(stderr, "%s ", r->name);
> >                               }
> > +#endif
> >                               fputc('\n', stderr);
> >                               /* just printing available regs */
> >                               return -1;
> >                       }
> > +#ifdef HAVE_PERF_REGS_SUPPORT
> >                       for (r = sample_reg_masks; r->name; r++) {
> >                               if ((r->mask & mask) && !strcasecmp(s, r->name))
> >                                       break;
> >                       }
> > -                     if (!r->name) {
> > +#endif
> > +                     if (!r || !r->name) {
> >                               ui__warning("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
> >                                           s, intr ? "-I" : "--user-regs=");
> >                               goto error;
> > diff --git a/tools/perf/util/perf_regs.c b/tools/perf/util/perf_regs.c
> > index 2774cec1f15f..5ee47ae1509c 100644
> > --- a/tools/perf/util/perf_regs.c
> > +++ b/tools/perf/util/perf_regs.c
> > @@ -3,10 +3,6 @@
> >  #include "perf_regs.h"
> >  #include "event.h"
> >
> > -const struct sample_reg __weak sample_reg_masks[] = {
> > -     SMPL_REG_END
> > -};
> > -
> >  int __weak arch_sdt_arg_parse_op(char *old_op __maybe_unused,
> >                                char **new_op __maybe_unused)
> >  {
> > diff --git a/tools/perf/util/perf_regs.h b/tools/perf/util/perf_regs.h
> > index 47fe34e5f7d5..e014c2c038f4 100644
> > --- a/tools/perf/util/perf_regs.h
> > +++ b/tools/perf/util/perf_regs.h
> > @@ -15,8 +15,6 @@ struct sample_reg {
> >  #define SMPL_REG2(n, b) { .name = #n, .mask = 3ULL << (b) }
> >  #define SMPL_REG_END { .name = NULL }
> >
> > -extern const struct sample_reg sample_reg_masks[];
> > -
> >  enum {
> >       SDT_ARG_VALID = 0,
> >       SDT_ARG_SKIP,
> > @@ -27,6 +25,8 @@ uint64_t arch__intr_reg_mask(void);
> >  uint64_t arch__user_reg_mask(void);
> >
> >  #ifdef HAVE_PERF_REGS_SUPPORT
> > +extern const struct sample_reg sample_reg_masks[];
> > +
> >  #include <perf_regs.h>
> >
> >  #define DWARF_MINIMAL_REGS ((1ULL << PERF_REG_IP) | (1ULL << PERF_REG_SP))
> > --
> > 2.23.0.444.g18eeb5a265-goog
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfUSgjyLkZJaHTvdFbzZijy6Gzmx5UZHK_brxVEhFpMG8g%40mail.gmail.com.
