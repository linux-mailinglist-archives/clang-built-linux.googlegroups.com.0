Return-Path: <clang-built-linux+bncBDYJPJO25UGBBWU4RCAAMGQESLQ4SSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA5B2F87EB
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 22:51:23 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id t16sf8980111qvk.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 13:51:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610747482; cv=pass;
        d=google.com; s=arc-20160816;
        b=voRQYZyPfX5QCCRkWBet698sh1bChTvBsNZn29IFhOmkKuvhgspcTD/WcMN1wNX1ic
         8gZUMfQ7ySURaNYOb0UaPsaMTvdAgFam2de9TNEu/CTThEkov/3623TOzn5sS5HukZ8A
         UUMUUqpoEcKgCs/YNUWCn1MVq+XLSxBAAwVsM52IwCYW2XeS0ZBdpAitzRVmGUA2DjX9
         z2xeYBQj3nWGbhVGL6KBUIjcU7HkWCMTcmHZMmA7QeQPBbhyYaT6gyq/9TsTvcewvJPu
         zcWAvm9rKiSc1OA2GbJkw6LyOd5Ju9kBgv9/yNMzrgFp0IcjLwXRWgdLYE98Wyt0JAOQ
         iUDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9+8MdNccUKmFHo6ugXaGeYtVMdqpg82THP7O3r8hKxs=;
        b=f3YyrresMDuTLi1P1oHj8Vtvk3ti17PeZVJ54XX+4qk8VNsAeUyGEKeixlGdr/OIvT
         uZtkOYrHay9qKi1WvYRCkhxW4Paaa/sScIqH8dCigsRR9F7s1Ncr8UriCrM19+XsoeYX
         FCP+N0T20bm59DTywpsqgeCJjp0yABiyOzZaidZSQADcbyUDXJr/fP+yo87SPVZbdVL0
         YS2IpDTzHkcs8QebjkBh6lkuvuzfYa5czH/pFWBiZ9hpQiu8ltN/HEL7wLw0V6UAabxq
         QmjwU/SN6hhX8Tl2qB91EEKxviL8qi30pt02G2TXHMo3NzClw1FgjxtcNSsfG35evh4Z
         iJnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aYNVZ9aK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9+8MdNccUKmFHo6ugXaGeYtVMdqpg82THP7O3r8hKxs=;
        b=Wxo5IRjme2CU9NoA9O3SNSLp+3Laf8hmvheC+bFAM/vC7ksDz8yOWvRBr0Lbf+AYjI
         Go/0JA2fpxN/hQXYTXOyCry70+ULQE11crrkrp03Lrt6DELkyKsqueM85XzJFHamrd9D
         lkMAvOHyTPCV+uEi9RgG0fymmGdkvLqGk62CZh91qbR/L1D7ezffavX3NoIj/4KARQiN
         8UZcI7wxkmni3TQxeFvfjVmQr9p76rV/pguLmEckAGpqgqFprKshTw7QvVYtoZkuoAh0
         NFiRWy4Qc6ZEUWyUESv8IvTutHMm+/ug4f+zqeyS6G4JBIRoUfUYu8tZG4R19TsQoZ+E
         SMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9+8MdNccUKmFHo6ugXaGeYtVMdqpg82THP7O3r8hKxs=;
        b=tRENkF04gRrU9XKYOnEbSMqviOU3YodepMdCGx7Di3WqZj/TzxdClRLSG5wbjp3Qps
         aFcngzVA5XktpWcjc9uOVkgitMCtYQCr/wFOuruAunQ90plwBYCAkl4pyoguMbzFLaPU
         GelsEAdEhrmvdprd1a6lRYkbJiw0e6fq1/mQUUTtZ9e+cJ7GFmNC6drvLsMPUKbyhXVc
         pXsIjPatJgxBbrh489yJNHNA9zDfokaks7oFMfJcPTDp7lZIhwKSbYEEJRrhUMPxPvIZ
         Rxuc8v9WtWPlpuYiaCWLfXTwt7TpYT5OUIlwgm5syG96n595vWpBf2ktTk1QsK0khvSG
         5HnA==
X-Gm-Message-State: AOAM5318y6xKs/jmTnZI6+agEmQAvLO6RvrJTcz+2RWeeDaW3x97Gigc
	Fc5/1z8Tl2ZY5TxGNdYN9/w=
X-Google-Smtp-Source: ABdhPJw0ZACSTvse3W0IFHFqdS2/VvijMkaQ+KwDq4Xyuq0hW90gjuE2AxkNnbXIMONoehwvpKBguA==
X-Received: by 2002:ac8:6d05:: with SMTP id o5mr14128633qtt.6.1610747482718;
        Fri, 15 Jan 2021 13:51:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:434d:: with SMTP id q13ls1897679qvs.8.gmail; Fri, 15 Jan
 2021 13:51:22 -0800 (PST)
