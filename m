Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBK4IS77AKGQEKETSUIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E6512C9663
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Dec 2020 05:18:53 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id k13sf179976pfc.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 20:18:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606796332; cv=pass;
        d=google.com; s=arc-20160816;
        b=SH106hp2MOSi9IKiECnZrMH8UOK9LzHkT14Re4Y+xvxAvX+gmyl5SzlMtz74HH2PIn
         QF/P5T1zW4MazX+a+aB1pAVUH8kKgBLABVLu6msuuMX+NvWbSnpH676UMAxoCVq8v5iC
         b4kpPgcTMLvVbAEu2IwFRUQ3kirV4nOqE54PKuU5zwtHUqZrxVdF0HENlFXsFz/vPZs8
         DUZ9qfgwFLPHP5dSwojDaX8vOjpvE1lpKERixBi4fulCQOPUQDphvvaDeFjq6v1anqZf
         tC8XagWGZdWnZRB2U+/89nAb6/CiMeU8LjXdePjwKkPATLrym9RlI9+m0AxDRj3nCXXU
         xf2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=Q+Q1dTSuWPtRxySAqYozc5jxCt8Juz9cyfL+C6iH16Q=;
        b=urkB8ZK3JOJ3oZorcKvsRJMpbuLN/2kC7075VxQMWEEfgeXH24jGia19hFr07cldC5
         nCiUbKuIvrb8tb6dxrqUYDRicusfN1FnJwgncsqt8OEq5A0FEyRss0a+a+pkyAtTXnLs
         P8h4Yt+PLI1q+L7CwDlFar8hx/FD16ygxkKcBii0DTMxn5XtzwGE8e22BuII60xx9M/o
         fjQCKFCpytJV2lMUQZqSLmYeQy71IZ1uioP+7wDMa0SySevolgrYgzhEzjnCvnSbHzxM
         m2W42VZHsYioHKhkiBut/KWXuLlL4e7pWW60QEXHfMJuHs8bW+WIFE9wGROm7htS5kRZ
         kU4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TG81yAjY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q+Q1dTSuWPtRxySAqYozc5jxCt8Juz9cyfL+C6iH16Q=;
        b=iJvrv+TXRkjc4LoLXGPxfl8uNSgxdFRTlXSB+usmM+nEB3eb8H4DXpr/noxkGx11cq
         FszS+GgvWbVWCvaPgLdnb2Bu+EEiH+b6YXvjnjCpNa7PLy3fiwWyk2+SWt5zVya5uqf8
         NDCpyhZNWUKCxa95uTpOZdHRRW0i+meYyjl88ew9gpWWpDUinm+4VK86Hocsia92QX6x
         xMiGLlJ4FA3Mk8UbdOYmjslCCT8IJTFDNWiMg2SOMaFaXwSAUg3NRXmY/BQmUfiF55kD
         5rbZBvmD23ulTjRl+RhWXQQtgv+hqqGI0OunBl/syDO0+CVxEs1ijj5i+9+NjcOiDAZZ
         dmAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q+Q1dTSuWPtRxySAqYozc5jxCt8Juz9cyfL+C6iH16Q=;
        b=Zyh3/i71DGBhSANYpmLnAnxwccsPoU5vtPU1mYAd8/jaQ1xmTXTk5CeiuSyhTPsRFa
         /uc/jai58F5keMRyn1c+Fz+iByM65zusW7cJlJZ0rzmEXosje+mkCFAcEIIJNilQM6Ea
         90UvXx/JpGMCFwfA5reotj9OKy+4DqBMUmgTh3mtbDqrn93Do27P8xBmEC2ikm2982CG
         +Cp06/XAVSJwevK1jbSn0mrDcjiwjQIno6PrTrwFJdaw2b0lb5QM24F6y48rGlxAMxG0
         L57pDVV99HTRHJiW+/3nu3OysC4ca4Q3K1npJTqgDYs3Cp82+YuGmvjMxMVDDDe7vG7N
         S5VA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530eJluA1W0G6LS8xLVXIvZtwSl9JYQsbT7h+Yvcq1czHMBIt5jx
	MHox89/nDnVLfsz8iFxnHN4=
X-Google-Smtp-Source: ABdhPJy3mxg3UdksAyDb8PhTWhLyGwbzKnVD8N1o6bAdWczZ7VhmIbR6jIVdppNTchUOkzMvV2pd1Q==
X-Received: by 2002:a17:90a:de90:: with SMTP id n16mr762856pjv.215.1606796332001;
        Mon, 30 Nov 2020 20:18:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3896:: with SMTP id f144ls340625pfa.4.gmail; Mon, 30 Nov
 2020 20:18:51 -0800 (PST)
