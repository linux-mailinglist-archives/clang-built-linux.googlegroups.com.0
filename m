Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBH5M5KAAMGQEJAK7YHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C2F30D9B8
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 13:25:05 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id r140sf12145541iod.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 04:25:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612355104; cv=pass;
        d=google.com; s=arc-20160816;
        b=cSoqxuCPFTqIqCwDaB8jjXtJiVMtR6fHjZJ0e73FuzvfEWO8tSfBkJ6x+mUTHq8s2w
         cCy5zihWj+gtuNvpqw21RnjJUXAIXBmxkBG967ItNSByQDAaOGjXr8fC/RRdSo0tORZl
         ZoRlm96PJlTFgf9GxjfwmfjHT3PG+BCwPeTxW2tqDF5aconuNNDG7LWvFZx9OgkudmPI
         UkVZExG2T2YVTS5CegbGMSDykojU8N5C68mjMRSg/e+aYZVEPqkc4EHuyuEeBY5jX5rH
         NnJYvqPj6bDORZveiQYI3OZegOwMStFInhefyst+gCmUvYHTACI1wmYWVaz4SHywbX5M
         41bA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3mq3NfTagMSPlL8yp3eLbuFPAiRRDWSWV+7KWK3qc1s=;
        b=UYl6Bdrvzdz9VvtwqHvqbmWNismELzWrxuntGXNawUeqLpDGwHi3O2xTxEjnBxAHTR
         T5WIRH9MunirhWLMoK7XvxssAg/wooF3phJog97BojsjhU3pyLfQKasLDnBtVc4kLj62
         i8gazDdMtw/8n8gXEd3+amZMY1ZE9Skejwsmvu6NHyn2WmtCi4mNLSyxHi/mqKfzVJLT
         5CYKdGE6/zVO5ZdzS3fHSaM0USRrwbhgdzHKXIUrWJNO+G+t0Js7NJZZ3180ByBAjCME
         zxC/me+6rmqsgVlx5PMsB/xlvR9aWKkNDsTOqMKS6ljZ4Me66/nuKa7YdraeLqepv5cw
         CK7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p75PQK9G;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3mq3NfTagMSPlL8yp3eLbuFPAiRRDWSWV+7KWK3qc1s=;
        b=nQGDMVypR0bZ0Vp97t3JUVHa1oYCmdSvkzIoPbieNBrwYJ77NM1QdeDfU780Ig7NA2
         1EmYQJSYZj8xqUOZLGsOfEiRvJpbvOQytykqRXPIyoL/IFvAkLXUPuctLf44fc/OUW++
         r1uFXRrpF/iqE+ETIa46CNyQ9KAZbBh5mPhhj7frIes/TTYspS+BCEWmzCDIeR1ZxKLm
         d8kBBmJNI2N97XFYw3LAx1VyLPzoL4YyzSJxqXTTGWrmBrmz/CcDk2A8BKxMdlU4lf0I
         /Zj/lFBcxEIpZ7rRG6TwIsAD3HMx5to58wN+iNgbAGIcWHVBP/AQhCkxo9LqkOO56Iub
         3Nbw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3mq3NfTagMSPlL8yp3eLbuFPAiRRDWSWV+7KWK3qc1s=;
        b=FVtdFgTHCKAS0O7Wi3hPnteGbrFrkblQJMa6+2r1kMNRFkQ5Twm9rJnpr8jKus0bOy
         UvQo7fXCEVL5Y32Fd1TKIvNRoFuQn9E0yDjF50nIer9x82UcfZK5LyoKSRzAdtfbOTZG
         R0wd0urCrt6pm99AJoL9mBheZJcZ/DwLojyX3T5kjKfUoaM5tc17hCjdtMA1Ljk0DfgA
         b/9dfwt+6qpys+Gz4GvBWFr1aQUVGCoa0Uj8R3IqhZMgRB62ETBN4n/XITeIzn+406+j
         40WzcvxAJJCCTJ8bT4PHmqDYfu6vLMABdRrat7Wb+1udox9snZel0DG4ZEGi6AEltxCb
         O8KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3mq3NfTagMSPlL8yp3eLbuFPAiRRDWSWV+7KWK3qc1s=;
        b=jLE/pXpXw+m+Vqe8GFP5pOs7Pf0LP77SPd0NQwSpyFBeqZ+y8DYUMDM3k6AheYOMLk
         Z+UaGnJdkmspE9Lo/bLI7JipF+UcXYXF79jT/rfTOx6TZb205w2GOnI3v98aQt9W4op/
         FqNGrL4k+wTQMgRRgd+riVSbeg3Mi2Py0eXRNauuHCTwmDRW9Q6rZrex+UjGHq0SOO33
         C2vrZrEPqvZDXvb4ZvoaM/rSsDdabjXtiArMw9R4AGXj23ZQGqgzWwqfadHSwZmKc6wq
         EDXEQFqNSEvEaZLDSdE6jajXP+UxaJIUmYbkx0OwrTmtmwh2wuTqr0Hw4QV3S2Dku8Bp
         jerw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5300fQGWIWDqO1yg9KIL3174ihfagD8NHXKLqEN7y0cNIhhNNNf2
	vD53rowsA1ZlSTinkOVry5Q=
