Return-Path: <clang-built-linux+bncBCUY5FXDWACRBOM4SP6QKGQE6UMWKZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 3500A2A8E31
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 05:16:58 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id q1sf1200800wrn.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 20:16:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604636218; cv=pass;
        d=google.com; s=arc-20160816;
        b=pY+p8CujuWZzcvALda0fSjAEPMFAswX393XWTtZiLHkvu97gBhh5f2a/WWMpr5KSJl
         KNNhoWu9UlTG/XcO6qzjrEA7+A/tKE/rsMVOmPL6pmm9Zle7BdaOt2mlV1+V7MEl2TN+
         MChG7/cdOlEWUs4OThaa5jEqFmahwwaI2GONUckvgy/KHk0stCCGKoMXOAfO9G7Q59li
         jNmYHq4W9/GYl+Z1v7Jy2CMxhwCgYQwkU2+A4omm9RW55O6OgeGMJs2WSYV5wFlzjdNT
         ndWPcYiVtCjcST6IgljGEaKCeLdJt0DFMHXECCzVbrluGC9AL5oMqifdWBt9pN3Mhlxn
         S69w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=AX6rjNjKp++cP/H7v6ElbPKSq99+YU1YtfG8i/jiKMs=;
        b=LEvBiyaIYEo9AeCQGsYcLYwiwOsJwivprj/RAzhj0GQA8e1a2vRKMj+D9ACzlQwGSl
         jKdpcgWJYXDz/8SH7wXb05spaG0aYtneOvnndzbVpNKG1YUYgSC4WZwo+W73CWx76gMp
         7bYoOt0GQ1X6EAiqVvrwKQGRzpTANK8svK4EWeeVOX3s50nF+mV6r71niLCZoduoHNnI
         taIlP05rjbTIU0Y8Ug7hRhdvzcdu3YDjaTaYDplFlpS6Hh6i1mtWHnJ3K8GgRRVKZio/
         QTOD0CcbNRm8v4W1T2fuRN4oYw9Nh6jbLXsz67JAV/ShMEmPHTjwKKIqm9XxlhYWRYjH
         PVog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sINzjgHv;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AX6rjNjKp++cP/H7v6ElbPKSq99+YU1YtfG8i/jiKMs=;
        b=fbj3etxfgjUf8PWCoiSwbZKs6mzYOdnc7ua5IhFS//gFSKZnVPF7OdMLbOITYu6GUi
         45ItEnnDDA2gftRrlUxtvcCFg4hsEWrpYCZgc6cGOIPzMuDT9PwZp4Z3X2jmM9cUE5gW
         ntAQpmSJGnyPzM9R7OflifMMYfE7Elr9llOwToVlyrB7eJZfayrQZbByPSN/vDh1/gcF
         pNMLFUnHHvZ1kKQSU1OTbpYVt6HE2r9BTjMZKpYnJEQzf/5DkvvwHSEeRgTGdNCsOB/s
         XaZvSn3RpgoknXSM2Nh2mzdhGiB6jZ6doLR+EjZDHiRIviEUqOZBlTCDGakibv9+AM4m
         1U4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AX6rjNjKp++cP/H7v6ElbPKSq99+YU1YtfG8i/jiKMs=;
        b=JZFGhphV/pwXXpBVBhOUf0gXWVoV7myqa07+uJaI7fNlJxblMEG5wYFQ/8xHmhd4/Z
         pKPpP4F82iCedbAqaTm7eo8y6QLPIhCyaO7pAFtqaDA9fuAQkGFsTBqSktxhh7jLGIMO
         mYb+l+efVykLz2Zp5dr6hwANrXlN9O2ztRlYUdMm2HDEFPy4tCA3dLw2BHdq0B4Zt0wJ
         Wtb3/CR44SeiLNyX4EqUA3he85aFNAgFj6tiDCGZzCHNwn3VT+iQezJGZVZRkdZm2IAC
         9tp/RRRe0RGQS2rGmgbTHNGoFMay4jUIBAKa68aGToAr4hpMattYL1xH9mOjgyVbs+1C
         F32w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AX6rjNjKp++cP/H7v6ElbPKSq99+YU1YtfG8i/jiKMs=;
        b=fsRmT1PizqmON+R/PXegGLHfb5wSJzBXyDcoY+h5kogFO1ewN8Z+PpXimgsjfO9wGi
         eFcgI2EM+IFS8h62K6MkKlBvCUcyQtRhPXcY/1s/rL96Pev4eit+L0rPNo/FTPB0XdAz
         MhU0euKwwm7lSInCzuagdyqWK1KJR2L3neqvCDChb6HjA9A565AsVuWHsisIM6vXcU5k
         qJ+kJ/UPBOjzrIOam68Pc81PYN4OfxEKVD/lkrDS8VTjVTmPZVgYWOxlbtSgokJF9/3s
         a5WZdIJE1zJm+86hi3KXFTRzNf2+TvFhin/vE6rDOWvDtsE6HydjWreAjg8a91tJrWEM
         UtNA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I6WPt/KrUYeVJgf5yBlJEu+2jbmentUPhAs6t1Xw8kprBKwih
	ML4zaSfgRPdsw/+imArBJA8=
