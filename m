Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6WDRPZAKGQE57PIBJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 4801915960C
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 18:18:51 +0100 (CET)
Received: by mail-vk1-xa37.google.com with SMTP id c127sf3694089vkh.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 09:18:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581441530; cv=pass;
        d=google.com; s=arc-20160816;
        b=G6+OpHklzPhhkhlnyIlEcWoPIWNtJBNt2MvMjrWMGY7bBYGZpNPR6cQXgArfTnV8Rg
         k2GRTKoCzGsrjp0oE+8aiHl8+qoBEjpcpLx+M82X9Gmssk93Vi2KlwzuHIwJaZzwPQFE
         +xdAUe5Jj6WpLoZN8QjN3umj9pBQ0ZZew1LasyvCLD85cMZQRO7y4BdHWcUrD9qbFRQS
         uKfCEFOB0WxAKd0eUv7u0hKtOO7k1Ezy5ymVcPyZYhEon5Isvn/AjSr7Drd23dsfwDiO
         151hp+qKfTXzJowmtmHq2K/C8X2w+zaTq5Dp0yo3uJiw9OjEkxdBk+HIrwcRRDLRUmXj
         /akw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/HPchxfPUBo8/pLbD1Bzplbb2J4N8F9KdotuxWXzjkk=;
        b=Fl2B1AHWyBw90tXYEUcpAV+KsQKzFWcrKx0zITal4qZFcA3DhFn5cO6komVzs2lrxD
         r03kUxJExpQa1LlBAu9gvRNE+EI6nPmuFwzm16DaaWT1HSvqa4ZFA9pfZYYIiXDFXDLf
         vHn6uFR0n07LoSt5jHFXIsOjtl8qS8Gcdhe2pybe/kgOSygVcfeo3dZ1V2X8neNK10X/
         Iw6IdF7CYr+6uQqZCbMTtCjptxA8pp3LZFyXOkk+PprI17ctL2zBzY6k46OKwmaV1s2A
         FsY9GxZeWgCL2nKBxme7TxhdU3kBIX2ZlxHNg56MyWhNHBXVWu0GyU9AHXok4ebtUt0q
         5Yiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PCIquI/L";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/HPchxfPUBo8/pLbD1Bzplbb2J4N8F9KdotuxWXzjkk=;
        b=Jhzj9s5iUVBRx0RbWB4+wFPt5SBnzaHvLCI/NKhFUya8gXkFFTqJ+UkXbnYcpfElWA
         1EMeo54OeDmgF/OTx1YDEo193ZWg1ycf0FX9AMc/wkU8RYukjYxSbzmuAPwSjyjZjbr7
         wG/gwmRFQVZ7GvRWIGWcE5wUsYPMDOwqEcvzVTNLAJSRaRu+RN8gEu8Yd+jQkTQ183zk
         MMIbAj54CJx0QpW1soOTL45TKG7RazIOAtRWPsSWoyi/OBj4cs8FoLS1W7DGEUBqTQU9
         ho80sg8rpHO8jCuBtWpoXeiAHzioi+j24Ve4lUd/eUPLs3ZHG1AgwMy/Tckj6Lnv/dCD
         6n4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/HPchxfPUBo8/pLbD1Bzplbb2J4N8F9KdotuxWXzjkk=;
        b=GM1Mgm3ltjvh6h3TUfqpuyx8loeuqVdOnlw2kd7Auw+vs0Y4lVZ77gWkbmjqgOQVB8
         7EkPFG2SRwARHqr7kRRStTr4P3USYZFsJdeJAtaYfvM8J9j2TYsV6n3mW7tbzZpGIaDV
         7fyNzxEpx2urJTVCLXeAg9hzyHXGFQchlbbHstVNJ5qhqUfLMndgByh7ZwUYuGrZiTYU
         jOAiECALH7EfE5BU6uFQ4Nx1Ed9o1yS3ahFFpOcBUqu84Ajeen0zqycdAo1J9VDiYj7x
         8dVsFWGC76QmBmdbdp74+V34TpIBENHvDOn0Rm6wnv3gWwL/yniKj5a3NJWaZ4kyXiwc
         NRqQ==
X-Gm-Message-State: APjAAAVtYvYAa/eEPCnwKFjyFUCqE+T7gygonD8b4NyQeMXLxEXUXkzF
	yojpt1ciIWV3ZHbzpnz/vA0=
X-Google-Smtp-Source: APXvYqxZyzFJawvJKO1EQ2Tg24lPlHjWmgGV2qmckrsT2By7j9wl/RcJdKbA6ZplTrce9KcTXMLkOw==
X-Received: by 2002:a1f:2c58:: with SMTP id s85mr5413230vks.93.1581441530239;
        Tue, 11 Feb 2020 09:18:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cb82:: with SMTP id h2ls1289845vsl.3.gmail; Tue, 11 Feb
 2020 09:18:49 -0800 (PST)
