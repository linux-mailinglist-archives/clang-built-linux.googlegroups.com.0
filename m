Return-Path: <clang-built-linux+bncBDYJPJO25UGBB2FLTCBQMGQE4TQDCFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x637.google.com (mail-ej1-x637.google.com [IPv6:2a00:1450:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 8068A351DCA
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 20:50:16 +0200 (CEST)
Received: by mail-ej1-x637.google.com with SMTP id kx22sf2607462ejc.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 11:50:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617303016; cv=pass;
        d=google.com; s=arc-20160816;
        b=VwEGg8NUDlvllKPNZSw7rbkPzujcfatwDX5RTSAdP4WaNAzzo3otYQjAtlo7jaGDrB
         sjBRa0VoFpfv5OU/0g66ZXTcSvEXs7M6Y83hUCCYiNdcRRYuVeVoEaT697Z+00xjBgWY
         2edrSPPOFFdQsHw74c0ivScfjEvIYx/biabPppsqnVegdym/I3o07RJjcGcNKtKrf3fT
         FRnImesxtum/YZn8ENLxUiUZXmfvXVTot3npO+U8Pf9CdYbUDSCmM+nF2zExZ0EvfjgK
         kuTHVKBudpIhP++OYTOe6nWCAClRpQ8wuGl5rYgViK63EjoaJAa9MyW2s6BMrXVBL1KZ
         rc+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jhNrY9SuenkacznqWYoT99AnojH1yZh5VgeFrJW65Vc=;
        b=imoctmGXZEFweDQgGb++40aiR+KQW/CGuLABoeaEa2Nmo73z7o9sqgVpBXqkwDa0Dk
         hh7/b2KYgdnaWeb/dMoB56G9xm2eIoQJxlGBAubzOTrqNIXmjlqL8wqXGCfeEUGOw525
         360qyAiCWpQwONOHWSYs6S/wnJ/gi/qUAFlKc786/kPbE28ywu2k3qcjgMSAhDvDcqDt
         cttBBcTIxsMsLF0S6A8COXE1texDsKVLIno1H6vYMS9GEvTL2DsFGYMCc8vo8bLyEF47
         Ao7i+h4S2tM8fCNt+/mOaoCVXZBvgyprtga8o0v3PsG75mb05eAnrCh3TAiiHyUE3Hlk
         zMWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LJ6w4Y2M;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jhNrY9SuenkacznqWYoT99AnojH1yZh5VgeFrJW65Vc=;
        b=jJ7N1Qh7LrhCRwlyTlr5u5E38ugSxk4tXtDoF0GDomPB88jvL1zLdgjNgxDa7c38pj
         p3FEvMm6ZsOef2sBUbXyRQwYZAZNiiJZ/B+a25C4l4L+aGFC27EeOwZMq6DzepEn+9pk
         yCN5eUpF/CTKTS6p3ziW6Ab3Ewn1OKdI4jGCKU+NorHJJoUmBWK3Ggsvp37qWBb0UJ+Y
         nvTdlPwXFc/TDdEtnTI4K50llIoBn343Wa9eLpFnvaCE1/TVZYG0cyCPJZEs5KcU9a2r
         yRgNULPUYHGYvK+V/PdCjkg/RgedonY7HKrRP+oDuwKTn0qJSVKxGDUzWEQ2FKtawjzj
         b/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jhNrY9SuenkacznqWYoT99AnojH1yZh5VgeFrJW65Vc=;
        b=HeTwqB/7l4yg0DYR4Mwh9qe1TLAW/bIIKoPgqL3aJrbBhVcbeTE82Vj++oD/8KRRot
         yrujzphR64ncS05aOIWOAiKq49pIDpzMkHaywneFra/g6fFXSuy4Izjic09xPYhlObNu
         GzTxs1TGopeJCtUVskn5WMMHznFKHqjpJ7djs07SEmCZRxnWcmwnsO3eTB66uNAO+mZo
         1WNog3JhV210FC7w7xpWVeYJpYl6O4gmbrrQBQ8BcelNB9xwOIX9qzzg0R+/P0aeL2S8
         c9zZedexd0bDFQF/k+q7JSAqMR55qhnZqsoRa7GbsF9bs0hPGXdP1VxlIR3t5JG5wfZE
         GcJw==
X-Gm-Message-State: AOAM531OaLpg6REq/04et2GEzM+bqHc3Fsjl5nJNYqlkRSEk2q3FoZyD
	5NBh/9xM0a+fjxS2+5PmNIg=
X-Google-Smtp-Source: ABdhPJwPUKlYoY2ry4VYEGjsmffEo19Pjn3XfzPLApG3Modvzz/eTPxJpE8AyEd7Eda17gC8cKrOwg==
X-Received: by 2002:a17:907:ea3:: with SMTP id ho35mr10739409ejc.219.1617303016278;
        Thu, 01 Apr 2021 11:50:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:f290:: with SMTP id gu16ls3550582ejb.11.gmail; Thu,
 01 Apr 2021 11:50:15 -0700 (PDT)
X-Received: by 2002:a17:906:5ad2:: with SMTP id x18mr10639067ejs.117.1617303015368;
        Thu, 01 Apr 2021 11:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617303015; cv=none;
        d=google.com; s=arc-20160816;
        b=gR7F16JP1Lb5gSawnD+QvzAO9V60Zhys/1FH1ZaKj5iXXfrpwaHkyNuxl1GEoUe4aq
         L3usXBFaxwPHbTRR3sZjsjvr+IIfXGNRV0655G7w9NEKLNZmAxjHUE7G/jOKKNw6GbXt
         ZRKJ0KL1rsvhqYp9qIwuaxWVklrqxqR/34lneBAUbx7CjI8NPIqiuTSn6W0z2d04twxP
         IDetZdax/YOzB9gWV+rtqi6sgWZRr8pi1cgn0ZL47u79OrIqYMRHvYLNnPWKTf2nmsgy
         BkbzFzbF8kaV95RmSDl3i8zd21pb+kuCG71WQ2GXtvz3ofH8G5VfSMAyy75zgj2bSqIF
         kLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1KmEagxK+rhdAhvN7uNMepKmJEX8gVa3xuxeYizT0aQ=;
        b=kGGIvzaxTT5ojf7+lRrC7Cde6hOIXWG2EQUIoEIa11Op9iwxRntmumcC6cCQoBsCTw
         6M5jvWgQ5GXyJrnt0r6lmvAbTWvOK3j1CeKMtBLYlmRCdPD+2EBIqSCdYPyc/hsrHWS1
         TrfCVwyj0pBZ1FcM7ejDLqc7C88Mqx3V/S70qjYR29hSNnQ6XwQk38LYP18MNhVCwO1/
         TGLOvVFZEuArqN887ZQnHP/no8DlY9xKS+zwKGvnSgXAb5jX7tbae5tmPBSMBaG5IQro
         3tJeX1GrAkDnmbTJOE6+rLQ7bFVugNkdKD8Hw9QXa9bb2t+zVbBSQAUbjQfDECpo3ous
         Xnvw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LJ6w4Y2M;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id r21si582993ejo.0.2021.04.01.11.50.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 11:50:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id q29so4300072lfb.4
        for <clang-built-linux@googlegroups.com>; Thu, 01 Apr 2021 11:50:15 -0700 (PDT)
X-Received: by 2002:a19:8c19:: with SMTP id o25mr6411654lfd.547.1617303014926;
 Thu, 01 Apr 2021 11:50:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210401025815.2254256-1-yhs@fb.com>
In-Reply-To: <20210401025815.2254256-1-yhs@fb.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 1 Apr 2021 11:50:03 -0700
Message-ID: <CAKwvOdka=a-RtLzBdEQm5s570rLSDLfRD4Xf8SxOQHWcTdUz3w@mail.gmail.com>
Subject: Re: [PATCH dwarves 0/2] dwarf_loader: improve cus__merging_cu()
To: Yonghong Song <yhs@fb.com>
Cc: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>, dwarves@vger.kernel.org, 
	Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, Bill Wendling <morbo@google.com>, 
	bpf <bpf@vger.kernel.org>, David Blaikie <dblaikie@gmail.com>, 
	=?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>, kernel-team@fb.com, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LJ6w4Y2M;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Wed, Mar 31, 2021 at 7:58 PM Yonghong Song <yhs@fb.com> wrote:
>
> Function cus__merging_cu() is introduced in Commit 39227909db3c
> ("dwarf_loader: Permit merging all DWARF CU's for clang LTO built
> binary") to test whether cross-cu references may happen.
> The original implementation anticipates compilation flags
> in dwarf, but later some concerns about binary size surfaced
> and the decision is to scan .debug_abbrev as a faster way
> to check cross-cu references. Also putting a note in vmlinux
> to indicate whether lto is enabled for built or not can
> provide a much faster way.
>
> This patch set implemented this two approaches, first
> checking the note (in Patch #2), if not found, then
> check .debug_abbrev (in Patch #1).

For the series:

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

(Noting for others on our mailing list:
https://lore.kernel.org/linux-kbuild/20210401012406.1800957-1-yhs@fb.com/
is a series of kernel patches required to test this. I had feedback on
the kernel patches, but this approach in pahole LGTM since I think
using simple notes in ELF is a good approach).

>
> Yonghong Song (2):
>   dwarf_loader: check .debug_abbrev for cross-cu references
>   dwarf_loader: check .notes section for lto build info
>
>  dwarf_loader.c | 76 ++++++++++++++++++++++++++++++++++++--------------
>  1 file changed, 55 insertions(+), 21 deletions(-)
>
> --
> 2.30.2
>


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdka%3Da-RtLzBdEQm5s570rLSDLfRD4Xf8SxOQHWcTdUz3w%40mail.gmail.com.
