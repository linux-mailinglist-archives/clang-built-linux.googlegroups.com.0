Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBRXTSL4AKGQECYH5SXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C17F2175E1
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 20:07:04 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id e80sf16178895pfh.13
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 11:07:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594145223; cv=pass;
        d=google.com; s=arc-20160816;
        b=iEfnODtG3QU2u8tiahtMdfSI5imZEeQ/z/ZSyJ/LmuLSyw9ciXEN+q4r4HjbSnjiT4
         Ayf6mw32NuzHQ8TJ5A5IXjFRfagKd1omr1RZPFyuakDUMcA+SH9+k9RO86o644wJQdZd
         q4JJDrDBR74I4JBvZIfUUhobgx+i4FMQnFodY3KqvcrGiaDpdxz/bF5+zK0abdo6ARsI
         ZoJy8zI4204q/h1JkPyhgTvFJgSW7LbVE5ZSEKSfwLB82jNWJx4sxKiMAooUIRtXSvxn
         cVAzTSjaDk4DGlr2T0sqSVAuhsrYmDpkKqVTBx+yLpx4ecDOiQLOXsp0LP91czIUZxT2
         0zyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=TTfqYUaDumNoLW/Nu0gev/uDiWSSQiyuR+I4pwpAuFI=;
        b=zB1b/ANI57gIYUGy+8ZfUhi56TO1ngSjtZ5IUbhIYg0/Glm6763FHhR129zVJ1lBaA
         45aNZL+OEvfBLz167vnBSM8hOJatWSXtYD35wl+hajdBtG7HmZORCI5PFpK61lummh3Y
         m5CRVcsTgwJs9JFGIJOvLUmq5XvjPJtyXvzgc8R19xt9kQ737nP7g+DGexa3zeWhRz2e
         h+eTgPytGVQMs9yoZF8zkqwgicApk1+0GPAxE4LVorTGaZyN+JRNPub7WjW4ZoenjQXE
         LVC+zBhVvB8cNY2LIR9quJIk2LDwOEFskn2oSKRd2GZwmS+zqGKZOdrnvlsEfk/B/gHw
         gKCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IeE/ZwTY";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TTfqYUaDumNoLW/Nu0gev/uDiWSSQiyuR+I4pwpAuFI=;
        b=FpbDh3Zz+oRT7cavTUqq5SIFocHpQe0N+pdq2lHCUhtK507C53JhFazUlOq7pZyQHl
         YY5zs8dZRn6SPoNKm7glKt9KuQM51Ncj1NQ2YLavoCv3s1PVRlWD+GbDSLGYyHbmO2Xq
         jh/T1ZrzhRtoEsx+ChF759LH3NXyED25It24noQKyqjS9cHplFvKq8Mb903X/gWm7+ju
         mPWLhyV3QRe870MgI97KTircLwcWpgHFEIQ2+kcqT06ulFoPptD3JiPi1S2FiVLtTL8+
         gEYTuL0yf8hQn7w3m5qdtLtS66Yd52VWA3uEQbdp7MovYqlnLju2hQosMpjEU92hxgHB
         4m9g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TTfqYUaDumNoLW/Nu0gev/uDiWSSQiyuR+I4pwpAuFI=;
        b=bOseIw8iYbsaylk53G3wCVWqB29cnbL7TvlB7m64EuzECJ255ydQwGbqeNXDroy53T
         7/QIgYnM7DqsHh6yL9pHHeg5uOGI6YRo63S3VTDy6FSdd+g5UKrcSZ9FyGUesB+GgepL
         W03doOShYwgkAJRKlLxiCx6aA9nxNSjlG2D2zhcZ5ZFQdrfom5SKhySTWcjbnyhF+0t3
         5XRWY3+Ch5ObtaAQI9IoSxeLhV+Sh67wGdZF7oLc0ohFX9G5qi1VkZCZxkcI7KB1pJrq
         Mine3BPRUWpwKw425evbz7Wvs8ZzZKdX/W68P9rHQVhkZA5cavKt8/uCaZf3jg3oGi2X
         oNzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TTfqYUaDumNoLW/Nu0gev/uDiWSSQiyuR+I4pwpAuFI=;
        b=aiFCK3WS6V5U7b4LAwJYCP8zjXmN3eUz4/nFp+Fi9qbA4S2Mxq+p+daCGgPnl2gLuj
         AICtpGVW9zLqsAwx3U3l/ZCv6cXgGG3IPm2Uf4jsZzd1+KKOylbGyUN+A3ieeYqYcJE1
         a4ds0SpMS/9WJZ1tZcXlB4KNf9Ilf4ty+mwmd6HAdSY7+dSZwMd3G/ruQQysWwqxtXBi
         8NbuFvxB2bJxeGozETQve9EdysySuQkwTjgGDngm01jeqpHyKuy5W4Cb1kIAU6mr1TZp
         RkyDCDoMcdpDneQPGxhCHvZVmHTWHk4fFPH5UmSHjIDVX3zKua4fxMNbrmrYbZJVRVYt
         A5hQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532OjWFPGH5jC22w71Pjo5KPk7U7E6MNRrbQonsU5QF1GPtgludD
	XIYLcj361J2y1kKnRWrEz3Y=
