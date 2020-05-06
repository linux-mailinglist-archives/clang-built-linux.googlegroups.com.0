Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWNSZP2QKGQEDINVSIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id EFBC81C7506
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 17:35:54 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id c3sf2050823plz.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 08:35:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588779353; cv=pass;
        d=google.com; s=arc-20160816;
        b=V1c3AcCZBTXF4+L38DyhtZTN6uQrUlkjhjurJeHHczamaByhhHDhbku4XKjil2uDHs
         JdWqpxZmySUPmMgiy9Tw1t0g4oj0BgxN+/ORIpMxsq4ZuPphznCdThdk4wb8dbBeqLT5
         X73IVEMItPTWAPCgUrPkKH901VRtnw+bxasOsKQ6pMhjHQleG3Yuw7jEhXezVsVfxaPP
         f7wo3Nq9Z+fT4KDgLugT3PVnYig/DLT2N9pabltl0QycMz9a9p1BqfyKzp003nrlQIMk
         JbwQ3fCD/QWwp++dpRlduhiUc8xbvRLJ7GY1Odgq+FGufj2CMvkXzja9VzVjqwASlThb
         QNGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=JMOc/MEnTVKCat0VLPj2xS3iUVAitjHVpkkfxBO3e1c=;
        b=kAb60OvtPgkV9997vYt4c21Yjnf+iE7/zXlq9raVpX4qPNxGnknZ4R6d8+KnkU2Enz
         6NdofwsVGrf/snLWd5CAQgdfXvjFwt5IckNrW8vYmL1o5f/ZTxiynpXIOYQcQasEyVxW
         L2h0FWsqhpZ0zUBXsw8cwNnS2Au4I8ehpd7W2UCcv559T1YbbIqrXQo12qKNbEpt0cNc
         4uxrFgiN7Y7r1UI7H8BYO8fkoHNhkEYA70MDs8OaHp3+L5mwB8kToCESCeuu8RjSy/2l
         nMEjgLSIG4nFXIkcWGq9i2sUfHmO+CdvmKxjYXRDl/gIyqn+ijzeqzAVPtPHQtOwv4as
         uU2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tifmsMUF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JMOc/MEnTVKCat0VLPj2xS3iUVAitjHVpkkfxBO3e1c=;
        b=cmNsGXkCGnktt+tiAF6LnSZ/fbWjUfBSW6f/rJ2a7Z9Yqt/NExLQMIB7zi3IWtmbfj
         pJ5zqYZgpQbxxtEFMgb4jUrdJeaQ7+w1eFv5j/J5UJTZSTkPVD1NnbePylgxlzlqlJ1B
         ej2jAE2WQEuHvpbMaskqLMmKZTcQS7tmikrI71P4eH/1bmHnox9UYmhVXCA0VnfK1+J3
         7VkUqdx0ELm70rWOXy8id7HX5bMsBiTwudYfWMQd7cux0BbBvlqQd2DxsSY6gXH9oAwe
         przBGvwfvGX2ZFnwVU8De3WNBu+N+mAxxYrGos4FKRyoN8IQDCrT49QffZaTY7yr+RPt
         X6Fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JMOc/MEnTVKCat0VLPj2xS3iUVAitjHVpkkfxBO3e1c=;
        b=eoxbjEEzSwHxRPo8OUHhmYyo51NZF91sJe07jTghuAHB6o5VFnZSGLIUpoNutDeO0F
         HPYGzdv+bKaJ7m8DcKH/R4ccAwvNGiX7XfHXKdgzxCPaOUPAjQam19KQnjg5Y13f8nVX
         X8CO7UfpxRgR2ahwgIGkq+/Fe00eA2KdP3ocLHHALUDvCLKmu6EM9otliklsDK6oiAm0
         Dt5/XAuzp4o79ir9kz5kgWCBJk6VpM/Hqi4Dhll4t1M/IrjBAUiJtgtRzfUkwpYlue0t
         R7eWRCEM0PiGkycbD+FvCbQBw1gzOvliQwj4pgomSJEcvVpWek8UWgEwiIJ2hA5QgjvM
         ABrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JMOc/MEnTVKCat0VLPj2xS3iUVAitjHVpkkfxBO3e1c=;
        b=N47BvMiQpYYruui67Ju0u3hmDxE9S4ZPgtO2uOMg99GahdptpmaBWtE2FBI0Lbz2K7
         sGpLCMtdPmXv1FxBLpK2/19jTb+WqN9ltE2mG5nqG3aLbsmqCKRO12ZZxut6N7BY7OyV
         7ff6WObKCGZqDKwIxMgHfGooo97eEIBmVS0jAaeNIwp2YX1i/RGKgJ0ZhJpTrKobiklt
         yF9JfSFQjQ3+lup6oBwiWJpoSuLN0j5NaHyrioplU6y487QMdKOEOyUwtNcToZqRJVWn
         Cd0MwlR8t+1VfGuurzUyxNyqIxmImhzTptXg6BghJNifvhFc+SyzhlA5fy7W6P7cqpLh
         QMsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubhof2LDSq4i7NiqZz6hRWKMQY/E6/30MawCz29oyfZK16a+uSB
	rKuIPyLMV+LdFLV14tHtOp0=
