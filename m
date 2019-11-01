Return-Path: <clang-built-linux+bncBC72VC6I3MMBBWNW6HWQKGQEISN7III@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id D335FEC68F
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 17:20:41 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id q25sf339676lji.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 09:20:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572625241; cv=pass;
        d=google.com; s=arc-20160816;
        b=fNNZTJLNBc4Lj+DzEhEwXR5v9m46IEKpOikJH/odCPcFvRAdJTa3iX5bLOJ+BPO58S
         ZX7a2bI3bQVhKksLu11gyLzTNnzNscCpSB5WlFWNWTJnyYnYNMk/y9w2AOh+eQMYujin
         Qg2tCZ7YigmauvRfruUMjmkr/Yv18ML6s8dlGSHzdhubeJYKPLIjvrUnFdgs3zB0sMwJ
         pqyaGRESkNOXFgve/c9lR4ZFTip1G5qLqkg6x3XObF0xbsPrS4+9S7TRCg4tL/ZCA2wK
         kedQ0K9TLARSCIRKzfyHFWP5xeARwd39SAW4Wd1a02qbDhrL5RVwI3L903jI8cC7xXYa
         8dsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=JgtehymdFefcr8CMMIDkT0eAGpXFaJo3XQFOJnZIgck=;
        b=ncNOFr47AvrI4yxayjecfq3ZbIMcVNdgyUM2vUNeVvgjBlRtOwaZpbf4nKgIiJHyle
         C+tewZhR8jKAusbX1QSZMshE40DPV8N5LQj7pLI6h9xTCSWBFZVhiScN7iPegLj1q7Iu
         fOC3b62dDUYu9FVLXpiyWVEn1SZRFpVxlIdaqpDTsRfDtGdb/QLi0fbYeS+Q2/+OofMC
         lkLDQtHWSlUtETOCJFWLLMmwJ/Wc8hFSABCts1+mXahOVHdmU1riyIXhoEPKJu9xb+W5
         gfyBO1X63LesBP0Mdb5R9Cpi+aqNRRWQhq9a0z8i052RuZr+7i/zmyk9wGiualYpc9aw
         ioWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzLMxhHT;
       spf=pass (google.com: domain of jim.cromie@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=jim.cromie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgtehymdFefcr8CMMIDkT0eAGpXFaJo3XQFOJnZIgck=;
        b=ehsnRFHnbQfQe5ArXpIgIttD4YLu5Ezqt9VnTgC/kWmTuxBxrHiL72znC1TPNFzx32
         9ISTtj5gHV3Z09A5Fxz8HA12qhsG9ARam9lV1cOgNXuYagFAJR+Nsc975IqjDHjnwWji
         AXdJaHg1j/X5JZfO3NUr+6pCkhGjebwEgTxsuZ554lvJlNOVZy2010LwIu8UQvtPcOJw
         GJq857w3TT4HU6RmxM2N4FpKvMVBBRScvMqdwnl1+iGo8eaFytdKJeUbso/dPTyO6Ac9
         aRnXe2PiHlUTM49SV32jIQYQKDskXd72eIiDX7A9vgPd98EbwrxvbiDs33HD9R3K32zZ
         H9lQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgtehymdFefcr8CMMIDkT0eAGpXFaJo3XQFOJnZIgck=;
        b=YiZmepf7dyK/8bfZdoqkats/+Y2ekLB6NeYF8ILOOHk3VXDEpC4E0BTMkIPebd7toW
         irnMCOjuy2C5EjJV8j1D3zdzegjXJy69c8pP40eT1En9MlqUSgsrL8XL1yZm3wLcwMje
         +1HUuGBlEksUzedgGMLeplQTFugO4LDRtFn5fybi9hRsrw9KreFc4xQVngBwrh42dVza
         x/6BroUmLMRIennrQAG+6qoEfkW+nNWAKdtBq+vrxXAcL41wsqspWuj4xQd5PS0nkJgG
         S61OPkxRFipUjIwNNzWn92iSdei8qbuSwTYGtc3zi7q4MSlt493EqcXS1BP1egWgmbR3
         KNEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgtehymdFefcr8CMMIDkT0eAGpXFaJo3XQFOJnZIgck=;
        b=IdQEgypG8gYcqfdSkuqaUrCwOvfvGboQo2Lj2x27EZjbnsNB3Ssv1VHq9mOmz6xMaH
         pw7HpPtyC3vacC75ZJkxrxLdPczEyM58q2RULKJhri75EI0FrAA/3ZVDh3JAtva22LXE
         NpYT76xfjLfursZTfEqdADU83CGwYVaHHnn6hPmjzW5ouILAWgGRKu/av1KwUZfSjMHB
         o4sOp1WwRMvj+9qRREp6ySpt/qQr85bACMm/Q4+xqOUN9dFgPGVntkG7tVcr3svSgrz6
         9GZIQV2xRseb1Ra5UTfxRxisSZjupR0PjW4rJT63UfuyZyywKCOl/0dx/9wSV62/m2IR
         cvew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXF8NcKf6vMnK6o9A9I7Wkbq8EE21C/x5JlYpzQe2az1gRp0Grf
	qqFq5Q7+kVn5ZFOH8ETx6AA=
X-Google-Smtp-Source: APXvYqxTjjGzuwgHwNG0IhV9I8po7SCc0zKbuDsOoBM2y8hPw7E6BVsa5z1iI91nJ1t2PoXbInYMLg==
X-Received: by 2002:a2e:9f11:: with SMTP id u17mr8960244ljk.104.1572625241400;
        Fri, 01 Nov 2019 09:20:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8585:: with SMTP id b5ls961077lji.13.gmail; Fri, 01 Nov
 2019 09:20:40 -0700 (PDT)
X-Received: by 2002:a05:651c:331:: with SMTP id b17mr8746171ljp.133.1572625240733;
        Fri, 01 Nov 2019 09:20:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572625240; cv=none;
        d=google.com; s=arc-20160816;
        b=vhn+HurmRH5IEAoiKiwEETiLA7KiiTMX9bw0bie1yQax/hgoR8K6PHfeI9SDLCa/Lj
         uLFhFLKYp4fdR4dJjLtwoFuktHdKUYEcb5QCaaDjNzZ5pNmz3GIjQOGI7Sn1ydqKOk8d
         q5o/gn4Fiad1YZIdGvfOGCsv+euLwtBsmz3Dq7KfqhfN+lnWwYDiHc9ybmtnfD7JyyZe
         O6LSqSuzaBwADR5ErWlCH9owvsIE1/Sl0DEibDtIVfq/D7cBHyoKMPdyqGCWKB7s8UGC
         qidOTfk11KCfxppsgIvmrvip04bracu41SMpnXSCp56cQcQwXHTmhs9c4BWuxbol8vHu
         iYDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kDxL/9y811Z5nJM6Y5gJFSYgQI7x3MvaiflUEhpC+a4=;
        b=U8ZCN6FcCmi7+ymM+LG/tmc3fgAjE/AcbFVkO6jLMVKunL1DcxfL2gWtmndyP1aw5x
         j+8R85zWxkqpMAiadVCQoXDhUSRXlp3xteJ41orRC/h8mpfk38bfWVC08KqEs7rEW+PI
         OW+4rXCFXTvR2/ApE/kTr9x4XGAaqfPmegl6OgTq+V1JlTXIer3odXrpLlKD55QUmrH3
         3WsZXBRe9MQHXa/XSK8M/IDa9hlhvhETABxvb74bHb00VK4nWhB6jaAyyNusnI/lpAQP
         U7qKxlCjCy2yPKzPF3bquSP8M9tt54miF2HbhTi8hV4peLAwL4duJxSI5tpCMZOSQMnl
         b78Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TzLMxhHT;
       spf=pass (google.com: domain of jim.cromie@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=jim.cromie@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id d3si493547lfq.1.2019.11.01.09.20.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 09:20:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of jim.cromie@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id f5so7640164lfp.1
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 09:20:40 -0700 (PDT)
X-Received: by 2002:ac2:4919:: with SMTP id n25mr2371545lfi.58.1572625240350;
 Fri, 01 Nov 2019 09:20:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191029200001.9640-1-jim.cromie@gmail.com> <07db7036-b46f-c157-5737-e3d96c808f14@rasmusvillemoes.dk>
In-Reply-To: <07db7036-b46f-c157-5737-e3d96c808f14@rasmusvillemoes.dk>
From: jim.cromie@gmail.com
Date: Fri, 1 Nov 2019 10:20:14 -0600
Message-ID: <CAJfuBxyE8Ju5S2bM28LSqULZzX6eFqDKJGVsRXP0Qhi6n+Y0kQ@mail.gmail.com>
Subject: Re: [PATCH 01/16] dyndbg: drop trim_prefix, obsoleted by __FILE__s
 relative path
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Jason Baron <jbaron@akamai.com>, LKML <linux-kernel@vger.kernel.org>, 
	Greg KH <greg@kroah.com>, clang-built-linux@googlegroups.com, 
	Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jim.cromie@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TzLMxhHT;       spf=pass
 (google.com: domain of jim.cromie@gmail.com designates 2a00:1450:4864:20::144
 as permitted sender) smtp.mailfrom=jim.cromie@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Cool, thanks!


On Wed, Oct 30, 2019 at 3:20 PM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> On 29/10/2019 21.00, Jim Cromie wrote:
> > Regarding:
> > commit 2b6783191da7 ("dynamic_debug: add trim_prefix() to provide source-root relative paths")
> > commit a73619a845d5 ("kbuild: use -fmacro-prefix-map to make __FILE__ a relative path")
> >
> > 2nd commit broke dynamic-debug's "file $fullpath" query form, but
> > nobody noticed because 1st commit trimmed prefixes from control-file
> > output, so the click-copy-pasting of fullpaths into new queries had
> > ceased; that query form became unused.
> >
> > So remove the function and callers; its purpose was to strip the
> > prefix from __FILE__, which is now gone.
>
> I agree with the intent, but I wonder if this is premature. I mean, the
> -fmacro-prefix-map is only for gcc 8+, so this ends up printing the full
> paths when the compiler is just a little old (and the kernel was built
> out-of-tree).
>
> I don't think keeping the current workaround for a year or two more
> should hurt; when int skip = strlen(__FILE__) -
> strlen("lib/dynamic_debug.c"); evaluates to 0 (in-tree build, or build
> with new enough gcc), I'm pretty sure gcc optimizes the rest of the
> function away (it should know that strncmp(x, y, 0) gives 0, and even if
> it didn't, the conditional assigns 0 to skip which it already is, so gcc
> just needs to know that strncmp() is pure).
>
> >
> > Also drop "file $fullpath" from docs, and tweak example to cite column
> > 1 of control-file as valid "file $input".
>
> That part certainly makes sense, since the $fullpath hasn't actually
> been in the control file for a long time.
>
> Rasmus
>


I agree.  Ive split the patch, am keeping the doc change.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJfuBxyE8Ju5S2bM28LSqULZzX6eFqDKJGVsRXP0Qhi6n%2BY0kQ%40mail.gmail.com.
