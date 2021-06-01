Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTUM3KCQMGQELKIA35Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E67397A7B
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 21:11:11 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id s19-20020a0565123153b02902dcd045ec03sf2193243lfi.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 12:11:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622574671; cv=pass;
        d=google.com; s=arc-20160816;
        b=erlm7DYyoCuZl7A+FNBtX175YtXoxSKBzsdNodWaRMOecC5+Q8VeWn1NpP8BBuPF3B
         pJe59nKM+bcuHvl2/ziRXFXzSzR69xPKwOq4M2QO+VLSPdQAYDqog4B0RnBbOdCt5h0f
         KUzkEoAdeX41PpjT1uJWNzzaAVQxshfpyCyJuKJ9pIo6lTse6obvxi8K0Mr378oBO0PO
         4DIa2N9I1RQeIJ5LAq7byTMGP4frskKMbe3r/QzqtlDDyF9tFkI6YvIMuEQw4s8pPm1r
         91MjeTY332pdd9tIG8G3r1P30fPS8q68E3UQmlIlN6C4AuNDCbKQm96AstIguEN3Ygny
         RFSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aPIcibxGwvQGxjG5/RKDo0xSBR+zIPmfZoZpsDiue80=;
        b=cIsYQi7UR5ojwgex4+CNX1XO+oG0L5N19D7oWtFewL+Vr8XIn/+SOxoFaMhJYxNdWT
         K5N6pz+pWQKwRaXEEY+yPgwTXXwpUOS41a6Z+BPkBD3LODXlDTqOA/jVNJXNYtMevnnT
         vNTf/zJr1yskXh/uwOR+GUfEDDfoNmPMRJ5V1ol/VDV6hWBQDmTAqcezJmTVQs5mmhco
         F5Sf4Jp8gr6LgrZBQbRBY2zjsaOPoBBJBTBGGDBmedB18nayuie+CsWaB3FeSX3zMwG0
         OHNUKCGMYUEKUvaxJgeUO4+8+/ixhJwQFzAxcdGaZWpahoxqiS7Lg8Pf+/Hg9cimHSbr
         a0rQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MnHobQtP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPIcibxGwvQGxjG5/RKDo0xSBR+zIPmfZoZpsDiue80=;
        b=s7KRUGW9wNvAT8T8gKrXwYNRcqMs/jO9QCwCB08peML5AllsidfkHWsYBN19OlkYMx
         ziGgfzVRw2e5thmcwTye04bmJmb86nWKtyp+t3I5muXlpgykSCj6YdciQvVi7iETBSQ4
         HkGxouNIja6muo/z7KS4Udb9pQwp00SuXdJAqQiUjoOPJJi60OqlmtkQJh37E/7Yop6d
         ZEEJkxV5m/hs01UqVjwPjX/HhoS2Z8h5GA2mEhovb6oD1lHKSEFF5+KBW9fCRipv50v6
         /5pn4dlFWK+QyFtzTrlfOwzSNr6ZhNmmsR5tYtVB7roUlPXaCO8VIAEwOHgxeZxF4Ql6
         FjaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aPIcibxGwvQGxjG5/RKDo0xSBR+zIPmfZoZpsDiue80=;
        b=D3JULuEbrFRpMDQw/d6dJAZZ68YlsDH5JLTvJqm5dkoUQSp7wffP8QTDujVWHoqmWz
         RghrdkgwZ+P9C8WpQxfFFKJorFQYrS8iNKyrdjvEBD0MedE6gZ6/8e3FdSbs6oVn1qRU
         ALhJSAwgW5oyN7r/a/tB1usaimf753ACN33Df1JsWoKzsoJM7F9xG7DVsRkCF1Jh9sR9
         /UmVkoLGPvQ8xhLWjR1BmnsxVyC6bSnAmJURII+TtO7jo2YIGcF3B30t8PA0EcSo4qMa
         tY7T322GeYSB4t3oWjFE/CmBOR9mn0YJRGjIabFtlsN2LxlbpDjI4cztGedggvE1X4fQ
         JMag==
X-Gm-Message-State: AOAM531oNpNowIFNIfdf51olxwg7CEsxV5pf1Or63zVwI30Kcn+KOHCC
	cko8w+1GrR4B5dtOl+Hzotw=
