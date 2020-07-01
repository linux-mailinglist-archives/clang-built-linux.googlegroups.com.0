Return-Path: <clang-built-linux+bncBC7JPD5NQEBBBOEB6T3QKGQEGY5PKUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 126AC211529
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Jul 2020 23:31:38 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id y3sf6083048ily.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Jul 2020 14:31:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593639097; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqhmMS6bFWrtdetJ/lhMC3NFNjnsLOFiOIRZB+AwaPLyv/tTAGrcxtUiCRuybhD4Tx
         Io15Pg+6EdxrNZInxYaFM9FwJAOD/OVMXFiPqYvMaWPe1r5JWjGngbZveO8xxJk2PwHr
         yx+SlhUzFZDEjafmhMVKeXzz4zRQXXbBPTGYIUdevCKWOzHLB3ywIz91/faEt1Qu5mAo
         zy43WKPL2adQWoMBqaa7nkbaLi0oYfEMt4l7AaBvhZ+0BK4z9AnRxjiYi9nYAnYwfm/o
         xheF70GEOdJxgEurA1vbZjRgilK6p+XzmXrSBEB5s57rp5+SwjwJSN+VVfU5MSqIhlhR
         lzEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=Ad2dEr8LgQQwkF2zdIMA1cp4R8S/Ql01WHfKOJBe1X4=;
        b=yJ21GH0holS7VmrNm0LN6TShLiqlLHxW9d/6Y9b1ZYmF7vdzDt0W2hHq7/vguKevOX
         4+6w+rnr7cVzHbezz3LcDLm4mtp/Qs+KOH+cbvr3RNQttnDL6qHPRmBqzNOKKlOk5r9S
         1PvnAsdDJyGScPhwuDImwU9R3J6PQmnnaIh5SbJWLnAxmQ3nxr8kPDqW7Mqkcu2613+Z
         CIC86JzBpmPEU1ZiC0hGwbwPT14x97vmsiPUhlyQ5KjxSUHhrAmaXYI7E1UMK5WBJdao
         y9DC3nS27rZ1me1ZgUOME7Nl3fSDemlAPrYgb6unygQtllk2OzjuMxGT0PdMJ5QHWpyj
         gWHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GKh+sIVS;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ad2dEr8LgQQwkF2zdIMA1cp4R8S/Ql01WHfKOJBe1X4=;
        b=rufX2fzQzZg1GRKMfQ4+fXSwpTwExnmlMnXqFC5mjU9UiyYTDPkNBdDl4M3/Ii8WZe
         9DbNwCTN3hqYYm4J0r8cb072RKqM2Y9a4kmWAdz9Ng6nwb5FBCmfhj1tR0oD5zQW99fH
         yvz1cyVPos/S/5ZwQbK2zOTXL1mpmDjE6aepfMjp6svb8SQqHY1xnlq+8OJ6DdHvXr2L
         neC97Gd+2mcMs+eQ1tRkOSadaQ5s6xgaPnC+LIvlULUVkS815rw4sryVVrx/DxEwbjs3
         3/dOmwV5EffUQW19/3s9NFZit0lU+u2JUXiXJRp4lCCGZ6Pv49j9POr6wuanm/2SNfp2
         jFwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ad2dEr8LgQQwkF2zdIMA1cp4R8S/Ql01WHfKOJBe1X4=;
        b=R3BrnkRnpAcVRu5PeeyDBj1FKiegokanlrAVekwNA8WSYZQaSt/vDZAgPgloT5SP8G
         Q2tZKmPbjRspow1lMC6/j+JtDyKcqmmmy4a3j1f330Wsy9FNrBFrvef05xH74nHmw1CT
         jIm0SOsqaG2mEVeyXJGskayyQ5KQd0Djr9z+MnHc8p+8c1YFhsw5NRj5D/oJQQD1P7op
         O4Ooy6TPXSn3dGpp8pmsa3xk5qoJujTARQIOjWfmiWQw3HMg/BOJ1e8DFYE2ByMBX3H/
         Kb8csB5jR8zM71SX+MpF7JowSsdCnuPAZfqAOHFCQhHvvui/+CRZKtls2UVRMX8Vxzfk
         0Elg==
X-Gm-Message-State: AOAM531wXIIl0rC8n19Y7EO7M2pF9GIP563tiGEozWASsUIGPUfuHNkM
	dQMnvFpLR+/RkZfcGk1NgWI=
