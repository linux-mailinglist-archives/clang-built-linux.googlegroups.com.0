Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDFT23ZAKGQEVLUV5GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 61B8F16F268
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 23:02:53 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id h87sf731995ild.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 14:02:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582668172; cv=pass;
        d=google.com; s=arc-20160816;
        b=WH8slorXHAjNG1cyGTm7fm6xIlmaMcYNHSPQlxyPTeSO27ei/BTGEVKj5AO30edD8L
         vdPFFYmxQnK9LD6mN86Cffhof+NGgoNKYdMs3sCAeeAaQ8g+vEeSegx1bKAj/OE9CdW2
         V+PLlpX8UqQqWwRV/D+YtglWOX+Xq2HLU2osHlrAgjbb51nqci9AitGS19jeU1L5EWVN
         a5hm3PgZ/m/dDic40vipZJW8aP8xc9lz2OVOhV5GeyHyzRA9v/WfxXJbsrhz2OQQ4WaY
         3fd7ufpYnq5CGK01nd3aZFj9Eb8jNoyxzkzz2UK/4VhuM112O4TiENEaacUqVIGJokos
         kZQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZBWgJ96TL4mN6XlctzQF6WcJjuX5A2XqT1wUXvJ6XIM=;
        b=Xsq6C2thmbISwLjXFLQbOH7EqN6Z6fNxhVpiWHVtZD+pdPO0wGO6c4U7Ipg5jzZJpi
         fJpf4YexOGJox7VlNL5E5KZF7eGhBwE3NzyGB66aXx1JLLI6+6yRa6atjE/c2V8Jdh6Q
         jng1JMF/pzb6g1QN3lsUFWu9wzVFuVpUKiZqGa/waOW9kIh9qF3e0G9FUM5dXZ+rQGby
         MRz9C47pVsx+VYVmjQAi3SEoUMZYQo/lBOd/+Ld66P3fFEccxB4IvHsypKwcUWB6lgf+
         iTWnh7EZsAV3xiA6x6tDNVugs04OQwkY8A4w8zYWS5DkD3OVk6CpHQvSD+8GgFWkUpD1
         +2Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QMkbvLLy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZBWgJ96TL4mN6XlctzQF6WcJjuX5A2XqT1wUXvJ6XIM=;
        b=UxwJ2uHEAprKU2zMW/0X9HLki2GIXvKgLpB+S6lUTSOQ4fWBmG9kxH0jsQymbMZZd2
         38HT7gu1WWSiBEyixx/pLhriK5lT26LRvFYHVI9UuWXqEP1wbGtJmRQjDAJ+3z8h72p0
         yqh86o0Ed0a2jT/eqX1dgfoPXFbCwZq9I9suDrjfJMyV+Ju4yICOEwU98HZMKsT1ev4G
         0OFP605kEsoGsUZ1RWhiet6pOdgR/k8YXOTDSs1+tTY2wEL00BkI2o26+2f2ZX4uyIcY
         Gi6s5dDVqFlzDurXDDaPRno+fNzH59/Um3MtbbNvKv58RXBRuk59sJCVVaJZtOZ86zvJ
         BeBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZBWgJ96TL4mN6XlctzQF6WcJjuX5A2XqT1wUXvJ6XIM=;
        b=GvVaOjCYpKMcHOJzV9LuEhiUbYYyfGqvXUK1PVRhEVu8+feVr0LisTdbr8srGfD1oy
         /ActccnVdpROTLTA62GFyC7Xq72CKZ4NsDRbay5Bhvrq3+b0McEOY2Ex0Zcs6FY0lgLV
         n49n+ALJUZrnn6rrr23GdKIWLIDetwIJLFVJJAplMoJvGhUr3QfhHMsOa2Ziq2J26IAj
         FqKUrlV+730etRGE9Na/zh/ZemjO7QN3GkQqCjaQtjPji6/CJEgU7BErr7nVgbvnVU4l
         tR6S180INFq1BwXdePtCP754haDj2CnYskT9QI7LDDX+KcnTwIm9DzfZOWMPIO33EywY
         ijVw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV6v145bQiBNXhhMKeBOM2Z8rqoG0x1Q7WrjrxyixllheWdt2tE
	5AalPJjiCKmFiSjQ8myZwJA=
X-Google-Smtp-Source: APXvYqw5YB7rNp7vJXqJaK2KllgTtzeztYpswkMvUTe/jRsuCcx6x8CuET0wp/gUcOLa4v2VS8y0bw==
X-Received: by 2002:a05:6638:5b1:: with SMTP id b17mr739765jar.66.1582668172233;
        Tue, 25 Feb 2020 14:02:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9057:: with SMTP id v23ls221049ioq.5.gmail; Tue, 25 Feb
 2020 14:02:51 -0800 (PST)
