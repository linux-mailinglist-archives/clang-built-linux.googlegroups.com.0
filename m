Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBI7V2GAAMGQESVEGZ7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3326D308F0F
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 22:14:12 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id q37sf6519430qvf.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 13:14:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611954851; cv=pass;
        d=google.com; s=arc-20160816;
        b=Cclwh/Qpuo1lZ8hcsZq71qlhJUenH0V+E1Kr4JrLnWBf6YNaGqoCx1Ha9+mmiUk0yX
         Fd4E0eRxcCBLoI3yo4lxYpzP21GlH/O7flbd1WRbrvFu64D4VdmZZcdYIKgNKMq+HSAk
         PNBDAvh/NRKm0fYjzDOSLoWxiB+2YkJEkM9UiEUCsz17J0yGIX/YmezSIJWmVVlBFHHV
         adyAeiohViGIMhQKkuC/TUxz3UvSTErdg5ItstNVpMy8SVsarbTVCFPNUeFdGkGSskjd
         p9/787rmzSD8mWzH/71tI5IJcD03e23B1r8UR7sO8SF13wpR0IWgS+sNvd+9JZDoAv4K
         KUWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=mQwAhY+8icGNKhas7S+GhlUVJtshBLtEF+sWVEmEN14=;
        b=knBg6RY0GV3vqYi/8zczE0wnVmX26P3BqVFjsM3oE/bTVUhkJ5a9hnH03v//KOHAum
         QcmgHqWUjqoaclwBYIYFR00JSCjOY5xxaFAwjxHzUZH29OvTzN1sJi6O9vbMkToAN5TM
         HlQkqfRiUoOVmlaV9yPdOIt2iV6IulwQJmWRoV1GcoUcyqP1bjR837SuJKid0Xz/8U5l
         X21T23UlZeclb8xfMp9wfL6qFG2sIvy5pfbPZAOqnjOHbAKYWXFXZ72nRB5iLO3S6fup
         PwfAi4tyXit21PdC7XoEZfM79YjQRrt2Naa8EfT6omdA94cxhl4fU8lMfZuSgtwvosKW
         QV3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ISXN4hx2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mQwAhY+8icGNKhas7S+GhlUVJtshBLtEF+sWVEmEN14=;
        b=Wvzj8zlElps+y69rpqfNjkB2YjCyOyh1HnbpdjdzoZUujfd53TcrPUa5CC16vUE1v/
         MqinQBMsWIwR83PxxigdN+vAngcxfrbtIVk9ZnZvyWdSeqAlGnOxhaCo3S8Znl2Prt1/
         lcgHiuoqa+ZppLChgIMj9FAafCitbJf3si0xjquzh9cXPmiZ67oRxYhk1Y/NlM+GigSV
         Z+z5iGzBt3SiBGdQ3zOlC9gdYHLftbQz0YrBA5HAC5RcxYluJezgJ4Um6CsWbGo4sAHQ
         RLqvDJa5M3Ilu8t/J9MUloXqt7rrgwuMhNugJZS6GV8sybJF03b8U65hahZxV3e1qnH2
         nmHw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQwAhY+8icGNKhas7S+GhlUVJtshBLtEF+sWVEmEN14=;
        b=jxqk0jdaxsayz6DfeN0fkpFcNktoujll0qE/25fc6Rdy+uNID4RvgOsULbkrXstsyO
         UjFVGPu50Z2zJEkPkYs0KO2JrVIceWnnk2peyN6ibFHPwIF7/z20EDgd1VKhDP3FFYPv
         nrFo4oQ6FuSnlxbv9CII3FQeJeEenQYw2/o3fBJeW1Tg6XbUCiJ3rZifSNP6GPXOJx33
         DSINAeZ8NPuvyJgUO/fbrNh7/ZnOjLXySKJtnw6bIY4QBw3XJHnc1Sccbx54rut11z7/
         btLg3anZni6RvYpBXyZYw3fe77I7+bmwRSVxbPu01OxWGCfQO18VrKFGVXBQl9Qf0Te7
         PAhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mQwAhY+8icGNKhas7S+GhlUVJtshBLtEF+sWVEmEN14=;
        b=PPP14RNfToCEd3uu0ynWkgqpKh4Ciq2+xBZXxRwn7yoXWW9Nm8TGRXtxm7cGd8lyBL
         aIGIL0Iltno4EgyjycbvCdHlyzAoas26ha3MyCr4ctQ0Bd3SDK11jCCUicm8cD5zwUXv
         nYJ71GiK395tIfE13NuSwbxje84I2JF2UtBwVfQXMJy40NCiBvJuHnhMVMrBTUHmDFx4
         tUK8V12QcE54os7rE15FhoLxI+V488Zd1oqNwhbVa1pLGfAg820FbvRxHxxCK1hVxyp0
         RpFSdNSywzNry29o8smQdjyvhg/GIuenj47SvzvFj2Is/EKcDOF90McoUGr5ZamnBP0n
         Px1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533JT4Hyynrg6CTo3N/cjHOYjGuXGISBVtHwnGE/ir3KLW6AJo5Z
	QIHqk0DdiYU0rM2rdCtmQ34=
