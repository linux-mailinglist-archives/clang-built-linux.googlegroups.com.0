Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRED3X4QKGQE7YSKJIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EBD24505E
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 Aug 2020 04:00:37 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id o26sf2928403vkn.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 14 Aug 2020 19:00:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597456836; cv=pass;
        d=google.com; s=arc-20160816;
        b=xumamJE9Sj/z6BPBzio/QtNUdAUV6AT9dijbkam56n4tSTvSFyakNKl/NFqICR0DSQ
         FN+ZzXj/BFX8c7AxzcUtclxV7306ocwu6lAmTMm54TKCeEbsoBSZg13YGCWd1lzPgjfI
         fcJDxSLpJ3p2/NKQptjWXj7qaPfeQeot2TpDdRLsYOmGsQHCPsFdI+uXZ/XjPVq3lZ5/
         MYVEyh6e02Xy4fSk3omrwIoTXsTeSQiL68zUwW83wOY+Y3qmx+DNH8rR8la5lcp/q9CZ
         zKFflHPZqSsc79fZDOIg3NTDbBlSWxEWbO5JgAR3TdXEZQQ5V2eTxiOJQPdS1VOPOO7s
         vAWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UP9ma5lDN1vRYTX6LGCxGxAA2FjMsrWis3d+XbJFZxU=;
        b=RViB7dwhdE0aJxyqLZVFxNxF2HRKjC9tkNi0JD4ceCqF34YzXnij2Mv24G0nJfwKQ/
         llah2YzbJxFU1/HWFfdAO4NZ3hQfrKNlv5v16Cwt5JTNcq6jHBkw8SjoBrO/YJjBaXAK
         sPefiCgSJ6Kd8kGXNppNh3XZJCfaX7Qvp06c9w8kMIZaYCq3pJtLC/Gd00vJARxQ8Smm
         9VCvyU1BSwdhbFEyjZOYBejpMlTxDbmz/u2ozXcja4Z8QvWjURRZBcb5cf3F/susnpIk
         PfNdYX2Jh7R5yA9M5LZZp2rPMoJhxzIF4QA4sbughvIGMaAon/ok1bjaL8KN05aHLcCu
         xHJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PeLFqURv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UP9ma5lDN1vRYTX6LGCxGxAA2FjMsrWis3d+XbJFZxU=;
        b=lP4pbpmhavV2iKBE1b8jeN0ycPTsLTgFQfeQA6S7XrJIg/gSahLUL9oh1mPM1fJ/LX
         lnInr3QehqGXLKjCApPf8tJtoNgP88aZLTQEOGpPLHc4c/pMugPbFDXczc2hFDNnEv4D
         L2msjZdmIfE0767JwMzAleLeN/hqHX5RGft22lyA7GU3Y9fITsml+bpqa8GYfaW+3DOT
         AObjniHusJy0dc4v3XTRyC6rHkmOWPo3/mE7VUWzElie+0TSFiZlecJw4hRrrUVSd7ed
         u0m6dM1DY4ILuRMhQM9r/CgAITXMVdRYL8IUaS3kEnYSqaWDYQA5p88drbXz90I/TIEH
         ZO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UP9ma5lDN1vRYTX6LGCxGxAA2FjMsrWis3d+XbJFZxU=;
        b=BbvlDiYCG1KXZ7m9vXjtX4a2B/DxX0q1FuCYYU/hLh1rgn8hXiaS6+xOg+L/CMdLep
         U7GbpUfX2sSQGJB1/Q7eWGYhXmGP5gUacHXwdLl0b/NkA6PWmLdpdwvL8QD5QaZqekeH
         SewMTP7iqeU5TDbaq/EisCzcdrCUwkslE6jLQdDqf00rRUZTlSi23s/OLLjynPmHq7/g
         lMMsWNCpcgFCRpxL9/OnM1uaAV8a5ygo3ylJXy77ItCO+wH5d6ORLBbkBN6Pq5IpTMFE
         DpmRWCYZTE53039o5m9mULGJQ2J176uyzFi1+K6vv6WB/Z/hogmzSRufWrqK3A5uxsyt
         bE2w==
X-Gm-Message-State: AOAM533aSQpgd0R/JxjeqaIONx2z2pQ7Vlg6B8My2ywfCpX3gDTy/ZJo
	6TpZBTkBE/XvjEoaHfmBHUA=
X-Google-Smtp-Source: ABdhPJxJtkA50AlJNnAmj6WozckgVlcCSftgSMNw6pDN2+9U7rNMXr4NVpD5GunCkmS4L90DKtEpww==
X-Received: by 2002:a9f:29a5:: with SMTP id s34mr3143005uas.111.1597456836194;
        Fri, 14 Aug 2020 19:00:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:cf4a:: with SMTP id f10ls1299388vsm.3.gmail; Fri, 14 Aug
 2020 19:00:35 -0700 (PDT)
