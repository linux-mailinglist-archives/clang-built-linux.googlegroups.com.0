Return-Path: <clang-built-linux+bncBDRZHGH43YJRBR5SX36QKGQEKNE4Y2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF342B2C2D
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 09:46:01 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id b34sf4382742pgb.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Nov 2020 00:46:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605343560; cv=pass;
        d=google.com; s=arc-20160816;
        b=q2nLfebLy5wY0kVsAi+jWN4+sDTt9c3mCv6ehr1jOwwzbmX8vAWopoIjTIwor/UFBk
         JnHZWbZWi17UncpIZXo/rAHStfqxGFEDjPLFhqDp41jUNfv22H3r26zEg2nsEyamI3bD
         Rx4+lCweaOmgnAVQkDXDukdRX4ouov2AUkk/EiszXZEMWC85rHjDYG+LykZu8q69NDt6
         yh3sGrvncCmcOb9V2lP/Vir8upPiwGYOgGkdLTWXuN6619W1rQaxxgKaBez7bAoOUfZw
         fPvI3USnp+KvToZ+ncU64gs4pZHy3N3O6hme8YyNQgXPQ6AJnnY+C464yTHkT2xHckWc
         X8/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=OMZ+MahL9XLyTTvOhggAA3iSWeOGbN9NJ0ZuoYFeFI4=;
        b=Xa64MRdS68El734WDx/e7Br1OA8nPxE4tHvIJjmf9TEoaNxxl7Oa0E/Y6c80GetgyE
         HMAtf2Us7Sne4w9mndOmC6LqB3BBD1Guj+5bQGil0ayJpLAob0kkZDTCD+FgBOUdKtRC
         Nij+k06QKp79RJ2TI7G0AYEeh6PI79TO6jHPwIvQ0UPnV+DN9h+ZzOv2nwHUaZ67D1CJ
         Yb2lRfR/uQEukdhrJ5OEerX3s/Ad15PRLZCIKUvcZrRqVIQ1+b7cEMo11Be12xrE+fbM
         CxBdSqloh7hadWxgWUTcYHWk5Op6ZGNVVn+KRUlG0EBJvoOL39DI1su2jg3XuvIWvIII
         DqFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jdx4Oq3I;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMZ+MahL9XLyTTvOhggAA3iSWeOGbN9NJ0ZuoYFeFI4=;
        b=qewe16ZNHgRvXSbzzAsUJvEoLc1vIXPRyRTMYph+HdSBt9SRc5ZQ6gkU0VxBveAZKR
         7bQps5fVuvD9hWk9g1PhZkM5BpSEvRjQ2Xn5+KLo33ogehr0yYM+N1yzXjdSIUMSuu+5
         U3g8Eu0kdyn/j7Qn3QJB91/u2pNuXfJa3Sz2BIa8ZNYEly1BVLUTbAe7lhewKhhhONgs
         MQOEdXLYEchwT4phTZz6TC+AlawUBFnO55t7hzbbfDgaAlin3NxtBTXGXcxDnNrYyL4F
         4+Y4mF/UUvs/PS9gauOXWyjIEDAssdww36JjqybLmBwPCPaLjEXssF7EDB98FtsFnXcV
         gasw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMZ+MahL9XLyTTvOhggAA3iSWeOGbN9NJ0ZuoYFeFI4=;
        b=nUrq76TOvAZeNLMlRm0tdC7IJV3wVrCTJqS5azHB21AkdIxRPPlAiwyZxLkzwd2arH
         enYncbkbuGsW6BHrWLI1xtLthwHsjKxr3hAjAtqJspRv2K/OwydLq3j7J4wJG8NAXz05
         XzpaFpdYbsccJPz8+3OtgFvxBXufk/Pt25h5XI8QqvyzrtTpyVCX93flsm2A2pwdha+c
         7ZYSlYJE1lhwO1UrRyuqEm9BrECd5Vsarya8vy6N412NNvbclyjJILMz44m5sOLHdgg9
         1s59nLAk5TIYDcCCRl4b9Amkos0UDWPHUKGQuTh4G5c0pl5URyKel4KDMMyMYjBxioVG
         P0Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OMZ+MahL9XLyTTvOhggAA3iSWeOGbN9NJ0ZuoYFeFI4=;
        b=trXoplfW2BYvRsqeQ7A6bO5kmEY2xx9S+Xq+EJXhIV5VLRAJTz72AVs3oHwRaLQKCc
         iTbyag/0z6rYcxm7iH331ACUAg8Ytiqie+dpVXJp/1zgYLrXKKmaXIA90nrt83H3NxOx
         i2Cn6CXvpHI7cJZB52osaHGT4nxBrP7ioW+aNt2/U5rrjLfVGOCnNafiASPXEJ0ADqUz
         hnMUYU1pnAw7TrDWLUtL4VbUIyifeWXWwUXxvlOgdi0+tyFRivz0DZS1fDZWlhJ0m0Hh
         X7zwUmH/NlB/7HrGJXARmiRvWEFBE/HgPbSRNm3KaoeY3B+v2DKy5DpwJgsbH44D7r3J
         mQEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Ed/ZLNdKdqOKy3cALM8ZO9J/wP3Y+C1CeS5ZJ3KU5nkKJs+U+
	PnMF97G1lFGjgZytk1uu+dA=
