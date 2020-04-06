Return-Path: <clang-built-linux+bncBAABBYETVL2AKGQEDXNRYIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 798D019EF33
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 03:46:10 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id p13sf11873974pgk.18
        for <lists+clang-built-linux@lfdr.de>; Sun, 05 Apr 2020 18:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586137569; cv=pass;
        d=google.com; s=arc-20160816;
        b=uwA305p+ukWn38cQI7J6p05HlY/seVBfrwxhYXUd7+fxM1H47HrqVweQDW++XiRcAg
         QTUvMgVawmrq3k7/XrqRfHaxNiIdwCQtHPjv1qzLnZKfbzBErCU2/Av0iYJeAA1Z2S/7
         KcZJga/GCvHqPcHGD5GmakP51mbj2Scp1EESSxGoJWMLTu9HdBgMic9axTDtrsJSHWMM
         wC4BX8cp6hAWOiWkDESBdBeYPxIE9hxSm8bLDD41VEj08WyKHSSw04h23+cF7l4xeilg
         W4UcittHmct5xmYVkZ3WBQqS462MRF+zBCqmjUy+MuT386Uy/7akLas3ZBFt93CvYxLs
         SsVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=a8kfXX9bA7P8P78ePqOTPaB50lQeQ6ZdMqnX4tbJTQE=;
        b=WeCTWPt7n9B0a5QKPGDHl7l5VYO+SUce7piJiW+ZNqd9RgtlmQEBQKIagpTQ70UjWH
         JcfvRj6SM16Q2QaRIRGbyUhkNSJFaoQbv+SdV209r0LjrvTGzgmi1Otm/l/Aa5+0VeJ9
         xUw6gc3J7FKgUDMG2J8qzrz2BpAOIZESWBqoVarqaD4isbmKewxBy0oVM5gQQdOuPknl
         eQJzwF9LHAu6q+lNIDjbRAwjhgA0thNb3OgV3iepB2oB11weAZRbLp+6oh78ssSf1PXv
         0nQ5B2rCGsg3RrhlXXFUpxk1yfygGIcA/oey8fiFC6DCZdNL88rTMHq2ApRb8r94Y/Mq
         8E8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JJoh7W4D;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a8kfXX9bA7P8P78ePqOTPaB50lQeQ6ZdMqnX4tbJTQE=;
        b=SpmuLgr1EPKUGxg43Ol9cfFC0mq/CJfKODQ6KojVoFi4PNwrM1BWnG+rU9QkJ+naIb
         PNeN7qvVJR5D0Evn5UP6XDMCPLJurFt2PrJL5KVlXCqIO/BlpBB8Fsp7AIYFoP6A0z7O
         im7AzIvFlDhce6DPtR20cEt+QW8p14bU8tvL4oI8GJn4hj9w4lnEG1brNcVsMSQClTUr
         rRVDgOWW67GFFNx8NMgC/bmKJO7gf+lemaaj01UYv/mLhJ1FmlxNd/Zr12I1CVi5umt9
         Q+IcUhtwNeIlXYi5E7OXKcdtYyfdz3kt1GMgyMcFXMwt43Uu7fZiR+YgUH1R/3gnHBVp
         gRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a8kfXX9bA7P8P78ePqOTPaB50lQeQ6ZdMqnX4tbJTQE=;
        b=JdGbxMY4rSYRJfJxPDKzk4dvkQE4imZR8jGWC28UrE2NMLkB1mcbbjd+OK59o7gN3X
         NBRGrXBkCyRncih29hnOdKMvviBftcG4y/D0Fa9wD8E/BDZkLLugztmHz08enPmRc4x8
         bjdCzmkfO67HGPwPV8zocoOHmNVvVmA9x0u/lQLHNePL3EDJdJBh2gabEN2CsJd7M/+h
         YbrIS3tWOykIxWaKf7DHjPh7liWOgBxroTCjTRjdtqyGScfYP6csDEToP3lkFUL9z1Z+
         17hvJfTAvSn2uUflLa1l7cPokCynsURgEEIF7092827tJFu3iiOLtffoKnPATAbcsWUI
         E66w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pua7XBB/mBGg5dOSij7h/CitAO+1FqYhG8siirOuPt+zDgQrlwHB
	k2AapwLw/VxygAEuqbWQ1U4=
X-Google-Smtp-Source: APiQypLrzkGVCn6bXW6OiRTK15XT2nzZz1sIKQqsTO71EPFG77rIMZ15C82cjZ34+VHWjfwCt0ozng==
X-Received: by 2002:a63:f50c:: with SMTP id w12mr18787102pgh.253.1586137568879;
        Sun, 05 Apr 2020 18:46:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls10481790pfg.9.gmail; Sun, 05 Apr
 2020 18:46:08 -0700 (PDT)
