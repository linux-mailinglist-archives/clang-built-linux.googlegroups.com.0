Return-Path: <clang-built-linux+bncBCUO3AHUWUIRB5PWWXZAKGQE3J5XD5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E31164D7A
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 19:16:22 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id 62sf1079062ybt.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 10:16:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582136181; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y/RaGXfluGNaayTZtENfWcw7Xlpu8412o26omw6sZocDxDySQo5hFFyILH7mDIj9cF
         OyR6yl01Zpc17cm5K8xZJM7dREHtxSQygTahXLn/A1NFyRIsoGtQUPDhLuKJpDJ51sMQ
         UhR3DZcANA61qkP+MaCKNx7qSgtfIlFTboiTMaVqI4Q2Zd6odfr/K443qdcpUHdnhCLW
         VilMNTkUG8jMuI2L9PCw5FVCv4MFFmm16CiBrOyGE7ots6NpUGbygMOO22No+uIr+Gar
         vRixd7963Pt3OmX2O3LVN70hUVZk7Pva+i42IhnmwJa5dSPtiZ8so9VvViVALvONYrfF
         AthA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=eKw04rF/gJRbUhVKSclKOun3gfkl/SxBGVWDIZBtGwg=;
        b=abZ5CY79778QaXjsLv0I1nbppkR/0riNdskicRhJljvMVCke7M7D7/q3h2wkhPxoth
         Gb23zfnnmfAcGFXx0czv4YgNK4aUzlOOPkE3poqTNG8zbW6wrhFeVl5HiBu79qitHUE+
         +jT7cD6irZvjVoOp/oTY6ksrYK0vgVbHJTW34DIUa5SVDiH40gwWWd5ie5ZJuFUeo951
         CN+3AqG/ZEuNo3CIeJ4xJUKNog/DfLGbCKW8Wokl4f1RF2brV3BWFVHAiDag6LxlqURP
         fWozEmbJsWUJYhP068Vr9EkOCbOFP5MyCwzO3/H4FC978OyhL7SY34mnvgSx6nUEW18k
         FU0Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=fgvJbvEH;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eKw04rF/gJRbUhVKSclKOun3gfkl/SxBGVWDIZBtGwg=;
        b=daWTE5PG6rrZyTNie7ltYObGftMtDbIP0V3v54yfjXxa8XZ3lOrsthAzyCMAb7pjIB
         WA1A0LRXULN+Wjy8CvB+PbEN5goyba6riAGmEYq6+HASmoKagSoPj49zSTFEF1YG+dnW
         e+DY6RbDMJprCKDw7Ljg2EKOpU6V2jDmyf/NyS6qYiiWGmXKzC9ps/wyU1BuceF6RGZ3
         Uz/UK5TJI8+WEl4bpxISokwAOSelXRmPqGpNCxUAk/enk1Ph+4BF0M3x2kHpo+aFcc05
         8pwbIU6C1TwAAfYBF+nYDMmE1YAzS1+O/jgjMNjHxAfwBWv+pwYJH33I9sFHlBO4iirN
         Jcrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eKw04rF/gJRbUhVKSclKOun3gfkl/SxBGVWDIZBtGwg=;
        b=lz0CVAmbj8f5YDts+xfANLpmgsiQ05oEuWSNifMXEz8ueNO4nBGycW/iRs0eDDOCyK
         cFD5DCu3KIBGqgM6oNIxtqToC6HjMQOlUaE3IwHn+nh7nmuZQ1q0IJmo3xq9/FLUBfZQ
         /V0LRN0knqUgWTCagntHPKF/wX2hnC5tOueiIOUq6Yhs3khfISY13puub2RuKkB1OOsG
         eyATWZ8bKwKEJx1qFJvXpIPVysA38UtFHH5fPaZ1KT9q25J7a1RlU/RtPA0aabIb8cuh
         faoXS6orN6j40qwnM6vDmCHpb8OTTcpbXARS7giSrkArsuVqmLbV4TJe1XrgKLg8bsQu
         rwxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVerIZ0S0AQpNQAoMUy/UuJeJtXbONJHzgQfo5OvP7fEuri/s7R
	jkUaMJTc7png5TYvxL1Tlc8=
X-Google-Smtp-Source: APXvYqytSvFyim9DkQOSf/KdYZmABUdN8OKAEhIvxXdFC5Qdb3mKCOg5cOqjw1WO9SrvbgdQhIEHZw==
X-Received: by 2002:a81:b604:: with SMTP id u4mr22932549ywh.301.1582136181329;
        Wed, 19 Feb 2020 10:16:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls72891ywd.1.gmail; Wed, 19 Feb
 2020 10:16:21 -0800 (PST)
