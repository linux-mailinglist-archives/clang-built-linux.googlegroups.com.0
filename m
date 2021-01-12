Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBA5N7D7QKGQE2OHZLII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5162F3BDE
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 22:37:08 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id i16sf12375oos.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 13:37:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610487427; cv=pass;
        d=google.com; s=arc-20160816;
        b=mmgzpoiZPO5l+DeSXj5D5/w9vjv9YBRNFUdh0659K31nf/N++tj1U3wFqrlkXQTydI
         BeL5KreqIVyuztrSvD6ZVeKSCXaQd3pcC4nZSTCP2fA7UnnFcEQlwtzflyo+UbM4RPvy
         6Jmh/US7I1OB0IQlH0Tyjps7n2tqLWPHSo1fKni2JKm65YBHo4ouMz57wlGLCuRyYJeK
         Gv1j+06NbkPP44I44GTqjGu42AmeNGBM7825l6jrgAlg+HjLr+iypwqXYU2k7eolYgOi
         GvhjMb5nUtsYleNjeQZaDbJ3CvLIUHH2EtwamZT8kHu7qvGUFKmHtptQQIOmnCCCdEoo
         EiGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=rrUMWxg54Xq2BT7gt5Le+JlbwmcDHvB3HL+lZNwVyhI=;
        b=F7nX5/lTDW8hK6H0IsEnhTP7jUXegyu8vHBphqZELQg7amB07pNgXDrUA2GWtlZCPu
         1nmQ222cyCMaUzGPhYV1t+P41bWu8BZU4NPpWAqFILI1HcHJOjgamFEZzyCcPU+016lh
         BSP3Vug7hvJfC/5+XSLShuNC3o32+40wzN/hjMMinRc2UCAvavVy1UXoN1HWlS6iu5z8
         Riqaofm+SgzxC1CK7aJjN+nlq3BtTp8pnYxGryEGKmqznSpJ4fSWvSWkyMhE4X9z+BwO
         4ujT1qclEz9DBMwObGYBww7r9zg5CBn+4BFKnIVppDYLghjcXhQrLEkNUitIrn71/7DQ
         +xPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iaw0Kylz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rrUMWxg54Xq2BT7gt5Le+JlbwmcDHvB3HL+lZNwVyhI=;
        b=dwyhdlUWkurtORqBXKZImUzOFcV/jFlruCVInzcfVJ5qSlpvHAiJAsEfN0DdUKi3Tk
         y6td92ew8TPPANqDZarpJFsPZ4pvOfMsIgQHkpm0b+43xvP/965WnKVRoLjv6HYWs19D
         mCWOg1XtBnY5wrMc7rh8MMrMaVrsoGAt30YWAZ/lh/GeJn1b5AzvJ7ioj2jnAj6FLKN6
         fHWQ8cbmJdHfScui3QGd//MmM3S3Vof0w39S+z0f9h4LSMJgE9nW2IrSvlssJVmgh+nh
         gKLyUYQPxms/zn3QDF/88Qg2YA3/Unlp6aGBHpnPub76aJXji+i68P6fXDpdj/F+eSlb
         7tVw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rrUMWxg54Xq2BT7gt5Le+JlbwmcDHvB3HL+lZNwVyhI=;
        b=RmNN/wabw4l6cwjy5Z3PdRGQdjrjvITSK/7qJuFyB5NpiY2G+327NancdteVt9p9Oi
         +VLQMNcMpzs/dzEfm3rBuQ1bxKDqweIcALAc61wlw5J9R6D2VeJumfo7+RwP5Sntz8rW
         xLlvptVmENq5W6GwVkrwvZGoDPMnWZSIg9ulj4EmCrxccy5Pe2svAWSm8Dlt00/Dt323
         5UCoRD/BIEPv/AosrCF7O5AoUCYgalcrsnS7P8D2YtTBQo4Zw2J8ZVCbk4rClYKDA7fJ
         Owa6yXqCK6iabD4V6cmoYNhCJ6iWvdhQaec1jziDw20TmhDiZpY/Bx4x+BqHPfL4vH3Y
         4AIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rrUMWxg54Xq2BT7gt5Le+JlbwmcDHvB3HL+lZNwVyhI=;
        b=mpmWF+luihzwGxyPx767qDlNod/tQCHTCPBI5xPsXVUZ01TA8kBRUdQq3A0dgP9f2r
         3KchM2af0LAU/7W9jHlOps/v69Xqj+VksQ8ys/YzjqXUZJdrsxWw2uqZmOscTQi+mNpN
         OeldfUtOvSs9o3vW5MsFzj9ESszF8qAn4bo3YiNEwZy6H8MEKvQNwu9fDtHTMLf/T2tM
         CICuht+LuyPmS6+qYbVsCGvQzlzy6HBO7RpvIdsm49JeoYCnT3mw7ZxJ3MasUg5g19Dg
         ZtMJmTpLLU6Ruosv/yvz43o7/xv4JV3U/xJV+i+QiT9O+964s26fFQMBQl2BoRCs5ZYC
         ui2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531r/npEsHmrPK4xKM0XPXVEDn9P1TpjOqzyUg1RB5fVpt85W8lG
	43ZU8eFt4kb433DLOJKTEhg=
