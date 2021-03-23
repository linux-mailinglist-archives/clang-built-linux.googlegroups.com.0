Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIWW5GBAMGQEBZBEOOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE2D346CDF
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 23:26:44 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id x197sf1069pfc.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 15:26:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616538403; cv=pass;
        d=google.com; s=arc-20160816;
        b=vbUBvaoSlgOZ2gqtGq/akjFRhRbaLoXgnHZSzkJ3KvfnCPj/KPF1+OxKLBvEKCpp1x
         wYledNDL93qN/eyJgttWHH2i5eDh/7B36e4i+bkKBvaHuhtr4T+odR8Q5dp3K76bVSI5
         lvIdmoJSf65V0l5R/F2Ps5TE2VqvkL7mLFYsU+Cv3GtFjZEjXYgSfR3JWoYZFCoG3Tzs
         5raDDng6aOsbZa7X2HhcCISdVF4uAEGGw91vM8VxFPxBVGZSDhjGSgwMS3ONYSarzinE
         orYX8q4rCoa+MhaiBv8OGt1YL2JXz0T5l+ryEiaIH0tX3cxwvQrNXQDrHR3t9n+2M24D
         +vvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zK2R++VYH+MT2jn9RfVtu7gSVJYN35bDYqmrVgJ4n1A=;
        b=TBqDGcYa7MXJSGvUDJQXPq1qPJpB7nQz7Pomt1OkU08239YVUQGhds5Ax19WNlJI3d
         CVvFX73x4NfY7qIz/3mhjLAma3p5i1ZUmWD/eJewrqZClp8mDEkvzgspBXRjdY274nWS
         bV3MTod3ar4R1yJtGmQIPBqkhpKUv1k9vjnMdKNnEK1wybRcLlIGIIXzc0MMYHEGcaF1
         PdJMCUU4iHvVp3POXFAyFIe9DT16tQvW43Jx61aE+UdJFUtvzsIrj106a2fYDkKS241M
         V062L2oVnmrMXtq+0HU5XT7jJGS3G9CDPW3Ku5YCBnEUkYrpzIPZEhYtuyv+nBTn90YD
         zbiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m34jvdcA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zK2R++VYH+MT2jn9RfVtu7gSVJYN35bDYqmrVgJ4n1A=;
        b=GjxwpYF1T53oUrL3HPV+o8zwl9yulsOupcVfrTuoUl9FpB4d6HLaHVdwrA8DNViiAs
         kw55rbLJZtoFrq11kbsYD6rxz+5d8LoaNSKu8ZEQxqEGlBQRt2GqFpUrB3M4F8Bv3riY
         w4NiDGRYqiYfdzMGe1/i2izJqHiYO9Bej3CxnfQEwCrsgdDtxjAeCnlwPb1mOQOakele
         nHx0u4zkyA647UJEosT6X3hnNasTk7C2L8i5vUBGngv040k8QZpFW/LiS8+giAA2EmgU
         RaQFwQQZy4LYcafBfO86+xy8wfk3js56ZGv0sGBSc2VZ6EF2rkXmOyF4JqFtmQOABIdo
         jOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zK2R++VYH+MT2jn9RfVtu7gSVJYN35bDYqmrVgJ4n1A=;
        b=Ot/UMhusatAqQxhT2bz6hRu7x1ExaIsmmVKbda0E5wlZELqMYvqs4a4xQiotlMdHdX
         hE74rX3Mv6+sanIfyGfpdTH9j/bcaghHS69qkwjmy2X9oF0XNz9e5161loKTNZbuXJHV
         AaJa4F9OR2xyfpMSb1NvzqjYMORrnmo7OELtnkGEu73HkZEWyTLWD8ZpbuESeBzDvaPR
         WXCdei46TbByk/XYdmtbdSfqJBBCrLbVth9aJrF/FIfRvvIhDsA3kZdY1bjiq0mBlqJG
         zH4rIdMd25/NsW1cznI7MUQcnCboCY/2lVRp+TCS6sjkJ1Ca6M0PmIt8vqOPH2aUdmjd
         BQVA==
X-Gm-Message-State: AOAM5319NRqdvIR7Strh8EQqSPbY6SJmYe2oqqX/+GaCWoxgA5/x1TIa
	xs8+nRStuGFwAncaWG2Z/Hg=
X-Google-Smtp-Source: ABdhPJz2Jp3b7H8Bhqcu48R+lXnB0SfI22BjcpsmXvqx0XQ1PiKZmZw/lmOU4cLUUSBASum8Fvq8Rg==
X-Received: by 2002:a17:90a:2e0d:: with SMTP id q13mr263764pjd.225.1616538403166;
        Tue, 23 Mar 2021 15:26:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:1382:: with SMTP id i2ls55936pja.1.canary-gmail;
 Tue, 23 Mar 2021 15:26:42 -0700 (PDT)
