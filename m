Return-Path: <clang-built-linux+bncBD66FMGZA4IOXEUZQYDBUBCAMVHZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id DBCBF3A59EF
	for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 20:07:39 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id j3-20020aa7c3430000b0290393f7aad447sf4779526edr.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Jun 2021 11:07:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623607659; cv=pass;
        d=google.com; s=arc-20160816;
        b=QtTEIlD4nK+6CtC7e96AV7VCOtGp4n1waWTwhtdXvdc4MqSMzdTelToWs3HRsXaqja
         Pwny8gHPd6RhzGXUvYWIVgOR7meHipvumuI5Ka2mvaKyaoggBB8n7L1F7aYkMk/cnTjU
         8v/tV1z+AGIyw4BcWpppp4OXKpFkr1WPVAZPD7xEa8ZjkjKG8dN9kU0RZmZpVpp37Ve4
         iCOUF1eLoAlCEjbxERGXNX9FqntIAV2KczwnTo2VLl/7r/mEpu8h4nRGOuY7HlR1oSF2
         Gs0rfGw3fbk/ywpyOSUbP2ayA2OU7oxIKq9677gexuovm1qKO5lVzu1lQSjhE7yvTj6q
         zgcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FTYNQg2AzYLWctBcgOw/A37wyagiX3xMIWd0yS34YAE=;
        b=F8hj8IrW5ZwZ8Jnu8wGoCtaJVdCsUWTxNmqnhXJWaaL9uSn3vQbARhOg4qvMfaisSW
         vBniYHNNJfILrn6dJ8NILYMR8foLwF57krTbe+l2M39elQbtVFSqX6qGIN4h6PQc2Wwp
         4mfONBFuHQVoEbLWcXkQ89J9Ve/G730msBpAZJt96oABF3W3dnldJuYQznqESKhzIoPO
         LMSOk1UjKKChrrgHVBl0S544+sIMCHRVyC/zyrkTJdrphGeoAKNR1PhtVQf30J8Kqmbk
         S1IqjBduk/EAmL51TldD6kwxkBS+CzyPfFhvoP0KYKWqMtqEHctPrNVk0Upt39jyOyOA
         iEQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TM9DZ6gS;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FTYNQg2AzYLWctBcgOw/A37wyagiX3xMIWd0yS34YAE=;
        b=eActP4yyYAMm9xQM71QrVlB37FPQ6zMmsWgZvNjwqgqMW72ehg4HtmGUVbVZa8mbVN
         wRvIMA++LPWvrFwtFPbmFYCsFIZHnTd/yPqF8+OC8SiEuHfd7JvIMGCV8w7fJeMQQNGR
         fjKWnjCzSJ3dMENVssFaY3Wig/Moct3q6Jd2BtpTAKAbtg9oDVb/M1CR2hC11mWA5Vi8
         au0LgWjXMzdLIAOLrdCKb6u4ROdWPMzTKvKEQkHf5wyM9YNBsSoTyROQvwOpAwOyyJHJ
         cOBaG9OLHvAYUVo2ty82OebEMTjJm446Ung7+DU8MnHQbknzf+sehk99EgfgIRr9YbiX
         nhAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FTYNQg2AzYLWctBcgOw/A37wyagiX3xMIWd0yS34YAE=;
        b=GJw7unHQMpAiPgs+nDZTEgabozrfE/4btc/kMp92Wi+uAnlSh/XkTLSiGXwh1Bk1gX
         171g/lYgLa1calff61NMY3fDtKou3mUFkkhEOAnx07tls3DsCCbNIa+qKNgzegXwJygi
         Tuk/w+os9IlkKX+TPJoYL79Pw6O94VvyqhctrEqx+lmNkWTB0/fyt/P7lU2ljP/Qjfjl
         ggRQLf1nGvL7jkIG4CJ0NcEluxCS3glBmZNcQw3tNlvRkdC0F+mJjoLhD6aUZOBzYym4
         MRz7KZ6SUywSiNVW2tWopZD3JnAL5V/KS6gMFjyl0buc1ONHbEMbTRFfXys9Jc0yqZW8
         9aQA==