X-Google-Smtp-Source: ABdhPJwSNpHf0pExmCKLrGWJKa5N50tAJ5xpmPYqYu3j03m7qgfq6al1fNdPmjFeheJNuMHnKoDw6A==
X-Received: by 2002:a63:5262:: with SMTP id s34mr5095119pgl.382.1605343559964;
        Sat, 14 Nov 2020 00:45:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:34b:: with SMTP id fh11ls4939265pjb.1.gmail; Sat, 14
 Nov 2020 00:45:59 -0800 (PST)
X-Received: by 2002:a17:90b:118b:: with SMTP id gk11mr7365538pjb.178.1605343559178;
        Sat, 14 Nov 2020 00:45:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605343559; cv=none;
        d=google.com; s=arc-20160816;
        b=tcT5d9UURnYbwSbRO6zZB0NACy5MP26oVH3MKz9qZ+ph3Y5wfYpOvuOr46483zfGES
         OPc6dNOJhDNUPXQpLPPaZFsqouOHWs2xa+Vs0tPim8O5SzCQ8AWwtd2i8ylmK0ASR7kX
         L96C8himkPppg+tzq5SWA55jOYTJ7GGkBPDEMceO+vOHea6tjInqcQ8xIYKcj/Jl2oGw
         Axs2f2OiUJcM4l85rR4mmZOvw1bygbQ31DVBaBiP9IVwGdOKCbRNClONpJjpL2w4HLpE
         6Y+4IjZ9Lz4z9nJrrZEwj4qw2r1ExTkAiieM5sTb8J0HyIvBaXh7JISZcBVUlcZAZc7g
         +/Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=op2C800ARp9sbr32nwbThxJcHlPPHMUogYW3FSfyNUI=;
        b=A8QpNcIwwCE5s2G1upEilP+2T3DCPfYLTYl8SlB5u8zwVeVlDncmPprBT2DJXsrhLx
         9S/x2+4fOZ6E8tIVU6+DoyjO9AYXJRxnekrAWXGgsW2jk0J8ec8ADlTQmP6UPjTCeOlT
         SLYYLxxRNR/BxvMLz3pB9F6dTY0Gx/YXB7zTU1XYNI8vDFqNjCvoTaU99lrUmbzwKttK
         QG/PWPIsmPAJZDnPBWCn3GIPkfH/ytwPVaQFsLQzgGAd2/3XqBNEo9doA05KMtwbZcHR
         MHv8GTinq9KtdzUGcXCJbirsZON4wu1nSfi+gMI7Vzav/sAU7k3LhahodquVrgMcNMGy
         hZOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jdx4Oq3I;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id mu3si899929pjb.3.2020.11.14.00.45.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Nov 2020 00:45:59 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Received: by mail-yb1-xb43.google.com with SMTP id i193so10983049yba.1
        for <clang-built-linux@googlegroups.com>; Sat, 14 Nov 2020 00:45:59 -0800 (PST)
