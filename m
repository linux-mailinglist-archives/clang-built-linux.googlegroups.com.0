Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCG6ZT4QKGQECYIJZBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id C571F2422EE
	for <lists+clang-built-linux@lfdr.de>; Wed, 12 Aug 2020 01:51:37 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id l22sf371041pjt.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Aug 2020 16:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597189896; cv=pass;
        d=google.com; s=arc-20160816;
        b=qwmDt23BYJj1EHKskbWazRfZ+4d5mxHGH5ar9QZTK1GZYRa3w7iviuKJNjPnmu1CjO
         L1nSMZJp69D+ILcac7yxGNDRl8ZJv3Nuc7njg8HWGIo4Xy0hUiGTdt5MsmsogKAKbkq1
         ir+Zt3lFUgDFGsu6APFz6gzauPOTS1aJSU+QnYm2ccDNKnHR4S+IOcgz1/STmAsWFtFC
         d3/3nrrkThIY6PKwu4qEGGMLuFDAce1MHjbf/kkKV5NMbt9ElIybG45iDW+2PUbLEMmS
         6ET25i1WzzY1OWV8tWEcTqge0jN88yncPrsoPDolirRRP9Es7xv2pHBx5IKZH/R8mqPi
         BWnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zqB6hCDfgiGgK/7RlHCYFJMSHjCJSTD0j72mUWm32hA=;
        b=fBejhyxgLAlI6b+eTFOazo9ybO92w0l6FgQdxZhEucIE/Xt/vlps+u8/nkO3dMB4gK
         IgKdNhNvji4GT2W+75E+4CrPkSVx9V6AMCIew2PRFi/kO4t/r5JYLPc7aXfoR24EnQQw
         sghnB1glwwQHjh1bJ9G8cyDxkgVur5G4e3b66IXohzKFiqt8vUvOlcjTV4viAmtLzJes
         N/+Xoc+R53M/XgsEfqMRyNaYgDqUhFNVyuYhqdch9ZiIu2Z5J51st1O2wx6apo+Myg2f
         RMdFOsCJvYhxC35IK9wb2PTnnG/Jwg1hOcRptT+sTnv+6tcDqj3UjhD2RqB42+ZpC79f
         /O+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LSyGz2XP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zqB6hCDfgiGgK/7RlHCYFJMSHjCJSTD0j72mUWm32hA=;
        b=X5MG5iPQwqeoQgrsikNnAIi0uR4HU2MRIVzmuwUU8KWB/vtobBfPdDC145tj+5x3l0
         lWZ21BAMWaR9wxwuz+8L5opfHgrtBIbcNL6H2TA1fdb4wH5j2vqr/FwXmVzvAeylc7So
         KfwibRRUZgbBBjsn1bK3T3MhYZUnO6EvhW5gIssb8wQkuDfgu1Op3Rw46xwj+ptBB9Vx
         J5PXDaNDTroENLAjoRdvHYMi0jthQnzLO9Qmb9CpRntEZWSd/Jd+U4twA9bsFq6UuE3M
         192tL2Y2EshfnZw0ZUni/E47lge9xy+Ky8tZxX62S+QPsVi6bzV6LdCbBJCudcHqyDVm
         zoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zqB6hCDfgiGgK/7RlHCYFJMSHjCJSTD0j72mUWm32hA=;
        b=MkMhnkUA5yvwvfwsG/AX+M2qidS/o1shxYDympopdel+2YTmhR4stVPUmyTCVaHIWG
         ir28ck/1pUPFQYAxKO/Pd5ukLEoWmOjRJIOtcCJN1yrwykcfBURFEvkul55pzMpTvvrj
         CRCDm/jswtatQq7KWCeCZTgSWc4A8hEei47glDp43KK6w3z53YcxFvmZl97Nc4cxK3Lo
         oHmrfbjxtRS+sGg9a+mCD1QW3FDjb0Mx9wQ58HyOQD2Lc31OQ+TUzozJvPWj+YFpnGRp
         GUHb53mnogdTraFSt+6II7wghBAmQZkZeozmQkpPoLG8m/3HujskrZ5eJe9OqlZXit41
         rFMQ==
