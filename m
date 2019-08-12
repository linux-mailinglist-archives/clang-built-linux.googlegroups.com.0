Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK7EY7VAKGQE5OBWIMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4865E8AAFA
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 01:11:40 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id e18sf94604378qkl.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 16:11:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565651499; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/CIszW3vjxRhFpK81zFYyn5S/+H1SXOYWTn7P+Wms4pPzDxMgmAdBv5puxrWILo/+
         jBvX+JontrT9TdLWqu7rB8Q1tlm9P+EGKlSG/PPn2pluW1yjlfVw7Nr52gysAqmlCuQ2
         ePQtIcDvv4apKrT3I6GTzJUiZEDZWp6ss2sQxfXnwtMnm/StguH6LXYWu9V6omO8kZ3Q
         jaw41suV3kWrlzvuBub7s4F/TIRFHVsI00xAfk26yej1mOWfHyl5TG8HT791rXW3xYzC
         hYB2VYodg0s7TAp+M4U5s8iK53uJnJy6JSFjEEW6S7vu1lUoS3YhMeFvSVLHPwY19Wiq
         1lQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JBILsdYtsbwi1m8ZnxpxvuSg1yN/Z9taiedy80af6J0=;
        b=dfKdzqYGpinmZLWAzw8o20YStEckLpAaFP8WvxjJPze1G1WLhvkDFpDlHi19PzCxRW
         A7WHiynrASPly4aEUWskB/3HqxN+oTzvQSr1at1pF5+kVdS85PNI98P4BC0umbkei0jk
         RT8eYc3edhwujQVwcuuxOLzeCnKUmpfUApnyleN+Ya9gfF36Dj7mgMOdAw6o5Prkhlo8
         JFp3K90AGDH3gjpDyJGRC2EXxljjKOrJWo+GGBB5Vhc4Ied2UJ8OOReDWeKQBcJiiRYW
         kOcIfr/tcdtoxViEgrQh3KhW2trptabnN4NT7yl71O2A8Obn41GYR8KW40ot/9HspwCg
         1yRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vTrR1jRT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JBILsdYtsbwi1m8ZnxpxvuSg1yN/Z9taiedy80af6J0=;
        b=ncu1/46MHOp1iygoSOHR8vmbZLKQf2qVTB2jhJik83ySrNJtRUAhhxzCEu7GZBvh8i
         LqN5cdFUgO3GPa7xY7IzkI0PJ9b/ganrHZpYz7494RkBJnOJsott66uoxx7AW11sz/Sv
         KUnU5CyxYo9Bg7DxXDNNBQPuDS7rT5aSy2WDPRJnVaWq670kfazLLvF9pPMp87AeGVwg
         RUK4J0OrdIKbdHD+7Rc20wONoz2ABrst7DwQUtCSdjpnvg1vBTHwCMr1e0ndNzjUTd7H
         oCJwz8HJ4PpM2UncZpA27/i2PSbuBxhWts6IJMmkGxFVINtuT6mN4s4Wr3Z50fXwmFgh
         ao2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JBILsdYtsbwi1m8ZnxpxvuSg1yN/Z9taiedy80af6J0=;
        b=WnXDeXvoXqCjMZYAgXY5dJ2HM/Q1NzH+yALHZY+btr8UgMN5clmEnEzod2MsV/48B9
         Ws7C4U28ROFBB96aYWnzDIOR/Yvw/Dk3l+kNh2qZgXpaGzB3SEXUsI/Hqe7N3lLIsCBd
         TRYnngvwb3T+94CwrqQ1XV9EAdLEXGgnDR1mg+Y9r4pR7887LzcKVMhlGetViJkuPy1J
         Iu2m3qvT+NDZM4++kPC0Z1sLeO701YZ17P17CgaEVL5bKU0bcMCSXFh3Soa8Urbtgey0
         xZTxXvD8OIB492/3wHyl0Gu2aYrn5yKwkCFWbKkhJ/qFdtVPLKmfIOiaJqB9UMOkFOgL
         eqvA==
X-Gm-Message-State: APjAAAWEvI1Yv90Dz5MP6BF84C/eCuBXlpPIBm5m7tMQA9KHFB2O00+p
	ISYDkX26yTUBi53tPcwu6cw=
X-Google-Smtp-Source: APXvYqz/6v5btSpRprRdPhs421kh3hi68nBddLVfARLO4YaHQZQ4DtZxMGPlUEJcp6tFiivPAhAPcA==
X-Received: by 2002:a05:620a:487:: with SMTP id 7mr15220194qkr.228.1565651499386;
        Mon, 12 Aug 2019 16:11:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:65d3:: with SMTP id t19ls1838880qto.9.gmail; Mon, 12 Aug
 2019 16:11:39 -0700 (PDT)