X-Google-Smtp-Source: ABdhPJw8yNn8DwzEoLTZIJvwGvfhU6nOnV0w4ET/78RDYy0Fnlb1wi+O+YInNy8Ah9lKlNrUojLEMw==
X-Received: by 2002:a02:5806:: with SMTP id f6mr31030396jab.136.1593639096980;
        Wed, 01 Jul 2020 14:31:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:1584:: with SMTP id e4ls828822iow.0.gmail; Wed, 01
 Jul 2020 14:31:36 -0700 (PDT)
X-Received: by 2002:a05:6602:2e0e:: with SMTP id o14mr4335053iow.164.1593639096638;
        Wed, 01 Jul 2020 14:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593639096; cv=none;
        d=google.com; s=arc-20160816;
        b=uJ57g5aVfZkQLdkq7WhkSDEABGva24HyjDyM5Vga6LXQV3GOVRBpFN8f4H3t0HOMsK
         AfjZSyJHzVqL5vU5oIWHxGKNLPbzamL2AvXqdqxxhuqyLAN0fCZezzMuTuO11H0hBUZ6
         o5tDK4aEN9xbgjqoRh1vk72JU+aL7n4hZkcMDu6E+7P9GzBirpFjfw0Ykgk3NfvdyRYq
         mJlSrb7V3DXx5MLBznXgKmnsZQ10cdhcO1FefvoZgSBHMChgYRtxk1MFPqDU2sbMKFJ5
         SSKMbQqIo6X5vwO3yX9p/aczvqICvzafv0ex6cHBgGXHzmjCdAXs2B+NxzEb5TIFLcQP
         +pYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:subject:message-id:date:from:mime-version:dkim-signature;
        bh=wyzowyx7uQOEM7mNX5vpM7cpgKtRoBkaGUwdftAt4dU=;
        b=j6+bOTCNnUaBCuOfLZZ3Bmsk4hCY7Pytj7C1QtuIoU6euIM+aVWky9Z7yH/kH5HD5a
         bT5ypFmbEy9FnlKPVEwkdIT+gRUW8XpBXDZOP8rSTgU2iV+wGT2PogPNPEkCmTFZM+kt
         UXs7wK/5gScm3qnReJBmAnksUnlhZTrFgIgCFDoJQ53arTMFfyhUHN97rnCqVz91fO6w
         StOnYbHe6gB6MD9QaRRLBYFWYwGRuURoabeK1NUkwu7Bgw+2DhmdKikxwWAPelUV+4cH
         R4oyKTPHIhyQzgAdmCHBFCxHCh1fHempzNoPC4m636rtddL5q0gwnP97HEwnHqmsOazV
         WXLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GKh+sIVS;
       spf=pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=nhuck@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id p1si553667ioh.3.2020.07.01.14.31.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jul 2020 14:31:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id o38so19670572qtf.6
        for <clang-built-linux@googlegroups.com>; Wed, 01 Jul 2020 14:31:36 -0700 (PDT)
X-Received: by 2002:ac8:4ccb:: with SMTP id l11mt29054058qtv.18.1593639095888;
 Wed, 01 Jul 2020 14:31:35 -0700 (PDT)
MIME-Version: 1.0
From: "'Nathan Huckleberry' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 1 Jul 2020 16:30:00 -0500
Message-ID: <CAJkfWY48=q1JBFDt2agjTOSNbYYeuxsQaD7RyjkvcesKtJhARg@mail.gmail.com>
Subject: [RFC] Instrumenting Clang/LLVM with Perfetto
Cc: llvm-dev@lists.llvm.org, cfe-dev@lists.llvm.org, 
	android-llvm@googlegroups.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: nhuck@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GKh+sIVS;       spf=pass
 (google.com: domain of nhuck@google.com designates 2607:f8b0:4864:20::841 as
 permitted sender) smtp.mailfrom=nhuck@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nathan Huckleberry <nhuck@google.com>
Reply-To: Nathan Huckleberry <nhuck@google.com>
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

Instrumenting Clang/LLVM with Perfetto


Overview

    Perfetto is an event based tracer designed to replace chrome://tracing. It
    allows for fine-grained control over trace data and is currently in use by
    Chrome and Android.

    Instrumentation of Clang with Perfetto would give nicely formatted traces
    that are easily shareable by link. Compile time regression bugs could be
    filed with Perfetto links that clearly show the regression.

    Perfetto exposes a C++ library that allows arbitrary applications to record
    app-specific events. Trace events can be added to Clang by calling macros
    exposed by Perfetto.

    The trace events are sent to an in-process tracing service and are kept in
    memory until the trace is written to disk. The trace is written as a
    protobuf and can be opened by the Perfetto trace processor