X-Gm-Message-State: AOAM530srdTCMBbFhq0aHkPIMgsI+3wVeJUhKySjkZmfQP86w28I5i7T
	gu6WGnHFimvxCDOoxb1JDPY=
X-Google-Smtp-Source: ABdhPJzq2w4+a8zwoMQLO5W/0Slr6RpcTR//DSVzJSmpb2U6HEdtF+uvtU4LY6/VJXsBfF6spJaNRQ==
X-Received: by 2002:a17:902:ac87:: with SMTP id h7mr3137436plr.238.1597189896262;
        Tue, 11 Aug 2020 16:51:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2126:: with SMTP id n6ls143344pfj.5.gmail; Tue, 11
 Aug 2020 16:51:35 -0700 (PDT)
X-Received: by 2002:a63:e60b:: with SMTP id g11mr2858960pgh.188.1597189895844;
        Tue, 11 Aug 2020 16:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597189895; cv=none;
        d=google.com; s=arc-20160816;
        b=yQVtNFm4NKNCNjT2kxiUQ4/XAyBlDbyBXBw9qQychLahjDfTBGeArps78HpMjU6WKv
         V5GTzcXCArVbojhPIkvE8KKO7QVLud2f8HCIzmOpSE2Jq/lI//M3pr+l2jmp0tA/PYnY
         oRb9lt1ktwL8eOr8mxfnYcyjY5QmAeiXH1kiHeM/84qRtOK+m1ZnoU5kp+xYKSHwLK9Z
         ShXXXh/oZTFamKcghpJkpqBws6YG7A3zUZgSjiosKuKCmm18U8B/NG1XCfVu4xw2RndA
         RNsCvZfDTzaLDM9UQmXKqGSduQnmtAPj62/+3cRNgW1w4+OiMrAhxXXXM0YG4gWAA8k0
         lfug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=y1qDjAS8ZPDC4LMj3s+e938rgxLp1azn8ZYiupGKT1A=;
        b=ldDD9feUqZkfJo4xQiOhUK7O6EQUQnjV8qDKP61ELOtIHuqi3SsWes9N/hW2tmhpEi
         J6ckeJYMCODN0PxH3P6Uzwm4VQXEXZ1FNv4WU6DuHHgCZoiPUUlYGUU01muQjnShRH6H
         RXqp+Rl7RATp+ZXG8EPIErkW51sy9LgpY9BxxbVATIUCbOi5kqUpb5BTLi/LmnWXkjvf
         jwTLsdA56z6p9vl2329WNBXso10hykAT0oaEndGRXhYkZm+d/1g9rjM7Fslt969948ck
         7WZtAczjNFF3PZ3dVSBtPG1Yn0ldrGdA/AZ1Ad7yOY1Hxa1TWeYOd28qnRnaiIlSx03s
         gIEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LSyGz2XP;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id s2si48441pgh.4.2020.08.11.16.51.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Aug 2020 16:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id i92so2141454pje.0
        for <clang-built-linux@googlegroups.com>; Tue, 11 Aug 2020 16:51:35 -0700 (PDT)
X-Received: by 2002:a17:90a:fc98:: with SMTP id ci24mr3603977pjb.101.1597189895220;
 Tue, 11 Aug 2020 16:51:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=ypa8xE-kaDa7XtzPsBH8=Xu_pZj2rnWaeawNs=3dDkw@mail.gmail.com>
 <20200811173655.1162093-1-nivedita@alum.mit.edu> <CAKwvOdnjLfQ0fWsrFYDJ2O+qFAfEFnTEEnW-aHrPha8G3_WTrg@mail.gmail.com>
 <20200811224436.GA1302731@rani.riverdale.lan> <CAKwvOdnvyVapAJBchivu8SxoQriKEu1bAimm8688EH=uq5YMqA@mail.gmail.com>
 <20200811234340.GA1318440@rani.riverdale.lan>
