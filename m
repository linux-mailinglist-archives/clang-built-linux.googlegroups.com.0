Return-Path: <clang-built-linux+bncBCS7XUWOUULBB6FOT72AKGQE2HXPD5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A4ED19E1FA
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 02:40:26 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id w138sf10629737ybg.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 17:40:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585960825; cv=pass;
        d=google.com; s=arc-20160816;
        b=eTZAtkA3MuSzntyhhTZMxyW0VPL4aMeP3gx/0PZGDH7wXn7JGkvVnnhVwvJ0hv/Z4J
         MV9W+/uIj37jpeSoqCEii+dyVSaXFVnEBlviaSenCSlgDI/eEi7EqC+O3ahFKLsJEunI
         kQbjzSkfBsq4oi/8ND/+BNnqDU8UcHtezpVpf5nAwnU6J755y7TFJtsS8C/gFBMspAjq
         rAGom8GRIdnZAHIMt3VlBzbOeyD+gJ1BgxXdPoLSpw8nxBJ2XY870n4NwLKpaprrDV2h
         etftbxRG4FAAhy62CYxfOolh2VTGOi4LUBsKZlMsAgVJOJ8h95BYqIenACKUrF8r52l2
         xegQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=iTpE6IcDKsbRLP+I3atxdKw+6f6kGsC15jpxtafpb0E=;
        b=J0fIfOaL4vEb9e3NWLPhmVOu7bdtnptdAXnHvxszSpgC9bfj1rMSGfdJt4ERmM60FA
         yJ1ZCgqjk6G3x/JeB5IdOV/n2si6c4LYnQRcvNhG6JnI41ByCdARJBd9k2iTRW6KkkW7
         wrBJNuLFIlettjBrEb7BZ9LU3kDK+ciHd+orYpijrRQpAZd2GC7Wj4x/2J4ZXoRYjLj3
         tgZ7eGu+UQ5X2jOwO2qP4FAiglDYVrVwX3N48N11nuAccKbzyPR4A/jXvQ7RRjZK7i/1
         4cQIOKM2qkPV3HN/5Ond0zt0zQUCXwWwxg8nQhyaNepViNDAD1ABKIm+OAwkpZE8CFNO
         xQiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lRTq8VWX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iTpE6IcDKsbRLP+I3atxdKw+6f6kGsC15jpxtafpb0E=;
        b=IoQUuWI8wGqewg32M7Jq62YShi8uLMwSeGskSKuakr89ZHsUChMbaoKnpG7rgb4VQV
         laUpDpDpiHKuo8pcfUEmulX4chEz4Pj3+y5dP7ClaNqFSYePaMOjqiHZQGTBJ+Vc7h+g
         nL48bS5kwH1LDWDvd18xTPpeC6YclcyKnzqGCRVNoOwFDw1bmtlSYX2T86gNNtjGWMVu
         S4Q2l2pGQliVu7R8u1vzHn/X+u0VXa2DrmaeuARPAsLUN4mKbob56H0d8SCUF7jsQlrL
         //7dpIqSCx+0RU2eyZSwlcmVQpp5FeCEiWhWYPrkDE8KRUPNUxYZMmBrQ4sC41lPeD/Q
         DSLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iTpE6IcDKsbRLP+I3atxdKw+6f6kGsC15jpxtafpb0E=;
        b=VYVLxDg/1uMW8vGxm1xguWSh8QQKzs1JiRehTMaEzpp2MJadwIXz+qIFe8N5QhFQoO
         7H7orPvBPzy9cWVJR4BgQEvoCkEU8/3cSOqWbQSbnoeCmT18g7TiZkFDrcrhrbyl+FCz
         jzx/pEsoGJt4czyKKwHmjU6Cr1i9HLMRWNgWu2pum1kYWbMLasL2exKkvj95xti9l4jE
         rckqHQf1sTpZjWyYEhoGRv1ikhPlKEbbGJDgtBRVYzlZNeuj/5BWL+6Rb8ShWWjfBAOX
         13rCocA+aRVZxl5lKVPeGbJNZN552F7/aaNpd/BPsJNV6mbT9muYb2nKsaZ0uPqoEGC8
         gzgQ==
X-Gm-Message-State: AGi0Puah+RylkzBzJsczfrxUfDx2xNdZPKS3bkvWIHEM5Z1FHIgsdCHi
	8ZJR6yi5Wkocdt2LkvJdJug=
X-Google-Smtp-Source: APiQypIbnxG20O1s1NfBZIpBCG1BIxh/GncAVsvokTTD4CFtwAsypWHDhp6tSIXl/yP1iXYzOouefA==
X-Received: by 2002:a5b:d03:: with SMTP id y3mr6131809ybp.501.1585960825079;
        Fri, 03 Apr 2020 17:40:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d6c8:: with SMTP id n191ls3399726ybg.4.gmail; Fri, 03
 Apr 2020 17:40:24 -0700 (PDT)
