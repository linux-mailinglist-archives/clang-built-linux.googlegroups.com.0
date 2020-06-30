Return-Path: <clang-built-linux+bncBCIO53XE7YHBBRPY5X3QKGQEAS3WXBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C40620FB17
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 19:54:14 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id w10sf7027644ilm.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 10:54:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593539653; cv=pass;
        d=google.com; s=arc-20160816;
        b=tfGNya9ic1MHv03FfzeKaQvc746f2iT2BCxsEWr3w5/Qo/7XMh9daXsrKZG9JKkEpl
         AizCvEPzbM8VEpXH58CAlRbsz05sMNbvtrLZvItm+L5Vz+K+1y5pYY+qyewcWB2DWD1W
         iYG0lkNor/j0AH4iV6Pb5BOeITbbdZh2fqcRFKCzWg5ch5A9UiUXlQr2psgs0I07swbZ
         pGgUl0O5BEBFzyonKjoh+MiO8qy9TrhycnyLziM1pq8WqQQQqxHOqtz2oLv+hs0JE4cx
         NVEpCm3uQsuYv6zfPaS0+TkRIFSE6TD7blgIiRAZ1mFGRSLNewkLgmUHAElTTRqyC2HO
         0Kxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=I7IA3w1ZQoCJ2mScIm8K6CxSSyK3fCimgSsoj+68HLI=;
        b=tJ3GdLiwoc2WHTcfYdEyXy3ZK6IQhjflQr/A4N3CAXOIYcsqWCP7/597HN3WAQjGRu
         huwdWyq1bFsVd6+0YcHcSN1oGkR8y0KQaxEqTPBr4OTGjqqN/ej5liD9LNLUtgtrm0rx
         0FjY3c9Tl7gHC0y5ROQnKmOhinEFkRXdQFG23CEsMrWBZV6QMMXcV3DBNJ9c2pLgjBK7
         7HXKinrO/Q9wfxsCDxE+RChMbs7zvprCBQfBps+ufk4JZV7pfYYJpHWXMG5ZaTnH7gxQ
         +KfNUsFJhznmEXdCp2O39Pd1Sj3AE9pa8aATuduublurRgL/xsyb81FDM+Hucp6WS+PA
         FH0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XA6CWCMP;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I7IA3w1ZQoCJ2mScIm8K6CxSSyK3fCimgSsoj+68HLI=;
        b=NlRD5hgHmlyNO/yhelM39sRzOpMJbccrpIKC1Gg80IpSlTmGf9A+ADK73M9WWRCDbj
         4bHw1hw9jJ/Jp7MPNdTqfYW9VwY0HeT3WWY+L1HE40t3gK6F3vU53ponPhb5sAURWuQu
         yhelvK4wgYfKsF8fkIk+9KW0XKN5wJAkMTVsuGjmYgMEvcdim73mw/T4aKwpohUZYLNg
         eG61ta9GMyBKYvBZv7gUC98xoM3Wc74iXsZZlvQfzQxY3Bh1tBXAjjb0QkQ8sA2XzU53
         Zo0v5RLIhbPGEX9UcQOSnTZO+K97kLjLeITI/+cgcM6q8DlVnR8H1NKO72SsbLjkREY0
         CfjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I7IA3w1ZQoCJ2mScIm8K6CxSSyK3fCimgSsoj+68HLI=;
        b=rNY1/kuJfb52/kQ5h2tMqkXw5nh7tIhQxdF6dAiPWiU9YGb4wMV59QbXppmFdCH2XU
         U30NBVWmTiOtxccxpPCcsEQYyCeZ6dxcoqNxR40SNoUhAY+pt72VwlBhx3m+5QCgojvi
         xh8EwzrEwFXq7V+lXsO6/PMdeAkYBR+jhA5tXfVpWU3Ap0fcy7HbLN0SsdSl9CjzwShN
         82iXDzrVVLE8Y1gApW3cZYMKJqn2Sm7tk5rDu9O6qGnSCGZUjvpKIy1pypbwo1BTzhnM
         Yel66qL65obOB8IBc4wGLcwaZYAsDjCfVvJcUkE3HAt5oZuabiu2eH0n1bdG9kjzqRei
         LdFA==
X-Gm-Message-State: AOAM5305QT9hUTjR4Lik5jlO/kwd+qgcX9OdzfEncTUc6oiPYX9hYMc9
	baqj++bdzX1v+qqU5zYOEuw=
X-Google-Smtp-Source: ABdhPJylSLLbaU+3nhoau/RmxL+NhBlU2m8PnRUVwddoEwua4nm5qmFKTz6Z+eKC+XfaWPrHeCMWmw==
X-Received: by 2002:a05:6638:d42:: with SMTP id d2mr25096168jak.9.1593539653226;
        Tue, 30 Jun 2020 10:54:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:15c6:: with SMTP id 189ls755235iov.8.gmail; Tue, 30 Jun
 2020 10:54:11 -0700 (PDT)
