Return-Path: <clang-built-linux+bncBC2ORX645YPRBCN6RGDAMGQEZAY5PSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8723A3385
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 20:50:51 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id my14-20020a17090b4c8eb029016e19bf8ac1sf3996357pjb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Jun 2021 11:50:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623351049; cv=pass;
        d=google.com; s=arc-20160816;
        b=fYM2+awd64GfIGfAG/pPkDDrm4x8xZEDc8YXB/QYgnRKjNMbmjPVIxlQ2iZXN3Dh+W
         +1KujicdFhrZ4vbNF7NkfJDFvDqXOG+icdpr8gW9TPr9N/vYwgTSe+Vteubdt6STRMxu
         hxvNAt2tLxM9rN1LJpyQ+QH8C+IfiYuGSg/jVL2GipxnHOlHOZG50xy5z9FICDGH1J81
         tZ3Jd9xC7PovVLFwBlx4IVFFhS3AZDnD4kicdLGPvOhklo3dSc2Hi5RcbmPPDoJSIiFN
         NXxzuYenFvzjuLqlqAGo+mESK+VlxGnphnkj6wdFv16idu99lfVdHNSwINrkD3rayqTY
         wjXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ssYSdA71jbYb9VKHRGRw9ddbHRXeMpREd4Nvo2QQpwQ=;
        b=RzM3U0LQ0PuZ5HNoOpmjrCDjvnxNXibT8TKlDqzVQLIdMuiL1V/I9zdQxmmPHQiTUB
         wX1+/xyTaJcWPp+jEs87vqnExmK5QL02Sm0YroHgbWZxgGtwpiv8UP4t7xDuTdaLi3Bk
         pKYtQmQcipaGUUizppR4WGWFILmnSCbZHamKHsKCAhbQ3U9/5gd2cRD5tqxYFET1Q5dL
         IzSNT2sv3NBRhV8a9a+s8aM12X9lG+Qg1ReXIq5Xdf7N6CN+gjk/P7qj1xrMR1WDLF5T
         ZI1l7d/COa9mtX1tIdXh9cf0Ee73nAsDPwMIYmHP10abmYZUGmF3WDHvykMUSNtiOUaH
         Q+Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="svkIN/o8";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ssYSdA71jbYb9VKHRGRw9ddbHRXeMpREd4Nvo2QQpwQ=;
        b=A8xChO28wwhjOmNefswmsUYXF65yMIiMmcKwZBuLnhaA6jg/+PbTW4phGSjrTIBhJe
         N4IAwWksPIRXI33Dr/abt2dBDHJCIMtzUoMsGZVXhGNhBAi5Hiz1HqD5RtHd/NvqU82H
         6rEYm0BvAwtVizd1hGbxyFSPVmEjap25AeWKfhqpxlEp15/57vCRMvAJ1Hhp2lKGrtLa
         d8P4HOQiL0lOgOyyHLNLz9fxR5lVXoqB++IMfR+OAK2KIyaBo1cBRAHyqVu3BEplPXrS
         DCzpjLtEBajC3ZkYBBxth1u1AfEE/3MuCsEpAs5+Db0KY0G02pDmrt1LmiKaLL6/eEeT
         V9oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ssYSdA71jbYb9VKHRGRw9ddbHRXeMpREd4Nvo2QQpwQ=;
        b=Llk6f1EVkWcAWYpMI9enPliiFZg6wa3RbLEtAa5pRvQi45Jyi8l/JBiIXjLM7bZEVO
         t28B0f3+BO/oBrSr/txGo22/QT6yuBZ4vvHmizWrSz+3mP63uuB5nFBE4L5jtGtzrIHf
         wZSSnogjuRcbKZ4/4Q32rO4HuhHdQmOu7NfW+Mn7O7TE7f1dprSZvR2NudIw0LGmwHo5
         ZAnqSHvmxvTwDKwhtMnaM6/AmiIwDaQvAO3ZQwSdXZitaYg31CRPPR5Ojko2hdj+7Eki
         8cbpl/FVLLgl+jjQkkXTcVCVojwZ2X2nOnF25Wmz7VgCXP58YTBQokTjnZwkXQIa6W65
         ylIw==
X-Gm-Message-State: AOAM530SqK2a4wlhTWhJRdPETxUQwik+FH3dcr1Wp/s2knLsrXnArl38
	f4Ci7lRTSgmkSHtSXYeO+Kk=
