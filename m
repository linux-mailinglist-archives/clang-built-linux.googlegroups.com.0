Return-Path: <clang-built-linux+bncBCQJP74GSUDRB3XX72DQMGQEWP6JZAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B043D70A6
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 09:55:28 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id ie12-20020a17090b400cb029017320bd1351sf3455886pjb.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 00:55:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627372527; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ab/m9aho3hHFonr83zNEHy7wRzQ8r5vG4kreNqI22qrB4QfPYmE23Jg0E1SeKLi2bb
         mJPijSlitrhcpQYxWMrxA1ibWQNBbbT1SFSPg93v7lqZjD3vvjXIKD88tsi7CLqDj+XI
         fMv16U81mzDufJd3MlFR6yMZPWZJIvwpvlsScnfDf+xcQEKkx8pPyWaH8U77VvEGRxmt
         U29OuBWgfy0BOjhWo28XYXhHZ0btP77OFJF1Ur+LVqw7f2tTSsmsG31E43OnA2taN5G2
         6U8W5BeOIQRRYieFa1TuV20ahyhWS+m2Ns5fzbMPRb7FZG7AUBr5q75mjn9tGKvLaM0E
         LuBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hn3sEjUlWxKWv978J/LGFpy3AYjTXqGaWR7iW464dio=;
        b=N2nwEE1ntSnSfA5mwpBGDrWUMmn+BwZFMwUatKLt5cy/N7BVL8uW/Jfs7YpFbYQ9TB
         b2XCHd+UoZ9Rj7E9g6f7al3Wf3BbdLo/4MZuqsAJufz9ytrdDt29T1xpFjnv7I9hxCY1
         12yCovSMSKBNEJ3qG/EvhOuaa6oJODWbigWWPKNxNMSOVJajykABYu24jQ2MDMqwEd2M
         w8uepGZZPJM9OzrGRpgj6CzAoZo4J2NfFqOQ+rTNofUDdg2lBTHqDH5R1kVe90+u7YhD
         C6hYTW/lWproLvrBw1NrkBYMXFxkrbWA6EOe+DAe8VfOOGOroq7yc4m4oOvhcrfloNlr
         Ptng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.46 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hn3sEjUlWxKWv978J/LGFpy3AYjTXqGaWR7iW464dio=;
        b=jp3UyZtKwmtBbh3VMUZOnpFaEOpNvUR3Se3rXLvJJw7Bw37mjD/ZL0zkRqR7bmn7BF
         BWU0ex2hAJicgIa13sQ7SMgYlCws6+pA7mzMBwKWWmFMOZTYeJU0W04tgA3FElEm3VUO
         heYPuQT8qFwFEaz3Ev5EvJEjwsT+kSWPR/pLRuhNlqNEES+F61JEWfgsItahYuLGIO1w
         d13uZ7CR7awlw/CxAhpcUDqxeAq0IDITZsuJovScoABCM+3g75QDoJ74X3y8CARucunk
         /7/ogCIXK27i74wuNN/4CY2ef3sV+Fo95FbhRQ6EgjuWTRLpgjqPRqYS+UVvy/T9PYwT
         Y+vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hn3sEjUlWxKWv978J/LGFpy3AYjTXqGaWR7iW464dio=;
        b=eTSElwQjwD879Ua6DzfBDSyS2vKzNeNC2AWy7dj5Kcl28B6bq8n/Szk0sauXy2m4Ol
         Md0kHd53wjH3oHxwKqgapgCHiEHx0lOJU/246ea3Qo1qt7nCazka9xiKAqacE+dgxrTr
         wh1km5IYEiphLnokCJ8Ie7gAO1Vu7XNfUgrCp5IB1SUV9L1Uk6ZXN23UQVYEN4O1EYo3
         G6J4ZIE/pQ384AnbkNgUXJljuwexSIcELKcZM27nDfk/V1VEP0UtxxwcPbkOymDvlGMB
         ch/seTmpQO81ZN78uK4g46gi4N5jJfN24gc/hCxQeCF0k4srZKLNu+AvxQc8IQ1+fZfW
         IxNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ZQbbFNUScOFU3U4JrZF3WajL3toD/Ghn9hYY24RdANKSJNWxC
	b6vnReJqghRJw+OubPMARoU=
X-Google-Smtp-Source: ABdhPJy4VvGQbTOfOAY7ElctgT8FYFCpzObsiZDcXqPe7a6PHyNS+vgLhPvbz3m30SkYCufgNuoucg==
X-Received: by 2002:a63:5119:: with SMTP id f25mr22197641pgb.271.1627372527185;
        Tue, 27 Jul 2021 00:55:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:76c5:: with SMTP id j5ls10246584plt.7.gmail; Tue, 27
 Jul 2021 00:55:26 -0700 (PDT)
