Return-Path: <clang-built-linux+bncBC7OBJGL2MHBBREF632QKGQEQLLHAQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CFA1D3883
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 19:41:25 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id b7sf3869340qkk.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 10:41:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589478084; cv=pass;
        d=google.com; s=arc-20160816;
        b=tSmDgs6+CytWBplq6jClsVIzwilPTaa/dkHAqkjh5FYAZvC/GaFVCzQvXZ/YvNnPkk
         B6Ni0rQqtSYtEHTNbgnHlBarVXz4fNrBWXj3+HmiwYKQGlHdcza0vAw/2wcqf6xEsYWS
         r6SSS7ekjSycL55GmHOQu3JEhC2AR2H2sV1zQuHbK1iQnc0CvPchHIskWH7vycnaL5m3
         LPjtVO8ebPT7ISmHF2wwXdyLzCrxedulPRNbFtwcefByUa8+JN1EhhMV6SDIrGP8ZOic
         iuY+yqOMJ4wZzP1VZaMU1ZkBm212itBdHljlei0DyNooP5YsfR6pGYe9IRprCoyGpSHc
         ABRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=kOebg82Gx/0NcwI/gZkvTg8tKEQHy9N+pgsWW4m2Qv8=;
        b=FlTqjn9OUSncgO4iMZI//VF+7Wjnyf2AzjE1GRnmC8Kl+qpfcbryEE671oaUb55yKQ
         f0KuPYTgA7iY/XHxogMjp32mdOTxGMkuv7O0Mn+gH8+MhFWp5fGUz3WsuJkAQnvlNptv
         guW9tiQTzTAgjMmmmqq/2w2tVT7IexreGWHl9JM+f/20DtXDDGXsX/iX6ImATSybI00X
         r8gDgY7nPJgoFLuLdMFXRjPFC4BCG12b9k3iU/c9Wv3IwZ3eMjwb3AJsy3NMjAJlSeBT
         QSjs1aU9qdHu6Au3MYD84J3IbWyggJYXaDsE8X3aK67D72NPNzB6cRgw9o9QeuuF37rW
         9CIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CyrUbM07;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kOebg82Gx/0NcwI/gZkvTg8tKEQHy9N+pgsWW4m2Qv8=;
        b=rG6H/c78r1+ILZT7h6f3mMpmtJRjPLn4dQffUJ2FET8e/povLVSbSJbmsgIe1OKlYQ
         TWuAId8ySfmzr/NrUwIZd8a63oLiwWVgSSGyN6OoGd6SanGOl/ZP/tDB/OW1u7Tz25an
         aHj4D5ox78j6wcjSFFCXeCOqLX5NmHWKtcJHlLDyaYM+x8Gz0h2d7DXyYQgCVC3Y1OXv
         3V9Y6N5Ere57VkeBvElFQJmhrkAoIRZnEgP1EaOkwWM2u8TLQm9NEb3JTCXTf35WbbcG
         LLRj5UilTiql75zYw8Dgl0XMNdXCV1Kx1ex9MAbC5s5qfJqdSoKS0LTdJNyDgFdqAInb
         +4bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kOebg82Gx/0NcwI/gZkvTg8tKEQHy9N+pgsWW4m2Qv8=;
        b=Xr9V4Ho3GioTCR5XBOpSQUAbnOPeYbRVZb7A3EsoFjvkHWqPOW/wMxUXwC2AJeRCtb
         nKVhVs8H1j1XD9WJZLTSgOm3dW5mDvGSx7ajchQ742nwyLcRRG37GMOglDifauUUfDOV
         hIeaBJztHOq4ey+VfK2Vmv/GZy5JS0o9PZ0vf8o2lgw0zP1EVEzq0i7Ji/y29kFraFXT
         Nrai8dnUFz5jYKCp9e/ohqY10LJTyTlznTqsjtXzAudmHysXxumSg6kRino8vAzZRofF
         uhCnxN7CfEM62mTjQqosi0yim0W3PuwvpZQYRYxlEvpqcsIQMGlseHlBnR0Ilqu52c7s
         3o5w==
X-Gm-Message-State: AOAM530wPSiJgEfyVvm76dqZe62gue51LIER3myrWj9/aLbFxh3InmDm
	ZlrOjxssQsS+lgFBT/OgwLQ=
