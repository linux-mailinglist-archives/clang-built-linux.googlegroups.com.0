Return-Path: <clang-built-linux+bncBDPPFIEASMFBBA7YU32QKGQEDLHZDQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB281BE568
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 19:40:21 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id 84sf2602296pfx.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Apr 2020 10:40:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588182019; cv=pass;
        d=google.com; s=arc-20160816;
        b=qc1tH2ARNlaJdlp1AK3KsSKuomEtxhFlVtR0JsfkijgIl6w3hgpsiAlSPXTQo5gKAh
         hiWXBp7GZLoGcTKQnXahZgKmoaUudOApqVJW080DzFwyP3m6kqmVZTacuMyNWcsIXOmZ
         zIsAKRs3Inw1NocK/09f2q34M3pfXoHtb6KVBvuxDySepZ+4Z7dk25XW4AT/IGD40Nd0
         autcmnJhKoSxh+9MaIvwIxIkW5pjMlv6epaea/Knz4zSMWZFT4XB6LSY5nMyYS7EVHPN
         bNmMWI5kRbUUdqlcGLsLsdDyUp6dj78PVgR8aNYPpGOE2qukmFtMfLXazXXhCYqQ6hyz
         lYUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZE9uymLlTD+iZxLZZKYkMR5JfWtsj7plZK2G82l8gV4=;
        b=CormxkebIj64wk7IqN5Ldy1goKoQwjY8YV7ZfL4+ftqC+1ScDf6WfKjpO822hv5up6
         7s0yYMWqan8ycpvjEPkuR//AFWuoQ1jfT8iarBObfqYponNitg4MoesAvaH84CmEsBtj
         7tvXCNb76RwDIc+UQyVUGpLSXfJXewAvD3HJK1KHfUTqoBRvUqxIcDCK56hZuuiIzbUJ
         0JnJy/XqGJMrpbmf3rWewGJx3rzA5qtJRKV0yHKgsthzbOesl53pxPjnUGmidrl8AJdn
         OzlAli4wGwp6l/7x6CkHfncUXMaatcAkcpWVxF7VDKJactjdkG88DZ4pd447VSgvK8E0
         7CPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dWlYr3vt;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZE9uymLlTD+iZxLZZKYkMR5JfWtsj7plZK2G82l8gV4=;
        b=DKThZmru/2OCfFE4PWw8zNN9Y6o69IdLv4pUa9LtUh7G1twqeWN4GexfsuN/TfL2wn
         WG63O3qzkpzjjiG60I3ni0+KTizDzD2188ca0WBcQsiWRs1UISRCyd+yhkwsy8iNgH4e
         tBg/wj9+FPPSAcgsjAzK45bGir8DFK9y/Wsdz9I/NtDHnHoFudh+svBIxhZ+F+Lmp1Tz
         pqhqKZ1xIIu7oxg1kW6WOWHzAVp5hif2NUv3GsSLoYFJaEfAYOABs0jes0SyrUojPFMf
         k+RtNoOZKMWpNJSCl1xEMOlfYl9Ziw/f05iixa1sFp9mdX92rpi4IbRX9qMwsfKmhk5i
         DSvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZE9uymLlTD+iZxLZZKYkMR5JfWtsj7plZK2G82l8gV4=;
        b=hb4jqs8Mn2p9yk8sWcoIx65+l0tpgBAW8x4SmtvMYuw90Vy5K/OrNAUi7MHRKZ7Wwj
         SXDyntU918yQa+mIiOcreXj1qs8qsd9tPhRnCFyaTGdPZbbu7lzeHc/MZzJAx/oIXSew
         9XcBuRMo6gNrzJ0SNNcI4wTHXy5bUm22tj/kBsSOMRNxA234JQonznZiHqO+FfGdGBpW
         yiGEBnD+Zs+Cf/BH9sBGrotkOGz/h81otcS4HOPfSISC4qJ06L/pmJqtSK3DpiNhBSK4
         SUrHmicDZY3EqRtZqOmgoXbf2YhPtUfZZF3/BaiakU26hFCKB9qM/WZLfGMmAvLx57LG
         l1Lw==