X-Google-Smtp-Source: ABdhPJwcIShZVVhNn5DE3Mk9G3ztAiFb9r1QCn7lWQY6UH7HpH9HDueidIyZuaLeCQK7rW97XbM7rQ==
X-Received: by 2002:ac2:51a9:: with SMTP id f9mr1839484lfk.223.1622574670905;
        Tue, 01 Jun 2021 12:11:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls1028598lfa.0.gmail; Tue,
 01 Jun 2021 12:11:09 -0700 (PDT)
X-Received: by 2002:ac2:5cc4:: with SMTP id f4mr19280567lfq.83.1622574669783;
        Tue, 01 Jun 2021 12:11:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622574669; cv=none;
        d=google.com; s=arc-20160816;
        b=fEOKTy7U4jAxd1ZHh70iSx2vQQNr6dGRxjFkDamExn23xgfJsiHPaUSv7xRvItVjjn
         naM6SRWTdAxSmwj/H1RtoRDFUOmW0b22Jbei5HYqUJENMwLpPkWstQPe+HJVzIFDnHhC
         I3eECyIs+hJTDPl6vcqTgPP0nr97SeBukQX9Vh2mqPRmmCUWlKn4GBPgd78uOd6buIdO
         JAH6fdi0NU8wBBNTceHLWr+rfIOF4Y1GyHrBsmrlJ4rNFIPJB1UiE/zi0YJIM7PWjwBf
         jK1nm3rmayMNg2aeoTfwhUuGqKEuy0r8ol7gvTSPD1CIJk31M7/dWlC+JVRrzEqvV6n7
         LTzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=979c0N6KRdFcxdfT1t+KhMG+RB0bSu5RYjInXFN8mFg=;
        b=Ox7RHIVOOJA/5TO+lGrbv3FylyI/q1URP6VA+qHG/65FLWqMMgq36Z6xtgT20JEB30
         nqWnd0fFfYQew654jYkuHH7k9z9ztzCAl+rPpTocEXQl2cQgo6oT9L9XCLLlLnCghRCe
         SLrekQ4zrJfUh+JZ3wLQDpeBS9Al1VJfvhJ20gUnbmuG3AGTMxmLa90WUOl0lu4DnPtS
         r9a6Zl3fFd1hDJKoJExbSKEp6kDbQClDdSOCKaJ7w4GGplYQpfHk8rpaAgg3fpdD8epi
         fWstvj4TojkdvfXSzfNUsj9oSZxdiZ6l773TkmjCJNQOOVljPJcQgGR0u8yXsnGvrPyi
         eYng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MnHobQtP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com. [2a00:1450:4864:20::22a])
        by gmr-mx.google.com with ESMTPS id o11si777433lfk.12.2021.06.01.12.11.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jun 2021 12:11:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a as permitted sender) client-ip=2a00:1450:4864:20::22a;
Received: by mail-lj1-x22a.google.com with SMTP id a4so13991341ljq.9
        for <clang-built-linux@googlegroups.com>; Tue, 01 Jun 2021 12:11:09 -0700 (PDT)
X-Received: by 2002:a2e:8056:: with SMTP id p22mr8492884ljg.341.1622574669321;
 Tue, 01 Jun 2021 12:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com> <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com>
In-Reply-To: <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 1 Jun 2021 12:10:57 -0700
Message-ID: <CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm=Qdg7-v26Q@mail.gmail.com>
Subject: Re: #KCIDB engagement report
To: Nikolai Kondrashov <spbnick@gmail.com>
Cc: kernelci@groups.io, Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>, 
	"automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Vishal Bhoj <vishal.bhoj@linaro.org>, 
	Antonio Terceiro <antonio.terceiro@linaro.org>, Remi Duraffort <remi.duraffort@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MnHobQtP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22a
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

On Tue, May 25, 2021 at 3:32 AM Nikolai Kondrashov <spbnick@gmail.com> wrote:
>
> Hi Nick,
>
> On 5/24/21 8:38 PM, Nick Desaulniers via groups.io wrote:
>  > Hi Nikolai,
>  > It's nice to see our results getting collected; it looks for a given
>  > tree I can even see the build results of different compilers.
>  >
>  > For example, here's a recent run of mainline:
>  >
> https://kcidb.kernelci.org/d/revision/revision?orgId=1&var-dataset=kernelci04&var-id=c4681547bcce777daf576925a966ffa824edd09d
>  >
>  > One thing we need to be able to quickly triage when we see a build
>  > failure with one toolchain is "is this toolchain specific or not?"  I
>  > figure KCIDB has the data; is there a way to surface the results of
>  > such a query quickly?  If not, that would really help us.
>
> We don't have a ready-made UI for this, but I think I can add a Grafana
> panel/dashboard for that rather quickly. What would be most helpful?