X-Received: by 2002:a25:bcc7:: with SMTP id l7mr7316590ybm.115.1605343558506;
 Sat, 14 Nov 2020 00:45:58 -0800 (PST)
MIME-Version: 1.0
References: <20201114000803.909530-1-irogers@google.com>
In-Reply-To: <20201114000803.909530-1-irogers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 14 Nov 2020 09:45:47 +0100
Message-ID: <CANiq72m=OK2bF2Nc-ht=ibNa2m6RcBCjFuhrv9kyoxE6yaMqVA@mail.gmail.com>
Subject: Re: [PATCH] perf test: Fix dwarf unwind for optimized builds.
To: Ian Rogers <irogers@google.com>
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, 
	Namhyung Kim <namhyung@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Ard Biesheuvel <ardb@kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, Stephane Eranian <eranian@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jdx4Oq3I;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Nov 14, 2020 at 1:08 AM 'Ian Rogers' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> To ensure the stack frames are on the stack tail calls optimizations
> need to be inhibited. If your compiler supports an attribute use it,
> otherwise use an asm volatile barrier.
>
> The barrier fix was suggested here:
> https://lore.kernel.org/lkml/20201028081123.GT2628@hirez.programming.kicks-ass.net/
>
> Fixes: 9ae1e990f1ab ("perf tools: Remove broken __no_tail_call
>        attribute")
> ---
>  tools/perf/tests/dwarf-unwind.c | 39 +++++++++++++++++++++++++++------
>  1 file changed, 32 insertions(+), 7 deletions(-)
>
> diff --git a/tools/perf/tests/dwarf-unwind.c b/tools/perf/tests/dwarf-unwind.c
> index 83638097c3bc..c8ce86bceea8 100644
> --- a/tools/perf/tests/dwarf-unwind.c
> +++ b/tools/perf/tests/dwarf-unwind.c
> @@ -24,6 +24,23 @@
>  /* For bsearch. We try to unwind functions in shared object. */
>  #include <stdlib.h>
>
> +/*
> + * The test will assert frames are on the stack but tail call optimizations lose
> + * the frame of the caller. Clang can disable this optimization on a called
> + * function but GCC currently (11/2020) lacks this attribute. The barrier is
> + * used to inhibit tail calls in these cases.
> + */

It would be nice to put the GCC version rather than the date.

> +#ifdef __has_attribute
> +#if __has_attribute(disable_tail_calls)
> +#define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
> +#define NO_TAIL_CALL_BARRIER
> +#endif
> +#endif
> +#ifndef NO_TAIL_CALL_ATTRIBUTE
> +#define NO_TAIL_CALL_ATTRIBUTE
> +#define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
> +#endif

I would try avoid this nest of conditions and instead do it like in
`compiler_attributes.h`, i.e. make use of `__has_attribute`
unconditional by making sure it works for all versions/compilers, and
then just:

    #if __has_attribute(disable_tail_calls)
    # define NO_TAIL_CALL_ATTRIBUTE __attribute__((disable_tail_calls))
    # define NO_TAIL_CALL_BARRIER
    #else
    # define NO_TAIL_CALL_ATTRIBUTE
    # define NO_TAIL_CALL_BARRIER __asm__ __volatile__("" : : : "memory");
    #endif

In fact, I think it would be best to simply have a mimic of
`compiler_attributes.h` suitable for `tools/`.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m%3DOK2bF2Nc-ht%3DibNa2m6RcBCjFuhrv9kyoxE6yaMqVA%40mail.gmail.com.
