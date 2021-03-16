Return-Path: <clang-built-linux+bncBCTYRDEG7MGBB66IYSBAMGQEHC4T7EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7108A33E098
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 22:34:52 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id d15sf26181170qvn.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 14:34:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615930491; cv=pass;
        d=google.com; s=arc-20160816;
        b=G2CENCF2DBHY2otQ7nZlF0IBL/5v1d+i9DEjX0aMttfW64kHQelSy4jFQ/O8CN5Gdo
         b8bhDEIPhx3b7iF4WUJ1K3LEt093YUH9JiJHtJP/93ELFuzi8mYsQyOdzSrt/iD1R9wi
         FvWZklH9/GLoRtXZexXLh62GsXkzWzd+D7YGUrmEb130m0tWwFAUiK66OA7n6XegTXvU
         RUlcWFh5UvSbBFmmVY7S0hKFQiK4ubrvXzpXwyDh2nWQMVu+Y+b7yI28Alqe0c17TOVi
         5T0ISHojLFNB43UCiEI4X1ndHVYES7l/350F5FDiIA5cc7fXIZIoNF2ZAQjymEGUD1OQ
         d1lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=z5EbWjablGTx/77E8YqNHdHMOL5RpNxgB52VYJtRFig=;
        b=QEav7M10UTEzbTw56+fZFBrUU/yDfEo2BqSA0iq1uBzbxhQilBCNiTni9PFL1Kk4Dv
         2mSKveUtKXeRxNTcbnwQI/g+hsNHiSZAvD5nrnEpE+ABtgqrWvC+Rv26HuAPHt+KCqti
         TE/gjbwbe6QYlvifQwiMBXPt00gtLmGyPurcRHJRmzmBNgyN4h11ggEwnXf7H8EZDck1
         QP/bftE0wwD6JA3NHrVpdkyrBNksmEYV0gUxulNVvY+VBt7m6SS2SICfwASDQcGfhKBh
         TUA1UTYGy5O+Lv1dlun1SFRe+A6DOIDL/EoFQFi0RnpFN9lpYRMdZecwhAgvYXpBTPNh
         SKDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OmDzd/AO";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5EbWjablGTx/77E8YqNHdHMOL5RpNxgB52VYJtRFig=;
        b=N4ELtmxAVKa081qyJ5pzgs/9sujhXnapZwwZLl+hz9zkPbsTXPcObmmdSOHmIM+ah1
         aWqYUudnPbw2GHaZnQrqjEY1fPnRyV+5KhvwIxEsiua1UuWLAmBB+GXPrXzsqLbKI32x
         zwBHe497hsdvY9SLGZL+1Xdf1HWZUwOOhXy0gH3Ybm9k4FKNsWL48C4LmsL1ZBh7LeHR
         0ANMqjfWHb16W8jPO91XFyFtxJeVTKDPC6r2xRw85x1I4qu75k+uSz6YO33ro7MUIvsc
         MMSDPHk2YQOkQx5YqSnUMu0tZKddzMinFkmxkWHSxiQsDK71L6oGjFjDVWs181ZQ1O56
         1Hhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5EbWjablGTx/77E8YqNHdHMOL5RpNxgB52VYJtRFig=;
        b=skNMeWunm+DJrX/6ciK8XV3D6rmEzCw7xs0YAiybdHv6QVxm0dwXSGeT2QctgXR2rx
         FdzknWl/AG8jnGySnKE4RvU/g/4R0kPr8isVnBhW1tPZx0V7iKjOZurjJn51Psd1y7QH
         shFSuVdUq+qFcJsdIKdwwlw5UP+ea6wD3ZwqInOelKf150wG3iTACZmNTvE5FggJY7fe
         qN1fOu2jT5la5YwgkBWWZBh9QyYg0h/sIKqD0Pwd47AFrxgBblTp/p3qbOEJ8ud5DZTY
         xgTY07xw2bcAa6hI+GrK0LR05S86qD9hi5pmS9t4fyTaDKocHBPgKo0dQmQLnYIBMqUM
         ch2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=z5EbWjablGTx/77E8YqNHdHMOL5RpNxgB52VYJtRFig=;
        b=DUkywQKOyFQhO3MjsmhmHIneQ1yPAjg9GkF2ddfLwVN7V8CuxqeA4/zozoA154hhci
         2J2BchMnSePQ8XZtf93J7RsYIvTQSOsy5HQYcfaNWjFSEXyUZLvGmKWnU7QiC2e99hNw
         K1Ry05x/JCwMW9xwSLdrXP+ZjhrC4e2s6gHzQM4jP3nwz2+9kz8Z7I4cpRCFH3I/r5dQ
         1gGEBO0KIJlLCITKG6UVnkySZPVCSI7BOI/uCBl8z8OLpy+nXaJ3s5GzUqaOWTUDtuSp
         HdkTy/kY8u7Fe7X52VYdodp4DH34ZlXdLPPHEh+TU3ZL2hzj/Iu1d+dtWqC2fqGGJ4on
         GnFA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Nfu3Ppen6q2XEakVHQMHD6DdD9a6Luc0YWocbdgfPFz94b77W
	aMawPOevGgQ78gajZ+bSnkI=
