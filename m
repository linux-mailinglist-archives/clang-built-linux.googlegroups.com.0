Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBO5TZHVAKGQEEXOSF7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2408AFF5
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 08:33:31 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id d65sf215393wmd.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 23:33:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565678011; cv=pass;
        d=google.com; s=arc-20160816;
        b=yLd0RxMzaJ+gVvF/QBkC7kqXNQpkYIwEZA4fIzqzHQnLJlEXuxD17ua40xroP6dJj2
         AtFUYPwLTnP+2wTP/yhb9LKNx3Rdm4faozDX1KnjMiLZfztA++C4CgYE0NsrBP/SWGF2
         UcLHtCuyiO8cP8cbn/XFdTogzFm2BguJ5qRGjDqK6kmdMVGxeOfCEJ+EELtExfQaYzK0
         C7zW4weI8Rl3kj5BwT4eaAs5mdPrnB0MNdPAnJlDg/9Zm04UZDzsjVRJ30atyb7SffcV
         h6cQ69Z2693VJlPSTleok70j2IkKuYQ9ZpAOqQMiSHyBwouJBTQLO3f4YSgh4LtVCuC8
         znhQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=Mq3zpwDdofxHACHhJHsiHTupYLXLlWaScURJzN0+qWk=;
        b=UESuPAI9tkPHQiD46X5bGJySwt0Pb78VpyqbQowi0X3601OwH2KLj5cgxhHh/LEQgr
         acVBKWr09Cna+H+fRxlj5Tm/A6pbpht7WHqpzHcWn8K67NOKFMV2Ge6JDXWKDrq6N8Of
         anwzAegt7Kg0S7Cxx8AXtYd9SG1X7rlWjIpadm5VHoipenDlBnYCaWOObRJ3jENEw9Kt
         j8+iQL0sz0AxQwHvN+64ifHgOy5jjbhixKXSRqHUD82OyQ8JvmsGz83jgFsV+vndqJTn
         v8471GXjMICnjCk1VwhZ0ZVc4wOq2uv8DGSxb4GfgbZWHo1lHExapZ8tsLebegYjmq5J
         X7Zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qpq6Ugps;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mq3zpwDdofxHACHhJHsiHTupYLXLlWaScURJzN0+qWk=;
        b=Hzex/5bSvXEXZMQ9gVfTslaoUZG7PkJdJg98tbuAlz9JKp3ist9b23YAdNj8LKgwar
         oHOEb1/Fh2p5/2BSGjVgkuyhlqhAHOomk1SKbs3pNgMH08AWFVDVjL2wuoa61apK0Gg+
         BumSzekromg3q7HRG088aoMDn1dCz1uaC6SSRkAqyjGTVI43C29lXsfZr+6pVVscPa79
         WRQxrzi6UdMZRJ3phoXZ59RpSqiFTCkg3COZHBLy4w1Cazq+5qrPaYhAo1brcRSABDLY
         2cpWyuua+ybP18jtyViBApcLMfEjojEcpEKJ2iC7asFHPU+HWO6bQKCI1oNhhhoeT6tY
         N9wA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Mq3zpwDdofxHACHhJHsiHTupYLXLlWaScURJzN0+qWk=;
        b=Gp1kis3Pe3KHpToeYPXjeeuNaYCxZDIiKVgb0f4GSvOQVTdg0dtI97Ze203oPbTEfC
         iwgj7mNhkrtIqW2DGSyp8Ux7DL0OKvllPeuCqIL3on7qp4JcxMKyfcBi5wdYV8WKK8tZ
         8dubcL6WvWCgh2uICRLj7MYhSknlG5BAUnZHqFryeGZKQ1lk7kCwfizDcY0r1DdmvOIh
         Wn8ei4Y9odQSz59mfSL45chySlrWuV27JxyqsA0NdEHBX0njdOWshq5WhF6ONu/1MGJa
         /RyNPu1A43CYKuml1y/yOI1xUQ31+vn/9T1T3QuhMdHpwjGD+xUlCf7y0srkGC2xVNTh
         Q9AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Mq3zpwDdofxHACHhJHsiHTupYLXLlWaScURJzN0+qWk=;
        b=Dj9ekeUQxkPbxPTkvKnwnRwJ/6ipQxJyRTEvd2BATsvQ7MkYupjGeZ8o1JRmOAnxw3
         31gH3L4aY7Sg047tgtlrC7f97a29Bra3JWLcn6ie1XhFivcW6zzTKHZF1sYLH5Djuk/z
         1BLrUTGmcxv1YPxGWPyZKaxLOGM+q8wghyjY3+CqRSRap9DW7ulCVGuz+hClJ4qWl/Zi
         1kUvd4+u45cEXe1sOUQk0I7PcAI1TrhcA1kSbixxTrxQarxEKPWcPLqot4GtpFD29vIQ
         LjNN69L5kXKLa69aceDcEBH06Y9g9Ol5jLGCv6W9USRHzp+ZKlS3w+KJhM6Ym2lW1xhL
         a7ug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXn6TxQ0MymRR667jXIIbPOankUeZAThWeadcE35C6BenccJRjT
	jXzjM7CDFGl420cEZCwAfsw=
X-Google-Smtp-Source: APXvYqy/AbUHJBSc/aShcaMzQuCZw5eda9UWUDez0AuYBT+yPxoaoMmsQIB+cJGSzXCHmskw9vTibw==
X-Received: by 2002:a05:6000:128d:: with SMTP id f13mr9439142wrx.241.1565678011101;
        Mon, 12 Aug 2019 23:33:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ec43:: with SMTP id w3ls4084412wrn.14.gmail; Mon, 12 Aug
 2019 23:33:30 -0700 (PDT)