X-Gm-Message-State: AGi0PuaOSRGlkWB3YaKyUppjgtJ5xQQYiCzc4cdDxuX9Jq8/7bX9HaTq
	vhbULSe7nN51KCd9vo1RH3c=
X-Google-Smtp-Source: APiQypKKVLxqYw8d88oulE1JZmQhWKn8OSefOE/XTFXaZvi80G9HW6buFhutLCBAbcqDeF3Bpd7n5w==
X-Received: by 2002:a63:4c2:: with SMTP id 185mr9442682pge.1.1588182019623;
        Wed, 29 Apr 2020 10:40:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:834c:: with SMTP id z12ls25312713pln.5.gmail; Wed,
 29 Apr 2020 10:40:19 -0700 (PDT)
X-Received: by 2002:a17:902:b68f:: with SMTP id c15mr15256895pls.303.1588182019241;
        Wed, 29 Apr 2020 10:40:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588182019; cv=none;
        d=google.com; s=arc-20160816;
        b=YgNrbZyIaR2EOSscACkNX5ZsO2wnxLUH7fucddm91DzcMMj2vUbKU2C5gS9wozwggm
         5hWD6jXp4egFV+GFUH6aI3bHMudGS7bK7kvYf/ccgpKuEiUH0r6y7mTSwi5oJJdR9WOa
         5glbCSoWnp8vRxyoE3tSMX6oILK0iDqRvG5BzqUMHdUdP0mCCm1PCfSNb1jU4OiXB7IR
         oQik27kgaxbJafaE6fOVLWoU1bFAb+YgQeFZgPtCzY4JTnAzaUfSFpFn2vFI1oUdHVB1
         aEqjz3zl2kF/Bbpsn3KgCO6KLbSmH42IibLljExFfyVQ5zXUYMl5gBqcjZlIwblK+9pr
         Z0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ybBditkV+/AGKhPyVVVgpY9CdlSiEk3WAof8CKaEm10=;
        b=N7KUVlGMzmviWbFyLApizp9Ns3wYcHeRu8HTgAwgjpsL+06PybR3PjDMKTezl8PPrF
         SKxaaevf6hm0djw2Y/IYP6spYYb2D8j2I0gxPM8JumKXGscN2P+5c2zkksV+NNFdsQqm
         l63tpYYQs96ITZN/GX5F97N1NRLgCR3ZpimyN4kQnpJqwotbuwOFPdBA93leqzoS9KjG
         8+TcnOXAP2SxxOiqxA5YBZjhomkmYUyA2h45uU6rKQu0mhXcsY/TUCuonzY/lG2abzYo
         ktJaMnE20BgnWG8saGi2vz0wkLViqwQZVzjJWJcD2DWRVJbMy1XI82wg/mUXWo1UqA7n
         QKdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dWlYr3vt;
       spf=pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=irogers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id g6si136531pjl.1.2020.04.29.10.40.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Apr 2020 10:40:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Received: by mail-yb1-xb44.google.com with SMTP id i16so1690784ybq.9
        for <clang-built-linux@googlegroups.com>; Wed, 29 Apr 2020 10:40:19 -0700 (PDT)
X-Received: by 2002:a25:3d86:: with SMTP id k128mr57128007yba.403.1588182018093;
 Wed, 29 Apr 2020 10:40:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200320182347.87675-1-irogers@google.com>