I think so.

For a given tuple of (tree, branch, configuration), it would be neat
to be able to link to a deterministic URL to quickly check who else
may have built this recently, and what was the result.

> How about having a list of "Compilers" below the "Builds" on the page
> you link? Each line in that list could correspond to a unique value of
> the "Compiler" field, and give an aggregated summary of various
> parameters, including build/test results. We can also have a summary per
> architecture, or per "Configuration".
>
> Or maybe something else would help you better?

Hard to imagine, but maybe we can iterate on something?

>
> Nick
>
> On 5/24/21 8:38 PM, Nick Desaulniers via groups.io wrote:
> > On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
> > <Nikolai.Kondrashov@redhat.com> wrote:
> >>
> >> Hi everyone,
> >>
> >> Below is the monthly report on KCIDB* engagement. It lists various CI systems
> >> and their status of engagement with KCIDB, and once we get to that, will list
> >> developer engagement.
> >>
> >> Lines with updates are marked with "!".
> >>
> >> Not much news this time, as I had to tend to CKI matters, and had a couple
> >> weeks of vacation. I still have to tie some loose CKI ends before I return to
> >> working on a new KCIDB release and reaching developers with e-mail
> >> notifications.
> >>
> >> However, I did try to contact Huawei's Compass CI with an invitation for
> >> cooperation, but got no response so far.
> >>
> >>       KernelCI native
> >>           Sending (a lot of) production build and test results.
> >>           https://staging.kernelci.org:3000/?var-origin=kernelci
> >>
> >>       Red Hat CKI
> >>           Sending production results.
> >>           https://staging.kernelci.org:3000/?var-origin=redhat
> >>
> >>       Google Syzbot
> >>           Sending a subset of production results (failures only).
> >>           https://staging.kernelci.org:3000/?var-origin=syzbot
> >>
> >>       ARM
> >>           Sending production results.
> >>           Full commit hashes are currently not available, are spoofed, and don't
> >>           match the ones reported by others. To be fixed soon.
> >>           https://staging.kernelci.org:3000/?var-origin=arm
> >>
> >>       Sony Fuego
> >>           Internal design in progress.
> >>
> >>       Gentoo GKernelCI
> >>           Sending production results.
> >>           Only builds (a few architectures), no configs, no logs, and no tests
> >>           for now, but working on growing contributions.
> >>           https://staging.kernelci.org:3000/?var-origin=gkernelci
> >>
> >>       Intel 0day
> >>           Initial conversation concluded, general interest expressed,
> >>           no contact since.
> >>
> >>       Linaro
> >>           Sending (a lot of) Tuxsuite build results to "production" KCIDB.
> >>           https://staging.kernelci.org:3000/?var-origin=tuxsuite
> >
> > Hi Nikolai,
> > It's nice to see our results getting collected; it looks for a given
> > tree I can even see the build results of different compilers.
> >
> > For example, here's a recent run of mainline:
> > https://kcidb.kernelci.org/d/revision/revision?orgId=1&var-dataset=kernelci04&var-id=c4681547bcce777daf576925a966ffa824edd09d
> >
> > One thing we need to be able to quickly triage when we see a build
> > failure with one toolchain is "is this toolchain specific or not?"  I
> > figure KCIDB has the data; is there a way to surface the results of
> > such a query quickly?  If not, that would really help us.
> >
> >>
> >>       TuxML
> >>           Initial contact in response to a report.
> >>           There's a plan to approach us and start work in the coming months.
> >>
> >>       Yocto Project
> >>           Initial contact in response to a report.
> >>           Would like to start sending build and test results, particularly for
> >>           older kernels. Would like to separate upstream commits from project
> >>           patches first: https://bugzilla.yoctoproject.org/show_bug.cgi?id=14196
> >>
> >> !   Huawei Compass CI
> >> !       Sent a message to Fengguang Wu, who was presenting it at LVC 2021.
> >> !       No response so far.
> >>
> >> Please respond with corrections or suggestions of other CI systems to contact.
> >>
> >> Nick
> >>
> >> *KCIDB is an effort to unify Linux Kernel CI reporting, maintained by Linux
> >>    Foundation's KernelCI project:
> >>    https://foundation.kernelci.org/blog/2020/08/21/introducing-common-reporting/
> >>
> >>
> >>
> >>
> >>
> >>
> >
> >
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm%3DQdg7-v26Q%40mail.gmail.com.