X-Received: by 2002:a81:a486:: with SMTP id b128mr22934856ywh.255.1582136180953;
        Wed, 19 Feb 2020 10:16:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582136180; cv=none;
        d=google.com; s=arc-20160816;
        b=kJbaE4EE6WT7K1Oam0Gt7lIuZp0WJcTrSGYn7dwyr+YdH7giT7Zyqg9XF0e3CSB0nB
         ZRJ06A4qRXzj4STqF08jRLJ9X7NK5XsBjtdZeUzgC9LAcm9dYqa7rBv0KgS5EEBUWp6O
         JLXVAsZtFtqm/HQuhtcAHaqe4r90M+EurAOs5cHEua089ktM4fKZir3TTrTC/v9rn1fn
         +HjJhmygoqyULB87GiRftS1KeMorjKdC7QO7C2Q83+/i7Png1FTyouxKTBAjEVcRGaAz
         obGVN+8slBlDqEBtFimV6hHSedm69bPYBvBrBurKqmkWJkhUR09Msi4SSzKF6bSQ5mSk
         PIhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L3uNdVhyvZUZMuONp/GCn48zcnEYXAubnE18F0EpTYo=;
        b=eT55bK56DQoNpK78kNrPAbTUmWOtw1ph24rHhV961P6r9fxrIWk3AIdixTFPETcW0s
         OsDEPoA71LLZ77HqzjEAVLSd2I+FygbQDNvNE9GDKzZGVAsU307cIyEa0/QD5dlDpFwI
         kGlVjaSquhEbj/t4yjImYrrHYuOLuW7BEQr+kKSDHy1qqwQkDGF3HDslu/LALOnKRzV9
         owFWVJr5yY4rMSfQtYmCNSQk+BFnZOwk39hN29hNikOKYvVqqlIfhSnYz7bDBnb1LENK
         QpaOEF367lhucbfrKuxPty7i4rNK1Nk7CrhAAXgLkzQKiK3Uq87YIrEwiKWLMdTRPdX1
         fSzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=fgvJbvEH;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id l1si79977ybt.2.2020.02.19.10.16.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 10:16:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id t13so910850qto.3
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 10:16:20 -0800 (PST)
X-Received: by 2002:ac8:958:: with SMTP id z24mr23429096qth.40.1582136180447;
        Wed, 19 Feb 2020 10:16:20 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id p18sm233866qkp.47.2020.02.19.10.16.19
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 10:16:20 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1j4TtT-0004LS-IK; Wed, 19 Feb 2020 14:16:19 -0400
Date: Wed, 19 Feb 2020 14:16:19 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
Message-ID: <20200219181619.GV31668@ziepe.ca>
References: <20200219045423.54190-1-natechancellor@gmail.com>
 <20200219045423.54190-4-natechancellor@gmail.com>
 <20200219093445.386f1c09@gandalf.local.home>
 <CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=fgvJbvEH;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Wed, Feb 19, 2020 at 09:44:31AM -0800, Nick Desaulniers wrote:
> On Wed, Feb 19, 2020 at 6:34 AM Steven Rostedt <rostedt@goodmis.org> wrote:
> >
> > On Tue, 18 Feb 2020 21:54:20 -0700
> > Nathan Chancellor <natechancellor@gmail.com> wrote:
> >
> > > Clang warns:
> > >
> > > ../kernel/trace/trace.c:9335:33: warning: array comparison always
> > > evaluates to true [-Wtautological-compare]
> > >         if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
> > >                                        ^
> > > 1 warning generated.
> > >
> > > These are not true arrays, they are linker defined symbols, which are
> > > just addresses so there is not a real issue here. Use the
> > > COMPARE_SECTIONS macro to silence this warning by casting the linker
> > > defined symbols to unsigned long, which keeps the logic the same.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/765
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > >  kernel/trace/trace.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/kernel/trace/trace.c b/kernel/trace/trace.c
> > > index c797a15a1fc7..e1f3b16e457b 100644
> > > +++ b/kernel/trace/trace.c
> > > @@ -9332,7 +9332,7 @@ __init static int tracer_alloc_buffers(void)
> > >               goto out_free_buffer_mask;
> > >
> > >       /* Only allocate trace_printk buffers if a trace_printk exists */
> > > -     if (__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt)
> > > +     if (COMPARE_SECTIONS(__stop___trace_bprintk_fmt, !=, __start___trace_bprintk_fmt))
> >
> > Sorry, but this is really ugly and unreadable. Please find some other
> > solution to fix this.
> >
> > NAK-by: Steven Rostedt
> >
> 
> Hey Nathan,
> Thanks for the series; enabling the warning will help us find more
> bugs.  Revisiting what the warning is about, I checked on this
> "referring to symbols defined in linker scripts from C" pattern.  This
> document [0] (by no means definitive, but I think it has a good idea)
> says:
> 
> Linker symbols that represent a data address: In C code, declare the
> variable as an extern variable. Then, refer to the value of the linker
> symbol using the & operator. Because the variable is at a valid data
> address, we know that a data pointer can represent the value.
> Linker symbols for an arbitrary address: In C code, declare this as an
> extern symbol. The type does not matter. If you are using GCC
> extensions, declare it as "extern void".
> 
> Indeed, it seems that Clang is happier with that pattern:
> https://godbolt.org/z/sW3t5W
> 
> Looking at __stop___trace_bprintk_fmt in particular:
> 
> kernel/trace/trace.h
> 1923:extern const char *__stop___trace_bprintk_fmt[];

Godbolt says clang is happy if it is written as:

  if (&__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0])

Which is probably the best compromise. The type here is const char
*[], so it would be a shame to see it go.

I think this warning is specific to arrays and is designed to detect
programmer errors like:
  int a[1];
  int b[1];
  return a < b;

Where the author intended to use memcmp()

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219181619.GV31668%40ziepe.ca.