X-Google-Smtp-Source: ABdhPJz85spGOZI3Vz9iOP1TDW1u2eeP92iHcL/nKgNKhv/pr32CvjCnsXw0VPU07J2oK7QXKXZWkw==
X-Received: by 2002:a17:90a:1b4a:: with SMTP id q68mr5465845pjq.1.1594145222883;
        Tue, 07 Jul 2020 11:07:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1bce:: with SMTP id b197ls6305910pfb.10.gmail; Tue, 07
 Jul 2020 11:07:02 -0700 (PDT)
X-Received: by 2002:a63:b74f:: with SMTP id w15mr47634816pgt.314.1594145222448;
        Tue, 07 Jul 2020 11:07:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594145222; cv=none;
        d=google.com; s=arc-20160816;
        b=DI3XuHQjL4WHtebLLzxR03MCYHbaYUIPUMgBWZsV467DZo/r5fDhvE5DLqlNrn/Y3Y
         HSv8e8C0t9Uvu3onHjXPkhgiWJDcAyF6s97e+3uEWEV3MIzqQXZqvYL71PaoYeu4vUsN
         ZSJLMrUYflVDnKtrVPBoHix+DzRx41kBKucjSzdmntv7Zl7HwdOFz6yEagV/NuGPZiBz
         FHq4AHsSPLkor+vh+Bs5bruMZ6a2zQmAxcUclS86oIOJcn+DoLwQSbuUjCcvM0V0OwER
         W4aaFbM5zCDec/nE5II0PiDSG5XI21vUerzW8ScrpGHEbuQhFjlB8ceS/4Mj909JnvV3
         d/AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4mVvVgwHuNFRXr2LdYGH66bryOks4CRT0yKjco0TiK0=;
        b=dx/wnD8nwi/hekXaMBaFN1zBcN25pyx17GPL7IPPdEofuUdLZwXvNWfFjqh3q5whbV
         qSbwe9kCLYUhhMlvm1h6Tg83p9eWeGUpLxFD/qohEeu4EfAa4MC/OLHrL6Bq4pYg4wRM
         7Yd9dCezwdhO+Stk4J0YsRyHVeqjk5tF2iCcBMVgfHB6/OJltsi+6rzACjoCYnIsBYtW
         M03ivtCDjPy+cDVbomwfUpMNX+lmj/zHKDbczp24cUv2uaQ/MEvyhtltWyHP1jM+PDJ5
         KZg5NC1jnj5+h3VkXrmyPzTh9vcN2LXZJugKE/4o31gmHtHLqf6UFi8kHXexaxIvu9Wv
         Nzdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="IeE/ZwTY";
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id i3si121390pjx.2.2020.07.07.11.07.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 11:07:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id k5so16698pjg.3
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 11:07:02 -0700 (PDT)
X-Received: by 2002:a17:90a:ea0f:: with SMTP id w15mr5919312pjy.138.1594145222061;
        Tue, 07 Jul 2020 11:07:02 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:1000:7a00::1])
        by smtp.gmail.com with ESMTPSA id y20sm1068308pfo.170.2020.07.07.11.07.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 11:07:00 -0700 (PDT)