X-Gm-Message-State: AOAM531HeY/A/A8QIoP2BpCgR7CD1dCuqcXwKuBYQMRAw++9e5cDV3iw
	28nYGoB7bL6vfY860iYdCPQ=
X-Google-Smtp-Source: ABdhPJzTx1z+JGQfpJEpa0AxW/brxUmC/86oEQREgy2hLCfnXXZp9D/FLhW5OnyV2qRaAuThOK8wGQ==
X-Received: by 2002:a05:6402:c8:: with SMTP id i8mr13561507edu.380.1623607659639;
        Sun, 13 Jun 2021 11:07:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1c97:: with SMTP id cy23ls4034831edb.0.gmail; Sun,
 13 Jun 2021 11:07:38 -0700 (PDT)
X-Received: by 2002:aa7:d84e:: with SMTP id f14mr13475260eds.12.1623607658709;
        Sun, 13 Jun 2021 11:07:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623607658; cv=none;
        d=google.com; s=arc-20160816;
        b=nhOrNkz6M0XliMzoglDbuHX5GcCQ8sZWJtsQcMevWEjJVbdqlMcMZMDwOYB7BuvTgP
         sf4MNMy0mvGwal8hPMda9VMNARla0iGmIW+l1iyS8hCyLmCeVzGdCJ4mzC87VuyWMGJK
         IEbY/hRq8bEQ6htBtRocm24jwJPvlZk2iFv8+S4uA1TZFwgp+jjs6jd447vUTCps0AKh
         ZerR1Mz90x1DxyReTw7RwKpcA7Ud5gApZYij/BDo6EIAOHY4pCVCE0lxLWMr7OprnJBB
         b3wXFveTC18UgCpHMMprQJd9DfX3mNYJgw3vbMp7XBhPrtpEqDf8X3VwPegGWiddT1lA
         k3wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=fDsNnaB5ppj4g5MtFY0m5Kbx3wK4L7HQC7af0yYbm7Q=;
        b=rvg+MJiJ2vGXX6nxxVx0zLYzo2SNumO9K43+dv1MDdhgtdskD0RbNqrtvB0KL0Hy8B
         uUejROWD+m9SG7w+RcFuoQl+zpjpIAK//4s4crpi9+7auSOmyPzdfrBAPL21JG6KOfcv
         Y7fJ/G1nZk3zo9T+t/KDVp0IaMVsUlbt+hagROmEgCoLflaFaKmibwtrj1SepFPtrZK/
         Grx+Ws97KgsGhNXzF7PKqq5YRIzA5gqDv1bxOsrEGrQqD4u1HN+t34a+9gPV3IogNu9G
         A3oUc8dLCQat3Iq1N5shLx4XlZbkqXQfXpHBLYkHEZm8zyfjA/TarsNpYQ6ng8uqdvqr
         yBBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TM9DZ6gS;
       spf=pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=morbo@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id x10si673770ejy.0.2021.06.13.11.07.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Jun 2021 11:07:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id he7so12528846ejc.13
        for <clang-built-linux@googlegroups.com>; Sun, 13 Jun 2021 11:07:38 -0700 (PDT)
X-Received: by 2002:a17:907:2d88:: with SMTP id gt8mr2394107ejc.449.1623607658177;
 Sun, 13 Jun 2021 11:07:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210111081821.3041587-1-morbo@google.com> <20210407211704.367039-1-morbo@google.com>
 <YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net> <CAGG=3QXjD1DQjACu=CQQSP=whue-14Pw8FcNcXrJZfLC_E+y9w@mail.gmail.com>
 <YMT5xZsZMX0PpDKQ@hirez.programming.kicks-ass.net> <CAGG=3QVHkkJ236mCJ8Jt_6JtgYtWHV9b4aVXnoj6ypc7GOnc0A@mail.gmail.com>
 <20210612202505.GG68208@worktop.programming.kicks-ass.net>
 <CAGG=3QUZ9tXGNLhbOr+AFDTJABDujZuaG1mYaLKdTcJZguEDWw@mail.gmail.com> <CAGG=3QUFRM85bpyjdokO93=Nem_w7-784-_qihP1P_CJMOsdqg@mail.gmail.com>
