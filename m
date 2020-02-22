Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVPOY3ZAKGQEXEDJLMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF839169241
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 00:20:54 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id c7sf5943308ioq.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 15:20:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582413653; cv=pass;
        d=google.com; s=arc-20160816;
        b=vUlY58uN+Z/BP3fw/GbS2HohJC+ww+LaQ9iDfCrqXE8hPzUxaykB0bpYHNBcWcrUu4
         4nr+tYHtEN/f/GB/jyL6TbGFPe8GNzUgChoaC1Q8sJjElj0YpkuOH4DAg3gC9nAMSHBx
         NAtpIp97nHM8+TXeooj6k4MAkMb5i7a5Uo0Ze5IVMC/sO+F+iU+KAUfVpk/YFoaGNm9m
         jNMnGdCHu3JwXQME44BsjVDZKWDa/zFpBk381hUYUH7bFVtZDDXE6zRgwaVQAFzTD4HB
         pwK11AdB5sideT/FyiBbBGMIY9RFIhQRxpRE99rRJd4HN2xv9FL3FOfn7zwsMzNF3Z90
         sr3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=cbqNBPliZpQHNCKwG4DzaYgX3m+an+3bMLxhtimPDfg=;
        b=KHv5uLKUmUMDVPn1lUKZ0HtyCGA+5kDYIDb2D5WFtTG9U8c08WCfwlg/tfFOw8kh0c
         h3oudo69OWRWjbezSUjpcf07xmAbGfZBgYMPXRi3RDIYKpQI3yO+3+X+QKSnX1iXafpM
         iHmHd+Gqh7sxX31f3TALA5j59cRQlzG5lGlMKC4Zug3pRJjSKC4ZevouEvNn1WBi3wlJ
         aZVGopKdaw010HsVMsJn+HZ9D0hwd5Gr5EP5cIoxRcAIf0hWGglayqpxSCdEldkHgn/F
         f3kksrqgr5PpwZJ9lqh9a+8ACA+/SxCiClrvXBLXhAjrcwQr0WIqMxKSR8ZMdK1Y52nR
         YCfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GKgquhT9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbqNBPliZpQHNCKwG4DzaYgX3m+an+3bMLxhtimPDfg=;
        b=k24rFNDj8ZVPof8mYFuso+Piff98rCzoTRx9z68Hyg72/dLSZCaxdvxf/XSY7lFdat
         qbaXggAQK5cSyDkWQPM7YdDISfDjo6pusxoKMm62jjUrPwxYLOt0aoGIv1YavKLIGEPZ
         nBOrYWDgkru6fhJGxz75Xp//mQA2FEnaCB8upE2xBzmf0cCOmmBY4NHqxSrW0/emInoQ
         baJUqcQ2KSuudtmliV1M0ixTxMKJjBQM+YGdaLUhJHOFj8A81A0gFhNavCsi+G/MUWVb
         +bKkmZDNKObL2OpMvJJZ5ZMzBe/3pXAL4hWyAEGXO/N18ilIFktkWQuZT1HveZFpKWgO
         nhzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cbqNBPliZpQHNCKwG4DzaYgX3m+an+3bMLxhtimPDfg=;
        b=S5Sb3oZ2IiL0UaqH3zEXu/oeLasIDptgc1vydfQvZtd7Woe4bl1K6cMDTOA78nh6WK
         a+ETPsEXUSRHJIQe740FMKXwvrTwTZFHBrglh6m4Me26wpxI4eEHPiMk7BkbT4UpGofb
         tocYKJI1yrmSqKJSHD/HBdWwm1LLM5o149Y+mN3Csu3yEFwpR0uhiE+fEu0HvI95kg9h
         RlDDQLj04RrZgFZJr7VK2eUcJwEXGn4IsFWa3kGYpuFVsOKc55xtk5kMuLeaVN0HAt7F
         Af9dRPPQZ236V3nfBQr5t0PRkVIhVnaATDz3f686PRnIIgLAjzEaD5l48n1rnDURPDhb
         cSOQ==
X-Gm-Message-State: APjAAAXFDZMLhn/3EiJhSI3OH1aPQ6bRMuQw+nem1PTzCky110ZLyBBR
	Irc7yx1e8SrFdMBiWglMh4w=
X-Google-Smtp-Source: APXvYqx+KkomnwOAnqpiFpky3UjWKKlg8Tpj6qppvOT4IUP7GaF9g7U3a0Rkp17uwdRbt11PnV/EEQ==
X-Received: by 2002:a05:6e02:152:: with SMTP id j18mr47797491ilr.235.1582413653514;
        Sat, 22 Feb 2020 15:20:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:8799:: with SMTP id t25ls537257jai.7.gmail; Sat, 22 Feb
 2020 15:20:53 -0800 (PST)
