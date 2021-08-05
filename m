Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBV7HWGEAMGQEMKSS3FQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5C43E1F53
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 01:27:20 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id u77-20020acac4500000b029025c7e6f8b64sf1550266oif.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 16:27:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628206039; cv=pass;
        d=google.com; s=arc-20160816;
        b=s25mDSY8H/SyJpHUGgGdRa2/xEjSpyrgaZd/0GZajcG4l02a1Oj77HWs3W8yeOXwdO
         9OmJ1vPAnCbKs7cPl3BxNdLHTUk28zgCCUfJVf8+la7G5YKW6zptxKiwTcD9R2fgKJLT
         wx6+tDzJ7Wfwovf8YJ8wfdLLGg5Tz6ebpkS/sP1yvaIj/BZoSSzWAPvABY7VPACgefVP
         3qe0//Rrz4smYFkrNxUNRlpSVECeoTdK2esxtGu7ZLU0+k6MoXnRubuMK1OXaCveNb8j
         QsvkdXFNicCzEcgbp5FAX7R9oRZ3LMS0wltE68lnnIPZIv7Xr6Krq3aglWCP/Svog7Fh
         IIEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=USPwD+DsLyU+yDGi6xlv0BYn1q5UecbBkvGYQVTa53g=;
        b=lDOeq9Y8w8AQQ1uiZrw5UT2BIYtVUmZJTzyQeW9sOk61gjYVfrfh8cdhwMgFRVRZ2i
         gxSdxHyjobLWO9kknyUxQzZw29EvRQycQ8TbeGfpPIABl4ECLSi/fe6ULc+mjjQfOg2B
         qa9008taCDMFGLKqGb8/Cnkh+RQFubKAl6MlQnsaOYeno8t/j/66tvfx50UzySABcVsO
         QdQpbHqQRO5otB2RdUwzu/ats1HGSNs9qvmiC8AkxvOKX2kQBbyCDt3mxnnH0AbFXRJy
         nEdxcFxJPnDV8/CmmwzrcfHc8/DFJgqSwgIMqUYpMhrPMfDd9NPX6somdNlJypzFi0Q7
         o5bA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yY1mkoKd;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=USPwD+DsLyU+yDGi6xlv0BYn1q5UecbBkvGYQVTa53g=;
        b=n6nfCwfgGSM0LqmElGGa8OIxpXrgCDU4Dk44EiNlHhGGl/YtTuLZaJd+USzTvihvYs
         yPYkdSRB3T/sgGYxKaSS3JJ5JIHQVdW7fiewvASSp6dMSOg+QXwAzZIHr6OHP69J46A3
         a6gnsdpkeWO2agxqe7r9aKsbbw07odXSGRPN/5zmxC63mt8EDVqXjV5BpUe02J+uCRxL
         XrWKSCxoL0DqtoOhJtpZkd8OV3Nokta8jed8CHansvxifGJGQLRpkLDNsMMBCXXQHVyd
         hIrW0KQoTUP3jr/SwFBopWOV/lbNmsKTBp/epvT1PhT0tqT4F3m47Kk3oghtCTesgEac
         HDgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=USPwD+DsLyU+yDGi6xlv0BYn1q5UecbBkvGYQVTa53g=;
        b=dNeXm50r6Cej2G+IeMv//i0cmqAynX7HQDitBSLvqdHHzyCH1S5n2GntHMt3yyY82g
         0SPeSJj+DgYOP7zVBoMlHmKXWtlETA1FP19UCE05xBfHHoWEqhaONxhJuXZZylj39YH1
         zAoue9iq81F7W4/bI7HDTwML6GNs55NfB6Dq8axcPwyYzfbcls3xaqbpGr+aHOnEXSlp
         Xu5I7/wgAJzXB6Qxkl6PRRM/VJzJ+4XG0atXDGzFqYZfxnKeyxducfV5pJfq6+dbgnZj
         1nUW9kTvE8ErA6ClfFWijcvhg+ijzA5GhY5Cp9H2XwqQBOlCvtUVQjnRFf6wB+7lbJbE
         WrkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530kU+ssmZY4K9G+b9f29Ond2CsOHbFGiEi1R1f13N03kGnquDkQ
	corPpKa81MzVnbz9NjbmhqM=
X-Google-Smtp-Source: ABdhPJztoDxNBXJzb299bLgIuY0wufd/7qB0T92wbKWNfe4N5ZUHIC4REzaIVJi+E8T9AcxO/Mzxtw==
X-Received: by 2002:a9d:2ec:: with SMTP id 99mr5459419otl.46.1628206039148;
        Thu, 05 Aug 2021 16:27:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:2210:: with SMTP id bd16ls1839382oib.2.gmail; Thu,
 05 Aug 2021 16:27:18 -0700 (PDT)
