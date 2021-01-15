Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBXOWRCAAMGQEWGJL3GA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id A77BB2F89A1
	for <lists+clang-built-linux@lfdr.de>; Sat, 16 Jan 2021 00:55:10 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id m23sf7543280pgl.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 15:55:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610754909; cv=pass;
        d=google.com; s=arc-20160816;
        b=LXYENyL68H4J1LxpLkItcBrOJwpzsUHmNkgMXjFITDjp3kolrup/641XGIOo/hSLi3
         eT1rnQdogtMuVFgt5zPyWDKRnD+5wXZsCwn1qv4u2q7MOYC5LuB4uUGIomBakEYqddMK
         S5B7I4CKBcIutwshOIxtdZP7MiNArMM0nsEieAnuIm1XooPOSWdtXcFTuH4S+eyK+AUv
         BX8JoQKK+W4dEtYXrm5t9qNMdoyTTEA6hw8NtSvNIJRG/jxGNKJjtB3WVVs7yf2N6AzE
         j2PTSOZL6Kmnf84BZgh54pQXmoqB6qTXIRdeuLE/Yvn8f4IxtJ+wh8YroESxUIfpYKQd
         pwpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=dJSqRCzMZXeeB7BVRwvjsWrQ/1uFchcFolzlkTN9JSI=;
        b=L8yIA/CnYN62x/wlwUdfNm07W0H+gGadBj1mrIcEK6W82Jl2/onvOyJgH+DeQqnVp8
         13x+9rwCKKu9yggKXIS+Zyjl4oNBQYj9cynUm6210gxtpFqJwEQq5NCxD3CQumlirqCU
         60m4EkR4I00YfYAkYAL4q9bVvNFpiX0GVvKlUAbyD8moRNxrABlWxkxmnl0tp/bCVzTv
         IFFawda4QEsFxPIX9EZQMA50d4CJcS5WDHNS2knwlgqnsIC166JfaV993KDsfA3+/GZl
         iBRws2hdRs/VIFBqjAx1+3fiQaokRFqYUkvfUh7bvk4BW+S2rRKBqrbM5nyg4nflg4uu
         ht8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gZHUbr4f;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dJSqRCzMZXeeB7BVRwvjsWrQ/1uFchcFolzlkTN9JSI=;
        b=d31rVO6w5TlK5nhNjgSiMlmxCo7YCA6lYjAXrRkGzWYyjKlsZ6S6rY0GRE4NHqCnaH
         b6InAwrz8rei2iZQY9FPBq+T0F5/gL8ijTqQvjaPsr1txWiBj/i2byANrwlnCFCLxmSj
         fTv7jSTybKoxp8tQdVnXyQDGlX8qj+plLU4ty4zzNtB8nXryfqqNIrP96KocgJaAdHyK
         AS4y6HmhmzaaNr+5bx6+hP0IWC48A7w3NYahR4WdV8rvhHkGdSAjYFXIks6zMsn5YGxy
         NMiLrEnTGp5fl9CUblsAWdpVBDjG8WA/LNVFZa77Xl16dYPSq14+gvHmrLuDWOHk8nz1
         dAIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dJSqRCzMZXeeB7BVRwvjsWrQ/1uFchcFolzlkTN9JSI=;
        b=aXWhjIjhhVqV58Gxuj9s8PVhCIcECyfJsV/WLieGlhBZrXAU08OnRfrm4zYqPZYu/H
         Go5eZf95iCz2o5fguV8dT2cFVwmtqguE2TAbNkvT/hSOsIUT3R9wnLK/0du9BDE5+34D
         Pj41i7e0SyDnOKLDNFoKW68Xh9DFKs3ItufHRpXTAGQUmT2sfMPd3vmjRBC2BVVXvk83
         XYREW8Jnb0VcFPnnHdRJoIxJXJF+JeGoJv7ymrsuzVPbv2BMaBtrXVHr3bgVLRVH0uHi
         f8SVkBAPKSULXTCI7CP+lrPRGrOgOtHHnDHMMjNH6kDosMsE4rNYw+eeXUB1LU5YH+E1
         MSdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530p5O53lv7nUKOwq4LhoNF5tOEcepHAg1p/crBYxn0qaXbENA+p
	m+Yuy2IYQQV+eYPcYms463E=
X-Google-Smtp-Source: ABdhPJzH5fmUX7/d2y5BuHRRlgflpx/ztna3hjCmi1dIQizi3ihPioRrrqEenrfJ0FH0X2s5+tQLag==
X-Received: by 2002:a63:4b16:: with SMTP id y22mr15078522pga.203.1610754909355;
        Fri, 15 Jan 2021 15:55:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c205:: with SMTP id 5ls5020961pll.11.gmail; Fri, 15
 Jan 2021 15:55:08 -0800 (PST)
