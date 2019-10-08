Return-Path: <clang-built-linux+bncBCDZTXMP2EPRBEED6LWAKGQEPI5V52Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB2CCF9CA
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 14:31:14 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id d1sf10716462plj.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 05:31:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570537873; cv=pass;
        d=google.com; s=arc-20160816;
        b=yqR8hyxdCHQJEOgPxzFYh3QpfOwyGj6PqQ79naEkpK+4iSSDo5sCUV+nrWN+6z5rbI
         3//p2+f//qqof5AVBv97xr6gWW52v5UEFUbp06fEf1/CHE3eSSX00I/CFWULZdQN/DTl
         b/jenUrgN3kYtS9h8nEIOr6um28+B669wXl8eLDMUwsgiGpe11D9MwH1HhnTZvTW/Wwb
         7BNvLgTxoXtBN/iQhex+lw3rNvACBvdHWLf+Ua+fgvjP2Sri0C4Yd8fDi0yQOZ0fNeGa
         K6UHB9tqDQfkqZKCN7n87rTvzc0gJx99rHqv2GK5AdXlneUKvwTW6ZxW4BPyojz1sXPQ
         Bk+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6DhL7KnYdbBe18RPgK1kUq8+xNW33kt0YRLfEieeXs8=;
        b=WgpOzWs2f19SEn+1vCwH6/LRAo03NN5iDLMeYg9e2VWbQz/CB5a0fMkzovoNnriXpy
         dsnAk+BbI1yYm4EooYytnxmXAFE+KBxiCR5q9e2kqnqqc6V5ULr6H+10EKx3063APrMj
         jqNtxPXa9MoPcBHZJpC3ynW3APJ5v3ApCdqmenV8/ChEZ9eA080z0HmHJErPwiIA8x9/
         GXzHW6FJhm8iadgBvePsmrJ6Ht1Ls2jGTJYPysBwjEF8IenZX0DEQ/llIfAwWMK9jbyY
         epeF7MyeXcZmy02IeoTYFkB5cu1CbFO9xGZV+Ay7s5m9WLfi3B15umHlWBqrD/ut37jD
         Fvcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jolsa@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6DhL7KnYdbBe18RPgK1kUq8+xNW33kt0YRLfEieeXs8=;
        b=f0vcVe/cWkxKs+hGGRJZ0RNkvSDveLLUS9v2mJ6wGScpciYJtoWbht25mjKnNE4sip
         XSU7RNGVi17lS1qpbGn/UKFLZd0pfrkpxuTQOeviI4NBOnhLDXZaOUM3CJ71MA84k/w3
         4Y5xc2CMgOplAT4KE5t3lDSj9UQ1Zljkz2Iy4zji5qnmgtxNa56ed0TCgHaSXK2+Qtyy
         zhFdwQtX0V7Qpl8jpZninWPXpYb0Oty1BnzZPFKlFHZvsHvnxFawJAMeR5lONS9QY9Cq
         6mLc/g2msAZkH876/yrJ+TTQja+70mXl6+njasjpYZX4Im2JABIDukIFpljljPVhsDee
         KWBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6DhL7KnYdbBe18RPgK1kUq8+xNW33kt0YRLfEieeXs8=;
        b=GZDUfcp2h+GbA6/zUsYnuTIZ0lorzfDdmfmdLobUWvEeV1Ekq/dkQTsfkc6NfKOFJM
         3ypDwaohaG17we2DkP/bhN/IEsJ4C6gKD3zZEVZjW5GiEYFfm6KyXbK2s8c7aa8qEJeR
         kaail+NWN/Z0YfgV832P1poAosUSEwbH4ORoEQuL/imXIwYI3XpLlLIJRyb8VCySMzWp
         OyjY+TV3DEbdgh62DIyMQiteBq8JzSFwM9vx0eGDaBPi9ARKXxc5pnBjSuO5m97PsXR7
         mUO9JpOYkLnha6u5fqXwJEoZY0u8yrkg8ETeT+etY8iv4bHfGbBz1AXyadirKkqOd9gy
         C0jQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYOGFYPQR8uz3TQed737kr0B4z9k9VbF7EfNFrlha3c9VhQRjO
	dMQHR2fO6t+zPNmEk9JHiFk=