X-Google-Smtp-Source: APiQypJraKo0WJxEAUvrcqvwY/r3IWWd9mkYLlNDri9DZw210UrgpkNDU0Mizja77Od8FGdWIIsmQA==
X-Received: by 2002:a17:902:bf41:: with SMTP id u1mr8551889pls.195.1588779353666;
        Wed, 06 May 2020 08:35:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7c89:: with SMTP id x131ls1816532pfc.5.gmail; Wed, 06
 May 2020 08:35:53 -0700 (PDT)
X-Received: by 2002:a62:81c6:: with SMTP id t189mr8618996pfd.174.1588779353276;
        Wed, 06 May 2020 08:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588779353; cv=none;
        d=google.com; s=arc-20160816;
        b=dEwNw7bE30XPkx6ed85XfIu+sh8/P626laZr7MWbr1gBzsC610FFoJ+GrE0RVnBmPL
         hJwVKs+NZ6Iw5qApx1NheN6rppLmXgK1/dlohOU0xWDAhh0xC7Ex2hMbRyr31OiYzbYC
         FNho9nejQW4W1j2KHExBPbs54csnjO3BA4b2+ngVCjDpiNODgu/xRULY+0X/jonP3wMS
         ntlgWRGK1+52eURJx2CZcmwdBCGNxfz8zkd4YviyyK8oV70r/EmRJ1x+06kk4XA16ZlI
         2pvg1uoH/9DPNIYbdSK4A+3Tkw6i/HwOkGwJ2FIao7JNu4ToQ5QZS1AQcg0Ax4qL75C0
         7EFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ckjD+FqBC50sSOZnIMh6YuZzBECHbpinchtFk/oKQF4=;
        b=XWJQvSRzXbX4eNJdI7dgH+h1Z0WEkpz0bowEjfdxzaBNzoiQvALbze2S6qTSQZubT/
         Z7m4xL4wthmaVBq4aA6V7bdVW1xPlsJxUsbppVeWIS1fylwQQAuutOzBKItFmX34J4F8
         vk8mUwilDVHNsWivEOUDwWBw5kAZQG+TkRkixSJs6lI9L4HJVz1iN04nWw4SOpGeeIJ3
         xpSGama5a1gHWTnXKkyQLuZPYBk9FtW6mAb4Wc02pPON+F+oP9t/3YGHbPXTE2QJYQ6Z
         stWSbVTNdi6hKlT3rIQ2UzRZGNOr4+OVH/UoczycMoc8ncrFXJePEVg3nSVa2C1Qw9h2
         Araw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tifmsMUF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id x3si623221pjt.1.2020.05.06.08.35.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 May 2020 08:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id m18so1683243otq.9
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 08:35:53 -0700 (PDT)
X-Received: by 2002:a05:6830:1e49:: with SMTP id e9mr6817601otj.184.1588779352509;
        Wed, 06 May 2020 08:35:52 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id t15sm672971oov.32.2020.05.06.08.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2020 08:35:51 -0700 (PDT)
