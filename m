Return-Path: <clang-built-linux+bncBCIO53XE7YHBBBHBSD4QKGQEB3SKI7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A2F234805
	for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 16:53:57 +0200 (CEST)
Received: by mail-qv1-xf40.google.com with SMTP id q12sf13227128qvm.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 31 Jul 2020 07:53:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596207236; cv=pass;
        d=google.com; s=arc-20160816;
        b=iNakOV7US3kUZ2LldbTer93ldzvi4uhUyy3jfVFdCg7m2WC9z/3NG4evQE8dTxZdas
         KpH5GORDfMMp29HM8VxKHjHgRrYUJor/mbTCDDPLNZMqvSoofopTmXJbS1EFtvm5HgI5
         ZMDhiQULOlaCt+1m7wyON1B3G955Y+pIK+/GFM6dvrHwNjvo8FJwJTxUzZ9TuSNF6BXz
         1E9+93/EvtVY+39sk8EJACcDu8I836NEE2/Bx82y6kIWS3ALg8YD6QkfW6i6Nya783wM
         nX9mWYs7tE0StJTnfrVIrNZlsGtb20EkdMM0TvqIGQnYLRSi6E6KmzpIFNmS6t620c9B
         qooQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=bfQFU/hUZl267byetacsWmCJOMGX+/Q6bITa81mxY70=;
        b=fLRGjm6SLD9ZwbawvNdrQwwdwFtw9XLVFZ55TB19bBqldQ5hf3NxG0WBK4vHxZq9CG
         1uNfdnYjFQGKWAovL0oMZyNNZabfiejm4O3uNPbGMwB6zpz80z7/jGrGfyKTZBUm+W7i
         Vln40yNgO+c+5UAuHhmiZL9FD5R6PZnfi99a5IXIncUPqT83FONHJL5gJOqLnlVo0kt1
         iYUa91N3PepgrmC6L7sPtjFE/4mAehlvdmvUaOsDyEbdrheThMzWSrMtPpvbKuES9qsS
         /RcFK/h/nSxk1QAMkGq2vxdK2kJG+N845xeA61/HHOzEiAIUetpIGpBs6YKgfPs23hW4
         8n+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9qW9HTv;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bfQFU/hUZl267byetacsWmCJOMGX+/Q6bITa81mxY70=;
        b=ePc840PufS4BUCRLaZS9oKgGK1M+ej1AgimfEdUEmtv9TbrgrAezjo/KAcMM06t6is
         mLxNH31owbfAjvEx9FLyQBXvwnH3/i3PygOWWsM/Wp1J8Eb5Jjq9tE6H9Uzqw6q4ItY5
         66w1vtTuxik3+Ialqjzli0MojU5vKwv4sPwzIPGhdViyO8P1lJm3StJeRqZhfmpFZVpb
         353P61aSO+ows2qDz1sjOQtPiQMJ7a+8A5TIP5+jKtP0u/ALI33JxFwGyr6JstbtO8qA
         DllVLRewL5xxvB0C8TNu1MiskEqiCln09MlJFyoDs1j0hvujBpnoNe+C828xX/41yN9q
         VGAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bfQFU/hUZl267byetacsWmCJOMGX+/Q6bITa81mxY70=;
        b=qWNL8b8z+Q0DY6Dz3DazcMQ5j6c84WxILfYUMkxOnvV7l8qOJZ4auNC02zVe39oq6T
         km57tQCdNmlsS5RvcJ0eag5dddQh/+N1QKmvn8rfqHPmRzMPYVPWNGPWE5iAvaFtizcG
         iWxC+CW3ddCvptTC/h6o7q5Hpc3e3mvKN+IiirtyeBaV9g6/l1DmSADlIVBZLTCihZCu
         ABGIOWFh9Dgflr+couCDgKhptGwxztKY0kYo33526UNGplXgd1DvbS9rPAd3meAeEDdQ
         GuL0SK1Us7ZGW5ofVPNYf+2OGBaUS/yLH+e0+mnEkv/psn02rjMHVetC1I+zKfBCLblT
         xskw==
X-Gm-Message-State: AOAM530ZNbYMCz9IRELm1X70aW6tM9/LWUhC18RGQAmY41oRXqfbblCj
	muH2kmHKemD2p9g780eQkV8=
X-Google-Smtp-Source: ABdhPJwvtXDUfHvaEqF3JJhWfDxv/MoxQxfDRCv9cE/LtM1Kpw5e4f1rsvGKLQAYpyuczjc1XAFuFA==
X-Received: by 2002:a37:6808:: with SMTP id d8mr4076031qkc.15.1596207236457;
        Fri, 31 Jul 2020 07:53:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4e4b:: with SMTP id e11ls3664577qtw.4.gmail; Fri, 31 Jul
 2020 07:53:56 -0700 (PDT)