X-Google-Smtp-Source: APXvYqzW2mhkAbDbWmkaOtuefP7Zoi/kBMClFpiShdpFykBDNvL+3Z+FOYp9Lr5k2ltbu0scobX8Vw==
X-Received: by 2002:aa7:8492:: with SMTP id u18mr4214471pfn.247.1570537872880;
        Tue, 08 Oct 2019 05:31:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2a06:: with SMTP id q6ls882703pfq.14.gmail; Tue, 08 Oct
 2019 05:31:12 -0700 (PDT)
X-Received: by 2002:a63:e514:: with SMTP id r20mr20128918pgh.275.1570537872243;
        Tue, 08 Oct 2019 05:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570537872; cv=none;
        d=google.com; s=arc-20160816;
        b=TLa38QPSIRGEkwY5kjmKxGyU+2CB0Tk/K/ESdQHXD7clfuHUUEo98gqP+ErOEKGjjl
         GN8CkUXppGCHlJZB3LdCIQP+uKuAJ9A/0dziUsBodDy6bRg2qtRP9al4O2b57koEthET
         ayzUZq/uZy1rYS8JejZdSFH4myTFvivH5B06sv9hUCFzNg/PfqmIUr9QhnG+4IUfZNsB
         ZYeBjqdaCJrOlIZLNsIqxWsUSQICVHhIUew1L/n3vviNORCuFyW8CQpAiPHijuMg4Uqs
         bLQowqfzB1pCbqxTchPcTPnMdo6pZCOWLp1vgEwKZNYW1c4PQu43H2XNKgn73HKUlvrv
         lnLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=mM8NUMnBpOFtoQ5R7eCgKw00eh2kYGUmAp2vVzJgm1w=;
        b=dWZavk1imRKJEk1+/nOZqL0qeBbnMeY6UzdK1MH93oNOuegM9GWKfUvQy6yC2nd6mY
         bRuZks5PNVjbip9OYomyJ5SR0WksiMa6HeVYGLJDiU9ib5Fkws1j6IRJIA+pjLhSSqfN
         M1tIv5qYpBcz18v9rj+otL4ZwckQuHvXYpULmnwE+iRqmctteWJvTHkZkRP0jjOShvt/
         XCS3k3jqpJ3hfcOYC34krgignlzFYUmSCOyq2psJSSJD9kZT1ZWu3TaCksh8PQewGc9h
         fURrTE7uhkJjBtFwUGDtyv81KqXJiNdQqQcPA7XxTB04hkvGKv/fC56dzcCHqopKMWN9
         tMIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jolsa@redhat.com designates 209.132.183.28 as permitted sender) smtp.mailfrom=jolsa@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from mx1.redhat.com (mx1.redhat.com. [209.132.183.28])
        by gmr-mx.google.com with ESMTPS id d3si972941plr.4.2019.10.08.05.31.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Oct 2019 05:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jolsa@redhat.com designates 209.132.183.28 as permitted sender) client-ip=209.132.183.28;
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id DF604C0546FF;
	Tue,  8 Oct 2019 12:31:09 +0000 (UTC)
Received: from krava (unknown [10.40.205.103])
	by smtp.corp.redhat.com (Postfix) with SMTP id 5E5B0600CE;
	Tue,  8 Oct 2019 12:31:05 +0000 (UTC)
Date: Tue, 8 Oct 2019 14:31:04 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, Guo Ren <guoren@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Mao Han <han_mao@c-sky.com>,
	Kan Liang <kan.liang@linux.intel.com>,
	Andi Kleen <ak@linux.intel.com>,
	Alexey Budankov <alexey.budankov@linux.intel.com>,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v3] perf tools: avoid sample_reg_masks being const + weak
