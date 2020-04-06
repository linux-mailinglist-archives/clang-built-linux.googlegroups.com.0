Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB5HEVP2AKGQEVRF6QZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFA319F229
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 11:12:23 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l28sf1661077lfp.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 02:12:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586164342; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUlc8W41HtbtYnnpjg6eWytYXGFFhOo+A9v7COwNnuxWvAHJJG0+iwsa1z5h5vNl85
         HpnJuVQPcICv3pqSB5mhAGqcafPKBfFdbqtZ3TFbzisztEe3iBdTyuv9UdXdYAVQZB4c
         2Q853PHMc+4G5ZKUG/G3ToKy+2reaBuq65b/kxdJFD8kmgzRdas9fw7fx2Y6oiETKJrC
         XI1AFh9+yagTDgdFJlI2UvG21nlSVZGqE8bqUVb3VgBn4l6UNJ/ABOdRNJD9xp54sz3t
         lqiuTbZkZ4r/qkFZR/g1dU5SvUWUJET1WPqq6rIXnsfUCxBLvkzNIW5FmIU2P4C6twXj
         IEzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=69Z0iRhLvhQbOHVrdipYtSEJ7y+q58O/eITLUYV/Frk=;
        b=mLMRrxsgXQdnoDVeQUgYY7PdGauqKoRjQGjICMQ9srOc9wxBfiQxf1Pp1w0h8LN+BN
         eYUXxvIZDzFmZn3NHluEBf9cSas4cohy+6DChvn4GNnKy3tcp8NILB2cWSdQMFxyBq27
         mKGggyIg306lhDG8Kw/F4ONP8hsJYHs9M2MGBQ+l6CONISyhAHc2kjgR7E8HnUlFzLDJ
         e/GNvS+dRm4gaRGwoYykd4f9Rn1fF3GeXL8yDlRKInmY0d0Uuu9GuFpsQpFF+Wncszmi
         lnPajKTN1nvuWCwqpMiU84AcMrdrPrKsNc+/3kLqHLqAc1M0qRcW8/sqywjJnaGPUQJZ
         G9NA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hUr0f/B6";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=69Z0iRhLvhQbOHVrdipYtSEJ7y+q58O/eITLUYV/Frk=;
        b=fa5p8OfuR2Tc92bk1DFXGgCcyqQS3b5gxyTGuFtRrWrffOIuuO1r04EAyDwUzy3sYL
         ydS/r5dq6eq/3z2o4oiUZfZFTxQy818Z7E0UtdnJSvmlnQstmKFtRfq5V0qIawslx0DR
         1/aeK0C1LmP2T0haxYc/35FSffANMlI/ZUEWltWNTLNzQdGqXPggHqC3Sy684BR/CEba
         o2O8nRkmibm9lvc3BzDGILwwkBE7lea7Jrq6htnBXjTAvV7GNXj+PUe/9yiRvNX86JQS
         JJU4oluCsG59Y21Doghcra84VTLwKGNVdAw6C0VCSFwmOI58hWdye9aZgKt6ipnFnjtS
         D79Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=69Z0iRhLvhQbOHVrdipYtSEJ7y+q58O/eITLUYV/Frk=;
        b=q0hrPaWTMxE0+/HC5/cZ/0PcDqUcMTehYIAmq76PSrFePA83edqrpZaQL7XbhB/eS/
         fpDhf7Owh1ESeCZPnKwMi/YsgCXf156OBBUGI93CDSY0uVuS37lviPfV/Xk9krl5aVvg
         R3uVVMyiSSt6kBMRztvW/y4FzgzsREMzAli0LBUDqkv2jbGZwmcRJQwY935CuBNz2bAb
         pzbcgvT9ptSK6LJ4HAACpNqth9IJ67bzmXV0Qk+7CmEBV07Sa3ddM7werzCAqgDCXRue
         kJvsXfRmPnJUQBjgqNt0uUR8sIPA+clSwozOfQjDQwbVDHVQAHyxZrliBL9qpwF33IMn
         r0zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=69Z0iRhLvhQbOHVrdipYtSEJ7y+q58O/eITLUYV/Frk=;
        b=RQKHhvuiMxyXkb6PoJkTIZp8Wy5lQo+MSeCyqcAPKcH2FEl6qjOoodL3MqMc2XW12d
         DmLrgsVHPob3eUqZHLXescmWYFcVWPh8D/Tn+EWdEjqj3AEQRiAvAq+sORz+8SlCg2J/
         9hnaMXwuw9vFQDgoKS7N5b7nkkJn3xkQtjLRBr2XcgkPP9Tyq8FK76xfRxya3V9Wck8d
         2iq4F0yI3izmq0n5hKe8Ocvyk22pahUncQ3cCDrf4HVbMrHX+UoKnU+P65wdqHhON1L5
         b+AGoeHrAEeuVSZ81qecCWvqfbVVlZhR8/IG4MsLPmkblE/SqI1sSR6n6Z9ZYZMyokXj
         yaRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaAqAAalCuzZkenB7CDvlKxroCqMCcF1pVmPGnjhPS278IfNu9M
	T5GEzpWfBiOUOaxFJcJqlFU=
