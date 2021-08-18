Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBBVH6GEAMGQEOA3THZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C7D163EF6D4
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 02:25:43 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id s53-20020a056a001c7500b003e0f67df507sf242141pfw.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 17:25:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629246342; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKMqI70Zb5kkXdeuGqUA0ZihImQJ4ORgaUYnOmdvJLN+HkpyLvIFjGFVR1viOaWrhD
         eHPwPgMNuY5pVVRjBiIHW0T6gFRCf42Hw2y5oGUA2Lk+9ert3Cd2ur1FxqnAoEcZ8PlD
         clSKNTbV8OOsDRmeek/1rkxk6d7wKvDWzpi5I/NHpWBJ1HvCaxtwK+QBemtG4wO7KwCi
         EbzEOgEzZ6d6fDS9Kxt94WizEDX7UCvMetpXA4w4VVO00DD2fGJigfeGPw8FEsrSOX78
         sXEK7gE7KYGWS88Tnr6ZPcF/iwAnOyXYmYciPvyGYiQMvTugOZWyUJ5R/PajKpoSqI8O
         cJig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=7AcJ4OdfNjr9qJ2OoVtqtQh+4FOu8LwXfdfQW1nloKA=;
        b=Qr4UKj+QFmpf+7Xechj8zUtKfPJCNzuDdU1wlBLQ53bReZFHYuLpadRQj5HtzngqvU
         W0GoFE1BhhOZ3SdjcTx7YjGOwOyJoNYBwNeJwNdkCH6uavIgj0BdltpY8hsD/0YF/EX0
         +KLhuaxBt/4TY98FKAK6cepjTmxbE4aswJVJ3Ugrb/a3YNuQkouXpP5P1pHHBya5RD8I
         rrj+zSjt+zerijwBtW+jf7xaDnKM6PLj6xY8CuK5iIi9RidG3/0ynsxeKyM+FgDUeMbl
         Dw8zWTd1gX7G7XSxjRpeJQRL0Vf04JBbWnxTQlGWcShzkLMv6axPRNrVMjTqy0wlb42E
         M18g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qn5TEoVB;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7AcJ4OdfNjr9qJ2OoVtqtQh+4FOu8LwXfdfQW1nloKA=;
        b=UdeHsFdBdatj4AFA4LlMNxVn3qD6dF2BPQN0swmgf6Tb0z8SxZy0wOe/pOZSYw1Q8p
         iDLYfLvbhdDd8jW5w1+30mSgWk1zCGKkQP4OuQ81+CsiMqJTlay1JpeAVSfhlkWEq37D
         7N2sn8hwttpBUYWKxdWazPnMqpvvAeSP5zMBeNsxzhYYMkLQS6meAYzRVtyPfZPsB5u0
         uMQWwPhEe1v07/JvzOb2+wgLV49kKaktUTRV4/EUNYS4LGMWNyFznx61eXzvPMoZt2em
         b9HSGnj8Ve5lgaXNwirODueX5dLqd0nptPSUO1v4SfaYWDsr7G7Ue31W9I04PA3bV2sW
         rtWA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7AcJ4OdfNjr9qJ2OoVtqtQh+4FOu8LwXfdfQW1nloKA=;
        b=J4zJAajAVEBOPWq8YKayfOpApdmIIXBiJPkrNZf2Jd66q0axJGN/nlzs4TuxbZWpzx
         Ie9ZGzXVZOkkPfoBPAtxRIsmvr3bfunf1JtdzhYZnNaxC6fBKHKj1l7LCIN4nm/CdtRy
         VZDL+KQGjWkXCsotQvggwpRiiaHPiETDt16D+/m3brGP4ElqZCE4F0fyKGpE8cPxz4rE
         NVDptRhxkPHwFdiAwGGvG1y2ndRsJNhTSkM/AGyRtdEd8s50s+DG1dER9t65V1MJrV/H
         /DG7PzYDJqIKdKWP7X1c/97YAVx2nRJanNndEbysLd6tIH5eNKA8TyBGVD7GJ6bByGGx
         9/gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7AcJ4OdfNjr9qJ2OoVtqtQh+4FOu8LwXfdfQW1nloKA=;
        b=Xkc7AFcRNm9BxipRHwsnA4tY7iFsAG5TCQx4dxUwRbdCfQh+Ui00mgwgQOrTbUwVP1
         1TVew6Z2H6D0DRa/hbXJfknmbEAQ+ZRzDpCyrnLRqOjtiiq9pzmKC+cjPA0AfEGpCXgH
         Cl4GCE09xRXvIORigsuTrTLVO6YBxgunkO+olzOHjjx+nefiwgN6Y7xd4P4vtMzVcpyE
         lJczg117Jx+CfszTWQjvu7rY3RPX9YNIKxdEhJPrFtOUZ+p0B2a6roUcmVm8KWFrcDC6
         0BCYodXlzbnyK7YIA6GpifgzyxUowYvxFXP9ZopJt+R81bftylpRya7DhLoYE8B8qNWj
         i/Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JKgohvynxqKs/sRw49M3Bk3p58jwo3uVdsTKLU7dv9PBHv786
	XW0sqXf7lCJGRJKl9t7o+OA=