X-Google-Smtp-Source: ABdhPJwJKBCbgxmBlKmipEt3ZRQRpa7MlVCkXGfsWzJwn+3asDRzts61tVa5CX7rPyRoyqkpLZACig==
X-Received: by 2002:aed:2c22:: with SMTP id f31mr825866qtd.219.1615930491604;
        Tue, 16 Mar 2021 14:34:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:9c0e:: with SMTP id v14ls5596141qve.9.gmail; Tue, 16 Mar
 2021 14:34:51 -0700 (PDT)
X-Received: by 2002:ad4:5144:: with SMTP id g4mr2022925qvq.26.1615930491244;
        Tue, 16 Mar 2021 14:34:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615930491; cv=none;
        d=google.com; s=arc-20160816;
        b=HPjHz0JI2eoYw3oxJkzCnwY7R/rtFURqhda7nR7fL6XsgVxuoy+VgIyk/TVpIAhoLa
         W6iaCEj9XptSh/eF63OWDmzjo6iWU0Sfb5qBje9/obBy23hPiOlaqUON5cCwEQ0OTUvu
         Dtz6EKVGSH2eeWHZ/FLNWpsPxHNigtyK2OWdJkDjMLYStsw2B/NKvn+duUBoCWbrfBqH
         mkdkGQa5dBViNU+DeIamEjLwlSgIjU10hwrFvcmDyPgKiEL8mxIlnEQbRbmdLtLc/Kq4
         29unq7vcBs9m9ROMxSm7DJkFF/baEKY2PDCcPdojXqlPbrnXDjObiNWsTKUE+slwis8m
         jDng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HJLtePqUNhM4zQSXLUYUwpOWeYPKdhMjC6eTeYNKtlA=;
        b=UqTmKqplIFZLLfRnIeFDIuYRB5JvQmvVl/hby1zNh0Ji6zVNCK3SdkjpsNRYtrnv84
         VN5MCs3vfaplE9sHKEz+7646klUE8LYvojTJNOenfMgT5YSmnx5VbRfw84Hdtl+rJa/F
         IZ0No+3FdCxZD04EhqyBCU8skNxqb7hrfF6tIy7TAQZ8v9DFajOuD4ReGguUCK/RJx9I
         oVwsyGjtuFkXDA1uNBGmsqA+r8wuUIUKVj0fRD4Or6MeIuphY5SjyxTp643gwREANx+T
         c4ykil0NMyhuQorKhyKd4DJDysFD7mWLw+AvmbkcQkVEZWu8iX9eu/VpgTvrj3V9jLBW
         HmtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="OmDzd/AO";
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com. [2607:f8b0:4864:20::b29])
        by gmr-mx.google.com with ESMTPS id o8si837615qtm.5.2021.03.16.14.34.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 14:34:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::b29 as permitted sender) client-ip=2607:f8b0:4864:20::b29;