X-Received: by 2002:ad4:4ae2:: with SMTP id cp2mr14203762qvb.50.1610747482407;
        Fri, 15 Jan 2021 13:51:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610747482; cv=none;
        d=google.com; s=arc-20160816;
        b=KVwm+m9tLeuyB04z3NzYtFIxopnLXoYNrEkXRPW8nc9nQfB6hwTmp+rb7oV1n83TSm
         X9O0qSqBucTNPO8c7Pelp27HLOQEbYHrSfXta+vnF9RmDrmKLlLtlAsTd4hKDv/CbH6l
         fg/5zEtL5eGGbTATWYFgLq+59UDwwFmeliikUYICC9spZbdh+dy8TNnvkMdOOVV/yHYo
         IGZ+24acq9rE4rL9diozUWJj0wQP4oiPDbf62FRRNzj8IN9lNd4Aw1lI5lUG0G0wUrp/
         U7Uqaqr7RJs9Nd94neNyGdCLC3s82ksX3tDMHp1Yhtc4YCEHPimwcdKqsEpcWu2e1G3x
         GwyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bDXCYaPPP0GIkxQ0+LDG4H4iGHCT3lB0lv11EmEvqJo=;
        b=b21c+z6gRUqMSk+Y2PeiAn/TvnKCYjFf9wHgEsAN6AUREwikc4zWAerznguU51hjVy
         Tt8pV+N46W1auq8nSDxZlYWCI4gYDCMB83nKBO5bpbhFOPwikJeO3kV5xtU2kWv1dM2j
         h/Jib3DBbWmOTuHX+Je+3xWBOYLxnen/Z7EetHsZ7Q4nNY/xDOO1wv92cDongbToaIt5
         fMD0CDJhS7ADLnGPUvpkPYIlxqLuvDBJCt3R4fn5m2QPOn+hriuSq+jxpdG9YP70RLpN
         iluPDiuU8TTqeYU8h4OxaLJirZl8euqYgPzsflVeaiIDZVRVxvfLnEbpVswsrooOHxS6
         G85A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=aYNVZ9aK;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id y12si638925qkl.1.2021.01.15.13.51.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jan 2021 13:51:22 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id n10so6840854pgl.10
        for <clang-built-linux@googlegroups.com>; Fri, 15 Jan 2021 13:51:22 -0800 (PST)
X-Received: by 2002:a62:1896:0:b029:197:491c:be38 with SMTP id
 144-20020a6218960000b0290197491cbe38mr14843937pfy.15.1610747481454; Fri, 15
 Jan 2021 13:51:21 -0800 (PST)
MIME-Version: 1.0
References: <20210115210616.404156-1-ndesaulniers@google.com>
 <20210115210616.404156-2-ndesaulniers@google.com> <CA+icZUVtodEz=E+TG0Pt_OUDgW5-0x2WzVOhzQDbyuVR1igU6Q@mail.gmail.com>
In-Reply-To: <CA+icZUVtodEz=E+TG0Pt_OUDgW5-0x2WzVOhzQDbyuVR1igU6Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 15 Jan 2021 13:51:10 -0800
Message-ID: <CAKwvOd==3r8HNe8P5SuoumRtQ3w7iZkGhhVNhAEyh=rSFDNtKw@mail.gmail.com>
Subject: Re: [PATCH v5 1/3] Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=aYNVZ9aK;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

On Fri, Jan 15, 2021 at 1:48 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Jan 15, 2021 at 10:06 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > From: Masahiro Yamada <masahiroy@kernel.org>
> >
> > The -gdwarf-4 flag is supported by GCC 4.5+, and also by Clang.
> >
> > You can see it at https://godbolt.org/z/6ed1oW
> >
> >   For gcc 4.5.3 pane,    line 37:    .value 0x4
> >   For clang 10.0.1 pane, line 117:   .short 4
> >
> > Given Documentation/process/changes.rst stating GCC 4.9 is the minimal
> > version, this cc-option is unneeded.
> >
> > Note
> > ----
> >
> > CONFIG_DEBUG_INFO_DWARF4 controls the DWARF version only for C files.
> >
> > As you can see in the top Makefile, -gdwarf-4 is only passed to CFLAGS.
> >
> >   ifdef CONFIG_DEBUG_INFO_DWARF4
> >   DEBUG_CFLAGS    += -gdwarf-4
> >   endif
> >
> > This flag is used when compiling *.c files.
> >
> > On the other hand, the assembler is always given -gdwarf-2.
> >
> >   KBUILD_AFLAGS   += -Wa,-gdwarf-2
> >
> > Hence, the debug info that comes from *.S files is always DWARF v2.
> > This is simply because GAS supported only -gdwarf-2 for a long time.
> >
> > Recently, GAS gained the support for --dwarf-[3|4|5] options. [1]
> > And, also we have Clang integrated assembler. So, the debug info
> > for *.S files might be improved if we want.
> >
> > In my understanding, the current code is intentional, not a bug.
> >
> > [1] https://sourceware.org/git/?p=binutils-gdb.git;a=commit;h=31bf18645d98b4d3d7357353be840e320649a67d
> >
> > Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Subject misses a "kbuild:" label like in all other patches.
> You have:
> "Remove $(cc-option,-gdwarf-4) dependency from CONFIG_DEBUG_INFO_DWARF4"

Ack, I wonder how that happened? Ah well, will fix in v6; thanks for
the feedback.

>
> - Sedat -
>
> > ---
> >  lib/Kconfig.debug | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> > index 78361f0abe3a..dd7d8d35b2a5 100644
> > --- a/lib/Kconfig.debug
> > +++ b/lib/Kconfig.debug
> > @@ -258,7 +258,6 @@ config DEBUG_INFO_SPLIT
> >
> >  config DEBUG_INFO_DWARF4
> >         bool "Generate dwarf4 debuginfo"
> > -       depends on $(cc-option,-gdwarf-4)
> >         help
> >           Generate dwarf4 debug info. This requires recent versions
> >           of gcc and gdb. It makes the debug information larger.
> > --
> > 2.30.0.284.gd98b1dd5eaa7-goog
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D%3D3r8HNe8P5SuoumRtQ3w7iZkGhhVNhAEyh%3DrSFDNtKw%40mail.gmail.com.
