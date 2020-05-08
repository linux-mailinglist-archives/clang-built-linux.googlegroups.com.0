Return-Path: <clang-built-linux+bncBDYJPJO25UGBBSGP232QKGQEORY2RJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B491CB783
	for <lists+clang-built-linux@lfdr.de>; Fri,  8 May 2020 20:41:13 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id y189sf3156630ybc.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 11:41:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588963273; cv=pass;
        d=google.com; s=arc-20160816;
        b=v++CX/2meBJcFeFyHh6L2fd+3qjz85B28jYUftMjMrpbW6aGKhxKrhvFanUqETR8N0
         esc/Bmf+G2oa/GXgTDICJM6wVcOE73tBxwT1QbjcwH+dRvLYfKkwqHDfAXoeNEf6rgsw
         5Y5l4mewRwwaFQ1YC1F6bimlJ4W5eK0QjpDj8Cnjh8+IcBeolQWwF5X2HX50dVNQi4Xl
         eF8USkfm8+XegM/tKCLE/Oit+TN26krveH4UaX0WvrywwH5zRl+HJIaHvIJPSsmOz3gr
         HnWIIment5T7m/HY5grFclf/J2XRbTfH8WJBz4cAXPL/HtYx27jMTWrmGT3JlUyXKtkZ
         ePSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=pXorb24VF95sZ2B69c17ocl/tRt1YVQaytl0st8uaAY=;
        b=PiMKH/9mNIOnG8ZH07ZCyLoenpIiD/aUTEK5giQW5jgvRZf1kcH7cK9/YCOonfH4sg
         Hep75rKhihP3hxAFLvIvnQ1LC/m19loSepAnAzH8yBBHbssnLShhMOoT9gmJr++Z4RQa
         Nuh726AJLRMvvTAFGYOd4I+PcRXRMcAFcLYtPZ3AMk0VPDBIaigSalf53aQq5Yd/KrMI
         bLffSB7bPLX7pUSuQ+nlKsi+m6cBQPCfrXVq60c88igg59Nbv8yssEs1D75EMqOdnzqS
         Ohjx46X5iDfJ3Kitko4Hl37AAu+5WhhQxh0wJjACK1ACoBPvlx6yF7VtOiu9OySGu3/8
         X65w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sci7QJiA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pXorb24VF95sZ2B69c17ocl/tRt1YVQaytl0st8uaAY=;
        b=qKKWo+MXHZwsESeKlwisGXDDlIu/I9tB7Hk3uG8ssyf9gwaNzkXZP19SRJ4qq7KHxp
         j60WxvhPFfKwvE43deVz4RbtloRgu2gQSqlM1G9kSbhrKmc0L1T+MhSMvwDcvHMRWoUx
         nJtZB5eRGmK/x1QorKc0GdiuNo4toZaOaYG3A5QMl+u/i7syrjsOqE2NYTPYVSOLPilv
         j4UomVKesbVWVH+El8SfaqL1Wj3e3KXhbU67NamTcIejcwFOjLqDzKvTgtOPWypCyx/m
         BW5EZnVrkpyPj+OTitIT5a7bOwHIQ9AeXPOQ1XlEFRXPI56WD0ZKghhmJBHzKBLoyQt/
         6Jyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pXorb24VF95sZ2B69c17ocl/tRt1YVQaytl0st8uaAY=;
        b=eHUv0z79LMHYkCOrGyVM59VGgsqo7reyYQ64vj7rJvhri/XUeDSlFoDXYLXgmp1fX+
         MxQQntgBCVQ9287yR1s+9LIDFEhmpQcJy+5Mr/+jzri179xEOrq10cXU9jvbOQBuNGl/
         reSnZ3JRTIapICIO0vAcGUMoFUTqXZqm7F5aWBSubrUhDtzMwplPBqdsqtpRT492tS7N
         gfOhjHMrQ2WCktfFq4S6HolfwScocqSz9Krk2NGlheGdcvkWreKspq6t2ci5UQYI2un2
         ob7l0FbrAzsZXa0AK3TW2w5DORWvuChAI3EpjDPWGgUH4KQFZM9NDYWO9oqZFaohya5H
         N1Hg==
X-Gm-Message-State: AGi0Pubx1LE7TKruUifp9xRgWbB1wUDHuApwE0j5Y1tlDKgG+WRCtz4S
	zNcE5gQPrqEgBR07R3biZN4=
X-Google-Smtp-Source: APiQypJ7l8oS/Am9X7vp3G2PqOVWurDMRI05JKtNZcdZPi80XSKQS9U43SCUbJcYZIEg804FEpbasw==
X-Received: by 2002:a25:c097:: with SMTP id c145mr6804954ybf.13.1588963272783;
        Fri, 08 May 2020 11:41:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2057:: with SMTP id g84ls988172ybg.7.gmail; Fri, 08 May
 2020 11:41:12 -0700 (PDT)