(https://ui.perfetto.dev/).

    The Perfetto trace processor allows you to vizualize traces as flamegraphs.
    The view can be scrolled with "WASD" keys. There is also a query engine
    built into the processor that can run queries by pressing CTRL+ENTER.

    The benefits of Perfetto:

    Shareable Perfetto links
        Traces can be easily shared without sending the trace file
    Traces can be easily aggregated with UNIX cat
    Fine-grained Tracing Control
        Trace events can span across function boundaries  (Start a trace in one
        function, end it in another)
        Finer granularity than function level that you would see with Linux perf
    Less tracing overhead
        Trace events are buffered in memory, not sent directly to disk
        Perfetto macros are optimized to prevent overhead
    Smaller trace sizes
        Strings and other reused data is interned
        Traces are stored as protobufs instead of JSON
    3x smaller than -ftrace-time traces
    SQL queries for traces
        The Perfetto UI has a query language built in for data aggregation
    Works on Linux/MacOS/Windows


Example Trace

    This is an example trace on a Linux kernel source file.
    https://ui.perfetto.dev/#!/?s=c7942d5118f3ccfe16f46d166b05a66d077eb61ef8e22184a7d7dfe87ba8ea

    This is an example trace on the entire Linux kernel.
    Recorded with:
      make CC="clang-9" KCFLAGS="-perfetto" -j72
      find /tmp -name "*pftrace" -exec cat {} \; > trace.pftrace
    https://ui.perfetto.dev/#!/?s=10556b46b46aba46188a51478102a6ce21a9c767c218afa5b8429eac4cb9d4


Current Implementation

    These changes are behind a CMake flag (-DPERFETTO). When building Clang with
    the CMake flag enabled, the Perfetto GitHub is cloned into the
build folder and
    linked against any code that uses Perfetto macros.

    The -ftime-trace and Perfetto trace events have been combined into one
    macro that expands to trace events for both. The behavior of -ftime-trace
    is unchanged.

    To run a Perfetto trace, pass the flag -perfetto to Clang (built with
    -DPERFETTO). The trace output file follows the convention set by
    -ftime-trace and uses the filename passed to -o to determine the trace
    filename.

    For example:
    clang -perfetto -c foo.c -o foo.o
    would generate foo.pftrace.

    Link to implementation: https://reviews.llvm.org/D82994


Tracing documentation

    LLVM_TRACE_BEGIN(name, detail)
    Begins a tracing slice if Perfetto or -ftime-trace is enabled.
      name : constexpr String
        This is what will be displayed on the tracing UI.
      detail : StringRef
        Additional detail to add to the trace slice. This expands to a lambda
        and will be evaluated lazily only if Perfetto or -ftime-trace are
        enabled.

    LLVM_TRACE_END()
    Ends the most recently started slice.

    LLVM_TRACE_SCOPE(name, detail)
    Begins a tracing slice and initializes an anonymous struct if Perfetto or
    -ftime-trace is enabled. When the struct goes out of scope, the tracing
    slice will end.
      name : constexpr String
        This is what will be displayed on the tracing UI.
      detail : StringRef
        Additional detail to add to the trace slice. This expands to a lambda
        and will be evaluated lazily only if Perfetto or -ftime-trace are
        enabled.

    Perfetto Documentation: https://perfetto.dev/


FAQs

    Why not use Linux Perf?
      Perfetto's event based model allows for much finer grained control over
      the trace.
      Linux Perf is only available on Linux.
      Visualization requires post processing with separate tools.
      Requires kernel version specific dependencies.


    Why not use -ftime-trace?
      Perfetto has almost the same functionality as -ftime-trace, but with a
      few added benefits.

      Shareable links.
      Traces can be aggregated easily with UNIX cat.
      The query engine for trace analysis.
      The Perfetto UI is browser agnostic and could be used the same way as
        godbolt.
      The resulting trace files are ~3x smaller.
A trace of the Linux kernel is 50MB with Perfetto and 139MB with
-ftime-trace.


Extra Notes

    Perfetto also has a system-mode that interacts with Linux ftrace.  It can
    record things like process scheduling, syscalls, memory usage and CPU
    usage.

    This type of trace probably records way more data than we need,
but I recorded
    a sample trace anyway while testing.
    https://ui.perfetto.dev/#!/?s=18de7feb4f84ecd29519cb4ac136613ba891e4fd5e88a9e6511412ccfd210


Known Issues

    When no-integrated-as is enabled, traces are outputted to /tmp/. This is a
    bug with the current implementation of -ftime-trace. When the Perfetto
    change is applied, the bug also applies to Perfetto.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJkfWY48%3Dq1JBFDt2agjTOSNbYYeuxsQaD7RyjkvcesKtJhARg%40mail.gmail.com.