In-Reply-To: <20200811234340.GA1318440@rani.riverdale.lan>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 11 Aug 2020 16:51:23 -0700
Message-ID: <CAKwvOdn5gCjcAVHZ3jHU+q=mD5rmFAHpEyHyLf7ixtdaQ3Z-PQ@mail.gmail.com>
Subject: Re: [PATCH] x86/boot/compressed: Disable relocation relaxation for
 non-pie link
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	e5ten.arch@gmail.com, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, Kees Cook <keescook@chromium.org>, 
	LKML <linux-kernel@vger.kernel.org>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LSyGz2XP;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Tue, Aug 11, 2020 at 4:43 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Tue, Aug 11, 2020 at 04:04:40PM -0700, Nick Desaulniers wrote:
> > On Tue, Aug 11, 2020 at 3:44 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > >
> > > On Tue, Aug 11, 2020 at 10:58:40AM -0700, Nick Desaulniers wrote:
> > > > > Cc: stable@vger.kernel.org # 4.19.x
> > > >
> > > > Thanks Arvind, good write up.  Just curious about this stable tag, how
> > > > come you picked 4.19?  I can see boot failures in our CI for x86+LLD
> > > > back to 4.9.  Can we amend that tag to use `# 4.9`? I'd be happy to
> > > > help submit backports should they fail to apply cleanly.
> > > > https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/builds/179237488
> > > >
> > >
> > > 4.19 renamed LDFLAGS to KBUILD_LDFLAGS. For 4.4, 4.9 and 4.14 the patch
> > > needs to be modified, KBUILD_LDFLAGS -> LDFLAGS, so I figured we should
> > > submit backports separately. For 4.19 onwards, it should apply without
> > > changes I think.
> >
> > Cool, sounds good.  I'll keep an eye out for when stable goes to pick this up.
> >
> > tglx, Ingo, BP, can we pretty please get this in tip/urgent for
> > inclusion into 5.9?
> > --
> > Thanks,
> > ~Nick Desaulniers
>
> Another alternative is to just do this unconditionally instead of even
> checking for the -pie flag. None of the GOTPCRELs are in the
> decompressor, so they shouldn't be performance-sensitive at all.
>
> It still wouldn't apply cleanly to all the stable versions, but
> backporting would be even simpler.
>
> What do you think?
>
> diff --git a/arch/x86/boot/compressed/Makefile b/arch/x86/boot/compressed/Makefile
> index 3962f592633d..10c2ba59d192 100644
> --- a/arch/x86/boot/compressed/Makefile
> +++ b/arch/x86/boot/compressed/Makefile
> @@ -43,6 +43,7 @@ KBUILD_CFLAGS += -Wno-pointer-sign
>  KBUILD_CFLAGS += $(call cc-option,-fmacro-prefix-map=$(srctree)/=)
>  KBUILD_CFLAGS += -fno-asynchronous-unwind-tables
>  KBUILD_CFLAGS += -D__DISABLE_EXPORTS
> +KBUILD_CFLAGS += $(call as-option,-Wa$(comma)-mrelax-relocations=no)

We'd still want it for KBUILD_AFLAGS, too, just to be safe. Maybe a
one line comment to the effect of `# remove me once we can link as
-pie` would help us rip off this band-aid in the future?  It's more
obvious that the added hunk can be reverted once -pie linkage is
achieved with the current patch; either are fine by me.  Thanks!

>
>  KBUILD_AFLAGS  := $(KBUILD_CFLAGS) -D__ASSEMBLY__
>  GCOV_PROFILE := n



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn5gCjcAVHZ3jHU%2Bq%3DmD5rmFAHpEyHyLf7ixtdaQ3Z-PQ%40mail.gmail.com.