X-Received: by 2002:ac8:669a:: with SMTP id d26mr18754494qtp.364.1565651499155;
        Mon, 12 Aug 2019 16:11:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565651499; cv=none;
        d=google.com; s=arc-20160816;
        b=i0AT3APgtxG1ICBdO20rNhYD9sprAvUXEgllx8XuFutk9RPIaRiegNO8sfIYwCU7PD
         z327VT7/dB07+TT28ILAr/l907w9zDTNLhueLVemi7uV62xsjo92LEynoQdvkzotzxTi
         n7W/1j5Ti8Hrg2ypjCd2OHu91D63FouNucxw9kOtHHT4Vgc6Mtx/UkYgKJnu8J+6mb1v
         CeAMMTBbjSFqx8tu2xL+e4Pqye87G2b6XYZnNzmifwrENKgCOyHnE4AkkZAJD4ZkiQr9
         Q28wQLte/nx33BYE+ZeRAaHqn/fer9XvNxjf34McVHP/eWQTcxc0T7xdYNKIKkg3iSto
         q3wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Her0OYFs2zX3q5iZN56afRNSN+fnKJ3NNrx8jJX8o8k=;
        b=xzQ75MjYI+XUJS8AkTZJZJSgkGpf0QK8/o+i+94+58JH0Z7L8FvLw7BedFCewfT66X
         4CNlV/J2kgI5DwVVWEXW05hBv9GXMP5jP02mPkn6a1UwI8uCzv4BugIZSVVxer/8tnGQ
         ljGQKtimVtEXFzlaQpsE0w5sdVuF+M94YEDjI3gnY9WuiWPolhxf6uvE2lQ75mGi90Hk
         NdwjPCMJmjzZDuLx1cOSX1xqyfMZSj3xvRT/GnFKVeKQnYC8OJZ352dy0dglAh9I+Gax
         C4x0kBwKnRiN2CcZmx4CRIjnJ28SnY/1BjH++RGpvgJ9xR3yBPuqtAFTGJgvCDorNyx2
         eLYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vTrR1jRT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id v19si3876095qth.1.2019.08.12.16.11.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 16:11:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id g2so50470737pfq.0
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 16:11:39 -0700 (PDT)
X-Received: by 2002:a63:f94c:: with SMTP id q12mr31673758pgk.10.1565651497838;
 Mon, 12 Aug 2019 16:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190812214711.83710-1-nhuck@google.com> <20190812221416.139678-1-nhuck@google.com>
 <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
In-Reply-To: <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 12 Aug 2019 16:11:26 -0700
Message-ID: <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: Change fallthrough comments to attributes
To: Joe Perches <joe@perches.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada <yamada.masahiro@socionext.com>, 
	Michal Marek <michal.lkml@markovi.net>, Nathan Chancellor <natechancellor@gmail.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vTrR1jRT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Aug 12, 2019 at 3:40 PM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2019-08-12 at 15:14 -0700, Nathan Huckleberry wrote:
> > Clang does not support the use of comments to label
> > intentional fallthrough. This patch replaces some uses
> > of comments to attributesto cut down a significant number
> > of warnings on clang (from ~50000 to ~200). Only comments
> > in commonly used header files have been replaced.
> >
> > Since there is still quite a bit of noise, this
> > patch moves -Wimplicit-fallthrough to
> > Makefile.extrawarn if you are compiling with
> > clang.
>
> Unmodified clang does not emit this warning without a patch.

Correct, Nathan is currently implementing support for attribute
fallthrough in Clang in:
https://reviews.llvm.org/D64838

I asked him in person to evaluate how many warnings we'd see in an
arm64 defconfig with his patch applied.  There were on the order of
50k warnings, mostly from these headers.  I asked him to send these
patches, then land support in the compiler, that way should our CI
catch fire overnight, we can carry out of tree fixes until they land.
With the changes here to Makefile.extrawarn, we should not need to
carry any out of tree patches.

>
> > diff --git a/Makefile b/Makefile
> []
> > @@ -846,7 +846,11 @@ NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
> >  KBUILD_CFLAGS += -Wdeclaration-after-statement
> >
> >  # Warn about unmarked fall-throughs in switch statement.
> > +# If the compiler is clang, this warning is only enabled if W=1 in
> > +# Makefile.extrawarn
> > +ifndef CONFIG_CC_IS_CLANG
> >  KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough,)
> > +endif
>
> It'd be better to remove CONFIG_CC_IS_CLANG everywhere
> eventually as it adds complexity and makes .config files
> not portable to multiple systems.
>
> > diff --git a/include/linux/compiler_attributes.h b/include/linux/compiler_attributes.h
> []
> > @@ -253,4 +253,8 @@
> >   */
> >  #define __weak                          __attribute__((__weak__))
> >
> > +#if __has_attribute(fallthrough)
> > +#define __fallthrough                   __attribute__((fallthrough))
>
> This should be __attribute__((__fallthrough__))

Agreed.  I think the GCC documentation on attributes had a point about
why the __ prefix/suffix was important, which is why we went with that
in Miguel's original patchset.

>
> And there is still no agreement about whether this should
> be #define fallthrough or #define __fallthrough
>
> https://lore.kernel.org/patchwork/patch/1108577/
>
> > diff --git a/include/linux/jhash.h b/include/linux/jhash.h
> []
> > @@ -86,19 +86,43 @@ static inline u32 jhash(const void *key, u32 length, u32 initval)
> []
> > +     case 12:
> > +             c += (u32)k[11]<<24;
> > +             __fallthrough;
>
> You might consider trying out the scripted conversion tool
> attached to this email:
>
> https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/

I guess the thing I'm curious about is why /* fall through */ is being
used vs __attribute__((__fallthrough__))?  Surely there's some
discussion someone can point me to?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnpXqoQDmHVRCh0qX%3DYh-8UpEWJ0C3S%3Dsyn1KN8rB3OGQ%40mail.gmail.com.
