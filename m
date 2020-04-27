Return-Path: <clang-built-linux+bncBC2ORX645YPRBD5ATT2QKGQERX23OHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5201BAA9C
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 19:02:09 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id 75sf16104841pge.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 10:02:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588006927; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jy/Rwldk3k0ttPpaf1gIU4gC98z9QT0OO6S5/iefOXHmK1jHxyzIwN3jEQ7gUVtPAa
         STwd1bhgxX3FI9VKyn7TMhE22sVeAmmEq6KVjNbrOMxQTb4of0Fyx7z0qmjj7UBeUA4k
         BzHe0F3JZ3FMX7KEyC2QT9nimJ1i+2S2wakGRktk8tfTNSgXVASLyeg755MbBbRppBXM
         XG/EFKtpSnl0PhK2sMF4mP29xUK4hIutMYBXT78Gv2Z47beL3yno/WRvpxHMLwM9WS4Y
         LhG3PdF6j/kZB4M+AYoFAH41FcUKSnJ+v5mARyGOH5Xy4mJNcW12qT2oMT6Ez1dxmy2W
         pj4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=mWsF06by2PToYd8DbEN5vgezDaET/RPUou2RSC7wAS0=;
        b=nN/RQTepNkFmF0vgVZL85zTV3QbIXUOZMorCF6TOfJjqdsB8YTlZxt+N4GHj6KaxDa
         oqKFYPmLpL21vq/tz1B/eb+viXWIum2XIc8h9zOgmbjNlpGxAvJHDEdwbfvXuCBgbO0D
         cvaJPqfTvS5Yr1q8K4vspz2IOdQrtLVFQDAmPhfxi1NDnYaclXz4hYkb7KR4OW8TZT/E
         WiJUeGNi5Z/ReBDrKRdwiBs5y1TLPezZ1yo2sL4DC/mOjcROrgT++rF9goca1msCnhy/
         QDq82vjmDWQgzDYnp5AbnkEgm30Tk6V0vuM94N268Bw29+YNL7B7IwMY8VpqfO+rm+BU
         B+aA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dNZ6aoSE;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=mWsF06by2PToYd8DbEN5vgezDaET/RPUou2RSC7wAS0=;
        b=qdCqihTRHQnUhdKkWI0wsppKJ0/65uQbp7FtSZjj0ACz4+Fco4nN/nYcybLDtcVLK/
         cbkUvu3EFclXEX6PJKB8jjJmK5aNShQjVtaMF0ws2FbBHmd+ci39M8BKOhPVxhAqLKEu
         4j+rkLqMPS1Crmby9zYbaCJT4vdeRlSTqFy/Uy8FtaGHGssucTIZElKA1s0o1qqKASKz
         aHq8oripfwkUFDmMPQKskv3YDfNsg7S12/ZFCDQ/pNhDl1MtPWv5qLKInFpQmq9WMV/R
         mEG0ydqRfTkWZvQnc7Dq1IIPG+uhDmqVFUv/4RXatTJ1ZQAd1EF1tEALxtWmxHwjED/K
         x58g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mWsF06by2PToYd8DbEN5vgezDaET/RPUou2RSC7wAS0=;
        b=QTn2Vy070W3L0GqUho16Poc1fkgCftzoPpQlBCGWFZLF+H80JxX4iook+G/Lu6Pdsb
         Y2vZydlejbMsvKQenYs2REiT8sE3ZcWagKDhw9dEdE6mmUkpfXPkrGhU9oFNcD4c6t2A
         0PHxpqLEywro01B3crrpnxhKY5gyxzXP5bGz5Mpuo8IyGH3MbNwQm6rGKCQk4bDamC1X
         4YupkITP2XMG98Vhzrg9ugGVL9RBZP/FkTMqIkR9bVM0/f0tG8sj/K1VIIlNcMhFrO5L
         5sx2Mm2Z5ngEt2zp70BWIac0tYiNtq25fw8wu6C/spyVATvlR0OpvQcocI1EW3FUMlpI
         Ja/w==
X-Gm-Message-State: AGi0PubImZEvNHziQ6BpXvvtKNsFgGWzN+m5JTe9947hFHmtJWkmt02I
	aR5wAxRj10Qm8wsCHD2uyQQ=