X-Google-Smtp-Source: ABdhPJzfTagj4g37qHhuKUxFXXVgViTZgdjrXXcL3MSfy1nOMlQUzsDBa5VHB8EK3D5eFfAkPvFJ8w==
X-Received: by 2002:a05:6602:703:: with SMTP id f3mr2226534iox.84.1612355104021;
        Wed, 03 Feb 2021 04:25:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7f0f:: with SMTP id a15ls401964ild.8.gmail; Wed, 03 Feb
 2021 04:25:03 -0800 (PST)
X-Received: by 2002:a05:6e02:f82:: with SMTP id v2mr2317404ilo.294.1612355103600;
        Wed, 03 Feb 2021 04:25:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612355103; cv=none;
        d=google.com; s=arc-20160816;
        b=I37rKLAumFx890vJ3r5rx8j/WceTE3rwup4U2A6vI7myvBefIlKguB9aFAJ3AD8hVV
         liu0O7j9UVRzuNkgtCFavSaHWmAjc/gZmDWeokU+D6rgVhl4POgdwmBNYfjgev0g0gOF
         Xu0M+CUM54xYOnIpjOLiQ2fR2aqaMqb7naz5sU8DMNE16mLDHe+5qgt868fwR+dsx7AK
         PH6WdrQr2ONc/0MCVw3XgPCPh0TeppNZ/6dKyc8c9xq86C00fhxMi5vMUtYXLZu+yWHp
         E8bKhwMoJhAJgX/81/Kf3LQPYlazVy0issPBUCaXQVnNr3j4fBhmf9VLu3741hr2GZ+d
         m9ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=+ecq5c6sKY7cd84EJlpB3NzNUMYGSZy8yjUqdXmsGQc=;
        b=DbUku/HZyhUrYneLZFs0lgit8XlOKOh0xFC57obzJnG9ag8TeWuZarpMIw1n2Gasqj
         bD3J7GRhb8ckyM9zf1FIlBTKSqbRg0+7orCXi7O2Ov9ndh8N3yGgmlxPX7utBFr0LGsv
         dvrVnEh4U45qtXmbQ59V26wwQs+lRUOtn3RLpAxHRTaWAsAV8CaiDw9eALwfptmMlVSU
         qAUJz/zgdbHAbOJTFTe+2Qttbn+9CZgTfLWoTRBMxdWbEawhNvDDBKlRDdcxyDEirQYa
         NrIY8MxA44SdMWHfL4q1gEAi70v3iA9o/qq2/cIZlXKlJII7SfFmjkoi63I2mCy7ME8L
         6cWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p75PQK9G;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id 207si78225ioc.2.2021.02.03.04.25.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 04:25:03 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Received: by mail-io1-xd33.google.com with SMTP id n201so643717iod.12
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 04:25:03 -0800 (PST)
X-Received: by 2002:a05:6602:1541:: with SMTP id h1mr2108852iow.171.1612355103342;
 Wed, 03 Feb 2021 04:25:03 -0800 (PST)
