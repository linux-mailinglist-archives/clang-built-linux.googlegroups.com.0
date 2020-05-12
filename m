Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ7P5P2QKGQEJQ66PVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id 826611CFE2F
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 21:23:48 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id p17sf14643676qkp.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 12:23:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589311427; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wq8HSP2Ah/yMbG03+/eh/a1USB9StkhVMwFMZDX3W5kQ83Vm3im7wZCK+Cc83uUv3z
         MIBH6vXlfBWxibrhmgVTen1nUpry7eYkU4mXNIXcJjce1qTWJ1LhrbZPe3PBnnV4pncT
         ueQyryFlSy6hivJ9VovssGwTjo0daHk/Kvq6UZ7nx8xLbAu6SDh9HgbJzwuk9Mlo8zgx
         skhkNWnxqqnNZdbSSArU6pyHS9lzIxiQ/zB+Kl/6/wE23SfVhQxUz0DXb/3bPqGgmlcG
         NIvmaM0YBDFmC5QoRE4Y8U7nHhT9yV1KfKtGaFrIH0SOKG4uxxlDats1o1xU7FYPUdth
         krkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=93pDxayWtWwDsyJetBkJq8QFeidS+HBtNpg1YaxwIOQ=;
        b=uw3FQXpYGmWRxD1i3YqwwuL5kYV6UlD0zRuWaAOHgTbGFjrJGXUoX2hPMvjGHbUhrs
         mldV8r3IV3ATFHwTwoBAsGSdPintWU4IMJKs05OBsSPRhiX7p6IlSyZh5vZWalBMlAE3
         jVZsv8UwPPn8VMdAMqPrGR21LsF7ExNvzt1sm98oLF5HlnJ5SgTPQkDTB1VwQal8+fM/
         PsgjIVaSgWdOfVh881MkcKVEeGvImNixdcNs86IR2Pmfa3a2zQjikyGwQcE0uadvUsiq
         Rhtz39N7MHLBzYChVvrUr0UCmdLcJAdE1qT8UfTXQCEOBAiF35UUBBUK+N0gb+VkCJw2
         YBUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uGqh2RXU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93pDxayWtWwDsyJetBkJq8QFeidS+HBtNpg1YaxwIOQ=;
        b=YMvyZTMquuqxHGLTeiCjAbMS1EazvzZXBCUJbeS6NyW0cwU19JTX2A4hZkmF51Hn/h
         G6BgyEIfjHLzuBwU9fp8sfkl6PN2pZsojBrDY5kUlJt5xz7foUQzlv9bP8p4SOL99xpH
         Q9wH7yj5sW3Ug8ruxf3qh3nyNqU7p6BphZOHjhUs7HrJZHeuspHHnLYF3mX271me7y/d
         8wZgbanGx4RCXIjPzQ/YSQNkSGiSMNZJ2c4JowcAkn6EsiYlwxV8la4dPkfwB99iIqh9
         +ZgcFGlr7GTm5XpKlF4xHXJ4Wb4BXnNLsUqoQbVWwCYR3JzttktCj5aa4GOMNlaBt4Vp
         RZ8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=93pDxayWtWwDsyJetBkJq8QFeidS+HBtNpg1YaxwIOQ=;
        b=Bz/HJxC9f5lgia+xvSCMXjZL9Gia5zHIG8KxL0s1AWwHxt01cUZenYm3S3wO018HnV
         4dlOgyv2Wkq+C9VodvoCLRPKbaDiXv1vNcS4v9tCkxZQbAoOyZJCcz+c15csJLzGpyLe
         tUw2YV/3FsCf3KpZgVnl3rYBWnIz/CChKFKuUb/RReNWKpxb6q2EiyPJt7yBn17C2IQp
         99jdrT47YwXDxhyEK29ps2/GPIkm8iiHNaYkG+FFOlcstsVrGGV3ARQ9tP3+w8rVtLTg
         ReGLwNPjWhtp1c735Vi5Jo8Qc7KM8CcxJZH6TvsAyfT5+kaC4kg6bN0DeqCB0+0tYz+h
         ZNcA==
X-Gm-Message-State: AGi0PuaoM0GN9MZRkQwzUbXSQ06e4OZgPz93KxWoOnLGu1NdXri8xpa2
	qzSG3+RUpsZ2h8qi391pNMM=
X-Google-Smtp-Source: APiQypJmslvbVTxqU5+a63FR95dYkIrY41yVzyIgkWv8Uz/FsS1Waa1TUMcdJEe9FwOhleN+mbN3Cw==
X-Received: by 2002:aed:3c61:: with SMTP id u30mr12820252qte.209.1589311427550;
        Tue, 12 May 2020 12:23:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4b14:: with SMTP id r20ls9167qvw.1.gmail; Tue, 12 May
 2020 12:23:47 -0700 (PDT)