X-Google-Smtp-Source: APiQypJdNDKQhY7bDRyitg4B9KDPDd/jYDfHyc4QtPM5VYBYTNoJSLeljBd+hrfAv6+RYwTs3AuYSQ==
X-Received: by 2002:a17:90a:db0a:: with SMTP id g10mr24807525pjv.54.1588006927639;
        Mon, 27 Apr 2020 10:02:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls16322451plq.7.gmail; Mon, 27
 Apr 2020 10:02:07 -0700 (PDT)
X-Received: by 2002:a17:90a:ead6:: with SMTP id ev22mr24578016pjb.94.1588006927193;
        Mon, 27 Apr 2020 10:02:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588006927; cv=none;
        d=google.com; s=arc-20160816;
        b=QZcGEBxfGq6pi6FciEnsl9Oe8aoZtXugi38tY+2rDj5/8kr7U/dBZNtlH4X1DJh7oi
         I0l6SkpD6Uz6OxipHrPiLhx528/TD7snGSvKrdd5RGSgaIejc/DPvzecGcmnhOi6c4kn
         zo4QR5eFr8yQj4zlG1MNlowWTpeNgAyxN9dCea6Pj+XE5lR6BJkSw8qaOzeKXYnNynFk
         gXIm82IbNlzTPwyUM/eKi+7KVugKua8aTEjXGf9+cQna6hoElpZ7oRyj00z8CGcP77Uv
         pasaEDQlmOcb2sQ+Hp4LUn9bGVuqjUboyiJHFcZ7xjKXZD7dtt0fu3um3WP4LsLF+G3N
         iT7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fz5fzGKUkYrlo1H6ujT5iT4E+OF3TxaMGxP6KIooVcQ=;
        b=AqI6jNxnHbIRjWjonPHCpMoFWPFL+01YM2+4o5hIWavr/Hy7TbTxYOI0TsgUBZOPzx
         2RoQbNUUKGaJbcW0EDgl2XW/ZaVdfuk0X94xG4ED5rX8YqJj26VLPqRtCJi+dCAD3Uxl
         GZVNsZL9g305WPbhblagpMXnS8Vmh5552CudcsUyL67EcLYS5sPCM5M88jqSBUQ0lfqV
         z3jG4sleZ6NL5LLHjCP1uuu20xoHA1Db1nbFQ3ylqV+ZMyQebmi61KF2szJeSS05857b
         //yDkwxUmkM5kC6uPybZ9SGkts4KrHRRi/eZAzpKFZcbVIjInKBRH4u4x1x7lqT4NsYd
         yjHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dNZ6aoSE;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id 194si1040873pgd.0.2020.04.27.10.02.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 10:02:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id k18so7210303pll.6
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 10:02:07 -0700 (PDT)
X-Received: by 2002:a17:90a:9b82:: with SMTP id g2mr25145882pjp.72.1588006926605;
        Mon, 27 Apr 2020 10:02:06 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id c14sm11299278pgi.54.2020.04.27.10.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2020 10:02:05 -0700 (PDT)
Date: Mon, 27 Apr 2020 10:01:59 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v13 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200427170159.GA236495@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
 <20200427160018.243569-2-samitolvanen@google.com>
 <CANiq72=vvRcjWCON7zbaCTxLA2wP_-5zrnLyymR4g9b1gwc5kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72=vvRcjWCON7zbaCTxLA2wP_-5zrnLyymR4g9b1gwc5kg@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dNZ6aoSE;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Apr 27, 2020 at 06:48:49PM +0200, Miguel Ojeda wrote:
> On Mon, Apr 27, 2020 at 6:00 PM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
> > index 333a6695a918..18fc4d29ef27 100644
> > --- a/include/linux/compiler-clang.h
> > +++ b/include/linux/compiler-clang.h
> > @@ -42,3 +42,9 @@
> >   * compilers, like ICC.
> >   */
> >  #define barrier() __asm__ __volatile__("" : : : "memory")
> > +
> > +#if __has_feature(shadow_call_stack)
> > +# define __noscs       __attribute__((__no_sanitize__("shadow-call-stack")))
> > +#else
> > +# define __noscs
> > +#endif
> 
> Can we remove the `#else` branch? compiler_types.h [*] has to care
> anyway about that case for other compilers anyway, no?

Yes, it's unnecessary. I'll remove this in the next version. Thanks!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427170159.GA236495%40google.com.