X-Received: by 2002:a63:30c3:: with SMTP id w186mr663490pgw.109.1606796331364;
        Mon, 30 Nov 2020 20:18:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606796331; cv=none;
        d=google.com; s=arc-20160816;
        b=o5q1fz1pgg7eG3gzESc1m8TBcBXqaj1UNkFt4+roGbPFPfxogKyQFuxjECXJFgtQru
         d0+Q+IUVTRyA2c0WRG5lXdi1bsbEB6/qhdLl+ct5VeFouh8BIYN6Rc9EkRWjP+BusFTO
         JWYgceYekrxAkfFjk4EZgnGUthMjA5VERCETnd5oJQSyTkakSSBN8t1Evh5A77fFyRbY
         NptvtR5aEKvfl1jWwd000RBp9SGXDjR6GLpC5U4tGSQPvOvNojkmiH4n+YUXoz5v1KxN
         s2ymPAA6zPko1RNq2mC/Vb3JelR11Gh9qHu6aK+tYsDDT+MIeuJ7C8ouV8j+N/UscrsN
         kvSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=GMCnYM+voihvO7OPv2mqIVM7rj+QDDQzTVQXG07MvGI=;
        b=DrIg2Evkj1uhmHImhtg0j+/GzwGLgVbQZ1Cyj0IoULwhezbOVvd/q4vQFVIZ3I+jF+
         F+B4FasYSmNxoVwxvxbVf1I5p4kqKYmwabsseM4QLub3vbI3/4dvM7CiAaXLOmW7k2R4
         g9WSbPg+EO+2/1smYtw4iRN5YFAJZhby67J199L9lXgcnodi2yg8aQaBF0STTYT6mzEN
         Fn8z11KYBfoT+HvV7WXUjRbWRz6qd7Nff+72UnIxWQNwpep1MTRhOCHh5EGXwPDJu2FM
         TQLAHbQtYtNP193AlFzvw6b/8ryVRyuugUs39U6jCYrEYR8e4WNHzf7Kv3mWy7b1BDYU
         Q86w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=TG81yAjY;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id r127si36028pfc.5.2020.11.30.20.18.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 20:18:51 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 0B14IKe7016530
	for <clang-built-linux@googlegroups.com>; Tue, 1 Dec 2020 13:18:20 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 0B14IKe7016530
X-Nifty-SrcIP: [209.85.216.53]
Received: by mail-pj1-f53.google.com with SMTP id h7so248838pjk.1
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 20:18:20 -0800 (PST)
X-Received: by 2002:a17:90a:5905:: with SMTP id k5mr792484pji.198.1606796299598;
 Mon, 30 Nov 2020 20:18:19 -0800 (PST)
MIME-Version: 1.0
References: <CAK7LNAST0Ma4bGGOA_HATzYAmRhZG=x_X=8p_9dKGX7bYc2FMA@mail.gmail.com>
 <20201104005343.4192504-1-ndesaulniers@google.com> <20201104005343.4192504-4-ndesaulniers@google.com>
 <CAK7LNAT5MQqUddv+QbFu5ToLBK3eUPArHSBR=5AOS3ONtMqKaw@mail.gmail.com> <CAKwvOdmPeOEA4dfODCKLE4A_M-SF5RBVFEf-NuiTkUTXAbh-5w@mail.gmail.com>
In-Reply-To: <CAKwvOdmPeOEA4dfODCKLE4A_M-SF5RBVFEf-NuiTkUTXAbh-5w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 1 Dec 2020 13:17:42 +0900
X-Gmail-Original-Message-ID: <CAK7LNATMjv84JCNX7ZDNkhA13he8SZYHES1i5k5EZzbD1iKqfA@mail.gmail.com>
Message-ID: <CAK7LNATMjv84JCNX7ZDNkhA13he8SZYHES1i5k5EZzbD1iKqfA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] Kbuild: make DWARF version a choice
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Jelinek <jakub@redhat.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-toolchains@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Sedat Dilek <sedat.dilek@gmail.com>, Dmitry Golovin <dima@golovin.in>,
        Alistair Delva <adelva@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=TG81yAjY;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Tue, Dec 1, 2020 at 5:45 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Mon, Nov 30, 2020 at 10:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > On Wed, Nov 4, 2020 at 9:53 AM 'Nick Desaulniers' via Clang Built