X-Received: by 2002:a25:d188:: with SMTP id i130mr19789015ybg.467.1585960824683;
        Fri, 03 Apr 2020 17:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585960824; cv=none;
        d=google.com; s=arc-20160816;
        b=JympCAj6Lrn+5CqN7kn7t+/l01gcFo9575Cy+2BRZlAsji9LOHEtRoWHTmubv+HaDb
         t41FmZrxGewpzNvCYcmfp8oADQ/vId3Wya4ijwYj8vjR8w51n898Oy9pwgb8tvynQEt3
         WDquBLGozb+vrG3DQohF1zx91hcjjZ88tFwCcRzsourSnFZbrQfm88kkrN0U5G4pua59
         NY5U4wYiCkFx//2t58w1R/ANkWlIA0NaSA/vqs9ptsv1WK9isHmuLFeE+iGdz6CD1bv9
         0sbB91oGlUgpQkAr6aVDxKwOWrJj/pzng/Lx1TIJzEPREPCIQuZhpOD4+79ZWJO6BUSt
         2y/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tAgxV2Mx2tEoH3/n8njjHOTY7Xv1RNdnq1oeOLGcdWw=;
        b=Y2WeiVjEh1hLAvppJkUpUThg7i/ma7sZDyCDyJNIEeUgVJq1/wltimFuSsf91xeE3m
         LNKEGb9YlXp3+CPTls3fuUdPYH/cpqrfR4Lhu5jmNo/DSZIM1H9Q5bhRxQz76yizVYQ6
         +3+h/dKwEa8eQ0kvsVMNRb1Iz3WX1VEsvRXPggqbNPLZ43BAjMbojvuBlKH1fQIcG3Wj
         +oK3pH1VbezdFLR9jFWwlY6uvUvLwq0WMRL8DnN863ydgT9MBHT2OfnFTiglXDq9TWPJ
         zBlFP+HNTs7JtwVQ04fvpLJf99/aMlqYJ3dG/Y/2REWw1ZAZkr1g+aTC77NdvFEr356X
         UZOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lRTq8VWX;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id d72si699701ybh.5.2020.04.03.17.40.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 17:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id r14so4433303pfl.12
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 17:40:24 -0700 (PDT)
X-Received: by 2002:a63:8c5b:: with SMTP id q27mr9497123pgn.301.1585960823589;
        Fri, 03 Apr 2020 17:40:23 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id c190sm6570392pfa.66.2020.04.03.17.40.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 17:40:22 -0700 (PDT)
Date: Fri, 3 Apr 2020 17:40:20 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Ilie Halip <ilie.halip@gmail.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] elfnote: mark all .note sections SHF_ALLOC
Message-ID: <20200404004020.jilng63qqyccbgke@google.com>
References: <20200325231250.99205-1-ndesaulniers@google.com>
 <CAKwvOdm8tQaa6BW7EQAz4TxFZETnJCS3z9isY4HvcU7UYqWZUA@mail.gmail.com>
 <20200403222458.GA49554@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200403222458.GA49554@ubuntu-m2-xlarge-x86>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lRTq8VWX;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2020-04-03, Nathan Chancellor wrote:
>On Fri, Apr 03, 2020 at 03:13:34PM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>> dropping Jeremy; I got bounceback from the email address. Ping for review?
>>
>> On Wed, Mar 25, 2020 at 4:13 PM Nick Desaulniers
>> <ndesaulniers@google.com> wrote:
>> >
>> > ELFNOTE_START allows callers to specify flags for .pushsection assembler
>> > directives.  All callsites but ELF_NOTE use "a" for SHF_ALLOC. For
>> > vdso's that explicitly use ELF_NOTE_START and BUILD_SALT, the same
>> > section is specified twice after preprocessing, once with "a" flag, once
>> > without. Example:
>> >
>> > .pushsection .note.Linux, "a", @note ;
>> > .pushsection .note.Linux, "", @note ;
>> >
>> > While GNU as allows this ordering, it warns for the opposite ordering,
>> > making these directives position dependent. We'd prefer not to precisely
>> > match this behavior in Clang's integrated assembler.  Instead, the non
>> > __ASSEMBLY__ definition of ELF_NOTE uses
>> > __attribute__((section(".note.Linux"))) which is created with SHF_ALLOC,
>> > so let's make the __ASSEMBLY__ definition of ELF_NOTE consistent with C
>> > and just always use "a" flag.
>> >
>> > This allows Clang to assemble a working mainline (5.6) kernel via:
>> > $ make CC=clang AS=clang
>> >
>> > Link: https://github.com/ClangBuiltLinux/linux/issues/913
>> > Cc: Jeremy Fitzhardinge <jeremy@xensource.com>
>> > Debugged-by: Ilie Halip <ilie.halip@gmail.com>
>> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
>Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

I asked on binutils@sourceware.org whether GNU as is willing to change.
https://sourceware.org/pipermail/binutils/2020-March/109997.html
I'll also ping that thread.


Reviewed-by: Fangrui Song <maskray@google.com>

>> > ---
>> > Ilie has further treewide cleanups:
>> > https://github.com/ihalip/linux/commits/elfnote
>> > This patch is the simplest to move us forwards.
>> >
>> >  include/linux/elfnote.h | 2 +-
>> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >
>> > diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
>> > index 594d4e78654f..69b136e4dd2b 100644
>> > --- a/include/linux/elfnote.h
>> > +++ b/include/linux/elfnote.h
>> > @@ -54,7 +54,7 @@
>> >  .popsection                            ;
>> >
>> >  #define ELFNOTE(name, type, desc)              \
>> > -       ELFNOTE_START(name, type, "")           \
>> > +       ELFNOTE_START(name, type, "a")          \
>> >                 desc                    ;       \
>> >         ELFNOTE_END
>> >
>> > --
>> > 2.26.0.rc2.310.g2932bb562d-goog
>> >
>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>
>
>-- 
>You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403222458.GA49554%40ubuntu-m2-xlarge-x86.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200404004020.jilng63qqyccbgke%40google.com.