X-Google-Smtp-Source: ABdhPJywcAnwAM+BN6IGlWsZ9GSLOFTowPO+kEIfCO+XzHqxeLNe/bIheToiI3T1KRKsTnWwZFJcBQ==
X-Received: by 2002:a17:90a:8b0d:: with SMTP id y13mr229955pjn.88.1623351049534;
        Thu, 10 Jun 2021 11:50:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls271898plj.2.gmail; Thu, 10
 Jun 2021 11:50:49 -0700 (PDT)
X-Received: by 2002:a17:90a:a395:: with SMTP id x21mr190369pjp.63.1623351048659;
        Thu, 10 Jun 2021 11:50:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623351048; cv=none;
        d=google.com; s=arc-20160816;
        b=iSlM4zbooguzC26H4zEcZk55kyC+u+u5RNYObFJRLbt9aegfR+amwGGUkLQ+Uwwg0K
         an2ELEprNFjEdBkY5BCNL3WwmweT4ZBdEAmPA3dXwPPn02dl/aFLogga4e/f0RIElw6d
         SS/qCtD6j6Rnr4hZTV/VKjpMwo7dggQWBVCYab5xALEDjBwgA2IouRp5OOzId7he4uoU
         kdr951zt2cqXqn/OjpPZqO7L95Uo2+4cUE3ipfRXGVimmWPNR7igAizgjJEKqr648QSq
         SS206jmIMGwTpjQbfirYKIXxhtfTUGNLV+vXCwP3xQyy19ej7ZhPVNYCbqMHFBEXPaWt
         zCWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HfuCeAl5MSl4lisgs4d54ngu4sgiEZWbJvzZFPXnGcA=;
        b=GBiCde+YtkBJI/IZZCy0tprZDLFiiNDUISkWhHCwfz28tb5e7GDAi6nDs+WfVBd6Am
         +tflcVI+UQgo8lNA562Dod9P9CubLzpXI7kngb59+UDXeEdc2FcnZE/GTfFXSvMcYIVG
         cWrqziLafD31vfhptRNMWXI9ZK0ZCn8LB34jH2ZuBgBwK6xFKJmQtEXb/1GgV+DQ3HAr
         +n/+axXUVrRXOV2OAuHB0oguhKuOSj2tgpKkHEY8zKgbiSLKpD5XzPwlWQwR7Ss6AK9G
         ZUha+VjwkPJKGUbv2fcn2DE+n2LD7mxZRlf4z034lP9PKrc3P1LlrLqD1jdNZUc71w0v
         fBVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="svkIN/o8";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id t6si331531pgc.4.2021.06.10.11.50.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 11:50:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id m9so753519ybo.5
        for <clang-built-linux@googlegroups.com>; Thu, 10 Jun 2021 11:50:48 -0700 (PDT)
X-Received: by 2002:a25:7085:: with SMTP id l127mr296805ybc.293.1623351047675;
 Thu, 10 Jun 2021 11:50:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210506193352.719596001@infradead.org> <20210506194157.452881700@infradead.org>
 <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
In-Reply-To: <YMJWmzXgSipOqXAf@DESKTOP-1V8MEUQ.localdomain>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Jun 2021 11:50:36 -0700
Message-ID: <CABCJKudzC-Nss_LGrpYwRqwdDxeWOf1o6Bvp3J2fBQthEB=WGg@mail.gmail.com>
Subject: Re: [PATCH 01/13] objtool: Rewrite hashtable sizing
To: Nathan Chancellor <nathan@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, X86 ML <x86@kernel.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Jason Baron <jbaron@akamai.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ardb@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="svkIN/o8";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::b33
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Jun 10, 2021 at 11:14 AM Nathan Chancellor <nathan@kernel.org> wrote:
> Adding Sami because I am not sure why this patch would have much of an impact
> in relation to LTO. https://git.kernel.org/tip/25cf0d8aa2a3 is the patch in
> question.

It's because LLVM enables -ffunction-sections with LTO, so using .text
section size to estimate the reloc hash table size isn't going to be
accurate, as confirmed by objtool output with --stats:

  OBJTOOL vmlinux.o
nr_sections: 141481
section_bits: 17
nr_symbols: 215262
symbol_bits: 17
max_reloc: 24850
tot_reloc: 590890
reloc_bits: 10

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudzC-Nss_LGrpYwRqwdDxeWOf1o6Bvp3J2fBQthEB%3DWGg%40mail.gmail.com.