X-Received: by 2002:a67:ef1a:: with SMTP id j26mr3329928vsr.10.1597456835877;
        Fri, 14 Aug 2020 19:00:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597456835; cv=none;
        d=google.com; s=arc-20160816;
        b=kRnRgc6SvN4Lyen6jjW6E1knvLR6TevvB6L+IW9sNM+8oA6RPxlpGaFfFwFzy6uz1m
         NYAXOkLRH0IPfa3ymDrxj+UxBagOty/B6ZIxxWbIfvc/RdnMIrQQQzWwvHDcVmp5uVgy
         wlLoIvV7zWhY9lBPIqD/KHBCVzTW7Cxu4S3loEpZor6O0Rx9yqwwilVkZrADy1SsHUxm
         hAsQlHbzeamgsqvU0PMVbFGWN6pB20Puh2YSdpkvTWzUtjs+zUyUhtebm7hLOW56Sbkv
         cXt41vaKZA1wW8ZesupDkUph23SaJR31/iNShBKdqVHcfIpkKGJFmxhGgyAsqDus95KV
         Y08A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=elMrilSLXI6b7aYlKVZpaKDCZnCipuhXfzdMESlljx4=;
        b=qoQbxfduZuLChmrtRemcLETuxqMQ/gyFHloRncFgoRUEWv9P89mhXI+rklRL7q4FJr
         zCmjTRlTOdFrOK8qv9O3+dfn+QCdqi7ZO/7Gd/BXQHMiv0ZKYxCA5LvObHG4vrgV0EFo
         0YIoliB+N6k0jrzPEVa1y8nBfmymlPPK/+94GFL8aqdKXM4eWr4/Z/5WlR2skT0fWeeW
         KdYLNQuy330/2bYJMM5Z5zJVOU0ZuFAm2lbqp9b/25vQC0Wn8dXmFMGlkZ6JUj0mee2U
         anCsr+Dsui8UEQi/CJQ0NX9zHy3Z6CD4bq+anpOcvuX8r95NDy82Eu/tn3xY0de+GsZn
         pLSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PeLFqURv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p8si616359vsf.1.2020.08.14.19.00.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Aug 2020 19:00:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id t10so4960868plz.10
        for <clang-built-linux@googlegroups.com>; Fri, 14 Aug 2020 19:00:35 -0700 (PDT)
X-Received: by 2002:a17:902:8509:: with SMTP id bj9mr3855029plb.179.1597456834421;
 Fri, 14 Aug 2020 19:00:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200815002417.1512973-1-ndesaulniers@google.com> <562003af51ca0b08f2108147b8d6e75cec18f3fd.camel@perches.com>
In-Reply-To: <562003af51ca0b08f2108147b8d6e75cec18f3fd.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 14 Aug 2020 19:00:22 -0700
Message-ID: <CAKwvOdn8PdK-3Xhm-JFG-=1djoPPEMcANjXarGpLUTkahJoFJw@mail.gmail.com>
Subject: Re: [PATCH] lib/string.c: implement stpcpy
To: Joe Perches <joe@perches.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
	=?UTF-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>, 
	Eli Friedman <efriedma@quicinc.com>, "# 3.4.x" <stable@vger.kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Tony Luck <tony.luck@intel.com>, 
	Yury Norov <yury.norov@gmail.com>, Daniel Axtens <dja@axtens.net>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Dan Williams <dan.j.williams@intel.com>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Kees Cook <keescook@chromium.org>, 
	Alexandru Ardelean <alexandru.ardelean@analog.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PeLFqURv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Fri, Aug 14, 2020 at 5:52 PM Joe Perches <joe@perches.com> wrote:
>
> On Fri, 2020-08-14 at 17:24 -0700, Nick Desaulniers wrote:
> > LLVM implemented a recent "libcall optimization" that lowers calls to
> > `sprintf(dest, "%s", str)` where the return value is used to
> > `stpcpy(dest, str) - dest`. This generally avoids the machinery involved
> > in parsing format strings.
> []
> > diff --git a/include/linux/string.h b/include/linux/string.h
> []
> > @@ -31,6 +31,9 @@ size_t strlcpy(char *, const char *, size_t);
> >  #ifndef __HAVE_ARCH_STRSCPY
> >  ssize_t strscpy(char *, const char *, size_t);
> >  #endif
> > +#ifndef __HAVE_ARCH_STPCPY
> > +extern char *stpcpy(char *__restrict, const char *__restrict__);
>
> Why use two different forms for __restrict and __restrict__?
> Any real reason to use __restrict__ at all?

Bah, sorry, I recently enabled some setting in my ~/.vimrc to help me
find my cursor better:
" highlight cursor
set cursorline
set cursorcolumn

Turns out this makes it pretty difficult to see underscores, or the
lack thereof.  Will fix up.

>
> It's used nowhere else in the kernel.
>
> $ git grep -w -P '__restrict_{0,2}'
> scripts/genksyms/keywords.c:    // According to rth, c99 defines "_Bool", __restrict", __restrict__", "restrict".  KAO
> scripts/genksyms/keywords.c:    { "__restrict__", RESTRICT_KEYW },
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn8PdK-3Xhm-JFG-%3D1djoPPEMcANjXarGpLUTkahJoFJw%40mail.gmail.com.