X-Google-Smtp-Source: ABdhPJxCRFnmUh4zMCwXpuSqU9D9bbtC5/6EZWUkTB7l0dIpN9rZ3oHGGbpDcHyEDEOzRxIXUjg5Gw==
X-Received: by 2002:a62:b414:0:b029:32e:3ef0:7735 with SMTP id h20-20020a62b4140000b029032e3ef07735mr6300851pfn.61.1629246342412;
        Tue, 17 Aug 2021 17:25:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:656:: with SMTP id 83ls262787pgg.9.gmail; Tue, 17 Aug
 2021 17:25:41 -0700 (PDT)
X-Received: by 2002:a63:204a:: with SMTP id r10mr5998113pgm.365.1629246341742;
        Tue, 17 Aug 2021 17:25:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629246341; cv=none;
        d=google.com; s=arc-20160816;
        b=zUbUM9f0DTwCv94nc2OLOcMBvxYvNewCNtmMw1ijyuwuiKZh+NxVS0iXzQfXd33DeK
         KxvO00kztHcl6z4L+0shwrZfYdE4BI6KLOK8k4gGTV8DdgIvlS08IxyzWobd/wysPxf1
         Go1E7sgB6ZXkZRi7qUzhOhvwPNdQlZ+AwJquD01TC1n4J1ZJO/pTGyMTnzryVHICkYkP
         jhHQDg91O4y50jvMeL+mzZSurX2YY8allWMSuiObDaMkqPfyCeHl6RhiABqGw8dQndlS
         YOIA+UrXK5XRZpaap3Syn5ogAOMENhvH3gI+tMANUceShi0K7V0xAXmU95mRGlHE5ie8
         rtOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DM10RAWsVl9GQI4cMbvsQ282tBfUwhzSBFeZE4z7mmc=;
        b=UFs3+aGvilwFMYdMI6v8n8wzi11eFU8h8zoObxIJCp5hn/LivdGiQcZhcciSz8bZj8
         esjheNTVfWuOyRY2fYKADKo3p0AvEFsNGLfSFnMX5YdXEVVBDSbA3tWLz4pfdAAE5sM5
         dVghOJt9zik5N8Ot1MsFvuFm2qUEB4Qfr312p7cNhrRp72k+ydwHBMsMbgsftdQ6dey8
         rZSMLpHGY7J9VG5teS57nF1/Gj/Abs7s9FMZa+XtuEZPVHAeseWo0KV+wZofXoRwwgil
         1SRRROij1RLYoP13yi41ZjjhnDyiwFMhZ/VLXUCO4hfqYC91Wkb5fwBmexPHOEuGntfh
         /png==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=qn5TEoVB;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com. [2607:f8b0:4864:20::b36])
        by gmr-mx.google.com with ESMTPS id q10si168485pgv.5.2021.08.17.17.25.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Aug 2021 17:25:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b36 as permitted sender) client-ip=2607:f8b0:4864:20::b36;
Received: by mail-yb1-xb36.google.com with SMTP id g26so1916320ybe.0
        for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 17:25:41 -0700 (PDT)
X-Received: by 2002:a25:d691:: with SMTP id n139mr8177889ybg.27.1629246341408;
 Tue, 17 Aug 2021 17:25:41 -0700 (PDT)
MIME-Version: 1.0
References: <202108180658.IgbgwsPI-lkp@intel.com>
In-Reply-To: <202108180658.IgbgwsPI-lkp@intel.com>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 17 Aug 2021 17:25:30 -0700
Message-ID: <CAEf4BzaLJqYxRWZJbVMr+oa+_7Y7mgfxtUg3KuvbqMo=fT4-7Q@mail.gmail.com>
Subject: Re: [linux-next:master 7954/8516] include/linux/trace_events.h:695:81:
 warning: unused parameter 'bpf_cookie'