In-Reply-To: <CAGG=3QUFRM85bpyjdokO93=Nem_w7-784-_qihP1P_CJMOsdqg@mail.gmail.com>
From: "'Bill Wendling' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 13 Jun 2021 11:07:26 -0700
Message-ID: <CAGG=3QUrhVi37sYtybTUAZMpCDjB_pw+1OdkbZKvL6+UQrbMbQ@mail.gmail.com>
Subject: Re: [PATCH v9] pgo: add clang's Profile Guided Optimization infrastructure
To: Peter Zijlstra <peterz@infradead.org>
Cc: Kees Cook <keescook@google.com>, Jonathan Corbet <corbet@lwn.net>, 
	Masahiro Yamada <masahiroy@kernel.org>, Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Fangrui Song <maskray@google.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: morbo@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TM9DZ6gS;       spf=pass
 (google.com: domain of morbo@google.com designates 2a00:1450:4864:20::630 as
 permitted sender) smtp.mailfrom=morbo@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Bill Wendling <morbo@google.com>
Reply-To: Bill Wendling <morbo@google.com>
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

On Sat, Jun 12, 2021 at 3:47 PM Bill Wendling <morbo@google.com> wrote:
>
> On Sat, Jun 12, 2021 at 1:56 PM Bill Wendling <morbo@google.com> wrote:
> > On Sat, Jun 12, 2021 at 1:25 PM Peter Zijlstra <peterz@infradead.org> wrote:
> > > On Sat, Jun 12, 2021 at 12:10:03PM -0700, Bill Wendling wrote:
> > > Yes it is, but is that sufficient in this case? It very much isn't for
> > > KASAN, UBSAN, and a whole host of other instrumentation crud. They all
> > > needed their own 'bugger-off' attributes.
> > >
> > Now, for the "nointr" issue. I'll see if we need an additional change for that.
> >
> The GCOV implementation disables profiling in those directories where
> instrumentation would fail. We do the same. Both clang and gcc seem to
> treat the no_instrument_function attribute similarly.
>
An example:

$ cat n.c
int g(int);

int __attribute__((__no_instrument_function__))
__attribute__((no_instrument_function))
no_instr(int a) {
  int sum = 0;
  for (int i = 0; i < a; i++)
    sum += g(i);
  return sum;
}

int instr(int a) {
  int sum = 0;
  for (int i = 0; i < a; i++)
    sum += g(i);
  return sum;
}

$ gcc -S -o - n.c -fprofile-arcs -ftest-coverage -O2
        .globl  no_instr
        .type   no_instr, @function
no_instr:
.LFB0:
 ...
        addq    $1, __gcov0.no_instr(%rip)
        pushq   %rbp
 ...
.L3:
 ...
        addq    $1, 8+__gcov0.no_instr(%rip)
 ...
        addq    $1, 16+__gcov0.no_instr(%rip)
 ...
        addq    $1, 16+__gcov0.no_instr(%rip)
 ...
        ret
        .globl  instr
        .type   instr, @function
instr:
.LFB1:
 ...
        addq    $1, __gcov0.instr(%rip)
 ...
        addq    $1, 8+__gcov0.instr(%rip)
 ...
        addq    $1, 16+__gcov0.instr(%rip)
 ...
        addq    $1, 16+__gcov0.instr(%rip)
 ...
        ret

$ clang -S -o - n.c -fprofile-generate -O2
        .globl  no_instr                        # -- Begin function no_instr
        .p2align        4, 0x90
        .type   no_instr,@function
no_instr:                               # @no_instr
 ...
        addq    $1, .L__profc_no_instr+8(%rip)
 ...
        movq    .L__profc_no_instr(%rip), %rax
 ...
        movq    %rax, .L__profc_no_instr(%rip)
 ...
        retq
        .globl  instr                           # -- Begin function instr
        .p2align        4, 0x90
        .type   instr,@function
instr:                                  # @instr
 ...
        addq    $1, .L__profc_instr+8(%rip)
 ...
        movq    .L__profc_instr(%rip), %rax
 ...
        movq    %rax, .L__profc_instr(%rip)
 ...
        retq
.Lfunc_end1:

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGG%3D3QUrhVi37sYtybTUAZMpCDjB_pw%2B1OdkbZKvL6%2BUQrbMbQ%40mail.gmail.com.