X-Received: by 2002:a05:6808:492:: with SMTP id z18mr5387118oid.101.1628206038724;
        Thu, 05 Aug 2021 16:27:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628206038; cv=none;
        d=google.com; s=arc-20160816;
        b=czctudTLPOmrAj5R/o3X/TU1ShG+LUlNTYn9xFj7HWU+Y+cmYiRFdOgB41PR9u3H+J
         VikwSo7Kb/QJLJwo0OpGyY7hOEAUyMLSF3EOwJcazgq9sT1JXHLrOjyviBTsCTtoieaM
         y3MkrglOgew1pm6FSP1WHyXjodhYJAP6/R28quKZHxYXnvxkeA7rjkvUqRey43CdUHvP
         ar0IV8D/5kh3P9Uel6087vSxxKXZpLnEyY3Bv47Ka3TRcLq5iIcvw9ERdwIT4913V7gL
         xL+z98xxSw61uvonE8f/XGogUxSkMWF7bTODAVSGSNqawSBIGP/jMVw4rdLzCli6WagF
         ToGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=MTJTYLNOKEORvL0xiX49grwqhg7y9DI4scWvkscW0DY=;
        b=XLWrQMlC3Q7+htWIymJWfa4t0lBduq3WsuWUKe0sA8hf67vYujAzECKMDDxFmS1jiF
         bFWXoZElC4NRYv/kz8yyB25NJ3Q0BZHh0W7W8blGvJcrPPEWoQxm4DFswhqpVZt4Or9V
         +ZzjSqrswoqMtwrp6ODX/A9FvX3cENpvkImJztIYENe313dHCQneboWma+cO6O/kKmo3
         DJVpyhrpyEhQuWbAm5SAKjllT0pJrOGhil324g4FZiWd42PRKEnpjgZE250DNwch4hPG
         nTs9+63CK3IO1fQ4ttm+cElxj4cxAmEkKRwmDFlnJh3xhYAAlfZ/ybtBT/z6o5BkD06V
         akQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=yY1mkoKd;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id o10si386092oic.3.2021.08.05.16.27.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 16:27:18 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 175NR1HG023516
	for <clang-built-linux@googlegroups.com>; Fri, 6 Aug 2021 08:27:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 175NR1HG023516
X-Nifty-SrcIP: [209.85.216.52]
Received: by mail-pj1-f52.google.com with SMTP id u5-20020a17090ae005b029017842fe8f82so4198554pjy.0
        for <clang-built-linux@googlegroups.com>; Thu, 05 Aug 2021 16:27:02 -0700 (PDT)
X-Received: by 2002:a63:dd51:: with SMTP id g17mr1684pgj.47.1628206021266;
 Thu, 05 Aug 2021 16:27:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210802183910.1802120-1-ndesaulniers@google.com>
 <20210802183910.1802120-4-ndesaulniers@google.com> <CAK7LNASkBNDzXWxweotPZGJH-z3J59rPQwGDV32rfH9hH+sVHQ@mail.gmail.com>
 <CAKwvOd=iyhky9jhw+UpYM7W5-7tqo02sxpZUASEk6XciS0wSwg@mail.gmail.com> <CAKwvOd=5drNCoU-PLFb-kJTzk1tXOvwCK89hAMPXrBZv+Ey=Bw@mail.gmail.com>
In-Reply-To: <CAKwvOd=5drNCoU-PLFb-kJTzk1tXOvwCK89hAMPXrBZv+Ey=Bw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 6 Aug 2021 08:26:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNASLPqEYbsEEJZ0S1UvR2v89HgmgcEtutNmW6oCm5TGB9A@mail.gmail.com>
Message-ID: <CAK7LNASLPqEYbsEEJZ0S1UvR2v89HgmgcEtutNmW6oCm5TGB9A@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] Documentation/llvm: update CROSS_COMPILE inferencing
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=yY1mkoKd;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Aug 6, 2021 at 3:29 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Thu, Aug 5, 2021 at 11:27 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Thu, Aug 5, 2021 at 6:58 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Tue, Aug 3, 2021 at 3:39 AM 'Nick Desaulniers' via Clang Built
> > > Linux <clang-built-linux@googlegroups.com> wrote:
> > > > diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
> > > > index b18401d2ba82..f8a360958f4c 100644
> > > > --- a/Documentation/kbuild/llvm.rst
> > > > +++ b/Documentation/kbuild/llvm.rst
> > > > @@ -63,6 +63,23 @@ They can be enabled individually. The full list of the parameters: ::
> > > >  Currently, the integrated assembler is disabled by default. You can pass
> > > >  ``LLVM_IAS=1`` to enable it.
> > > >
> > > > +Omitting CROSS_COMPILE
> > > > +----------------------
> > > > +
> > > > +As explained above, ``CROSS_COMPILE`` is used to set ``--target=<triple>``.
> > > > +
> > > > +Unless ``LLVM_IAS=1`` is specified, ``CROSS_COMPILE`` is also used to derive
> > > > +``--prefix=<path>`` to search for the GNU assembler and linker.
> > >
> > >
> > > Is there any place where we rely on --prefix
> > > to search for the linker?
> > >
> > > In general, the compiler stops after generating an object
> > > since it is passed with the -c option.
> > > The linking stage is separated.
> > >
> > > In the old days, VDSO was an exceptional case
> > > where $(CC) was used as the linker driver, but
> > > commit fe00e50b2db8c60e4ec90befad1f5bab8ca2c800 fixed it.
> >
> > See my previous reply to Fangrui.
> > https://lore.kernel.org/lkml/CAKwvOdnK=SUm1_--tcLRO3LVeXd_2Srfv2tsZCUW0uXXa1W_pg@mail.gmail.com/
> >
> > To be more specific, I believe this is still a problem for ppc vdso.
> > https://github.com/ClangBuiltLinux/linux/issues/774
> >
> > I had sent patches for that, but binutils 2.26 would crash (IIUC,
> > newer GNU binutils are ok).  See this thread:
> > https://lore.kernel.org/lkml/b2066ccd-2b81-6032-08e3-41105b400f75@csgroup.eu/
> >
> > So "we'd prefer the linker was used as the driver, but there's at
> > least one place I know of in the tree where that's not currently the
> > case."
>
> Also, I think the CC_CAN_LINK functionality also fits the bill.
> https://github.com/ClangBuiltLinux/linux/issues/1290
> --
> Thanks,
> ~Nick Desaulniers


Ah, this is it.

Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASLPqEYbsEEJZ0S1UvR2v89HgmgcEtutNmW6oCm5TGB9A%40mail.gmail.com.
