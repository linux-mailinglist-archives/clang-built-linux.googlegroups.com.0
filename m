Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY6ZZL7AKGQE3TUDLUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BEE2D6AE7
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 00:19:00 +0100 (CET)
Received: by mail-oo1-xc3f.google.com with SMTP id n17sf3396181oof.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Dec 2020 15:19:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607642339; cv=pass;
        d=google.com; s=arc-20160816;
        b=e3CQkcYqjAljY26v2RDN3xQ7GH08nEpYJHUntwVP/fWKS5SDJqJzXDISIShF3JxWX/
         MUVWbzALsrQLqUGq6qCmeB4OJyQptgwsTU8nmo/pxVVA1umVkfEQjCKHJ3wtzlwX32Ta
         02apkCIvawR32Hewd9lMbktRc8UVG3LsiK6RhdoNzyhjD6GI8oDqnGjChJkpr9n3WQRx
         31R1U7KP/EZc+CYRgZ/yyRcfGrkhjhfQfbU3s3JtEY275TfHAoE2D1H5v9Kf5D4GGuL7
         fHf27VOm35fxUr9jMoiz48EVZ742Oe/GVRQ4Bov/MjFPdRtIgRRGomPuqJTLH8gfDkE2
         PC8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=sf1Dkqrx/nJ2wHjLZ0CpjaDcPJy61CWWK/OGAEXc/Po=;
        b=Rjgj6F8WDRlEbmwjNBFZ7Q1xaZ5EXZ2phXs2DLZfCbaOQPb2jf28ZmVOxGkZDIBrKl
         Poyukj6xWnhxroJKI0Fq6ZYznZC9OKA5bz12mfvEIxRcldxXg1N1qZJfJZjlppREEaa6
         r7GTsZblSwA1BqzSVAEFEz7tkwzP+Xd8UzTYgbwCBjS39Jn/hMDC0Olj4z0Ue9J595N/
         6G+JTFpahWmReGENP9PJnGULCUObkrQcPtHRUh7r8HSX5/9ncS3UiOwaUi+AFl92svJy
         uUW3n7YnVYUSd+tEE0plnNjOIiQVWpNieVBI6OLwtFHbIOs/bfq7tS9lHERC/jScYtfE
         6BdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=loFvrO8O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sf1Dkqrx/nJ2wHjLZ0CpjaDcPJy61CWWK/OGAEXc/Po=;
        b=fTrg8BOFJZ7Epx6ioI8LOEs62SzaQiHCuEApiuxukpArz9CVNrkJHAn6vZpak53Lhf
         Ac7m5K1w6b7Chycmq/4PApoRST+QqS6FXOccZksMlZXgga1KoSidOCjHNMJcfk9ZPkbW
         4Trt1QsT5Of/omPGpTNu1EYO0bX9XbrXSOI6DC0iT9IRNUBTuQTHeWQsoP/OUnB3RZ5a
         9YFQfY+LDFjckiHP4V+YKcnGQf95nzXhm/TZNCZzCngRr8/YSsGMhINpEuCtuuqMbCo3
         +TdXCXq/KBjFYNXfuyoOJMfepNh3RMddmVMQsp33bc8Jd8oTtKBGst/KqzFQw8G39TM1
         9JPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sf1Dkqrx/nJ2wHjLZ0CpjaDcPJy61CWWK/OGAEXc/Po=;
        b=IxcZfh6B094cWDt0Ico5wW2/9R810kOUFj0Uyy1+ur6VOLyLLSesgD86aKCiRHgwUc
         0KgPJAlnD0JTFW5s2rX0y6U2TnicEGYjus842i6igDOLMEARxEq/ezYlxBkwEIV2E+gn
         dWN9tTQGEtLgTDOUe8qQHE/fSWMWxLJl8h7hNHUVOY1D8ZZqbzw9/RIEVr7mUM4spl3U
         /0TF3I5Nidoig9uG76XJxRecZfo0bpTZk7Su6pb9w/2D+ZEy6YW1PNoGgPG7m+NUZxQo
         Tc95eV2iwTdbHO1b+qGs+6/o9AW3WvpsZ4SX5IJNInROnX/ZrvtDVSvOCLPfogF8QWhQ
         XJSQ==
X-Gm-Message-State: AOAM531lEkAoZlpi5M8Zyz08kDzF6qgGNDr+1iZuK4LRFPGqSAi+wOJx
	XYVMMS8SCh42rL0/55snu0U=
X-Google-Smtp-Source: ABdhPJyVnDKscjLr1yOHwrqtCoU0GeopJs+ZoimpQzetqvbBKD7gD8zm7VPWm6iA9RdAxik9LsGQig==
X-Received: by 2002:a9d:6f91:: with SMTP id h17mr7915689otq.104.1607642339145;
        Thu, 10 Dec 2020 15:18:59 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:4542:: with SMTP id s63ls1798688oia.4.gmail; Thu, 10 Dec
 2020 15:18:58 -0800 (PST)