Message-ID: <20191008123104.GA16241@krava>
References: <20190927214341.170683-1-irogers@google.com>
 <20191001003623.255186-1-irogers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191001003623.255186-1-irogers@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.32]); Tue, 08 Oct 2019 12:31:11 +0000 (UTC)
X-Original-Sender: jolsa@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jolsa@redhat.com designates 209.132.183.28 as
 permitted sender) smtp.mailfrom=jolsa@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

On Mon, Sep 30, 2019 at 05:36:23PM -0700, Ian Rogers wrote:
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

is this just aprecaution or you actualy saw some breakage?

> 
> Move the definition of sample_reg_masks to the conditional part of
> perf_regs.h and guard usage with HAVE_PERF_REGS_SUPPORT. This avoids the
> weak symbol.
> 
> Fix an issue when HAVE_PERF_REGS_SUPPORT isn't defined from patch v1.
> In v3, add perf_regs.c for architectures that HAVE_PERF_REGS_SUPPORT but
> don't declare sample_regs_masks.

looks good to me (again ;-)), let's see if it passes Arnaldo's farm

thanks,
jirka

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
> +	SMPL_REG_END
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
> +	SMPL_REG_END
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
> +	SMPL_REG_END
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
> +	SMPL_REG_END
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
> +	SMPL_REG_END
> +};
> diff --git a/tools/perf/util/parse-regs-options.c b/tools/perf/util/parse-regs-options.c
> index ef46c2848808..e687497b3aac 100644
> --- a/tools/perf/util/parse-regs-options.c
> +++ b/tools/perf/util/parse-regs-options.c
> @@ -13,7 +13,7 @@ static int
>  __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
>  {
>  	uint64_t *mode = (uint64_t *)opt->value;
> -	const struct sample_reg *r;
> +	const struct sample_reg *r = NULL;
>  	char *s, *os = NULL, *p;
>  	int ret = -1;
>  	uint64_t mask;
> @@ -46,19 +46,23 @@ __parse_regs(const struct option *opt, const char *str, int unset, bool intr)
>  
>  			if (!strcmp(s, "?")) {
>  				fprintf(stderr, "available registers: ");
> +#ifdef HAVE_PERF_REGS_SUPPORT
>  				for (r = sample_reg_masks; r->name; r++) {
>  					if (r->mask & mask)
>  						fprintf(stderr, "%s ", r->name);
>  				}
> +#endif
>  				fputc('\n', stderr);
>  				/* just printing available regs */
>  				return -1;
>  			}
> +#ifdef HAVE_PERF_REGS_SUPPORT
>  			for (r = sample_reg_masks; r->name; r++) {
>  				if ((r->mask & mask) && !strcasecmp(s, r->name))
>  					break;
>  			}
> -			if (!r->name) {
> +#endif
> +			if (!r || !r->name) {
>  				ui__warning("Unknown register \"%s\", check man page or run \"perf record %s?\"\n",
>  					    s, intr ? "-I" : "--user-regs=");
>  				goto error;
> diff --git a/tools/perf/util/perf_regs.c b/tools/perf/util/perf_regs.c
> index 2774cec1f15f..5ee47ae1509c 100644
> --- a/tools/perf/util/perf_regs.c
> +++ b/tools/perf/util/perf_regs.c
> @@ -3,10 +3,6 @@
>  #include "perf_regs.h"
>  #include "event.h"
>  
> -const struct sample_reg __weak sample_reg_masks[] = {
> -	SMPL_REG_END
> -};
> -
>  int __weak arch_sdt_arg_parse_op(char *old_op __maybe_unused,
>  				 char **new_op __maybe_unused)
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
>  	SDT_ARG_VALID = 0,
>  	SDT_ARG_SKIP,
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

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191008123104.GA16241%40krava.