X-Google-Smtp-Source: ABdhPJyNWWKUgHShFjYDEDnQPaUOlexVtRCtwWnTt7m8620m4ymE0+u12Xb/2MjmMIIIQkj8m2yklw==
X-Received: by 2002:a37:7143:: with SMTP id m64mr5758158qkc.27.1589478084724;
        Thu, 14 May 2020 10:41:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6288:: with SMTP id w130ls2261505qkb.10.gmail; Thu, 14
 May 2020 10:41:24 -0700 (PDT)
X-Received: by 2002:a37:7984:: with SMTP id u126mr5904395qkc.356.1589478082427;
        Thu, 14 May 2020 10:41:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589478082; cv=none;
        d=google.com; s=arc-20160816;
        b=jnJsZkoP/VpPsYXYQTMmVgPyaE95+q4oxtm84hfLlKRbL6rBLBvnMjqUxryeSmw5Jv
         1lyhZj7tjA2OVBEKbhS5n4G9QYcix7wBGpPwyaDxaVss6wNjQoqZPds+4/xg78mH6uN4
         F2UFzfp1qbAWm7U+cKJzokyk8giIEYJMmr79a7lV54Jzm3xWeLpJOHXImiNHuSZqY/02
         qfGfCZwOGTStRBCRbY8HPhAvtENDAssuuFDNbTSCucxdqQgGyHN5kDqnu0LyH6vc21zu
         KvxnY4XG4i5eTsLanzY/08duWkFo6684lJApe7AKAIno+OdzWljTTXxj+NkMEwkONX0m
         L48w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ya52B8W254Qs4dRwJLWq3FqzUBXxL/RTpbEftDe0Ep4=;
        b=fWnnyTzEVIY5Q7e1aD4O22/7qDv07jTYUYolskrQKY2NpUXw29REXPkCppJHMWNpX9
         eWgaog6l+NSaSbRD4Lq+z/HHeISvkw4YtBLPgl/tM2aQjee7EXadeF9jKUDurJDUqPth
         9Js3dcOglw2CDVZQeuyQCpUVTNp/lCDAgTAnhtSIH4CVsDyh+d8YDKYVCSxpn5usw7f6
         Zerd6vdfxpFUHxm4/LqtTCrSQLBlfL3oqh4rWllqdlsBCxzbaw7mkc2dQfvSatuGozb6
         2QlrQtu3mmQlyElxbcwn6eRxfRqahiUqAgaHZDRHBhOmkPUamNAXwkKt5gAMYHxsSmf8
         8jtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=CyrUbM07;
       spf=pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32b as permitted sender) smtp.mailfrom=elver@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com. [2607:f8b0:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id n23si388473qtv.0.2020.05.14.10.41.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 May 2020 10:41:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32b as permitted sender) client-ip=2607:f8b0:4864:20::32b;
Received: by mail-ot1-x32b.google.com with SMTP id 72so3076127otu.1
        for <clang-built-linux@googlegroups.com>; Thu, 14 May 2020 10:41:22 -0700 (PDT)
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr4076012oto.251.1589478081354;
 Thu, 14 May 2020 10:41:21 -0700 (PDT)
MIME-Version: 1.0
From: "'Marco Elver' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 May 2020 19:41:10 +0200
Message-ID: <CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ@mail.gmail.com>
Subject: ORC unwinder with Clang
To: clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, kasan-dev <kasan-dev@googlegroups.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Alexander Potapenko <glider@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: elver@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=CyrUbM07;       spf=pass
 (google.com: domain of elver@google.com designates 2607:f8b0:4864:20::32b as
 permitted sender) smtp.mailfrom=elver@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Marco Elver <elver@google.com>
Reply-To: Marco Elver <elver@google.com>
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

Hi,

Is CONFIG_UNWINDER_ORC=y fully supported with Clang?

I'm seeing frames dropped in stack-traces with
stack_trace_{dump,print}. Before I dig further, the way I noticed this
is when running the KCSAN test (in linux-next):

CONFIG_KCSAN=y
CONFIG_KCSAN_TEST=y

The test-cases "test_assert_exclusive_access_writer" for example fail
because the frame of the function that did the actual access is not in
the stack-trace.

When I use __attribute__((disable_tail_calls)) on the functions that
do not show up in the stack traces, the problem goes away. Obviously
we don't want to generally disable tail-calls, but it highlights an
issue with the ORC unwinder and Clang.

Is this a known issue? Any way to fix this?

Thanks,
-- Marco

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANpmjNNLY9EcSXhBbdjMR2pLJfrgQoffuzs27Xrgx3nOuAUxMQ%40mail.gmail.com.
