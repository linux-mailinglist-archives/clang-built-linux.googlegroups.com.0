Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRBGN4XSCAMGQEXTIXKHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D9F370F65
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 23:48:09 +0200 (CEST)
Received: by mail-lj1-x23a.google.com with SMTP id p10-20020a2e9aca0000b02900ce00c6dd3dsf1758227ljj.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 14:48:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619992089; cv=pass;
        d=google.com; s=arc-20160816;
        b=VcN5s7pyqFftyKwdThY7YP38Fs2WrbHc5SZV/viWrJVcjQdHMxblPh3BowJwYz95mu
         4xCsRO8f43B6CjoMAeIOaNYGl0O10CDs+Rs7q1Idl+8MpzsrYKLTAtGh7ZWGm027ham2
         5hxva5AnlCDRF/xbJbF+furPBPuYgANLpHiAHQ7CXw8nH00uqqsl50zWdjph7EhbyUKX
         zNsErVSBkHR/U8tZoVTfuU2gZuIGsj4FQz5xuH+zddHwQgc+iiqYqCt0Yf3uivGYq8Lv
         swgpENPjFjhk+1TY4bb/dptaOzNP5WPRmwWJG7WdmwTD/FEI9ngb6aZPyrsmRBWbd6+t
         PoyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=U2B7xb9V5oo/IALlqL8plHFjb5m/YNtTxrdqi9yFqNk=;
        b=pnIB1woiFC4AeHtvRtKwRnTw3630okq6J70bGH/WWigoSFrhCWisdbw0l0rZwfZA+u
         dheLfAjYUTt8pLliBdLnWOMorunMjzVbb8LVSkqH6owrTG9+cyybvQuvgjixm6bG+fvH
         yPX+33HBDDQMuZ0Y4MHPho4/8qG4Y9xsK8HEYKAgIO7O5VQCobhkY+XOv7+yiLu9EfMc
         zZ7O8Q1bhQeie8WnIobX9rrI0JLtDZfLz4Bf5zTCCqfSvg96uEIlaytecEptxuzq6gcn
         SOXPTHHI+4xz7ga0FKKVNSN/YvBlLA1Y04I+fXuM0n/kDXXXC7ZnpWZPg7Hk6uUps4NR
         tVtg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U2B7xb9V5oo/IALlqL8plHFjb5m/YNtTxrdqi9yFqNk=;
        b=o0Hh7kaL/8ilcL4YODTOoLYjtJ/sYsrRq5JKclCQBkgMwzHwUr2gkEkftB+N1LYZHy
         I5c2uw465FiBJDcvg3c3krO3bIZYjQso6vSwkcEHMq1c6kZol+W/Cgo+ubTDUAAgXXh+
         yHHLlT09/e+4ViHQdun3QfL85STcXA8rsgBdaK0c9AYNBK3lqWiRIvpUDchVpQsg2GKB
         hPZMlbWqaBSlDwIHJxHT2awqJSnBzSLjv8mZihopVVBbeFDhuyfrKsMv0dGfEaGIv7WB
         XcqAb0A+H9srIZDuWXGHU9N9+lch7uWgjW15Bv18WQb133uKSTAdaUPdOjICVakQS4Ue
         3Mwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U2B7xb9V5oo/IALlqL8plHFjb5m/YNtTxrdqi9yFqNk=;
        b=Yfo2Jwq3DFjgylzFasKCyk4sutSpqoGAYd+kvMi+HEQW9Ham54sX/X2nX037q3PN0S
         zZwtBMPFr9X0DJo82x54mZzu3WtCVRGumG46nFlbT+ki2rhmZswcT3qjhuFH0uSelsNI
         oO2dP64TuXQJtajjm2BRXmhbyiLAGaD4vZbNhWbm94K1UwkK9D/WSsvYf3q/JZ2KUMbU
         gf+Lpp/wZgn1rcbMR5ejlamhYMQcfhsFNqP3ZiVAV8RdRN50Lpe6Tq+FDIevEIAfiCDn
         ov4PE0IJuSfigSKrQL8/Fjv2wCIN3Tf61Z8z4B2YyiAq4aTtL8sc4jFtUBwwEn8rPrQy
         UsrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530oIQDZeRaP5JVbAOUpjH8Pq9MhQRqeIMjPQrvDF2HQO80JjaAs
	L4A4XTVxnnnJqyptZ1lSVN4=
X-Google-Smtp-Source: ABdhPJzLZ6VFHuzxtNPO9LRutu7EL2mfERWfL04vEHYmUdda6hvknR7iPdyryuZB4vN1w1yCezbg3g==
X-Received: by 2002:a05:6512:12d2:: with SMTP id p18mr10855893lfg.239.1619992089328;
        Sun, 02 May 2021 14:48:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bf0f:: with SMTP id c15ls2905241ljr.9.gmail; Sun, 02 May
 2021 14:48:08 -0700 (PDT)
