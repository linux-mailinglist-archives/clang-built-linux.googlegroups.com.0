Return-Path: <clang-built-linux+bncBDZYPUPHYEJBBZVI236QKGQEX27BS5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id B8FEA2B86D5
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 22:38:47 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id s16sf887240ljm.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 13:38:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605735527; cv=pass;
        d=google.com; s=arc-20160816;
        b=XN1x5MyJEAHReP4CPyDSQeiisiqZdStXB830mAtxKYiu6wzZ9CdxSioEWryNhUGbQ0
         1Vudsicy/eO7M8DeGvEYmx3MUQYs94i1YfZpW87hZPEfoiP6VK00SNb1CTAOKo0AWK0l
         XQrk/E9lzv9x4TkhGJXD2+u50K6IUY6v/48Nb35NaP5Q5bFbRsViXWVeRC2zuCAIvBhT
         Dqxv0mu6zVoTJMyUILQs+2gAYhTSDMOmcpl1JSFzACDHqIyZ3F9WmSILTm5A6MN4VEeV
         oebgUVDwINals+OgtrFdS72TcFBIpR01ecZXOLO79BBJAtMSC2uFLUVX2Qp971bWj/PF
         UyJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=xAVinLAPU+E0cEcqEpoMYLhPRhY8SGe8HAiSS521jbM=;
        b=yPZnTbKFQrZrhyKjKAJjd4ZzZl/a4Evp7sXzqjvD0LxO4sqGp5qN39kEw37iA+BVto
         1xPY9rtNgiMGbORlKyv+yyPJihZz9TpROzUDd1YSVY4wkUcm7TzMT2HVG4jT2GzLQhyD
         TlB5hAYlE2kBUfUlBjr+U9eojTruBhuUeHaNa1aIeLy48cTL353ompTgdLUB10zee3Ja
         YALON+c0NGI0bqtTzbjLcbPIfbPQyT8xHO9GsT8WECS1yaajB/P+LlX8+tyP0xrYpln+
         j8+qIe2z6MzLSR9/YkezR0seqhpDDuN0M3K/GvZRm2K/2otX2dSsZwdUiRIqVWP3jRYL
         qMJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=QxfzrkA9;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xAVinLAPU+E0cEcqEpoMYLhPRhY8SGe8HAiSS521jbM=;
        b=tdTCclzz1rhwkWpLvZf6op7rWdtIIL1kWOKUD8kIPp6/gazkyuqzR9GiAtUfARZR1c
         Y/8ycQ5l0BWXCCRvspZppMfSEHgfgyGrHJp9w3u7oJ2RndpV8qDBHazvRcX+Q9dRKnSc
         SHAwxlN5u9fdrTGbRSKrmw1D1lOyw4iHbCRYUTR8YqARPhHZAENkT/KlEnZFEYIQRoc9
         pJkWYld9gMcDbTZBh6joe56pLG2vrxiGs2N1zTX9lmEhejag9lPJQ2u9VIJC+pUMPsmT
         uxe42yMpRkzrmYu0TmxrBh4yP1XqsTchKTQcBHpcinYKVu0/uAqbY9EcX0CPyA7xempC
         Pq3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xAVinLAPU+E0cEcqEpoMYLhPRhY8SGe8HAiSS521jbM=;
        b=Bj7SFrkLr9s9jpevzw2DXxCPgmzfijYm2M89e9s9dT1uUquHOFbeohm8tYTLxdvnLF
         JeNGRB0DWJMUHeQfwWyixE/OorJ08hb1LX5dVwxCpDCy/kEkkeAXllAt30WHfMjVcEK1
         KceFwa+Hxp9Lr9w7s+k+mIzheZvT5gInJbLA6ln9LsdeQiX0eb/khF0q0SS2XV3IYj/k
         NTLZ8pTCw4Mz6dWy9Rr7hYbL7x9iOeH6zHkWM2UJbbQBwgnL5SRi8sw9btUx/Zx5mZG8
         yMZetdQmCToNHTuQMgWtJKczoSY1M8812kljUrlJGiqut0M7LrInMuhnyEGHBkRwd9nf
         lTDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337a8FoiOQPeR2ADCIUOtSb6WDmNkY21bJ+4L7pRg2KhIvrLPUC
	4ULYQLgwFC2+PRYg6ghIDr0=