X-Received: by 2002:a05:6602:154d:: with SMTP id h13mr1043708iow.237.1582668171874;
        Tue, 25 Feb 2020 14:02:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582668171; cv=none;
        d=google.com; s=arc-20160816;
        b=WXBuFDMU1zyIXweTDIUBJ9SQ9XqJ7JtFyEoLti+fEU3feroFyHK7lAzMRFesarSDxn
         xqIcHqfWCh1dp9dPc8VLCECAclSaASZsUw0jMSh3F59DzuLJdTAwmZdwyp85fnUgg5y/
         Imqz2028ytR0SER2KYf2tqtueH0C6XpDQ8wiqo2rxVvmyGA5GOHb1n7UAAf/uK5T8s5M
         jjfdCsOr7YR3uplgP8Mg9lFz0u2KDvHm8oRTI0aZNxrN86CfzvNon716X5j4O+UKP75v
         t+fq7dw7fvKd5Z+yjAl0gNvhhwAKWF+rhRTOxso/GNFLmKo3CjP9Mq85kR5fLsGtGtDk
         d7hA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Bvro5bqgLoB7Q+QOnUukmSXnFk4BT1NY/ZAFMUfpRmI=;
        b=C32wRbhzCq02XySF6xEyWXThLwTheiaTJUeeSq8+jlUrgtAn/JYI9RsCHudFevO7VU
         YYgJGvkRERD8txcAIeJf3U6XEiwng12QBhzSMtlEu6F+SWy8g4aHppf2XzAEDH+JzxjE
         K6NBCzDIKM1ZXYf1fVpHE22rZc7kKiInkBEyLrjOmBjWR/D1TMK3gu5wq8t5P5oTnK+i
         XZ6n7UWXDl1hdN1VahcmXUmkl3jI3aBWL4yUcwWabSnrA4FNDwL7rvq/lRpd7vc5ioRY
         srTr+RZJ+By6Q5bXO+pky4Fbg6/KPUjPh+K6ok6hxY6BuXfmjUZXlRoMpPcV5J27mt7O
         lsjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QMkbvLLy;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com. [2607:f8b0:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id k18si10129ilg.0.2020.02.25.14.02.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 14:02:51 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f as permitted sender) client-ip=2607:f8b0:4864:20::62f;
Received: by mail-pl1-x62f.google.com with SMTP id a6so392288plm.3
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 14:02:51 -0800 (PST)
X-Received: by 2002:a17:90a:cc16:: with SMTP id b22mr1268428pju.65.1582668171246;
        Tue, 25 Feb 2020 14:02:51 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id a19sm94740pju.11.2020.02.25.14.02.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 14:02:49 -0800 (PST)
Date: Tue, 25 Feb 2020 14:02:48 -0800
From: Kees Cook <keescook@chromium.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Fangrui Song <maskray@google.com>, Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Michael Matz <matz@suse.de>,
	Kristen Carlson Accardi <kristen@linux.intel.com>
Subject: Re: --orphan-handling=warn
Message-ID: <202002251358.EDA50C11F@keescook>
References: <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <202002242122.AA4D1B8@keescook>
 <20200225182951.GA1179890@rani.riverdale.lan>
 <202002251140.4F28F0A4F@keescook>
 <CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnkr1W4LTm8XmTKGkSDUhSBRowLbKwJwyitDMAGLh9ywg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QMkbvLLy;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::62f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Feb 25, 2020 at 12:37:26PM -0800, Nick Desaulniers wrote:
> On Tue, Feb 25, 2020 at 11:43 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Tue, Feb 25, 2020 at 01:29:51PM -0500, Arvind Sankar wrote:
> > > On Mon, Feb 24, 2020 at 09:35:04PM -0800, Kees Cook wrote:
> > > > Note that cheating and doing the 1-to-1 mapping by handy with a 40,000
> > > > entry linker script ... made ld.lld take about 15 minutes to do the
> > > > final link. :(
> > >
> > > Out of curiosity, how long does ld.bfd take on that linker script :)
> >
> > A single CPU at 100% for 15 minutes. :)
> 
> I can see the implementers of linker script handling thinking "surely
> no one would ever have >10k entries." Then we invented things like
> -ffunction-sections, -fdata-sections, (per basic block equivalents:
> https://reviews.llvm.org/D68049) and then finally FGKASLR. "640k ought
> to be enough for anybody" and such.

Heh, yeah. I had no expectation that it would work _well_; I just
wanted to test if it _could_ work. And it did: FGKASLR up and running
on Clang+LLD. I stopped there before attempting the next step:
FGKASLR+LTO+CFI, which I assume would be hilariously slow linking.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002251358.EDA50C11F%40keescook.