X-Received: by 2002:a25:2583:: with SMTP id l125mr7644143ybl.446.1588963272457;
        Fri, 08 May 2020 11:41:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588963272; cv=none;
        d=google.com; s=arc-20160816;
        b=qB5X1/8fPdkMzvv5MO9WnRZsyZgN5NORU5jCFsaWt6n0YOLnM8VPSnYSKQoLyoUFtL
         L+H68r4rCppaM8vqZ0fWsjTdCgT5a+tmpHaurf1rSAkbSy2IeYijX513tZ9ghuRCBpI1
         Ok+0bCm1tpRWG2oVS4PJjOoMuxVId7dKCUufnT6IgLHbcwR8qsBNrT4XgD+3v8fXZGCd
         zvuq6gJDbbLqdu5f099cCyxw9FoIQ1g10BGCr+AEVMsN07qkLbgXYcSDfyBSyJqQSeeg
         MmsOb52ty34nrzUMhixtauLjMuAXVGnWoNgMqw2EmjtPMEV3G0kg3flDcWAsq2QdEZ3b
         mI7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=1zjKv33v+dgbKfuPy5/mQgaAADcheRI6MDv951MUBiU=;
        b=OS2nn5YudGSA/doFoaOJdI3XPWzjVEKs1z0iFTOYLvvoRChFz/X+3PLD+GvnMCcTVC
         6bmLWBf3EahcmzHfRqEXwPH4MqrQaKVh2/BWOalb41IV2wUcEIfd8nc8fL0ptSZez1rN
         5oGHAbsOnGTNoC9tn4ouBV0RU194MHbHs8BfTdcJIH6ez23JHleIEz8vKmZV0yh0Ml2i
         d8OohOPQMq2L25knSMbeBzdqar76k34lKz91+poiKu+Uf0DH3OlEv58AV5c86HPdmM2x
         P/DIgtv144MJZhcLNSN0o1fXoqF6ERm46WQ8qSH6cj24f14kKTkG9+SkMcFgiTqcJUm+
         uhaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sci7QJiA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id r206si207494ybc.4.2020.05.08.11.41.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 11:41:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Received: by mail-pf1-x429.google.com with SMTP id r14so1399851pfg.2
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 11:41:12 -0700 (PDT)
X-Received: by 2002:a63:6546:: with SMTP id z67mr3192888pgb.10.1588963270968;
 Fri, 08 May 2020 11:41:10 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 8 May 2020 11:40:59 -0700
Message-ID: <CAKwvOdmG04V9VPtfGKhWYQ6t3YP5OHXUGJsK=+0b4ZZPVrSuaw@mail.gmail.com>
Subject: [INPUT NEEDED] Linux Plumbers Conf 2020
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=sci7QJiA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::429
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

Hello folks,
Linux Plumbers conference is scheduled to occur Aug 25-27 this year.
It's not clear yet if it will be virtual or held in person in Halifax,
Nova Scotia, Canada.  I recognize that it's likely easier to "attend"
or speak if the conference is virtual, but it would be good to meet
again in person if possible and safe to do so.

https://www.linuxplumbersconf.org/

Based on feedback from our Zurich meetup, we planned to hold a
MicroConference specific to ClangBuiltLinux at Linux Plumbers Conf
this year.  While we probably have a more general session for other
kernel developers to attend, I would like our MC to focus on issues
that we need to or should follow up on since our meetup.

The conference organizers would like more information about the
planned MC; this is not quite a formal "Call For Papers," but more of
a list of possible topics, which shows we have enough content for our
own MC.

I'll post the notes I took for followups from our meetup as a
refresher, and try to clean them up for the conference organizers.
What I need you all to help with is to propose other ideas for
possible topics.  Again, this is not a formal CFP, but maybe more
brainstorming.

The list from the meetup:

CBL 2020 brainstorming sessions


Changes to project organization/process

Fewer private bugs

Encourage status updates (LKML, mailing lists), time based cadence

Kernel state of the union for kernel releases

Per architecture status updates

Improve landing page (current status, call to action)

Information for new contributors how to start contributing

Clang state of the union cfe-dev, llvm-dev

Documentation/

Llvm buildbot for LTS kernels

KernelCI integration

Improving CI

Putting names in MAINTAINERS

Telegram chat + IRC bridge (matrix freenode bridge might be a better idea)

Asking vendors to upstream changes

Getting changes to vendors

Bug mirroring

Coordinate on GNU C extensions

Kernel GCC developer outreach & collaboration

LLD evangelism

llvm Binutiils evangelism

Speed up clang

Cross llvm/binutils validation

lld/integrated-as per arch state of the union

Kbuild check for clang-9

Rewriting warnings W=123

Static-analyzer/rcu-checker(sparse)

clang-tidy/checkpatch

Clang-format

Removing UB? (new language, features) new -std=

Kernel code model

Size comparisons (not just perf comparisons)

-fsyntax-only builds

Evangelize cross compilation

Integrated assembler work

Open Embedded outreach

Documenting issue label organization

Removing any notion of experimental status

Status on kernel.org

Cross compiling llvm itself

Ideas for radical participation

Demonstrate llvm benefits

Phoronix benchmarks

Distribution outreach to package clang-9

Our own distribution of LLVM

Onboarding documentation

Git submodule that has everything

Emailing mailing lists about status

plumbers/llvm developers meeting/LCA/FOSDEM/SCaLE/Linaro Connect/ELC[E]

Sharing CFP due dates

Enabling volunteers to help with talks (corporate sponsorship)

More corporate sponsors

Offering training (or updating 3rd party trainings)

Llvm.org tarballs/flatpacks/docker images/packaging

Dedicated mentorship

Find a reliable way to export the github issue tracker contents for
regular backups

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmG04V9VPtfGKhWYQ6t3YP5OHXUGJsK%3D%2B0b4ZZPVrSuaw%40mail.gmail.com.
