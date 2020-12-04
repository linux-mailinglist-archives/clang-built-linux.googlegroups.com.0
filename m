Return-Path: <clang-built-linux+bncBDYJPJO25UGBBLMAU37AKGQEDCGLO2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 934602CE45C
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Dec 2020 01:17:50 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id m31sf1077488uam.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 16:17:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607041069; cv=pass;
        d=google.com; s=arc-20160816;
        b=lk/uTDXxyAORLOA7d8eAtuliveFECUzXmmCQ+irQCy30uweoKtY1IGTH0O7TvuRbEg
         VCz0ucNlKk2NkRs6AFSc4NJXZpzI6ma0eBuemm8sSwl0IL6Z0Qz5BzZQTNkY+HyBuU8D
         wv885wodI5/Ds31YVzPfUyr5Ko5wTkJhwBAmkW82IbkJxrqYl8pTJiSAJHZRekeEoWlp
         Xy+52W7MWoGVolzJlUmOAgbHos8RhEQa3wUME5zDBRgx5jbVKPH6FN+NswhgJ0XMxYid
         GMubUyL1tWIXHoGRCsXIlXjqhqsL3CNFDMd5FVbEwuHFsak0ctap9irn/C9K2GJ5XSEC
         t9lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9o3yAfya6c+2Db+l4210MSzy99TWacZkroJka3LHAQc=;
        b=SzEGhhEqwWWk/lhkRNia0h0jaMaCZHA7aejzz1ixiCcO1egdxEZf+PLwPR9ZSn1czk
         dXTeUQ+tT4prpppX+J6F7BxZPTTmzDyjtlwpczqq5gaHJB0FRq98KxaKQNKVgnawdiTb
         VNh4aC6nipfBTi/i211zGMX/bEKWMaTE2XIqMAZIsGOAeip6mcHTNE0swGFsRBG2xcAy
         6DOizhSUA79G6j8v3dDk1Xo7yH4aigMk4rRHdYJ7IlWL0Uv/xTa1L04OQVal7oJOwxvJ
         igC4Ql9OTWS3vAwqbtdr8xCRr6g0s8R9GS9EYx+M1swEO/swazavqmZLlYVQj0rhNVeB
         Ea1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f6utJprc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9o3yAfya6c+2Db+l4210MSzy99TWacZkroJka3LHAQc=;
        b=qNxo3h6W6MX7igE6qxBlIlO9Cz6xULEDQAMLKXOwgf9wAexW182gsqNhzYzrK0mjqj
         QnUu2q2LQ5LwgZgBscktWRYG2CTjupzHx+veT5lufeKEmNwlKSsjxonVa1IyL3XZmCm5
         d4BeZ5aR4J/I4/PiJX4UiXpH1u5fxHE4XsUHut0zUY7jpqYpK8cFiAizo5UsJH/cXRmq
         E7NvUnpxGyRKly0YAWQTtdNj2ElE9PpuMbHr6tvJD30mqUdnOTjRkfbyIJuVqYgV4ZJ2
         n5tDkM5bfJzT799h+blumjtVoGq/eWJc0k8x9oIkdWtNOsYnP1yBKOKCuwEHQdgiRCJZ
         hL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9o3yAfya6c+2Db+l4210MSzy99TWacZkroJka3LHAQc=;
        b=fcMtxgxdkJUYjC5BvqmxCT1YCzCFfz3WlMCzoFXMZC03Pl0fkGY7+jcIQo6C1epXcQ
         aZNcbi7CEd5x01ekPAy0/g2EKz2sOeqjCcMLLGiEczfLtYHtK5otYuvrhxy04Wkaj6oe
         eCUyJ9peFYHV8evklyj3XmXAlXFAhDRNo5qNiy0nuCkJ1eGm3ngaxD9jHpr8krgjzvdr
         oEZ7/Ov3WUTVmHiVuiglDR/uyY2Q4ShA9s1c+rpSbFCMDoNPQq+4PU56p0tAxIisAvYa
         inaV/tPkl/vRXV1Sr6s5T56J7AXgd5SSKJeX8QfafCJ8kN9vMJ240BNnqDXlhbfvJvNg
         rtrg==
X-Gm-Message-State: AOAM533v8w7WiSuKbmsQeZRW+oH79/tUwZPaUFUOKkEwn+OVylPxS6Gr
	RnumkBqra0wn+gNxDhBktyM=
X-Google-Smtp-Source: ABdhPJwJp1vibMYUin9rr1pnqq7n/6OIiD61wHBy+IXCwTaaYV86abgA96v8WQ79Q/nxxFnsQhZdRQ==
X-Received: by 2002:ab0:23cc:: with SMTP id c12mr1394009uan.89.1607041069508;
        Thu, 03 Dec 2020 16:17:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f583:: with SMTP id i3ls1057347vso.4.gmail; Thu, 03 Dec
 2020 16:17:49 -0800 (PST)