X-Google-Smtp-Source: APiQypJn6VUN5JVNq3ecJcQIGUPI1gpd0H27Wq0QPdTPMk8Pll8TfNhSuyh9/H/aa97Z/u8Nqv2dLw==
X-Received: by 2002:a2e:1647:: with SMTP id 7mr11483815ljw.177.1586164341038;
        Mon, 06 Apr 2020 02:12:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89c8:: with SMTP id c8ls2282393ljk.7.gmail; Mon, 06 Apr
 2020 02:12:20 -0700 (PDT)
X-Received: by 2002:a2e:920b:: with SMTP id k11mr11869245ljg.46.1586164340039;
        Mon, 06 Apr 2020 02:12:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586164340; cv=none;
        d=google.com; s=arc-20160816;
        b=OEaxeEog9fpg0TvOKD1HffVyBrZn+ccWkInlOo2xlpdyjc3LM1QET3TlIGiw+6Mm/9
         aETcXT3DVOiZ1k0upWM5j5JhZbWMnfQMoPQ1ITO3ZfCn8zgV/By0tgwSVDqWTz1nX0X/
         sViVQMo+z+EAVIrkWV+JIu7U/Fa5UQdi6dtoeOpsc+m5BD5SHjf3tka9mQUi8kGCYZT8
         VwwFfHxD1xKJIpUJwRK/SAV+NO6q44W4XrSl48v+jc1AJ+qcklMafmJrd0uzT5QiAEGi
         SGURxi/kN+p21GgOzj0dDjYcT34OB7iIdc3PKDsDsxMN4Yeik1sZy3rgroKsL2nD4i7R
         3g2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=glkaDM5M1FoM2GQRJ0fDDMF/MejHXymIl6X4UtEi45w=;
        b=g6+LxHt3zK0tmMxY2QeFPutBUJ34HBILDa4t613jIJGemeZxizlUf4pOFWeyYA/9fI
         ndm+cCcM9eaoWOtSQBb9irRFTW1GjD9GdjbgnGyz3jvdA2XiLRICMq2jUCniY825ge5E
         HzRz2eWqN+MrteiakablNTLU9ZdGzoxOWvETU1FReRiVUdYurz9tWg2j89pE3ji2pwu3
         3QCiF+2bzgF2n3F53Xs7ciFnHGlWHLQvgTLHGiIfs1DFhtPP5O90IJoS/WVx/Cybl1zu
         NYmNKU/Vllb5BrNZ09OgvWuYnHN2nkrSVNejKkM3+yJOgE4C50cG7APL5mhRhEj+gr4W
         8bDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="hUr0f/B6";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id s22si897986ljp.0.2020.04.06.02.12.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 02:12:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id v5so5525677wrp.12
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 02:12:20 -0700 (PDT)
X-Received: by 2002:adf:b64f:: with SMTP id i15mr3772042wre.351.1586164339736;
 Mon, 06 Apr 2020 02:12:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200403051709.22407-1-masahiroy@kernel.org> <CAKwvOdnaZ6qDVxaPY-GEH8pdUkzH6eqm16ok9_wzRSVRG-1kiQ@mail.gmail.com>
 <CAK7LNAQybfcYiosNU+ybd-Q7-Y2dbLqBVN2XA00wCRnFAoqdew@mail.gmail.com>
 <20200405235507.psjjhqa3cxw57xra@google.com> <CAK7LNAS_SQg2nhJ8HKBTq3+dziGpaJZ87fOBRS-ZMdUpKGhX9Q@mail.gmail.com>