X-Google-Smtp-Source: ABdhPJzzx7mB65cDgBIgjJFEhS1lXoEMr0kL84YWlFwquqZwskWmYrkoTphmB5RBzMGXnDWwqUmvNg==
X-Received: by 2002:a05:6808:650:: with SMTP id z16mr734581oih.50.1610487427141;
        Tue, 12 Jan 2021 13:37:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:758a:: with SMTP id q132ls10683oic.4.gmail; Tue, 12 Jan
 2021 13:37:06 -0800 (PST)
X-Received: by 2002:aca:4892:: with SMTP id v140mr727313oia.71.1610487426724;
        Tue, 12 Jan 2021 13:37:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610487426; cv=none;
        d=google.com; s=arc-20160816;
        b=dnmc70qjBCqX6lAGK69+Oo9o1fuVjSbo6AVE8Q1SmkGcUwHqmjRinkG19NU/JmfG9j
         kfJ+gdWH7gg6j7/NoZIZuMEpJWLkHmHgeCM7RmllJMWWu5gxXFa6Lxo22y2kbO7yLJu4
         cBHxDjklHg5dva7m+QNsdW1DwIlTFDLUFGpPO55hFQIZTVFO8eY0oRE6OIOFWTIAwqkl
         c/8DZsHR/VZvbRu4wEpCVsbscMiBN8bKUwA7mZz2SLV77ELDuQWtYbTUE+jMzucYxYl6
         pTguNdtyj/hXYMtH1w/xN7BbvnkRNNPlJCWJhJXgs9Mdqq05OImnHVFPQ+TYbvhU/Kwl
         oUMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MC7BSr6d4yh4fJNH+ilIdGBl8uQ03KTfoLip01VhE/8=;
        b=mXjxnP2trc7hU/9mjFV9fm+Ej88OX3Tf+9uKjX3Fe+DjXWpUJXYbCXvDumxhQARy76
         6bCJi72HAcpbbyYmGojsaWboIF7yesk5yvlrhMT/nhVJNoZh5VwKIBP9hweaBEtqYPda
         6fO0zCwVf41aVmGWcaehoJTPpw7l8gaz2vPcqvfCFIDsQOMHwVRATymFbqt4yeEslUMh
         vvbIJsZHdPBPFGUTsqfRz7hKo/dfshc7NQHMBB6lqWyiz89juziKtInx+AS0QoYy9ZhE
         XxwJ/D5tqalEYWySHwFyVo6HV8MAfrXy/G5+S9crU5iRUkoerYESRdL44W0fUACBMha/
         9Ycw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iaw0Kylz;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com. [2607:f8b0:4864:20::72a])
        by gmr-mx.google.com with ESMTPS id f7si331386otf.3.2021.01.12.13.37.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 13:37:06 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72a as permitted sender) client-ip=2607:f8b0:4864:20::72a;