X-Google-Smtp-Source: ABdhPJymCuz54BF1+n5lHdfh1aJ9LBYKeyKRpo6rVgVDbNc7ifq9RtazVpkDkYDBufK46OtV1c+f9Q==
X-Received: by 2002:adf:9d44:: with SMTP id o4mr355234wre.229.1604636217913;
        Thu, 05 Nov 2020 20:16:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:cd8c:: with SMTP id q12ls488691wrj.0.gmail; Thu, 05 Nov
 2020 20:16:57 -0800 (PST)
X-Received: by 2002:a5d:4f07:: with SMTP id c7mr373616wru.296.1604636216987;
        Thu, 05 Nov 2020 20:16:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604636216; cv=none;
        d=google.com; s=arc-20160816;
        b=XMaSyjvq0dBZgUSfXK6HkKb6mjvX+kmb/FITfPGP/gexuGBkLLpjU4IX2c0s65ExbY
         xdJB0ALlrmoVzTeP9iw1LtzimkmLzXt2yrDUbqDeiqyt/ctNLd8GEX/djA9inVmvKk28
         YtqozIgKWIoiAlC59UfxMzuP82CNxyuZpRAp4UumdWu1/tY99UDQ0Lbhff/BfoW/pVMr
         s5xcbrfA8DpWA0Plx9s07xkTREMTwpkvshsR7cd01q8nXyloW6NdzUfT+JTt1fPFwamy
         ehaXCNmmUAZJ/pZV3h/M7jUc6xDKGcuBzL2I4/p4+n0Z/JVm6gtlb65WsVYm4XuHQMw2
         z9fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AoocLBBvUJrI0bLOOZTh8xYoi/tHgAN+ua/bhX68FM8=;
        b=rvhj3nsancJgfk5nstq5OfRJ7IgXctHvrv7qLztCsliCs9TKN9ZPe9AITRuEIwiYzY
         F/tRzo6xTZ7TXPgkJymOuyaDbLbHl+QiB8ZxVytl3DwiPAe4sA1z3p66wRhdK6+bB1FQ
         i7BP0jpsoJPcNnk/ag9jnSRVx2kR0RQxa2LAZ+bldOmLdG6fX9/oVp8HXmJIW3sZmjxS
         Ze7KuARGBzq6TFKbI+zTZjtKyqpjRVMRhlBnwV8x4kVXMRHTDajvrxUspZQY/vN6JMb9
         DYswe6tBb6LqEmH6SSU4b606EGidu9CSPP2i9bBKe9lT7uUjD0+hr1JGo+Ee6tov3vo7
         +YeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sINzjgHv;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id f131si4254wme.1.2020.11.05.20.16.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Nov 2020 20:16:56 -0800 (PST)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id v19so3914989lji.5
        for <clang-built-linux@googlegroups.com>; Thu, 05 Nov 2020 20:16:56 -0800 (PST)
X-Received: by 2002:a2e:9094:: with SMTP id l20mr35819ljg.290.1604636216488;
 Thu, 05 Nov 2020 20:16:56 -0800 (PST)
MIME-Version: 1.0
References: <20201104191052.390657-1-ndesaulniers@google.com>
In-Reply-To: <20201104191052.390657-1-ndesaulniers@google.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Thu, 5 Nov 2020 20:16:44 -0800
Message-ID: <CAADnVQL_mP7HNz1n+=S7Tjk8f7efm3_w5+VQVptD2y7Wts_Mig@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, stable <stable@vger.kernel.org>, 
	Chen Yu <yu.chen.surf@gmail.com>, Jarkko Sakkinen <jarkko@kernel.org>, 
	Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Randy Dunlap <rdunlap@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sINzjgHv;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
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

On Wed, Nov 4, 2020 at 11:11 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> bpftrace parses the kernel headers and uses Clang under the hood. Remove
> the version check when __BPF_TRACING__ is defined (as bpftrace does) so
> that this tool can continue to parse kernel headers, even with older
> clang sources.
>
> Cc: <stable@vger.kernel.org>
> Fixes: commit 1f7a44f63e6c ("compiler-clang: add build check for clang 10.0.1")
> Reported-by: Chen Yu <yu.chen.surf@gmail.com>
> Reported-by: Jarkko Sakkinen <jarkko@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  include/linux/compiler-clang.h | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> index dd7233c48bf3..98cff1b4b088 100644
> --- a/include/linux/compiler-clang.h
> +++ b/include/linux/compiler-clang.h
> @@ -8,8 +8,10 @@
>                      + __clang_patchlevel__)
>
>  #if CLANG_VERSION < 100001
> +#ifndef __BPF_TRACING__
>  # error Sorry, your version of Clang is too old - please use 10.0.1 or newer.
>  #endif
> +#endif

I can take it through the bpf tree if no one objects.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQL_mP7HNz1n%2B%3DS7Tjk8f7efm3_w5%2BVQVptD2y7Wts_Mig%40mail.gmail.com.