Date: Wed, 6 May 2020 08:35:50 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Bryan Wu <bryan.wu@canonical.com>,
	"G.Shark Jeong" <gshark.jeong@gmail.com>,
	Dan Murphy <dmurphy@ti.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-leds@vger.kernel.org,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] leds: lm355x: avoid enum conversion warning
Message-ID: <20200506153550.GB1213645@ubuntu-s3-xlarge-x86>
References: <20200505141928.923428-1-arnd@arndb.de>
 <20200506024416.GB415100@ubuntu-s3-xlarge-x86>
 <CAK8P3a3wqiXAx2GuKJjY90qLGNnyBNTst6LW7n6tRDvzvBQVVQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a3wqiXAx2GuKJjY90qLGNnyBNTst6LW7n6tRDvzvBQVVQ@mail.gmail.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tifmsMUF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, May 06, 2020 at 04:19:45PM +0200, Arnd Bergmann wrote:
> On Wed, May 6, 2020 at 4:44 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, May 05, 2020 at 04:19:17PM +0200, Arnd Bergmann wrote:
> > > clang points out that doing arithmetic between diffent enums is usually
> >                                                  ^ different
> > > a mistake:
> > >
> > > drivers/leds/leds-lm355x.c:167:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
> > >                 reg_val = pdata->pin_tx2 | pdata->ntc_pin;
> > >                           ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
> > > drivers/leds/leds-lm355x.c:178:28: warning: bitwise operation between different enumeration types ('enum lm355x_tx2' and 'enum lm355x_ntc') [-Wenum-enum-conversion]
> > >                 reg_val = pdata->pin_tx2 | pdata->ntc_pin | pdata->pass_mode;
> > >                           ~~~~~~~~~~~~~~ ^ ~~~~~~~~~~~~~~
> > >
> > > In this driver, it is intentional, so add a cast to hide the false-positive
> >
> > Not sure that I would call this a false positive. The warning is correct
> > that there is a bitwise operation between different enumeration types
> > but we do not care since we are just using the enumerated type for its
> > integer value in lieu of a #define VAR value.
> 
> Right, I meant that the code works as intended and said "false positive"
> to avoid claiming the driver is broken when this was a deliberate
> design point.

Ack.

> We do want clang to warn about this though as you say, so I can
> rephrase it to explain that both the driver and the compiler work
> as intended but they clash in their views of how to do it ;-)

Yes, that would be good if we don't go a different direction based on
your commends below.

> > > -             reg_val = pdata->pass_mode;
> > > +             reg_val = (u32)pdata->pass_mode;
> >
> > Is this cast needed? I don't think there should be warning from going
> > from an enumerated type to unsigned int.
> 
> This cast is not needed for warnings, I added it for consistency because
> it seemed odd to cast only four of the five enums. I can remove if though
> if you think it's clearer without the cast.

I don't really have a strong opinion but I do think that not having the
cast makes the patch a little more specific/precise.

> There may also be a different solution in completely removing the
> lm355x_chip_init() function, as it was added at a time when we
> were converting the last board files into devicetree, and there has
> never been a board file defining lm355x_platform_data.
> 
> There is unfortunately no DT support either in it, so I assume we
> could just remove the driver completely, or change it to use a
> DT binding similar to
> Documentation/devicetree/bindings/leds/leds-lm36*.txt
> 
> LED maintainers, any opinions on this?
> 
>      Arnd

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200506153550.GB1213645%40ubuntu-s3-xlarge-x86.