X-Received: by 2002:a05:6102:72b:: with SMTP id u11mr10358573vsg.69.1581441529826;
        Tue, 11 Feb 2020 09:18:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581441529; cv=none;
        d=google.com; s=arc-20160816;
        b=O3O8G/addgBisKpDZrpUQm7L5nKKKaLUSsfVSWdcsi5/8w0n2wNnNERO+NbSsFtRvV
         ObA7cBnhl137k2GtkFvH7mAwQm4dgpzNfqXnnC5eC/+jQKzYYHj/oOsBB1m/yFE/KTsb
         vebCfSHG3ig3rYRELJRkWYs/79GQYk1uto95cmlUsGNmRVlij5o+B66wpil+ETHbQIJ8
         1YZTNRDhmr0Ii5hV0kdkY3cXkP/WAY+jsQvvjIQyeQtM2YlWFmbuTxoc6jTZsQ3L/gmJ
         9iZPsX+UrmhxC0ycMl4eXFj44/qSAOhExNzdZOOT3Hl9JaOXgfs6Nv+1wMadhbzjyB3F
         07Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Mrgg6cBg90P4lKhnE2fEOBdvfIOoBfSsmAgumbN75tU=;
        b=JvjI976494JXyygDxgjlR/Cxwmrfsz5QBXsexjykWa598H53aalYvY1im5HUtCtCqD
         rOh44gcmTg0yzsnK3m+qdPRTMHVYFGPcF+gulPGj5tcvVwUaGkZmLOAISiXykSMNC56t
         j2geDFC/9XehE8SNkJzDHBDsiEur7RraSV+iYBm3J8ChqxwyJMJgn0tIe0WXroAVCzQ8
         ByRW8PgIRSQRFANnTA+jVV8vWDsjDLZw2COx7jI7dbGvVlI8ccUVKPgscqvDuE52QknM
         N8Y0+NERuWkEUR3RfaV2xx6etrsVEpNEdiRueRcR2RjEjsJMfktB7SuBoYQ4pJjC5I4H
         0rWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="PCIquI/L";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h7si256358vsm.1.2020.02.11.09.18.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2020 09:18:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id j4so6066213pgi.1
        for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 09:18:49 -0800 (PST)
X-Received: by 2002:a63:64c5:: with SMTP id y188mr7767684pgb.10.1581441529023;
 Tue, 11 Feb 2020 09:18:49 -0800 (PST)
MIME-Version: 1.0
References: <20200211101043.3910-1-natechancellor@gmail.com> <CACT4Y+YdQCfprPWicQWtgCL1AoF2N=ee4Bkuat5AihLxYCbmqQ@mail.gmail.com>
In-Reply-To: <CACT4Y+YdQCfprPWicQWtgCL1AoF2N=ee4Bkuat5AihLxYCbmqQ@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Feb 2020 17:18:37 +0000
Message-ID: <CAKwvOdmSq7S3i6LDbOC=xGxi5B6hG=MGwfcaHXXuTzr5cxeUnw@mail.gmail.com>
Subject: Re: [PATCH RFC 0/6] Silence some instances of -Wtautological-compare
 and enable globally
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="PCIquI/L";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Feb 11, 2020 at 8:45 AM 'Dmitry Vyukov' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Feb 11, 2020 at 11:10 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Hi everyone,
> >
> > This patch series aims to silence some instances of clang's
> > -Wtautological-compare that are not problematic and enable it globally
> > for the kernel because it has a bunch of subwarnings that can find real
> > bugs in the kernel such as
> > https://lore.kernel.org/lkml/20200116222658.5285-1-natechancellor@gmail.com/
> > and https://bugs.llvm.org/show_bug.cgi?id=42666, which was specifically
> > requested by Dmitry.
> >
> > I am not currently sending this series to LKML as I would like some
> > pre-review before I get torn to shreds :) I have included the
> > ClangBuiltLinux mailing list to start plus a few other potentially
> > interested individuals. Look for things like dodgy explanation or wrong
> > approach (location of macro, naming, and such). I do not see any more
> > instances of this warning (aside from
> > https://github.com/ClangBuiltLinux/linux/issues/749, I just need to bump
> > the patch for acceptance).
> >
> > Once I get enough review, I'll post to upstream for review and
> > inclusion.
> >
> > Let me know what you think, cheers!
> > Nathan
>
> Hi Nathan,
>
> I don't have any objections. The series looks good to me. But I also
> can't predict the results of upstream shredding :)
>
> How does compiler know about addresses of sections? as in e.g.:
>
> mm/kmemleak.c:1950:60: warning: array comparison always evaluates to a
> constant [-Wtautological-compare]
>         if (__start_ro_after_init < _sdata || __end_ro_after_init > _edata)
>
> Isn't this info only becomes available after linker script?

These are forward declared as `char[]` in include/asm-generic/sections.h.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmSq7S3i6LDbOC%3DxGxi5B6hG%3DMGwfcaHXXuTzr5cxeUnw%40mail.gmail.com.