X-Received: by 2002:aca:3809:: with SMTP id f9mr7079970oia.127.1607642338481;
        Thu, 10 Dec 2020 15:18:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607642338; cv=none;
        d=google.com; s=arc-20160816;
        b=u8/PZvX3Urb4HXkMeZI/mXPNatTGktf37EUtjUhEfl/YKQTO98hAgVDbaFotokQ8CN
         Bj7HEcdNtsONAqk2Mcjt51ubpwkDUxgczfj7TPH/Ed28RD7deo6w68hvOj20xLir06if
         jNUEmO/Wrz88XS1l9SIhCK4sx300Akg9ZKJEiY2hSF81/NMxxMwzfRRFgNSmILi80X13
         Gzc4EnJNH379swJ+1zPL7WQJHQPhVnjLNKOxpG9hM7gEXmQcBc375pBvVB8X5PfWdbqr
         dXWw2w7mmLGG7H2MsJQ5zrFaJPrFcDTczjrdrPuSKMuzKjbg9D5o9H907KguRc2z2xXd
         0wpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=cuo3hOaqklmDAlFeyNMO9tK7FfLVT9BZ8OlP4OtCFqU=;
        b=WRjUcTyCM+fGRjPdRpJw5ptFJoSr6rs6PL9dnlnxXbuX1LtJMKWraVaYJtwmwQE0Dp
         P3hK+/ymKx6rfU6s3+PKQyTDXpI8eU3nTUki834HmdQWSoXuUN8gHxpTMJrpPMpNHzq3
         gy9PXas+9wy3kbaJcNap74UxBwSrglfDGzrXx2PQO5h9hELt/sF4UUDcWTxJeFaRdGFy
         UL1ugM36NcQyQGpR2uJfa7zjGJymqwX+P+Dot+RnAClfDjcF8L9BsqjeLrDn6Bfn3pI3
         oEo166zJbZU1YZ4CUa/fR4fM4ieTfALMm5q6wZHz+F/VLU/34DqttcJ77PBC6Ss3MKC1
         Un8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=loFvrO8O;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t20si594236oth.4.2020.12.10.15.18.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 15:18:58 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id 131so5639723pfb.9
        for <clang-built-linux@googlegroups.com>; Thu, 10 Dec 2020 15:18:58 -0800 (PST)
X-Received: by 2002:a63:184c:: with SMTP id 12mr1370518pgy.381.1607642337689;
 Thu, 10 Dec 2020 15:18:57 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-5-ndesaulniers@google.com>
 <20201124172836.GA346213@rani.riverdale.lan> <CAKwvOdkGvLrPr4pHi4LKCF5t74+wencdy7r38d3k_4pC9pQYwQ@mail.gmail.com>
 <CAKwvOdmEVM67v8PqPWHP-VyGTkQpkWv8FdOTbxQ-7ebvSummMA@mail.gmail.com> <X8psgMuL4jMjP/Oy@rani.riverdale.lan>
In-Reply-To: <X8psgMuL4jMjP/Oy@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 10 Dec 2020 15:18:45 -0800
Message-ID: <CAKwvOd=SbbJptBbv3y39_ZCeTbO0vb_fa5ZbQQ2LUquegzLycg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] Kbuild: implement support for DWARF v5
To: Arvind Sankar <nivedita@alum.mit.edu>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Jakub Jelinek <jakub@redhat.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Dmitry Golovin <dima@golovin.in>, Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=loFvrO8O;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Fri, Dec 4, 2020 at 9:06 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Dec 03, 2020 at 03:28:14PM -0800, Nick Desaulniers wrote:
> > On Thu, Dec 3, 2020 at 3:22 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Nov 24, 2020 at 9:28 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Tue, Nov 03, 2020 at 04:53:43PM -0800, Nick Desaulniers wrote:
> > > > > DWARF v5 is the latest standard of the DWARF debug info format.
> > > > >
> > > > > Feature detection of DWARF5 is onerous, especially given that we've
> > > > > removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> > > > > support.  GNU `as` only recently gained support for specifying
> > > > > -gdwarf-5.
> > > >
> > > > With gcc, using -gdwarf-5 even without -Wa,--gdwarf-5 results in
> > > > considerably smaller debug info. gcc does not seem to generate the .file 0
> > > > directive that causes older GNU as to barf.
> > > >
> > > > Should the assembler support check be restricted to CC_IS_CLANG?
> > >
> > > No, because if LLVM_IAS=1 then the assembler support need not be checked.
> >
> > Also, if your version of GCC supports DWARF Version 5, but your
> > version of GAS does not, then I'm more inclined to not allow
> > CONFIG_DEBUG_INFO_DWARF5 to be selectable, rather than mix and match
> > or partially support this for one but not the other.  Either all tools
> > used support DWARF 5, or you don't get to use DWARF 5.
> >
>
> Why? Does this actually cause any problems?
>
> It seems like the options for gcc can actually be very straightforward:
> you just need a cc-option check, and then add -gdwarf-N to both CFLAGS
> and AFLAGS and you're done.  Adding the -Wa flag is superfluous and
> carries the risk of interfering with what the compiler driver does. Just
> let the gcc driver handle the details.
>
> Clang/IAS is almost as straightforward, with the only additional edge
> case being that for assembler files, DWARF 2 doesn't work, so the CFLAGS
> is the same -gdwarf-N, but AFLAGS gets -gdwarf-N only if N > 2.
>
> The messy case is only Clang/IAS=0, which needs to check the support
> from the external assembler, and needs CFLAGS of -gdwarf-N and AFLAGS of
> -Wa,--gdwarf-N, because Clang doesn't pass that option on to an external
> assembler. This is why I was asking if the assembler support check can
> be restricted to CC_IS_CLANG: nothing but Clang/IAS=0 actually requires
> that check.

Oh, I see. Yeah, that might be a nicer approach.  What should we do in
the case of gcc < 7 though, where -gdwarf-5 won't produce DWARF v5?
Maybe that's ok, but the intent behind the Kconfig check was to
prevent the option from being selectable if the tools do not support
it.  Maybe it's more flexible to pass the arguments along, and hope
for the best?

As a gcc-5 user, I might be surprised if I chose
CONFIG_DEBUG_INFO_DWARF5 if what I got was not actually DWARF v5; it
does violate the principle of least surprise.  Maybe that doesn't
matter though?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSbbJptBbv3y39_ZCeTbO0vb_fa5ZbQQ2LUquegzLycg%40mail.gmail.com.