X-Received: by 2002:a67:1344:: with SMTP id 65mr1694189vst.57.1607041069156;
        Thu, 03 Dec 2020 16:17:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607041069; cv=none;
        d=google.com; s=arc-20160816;
        b=AxV95VVCLagH4X1yIs2HtRw9C931Tx3XP/WfbnGBydeoSPd6qINvFhRpYlAZnzpF62
         8f2wJN/9xQKMl3LGO1CvV3SmcpuhnPmlpzp5VAXU3EFIl3HKg2yiJhh/It8iR8ovU6rR
         FGbUdMoPv/yKUeEuvcJxbrZoFi3DyFYRajnxRn0zhQx5P2IJO3VIjpCM/KJJy8J0mdiG
         KZZOMx8KuI8VW0NB4AGuWVbaNtm52BF+jVZjsVqVovFX/zBXEScfP5VPAYHX/Fw0/0FL
         U8HWE1WhHtGxg3Yl2Bw2Yv6z8tFaMHg1XiCrS2iixmHi9QZyqLUVvCfASeSvKuAELwo9
         umiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZaTj52peLvRicw4PoF/BKEFQ/jidWJ8M3lLP62y2KXw=;
        b=MYMll8bF6Kp0w+d8qtkC1EnLUFaarLGlgj+eLbxj82JMYBbkmrtiq8ibVrDnjA3UMX
         ddTdzpo3WlxfKHu9an7Tb1+3dHZ/B3XgHnxGPJMJX8UNuqGsOhU5WmnoDxiye/1Gcf3Y
         24aMOtAS45WlWTqjP+7ziF3LTTnBiILsuB8C32haVymBNkYeAp5RDl5b8LyKMwbDsNxg
         vrPAarIWJBt1elJLc7YB7aL5HB1Q0v8an/oMbjRwBb+6nX9TPrMrW711kioRYLjtTCs7
         yQ68GkZKJQ+GvUtKqIwMkGpUWAlPnFZ7YBlA8zkHScgF3OkwnXAOxvo28wfNUX7g2ywR
         U4jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=f6utJprc;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y129si59948vkf.3.2020.12.03.16.17.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 16:17:49 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id t18so2129167plo.0
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 16:17:49 -0800 (PST)
X-Received: by 2002:a17:902:e901:b029:d8:e727:2595 with SMTP id
 k1-20020a170902e901b02900d8e7272595mr1464109pld.56.1607041068143; Thu, 03 Dec
 2020 16:17:48 -0800 (PST)
MIME-Version: 1.0
References: <20201022012106.1875129-1-ndesaulniers@google.com>
 <20201104000016.GA2399651@rani.riverdale.lan> <CAKwvOdnFstgMa3c+=Vo=QtFYsABDekVeddcPmP=8Pn2bqWfxpg@mail.gmail.com>
 <20201104001703.GA2407187@rani.riverdale.lan> <CAKwvOd=U1mxfgep3KyoAJ3WBcsywdx9_wfVgLcgAhd-+kFfZhA@mail.gmail.com>
In-Reply-To: <CAKwvOd=U1mxfgep3KyoAJ3WBcsywdx9_wfVgLcgAhd-+kFfZhA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 16:17:36 -0800
Message-ID: <CAKwvOd=m9+CxsBuG_DLSx1gaMmOmpm05xeU353As_tPKUij2qA@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: implement support for DWARF5
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=f6utJprc;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::643
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

On Thu, Dec 3, 2020 at 2:56 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Tue, Nov 3, 2020 at 4:17 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> >
> > On Tue, Nov 03, 2020 at 04:05:36PM -0800, Nick Desaulniers wrote:
> > > On Tue, Nov 3, 2020 at 4:00 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
> > > >
> > > > On Wed, Oct 21, 2020 at 06:21:06PM -0700, Nick Desaulniers wrote:
> > > > > Further -gdwarf-X where X is an unsupported value doesn't
> > > > > produce an error in $(CC).
> > > >
> > > > Do you have more details here? On godbolt.org, gcc does report an error
> > > > for unsupported dwarf versions.
> > > >
> > > > https://godbolt.org/z/G35798
> > > >
> > > > gcc does not seem to pass the -gdwarf-* options to the assembler when
> > > > compiling C source. For assembler, gcc will pass an appropriate option
> > > > depending on the version of binutils it was configured with: if the
> > > > assembler doesn't support dwarf-5 it can call it with --gdwarf2 for eg.
> > > >
> > > > If the user is using a properly configured toolchain it doesn't look
> > > > like it should be an issue to just use cc-option?
> > >
> > > I wrote the base patch back in May, and didn't revisit until recently.
> > > I could have sworn the cc-option silently failed for the check
> > > cc-option does, which is /dev/null input.  I need to recheck that, but
> > > it doesn't hurt to simply include it for now, which I've done in a v2
> > > I'm about to send.
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> >
> > This is giving me deja vu about the -gz=zlib option.
> >
> > Didn't Masahiro fix the cc-option issue with
> >   4d0831e8a029 ("kconfig: unify cc-option and as-option")
> >
> > The existing -Wa,-gdwarf-2 in the Makefile seems bogus, btw. GCC 4.9.0
> > at least appears to pass on --gdwarf2 automatically.
>
> It looks like we don't need -Wa,-gdwarf-2 when -gdwarf-2 is set. So I
> can probably drop
> +DEBUG_CFLAGS   += $(dwarf-aflag)
> from v2.  Will retest though.

That's needed for non LLVM_IAS=1 builds so that clang informs GAS to
assembler using DWARF Version 5; otherwise every translation unit
fails to assemble with an error from GAS.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dm9%2BCxsBuG_DLSx1gaMmOmpm05xeU353As_tPKUij2qA%40mail.gmail.com.