X-Received: by 2002:aed:21da:: with SMTP id m26mr4089406qtc.197.1596207236052;
        Fri, 31 Jul 2020 07:53:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596207236; cv=none;
        d=google.com; s=arc-20160816;
        b=Q4PnfFX9SjfSiqu3aq2/FrIPQqIr2ukij2mSg/KsIqaoCMzQocL2TOE3VYpXRZ699M
         vOusY0/scswGBVEoRhoMycRGqV8qjlPH91P663FelXKlfQbCaIM0TXyWMQ0T4jKWZvsn
         zIAw00A9YkVzRbggrBtPPRZhnxgqVACwqjfT9S4FcbmOUZKbhOHjJhYkhkq9Gg7GnOZL
         Kc/wgQvexN8AZ5xjzidUapWvRbxRYb8879FmPIjFpAQFp9jvgvwDHs4uYmPo4/97ejg0
         GAkoFk1WE0dQ/Faet+tQLESBRiz5gb0gs8Camo1l7dSH4hJSIFq7yDt15y3m1RzfyjmS
         tp3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=CJ7CXsexIR3+9NabGND9XyABX4+Hw57eKjQc2Kl4LME=;
        b=PYe+CJ3pgKrrF1/ajpgBZo6afj4H+l48619tbgz260T0xQ4x46S3eEEBP8l8pyji3L
         3oJz6yohJg/PBL/qeyJVjcw/lW6vi5TK4izNgmcwJWopUSqQ7VdYC+ws/lsTQlpA1qjL
         lwAsrhu2nWPMp9AND0x8irG0pGFESoSux8lpOlaffB72j+ERFRVdrEqKu9y8NKNahEsi
         pb2YYYzTbDT5YU1CaGFQUiWDBUp9gQg8kjplNQ27sDvevlW/3LgF37WcUF/dJ7vo7wTr
         QmkQeBu04/mSdWgp32LI67SrBa3yEYEaVHwea3UV00qfnhPoDXTmQRj/eFTak4A0El3z
         fhpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A9qW9HTv;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id w35si551887qth.1.2020.07.31.07.53.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Jul 2020 07:53:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Received: by mail-qk1-x743.google.com with SMTP id d14so28970918qke.13
        for <clang-built-linux@googlegroups.com>; Fri, 31 Jul 2020 07:53:55 -0700 (PDT)
X-Received: by 2002:a05:620a:22ee:: with SMTP id p14mr4542341qki.223.1596207235574;
        Fri, 31 Jul 2020 07:53:55 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id x29sm8713166qtv.80.2020.07.31.07.53.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Jul 2020 07:53:54 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 31 Jul 2020 10:53:52 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
	Borislav Petkov <bp@alien8.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	Fangrui Song <maskray@google.com>, Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, "H . J . Lu" <hjl@sourceware.org>,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v5 0/7] x86/boot: Remove run-time relocations from
 compressed kernel
Message-ID: <20200731145352.GA2076085@rani.riverdale.lan>
References: <20200714023836.2310569-1-nivedita@alum.mit.edu>
 <20200715004133.1430068-1-nivedita@alum.mit.edu>
 <20200717134654.GA3187880@rani.riverdale.lan>
 <CAKwvOdnTbatx8VB-rJSzyFPwfYnkMYK28yLBn1G+hUu8dyfYRA@mail.gmail.com>
 <CAMj1kXGeSFXnuO7Y94pyBU9qfSgtsLvMoCZSfDk476BBs2ejcw@mail.gmail.com>
 <202007241624.D59FB48@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007241624.D59FB48@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=A9qW9HTv;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::743
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

On Fri, Jul 24, 2020 at 04:25:20PM -0700, Kees Cook wrote:
> On Sat, Jul 18, 2020 at 08:44:50AM +0300, Ard Biesheuvel wrote:
> > On Fri, 17 Jul 2020 at 21:17, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jul 17, 2020 at 6:46 AM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Tue, Jul 14, 2020 at 08:41:26PM -0400, Arvind Sankar wrote:
> > > > > The compressed kernel currently contains bogus run-time relocations in
> > > > > the startup code in head_{32,64}.S, which are generated by the linker,
> > > > > but must not actually be processed at run-time.
> > > > >
> > > > > This generates warnings when linking with the BFD linker, and errors
> > > > > with LLD, which defaults to erroring on run-time relocations in read-only
> > > > > sections. It also requires the -z noreloc-overflow hack for the 64-bit
> > > > > kernel, which prevents us from linking it as -pie on an older BFD linker
> > > > > (<= 2.26) or on LLD, because the locations that are to be apparently
> > > > > relocated are only 32-bits in size and so cannot really have
> > > > > R_X86_64_RELATIVE relocations.
> > > > >
> > > > > This series aims to get rid of these relocations. I've build- and
> > > > > boot-tested with combinations of clang/gcc-10 with lld/bfd-2.34, and
> > > > > gcc-4.9.0 with bfd-2.24, skipping clang on 32-bit because it currently
> > > > > has other issues [0].
> > > > >
> > > >
> > > > Hi Thomas, Ingo, Borislav, would you be able to take a look over this
> > > > series in time for 5.9?
> > >
> > > Hi Arvind, thanks for the series; I'm behind on testing.  When I try
> > > to apply this series on top of linux-next, I get a collision in
> > > drivers/firmware/efi/libstub/Makefile:27 when applying "0002
> > > x86/boot/compressed: Force hidden visibility for all symbol
> > > references". Would you mind refreshing the series to avoid that
> > > collision?
> > 
> > That is not the right way to deal with conflicts against -next.
> > 
> > This series targets the -tip tree, and applies fine against it. If you
> > want to apply it on some other tree and test it, that is fine, and
> > highly appreciated, but 'refreshing' the series against -next means it
> > no longer applies to -tip, and may be based on unidentified conflict
> > resolutions performed by Stephen that the maintainers will have to
> > deal with.
> > 
> > Boris, Ingo, Thomas,
> > 
> > Mind taking v5 of this series? (With Nick's Tested-by) I think these
> > patches have been simmering long enough. Do note there is a conflict
> > against the kbuild tree, but the resolution should be straightforward.
> 
> I would love that; I need to rebase my orphan series on this too...
> 
> -- 
> Kees Cook

Ping?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200731145352.GA2076085%40rani.riverdale.lan.