Received: by mail-qk1-x72a.google.com with SMTP id b64so3288623qkc.12
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 13:37:06 -0800 (PST)
X-Received: by 2002:a37:a2d1:: with SMTP id l200mr1562906qke.445.1610487426123;
        Tue, 12 Jan 2021 13:37:06 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id b11sm1929244qtc.5.2021.01.12.13.37.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 13:37:05 -0800 (PST)
Date: Tue, 12 Jan 2021 14:37:03 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
Message-ID: <20210112213703.GA1376568@ubuntu-m3-large-x86>
References: <20210112205542.1375847-1-natechancellor@gmail.com>
 <CAKwvOd=yrVKBn9TN2cP8SiB7A8=c2g41PyodKGJu+xEQwAmnDA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=yrVKBn9TN2cP8SiB7A8=c2g41PyodKGJu+xEQwAmnDA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iaw0Kylz;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72a as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 12, 2021 at 01:15:42PM -0800, Nick Desaulniers wrote:
> On Tue, Jan 12, 2021 at 12:55 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > When building ARCH=mips 32r2el_defconfig with CONFIG_UBSAN_ALIGNMENT:
> >
> > ld.lld: error: undefined symbol: __ubsan_handle_alignment_assumption
> > >>> referenced by slab.h:557 (include/linux/slab.h:557)
> > >>>               main.o:(do_initcalls) in archive init/built-in.a
> > >>> referenced by slab.h:448 (include/linux/slab.h:448)
> > >>>               do_mounts_rd.o:(rd_load_image) in archive init/built-in.a
> > >>> referenced by slab.h:448 (include/linux/slab.h:448)
> > >>>               do_mounts_rd.o:(identify_ramdisk_image) in archive init/built-in.a
> > >>> referenced 1579 more times
> >
> > Implement this for the kernel based on LLVM's
> > handleAlignmentAssumptionImpl because the kernel is not linked against
> > the compiler runtime.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1245
> > Link: https://github.com/llvm/llvm-project/blob/llvmorg-11.0.1/compiler-rt/lib/ubsan/ubsan_handlers.cpp#L151-L190
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  lib/ubsan.c | 28 ++++++++++++++++++++++++++++
> >  lib/ubsan.h |  6 ++++++
> >  2 files changed, 34 insertions(+)
> >
> > diff --git a/lib/ubsan.c b/lib/ubsan.c
> > index 3e3352f3d0da..a1e6cc9993f8 100644
> > --- a/lib/ubsan.c
> > +++ b/lib/ubsan.c
> > @@ -427,3 +427,31 @@ void __ubsan_handle_load_invalid_value(void *_data, void *val)
> >         ubsan_epilogue();
> >  }
> >  EXPORT_SYMBOL(__ubsan_handle_load_invalid_value);
> > +
> > +void __ubsan_handle_alignment_assumption(void *_data, unsigned long ptr,
> > +                                        unsigned long align,
> > +                                        unsigned long offset)
> > +{
> > +       struct alignment_assumption_data *data = _data;
> > +       unsigned long real_ptr;
> > +
> > +       if (suppress_report(&data->location))
> > +               return;
> > +
> > +       ubsan_prologue(&data->location, "alignment-assumption");
> > +
> > +       if (offset)
> > +               pr_err("assumption of %lu byte alignment (with offset of %lu byte) for pointer of type %s failed",
> > +                      align, offset, data->type->type_name);
> > +       else
> > +               pr_err("assumption of %lu byte alignment for pointer of type %s failed",
> > +                      align, data->type->type_name);
> > +
> > +       real_ptr = ptr - offset;
> > +       pr_err("%saddress is %lu aligned, misalignment offset is %lu bytes",
> > +              offset ? "offset " : "", BIT(ffs(real_ptr)),
> 
> if real_ptr is an unsigned long, do we want to use `__ffs(real_ptr) +
> 1` here rather than ffs which takes an int?  It seems the kernel is
> missing a definition of ffsl. :(

Why the + 1? I think if we use __ffs (which it seems like we should), I
think that needs to become

BIT(real_ptr ? __ffs(real_ptr) : 0)

I have made that change locally and will send it for v2 in a day or so
to give Kees some time to check it out.

Thanks for the review!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210112213703.GA1376568%40ubuntu-m3-large-x86.