X-Google-Smtp-Source: ABdhPJxDlb2bqhZQXdAZKhdKRiZtl4sJW7vnJCoTrkBh8KokGWtudhEcwNZxv73XKAIhGSG8C5/cFg==
X-Received: by 2002:a19:ae03:: with SMTP id f3mr4959539lfc.239.1605735527268;
        Wed, 18 Nov 2020 13:38:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:ccc2:: with SMTP id c185ls497959lfg.3.gmail; Wed, 18 Nov
 2020 13:38:45 -0800 (PST)
X-Received: by 2002:ac2:4645:: with SMTP id s5mr4593200lfo.196.1605735525832;
        Wed, 18 Nov 2020 13:38:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605735525; cv=none;
        d=google.com; s=arc-20160816;
        b=I2X0S0+tBO5AHPmYrX54+q8bWVUSZDKt4S578cdm48jbts3JT8fyX6Fqq3ki4p8ZgN
         6qnHNkpEx46H6fPN4vBUBrGftA1QcyGj82PcpMigtfFmWv+9KDw5DdDR13JZbkbs78H5
         P+VeOahFd8lWDRvjJJ/N7N6PJAYkWOQQr/72gpl4YzPy2GlLGyVK/aA0c1FmCZ4ySgWC
         8Y6HMryVJmqHrYsvW/+0yGtgAaMAbxVSLXR1HU8skJH3LZ5Lrq6tNtadT0zs00izn3/b
         KhlrG65XVQe9XIaoz9PdvKr4kuakuuZGrJWVn3TFOPZpM6OERqp3czuISwIC0ZlcQFhu
         G/1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7TMFvZKLJOZ++lndpfnLzBIkaRUvi+PG5q16fpQqyeM=;
        b=eix359CH5jZIwyqXbuRlTccVMB2BEbdpPKyMt+7A0Y+LfuXspx+8hJ4lEsv/R4Bo3B
         gRyOrcBHufKKSHQcgaLHuPxO6ij3JP8rspdPBilqr1z/YMCjlZ0xFrljTvSzYGC4qEXX
         9NF/vUs2dzAgxbq3I8uqmkbqTVnYy8cDmhc+3EK7bQx/936IEgVg6SzL27Uw77CgXc1D
         L9RAQXUlEm07+OcMMgdikZTMXweLuyXAl8ElALJyrCw6Qf3tLrB1uSISGJWg+XvPfbOV
         2ZJB4DaS7jUMnUVGGvfSyk6MHMxIdXeNGhU7/inleqx5L9lNRayEU+KnBlEYPK17ftMK
         5uCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=QxfzrkA9;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id 26si911128lfr.13.2020.11.18.13.38.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 13:38:45 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Received: by mail-ej1-x62f.google.com with SMTP id w13so4835614eju.13
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 13:38:45 -0800 (PST)
X-Received: by 2002:a17:906:c20f:: with SMTP id d15mr25411817ejz.341.1605735525371;
 Wed, 18 Nov 2020 13:38:45 -0800 (PST)
MIME-Version: 1.0
References: <202011182008.u7jsMtBl-lkp@intel.com> <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
 <CAKwvOdnJYhs1vO8QmfPBdd107JRGfBQXTipCOZnaHe0=qSi0dQ@mail.gmail.com> <f67e234f-9ade-fb8e-1677-d2d92fb07f23@infradead.org>
In-Reply-To: <f67e234f-9ade-fb8e-1677-d2d92fb07f23@infradead.org>
From: Dan Williams <dan.j.williams@intel.com>
Date: Wed, 18 Nov 2020 13:38:34 -0800
Message-ID: <CAPcyv4hrjj45kn9ep1mAAaX6vtA2+5x_67V-Da0kp7bO3HVa=g@mail.gmail.com>
Subject: Re: [linux-next:master 5868/6773] arch/powerpc/mm/mem.c:91:12:
 warning: no previous prototype for function 'create_section_mapping'
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=QxfzrkA9;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Nov 18, 2020 at 1:20 PM Randy Dunlap <rdunlap@infradead.org> wrote:
[..]
> Yes, so with gcc, that gave me something like 109 missing prototype
> warnings -- including one for 'create_section_mapping'.

You see those with this [1] applied? I don't see those warnings
anymore with gcc-10.2.0 and that patch.

[1]: http://lore.kernel.org/r/160558386174.2948926.2740149041249041764.stgit@dwillia2-desk3.amr.corp.intel.com

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAPcyv4hrjj45kn9ep1mAAaX6vtA2%2B5x_67V-Da0kp7bO3HVa%3Dg%40mail.gmail.com.