X-Received: by 2002:a05:6000:128d:: with SMTP id f13mr9439109wrx.241.1565678010702;
        Mon, 12 Aug 2019 23:33:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565678010; cv=none;
        d=google.com; s=arc-20160816;
        b=0MRQYeeQT3ZZ83VigTC9OgvgEnmVWKK0wqwOKVJtELRAj2poOx1IM219nudIjKO5Il
         CCXvzQxuK9KFt1S7ERoh96e8v3e0vTKUmZ6AKNWASO1PhAh5NnOA+MMvQrw/KtamaRHs
         ykv1hORns1+Kc5LyZ0OcCE3COpV9P6gjAmu7f3R1/yglarMlnfpJGfkfRWJ8CFubbsIB
         SZFqJY7Bcy4WjhCqGzq0Og941sSBu3GBclQXkjZ8CXxRqWxEOrzZcKqEJcDosqUdn8Ld
         TsfUrd+7y8Bjbjk6vTmQcs3Lel0xVvm1s4pGLaIRzjOqexpn0IMFm8WzisFh37aWb9TH
         iVtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VVsvYDt3mj7dX8a/EvxPE6boAbpFyIkBqrJQ4zdNVaA=;
        b=srn21p3Rkf6NcQDmPKZ9cmMda6a0FRqXF5cr8bENiIIyGTIGu5+/ySdYL5/vDYmJf+
         CjRSfUMggsy/ajMOU8ZzRP4bk+xYJLTzLIkC0zsYGXHEu9xLVlM4b3sKrzrJ3b9VLhLv
         9xjuSjLhvmswUSP28DFVJHjN7GXQoZxWAxp/fYW1il/4Jvxb5mJCGkiKXGO6BE9Sz6bu
         YCuSpz9V/sJXVtK1E25z6RBdF9cPXkIZ1kb19j0j71seZxU1VEYb3KGRYZUeAXwLADxU
         pvLGSAL91fLXkwsBmosDItqBV63jdqKL4cuG7rFcc+cdomgnNZUEOsRSz4rOgpzYDJpC
         6TbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qpq6Ugps;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id p67si16386wme.2.2019.08.12.23.33.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 23:33:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id q12so16386368wrj.12
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 23:33:30 -0700 (PDT)
X-Received: by 2002:adf:f18c:: with SMTP id h12mr17703846wro.47.1565678010135;
        Mon, 12 Aug 2019 23:33:30 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id o20sm269315559wrh.8.2019.08.12.23.33.28
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 23:33:29 -0700 (PDT)
Date: Mon, 12 Aug 2019 23:33:27 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Joe Perches <joe@perches.com>, Nathan Huckleberry <nhuck@google.com>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	"Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH v2] kbuild: Change fallthrough comments to attributes
Message-ID: <20190813063327.GA46858@archlinux-threadripper>
References: <20190812214711.83710-1-nhuck@google.com>
 <20190812221416.139678-1-nhuck@google.com>
 <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
 <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Qpq6Ugps;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 12, 2019 at 04:11:26PM -0700, Nick Desaulniers wrote:
> Correct, Nathan is currently implementing support for attribute
> fallthrough in Clang in:
> https://reviews.llvm.org/D64838
> 
> I asked him in person to evaluate how many warnings we'd see in an
> arm64 defconfig with his patch applied.  There were on the order of
> 50k warnings, mostly from these headers.  I asked him to send these
> patches, then land support in the compiler, that way should our CI
> catch fire overnight, we can carry out of tree fixes until they land.
> With the changes here to Makefile.extrawarn, we should not need to
> carry any out of tree patches.

I think that if we are modifying this callsite to be favorable to clang,
we should consider a straight revert of commit bfd77145f35c ("Makefile:
Convert -Wimplicit-fallthrough=3 to just -Wimplicit-fallthrough for
clang"). It would save us a change in scripts/Makefile.extrawarn and
tying testing of this warning to W=1 will make the build noisy from
all of the other warnings that we don't care about plus we will need to
revert that change once we have finished the conversion process anyways.
I think it is cleaner to just pass KCFLAGS=-Wimplicit-fallthrough to
make when testing so that just that additional warning appears but
that is obviously subjective.

> > You might consider trying out the scripted conversion tool
> > attached to this email:
> >
> > https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/

I gave the script a go earlier today and it does a reasonable job at
convering the comments to the fallthrough keyword. Here is a list of
the warnings I still see in an x86 allyesconfig build with D64838 on
next-20190812:

https://gist.github.com/ffbd71b48ba197837e1bdd9bb863b85f

I have gone through about 20-30 of them and while there are a few missed
conversion spots (which is obviously fine for a treewide conversion),
the majority of them come from a disagreement between GCC and Clang on
emitting a warning when falling through to a case statement that is
either the last one and empty or simply breaks..

Example: https://godbolt.org/z/xgkvIh

I have more information on our issue tracker if anyone else wants to
take a look: https://github.com/ClangBuiltLinux/linux/issues/636

I personally think that GCC is right and Clang should adapt but I don't
know enough about the Clang codebase to know how feasible this is. I
just know there will be even more churn than necessary if we have to
annotate all of those places, taking the conversion process from maybe a
release cycle to several.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813063327.GA46858%40archlinux-threadripper.
