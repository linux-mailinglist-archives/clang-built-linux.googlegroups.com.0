Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDHIWXZAKGQEJLHCFYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 54EAF164C61
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 18:44:45 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id z25sf661989qto.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 09:44:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134284; cv=pass;
        d=google.com; s=arc-20160816;
        b=OKP+5iPkKEGDIewT1qDTBefH9H6M3YI9MRJM5p9qHsuRoxOpItWwi2MjiYXJHq+Kcp
         2xpWQXJluhOQDUAw8siCde+86g9Wx0DCC9Bkt0esRIf2NkrKur4zpi1jVorz2RiPlmnl
         IjuATPxg5drwCSlo6pz77Hsn1T5MsJwyIIvaeW8Ml73fpGzD9QTC/vxRV8CeVBNla4PP
         gKA1Z7ZVxWb5jtar8dTtqOQzphqFP7A/1P5usixGOxyN+vXrzUvz5CFdLTVFqbz8vKpt
         cGD1kpX92CBE87Q2H908eogj6ce5UQN8+XI6W0jsryCBkcWn9ffrBHM5dqgpIii6+mja
         dG0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OJtf3cad8lQCaHFI9duMheI2lTMIfJA7hhuJhy7QiwQ=;
        b=RazjUhScJU6oqSLPHjbHKfgw4LXHrqvPucUwzJa21slEsUag2Y5APR+ePyHatLmDtX
         M7epIvCKOWxiN40kkSXc6F67EIMnWQVza5LoeXuEzfrqrT2aH9DpmnxUaPMXE39DtrwV
         N+EIB4beSeuXqEZFzo5YQUY3c64j0oL3KFuxakYaOhbxZns3oze/EnqdWffLZua/wVuN
         YDuJeKARYYEK9rbMJSZcTbLM6TplQGllbe3XaLqZRmiRtC6lm49H/EThnJVI60ClFfdh
         Ch1jnPZmqGGRVFGoS/YccloOLcbS14MCtHn4Typcqabr5DlSbEyQaunN2yel1UHYil0q
         2S4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ezxabv3h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OJtf3cad8lQCaHFI9duMheI2lTMIfJA7hhuJhy7QiwQ=;
        b=HZn+38WqW1H7N9aOPAAYktaVR7yUBZDatVd2KpKZgKU5muWEOBg+UY8KYROQ62USZu
         gOriz5W1QuqaDal6I8oPOPMnrNunSerNOfyQk88JOU473T7NpF7gsPkZIjm3wYfJRige
         cUccUPIBRITgr63qEQum4MguwbXSXPHF6QfdGJz+V6NUg+rWhtlPkNV7rvYA44D96Tkm
         fYKp3E2vVkngrQV2Hlk56deM2Ym5x378f2J3MTkeMJd7bbEdGwLw831M0vFhiOKztIPT
         K0T9XH/XqmHeyAAhOLVSs5zRdAAawIhradvh2IvNDi7tbBbwSW54uU+Qo34UgwiRVRnf
         nl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OJtf3cad8lQCaHFI9duMheI2lTMIfJA7hhuJhy7QiwQ=;
        b=BVPFC4JOmwZ9m6Tbwxwvuk1QbQ/pcFdixuymCIK7txgQ7bYqGID39pFKum6xcRsQPs
         jbyxyo0Bv1FhiM1rCbTFINIq18JhTt3n92e+wIRDTmTFiyU7c25/xie34ZyNlDVu/AYp
         KV7JwAV/Xgx4PlZwKg80I/lka/qujmVFlaPzsn4mCY/ODoTvUNLtnUDq3xZlkFtuynkG
         eBDPOtjVXLKIqiMWwvPuXvAY5EfkPFDafLEfRZmOesBSdpAkpddNxq24C28jINbe2i5L
         zKLBqSzsyAqQJuDVkgpMwCvst9OI2uIocLXfBtSTl0kArKfrMhQt53i/5W1FNtIDjsmX
         IBBw==
X-Gm-Message-State: APjAAAWh+C5bIxR2x0NYgPC8Eu41EuyGBagAaybhA8t9gXFnbVM91/k0
	Rh2dNUU8wmZiIZNoBhPvsuY=
X-Google-Smtp-Source: APXvYqwVunKV03/KnnSpvp34PUBKWtuvRnOlsEtkdudEYfWif8/g3fI6Mzgq7+PjE6WInKjABg2q2g==
X-Received: by 2002:a0c:e4cc:: with SMTP id g12mr22015953qvm.237.1582134284427;
        Wed, 19 Feb 2020 09:44:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:74d:: with SMTP id i13ls117681qki.4.gmail; Wed, 19
 Feb 2020 09:44:44 -0800 (PST)
