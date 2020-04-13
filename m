Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJXX2L2AKGQEO5NMBQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1327E1A6C65
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 21:21:12 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id 8sf4450027uak.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Apr 2020 12:21:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586805671; cv=pass;
        d=google.com; s=arc-20160816;
        b=THL7j3So4C7VaoAucco6MjOnic2jx6kbbWLtYXsTMiEIJcuexiZ4y2YTcbHJzIJxJH
         sWb/4rXrBuVLMdz0ZZBTP/dMHTfR5sPYyFpjCj6Zf8fBQc8xZ1u9dC9RxdSOFWP0wZQ0
         DUmCouPvfqTXq/RVZO0V9s/cKzDA2Wv0YNPTCkf1D+wPbrBI7SWMzdhuQQHuwtH3Kuyh
         c5V1yCaj4smG0l0e4JKugRnm6qm998rYFpA20f7t/U+LXO5nNA6QAzL2WGJAP/bw4o0Y
         7wG+FmNnxGASXTdwv89LGkVpN0KZF7w3VahyybytFlZGL/SMBo/W5caIFEoEPAjnk6vb
         8qCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=+4uLogD3bc9ZLHB58sJiYgLv9cu4H/nvOdiEdSgHIgM=;
        b=T6pNtz6BW1BVN9p2UAdpPSz3KFTzCqURl3VVxywi8OFhODo3ap8vNRScbZCAWNoPnP
         RUFk75FKaPEa1uK2Tu0AbbCdxQZa5P9HI7PSNn2HP93YLgOVDBm89h/L/WXiG7C+uD6H
         JcwRkvNKHJEOJCRKSZ2N9g30tqbqkBZ528iwkDzQbzg96/m3XoPOiafVK5rztCw15hqp
         OJJJIiKFdnv+ne46e2gQkKETu7d08IztpDv25Lz0W84wv+AF1Kxd9SJ5qv3a1MPwwiZN
         To+bETsEV5M1FwLiTbeROtQeVinJtthki25SvQQcl2eT7CQ2h+3je58pVjeWzrvmJxzE
         1m3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U+GilTzg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+4uLogD3bc9ZLHB58sJiYgLv9cu4H/nvOdiEdSgHIgM=;
        b=bpAkaTiLKxvNsP6Ueg+0/k1JCGhYNLCkCHXz+7BqQL4yaudxngChMRhxt2ceKLyLZP
         1qMW9thUBujUB6+nDVOBKimS00zxLXWlHZWfKFJZUAmS8tEUF8e0nOVq1cn2/DkWCHAr
         60dPp7tCPPTSr2WfMOMeiwaBVpi+WQKpZpinRk1yPmC2bCuRO7DzGloy69mRTaZtiSlp
         sRbTN9UGb0YYjjmoTWr/nKQPvYxY3rqOB8DSXZoJx3okW2kEI0+yweAFdKh/P7v+RzWd
         r8TfQe8slV2ybgj7sFYWuvwjwQHYJK9iWgBu/qFm8+ksC1KfO9Kt2XSgNKAFZMlF3Nn1
         KcDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+4uLogD3bc9ZLHB58sJiYgLv9cu4H/nvOdiEdSgHIgM=;
        b=bUnNMTvu9AHiN/pVQ0Y8yOfs4d1kgiPTfL7KQT+cNfP6EoImn7uhn/ICz0MvgKNxkK
         vVS1kn52J1JNLoJx7+s//xWUmpCqt6ogpi5bzk941wkytd5gATUZrIeJCCFIHAilEmSj
         lNDMN4QQc9Ru/ohVNtcgAK/eM0ibEnNHW7Mh5Low6mZyHeBC1N/bvunqwoI0n7X13o08
         JjQ6Fz72yX+GcrTiTkwBOh+qaiRynpYd1CDlv4LIOC05mjtPzQDP/AfpYHzvJ0YaRAq9
         yrIDjg5afK9YYXOLpQjsLe9o2AfeDHEMaMrBbPFtHq28huwoHAEdc3+IGNcu4+83XBW3
         OC5Q==
X-Gm-Message-State: AGi0PuatSRxTw9isu3Jv3P39yEy73GYhmCiX/Bdxgtb/38yNm0E8YokT
	BuYGnQtEOcq6Xy1Pxu7yDIU=
X-Google-Smtp-Source: APiQypL6DGgeoFlOCtP6dxIYA0NHiKBmYx0/MoTsp7AbSH5PuKs7ForojLY0YXFzDv9EfqoDsAlZww==
X-Received: by 2002:ab0:375a:: with SMTP id i26mr552772uat.120.1586805670838;
        Mon, 13 Apr 2020 12:21:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:114b:: with SMTP id j11ls94851vsg.6.gmail; Mon, 13
 Apr 2020 12:21:10 -0700 (PDT)
