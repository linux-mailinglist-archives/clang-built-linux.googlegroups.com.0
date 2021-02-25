Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB6W732AQMGQEBCPQROI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA62325141
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 15:11:08 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id c37sf3061648otu.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 06:11:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614262268; cv=pass;
        d=google.com; s=arc-20160816;
        b=hhG1vHqtcNw9VVbQeHjPy/7S1Iz/VO88AjdMtPKnK5nTqUyvQRUKsFqVqetVZO2wqT
         P87fUuqSEUfCtVzTwaEy/T8X8vC35CTYxlqMVEWYDSFbdQ0+QbnUdnbVv3xPNEmh7a7h
         4q7uIs156nPUD+UBfLVAOdLLQzcZi+4gRpM23iveonQOh2/Jk/mOnc/14D2etYpt3oKO
         JQZk629VHEyFQ6pzLmWaB/cEgfPoMVAKVt2dtEMJ4fvUzr7UBQud3H96TpGGbuUwUZ4z
         vdajs7KBqlM+izGlK4hQabSWmVsiVK8/wPWN7iPDVHPWTjpl9G6hy04h1+Hfwt4eaZ7e
         /D2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=zf/OjzqRcUJB4nlgGI19uVVaqkmHvILDhThQ0aHcl3A=;
        b=N8ZlfFeJFtmZe0A3rIutWvxBmRh8WJZa0eFMgQhkpvFAQl28/Px8sz05wAk4RcO5wQ
         hRNr4tQupvkiCZJ34MKAP80eZbqc0cyLz+C2JTAkGpB06281Cfz3l/1cT9vikGhfvH4e
         nJO2/E3+FIUwB99ZMdrWJaqTG8NaNRjQKVd54g8wSetbZonPCSbYx3S85Fw8CP2FuBwr
         tGFzcNK10+pxVApr0i035qv1rN6n2+XpHlgFb6/Akptfc7haKrP4qInTL1iKXoTYgrKp
         sMBp7GJFKbaRJIrzxCqyQHSa2GbEI9X4w1OranH88AK4Gyjr5YO7bK6jrBYvnM17x8xH
         O5eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j7dpRGIm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zf/OjzqRcUJB4nlgGI19uVVaqkmHvILDhThQ0aHcl3A=;
        b=UnD+aYH5Bvg6PNpjYqXziGUgDU2OxJ4r/GbfQuEuDZQzt36CsYoxenzwDbJ73IRM/X
         YasVesHDrF70F3KXYrXUf2fy6w13qpoTD+g21Alsy+ID39TlACOmx78qsifIDlfhLChh
         +Bw2g5JsizDztkgBHLS5Lc7fa1d7BDTEfDlVHGxj44plIyIQ7WWRJuG8F+lRomWawRt5
         wLNZmD+wuNKRel2b2GtMkM09I8aPu/2qzQrZj8b/+ZatBzO7D8s5R73bWFDR28u21PHT
         ttnaQdOgVPZExtpu8tv5l71+NXOHuM73+iKbqkqb8n7uJsN6D72XJxcneeP1y1R02Hxi
         UXdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zf/OjzqRcUJB4nlgGI19uVVaqkmHvILDhThQ0aHcl3A=;
        b=GhKNSO4hSwonir8+RBDMlt/olFzOBWi/44UpNLqjSRGGnJJh0oh0pYErEAiyFqiIFD
         lU0E+vDE0yASI7TDt0R+hUh0kxjBovhyYhEtg55jG5jJOTiuF7f4Gjl/8ZiNN5tjndyv
         oDoq1Xl4Ugja/rpFnvutnTvbMy+O2w0ty2BAsEmmty/ADQU3RYqp1ItBTptJKSCIGAAE
         9MPXk5ZoitETLHqZzc4kMKnCk1Fk7aG/IjAqOb+0kFmcgy6UX9AP7y2+WeGewNkkALRc
         M5GSCa8ZJxtlYQfLvV9j1KhjuQ51WHCA6RT1pN9ruSPGN6PFp9191fWkF6WNIcQR/sOY
         dpfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zf/OjzqRcUJB4nlgGI19uVVaqkmHvILDhThQ0aHcl3A=;
        b=RddQUe+lg3/PN+jaamgfL69WXRYLyANChE7UB/4nbH4SMClO9nhy/17LmyYFuV8j0u
         JuxIlXtvwp3+mmuWIToQurAWj1AylYDfab59S6tzbr2kDo3KU7YLu3OTwmVRLXtrS5on
         TXI3Qzo6Z4HpVUvn/4mjI3Je1r7uVoSKLTh+lqoMWPeovO3+qcoNRqlz0puJSnpJTxsp
         oR5qnpXRLuj5tQA6e6DGenkXuUC3H1imNwqVE8NDcx9ib4KhMbji6caMRVvrJ5VMRIBk
         UM7MnoGy8A21ysduqeKHwB1EvAT1dYHq4QESrJbUXh75rYoDzP/1cbKONTlkYeM51xd8
         pWJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LnBsFJ49BHabHY41ftQl4CEL8vxIFFO05O7JBubkC2YKp+TeM
	5/G05Cqnz3zXm10iniwUPYg=
X-Google-Smtp-Source: ABdhPJxRU3hIJ9SzExATHhwNwOGb1TcE9u7YFsgSU4tKbDwqcBXQmfabzYbhIYXU9u8w1vuw58V8ig==
X-Received: by 2002:a9d:6056:: with SMTP id v22mr2462422otj.248.1614262266879;
        Thu, 25 Feb 2021 06:11:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:e751:: with SMTP id n17ls396200oov.10.gmail; Thu, 25 Feb
 2021 06:11:06 -0800 (PST)
