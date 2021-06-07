Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7HO7GCQMGQEVAHHBAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F28339E7B6
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 21:46:04 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id u26-20020a05640207dab02903935beb5c71sf4007871edy.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 12:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623095164; cv=pass;
        d=google.com; s=arc-20160816;
        b=CME/uK9XWhPtSzYUoLLBkiXGxnqSES6+QUNuDEZRuCMPKB1YqR4vjAk8Wrd13FTK37
         q5GJDeE01Qn1ZvIHSGypJ+dWqVMemfdOqh6NGkXv8lYTmYb6z+STa1wl5gdml/6DRAE8
         1yvy1hnkbVPPaQyEcq85Nq7A/L9t45pQpVJwaQ+zL1iHGOmsCZ6IuWmLRnQdhHG85ccb
         eoZednK7RFF2Iu7wHSZJOUBNPa0fRGnBj/79/WRxdkHGKW3JEd7xPC9LdLuEC7qUTp9g
         pjeroLRwihitw4MZO26cidXkvKCumWYDYYAzJhHkn4xdg1MJNSXT59WhWtTbwqTvC43S
         g2UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PNWTxUj+zRR0tFvH1qQm7p31QTDtyed/T41yi3+v9sU=;
        b=fdbr8bsugwFs9DHH+a4P2dQ5LlQ3Cl1a6iYnfsR/BfryOHC6pYVLzdjKtnDZWJLOv2
         WKVWyuzg2P8LZeROIInm/GEz8+gRBnsl5xHAl+MuXxBWMVK7llrENQtk8h2TPeVT1HFw
         prpnsLZNpcIh8ig+4qYE5PVqY8I5Ol5SMX0FN8X5C7EeQKR9f8III/8a3PbjX+VUpopN
         0AdeaAyAqRxlrxExJgcQXde8SNtOjgscX7VmI2GeINr9y35fL2Pvatq6tmpaI6BowAwN
         CXZv9UhYstjoSKS1K0ZNYb29SBSuzY5ttCwGrKHBADvrrjg9Ss1r5lZPO2ppThIdJ/ac
         KitQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dkyf66xk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNWTxUj+zRR0tFvH1qQm7p31QTDtyed/T41yi3+v9sU=;
        b=KWEFIySWM25g84Padw3zihrfRL8gA8Vc7Rc2eQma+WuAjCBBSuh1ZUSiJz7NdwjUKe
         JQaAsObxRc791U8s71fcZf/i4OQWZH6vEjgtkgac7In8F/Ge/z+qbCSXmTvGN+10CMwu
         q5f4cscNMxVmeNn0Y2lCEtyhcWrpRD66Y16ZYzaZPDjDxrFXTdsVV/lmNtJZAWAudQSq
         gmFgzxQ+6MO6JC7UKTG/f8AH/L9RgNYQQ3h0La0uvvhltDkN4+tPL+sp6J8JSy8Gy18e
         sxdLRvtb11z8idNS6j7gUDT1HUqe9T5B6klojOAfUpcC4Z1XXrw5PWlQhBzGYCpc+d4T
         +40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PNWTxUj+zRR0tFvH1qQm7p31QTDtyed/T41yi3+v9sU=;
        b=Pu75O5ygptP9Ol3t17zppol4h09zEamLl8HqoGZpbiExzd7Y4wuTwF6AVgTqhPJkJu
         3EKzGOFM10IPdBvGg9nYdl1IHNMaoSyokSH1tmSW25MCaJaRASaUMq1KJpUaJDNlYZKx
         yhII9Wc3Ob2/iYBjETQObKpA9VPObT0LTvsl9MEp6ikdFl5F+gnAukp78OqDYpDrVZvG
         NVndRIBcbHuNvHi+oNs2RuYKLGIZHP3G9Gh0KVFnmgwOolk60qGgL77H6MHO3TEGply0
         X0pptcjwuQMWBTSW2/sSZ8b8KgzjdM6qYI40AtLt8IU3jV+L9b9jrhhrGQCUoovhDvZc
         IPYg==
X-Gm-Message-State: AOAM530aH6WjFTdigLZ9xNrSKOeyxC+VzhcigkMyMcSbeUy6zFnlHJCI
	iHuWIqlFTpI8vcu9OwsdHEk=
X-Google-Smtp-Source: ABdhPJwkqZg+imGn4PB96EchAasS4tsaJFBWGWqBXqNWu3A2R58r7lpEnrScVtYTqdOiWPz/q4vGGA==
X-Received: by 2002:a17:906:4e06:: with SMTP id z6mr20085915eju.34.1623095164256;
        Mon, 07 Jun 2021 12:46:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:d2a:: with SMTP id gn42ls6679093ejc.4.gmail; Mon, 07
 Jun 2021 12:46:03 -0700 (PDT)