MIME-Version: 1.0
References: <cceb074c-861c-d716-5e19-834a8492f245@gmail.com>
 <37DE7046-5096-4C0C-A96D-FD168A849DFD@zytor.com> <20201226075347.GA1977841@ubuntu-m3-large-x86>
 <3b793c42-8983-4502-1f9e-729cc0ebec47@gmail.com> <20210203121934.GC13819@zn.tnic>
In-Reply-To: <20210203121934.GC13819@zn.tnic>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 3 Feb 2021 13:24:51 +0100
Message-ID: <CA+icZUVgRa__hFCGr8P1Q_EKREDg6hd2K3gDWwJsbO7h0KZYBA@mail.gmail.com>
Subject: Re: [PATCH v2] arch/x86: Propagate $(CLANG_FLAGS) to $(REALMODE_FLAGS)
To: Borislav Petkov <bp@alien8.de>
Cc: John Millikin <jmillikin@gmail.com>, Nathan Chancellor <natechancellor@gmail.com>, hpa@zytor.com, 
	x86@kernel.org, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, John Millikin <john@john-millikin.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=p75PQK9G;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d33
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

On Wed, Feb 3, 2021 at 1:19 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Sat, Dec 26, 2020 at 05:41:25PM +0900, John Millikin wrote:
> > When cross-compiling with Clang, the `$(CLANG_FLAGS)' variable
> > contains additional flags needed to build C and assembly sources
> > for the target platform. Normally this variable is automatically
> > included in `$(KBUILD_CFLAGS)' by via the top-level Makefile.
> >
> > The x86 real-mode makefile builds `$(REALMODE_CFLAGS)' from a
> > plain assignment and therefore drops the Clang flags. This causes
> > Clang to not recognize x86-specific assembler directives:
> >
> >   arch/x86/realmode/rm/header.S:36:1: error: unknown directive
> >   .type real_mode_header STT_OBJECT ; .size real_mode_header, .-real_mode_header
> >   ^
> >
> > Explicit propagation of `$(CLANG_FLAGS)' to `$(REALMODE_CFLAGS)',
> > which is inherited by real-mode make rules, fixes cross-compilation
> > with Clang for x86 targets.
> >
> > Relevant flags:
> >
> > * `--target' sets the target architecture when cross-compiling. This
> >   flag must be set for both compilation and assembly (`KBUILD_AFLAGS')
> >   to support architecture-specific assembler directives.
> >
> > * `-no-integrated-as' tells clang to assemble with GNU Assembler
> >   instead of its built-in LLVM assembler. This flag is set by default
> >   unless `LLVM_IAS=1' is set, because the LLVM assembler can't yet
> >   parse certain GNU extensions.
> >
> > Signed-off-by: John Millikin <john@john-millikin.com>
> > ---
> > Changes in v2:
> >   - Reworded the commit message to highlight that this is for
> >     cross-compilation.
> >   - Removed the `ifdef CONFIG_CC_IS_CLANG' guard.
> >
> >  arch/x86/Makefile | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> > index 7116da3980be..412b849063ec 100644
> > --- a/arch/x86/Makefile
> > +++ b/arch/x86/Makefile
> > @@ -33,6 +33,7 @@ REALMODE_CFLAGS += -ffreestanding
> >  REALMODE_CFLAGS += -fno-stack-protector
>
> This one too:
>
> checking file arch/x86/Makefile
> patch: **** malformed patch at line 62:  REALMODE_CFLAGS += -fno-stack-protector
>

I needed to touch this as it was "malformed" and did not apply cleanly.

If it is not too late, feel free to add my:

Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVgRa__hFCGr8P1Q_EKREDg6hd2K3gDWwJsbO7h0KZYBA%40mail.gmail.com.
