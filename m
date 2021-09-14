Return-Path: <clang-built-linux+bncBDYJPJO25UGBBPWFQSFAMGQEBLNGQQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2F640BB79
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Sep 2021 00:31:27 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id q12-20020a2e750c000000b001e9c3bfbc31sf375122ljc.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 15:31:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631658687; cv=pass;
        d=google.com; s=arc-20160816;
        b=VkEMoUhB2sYLvF3o+qULCjrYRy3qUpAzxt3J1l+Mpt5nrjtAWfyLTIH/qpso/AH1L1
         JwwqoM7mE/KXU4Fjk2810+Qvabfj5I+8WRt6RAuD+9fHd2fE6cNHG7AYofj2uip5aT24
         bigJvetGXM7v6Ftj3ZXN1Jy/NZ0eL/gjuZymlOVajHjYWqCn8tYmqhd6SKl8QOU/uqgd
         c5b+KdASipS/Jf7av8QH+h5o711VnOIDD+kGIl01sPyeVsiNTWBisvODvkOrTrfTbGFe
         2fvnR6KvdNY+qaQ1b6+FloG9YzNxOEplsiAR7wsnIVtpQI5xh446EY8FZ2H2099TDEUp
         A64Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/O9kC3uSZMbkyO/NJYfFyPPAgmWU4ZFVJdV/KJwdyYA=;
        b=eI1sfzL9AX5Sba8z6A4iyQ+M5sT5VdpyzDSNYnlngdu7gXLBoYlqmjX60hvVC97hfo
         KPYxNEudz6DVFsJKrvIyJDh4zgEK9kKR3fvRlLKS7ZxqbqCrI7l0CAfqvRYKuNOCk9mx
         12zHHdpF+VEPCc4xt6/fFfwF3dE0Tz4gHuKzQO3FOG3iTx4/oOAam+8A9C1jhD0tls93
         u2y1KfCo3KXf+A8diEdVgLPkRLMa3mFyg/ADGzhOF9RNtKDuYE0FGDxSqsWBEatIyrLJ
         Oj5oykQvsJDi/C4IeKMJ3XE/kAP6yaxAhkKhCkOJIV9dWmekrTEI9UTXVLFu5eUAVhSb
         ZFdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=qgFutAKE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/O9kC3uSZMbkyO/NJYfFyPPAgmWU4ZFVJdV/KJwdyYA=;
        b=Uyu0qQNiW5+2WGM3EfcpJ8uPh+rF/+0NFzx8GLSPFfKgpbBSznH0Xtzh1dHTX9smEb
         N2dfSdUkC1re/D+j+n4Mjsu5TpwunKU2hMqCH0zzeIipwT3UAlSqYveklo+2Qmb8WjQd
         X80Yd8kzruOBijziJnQs0LwL4zEuw2QmlGJ1sAS2xAGdi4FPMeAGx8AdBvxRaT1uUGnd
         JWWqcaAtSRC8RMeHgMV1Zj2+1Opm4gVVjaxtXPjoung5phRdU5q/IPI6wQiW3QWWdUvL
         YiZESOiYq+kpL2+NSA8AcaiIBE9sltsrPtO/hZKmDCyD+S78n6kUDt+O0zTKuH7Bzm98
         lmFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/O9kC3uSZMbkyO/NJYfFyPPAgmWU4ZFVJdV/KJwdyYA=;
        b=Fl4zPttHWOc0wAkFmU+Z7NpCx4Ks1R8Txtzb9jLQC6n+9mv/Yutjz7YDnrVnGQjWb2
         HFiIrAwh2/+di1hkGkpfUlqzgQEB5tO7+DVYAOrH7O6PIqgoO5u8jahAz+aWql3DrCTy
         WZSVLxtbEbhP2XHEEiBzH+YCB2ppjlbRkU0A05DlbWkoLHpDFBwtxBLbslw9plk2xeQT
         JvcKpCUd9Q65Z0bn4TQLCQaJuoadf2sPt/2ruFrYp/w5BJVRJrSqEzSSXi/DWnR3nXbH
         8PbZYd4vdgMUmkmXq87hYb5WAYUfoDxdzT8L/0SAiCuYdjahUpmYAeWkj7QVdHCR9x/k
         9h8g==
X-Gm-Message-State: AOAM533OW7Ebi/yiOw/Cc3BqJ48FdCz7oBzun+EcZbAH8FJ1WiuKnyBT
	5HmadkaNn26dvbfTHbvJXu8=
X-Google-Smtp-Source: ABdhPJy6MOV8QhdZwHK12R5FoTQnhdRjxJNMWctUq1MsyViK6rNpridQO6UQSYXbvOTAImleWgCZTA==
X-Received: by 2002:a19:7601:: with SMTP id c1mr14493010lff.448.1631658687146;
        Tue, 14 Sep 2021 15:31:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3e17:: with SMTP id l23ls169008lja.3.gmail; Tue, 14 Sep
 2021 15:31:26 -0700 (PDT)