X-Received: by 2002:a62:648f:: with SMTP id y137mr19970561pfb.199.1586137568485;
        Sun, 05 Apr 2020 18:46:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586137568; cv=none;
        d=google.com; s=arc-20160816;
        b=Rn1eWYlyHZs84iVBsPmwiPHP1WpfoSly4jrdzDZ1N9mtK2ze6gF3UOwzWlFgjXQAbI
         J7bC0CbDBN0PnvwZdYtBZaw4wq/uBPjtLnIi/qq33qOvLuVadx9eRBWoh2Dw1jJ219Am
         5X68FsudDBSP5h+owG2XAXX/+iqzCLLO8zQbMxaVdFy1O/khQNdPWcuCsxqpf9JdmqnY
         qBaBeVzXrmpLa8iUI8z4WY+dTSvysVxkxVqhGs0mCRDOM4gJUo2pHM4BQGj9sALXvgqx
         Vlaq+m0XxBGLEY3vllnr/mULl4ARU5DB3rYljOR9lN4IojkaPzMAYyKZuQumj7objPW+
         QoeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=t1XbmubotdqxWQiJUtEmVVmLD3QtFzYtfXS6eKsOjqA=;
        b=J7/iM8GsRY0TGk8+nPVcf6yx31FBEL8oVR4z0CTCDKmrmVD3EKGyN+Nb97pT18RpNW
         Uvsc1xUnmL4Zio6QvgaGc3YaApbxa0vBJfqS02HFFNIqILwjYmEzUHOo6P7GbSYqXQt0
         5E3GiQKfL2RRmu0ogBhSvvyb5rdrxEwJtGLbOQVGWqjGQVgysxvlt52dAepgl9y5sbjN
         lzaXFD009kMmX9GD2MBjHhRPPym0gNidDEEpQcXWPSWDdIHZthWxrC6nFAnFbxGIBodz
         n2RG5IcUlhgQvYGynLBHt933D3XcypTodBTQdiRYigAGu9Haovvq+OMwYTMv37EMy77l
         gORw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=JJoh7W4D;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id g9si720192pll.5.2020.04.05.18.46.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Apr 2020 18:46:08 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 0361jdmZ002747
	for <clang-built-linux@googlegroups.com>; Mon, 6 Apr 2020 10:45:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 0361jdmZ002747
X-Nifty-SrcIP: [209.85.222.47]
Received: by mail-ua1-f47.google.com with SMTP id m18so4915081uap.9
        for <clang-built-linux@googlegroups.com>; Sun, 05 Apr 2020 18:45:40 -0700 (PDT)
X-Received: by 2002:ab0:2085:: with SMTP id r5mr14017632uak.95.1586137538961;
 Sun, 05 Apr 2020 18:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200405163052.18942-1-masahiroy@kernel.org> <alpine.LFD.2.21.2004051813150.4156324@eddie.linux-mips.org>
In-Reply-To: <alpine.LFD.2.21.2004051813150.4156324@eddie.linux-mips.org>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 6 Apr 2020 10:45:03 +0900
X-Gmail-Original-Message-ID: <CAK7LNATKLcCPYxQZNbrS-jMPg+_BETU0dGv0qYvLqUkJ2fMt5w@mail.gmail.com>
Message-ID: <CAK7LNATKLcCPYxQZNbrS-jMPg+_BETU0dGv0qYvLqUkJ2fMt5w@mail.gmail.com>
Subject: Re: [PATCH] MIPS: fw: arc: add __weak to prom_meminit and prom_free_prom_memory
To: "Maciej W. Rozycki" <macro@linux-mips.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux-MIPS <linux-mips@linux-mips.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Jiaxun Yang <jiaxun.yang@flygoat.com>,
        Paul Burton <paulburton@kernel.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        linux-mips@vger.kernel.org,
        =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=JJoh7W4D;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Mon, Apr 6, 2020 at 2:16 AM Maciej W. Rozycki <macro@linux-mips.org> wrote:
>
> On Mon, 6 Apr 2020, Masahiro Yamada wrote:
>
> > As far as I understood, prom_meminit() in arch/mips/fw/arc/memory.c
> > is overridden by the one in arch/mips/sgi-ip32/ip32-memory.c if
> > CONFIG_SGI_IP32 is enabled.
> >
> > The use of EXPORT_SYMBOL in static libraries potentially causes a
> > problem for the llvm linker [1]. So, I want to forcibly link lib-y
> > objects to vmlinux when CONFIG_MODULES=y.
>
>  It looks to me like a bug in the linker in the handling of the EXTERN
> command.  Why not fix the linker instead?
>
>   Maciej


I am not sure if this is a bug.
Anyway, they decided to not change ld.lld


MIPS code is so confusing.
There are multiple definitions,
and lib.a is (ab)used to hide them.

I fixed another one for MIPS before, and
0-day bot reported this recently.


There are lots of prom_meminit() definitions
in arch/mips/.

Making the intention clearer is a good thing, IMHO.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATKLcCPYxQZNbrS-jMPg%2B_BETU0dGv0qYvLqUkJ2fMt5w%40mail.gmail.com.