X-Received: by 2002:a67:28c6:: with SMTP id o189mr12655187vso.158.1586805670428;
        Mon, 13 Apr 2020 12:21:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586805670; cv=none;
        d=google.com; s=arc-20160816;
        b=Bj4PEjZ/OBVc4EqNePXuTN+AmE/ycTz8CBlJy50P0DZkx9LSzO9SFfHPuUI207+gwU
         sF5b8aI+CmAcbpw7BR2AxDJtIRmtBbDuQ9yo0cgQf9cIV9PFJpdlKh+ACvJhkH41ZQsd
         rFi+sw4PYpXy7LZPugTpG2MJ4NvWCgzDrIdNHlK+BeKJXHhDESmOgBi0waLLtcgPbLCt
         TqaSD86p2TU4oohUuW3aZb+mN0VmUu3VlaoLljAdKCjgypeHgU4IMwocWe3lGBiAanjK
         2VjFNz8fQe7G13mEll4fdJt+gBV+x/Q0Ln65ypYQvgV2DdiWhcKwVo81TvYE+B2OAqOd
         5Q+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E3v3lMYX71OYS7ExZ5JtALb3DwWrKTziHCm5gwOcJBM=;
        b=U0wTmpI+/hnMc8OdhHv6/LcRTi/2Nl9BCE53b3j6AUWSX7RjWaLc3D1h6SRt54wT6s
         ptnVIMkWjnt+FZyGmZBTSM/rHBpAuelADmmr58PSZM1C0ZkSH/dReTAOMgu5J1eoLKWY
         1Z9HjCOcaknJRgQqdHLcy7DfAdxtbxwD5NDRto7tu9A5Fvdiap4acvSY856ivYduDHvY
         S6qJ710lN0PiUfDN6AsPdhkPKIXofiiHrb48H4k/fc3J3RbWCHFKSU5gIKRfQ0vVmCCm
         cL2KMNeoi8bWeiWfBUd7IJ/1qAw4BSMd8Jh8qf65t3wlyHPk/3a/HuyWKtebGoHZ9ESP
         YGtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=U+GilTzg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id y11si11261vkc.3.2020.04.13.12.21.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Apr 2020 12:21:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id y25so2671564pfn.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Apr 2020 12:21:10 -0700 (PDT)
X-Received: by 2002:aa7:919a:: with SMTP id x26mr19063745pfa.39.1586805669240;
 Mon, 13 Apr 2020 12:21:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com> <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
In-Reply-To: <CAK8P3a3uj7AHbAo4sNzr6KQx5Fk6v99k4ZixCgKo1tUuGoat9Q@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Apr 2020 12:20:57 -0700
Message-ID: <CAKwvOdnpW0VSRdD6958xyWh-tDbuVTti265aqOpvfhvh6iQEXQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
To: Arnd Bergmann <arnd@arndb.de>
Cc: Jian Cai <caij2003@gmail.com>, Manoj Gupta <manojgupta@google.com>, 
	Peter Smith <Peter.Smith@arm.com>, Stefan Agner <stefan@agner.ch>, 
	Sami Tolvanen <samitolvanen@google.com>, Ilie Halip <ilie.halip@gmail.com>, 
	Jian Cai <jiancai@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, Doug Anderson <armlinux@m.disordat.com>, 
	Benjamin Gaignard <benjamin.gaignard@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, "Steven Rostedt (VMware)" <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Tejun Heo <tj@kernel.org>, 
	"Joel Fernandes (Google)" <joel@joelfernandes.org>, Patrick Bellasi <patrick.bellasi@arm.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, Dan Williams <dan.j.williams@intel.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, David Howells <dhowells@redhat.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=U+GilTzg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
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

On Fri, Apr 10, 2020 at 2:56 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Fri, Apr 10, 2020 at 1:28 AM Jian Cai <caij2003@gmail.com> wrote:
> >
> > iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
> > Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
> > kernel.
> >
> > Signed-off-by: Jian Cai <caij2003@gmail.com>
>
> It clearly makes sense to limit the Kconfig option to compilers that
> can actually build it.
> A few questions though:
>
> - Given that Armada XP with its PJ4B was still marketed until fairly
> recently[1],
>   wouldn't it make sense to still add support for it? Is it a lot of work?

Sorry, can you help me verify from that link that PJ4B uses XSCALE?  I
didn't see references to either in the link provided.  Also, given the
history of XSCALE as noted by Russell, I'm surprised to see Marvell in
the mix.

>
> - Why does the linker have to understand it, rather than just the assembler?

It doesn't, just the assembler is the problem.

>
> [1] http://web.archive.org/web/20191015165247/https://www.marvell.com/embedded-processors/armada/index.jsp



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnpW0VSRdD6958xyWh-tDbuVTti265aqOpvfhvh6iQEXQ%40mail.gmail.com.