Date: Tue, 7 Jul 2020 11:06:59 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Philip Li <philip.li@intel.com>, kernel test robot <lkp@intel.com>,
	Mans Rullgard <mans@mansr.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Sasha Levin <alexander.levin@microsoft.com>,
	Wolfram Sang <wsa-dev@sang-engineering.com>
Subject: Re: [linux-stable-rc:queue/5.4 109/220] /tmp/filter-273424.s:50187:
 Error: bad expression
Message-ID: <20200707180659.GA1349112@ubuntu-s3-xlarge-x86>
References: <202007061558.jOn3THo0%lkp@intel.com>
 <CAKwvOdnA27AKP4aMGWBQXdjr3wi2XtbK2rvFj2btCGq6RCqGVw@mail.gmail.com>
 <20200707023303.GA277193@ubuntu-s3-xlarge-x86>
 <CAKwvOd=fdVa0K=cVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=fdVa0K=cVLhuj2EEhAj7fs6Z7r50vwBAps9njbBpmJA@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="IeE/ZwTY";       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 07, 2020 at 10:01:12AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> On Mon, Jul 6, 2020 at 7:33 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Mon, Jul 06, 2020 at 10:01:07AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
> > > On Mon, Jul 6, 2020 at 12:20 AM kernel test robot <lkp@intel.com> wrote:
> > > >
> > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git queue/5.4
> > > > head:   bb26a37d5a4bf25b8377c83fa407a219b3822ed1
> > > > commit: 5cee9e67596f7d694e94d7def7cd9d65a7599f66 [109/220] i2c: core: check returned size of emulated smbus block read
> > > > config: s390-randconfig-r024-20200706 (attached as .config)
> > > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a378c0449507e00e96534ff9ce9034e185425182)
> > > > reproduce (this is a W=1 build):
> > > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > >         chmod +x ~/bin/make.cross
> > > >         # install s390 cross compiling tool for clang build
> > > >         # apt-get install binutils-s390x-linux-gnu
> > > >         git checkout 5cee9e67596f7d694e94d7def7cd9d65a7599f66
> > > >         # save the attached .config to linux build tree
> > > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> > > >
> > > > If you fix the issue, kindly add following tag as appropriate
> > > > Reported-by: kernel test robot <lkp@intel.com>
> > > >
> > > > Note: the linux-stable-rc/queue/5.4 HEAD bb26a37d5a4bf25b8377c83fa407a219b3822ed1 builds fine.
> > > >       It only hurts bisectibility.
> >
> > Is this note talking about the config in general? Because that config
> > does not build at all... I see this over and over, even on mainline
> > (note that this report is initially against 5.4, which does not build
> > with versions of clang that support asm goto):
> >
> > ./arch/s390/include/asm/bitops.h:69:4: error: invalid operand in inline asm: 'oi        $0,${1:b}'
> >                         "oi     %0,%b1\n"
> >                         ^
> > ./arch/s390/include/asm/bitops.h:90:4: error: invalid operand in inline asm: 'ni        $0,${1:b}'
> >                         "ni     %0,%b1\n"
> >                         ^
> >
> > This might be solved with commit c4e5c229b610 ("s390/jump_label: use "i"
> > constraint for clang").
> 
> Looks like c4e5c229b610, should we ask stable to backport to 5.4?  I
> don't think we had clang builds working for 5.4 for s390, so maybe we
> should just Philip to disable Clang builds of this stable branch for
> s390? (There may not be too many backports to support, but I don't
> know the amount of work involved there).
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers
> 

I think c4e5c229b610 might be it because of all of the work Arnd did for
5.2 but I don't know that I care to test it. For this config, it does
not fix all of the issues. I think that we have enough triage to deal
with upstream and we have not probably poked and prodded s390 enough up
there to warrant testing it in -stable.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200707180659.GA1349112%40ubuntu-s3-xlarge-x86.