X-Received: by 2002:a17:90a:ce03:: with SMTP id f3mr10053561pju.30.1627372526420;
        Tue, 27 Jul 2021 00:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627372526; cv=none;
        d=google.com; s=arc-20160816;
        b=VD+S3v+VMZerstsKn6A4zoPHdYXCC/lXyO3hHIEfT7mPtODx/1NRNNj3yh7ofJX3gl
         XqaeCstnTPAODMZJLLXSZwQb6pbuDsDu357pqXQeI05urKXCE0nJ2f/4LdFRAUTBNNUZ
         8KA/WPiIXXrYeMNsoY/342xqFaX5clJ/zgX8dJ29C2Y4/E+UkNURbdlY1+lfoAioxsdS
         uhHwTNygWSol1DnFLcLnrGtjt7I0WTcROq4rUu9XOVNf5EEhSZVOUz+pb5RJLWKrb62a
         ifvV493agzC19q6maPLlLQFaXFzUp7v1ek4aV6n+NmWTVVZMuma8SRcXmU+uCT079BQQ
         RdJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=9pv0Mfi+cKjdrDoWz9Rec/UJjvSyq7O+mu5kO7UGzN8=;
        b=SGGKguTvX/D6viH6dfhrRcG+bFmB6E3dRhCbAaSAdDtI4R7ME6ATBwp1yk5y+fQv0P
         tYrxF9UeQV/qibs/pe9pKB5z3AdufQRGZl+xn/0nKCLsuLxos/u76m/8yS5e6g1Q3PSG
         iQYyOyTZId7/3drmxuMFmw6MCATI342gUylJja/jtRe9Qq3LR0xrm7kNA4M2zdnE6JQq
         XpM3fhG5G8WWAQtbJ/SV1VyaafLCwCy4TA++BBt6OjNrWKbdVck0ou7Yb/zlIHYd3vnS
         Yqyv3c49c5sD30NIVB0GzhaDJIoOanT82SSmxBIE64h2Yl1OYffPkjU3VUoBaJ/kBH7l
         hTlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.46 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by gmr-mx.google.com with ESMTPS id 8si134891pjo.3.2021.07.27.00.55.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 00:55:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.46 as permitted sender) client-ip=209.85.217.46;
Received: by mail-vs1-f46.google.com with SMTP id x21so6673720vsx.5
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 00:55:26 -0700 (PDT)
X-Received: by 2002:a05:6102:321c:: with SMTP id r28mr15392078vsf.40.1627372525463;
 Tue, 27 Jul 2021 00:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com>
 <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
 <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
 <87r1fkizxl.fsf@disp2133> <CAMuHMdVzNFqAdxK+QTp7ub7LyhDL_3GbVMoAah_s3nGuJ5JN_Q@mail.gmail.com>
 <CAK8P3a2kb2Zzgd1wvi4m2fJeHWA9aONXUriEVfnsOfYTquJ3eA@mail.gmail.com>
In-Reply-To: <CAK8P3a2kb2Zzgd1wvi4m2fJeHWA9aONXUriEVfnsOfYTquJ3eA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Jul 2021 09:55:14 +0200
Message-ID: <CAMuHMdWDDM5pugT8KkP7cRQ4jOGJ43aUO1mic16Bsiv5eN7+Tg@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Arnd Bergmann <arnd@kernel.org>
Cc: "Eric W. Biederman" <ebiederm@xmission.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Linus Torvalds <torvalds@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.217.46
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Arnd,

On Tue, Jul 27, 2021 at 9:49 AM Arnd Bergmann <arnd@kernel.org> wrote:
> On Tue, Jul 27, 2021 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Mon, Jul 26, 2021 at 10:27 PM Eric W. Biederman <ebiederm@xmission.com> wrote:
> > > Masahiro Yamada <masahiroy@kernel.org> writes:
> > > > On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
> > >
> > > Does anyone have any ideas?
> > >
> > > Something so we don't have to specify all of these variables on the make
> > > command line would be nice.
> >
> > Just including the main Makefile does not work.
> > That's why I went with the more convoluted solution in
> > https://lore.kernel.org/linux-kbuild/CAMuHMdXJBqrpzaSNDJgic14ESiHV6cCcb_5E-st6iniXdmm9_g@mail.gmail.com/
>
> This is roughly what I use as well, but it does have the downside that
> it confuses
> the inner 'make' when you build multiple targets in parallel, e.g.
>
> make -skj30 kernel/ mm/ init/
>
> works with the normal Makefile, but fails spectacularly with my nested
> GNUmakefile because it starts multiple sub-processes that each try to
> build the same preparation files (I did not try your version).

Seems to work fine with mine...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMuHMdWDDM5pugT8KkP7cRQ4jOGJ43aUO1mic16Bsiv5eN7%2BTg%40mail.gmail.com.