X-Received: by 2002:a17:902:bd8f:b029:e6:ec5a:3a6 with SMTP id q15-20020a170902bd8fb02900e6ec5a03a6mr374051pls.31.1616538402539;
        Tue, 23 Mar 2021 15:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616538402; cv=none;
        d=google.com; s=arc-20160816;
        b=Cqu6+WSGM6/RPlejFIO3p+gmHpAalzRtBp0v9PjaRLcZ+TLwm8D0XdDFwGVr4wrizv
         S0LohScL9HAQdAQ5J4KqPLJxYS9ULucA3ROgmzU0P2dFqbJS7hVe52IwNFtE3eQb0xld
         Nri3pTQ/v9bRpWjVhK0XuA1qj0BbPFmfJRZDNXpBdyguVTAyhSY4AiaNgkP3gznF6SIN
         KbgHxP9d1RrrdXIWPFRZ+s+/rZVr5p0Ofrj8hW6C6ch4M1invhyevRs1MfY6VQly10wJ
         blUpcF9PFEb1n7+6qoNcxJ2SZ6csWjcHVC1KZ4HhmYc5lMDi1U+pQ2dw1xjrNUmjwO8x
         Vcng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=McbNG+pdnqAHYhSqxHAOlASA7zl8iR0W9EqaTCrIcZ8=;
        b=tgJomcVd0fuF5WwZ96MSUHCxSodb56wcsf9ildI+FZ+QW8Y+9pZmyNoC/ckjRopiQx
         Sk1rZGkkKophN000KM0jhzLx9Iqlv7Ttbe37+bTsSki2auvQOF3/9uhkx4tHpGJRLRRY
         ORwmXG4k2ckWexfmyMeBeJgGZEEWH3tIrXOybaT10q5XXndKcnNT37Fv1+MWnfLXObRN
         6+TWMgC9HQXj/f8w1Zq/S5N7KKoiTCIvrUqfRZGpFVZtnf5htSUGrbu6gDYrcE8vygyw
         tXIRkMWMd6A6JnJImy5zHcLDNRqGXfGhI0sDUU2HFl/Gq0bdKj9eUHD6Q/VZX1sW3ndg
         FrPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m34jvdcA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id h92si13958pjd.2.2021.03.23.15.26.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 15:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Received: by mail-oi1-x234.google.com with SMTP id n140so18759823oig.9
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 15:26:42 -0700 (PDT)
X-Received: by 2002:a05:6808:2d5:: with SMTP id a21mr251417oid.88.1616538401633;
 Tue, 23 Mar 2021 15:26:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
 <YFmoPpb5w4q1dWXz@hirez.programming.kicks-ass.net> <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
In-Reply-To: <a60f83d2-75da-d147-ae92-47a5b474e162@citrix.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 23 Mar 2021 15:26:29 -0700
Message-ID: <CAKwvOdkk6bwJh22L51F0DAMuFXJYKUTjbzQV+STD2h35Z7_vQA@mail.gmail.com>
Subject: Re: Plumbers CF MCs
To: Andrew Cooper <andrew.cooper3@citrix.com>, Peter Zijlstra <peterz@infradead.org>, 
	Will Deacon <will@kernel.org>
Cc: linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Steven Rostedt <rostedt@goodmis.org>, 
	"Jose E. Marchesi" <jemarch@gnu.org>, Kees Cook <keescook@chromium.org>, 
	Florian Weimer <fweimer@redhat.com>, Christian Brauner <christian.brauner@canonical.com>, 
	nick.alcock@oracle.com, Segher Boessenkool <segher@kernel.crashing.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Jian Cai <jiancai@google.com>, 
	Luis Lozano <llozano@google.com>, Kristof Beyls <Kristof.Beyls@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m34jvdcA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::234
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

On Tue, Mar 23, 2021 at 12:29 PM Andrew Cooper
<andrew.cooper3@citrix.com> wrote:
>
> On 23/03/2021 08:35, Peter Zijlstra wrote:
> > There also is talk about straight line speculation mitigations. for x86
> > we should probably emit an INT3 after every JMP and RET. Although this
> > might not be controversial and be sorted by the time Plumbers happens.
>
> I guess this one is levied at me.
>
> Hopefully it isn't controversial in any way.  I have just had sufficient
> tuits to get around to making an x86 straight line speculation feature
> request to the GCC and Clang communities yet.
>
> For the compiler folk here, the tl;dr is that indirect CALL/JMP (i.e.
> function pointers, jump tables) and RET instructions may speculatively
> execute the next sequential instruction(s) before taking the control
> flow change into account.  Having some toolchain support to deal with
> this would be great, and preferable to some of the asm hackary currently
> under suggestion.

There is some prior art here, for ARM in -fharden-sls=*.
https://developer.arm.com/support/arm-security-updates/speculative-processor-vulnerability/downloads/straight-line-speculation

It's not clear from the kernel thread that the existing compiler
mitigations are amenable with live patching in/out mitigations for
hardware that is affected or not, respectively.
https://lore.kernel.org/lkml/20210305095256.GA22536@willie-the-truck/

Perhaps worth a discussion on the mailing list in
https://www.kernel.org/doc/html/latest/admin-guide/security-bugs.html ?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkk6bwJh22L51F0DAMuFXJYKUTjbzQV%2BSTD2h35Z7_vQA%40mail.gmail.com.