> > Linux <clang-built-linux@googlegroups.com> wrote:
> > >
> > > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice. Adds an
> > > explicit CONFIG_DEBUG_INFO_DWARF2, which is the default. Does so in a
> > > way that's forward compatible with existing configs, and makes adding
> > > future versions more straightforward.
> > >
> > > Suggested-by: Fangrui Song <maskray@google.com>
> > > Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > >  Makefile          | 14 ++++++++------
> > >  lib/Kconfig.debug | 19 +++++++++++++++----
> > >  2 files changed, 23 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/Makefile b/Makefile
> > > index 75b1a3dcbf30..e23786a4c1c7 100644
> > > --- a/Makefile
> > > +++ b/Makefile
> > > @@ -826,12 +826,14 @@ else
> > >  DEBUG_CFLAGS   += -g
> > >  endif
> > >
> > > -ifndef LLVM_IAS
> > > -KBUILD_AFLAGS  += -Wa,-gdwarf-2
> > > -endif
> > > -
> > > -ifdef CONFIG_DEBUG_INFO_DWARF4
> > > -DEBUG_CFLAGS   += -gdwarf-4
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF2) := 2
> > > +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> > > +DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
> > > +ifneq ($(dwarf-version-y)$(LLVM_IAS),21)
> > > +# Binutils 2.35+ required for -gdwarf-4+ support.
> > > +dwarf-aflag    := $(call as-option,-Wa$(comma)-gdwarf-$(dwarf-version-y))
> > > +DEBUG_CFLAGS   += $(dwarf-aflag)
> >
> > This changes the behavior.
> >
> > For the Dwarf-2 case,
> >
> > Previously, -gdwarf-2 was passed to $(CC),
> > so the debug info was generated by gcc.
> >
> > Now, -Wa,-gdwarf-2 is passed to $(CC).
> > -gdwarf-2 is handled by GNU as.
> > So, the source info points to /tmp/<hash>.s
> > instead of the original .c file.
> >
> >
> >
> > Handling the Dwarf capability is very complicated.
> >
> > Are you still working for v3?
>
> Yes, I plan to revisit the series based on all of the feedback thus
> far.  Lately I'm focused on enabling LLVM_IAS=1 for Android; but I
> would like to see this land so that the Linux kernel may provide
> coverage and feedback to the toolchain developers for DWARF v5 (as
> well as reduced binary image sizes).  Maybe later this week I'll have
> time to revisit.
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPeOEA4dfODCKLE4A_M-SF5RBVFEf-NuiTkUTXAbh-5w%40mail.gmail.com.


In my understanding, the complexity comes from the fact
we are mixing up the $(CC) capability and $(AS) capability.

They are orthogonal if I understand correctly.


When building *.c files, the .debug* sections are generated by
gcc (or clang), and embedded into the intermediate *.s files.
The assembler (GAS or clang's IAS) simply transforms it
into byte stream in *.o. So we do not care about the assembler capability.


When building *.S files, the .debug* sections are generated by
the assembler. Here, the assembler capability is important.
Unless we use binutils 2.35+ or clang IAS,
DWARF v2 is the only possible choice.



So, we need two separate choices to handle this properly, I think.

The following is the rough sketch.





# The value is 2, 3, 4, or 5 depending on the assembler in use.
# Unfortunately, we cannot check this by $(cc-option, -Wa,-gdwarf-4)
# because GAS <= 2.34 accepts any -gdwarf-<N>.
# readelf --debug-dump=info and grep or something?
config AS_SUPPORTS_DWARF_VERSION
        int $(shell scripts/as_dwarf_support.sh)



choice
            "DWARF version for C code debugging"

config CC_DEBUG_INFO_DWARF2
            bool "..."

config CC_DEBUG_INFO_DWARF4
            bool "..."

config CC_DEBUG_INFO_DWARF5
            bool "..."
            depends on GCC_VERSION >= 700000 || CC_IS_CLANG
            depends on AS_SUPPORTS_DWARF_VERSION >= 5
            help
              gcc7+ or clang supports this.
              Unfortunately, we also need to check assembler capability
              because GAS <= 2.34 do not understand ".file 0"

endchoice



choice
            "DWARF version for assembly code debugging"

config AS_DEBUG_INFO_DWARF2
            bool "..."

config AS_DEBUG_INFO_DWARF4
            bool "..."
            depends on AS_SUPPORTS_DWARF_VERSION >= 4

config AS_DEBUG_INFO_DWARF5
            bool "..."
            depends on AS_SUPPORTS_DWARF_VERSION >= 5

endchoice






-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATMjv84JCNX7ZDNkhA13he8SZYHES1i5k5EZzbD1iKqfA%40mail.gmail.com.