Received: by mail-yb1-xb29.google.com with SMTP id p186so38414954ybg.2
        for <clang-built-linux@googlegroups.com>; Tue, 16 Mar 2021 14:34:51 -0700 (PDT)
X-Received: by 2002:a25:3d46:: with SMTP id k67mr1237486yba.510.1615930490897;
 Tue, 16 Mar 2021 14:34:50 -0700 (PDT)
MIME-Version: 1.0
References: <20210314173839.457768-1-pctammela@gmail.com> <5083f82b-39fc-9d46-bcd0-3a6be2fc7f98@iogearbox.net>
In-Reply-To: <5083f82b-39fc-9d46-bcd0-3a6be2fc7f98@iogearbox.net>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Tue, 16 Mar 2021 14:34:40 -0700
Message-ID: <CAEf4Bza3vs3P0+zua5j8kJwCDXeiA3Up+t8f58AqswceHca7cA@mail.gmail.com>
Subject: Re: [PATCH] libbpf: avoid inline hint definition from 'linux/stddef.h'
To: Daniel Borkmann <daniel@iogearbox.net>
Cc: Pedro Tammela <pctammela@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="OmDzd/AO";       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::b29 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Tue, Mar 16, 2021 at 2:01 PM Daniel Borkmann <daniel@iogearbox.net> wrote:
>
> On 3/14/21 6:38 PM, Pedro Tammela wrote:
> > Linux headers might pull 'linux/stddef.h' which defines
> > '__always_inline' as the following:
> >
> >     #ifndef __always_inline
> >     #define __always_inline __inline__
> >     #endif
> >
> > This becomes an issue if the program picks up the 'linux/stddef.h'
> > definition as the macro now just hints inline to clang.
>
> How did the program end up including linux/stddef.h ? Would be good to
> also have some more details on how we got here for the commit desc.

It's an UAPI header, so why not? Is there anything special about
stddef.h that makes it unsuitable to be included?

>
> > This change now enforces the proper definition for BPF programs
> > regardless of the include order.
> >
> > Signed-off-by: Pedro Tammela <pctammela@gmail.com>
> > ---
> >   tools/lib/bpf/bpf_helpers.h | 7 +++++--
> >   1 file changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/tools/lib/bpf/bpf_helpers.h b/tools/lib/bpf/bpf_helpers.h
> > index ae6c975e0b87..5fa483c0b508 100644
> > --- a/tools/lib/bpf/bpf_helpers.h
> > +++ b/tools/lib/bpf/bpf_helpers.h
> > @@ -29,9 +29,12 @@
> >    */
> >   #define SEC(NAME) __attribute__((section(NAME), used))
> >
> > -#ifndef __always_inline
> > +/*
> > + * Avoid 'linux/stddef.h' definition of '__always_inline'.
> > + */
>
> I think the comment should have more details on 'why' we undef it as in
> few months looking at it again, the next question to dig into would be
> what was wrong with linux/stddef.h. Providing a better rationale would
> be nice for readers here.

So for whatever reason commit bot didn't send notification, but I've
already landed this yesterday. To me, with #undef + #define it's
pretty clear that we "force-define" __always_inline exactly how we
want it, but we can certainly add clarifying comment in the follow up,
if you think it's needed.

>
> > +#undef __always_inline
> >   #define __always_inline inline __attribute__((always_inline))
> > -#endif
> > +
> >   #ifndef __noinline
> >   #define __noinline __attribute__((noinline))
> >   #endif
> >
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4Bza3vs3P0%2Bzua5j8kJwCDXeiA3Up%2Bt8f58AqswceHca7cA%40mail.gmail.com.