X-Received: by 2002:a17:906:3109:: with SMTP id 9mr19016514ejx.339.1623095163401;
        Mon, 07 Jun 2021 12:46:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623095163; cv=none;
        d=google.com; s=arc-20160816;
        b=AscnosX6gnYYdcHiJWgPasDtpaeGVEMQfTOH5eeHspqM5oTjsbYTLxeivHHCEMi3wT
         X8CAcbdkNdSketlpse7SYtxIYbTqSmtgjldZLgj6qeMal55MXyrNaRBam2zl73qgc0AF
         YvmYRrGG4TXejyO22bbmT/WS4ro4nFSzLOPNU/gJLDs9b0ffx1a3Vd6cehQg9THq+u1Q
         mj5r10TEAGVLv30sZihWMQ8jwPCrz+vv5o0AuPNXRvPaoLZMgJDHvKo6gO8k+GAQrFv1
         zPrWDq28GfSNoIqFy41fW2WzRTvSf+e8AthUGsMriKRIcAgcjQQkq5sfRyMAKAXIx2Ox
         XV1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ezq8z3r3WRbo3OYrOwV4F9s3JeWBBg4dUYQcvP6ZuEE=;
        b=ehXeA1MVkxHyOqh027oUSL3SydIENb0OpItUj7bvrzGbilUEFkUcvuN1hU0CgP4ohi
         N6raDxXhkio70jWwdDsj3mI6mMHM7cvvKYkdUGL3JRNl9Vj0iXz7klbVAOINvEKhBmcL
         UCUJACvB2rhE8w6eOL6VIbgt5xIJpFqpSSIxC+gLQ0m9C6HH+4bC9fwQnirb07vGEFFE
         B9RbXZ8sdPxlk1ns8FJf1S2QXCNRVcOg0FiXmmT/X4nxphov4b7fFL7SEjHzFJF0IZuX
         O7kUcPnFgAa/TlVBQo1sK7+tmQA4F45lYr3E0nnaLuMcG5tJxGza/A6KqS3MXVjKBRwQ
         B3RA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dkyf66xk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com. [2a00:1450:4864:20::236])
        by gmr-mx.google.com with ESMTPS id cz2si297926edb.5.2021.06.07.12.46.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jun 2021 12:46:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236 as permitted sender) client-ip=2a00:1450:4864:20::236;
Received: by mail-lj1-x236.google.com with SMTP id e2so23834289ljk.4
        for <clang-built-linux@googlegroups.com>; Mon, 07 Jun 2021 12:46:03 -0700 (PDT)
X-Received: by 2002:a2e:9990:: with SMTP id w16mr9461774lji.341.1623095162342;
 Mon, 07 Jun 2021 12:46:02 -0700 (PDT)
MIME-Version: 1.0
References: <8aae1be7-d9bc-8a55-0bbb-0d94e6719baf@redhat.com> <CAKwvOd=HtFtB=qtbRgWbTTBoBfe7eN7UBEWF6XEMWn7q8fYXGQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=HtFtB=qtbRgWbTTBoBfe7eN7UBEWF6XEMWn7q8fYXGQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Jun 2021 12:45:51 -0700
Message-ID: <CAKwvOdmUv8Q+6L7W1x2SzA5YGAhN6AEDKwNzbssFMpSPnrh-oA@mail.gmail.com>
Subject: Re: Recommendation for LTO type (thin or full) to use for Fedora
To: Tom Stellard <tstellar@redhat.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, 
	android-llvm-dev <android-llvm-dev@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dkyf66xk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::236
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

On Mon, Jun 7, 2021 at 12:43 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Mon, Jun 7, 2021 at 12:36 PM Tom Stellard <tstellar@redhat.com> wrote:
> >
> > Hi,
> >
> > I'm working on adding an option to enable LTO in the Fedora kernel builds.  I'm

Oh, kernel builds (not builds of LLVM), sorry, I just noticed that
after I sent my reply. Android Common Kernel is using full LTO, but
also pares down their configs a bit so the compile time of full LTO
isn't too bad.  I think thinLTO is preferable and the full LTO doesn't
buy you enough for the cost; but if you're doing raw performance
comparisons, full LTO might be better.  If you're just doing daily
builds for regression testing, thinLTO is probably sufficient. Local
developers prefer thinLTO or disabling LTO entirely while doing local
builds.

> > not sure if I should use thin or full LTO, does anyone have any recommendations?
> > What do most people use?
>
> It looks like for AOSP LLVM we're using thin LTO:
> https://android.googlesource.com/toolchain/llvm_android/+/refs/heads/master/builders.py#186.
>
> I think that's the most reasonable tradeoff for generated code
> performance vs build resources required.  Full LTO may produce a
> faster binary, but I personally don't think it's worth the additional
> build time cost.  YMMV
> --
> Thanks,
> ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmUv8Q%2B6L7W1x2SzA5YGAhN6AEDKwNzbssFMpSPnrh-oA%40mail.gmail.com.