X-Received: by 2002:ad4:56ac:: with SMTP id bd12mr1208093qvb.39.1589311427182;
        Tue, 12 May 2020 12:23:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589311427; cv=none;
        d=google.com; s=arc-20160816;
        b=Oarfjy7bc4p4s3lSMGkW1sAnzbQ+pa2leJk7PbmTA9lv2oXBwyM6NN6aU1PKvw++X8
         rE6zk3fdvesukqKMUNfByAu1X1TWcyUo0WIYOd2kUrsGKAU5lgndYzo1D65RKPmMbRPM
         4lvqv179sDHq12bKJAXgEQLDjbWFxqr3P5mDTjXyxaXVEBtVVpb0vhuH+CIwvERnMglR
         hG4trswjH96q9MkQ6Ll4KIeSK2NAKMv3+CdDtcf1Zj+911x0JlV+iifccbljYLApZo3Y
         f2WGYk13MEl6dChoB0dsGTQdUKou6LZSuCQj6s1610Oi3nfwevomnmtXPQXNypRqmqL5
         cZRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=X3Opb6arzJwXelkGLAeI5ijV0q+qANDWY75OUMFqdTw=;
        b=F4IUNNIrTpe5fsprsQ13OT8u1ZGenEodstI3DxWUvcATXSVsQ8RFLMlSYXhRp3sHDe
         KyMVmr5T0Wvt7RIYyt33oFDw6A9Tpl15tVXGqN49c2q5pHDcNjsG8u18tpOD/pX/G6am
         r43VysN7DhOYIbft7Ucb41OPhUk9qTfbsB7lqfA18WURq0fDif76yBEUaFc3fAcr8ZLb
         3QuUOPIegjxmhxIk27IOWcfh1yO9OgJyX34D/SfuAuY7/Kf5c7G5Mbx9vBTOyDuONC3R
         LZ4uhRszMQo6E+ptw1yX0U1VDDd1G/QrafVRP+Y8Hzgd5H00WU56nzi0M3q1krO5zvi4
         fm3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uGqh2RXU;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id 2si632685qtp.1.2020.05.12.12.23.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 12:23:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id t40so9880692pjb.3
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 12:23:47 -0700 (PDT)
X-Received: by 2002:a17:90a:2a4a:: with SMTP id d10mr4799210pjg.32.1589311426080;
 Tue, 12 May 2020 12:23:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com> <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
In-Reply-To: <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 12 May 2020 12:23:34 -0700
Message-ID: <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Masahiro Yamada <masahiroy@kernel.org>, Fangrui Song <maskray@google.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>
Cc: Nick Desaulniers <nick.desaulniers@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uGqh2RXU;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Mon, May 11, 2020 at 10:54 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> > >On Mon, May 4, 2020 at 5:13 AM Nick Desaulniers
> > ><nick.desaulniers@gmail.com> wrote:
> > >>
> > >> As debug information gets larger and larger, it helps significantly save
> > >> the size of vmlinux images to compress the information in the debug
> > >> information sections. Note: this debug info is typically split off from
> > >> the final compressed kernel image, which is why vmlinux is what's used
> > >> in conjunction with GDB. Minimizing the debug info size should have no
> > >> impact on boot times, or final compressed kernel image size.
> > >>
> Nick,
>
> I am OK with this patch.
>
> Fangrui provided the minimal requirement for
> --compress-debug-sections=zlib
>
>
> Is it worth recording in the help text?
> Do you want to send v2?

Yes I'd like to record that information.  I can also record Sedat's
Tested-by tag.  Thank you for testing Sedat.

I don't know what "linux-image-dbg file" are, or why they would be
bigger.  The size of the debug info is the primary concern with this
config.  It sounds like however that file is created might be
problematic.

Fangrui, I wasn't able to easily find what version of binutils first
added support.  Can you please teach me how to fish?

Another question I had for Fangrui is, if the linker can compress
these sections, shouldn't we just have the linker do it, not the the
compiler and assembler?  IIUC the debug info can contain relocations,
so the linker would have to decompress these, perform relocations,
then recompress these?  I guess having the compiler and assembler
compress the debug info as well would minimize the size of the .o
files on disk.

Otherwise I should add this flag to the assembler invocation, too, in
v2.  Thoughts?

I have a patch series that enables dwarf5 support in the kernel that
I'm working up to.  I wanted to send this first.  Both roughly reduce
the debug info size by 20% each, though I haven't measured them
together, yet.  Requires ToT binutils because there have been many
fixes from reports of mine recently.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmEP9Auuc%2BM%2BMqPoQmx%2B70DgdsPYZQ6pg%3D8oGnfCviqRA%40mail.gmail.com.
