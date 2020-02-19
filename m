Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBC4WW3ZAKGQEN5UPBIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id B635C164ED1
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:22:52 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id m25sf988798qka.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:22:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582140171; cv=pass;
        d=google.com; s=arc-20160816;
        b=K4B1BEYZ7msKJuS5aMwufamoDcJQbASNT5YwZI3cpoJpkzAG35AGd3gn+SRN2gVt+W
         rohJKy15/f4kAFiaRbOZUG57j7GFfYAP3BORKmdG2jnbSPCketFrMILz6nlHPajJHoBT
         Q9b4Zq7yX0Yki4qM23gqaWxluLWiG1wERt0gMawQ7gqJ520PgeO0Wp6uxtzArXnAL2bZ
         wyreRAdI7QqxN4RSI44Ni8IRre0rfSImGerLTAl5JZv70k+kZbDnXmOHPHVIvK85QDbx
         R5wR3rBgbWdqS2pFo+ReQLuaEzGynPI3uMrXeioOdRLssGlXLuVCM2ZQ+SMtLK3BbzcM
         g6dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Y/igFm/m+x/Xy3X9NZiZUx+NFW7by5znWU943iN67q8=;
        b=kggaPrGPrqU3W3XvTPHxbpoXNCqbgdMkOjh3kBCL819efLFmoxU9hrvldn1SPenCAC
         1jtXEevCbrL4seb9bzSZckJcymSy5rR9OCcUeCr5w5Fwg5B8wZ4+g22XMYwSqKtA8A6/
         NhrjqRL4vm0VJsB1/8VcLiog5f3MhdrkAyHsPh7AU+oYQb49AJ8cVPtmA+xeJWvgJb2S
         hD8IaXnHlVRx8CVCOnsp0vzg8/ZfBxuaVMGiAgEk4E/Ng4YoIzh1bjxCleroxCY5gjN1
         mZeIm/DbbXZtXKK25rpdNZjLysW7wDTlKvYgnnKDzAbcKTeMPq9wsERGyAGwpleNAAZo
         Xqiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JbyfA+6+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y/igFm/m+x/Xy3X9NZiZUx+NFW7by5znWU943iN67q8=;
        b=ZMdveZyNQgp1ZsUt06KLUdqAVmNzhUNCayUm4GgfK1wjBrQBmGahRrpMvYY5xKN+0A
         oUONh4nA/wRbb0VH5rENmVHpkwUAFY/y57Ui4kRrqQiBVqBQpp46zcLFWawyAunJV2sY
         agFKHv4Mwmpc8JXbcw+TtJK6ze7rRzlYdyaJpdmkQZYWRhWD3rTmRtflX00aulsHbEEU
         2MPWdlzQeSP+1680bylfFhyhAmOLvMp5jjhnnLttwut6Akdp7U65deqhQxUAEE/uu3AS
         8R9XiF4Vu7H/5RXWVwg9i2ldkZuHug6D6/1fK4kcUISXbKmovNnw4smwO9RXsLgwyaLs
         Jx4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y/igFm/m+x/Xy3X9NZiZUx+NFW7by5znWU943iN67q8=;
        b=WgSMg2kKuFlZ/Xq+4NQZxhiZCQY+E045YoUc34ZKTIe+ofhgXGSjv7AnVMMhsj1XiG
         7b/tEpWD44+y954v588ZxZswSgyEqSKaMb+rRMzqMH7UmD/KY/tAVbwPVEVtIMdi/dMq
         sun0fkceqvYWWhclzlxsdGfToEdVnBJaJTojhZ0sRU3opcl4eM/8Ei+g/q/jNcvlCttt
         jlpO3le9m3I0dRwe9mKVZ9heNSfbDlgkpIkx03HHQPSRVg2tMMiGyd+A0bKhwfaaJSER
         96AMTAo/EfK7EblgOmREgP7XSpq4LqrR69gV5dF58JcoF/uWnp1hjegFcDvjqiOCjQj5
         04lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y/igFm/m+x/Xy3X9NZiZUx+NFW7by5znWU943iN67q8=;
        b=ihI2dyXvKhE6yWbB7EkcWqjPX1hXlUdFlzZKMU6FYo9Ed/3sxl8uBYVBQBYWxO3PpR
         +EE75odVZDhKXmqid0pCoU/74UklMHYM7Lo/5k+VxnU6khkGpRDiG1KefdJ34cp9wH5P
         8XVFTCkwSP1mx87ZBv+flCbiTBc7lavjkLNSz3sGcWjiOdF4b7ChrjaGcdBRdpBUHdQE
         9L6yyLqnutpdKVFvqfBPKb4jA4WlB/OUVKtobMKvLChtr3v7rK8na273uPqeCksHyqMG
         EO2JDI0PBLCvOvLBrWfzHRYkmms+Ig/PVK+dvEN90V/j9ksyaj7KtIfRku79DRilKn3B
         hZZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWlIqWhtgMpmvivzM+ZBbrcCrjR6ZMglhv+RKT9EDBanEjhdQiw
	bl+WhWpfUm8EBovJcQaAVt0=
X-Google-Smtp-Source: APXvYqzx/w/FTZxfC0+t1eHJT7T6W6dROwggT1lOdv4pe3nR35iJEUUUpyKKoFyTZxGmQe9UYzDzJw==
X-Received: by 2002:a0c:c68a:: with SMTP id d10mr22566784qvj.126.1582140171821;
        Wed, 19 Feb 2020 11:22:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4682:: with SMTP id g2ls211063qto.6.gmail; Wed, 19 Feb
 2020 11:22:51 -0800 (PST)