X-Received: by 2002:a05:6820:3c8:: with SMTP id s8mr322076ooj.49.1614262266549;
        Thu, 25 Feb 2021 06:11:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614262266; cv=none;
        d=google.com; s=arc-20160816;
        b=lCkQnsXp+gFMA2LSPzVd7K9Iixv4s+GyodRUEIVdCz7Hi61Ew1cNFBGEln/KzE+K9h
         M3bZPlmIBAMzOBXdrDGAlFSnkbS6Qa6qcwECHdZrRpBbuK1FI5WHSgTarMHcFVcT4Y62
         0VM7Q93jDmidn9vfJrgcgJSah636ZILasoeo3rUPl3eYOZvVXnDuAXaFwtslDXEM/9a6
         JWfUquK4yQ3xBjjjaqWbeVrUvE0/kO+JcvR9li+wgL0MtN/+toEUukYGMmytz3QfX+eA
         h5rxXowx8uIF2J0tKGqdoDkjQqAth6LqTvobNFB60rCwBbuKMx7Irfig3ZTKUpDWxRfF
         +BhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CZiFFUz7I/hnoLSl6sJz4NT7keQTlVgubX4KAPz89Rc=;
        b=apnEQ0zMA2qgsWvZcPDfMQEITfX29/vR85UKryWwSOdD4urBQ9Vqn2g/dBVlXAhmGx
         0Dq0jugfP9HuKlurw1apE8561a+c2v7c2fYLsu5FpdVds7vpHGnS5rQbCdLABl3MrqfU
         1ratGEr25WtnTQto2eKCi2Uw4B3+LfncSMCHro9V3WOVnN/VG+2I+pEBWNvV+jDYNYl4
         tHBf1FRgAE45PjsExEGpOq5XMPRj6hwZnWzclBaJqrkY44UKUjPKW2aTAB/IbvXOvo8S
         n4H1ov4xpOnD9/H0tOgqSUWcQWhlT91gK25yL+ZwKqu4uC1XxyDS+QkSJVBs772M4nKj
         ZlZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j7dpRGIm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd34.google.com (mail-io1-xd34.google.com. [2607:f8b0:4864:20::d34])
        by gmr-mx.google.com with ESMTPS id y26si497181ooy.1.2021.02.25.06.11.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 06:11:06 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34 as permitted sender) client-ip=2607:f8b0:4864:20::d34;
Received: by mail-io1-xd34.google.com with SMTP id f20so5963425ioo.10
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 06:11:06 -0800 (PST)
X-Received: by 2002:a05:6602:2299:: with SMTP id d25mr2699266iod.171.1614262266300;
 Thu, 25 Feb 2021 06:11:06 -0800 (PST)
MIME-Version: 1.0
References: <CA+icZUVOv7ZYWtNTKrVvPn_CZf-Q5c6EejkHKhA4ATt2AEHesw@mail.gmail.com>
 <20210225135339.77qokpo7xcb37ixe@treble> <20210225140623.wn5nj465rryvzyqe@treble>
In-Reply-To: <20210225140623.wn5nj465rryvzyqe@treble>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 25 Feb 2021 15:10:55 +0100
Message-ID: <CA+icZUX4BnsJ3-PmsR=w=iyLAriCr5bo8emfLWaf_pwZd2E6bA@mail.gmail.com>
Subject: Re: Josh's objtool-crypto Git with Clang-LTO/Clang-CFI
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=j7dpRGIm;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d34
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Feb 25, 2021 at 3:06 PM Josh Poimboeuf <jpoimboe@redhat.com> wrote:
>
> On Thu, Feb 25, 2021 at 07:53:42AM -0600, Josh Poimboeuf wrote:
> > On Thu, Feb 25, 2021 at 10:12:27AM +0100, Sedat Dilek wrote:
> > > $ grep 'warning: objtool:'  build-log_5.11.0-10201.2-amd64-clang13-cfi.txt | grep -v  '.text.__cfi_check_fail: unexpected end of section' | grep  'arch/x86/crypto'
> > > arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_2block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> > > arch/x86/crypto/chacha-x86_64.lto.o: warning: objtool: chacha_4block_xor_avx512vl() falls through to next function chacha_8block_xor_avx512vl()
> > >
> > > So the last objtool-warning is seen in both of my clang-lto and
> > > clang-cfi kernels.
> > >
> > > I have attached chacha-x86_64.* files (see attached tarball) if you
> > > want to inspect:
> >
> > Hm, for some reason I got no warnings with the attached file:
> >
> > $ tools/objtool/objtool check -mralf /tmp/x86-crypto-chacha-x86_64_5.11.0-10201.2-amd64-clang13-cfi/chacha-x86_64.lto.o
> > $
>
> I just remembered that the CFI branch has some new objtool changes.
>
> Sorry, I don't have time to look at the CFI stuff right now.  I still
> need to deal with the fallout of the LTO merge.
>

No problem.

As reported I see within Linux Git integrated clang-lto only the
x86-crypto objtool-warnings - fixed with your objtool-crypto work.

Thanks.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUX4BnsJ3-PmsR%3Dw%3DiyLAriCr5bo8emfLWaf_pwZd2E6bA%40mail.gmail.com.