X-Received: by 2002:a2e:a794:: with SMTP id c20mr16975101ljf.442.1631658686162;
        Tue, 14 Sep 2021 15:31:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631658686; cv=none;
        d=google.com; s=arc-20160816;
        b=FI3fjnurgY5nQa7Yo1hiIVlVFzmEEqArgUKfrGVZWJBa1KrcgjTmfJZRKrxK4qFEZq
         yUutOD4u5gK8Hzj4zblgQOQXcKAix/IBohz5Cd4smxSxeRQrptyuSL4vA5DCA5ssOXJg
         2qSLfzSaoMmMcPTEWdTVe17t50EWEjErwJ+UPQtByJjctK8oSdzUQhgzQNJHvRDyw4Z2
         b7YelnC9zhGPNp4LzjE1A5KiuhBBdXaPJsUCCohqxs0UP/stQ55gAzPLTAKV8M0jCiN/
         5z+buGU/mVlCBk0JR9tgzCk6Nbb5V9UbVmn5wLAGsku32idVHIv200aJL2DYQzzULEWY
         N2GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=/NVWJihw8+mxkblMeUMKWZHa5HcW57V47+/ryRA4f4g=;
        b=f9BfPucMFh/emaNjt/W/HiHGP9cB7d9AwwXM55FeOU22zxRvpNdsaSoDFem2JUbBui
         1kFTFi41ynKviJBDRV1nXHzMQ3ehPhM4AmT06HlC3FD+oH9CpLIMgy/5H24ZXrAP6yFo
         Q0CEoikirRMrGD6LTpL8VqrDG8foNV03msntHm0MLtDCHSo5spPWYDsVU3iLcSwx/n9f
         Q6tIBoibjSSbLw1Gx/Dym2Vx2rhX3PhcMdfGF/vXl5IZ2u7SOJXQlJs1elWHnJSZHB9w
         5tG5v08yLytajAkzMiQOZLB9JaxWAm0LSJjP9Zoua4/eX9ih08cGwgHp7WKBNS5yqLDc
         h0qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=qgFutAKE;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id n6si927776lft.8.2021.09.14.15.31.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 15:31:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id f2so1594766ljn.1
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 15:31:26 -0700 (PDT)
X-Received: by 2002:a2e:b551:: with SMTP id a17mr17253096ljn.128.1631658685761;
 Tue, 14 Sep 2021 15:31:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-12-samitolvanen@google.com> <CAKwvOd=OvR8iZogXhMxkbt5qT7jbhaARgk5NsCzhpkjoZ7yy5Q@mail.gmail.com>
 <CABCJKudRDcwfkSK205Pb__hzLWQPUFhbjUtFPbctdPAycSOKQw@mail.gmail.com>
In-Reply-To: <CABCJKudRDcwfkSK205Pb__hzLWQPUFhbjUtFPbctdPAycSOKQw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 15:31:14 -0700
Message-ID: <CAKwvOd=q1xhn9OEyowWyMeDW8CbWW4=nRmdE1tHggjCZKr7xrA@mail.gmail.com>
Subject: Re: [PATCH v3 11/16] x86/purgatory: Disable CFI
To: Sami Tolvanen <samitolvanen@google.com>
Cc: X86 ML <x86@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=qgFutAKE;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Tue, Sep 14, 2021 at 1:30 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> On Tue, Sep 14, 2021 at 1:02 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Tue, Sep 14, 2021 at 12:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> > >
> > > Disable CONFIG_CFI_CLANG for the stand-alone purgatory.ro.
> > >
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> >
> > I kind of prefer the existing convention that has explicit guards on
> > specific configs (ie. CONFIG_FUNCTION_TRACER, CONFIG_STACKPROTECTOR,
> > CONFIG_STACKPROTECTOR_STRONG, CONFIG_RETPOLINE); it's more obvious
> > which configs may introduce which flags that are problematic. This
> > patch is ok as is, but it kind of makes this Makefile more
> > inconsistent.  I would prefer we had the explicit checks.
>
> The Makefile does already use DISABLE_STACKLEAK_PLUGIN in a similar
> way, but I don't have a strong preference here.

mmm...DISABLE_STACKLEAK_PLUGIN adds to PURGATORY_CFLAGS. This patch
adds to PURGATORY_CFLAGS_REMOVE.

> I can move this into
> an ifdef if it makes things cleaner.
>
> > Does CFI actually do any instrumentation in these object files? I
> > guess issues in purgatory cause silent/hard to debug kexec failures?
>
> The compiler shouldn't add any actual CFI instrumentation here right
> now, but I would prefer to avoid issues in future.

Ok, good to know.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dq1xhn9OEyowWyMeDW8CbWW4%3DnRmdE1tHggjCZKr7xrA%40mail.gmail.com.