X-Received: by 2002:a2e:9c3:: with SMTP id 186mr10008272ljj.308.1619992088312;
        Sun, 02 May 2021 14:48:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619992088; cv=none;
        d=google.com; s=arc-20160816;
        b=kWnT+l4Sv7qycROOtvzWlIlET98iSB8cwQxLJPgzWn6jrNgU1/rt+vLqMU0bnxBald
         mO5W5Nx0CZ4/dKBaM7aNWP8AzAhBVU3BPduMdQVVhcQi9exdcPmIW88BaE+XWpdvGisz
         06BMHDv975jIL2G83nmEi2GoFrc8aNEhC0r5wvcw/3IaE+J49jBQBDxyAusqegFORR6B
         jcbmpW4JXA3C5hSeVVzUbTxhqN9b0ijSmFNK/dS3VGmbyreK31rUGNcKrgXGUbtBn5Jj
         qbx4KGnnbRdxnd4WitlkidVuF4DSCcXkIRZeXvxXN5Dbq05VgV7YilGITBBZ2RR3uekv
         v7ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=R1fWxSmRaPTKOL8xnH8MzhkBpIX/oMOMoU4DA1R+hgs=;
        b=gKRscJ4zEXgodGZBy09niXMNJQkMAzbGNVklcn2BTHJePMV34jw55PxSt3FPxHgd9n
         bic3Moq9bJkqCGztDYJGfZDZsZafmpWQ79OAEmUzd7oRCzgPZpGy1wlmO/hT6hQnePN0
         SE/WA2zcW4MFJ0Z1wm5RD/397K9XjUrSm71AI85+vG36e15qer473s8IVpC6yb4FctyS
         FB6x2I8+Vse4vEBZILe9dyeBGj7YFmJxnnfagbAsvfv0MAbYFFGqjqMNeSOcWZegZBk+
         x6Gz2DvwpXsrpspvctQbDl65RyFYqQ7DOiAwoiu6Wu24IpiM2ekPxA+xZBg4Afj4q5aK
         9xYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [2001:4ca0:200:3:200:5efe:8d54:4505])
        by gmr-mx.google.com with ESMTPS id b12si785901ljo.3.2021.05.02.14.48.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 14:48:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) client-ip=2001:4ca0:200:3:200:5efe:8d54:4505;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4FYKTy0CH6z1n;
	Sun,  2 May 2021 23:48:05 +0200 (CEST)
Date: Mon, 3 May 2021 00:48:04 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Tom Stellard <tstellar@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210502214803.GA7951@localhost>
References: <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <20210502093123.GC12293@localhost>
 <CAHk-=wgdUMt_n84mq93LZKA6jOGqZpD+=KeVzA3YmvJ6=JPyhw@mail.gmail.com>
 <20210502164542.GA4522@localhost>
 <CAHk-=winSraiwc4gC5WFWSehFq+s7AqCJZoMqUuHLX0nYVG0nQ@mail.gmail.com>
 <20210502175510.GB4522@localhost>
 <CAHk-=whTjJwCt2E0_JM2dDq=+UybvJN7QK+6K6e80A9Zd8duYg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whTjJwCt2E0_JM2dDq=+UybvJN7QK+6K6e80A9Zd8duYg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates
 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
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

On Sun, May 02, 2021 at 10:59:10AM -0700, Linus Torvalds wrote:
> On Sun, May 2, 2021 at 10:55 AM Adrian Bunk <bunk@kernel.org> wrote:
> >
> > Are you happy about libclang.so being a shared library?
> 
> Honestly, considering how I don't have any other package that I care
> about than clang itself, and how this seems to be a *huge* performance
> problem, then no.
> 
> But you are still entirely avoiding the real issue: the Fedora rule
> that everything should be a shared library is simply bogus.

It is not a Fedora-specific rule, we have something similar in Debian.

And in general, static libraries in the C/C++ ecosystem often feel like 
a rarely used remnant from the last millenium (except for convenience
libraries during the build).

> Even if the llvm/clang maintainers decide that that is what they want,
> I know for a fact that that rule is completely the wrong thing in
> other situations where people did *not* want that.

libdivecomputer is now a submodule of subsurface.

If this is the only copy of libdivecomputer in a distribution,
then linking subsurface statically with it and not shipping it
as a separate library at all is fine for distributions.

The Fedora policy that was linked to also states that this is OK.

The important part for a distribution is to ship only one copy of the 
code and having to rebuild only the one package containing it when 
fixing a bug.

> Can you please stop dancing around that issue, and just admit that the
> whole "you should always use shared libraries" is simply WRONG.
> 
> Shared libraries really can have huge downsides, and the blind "shared
> libraries are good" standpoint is just wrong.

Good for distributions or good for performance?

These two are quite distinct here, and distribution rules care about 
what is good for distributions.

Library packages in ecosystems like Go or Rust are copies of the source 
code, and when an application package is built with these "libraries" 
(might even be using LTO) this is expected to be faster than using 
shared libraries.

But for distributions not using shared libraries can be a huge pain.

Compared to LTO compilation of all code used in an application, static 
linking gives the same pain to distributions with smaller benefits.

I agree that on the performance side you have a valid point regarding 
the disadvantages of shared libraries, but not using them is bad for 
distributions since it makes maintaining and supporting the software 
much harder and security support often impossible.

>           Linus

cu
Adrian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210502214803.GA7951%40localhost.