In-Reply-To: <20200320182347.87675-1-irogers@google.com>
From: "'Ian Rogers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 29 Apr 2020 10:40:06 -0700
Message-ID: <CAP-5=fVM4bDJ3bTjvEfBi5oQnaev=9yZN+NwS9Rp2HoLsR0Auw@mail.gmail.com>
Subject: Re: [PATCH v2] perf mem2node: avoid double free related to realloc
To: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: irogers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dWlYr3vt;       spf=pass
 (google.com: domain of irogers@google.com designates 2607:f8b0:4864:20::b44
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

Ping. This is missing an Acked-by:
v2 addressed Jiri's review comments:
https://lore.kernel.org/lkml/20200315093013.GC492969@krava/

Thanks,
Ian


On Fri, Mar 20, 2020 at 11:23 AM Ian Rogers <irogers@google.com> wrote:
>
> Realloc of size zero is a free not an error, avoid this causing a double
> free. Caught by clang's address sanitizer:
>
> ==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
>     #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3
>     #1 0x5649659e9251 in __zfree tools/lib/zalloc.c:13:2
>     #2 0x564965c0f92c in mem2node__exit tools/perf/util/mem2node.c:114:2
>     #3 0x564965a08b4c in perf_c2c__report tools/perf/builtin-c2c.c:2867:2
>     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
>     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
>     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
>     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
>     #8 0x564965942e41 in main tools/perf/perf.c:538:3
>
> 0x6020000015f0 is located 0 bytes inside of 1-byte region [0x6020000015f0,0x6020000015f1)
> freed by thread T0 here:
>     #0 0x564965929da3 in realloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:164:3
>     #1 0x564965c0f55e in mem2node__init tools/perf/util/mem2node.c:97:16
>     #2 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
>     #3 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
>     #4 0x564965944348 in run_builtin tools/perf/perf.c:312:11
>     #5 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
>     #6 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
>     #7 0x564965942e41 in main tools/perf/perf.c:538:3
>
> previously allocated by thread T0 here:
>     #0 0x564965929c42 in calloc third_party/llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:154:3
>     #1 0x5649659e9220 in zalloc tools/lib/zalloc.c:8:9
>     #2 0x564965c0f32d in mem2node__init tools/perf/util/mem2node.c:61:12
>     #3 0x564965a08956 in perf_c2c__report tools/perf/builtin-c2c.c:2803:8
>     #4 0x564965a0616a in cmd_c2c tools/perf/builtin-c2c.c:2989:10
>     #5 0x564965944348 in run_builtin tools/perf/perf.c:312:11
>     #6 0x564965943235 in handle_internal_command tools/perf/perf.c:364:8
>     #7 0x5649659440c4 in run_argv tools/perf/perf.c:408:2
>     #8 0x564965942e41 in main tools/perf/perf.c:538:3
>
> v2: add a WARN_ON_ONCE when the free condition arises.
>
> Signed-off-by: Ian Rogers <irogers@google.com>
> ---
>  tools/perf/util/mem2node.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/tools/perf/util/mem2node.c b/tools/perf/util/mem2node.c
> index 797d86a1ab09..c84f5841c7ab 100644
> --- a/tools/perf/util/mem2node.c
> +++ b/tools/perf/util/mem2node.c
> @@ -1,5 +1,6 @@
>  #include <errno.h>
>  #include <inttypes.h>
> +#include <asm/bug.h>
>  #include <linux/bitmap.h>
>  #include <linux/kernel.h>
>  #include <linux/zalloc.h>
> @@ -95,7 +96,7 @@ int mem2node__init(struct mem2node *map, struct perf_env *env)
>
>         /* Cut unused entries, due to merging. */
>         tmp_entries = realloc(entries, sizeof(*entries) * j);
> -       if (tmp_entries)
> +       if (tmp_entries || WARN_ON_ONCE(j == 0))
>                 entries = tmp_entries;
>
>         for (i = 0; i < j; i++) {
> --
> 2.25.1.696.g5e7596f4ac-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP-5%3DfVM4bDJ3bTjvEfBi5oQnaev%3D9yZN%2BNwS9Rp2HoLsR0Auw%40mail.gmail.com.