X-Received: by 2002:a02:ca10:: with SMTP id i16mr41993725jak.10.1582413653133;
        Sat, 22 Feb 2020 15:20:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582413653; cv=none;
        d=google.com; s=arc-20160816;
        b=Hl8mbETX6BrCKrs2eKdH55ZBEqqGLSeMg0MNmXwHzTPRj70s/M6zRQEmsCfziLAber
         EZiXGqOhhAsR8YhWtxjHpgS7KkoUhr89gURBmcS1hyxWHBtMF3vUC8LnODhVSqjBD5V6
         2uhbeX+yVUJN9lOguYpUckCydi/ln2eu8kGXQXdlo17//9mdMXLZCcKneFAUjr9Fi8AA
         6XjTQn9+66Y5UdBYgv2jtCAqRrxlgnRniEy5RHqXNSvk8EAmbH+IXJyaVk8Wj2DSxJR3
         9LJMclDA+dSgoO6gZdIaAA44i1hc2r/x1Ciz10cONErn/ja4SszPoKm83jd+sbPW910C
         turg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SCgyQ9eHHbv+RMv6VChalN/zKk5dTdLe/epnyzLq5Ig=;
        b=d5Q48thxbxBXF7dcGHr54mdkca366HeRF4amTzdccdqZx4PbNbnQzrFNLX3SRT8CWZ
         SiBWkpiwbt5bTvHD7ISfkd6Iqi01/5lNygn7GPY4GyMSvbZqsYt0/O8zV4PCW9LYMRvM
         4s1g6vrEHVSYEG+kG9Y7kAQkm94HMhJ42ggQJGrt4HMg82gvinUJYeg6VDeS36e+QPQk
         2r7rwEASn5i/0pzKT6/j4wnP3Reai0S70UVbKxYc79P00KliNOuFvQeb0FYCT+mCrPl1
         vBFBZlGqMG9hsbQ8VZMvy8c2ICAj4JPXyKvMrd04ehz755W93eNqcLGJt8wNQyyzjb4W
         kcgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GKgquhT9;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id u22si372589ioc.3.2020.02.22.15.20.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Feb 2020 15:20:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id y1so2438679plp.7
        for <clang-built-linux@googlegroups.com>; Sat, 22 Feb 2020 15:20:53 -0800 (PST)
X-Received: by 2002:a17:90a:3745:: with SMTP id u63mr11356233pjb.123.1582413652237;
 Sat, 22 Feb 2020 15:20:52 -0800 (PST)
MIME-Version: 1.0
References: <20200109150218.16544-1-nivedita@alum.mit.edu> <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86> <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86> <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic> <20200222162225.GA3326744@rani.riverdale.lan>
In-Reply-To: <20200222162225.GA3326744@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sat, 22 Feb 2020 15:20:39 -0800
Message-ID: <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections from bzImage
To: Arvind Sankar <nivedita@alum.mit.edu>, Fangrui Song <maskray@google.com>
Cc: Borislav Petkov <bp@alien8.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Michael Matz <matz@suse.de>, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GKgquhT9;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Sat, Feb 22, 2020 at 8:22 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Sat, Feb 22, 2020 at 08:42:54AM +0100, Borislav Petkov wrote:
> > On Fri, Feb 21, 2020 at 11:21:44PM -0800, Fangrui Song wrote:
> > > In GNU ld, it seems that .shstrtab .symtab and .strtab are special
> > > cased. Neither the input section description *(.shstrtab) nor *(*)
> > > discards .shstrtab . I feel that this is a weird case (probably even a bug)
> > > that lld should not implement.
> >
> > Ok, forget what the tools do for a second: why is .shstrtab special and
> > why would one want to keep it?
> >
> > Because one still wants to know what the section names of an object are
> > or other tools need it or why?
> >
> > Thx.
> >
> > --
> > Regards/Gruss,
> >     Boris.
> >
> > https://people.kernel.org/tglx/notes-about-netiquette
>
> .shstrtab is required by the ELF specification. The e_shstrndx field in
> the ELF header is the index of .shstrtab, and each section in the
> section table is required to have an sh_name that points into the
> .shstrtab.

Yeah, I can see it both ways.  That `*` doesn't glob all remaining
sections is surprising to me, but bfd seems to be "extra helpful" in
not discarding sections that are required via ELF spec.

Kees is working on a series to just be explicit about what sections
are ordered where, and what's discarded, which should better handle
incompatibilities between linkers in regards to orphan section
placement and "what does `*` mean."  Kees, that series can't come soon
enough. ;) (I think it's intended to help "fine grain" (per function)
KASLR).  More comments in the other thread.

Taken from the Zen of Python, but in regards to sections in linker
scripts, "explicit is better than implicit."
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnvMS21s9gLp5nUpDAOu%3Dc7-iWYuKTeFUq%2BPMhsJOKUgw%40mail.gmail.com.