X-Google-Smtp-Source: ABdhPJz3kSZIP3SASywI97b2U2rs3j5FqK1R34oRsRtiSAu48axHFtImy34TL8Hkv8D1f13O58uvMA==
X-Received: by 2002:a05:6214:125:: with SMTP id w5mr5904387qvs.20.1611954851124;
        Fri, 29 Jan 2021 13:14:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1001:: with SMTP id z1ls3910598qti.4.gmail; Fri, 29 Jan
 2021 13:14:10 -0800 (PST)
X-Received: by 2002:ac8:6c33:: with SMTP id k19mr5840994qtu.130.1611954850747;
        Fri, 29 Jan 2021 13:14:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611954850; cv=none;
        d=google.com; s=arc-20160816;
        b=pJdsvooixb96y7LOoncR97q3vyDpzRlz0Sm/Qy0zR52Qd6j6job88iYkCejcQlsR/C
         DR95EcJeZ06qDveObGtU2gJ5bKqT5WM8R2Fg5dHdQg6N0VOaZxazxbXWzbJS5pKjLDJC
         TDcg1laFKPH2C2E6EbIs8uNme0wEZyVzGmlOHTbj1ZU/glHwGpTz7ow2KfEh45nPUVoD
         mA6K/N8CgNaiaDaWSRHGse6HyuuztTpkZ0wGmh3oN6sdYcX6cVBfhKy6aXwY18nCG5A7
         XybHSVr24bv6MsAO6jauA1qZ87zsgPhRVymYM+F072xIxeg87Wz4bg2xErDQKtNO7hQg
         6alA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Y5eleuovVYlYGhKSgobmMAxGgubqmiuAwZoAc4FZso8=;
        b=OP+NttDUJRE8bmfIlJONxYBMSUYd9+/QnSpPWj3wYhIWO26azOn0JsnHu3mdLdwAE5
         fVgFhi7pXQO0B+IJS9cLjqZ1FAUa2oJ4P12lf0s5eRcfMu7By+RvafJIUAXOXHyLvBpT
         JQMrAXJexrT8TAfe3VkcVzoBC9Z6rzR6/iB4DCo0RhZkKKe2h6LYP68fBWsBS/qj9XjT
         kp9JOANGW5uNG+jSp5WI/f1+VGKkTg/LUVijqCIpjBi3KD4Qv4PTsZ9wEKKbezctR/mJ
         +AMSDrSn1UGamIfsoKKnAbsFgXJqkRy7FcF8R3dYT09lvsINMtsiiz14NpHIrNPxQx69
         31Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ISXN4hx2;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12a.google.com (mail-il1-x12a.google.com. [2607:f8b0:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id z14si849811qtv.0.2021.01.29.13.14.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 13:14:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a as permitted sender) client-ip=2607:f8b0:4864:20::12a;
Received: by mail-il1-x12a.google.com with SMTP id p15so9072991ilq.8
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 13:14:10 -0800 (PST)
X-Received: by 2002:a92:c80b:: with SMTP id v11mr4425537iln.215.1611954850115;
 Fri, 29 Jan 2021 13:14:10 -0800 (PST)
MIME-Version: 1.0
References: <20210129194318.2125748-1-ndesaulniers@google.com>
 <20210129194318.2125748-3-ndesaulniers@google.com> <CA+icZUX4q-JhCo+UZ9T3FhbC_gso-oaB0OR9KdH5iEpoGZyqVw@mail.gmail.com>
 <CAKwvOdnj1Np62+eOiTOCRXSW6GLSv4hmvtWaz=0aTZEEot_dhw@mail.gmail.com>
 <CA+icZUWsyjDY58ZZ0MAVfWqBJ8FUSpM6=_5aqPcRTfX2W8Y-+Q@mail.gmail.com> <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
In-Reply-To: <CAKwvOd=mHvEtto37rzFMfsFYe2e-Cp2MAiyRYxHWPdc-HbT8EA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 29 Jan 2021 22:13:58 +0100
Message-ID: <CA+icZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ISXN4hx2;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12a
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

On Fri, Jan 29, 2021 at 10:09 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 29, 2021 at 12:55 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 29, 2021 at 9:48 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > On Fri, Jan 29, 2021 at 12:41 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> > > >
> > > > On Fri, Jan 29, 2021 at 8:43 PM Nick Desaulniers
> > > > <ndesaulniers@google.com> wrote:
> > > > >
> > > > > diff --git a/Makefile b/Makefile
> > > > > index 20141cd9319e..bed8b3b180b8 100644
> > > > > --- a/Makefile
> > > > > +++ b/Makefile
> > > > > @@ -832,8 +832,20 @@ endif
> > > > >
> > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > > >  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
> > > > >  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > > >
> > > > > +# If using clang without the integrated assembler, we need to explicitly tell
> > > > > +# GAS that we will be feeding it DWARF v5 assembler directives. Kconfig should
> > > > > +# detect whether the version of GAS supports DWARF v5.
> > > > > +ifdef CONFIG_CC_IS_CLANG
> > > > > +ifneq ($(LLVM_IAS),1)
> > > > > +ifeq ($(dwarf-version-y),5)
> > > > > +DEBUG_CFLAGS   += -Wa,-gdwarf-5
> > > >
> > > > I noticed double "-g -gdwarf-5 -g -gdwarf-5" (a different issue) and
> > > > that's why I looked again into the top-level Makefile.
> > >
> > > That's...unexpected.  I don't see where that could be coming from.
> > > Can you tell me please what is the precise command line invocation of
> > > make and which source file you observed this on so that I can
> > > reproduce?
> > >
> >
> > That's everywhere...
> >
> > $ zstdgrep --color '\-g -gdwarf-5 -g -gdwarf-5'
> > build-log_5.11.0-rc5-8-amd64-clang12-lto.txt.zst
> > | wc -l
> > 29529
>
> I'm not able to reproduce.
>
> $ make LLVM=1 -j72 V=1 2>&1 | grep dwarf
> ...
> clang ... -g -gdwarf-5 -Wa,-gdwarf-5 ...
> ...
>
> $ make LLVM=1 LLVM_IAS=1 -j72 V=1 2>&1 | grep dwarf
> ...
> clang ... -g -gdwarf-5 ...
> ...
>

Hmm...

I do not see in my current build "-Wa,-gdwarf-5" is passed with v6.

$ grep '\-Wa,-gdwarf-5' build-log_5.11.0-rc5-10-amd64-clang12-lto-pgo.txt
[ empty ]


- Sedat




> Can you tell me please what is the precise command line invocation of
> make and which source file you observed this on so that I can
> reproduce?
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWxK9fdV8PNGqbQrOFmSZ2Ts4nNqfVMMNUh5u79Ld7hjA%40mail.gmail.com.