X-Received: by 2002:a5d:8a10:: with SMTP id w16mr22558293iod.170.1593539651376;
        Tue, 30 Jun 2020 10:54:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593539651; cv=none;
        d=google.com; s=arc-20160816;
        b=QGL6qZFnWW1w6lqnvjEXAeHqMHNsdy2o8lRtbmdLgxi59yVzz7prDbDIqMFmN+GgJS
         j/2WnGo1auWD/csByDjtznfUplibhHC05Fltp44ZklSsX4Bn3bNCdkbZpeOj4ObOarb/
         P6T+TS/wehCMPKrQjwfvoLk6gS76ujLzJ3f8JyG6J6yj2hccLTGlDy/ONLGVoQ3EmAQ8
         yeuZDZ5a3QSCmIGT2yM8hyHSpV2FZSQMJXiWZnO4SemZdsAaqfC+MsIoJ/MreYUxkp/v
         DR7+QXPbvEA6/iFjVpSgVWy5zst336aENN99FOJ8irIlJUmXOVOwHpzTNOXqPR0Codna
         vPxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=78g2lNiWm2EDkYkQ5OSAtg/8SeeBhLbfJO295zn42p8=;
        b=NPOCGaPs4l3qq4PbsifqGQANn++T/qLOA5qNZNlmIUVE9KZHlGX4F9h71PCvK7svj7
         BhEWKFRWhGak1yYiNoGLgRJBH/QVrX0833+8NhRDhnP3eRbDTAC3IbyT41aNktObHBYJ
         wEkPTI94q4NmfSemE9JXcnPptTJ8auGzDqNyh+3jhIUItJ1EmPvW9AR59CpY6zqlzL8t
         aKYwk0iAcSgSeeNbEmzb8Uw0CcECmFxRGjf0JL13OLBxcjCQSKJ41OkjT0gDJEL2Q5yB
         tpsXORnrcnd32fLvWuiSVtR0B+FKTJjnqsPgo7PSFZBvh1KkoxMci7L/9SJc5uGBtVAc
         gXzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XA6CWCMP;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id i5si277836ilj.5.2020.06.30.10.54.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Jun 2020 10:54:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id v19so16244732qtq.10
        for <clang-built-linux@googlegroups.com>; Tue, 30 Jun 2020 10:54:11 -0700 (PDT)
X-Received: by 2002:ac8:47d0:: with SMTP id d16mr22196554qtr.349.1593539650703;
        Tue, 30 Jun 2020 10:54:10 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id p66sm3581099qkf.58.2020.06.30.10.54.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2020 10:54:10 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 30 Jun 2020 13:54:08 -0400
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v3 7/7] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200630175408.GA2301688@rani.riverdale.lan>
References: <20200629140928.858507-1-nivedita@alum.mit.edu>
 <20200629140928.858507-8-nivedita@alum.mit.edu>
 <202006290907.E5EF18A@keescook>
 <CAMj1kXFge5aWL2BY8Y1=m1TonB+SrDq6p7TQWuO5JkzcR2dhjQ@mail.gmail.com>
 <202006290919.93C759C62@keescook>
 <20200629165603.GD900899@rani.riverdale.lan>
 <20200629173735.l3ssrj7m3q5swfup@google.com>
 <CAMj1kXHaXzYFkW_H=w36vMb1qPpuZXsnTd_giq4vsh0bw3S3eA@mail.gmail.com>
 <20200629233405.n56yb4xwlgxrt3fn@google.com>
 <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXGTOdNiuU70pFB74UJ6z43AM-UViTSd3=ATV=94W+f1RA@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=XA6CWCMP;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Jun 30, 2020 at 06:26:43PM +0200, Ard Biesheuvel wrote:
> On Tue, 30 Jun 2020 at 01:34, Fangrui Song <maskray@google.com> wrote:
> 
> > If (1) is not satisfied, the created .got.plt is just served as an anchor for
> > things that want to reference (the distance from GOT base to some point). The
> > linker will still reserve 3 words but the words are likely not needed.
> >
> > I don't think there is a specific need for another option to teach the linker
> > (GNU ld or LLD) that this is a kernel link.  For -ffreestanding builds, cc
> > -static (ld -no-pie))/-static-pie (-pie) already work quite well.
> 
> You mean 'ld -static -pie' right? That seems to work. Is that a recent
> invention?

gcc -static-pie is fairly recent [0], but it just influences how the
linker is invoked AFAIK (at least for gcc) -- in addition to passing
some linker flags, it will change what startup files get linked in (for
non-freestanding). It does not even imply -fPIE to the compiler, which
is confusing as hell. It _would_ be nice if this also told the compiler
that all symbols (perhaps unless explicitly marked) will be resolved at
static link time, so there is no need to use the GOT or PLT for globals.

As it stands, the executable can still have relocations, GOT and PLT, it
just needs to have startup code to handle them (provided by libc
typically) instead of relying on an external dynamic linker.

I don't think it's really relevant for the kernel build -- all we get is
ld -static --no-dynamic-linker, all -static does is prevent searching
shared libraries, and we already pass --no-dynamic-linker if it's
supported.

[0] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=81498

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200630175408.GA2301688%40rani.riverdale.lan.