To: kernel test robot <lkp@intel.com>
Cc: Andrii Nakryiko <andrii@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	Linux Memory Management List <linux-mm@kvack.org>, Daniel Borkmann <daniel@iogearbox.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=qn5TEoVB;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b36 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Aug 17, 2021 at 3:36 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   9803fb968c8c2e1283f67b3baeb88e0adba435b4
> commit: 82e6b1eee6a8875ef4eacfd60711cce6965c6b04 [7954/8516] bpf: Allow to specify user-provided bpf_cookie for BPF perf links
> config: i386-randconfig-r021-20210816 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=82e6b1eee6a8875ef4eacfd60711cce6965c6b04
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 82e6b1eee6a8875ef4eacfd60711cce6965c6b04
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=i386
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    include/linux/tracepoint.h:419:2: note: expanded from macro 'DECLARE_TRACE'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:279:42: note: expanded from macro '__DECLARE_TRACE'
>            check_trace_callback_type_##name(void (*cb)(data_proto))        \
>                                                    ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    drivers/gpu/drm/i915/i915_trace.h:956:1: warning: unused parameter 'cb' [-Wunused-parameter]
>    TRACE_EVENT_CONDITION(i915_reg_rw,
>    ^
>    include/linux/tracepoint.h:563:2: note: expanded from macro 'TRACE_EVENT_CONDITION'
>            DECLARE_TRACE_CONDITION(name, PARAMS(proto),            \
>            ^
>    include/linux/tracepoint.h:424:2: note: expanded from macro 'DECLARE_TRACE_CONDITION'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:279:42: note: expanded from macro '__DECLARE_TRACE'
>            check_trace_callback_type_##name(void (*cb)(data_proto))        \
>                                                    ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    drivers/gpu/drm/i915/i915_trace.h:984:1: warning: unused parameter 'cb' [-Wunused-parameter]
>    TRACE_EVENT(intel_gpu_freq_change,
>    ^
>    include/linux/tracepoint.h:553:2: note: expanded from macro 'TRACE_EVENT'
>            DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
>            ^
>    include/linux/tracepoint.h:419:2: note: expanded from macro 'DECLARE_TRACE'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:279:42: note: expanded from macro '__DECLARE_TRACE'
>            check_trace_callback_type_##name(void (*cb)(data_proto))        \
>                                                    ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    drivers/gpu/drm/i915/i915_trace.h:1026:1: warning: unused parameter 'cb' [-Wunused-parameter]
>    DEFINE_EVENT(i915_ppgtt, i915_ppgtt_create,
>    ^
>    include/linux/tracepoint.h:542:2: note: expanded from macro 'DEFINE_EVENT'
>            DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
>            ^
>    include/linux/tracepoint.h:419:2: note: expanded from macro 'DECLARE_TRACE'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:279:42: note: expanded from macro '__DECLARE_TRACE'
>            check_trace_callback_type_##name(void (*cb)(data_proto))        \
>                                                    ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    drivers/gpu/drm/i915/i915_trace.h:1031:1: warning: unused parameter 'cb' [-Wunused-parameter]
>    DEFINE_EVENT(i915_ppgtt, i915_ppgtt_release,
>    ^
>    include/linux/tracepoint.h:542:2: note: expanded from macro 'DEFINE_EVENT'
>            DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
>            ^
>    include/linux/tracepoint.h:419:2: note: expanded from macro 'DECLARE_TRACE'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:279:42: note: expanded from macro '__DECLARE_TRACE'
>            check_trace_callback_type_##name(void (*cb)(data_proto))        \
>                                                    ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    drivers/gpu/drm/i915/i915_trace.h:1063:1: warning: unused parameter 'cb' [-Wunused-parameter]
>    DEFINE_EVENT(i915_context, i915_context_create,
>    ^
>    include/linux/tracepoint.h:542:2: note: expanded from macro 'DEFINE_EVENT'
>            DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
>            ^
>    include/linux/tracepoint.h:419:2: note: expanded from macro 'DECLARE_TRACE'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:279:42: note: expanded from macro '__DECLARE_TRACE'
>            check_trace_callback_type_##name(void (*cb)(data_proto))        \
>                                                    ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    drivers/gpu/drm/i915/i915_trace.h:1068:1: warning: unused parameter 'cb' [-Wunused-parameter]
>    DEFINE_EVENT(i915_context, i915_context_free,
>    ^
>    include/linux/tracepoint.h:542:2: note: expanded from macro 'DEFINE_EVENT'
>            DECLARE_TRACE(name, PARAMS(proto), PARAMS(args))
>            ^
>    include/linux/tracepoint.h:419:2: note: expanded from macro 'DECLARE_TRACE'
>            __DECLARE_TRACE(name, PARAMS(proto), PARAMS(args),              \
>            ^
>    include/linux/tracepoint.h:279:42: note: expanded from macro '__DECLARE_TRACE'
>            check_trace_callback_type_##name(void (*cb)(data_proto))        \
>                                                    ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    In file included from include/trace/../../drivers/gpu/drm/i915/i915_trace.h:1078:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:21:
>    include/linux/trace_events.h:689:68: warning: unused parameter 'call' [-Wunused-parameter]
>    static inline unsigned int trace_call_bpf(struct trace_event_call *call, void *ctx)
>                                                                       ^
>    include/linux/trace_events.h:689:80: warning: unused parameter 'ctx' [-Wunused-parameter]
>    static inline unsigned int trace_call_bpf(struct trace_event_call *call, void *ctx)
>                                                                                   ^
>    include/linux/trace_events.h:695:47: warning: unused parameter 'event' [-Wunused-parameter]
>    perf_event_attach_bpf_prog(struct perf_event *event, struct bpf_prog *prog, u64 bpf_cookie)
>                                                  ^
>    include/linux/trace_events.h:695:71: warning: unused parameter 'prog' [-Wunused-parameter]
>    perf_event_attach_bpf_prog(struct perf_event *event, struct bpf_prog *prog, u64 bpf_cookie)
>                                                                          ^
> >> include/linux/trace_events.h:695:81: warning: unused parameter 'bpf_cookie' [-Wunused-parameter]
>    perf_event_attach_bpf_prog(struct perf_event *event, struct bpf_prog *prog, u64 bpf_cookie)
>                                                                                    ^
>    include/linux/trace_events.h:700:66: warning: unused parameter 'event' [-Wunused-parameter]
>    static inline void perf_event_detach_bpf_prog(struct perf_event *event) { }
>                                                                     ^
>    include/linux/trace_events.h:703:48: warning: unused parameter 'event' [-Wunused-parameter]
>    perf_event_query_prog_array(struct perf_event *event, void __user *info)
>                                                   ^
>    include/linux/trace_events.h:703:68: warning: unused parameter 'info' [-Wunused-parameter]
>    perf_event_query_prog_array(struct perf_event *event, void __user *info)
>                                                                       ^
>    include/linux/trace_events.h:707:64: warning: unused parameter 'btp' [-Wunused-parameter]
>    static inline int bpf_probe_register(struct bpf_raw_event_map *btp, struct bpf_prog *p)
>                                                                   ^
>    include/linux/trace_events.h:707:86: warning: unused parameter 'p' [-Wunused-parameter]
>    static inline int bpf_probe_register(struct bpf_raw_event_map *btp, struct bpf_prog *p)
>                                                                                         ^
>    include/linux/trace_events.h:711:66: warning: unused parameter 'btp' [-Wunused-parameter]
>    static inline int bpf_probe_unregister(struct bpf_raw_event_map *btp, struct bpf_prog *p)
>                                                                     ^
>    include/linux/trace_events.h:711:88: warning: unused parameter 'p' [-Wunused-parameter]
>    static inline int bpf_probe_unregister(struct bpf_raw_event_map *btp, struct bpf_prog *p)
>                                                                                           ^
>    include/linux/trace_events.h:715:76: warning: unused parameter 'name' [-Wunused-parameter]
>    static inline struct bpf_raw_event_map *bpf_get_raw_tracepoint(const char *name)
>                                                                               ^
>    include/linux/trace_events.h:719:69: warning: unused parameter 'btp' [-Wunused-parameter]
>    static inline void bpf_put_raw_tracepoint(struct bpf_raw_event_map *btp)
>                                                                        ^
>    include/linux/trace_events.h:722:68: warning: unused parameter 'event' [-Wunused-parameter]
>    static inline int bpf_get_perf_event_info(const struct perf_event *event,
>                                                                       ^
>    include/linux/trace_events.h:723:13: warning: unused parameter 'prog_id' [-Wunused-parameter]
>                                              u32 *prog_id, u32 *fd_type,
>                                                   ^
>    include/linux/trace_events.h:723:27: warning: unused parameter 'fd_type' [-Wunused-parameter]
>                                              u32 *prog_id, u32 *fd_type,
>                                                                 ^
>    include/linux/trace_events.h:724:21: warning: unused parameter 'buf' [-Wunused-parameter]
>                                              const char **buf, u64 *probe_offset,
>                                                           ^
>    include/linux/trace_events.h:724:31: warning: unused parameter 'probe_offset' [-Wunused-parameter]
>                                              const char **buf, u64 *probe_offset,
>                                                                     ^
>    include/linux/trace_events.h:725:13: warning: unused parameter 'probe_addr' [-Wunused-parameter]
>                                              u64 *probe_addr)
>                                                   ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    In file included from include/trace/../../drivers/gpu/drm/i915/i915_trace.h:1078:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:427:
>    include/trace/../../drivers/gpu/drm/i915/i915_trace.h:24:1: warning: unused parameter 'flags' [-Wunused-parameter]
>    TRACE_EVENT(intel_pipe_enable,
>    ^
>    include/trace/trace_events.h:75:2: note: expanded from macro 'TRACE_EVENT'
>            DECLARE_EVENT_CLASS(name,                              \
>            ^
>    include/trace/trace_events.h:379:58: note: expanded from macro 'DECLARE_EVENT_CLASS'
>    trace_raw_output_##call(struct trace_iterator *iter, int flags,         \
>                                                             ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    In file included from include/trace/../../drivers/gpu/drm/i915/i915_trace.h:1078:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:427:
>    include/trace/../../drivers/gpu/drm/i915/i915_trace.h:50:1: warning: unused parameter 'flags' [-Wunused-parameter]
>    TRACE_EVENT(intel_pipe_disable,
>    ^
>    include/trace/trace_events.h:75:2: note: expanded from macro 'TRACE_EVENT'
>            DECLARE_EVENT_CLASS(name,                              \
>            ^
>    include/trace/trace_events.h:379:58: note: expanded from macro 'DECLARE_EVENT_CLASS'
>    trace_raw_output_##call(struct trace_iterator *iter, int flags,         \
>                                                             ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    In file included from include/trace/../../drivers/gpu/drm/i915/i915_trace.h:1078:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:427:
>    include/trace/../../drivers/gpu/drm/i915/i915_trace.h:77:1: warning: unused parameter 'flags' [-Wunused-parameter]
>    TRACE_EVENT(intel_pipe_crc,
>    ^
>    include/trace/trace_events.h:75:2: note: expanded from macro 'TRACE_EVENT'
>            DECLARE_EVENT_CLASS(name,                              \
>            ^
>    include/trace/trace_events.h:379:58: note: expanded from macro 'DECLARE_EVENT_CLASS'
>    trace_raw_output_##call(struct trace_iterator *iter, int flags,         \
>                                                             ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>    In file included from include/trace/../../drivers/gpu/drm/i915/i915_trace.h:1078:
>    In file included from include/trace/define_trace.h:102:
>    In file included from include/trace/trace_events.h:427:
>    include/trace/../../drivers/gpu/drm/i915/i915_trace.h:101:1: warning: unused parameter 'flags' [-Wunused-parameter]
>    TRACE_EVENT(intel_cpu_fifo_underrun,
>    ^
>    include/trace/trace_events.h:75:2: note: expanded from macro 'TRACE_EVENT'
>            DECLARE_EVENT_CLASS(name,                              \
>            ^
>    include/trace/trace_events.h:379:58: note: expanded from macro 'DECLARE_EVENT_CLASS'
>    trace_raw_output_##call(struct trace_iterator *iter, int flags,         \
>                                                             ^
>    In file included from drivers/gpu/drm/i915/i915_trace_points.c:13:
>
>
> vim +/bpf_cookie +695 include/linux/trace_events.h
>
>    693
>    694  static inline int
>  > 695  perf_event_attach_bpf_prog(struct perf_event *event, struct bpf_prog *prog, u64 bpf_cookie)

This is expected for such stub implementations. Is there any way to
silence this or make the compiler happy about that?

>    696  {
>    697          return -EOPNOTSUPP;
>    698  }
>    699
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzaLJqYxRWZJbVMr%2Boa%2B_7Y7mgfxtUg3KuvbqMo%3DfT4-7Q%40mail.gmail.com.