X-Received: by 2002:a17:90b:287:: with SMTP id az7mr11962348pjb.70.1610754908752;
        Fri, 15 Jan 2021 15:55:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610754908; cv=none;
        d=google.com; s=arc-20160816;
        b=HhhlFPgdtw0+DXGECKKBCobv9zlWjDiygCgjrdyKjgH5qEFUvB+gXSjo9X32gM7jK3
         ttjncdN4aBBmBhyeeyBOoVGkX9eSo0UY9ChQuvh7UhUmnVrZ2W+SoOal1L4BEpUk3bXu
         GIDpc5CZcfGws5qayNqfiSFiNuphgs0m1rl+IqW5+MK9Ag3Axdt8s5JQ77Y+adOkFsdP
         Guz6fQ6lujWWUQmBgGT/PY+5xZFL2kAczl7cxC39PzNHZ9YxsZNBzdThgfm1gZPV4uOg
         wiXbu9r5biWIDJTrclt4n8FZfxK26qgKAlsL8CCnVi+UrHa5cO5LWzIZJSkkFqDUhuLa
         QMpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=0dGmFEa9ilYXRN0NxJbL4xcI2a0rn0KztsLjZt1VYKw=;
        b=RQcm0eR3J2p3G4TR5/EOQTFqdE85lXoBQTCocHot1Xjh+K5vTZMuWo2gcCPZGEcm7b
         lDYBwo8asR005+yKlKkjFGQ56Sa8nemgTtZZ3ui5R5Cn3UTXtEvrscfV+bv0qo3i1m94
         Ti1d9olS9n5qFPbu4QTv7B/MwFA6f52VH436qdM/04SKGss/8jBn6Jys1arbpmcwm4py
         TlmwDGbx0O4qGFEywwajB0EFprydn2qbGRMl37ktS23fhFy55iOvQXAXUn6Zs5VNtYCE
         symKrn6HPYXfXewEUn/3VLM99l/wi+fq9AjGYCSa3JNhp+jVtKsDgJAbj/cEZP7SQf4L
         wSoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=gZHUbr4f;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id q15si809491pfs.1.2021.01.15.15.55.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jan 2021 15:55:08 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 10FNsktR001257
	for <clang-built-linux@googlegroups.com>; Sat, 16 Jan 2021 08:54:46 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 10FNsktR001257
X-Nifty-SrcIP: [209.85.214.176]
Received: by mail-pl1-f176.google.com with SMTP id b8so5504747plh.12
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 15:54:46 -0800 (PST)
X-Received: by 2002:a17:90a:3481:: with SMTP id p1mr4363127pjb.198.1610754885822;
 Fri, 15 Jan 2021 15:54:45 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-2-ndesaulniers@google.com> <CA+icZUVtodEz=E+TG0Pt_OUDgW5-0x2WzVOhzQDbyuVR1igU6Q@mail.gmail.com>
 <CAKwvOd==3r8HNe8P5SuoumRtQ3w7iZkGhhVNhAEyh=rSFDNtKw@mail.gmail.com>
In-Reply-To: <CAKwvOd==3r8HNe8P5SuoumRtQ3w7iZkGhhVNhAEyh=rSFDNtKw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 16 Jan 2021 08:54:08 +0900
X-Gmail-Original-Message-ID: <CAK7LNATAAZ_LH_q8x9A7FwBy=kqMd8Z0rVm-wuC1QqxpgsnBQg@mail.gmail.com>
Message-ID: <CAK7LNATAAZ_LH_q8x9A7FwBy=kqMd8Z0rVm-wuC1QqxpgsnBQg@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=gZHUbr4f;       spf=softfail
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

On Sat, Jan 16, 2021 at 6:51 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Fri, Jan 15, 2021 at 1:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >
> > On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
> > <ndesaulniers@google.com> wrote:
> > >
> > > From: Masahiro Yamada <masahiroy@kernel.org>
> > >
> > > The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
> > >
> > > You can see it at https://godbolt.org/z/6ed1oW
> > >
> > >   For gcc 4.5.3 pane,    line 37:    .value 0x4
> > >   For clang 10.0.1 pane, line 117:   .short 4
> > >
> > > Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> > > version, this cc-option is unneeded.
> > >
> > > Note
> > > ----
> > >
> > > CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
> > >
> > > As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
> > >
> > >   ifdef CONFIG_DEBUG_INFO_DWARF4
> > >   DEBUG_CFLAGS    += -gdwarf-4
> > >   endif
> > >
> > > This flag is used when compiling *.c files.
> > >
> > > On the other hand, the assembler is always given -gdwarf-2.
> > >
> > >   KBUILD_AFLAGS   += -Wa,-gdwarf-2
> > >
> > > Hence, the debug info that comes from *.S files is always DWARF v2.
> > > This is simply because GAS supported only -gdwarf-2 for a long time.
> > >
> > > Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
> > > And, also we have Clang integrated assembler. So, the debug info
> > > for *.S files might be improved if we want.
> > >
> > > In my understanding, the current code is intentional, not a bug.
> > >
> > > [1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
> > >
> > > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> >
> > Subject misses a "kbuild:" label like in all other patches.
> > You have:
> > "Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4"
>
> Ack, I wonder how that happened? Ah well, will fix in v6; thanks for
> the feedback.



I will apply this in my tree,
adding "kbuild:" and fixing the typo pointed out by Fangrui.

You do not need to resend this one.








> >
> > - Sedat -
> >
> > > ---
> > >  lib/Kconfig.debug | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > > index 78361f0abe3a..dd7d8d35b2a5 100644
> > > --- a/lib/Kconfig.debug
> > > +++ b/lib/Kconfig.debug
> > > @@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
> > >
> > >  config DEBUG_INFO_DWARF4
> > >         bool "Generate dwarf4 debuginfo"
> > > -       depends on $(cc-option,-gdwarf-4)
> > >         help
> > >           Generate dwarf4 debug info. This requires recent versions
> > >           of gcc and gdb. It makes the debug information larger.
> > > --
> > > 2.30.0.284.gd98b1dd5eaa7-goog
> > >
>
>
>
> --
> Thanks,
> ~Nick Desaulniers



--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATAAZ_LH_q8x9A7FwBy%3DkqMd8Z0rVm-wuC1QqxpgsnBQg%40mail.gmail.com.