In-Reply-To: <CAK7LNAS_SQg2nhJ8HKBTq3+dziGpaJZ87fOBRS-ZMdUpKGhX9Q@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 6 Apr 2020 11:12:39 +0200
Message-ID: <CA+icZUU5YmFJispXy8Ax7gzxv__LfFMwUX-cGO_kaNXv_RHO7w@mail.gmail.com>
Subject: Re: [PATCH] kbuild: support 'LLVM' to switch the default tools to Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Fangrui Song <maskray@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Jonathan Corbet <corbet@lwn.net>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	=?UTF-8?Q?Matthias_M=C3=A4nnich?= <maennich@google.com>, 
	Sandeep Patil <sspatil@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="hUr0f/B6";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::444
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Apr 6, 2020 at 3:34 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Mon, Apr 6, 2020 at 8:55 AM 'Fangrui Song' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > On 2020-04-06, Masahiro Yamada wrote:
> > >On Sat, Apr 4, 2020 at 3:24 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >>
> > >> On Thu, Apr 2, 2020 at 10:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >> >
> > >> > As Documentation/kbuild/llvm.rst implies, building the kernel with a
> > >> > full set of LLVM tools gets very verbose and unwieldy.
> > >> >
> > >> > Provide a single switch 'LLVM' to use Clang and LLVM tools instead of
> > >> > GCC and Binutils. You can pass LLVM=1 from the command line or as an
> > >> > environment variable. Then, Kbuild will use LLVM toolchains in your
> > >> > PATH environment.
> > >> >
> > >> > Please note LLVM=1 does not turn on the LLVM integrated assembler.
> > >> > You need to explicitly pass AS=clang to use it. When the upstream
> > >> > kernel is ready for the integrated assembler, I think we can make
> > >> > it default.
> > >>
> > >> Having this behavior change over time may be surprising.  I'd rather
> > >> that if you want to not use the integrated assembler, you explicitly
> > >> negate it, or just don't use the LLVM=1 syntax, ie. `make CC=clang
> > >> LD=ld.lld ...`.
> > >>
> > >> We could modify how `-no-integrated-as` is chosen when LLVM=1.
> > >>
> > >> make LLVM=1 LLVMIA=0 ... # add `-no-integrated-as`
> > >> # what the flag is doesn't really matter to me, something shorter might be nice.
> > >> make LLVM=1 # use all LLVM tools
> > >>
> > >> Since we got rid of $(AS), it would be appropriate to remove/change it
> > >> there, since no one really relies on AS=clang right now. (We do have 1
> > >> of our 60+ CI targets using it, but we can also change that trivially.
> > >> So I think we have a lot of freedom to change how `-no-integrated-as`
> > >> is set.
> > >>
> > >> This could even be independent of this patch.
> > >
> > >
> > >I also thought a boolean flag is preferred.
> > >
> > >AS=clang will not live long anyway, and
> > >I hesitated to break the compatibility
> > >for the short-term workaround.
> > >
> > >But, if this is not a big deal, I can
> > >replace AS=clang with LLVMIA=1.
> >
> > My mere complaint is that it may be difficult to infer the intention (integrated
> > assembler) from the abbreviation "IA" in "LLVMIA" :/
> >
> > Something with "AS" in the name may be easier for a user to understand,
> > e.g. CLANG_AS or LLVM_AS.
>
>
>
>
> I see 'llvm-as' in my PATH,
> but it is a different kind of tool, right?
> (converter from LLVM assembler *.ll to LLVM bit code *.bc)
>
> So, I thought "LLVM_AS" might be confusing.
>

Indeed LLVM_AS is confusing as llvm-as is different to Clang's
integrated assembler.
So CLANG_AS might be a better choice.

- sed@ -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU5YmFJispXy8Ax7gzxv__LfFMwUX-cGO_kaNXv_RHO7w%40mail.gmail.com.