X-Received: by 2002:a05:620a:b06:: with SMTP id t6mr25525627qkg.373.1582134284099;
        Wed, 19 Feb 2020 09:44:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134284; cv=none;
        d=google.com; s=arc-20160816;
        b=XpW+gMOsYuXFzaDxlzvjpfQmM26YjEOPwfNe/RifgLhkTfTZfbCg2JGYmQC3MJUvM7
         vtMTSCZVqoa9739PVNP5GjWIh0Km2CinNuMFfb+aYCGEorrXRaTk37mEvvfP4MQ82hDc
         SKFWVqhrU0g7/2CaeFWpqk/i11n1+EfjihuqapWnzIimP1agcvkKNHtgQsqxd1LzaYo8
         FFnExdwWgV8koNjXzQmkkMEpKYsV00aisFGLASwyZr0osn0qerYKb2ncAtfKvMDJZYVH
         vHU0sp7Wc/n/2yTQfPxGZrKUJINsLJwgb/NV464daoArybpnuwi/LzOm20S3HKNQ3uEo
         +qkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=1Zerwr5LVoD9w0G00G1YsmnKd+u52a5G2yVAzT73CuQ=;
        b=NCIMX5ETD2wxyzYJZ+GtqKOIOi+bqNtjNq01uGktGpQYheGZNd87DOK1wZeQeTjw3I
         usJHv0BBgnnNaxw0QYBWOJOTw67xciLDoIdcZFFRNpzJdxQjzOiKeeARlAjMzDwtKPtH
         A6Lrnr4URM76po7u12jYGW9a83iotcCmT/AhLZ5ou2IjmsYByl9OfR1FZ6yvFan4udl7
         Y3qPtRa6Un9ApO8Ei8VEJaD70M89kUDib0wWZUb3FCn76djmlRbynGMkMtj7F9/IXUL4
         3DtS4mPMumZCa4XY9ERJglxt26993AEPGlk7oM9dhlZUYXFKP22ChMfHaxLDEzwpxYUb
         YVQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ezxabv3h;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id m18si56665qkm.0.2020.02.19.09.44.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:44:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id b22so346367pls.12
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 09:44:44 -0800 (PST)
X-Received: by 2002:a17:902:8a88:: with SMTP id p8mr26529137plo.179.1582134282820;
 Wed, 19 Feb 2020 09:44:42 -0800 (PST)
MIME-Version: 1.0
References: <20200219045423.54190-1-natechancellor@gmail.com>
 <20200219045423.54190-4-natechancellor@gmail.com> <20200219093445.386f1c09@gandalf.local.home>
In-Reply-To: <20200219093445.386f1c09@gandalf.local.home>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 19 Feb 2020 09:44:31 -0800
Message-ID: <CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
To: Steven Rostedt <rostedt@goodmis.org>, Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>, Jason Baron <jbaron@akamai.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Andrew Morton <akpm@linux-foundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ezxabv3h;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::642
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

On Wed, Feb 19, 2020 at 6:34 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Tue, 18 Feb 2020 21:54:20 -0700
> Nathan Chancellor <natechancellor@gmail.com> wrote:
>
> > Clang warns:
> >
> > ../kernel/trace/trace.c:9335:33: warning: array comparison always
> > evaluates to true [-Wtautological-compare]
> >         if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
> >                                        ^
> > 1 warning generated.
> >
> > These are not true arrays, they are linker defined symbols, which are
> > just addresses so there is not a real issue here. Use the
> > COMPARE_SECTIONS macro to silence this warning by casting the linker
> > defined symbols to unsigned long, which keeps the logic the same.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/765
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > ---
> >  kernel/trace/trace.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> > index c797a15a1fc7..e1f3b16e457b 100644
> > --- a/kernel/trace/trace.c
> > +++ b/kernel/trace/trace.c
> > @@ -9332,7 +9332,7 @@ __init static int tracer_alloc_buffers(void)
> >               goto out_free_buffer_mask;
> >
> >       /* Only allocate trace_printk buffers if a trace_printk exists */
> > -     if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
> > +     if (COMPARE_SECTIONS(__stop___trace_bprintk_fmt, !=, __start___trace_bprintk_fmt))
>
> Sorry, but this is really ugly and unreadable. Please find some other
> solution to fix this.
>
> NAK-by: Steven Rostedt
>

Hey Nathan,
Thanks for the series; enabling the warning will help us find more
bugs.  Revisiting what the warning is about, I checked on this
"referring to symbols defined in linker scripts from C" pattern.  This
document [0] (by no means definitive, but I think it has a good idea)
says:

Linker symbols that represent a data address: In C code, declare the
variable as an extern variable. Then, refer to the value of the linker
symbol using the & operator. Because the variable is at a valid data
address, we know that a data pointer can represent the value.
Linker symbols for an arbitrary address: In C code, declare this as an
extern symbol. The type does not matter. If you are using GCC
extensions, declare it as "extern void".

Indeed, it seems that Clang is happier with that pattern:
https://godbolt.org/z/sW3t5W

Looking at __stop___trace_bprintk_fmt in particular:

kernel/trace/trace.h
1923:extern const char *__stop___trace_bprintk_fmt[];

(Should be `extern const void __stop___trace_bprintk_fmt;` void since
we don't access any data or function from that symbol, just compare
its address)

kernel/trace/trace_printk.c
260: start_index = __stop___trace_bprintk_fmt - __start___trace_bprintk_fmt;

(Should be `start_index = (uintptr_t)__stop___trace_bprintk_fmt -
(uintptr_t)__start___trace_bprintk_fmt;`) (storing the result in an
int worries me a little, but maybe that refactoring can be saved for
another day)

kernel/trace/trace.c
9335: if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)

(Should be `if (&__stop___trace_bprintk_fmt -
&__start___trace_bprintk_fmt)`.  That's not a significant change to
the existing code, and is quite legible IMO)

Steven, thoughts?

[0] http://downloads.ti.com/docs/esd/SPRUI03/using-linker-symbols-in-c-c-applications-slau1318080.html
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm-N1iX0SMxGDV5Vf%3DqS5uHPdH3S-TRs-065BuSOdKt1w%40mail.gmail.com.