X-Received: by 2002:ac8:5154:: with SMTP id h20mr24082687qtn.43.1582140171537;
        Wed, 19 Feb 2020 11:22:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582140171; cv=none;
        d=google.com; s=arc-20160816;
        b=SQxRqGJVqKZH0GkE/PFuzNs/3jHR6COu1HOBi2eF7oE/S15AaZgLE20F9F4eUnwFHN
         TXmivVEJ5R2IPl68BivrjI+3fLK7l8Lz5/WE7EFQ8vWZhApeJ1MvFS2+G9/ssV94Ct92
         tsEcY0+xvzKJOc/nsM2tK61oY9XaW6cohfRwKLZd64l0wCxay8P99gTNZEbV+MmFTex3
         ksRvOREXw08t3wlLnkE/S1KdOQjgPkSOZ+vwvgo9ClHPNiPtyKLAT3Wd3NinHZ7KCN9y
         KsDa3AskwwrTu28rWvrB6eoksrAmAPI1id8iEKAUr+a/beYBjuppjfyQb8eWsDmxnBz/
         u5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nGyzNqwmfC+StEGiPL2xQ9nSi3AHwKN4sRF+U5rIpw4=;
        b=mUQzpFJlNdWJxOBx41CofkUmoej3XbA8b75XoOvcfBPLwe9IRyytue47UkoMRi/0YN
         1LkNugmNbuMzcIN7rcmt8rIes08BzjjElXWzQsa0wLk8mlizzXE8PpKmftTvGyxnher+
         WKpfuFCHsBgUl1A6AvlloYnIYGAGBwiVAHKl8lBk7fsWicPpO9zsVhacDA2EWbT0bZE4
         N4THhfauuzopsdGQvvzup+b24KSE9N0n+F9ggyx61TFKZhFsedStjfxiu+lRAyjWbHu+
         cBK8/LwDRpJLr4/mr5xeEsPspg+anTvzc+CkBduMTb7TXBMcFcLULp+5yG2/Yd1+Of8m
         iMUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JbyfA+6+;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 76si72962qki.1.2020.02.19.11.22.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:22:51 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id 59so1229510otp.12
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 11:22:51 -0800 (PST)
X-Received: by 2002:a9d:6b84:: with SMTP id b4mr20963596otq.190.1582140170892;
        Wed, 19 Feb 2020 11:22:50 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t9sm211166otm.76.2020.02.19.11.22.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 11:22:50 -0800 (PST)
Date: Wed, 19 Feb 2020 12:22:49 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jason Gunthorpe <jgg@ziepe.ca>, Steven Rostedt <rostedt@goodmis.org>,
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
Message-ID: <20200219192249.GA8840@ubuntu-m2-xlarge-x86>
References: <20200219045423.54190-1-natechancellor@gmail.com>
 <20200219045423.54190-4-natechancellor@gmail.com>
 <20200219093445.386f1c09@gandalf.local.home>
 <CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
 <20200219181619.GV31668@ziepe.ca>
 <CAKwvOd=8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g+ZR9KWzA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g+ZR9KWzA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=JbyfA+6+;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Feb 19, 2020 at 11:11:19AM -0800, Nick Desaulniers wrote:
> On Wed, Feb 19, 2020 at 10:16 AM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> >
> > On Wed, Feb 19, 2020 at 09:44:31AM -0800, Nick Desaulniers wrote:
> > > Hey Nathan,
> > > Thanks for the series; enabling the warning will help us find more
> > > bugs.  Revisiting what the warning is about, I checked on this
> > > "referring to symbols defined in linker scripts from C" pattern.  This
> > > document [0] (by no means definitive, but I think it has a good idea)
> > > says:
> > >
> > > Linker symbols that represent a data address: In C code, declare the
> > > variable as an extern variable. Then, refer to the value of the linker
> > > symbol using the & operator. Because the variable is at a valid data
> > > address, we know that a data pointer can represent the value.
> > > Linker symbols for an arbitrary address: In C code, declare this as an
> > > extern symbol. The type does not matter. If you are using GCC
> > > extensions, declare it as "extern void".
> > >
> > > Indeed, it seems that Clang is happier with that pattern:
> > > https://godbolt.org/z/sW3t5W
> > >
> > > Looking at __stop___trace_bprintk_fmt in particular:
> > >
> > > kernel/trace/trace.h
> > > 1923:extern const char *__stop___trace_bprintk_fmt[];
> >
> > Godbolt says clang is happy if it is written as:
> >
> >   if (&__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0])
> >
> > Which is probably the best compromise. The type here is const char
> > *[], so it would be a shame to see it go.
> 
> If the "address" is never dereferenced, but only used for arithmetic
> (in a way that the the pointed to type is irrelevant), does the
> pointed to type matter?  I don't feel strongly either way, but we seem
> to have found two additional possible solutions for these warnings,
> which is my ultimate goal. Nathan, hopefully those are some ideas you
> can work with to address the additional cases throughout the kernel?
> 
> -- 
> Thanks,
> ~Nick Desaulniers

Yes, thank you for the analysis and further discussion! I have done some
rudimentary printk debugging in QEMU and it looks like these are produce
the same value:

__stop___trace_bprintk_fmt
&__stop___trace_bprintk_fmt
&__start___trace_bprintk_fmt[0]

as well as

__stop___trace_bprintk_fmt != __start___trace_bprintk_fmt
&__stop___trace_bprintk_fmt != &__start___trace_bprintk_fmt
&__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0]

I'll use the second one once I confirm this is true in all callspots
with both Clang and GCC, since it looks cleaner. Let me know if there
are any objections to that.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219192249.GA8840%40ubuntu-m2-xlarge-x86.
