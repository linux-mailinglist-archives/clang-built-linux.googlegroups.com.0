Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBKHT4SCAMGQETVXY2GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F69378DF8
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 15:48:25 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id p20-20020a0565123134b02901d2ab33b9bcsf3422183lfd.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 06:48:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620654505; cv=pass;
        d=google.com; s=arc-20160816;
        b=MSavPgXRTlHemwIoSPXndrSFYA7KYdHQqLndDDNB+WB0pVfQ3XpBPjT9lFMtPkX4/3
         uY8xK+M7z+EAYBDhLIINtEw2CPJE6PRydBoL8bCzLkZSvhZwnYWcUH60KxnmBlYKtNxt
         kIrCEKeh0hp7tiy9ekCYoT5GVbmWGBVYcSGxXUqxEUckRta3lu9K4+1BYkuYJNiM+zoj
         0KJ3iDc97tKtYD3KqKGaaH8MsGCPLnFqai+2mghgBxZvSwrBP6TMpvArHO6PEQB8SPvO
         9uCspcTnWU1LanC/FTn+QYbRT/iyhAkqi8SwkAPxWbJQuEbySsJaEJns4xP3XuduuYBy
         illw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hGoslm27ePK4Sw1ioHDWVKSpiA+1ODMIumAM/8uFRB4=;
        b=Zg6aXcaVmRpdwzYhC2PH0/G8EXwA1ZTlpo3tvOzM/Bfth2duWVIZdZKFe7aSdvjCds
         Cw2fevRj7NjZ68hh25k6vnKvv07mrsD0F6wxFLhx3aP5GX6e9RFkj5RO08Bd4Ea533qE
         T3sX/jEAEou4msPTQ88p8PUkufhXDDWzGp98ls8YTLE2THvn3AWN8M8wj5j2wmQ1B7Z4
         IUFMzX3Kbu4109ORaxidIZzpm3GifNZweU7ehNEL5bBqGF9iYvKGSZWK+ptilFk18YUA
         oS8j9m32/4Yhg+sZ0sVGxJBOKFFl9Km675qVEp+rgMvlS/+l4xkKG2qapOnbS4S5oOjo
         O7Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGoslm27ePK4Sw1ioHDWVKSpiA+1ODMIumAM/8uFRB4=;
        b=Pt3aYh/sDoZgs+ZbC3C5Lq8YdSuIt9wQBLjBxPSAvYMCoIbjjquMRfIBQ6oemLEqwU
         PObVKd8lX78EgVsnV0JFOej99Bgranh3VbreK9G5zmUjVeLtmXggEUmYCkWzY0kHB3yb
         1MN6ufzFL1ZmtpkSHzlp96DwHKs4WyMrCR5JghqaB4zRdYVAT4y2Lcc2I9bCsGtip4+v
         Q9uL1AOLFAXgIIKqQ9jj/GgiCj+xcJ5c32oVnvy0uD9SQeNCsBY1R1Kj0mX4IsBg7BwT
         TLoXRTAwfrVA++USjNsLQVHiywYxRskq26kxH0rV2fEPviZacIjMD4xZGVtpmH9ye4I6
         al7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hGoslm27ePK4Sw1ioHDWVKSpiA+1ODMIumAM/8uFRB4=;
        b=CXeVNF64Hhj4s5ZUFB/Ci977ZMIm8JGnNI1NHO979bkqM4OIdsAu7Vm8vGiY4DiG6d
         NSkcIHu6FkEGUNhHZ/Nk3i2yy2hiVL1UbGI0o/UErApK+9p6v+m944ODP5eGypOodGJz
         +am0hi0Y86cQ3oKIfXFpjQuIScyyNzrCcz/tV/nJPeOv6y5j82fNONzIlB5x7SwALO1P
         HW384XLJaG3AkrukNdesv5ZagfHuW/mfAoy1QuhWNG67tHkTLD65+b91pXo5kxJ//C7X
         f0eQNJuP/6Qia3zCPQLCT6R91geqLiwWeYQNrfDOtVs/DUlvsiKID8BfZW4BVEnPoge8
         dd7w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530sByM3Xsne//qnRzsWIhCLEfJlyQU3y6cnnxfv6og54E/EhxMv
	h/CBCZdYjpoBJgIOEUQ+ue8=
X-Google-Smtp-Source: ABdhPJwCW7P56Xfm0jbLE/GRNZverJ138Uz/oJcFtQtxg5N5IYhXOl/HgrJ0xSvOv3Ev2+IHQCbLww==
X-Received: by 2002:a05:6512:25d:: with SMTP id b29mr17444967lfo.26.1620654504948;
        Mon, 10 May 2021 06:48:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1409:: with SMTP id u9ls2940645lje.1.gmail; Mon, 10
 May 2021 06:48:23 -0700 (PDT)
X-Received: by 2002:a2e:2f09:: with SMTP id v9mr2314608ljv.152.1620654503919;
        Mon, 10 May 2021 06:48:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620654503; cv=none;
        d=google.com; s=arc-20160816;
        b=wdYJDNz4eJcsdircNDo2We/DGgOhU3QdFeX5VZy/vGnogKY4bTJ6Vt7KktsgRwaaYz
         obJYRIP4Sx2c8twZigB1/ol0mUmcl6Hbd/WRmsGsJb6AsaTFLZeXYmdkogTJoQHYwlY3
         ZT0N+hYlKKsdBdt/DBg/TPd5X07TYs46vSuagZAvptqamzOgTsHVh1aOfoxDOL+bI7QM
         MkmKmFIXPuNy8kuaLGgEgl26A/XREtbLC4LDChLxehQJ377X2vQ1ZPEPMnBrvuqdF0p5
         gmkOSe9fiBA+F3k99h/+I69kyH2YgVpCRWTlZzo9aqynkpYK2GhbuEENztkfOjvN5Xqk
         K7qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=aoJHTLdiFt0/+6l9BvDy4Uf6YLlPowKL6ExwLG6Ode0=;
        b=x3d43ef6tQR1ldOwuXsPy4HWgpLAd2lJmPw0cnuYfjWsXyIG3dpGUmn5jAjs7uOqSb
         FFEoGdhPKOLdXb80Y/e3LbFKJaEQaUGVocSW7pS/bvksnBe8fzJ/e4UWllXxDmYSIH7R
         nHoxG/9byWWDIdltGZ8j/peOfpI9Z5SRlCF1cWhb8LDZE6qmNZz55otUeg8ylYNJVjGP
         T6c1xWV4sZh4LDIN61gzB8JjcZCdTgqhL7Vh4n6s6ocwUavsgz4MztGJzMIIjvc2vsBR
         gG5dZ9TF2d/x3yJ/4/BSEK9mMdRCIe5heYUJskMEGWe5vvEabnDORBi8UgScKSbkxyzZ
         xrsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id q6si636886lfc.13.2021.05.10.06.48.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 May 2021 06:48:23 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-wr1-f48.google.com ([209.85.221.48]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M6lxY-1lb8C91CSk-008Fv9 for <clang-built-linux@googlegroups.com>; Mon, 10
 May 2021 15:48:23 +0200
Received: by mail-wr1-f48.google.com with SMTP id v12so16694774wrq.6
        for <clang-built-linux@googlegroups.com>; Mon, 10 May 2021 06:48:23 -0700 (PDT)
X-Received: by 2002:a5d:4452:: with SMTP id x18mr31726656wrr.286.1620654503046;
 Mon, 10 May 2021 06:48:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210510085339.1857696-4-schnelle@linux.ibm.com> <202105102014.AoEdJzot-lkp@intel.com>
In-Reply-To: <202105102014.AoEdJzot-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 10 May 2021 15:47:29 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1uTgFyPL+m2Ts3vigVc1V=BNLhMpF5UtJdnd+-FQy2_g@mail.gmail.com>
Message-ID: <CAK8P3a1uTgFyPL+m2Ts3vigVc1V=BNLhMpF5UtJdnd+-FQy2_g@mail.gmail.com>
Subject: Re: [PATCH v5 3/3] asm-generic/io.h: warn in inb() and friends with
 undefined PCI_IOBASE
To: kernel test robot <lkp@intel.com>
Cc: Niklas Schnelle <schnelle@linux.ibm.com>, Vineet Gupta <vgupta@synopsys.com>, 
	"David S. Miller" <davem@davemloft.net>, kbuild-all@lists.01.org, 
	Networking <netdev@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:P+5dhGOYEgAHrMOQZ2DBGbfJqJGYKu6CohJqX43skKRqbLrsdTO
 mLxWDn6i6UzvFekcDqz5zZOqETkT14YmCgzPAoKRowyr3mlw/0K3FDtB1ytPF5Jg9Ok816F
 m4+bEhC6ILaHJIJPtaHl3uA1Gvyp7B80Gv17sHEhwc+jumGeEDDW8tdkV+5Ly6ekfyD7jPc
 cGaQTOt2jYGZUHZK4SSSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z09O8Te0YFU=:WKTwwvtrF0nu/TC5t/c6el
 9o9lsFfWoSr3bdhtYWjc8/Y4JkH0aY5FpJLeEBIPnj0n+Fb75C9MUmP9rDKfAkBG1Rq8ahOAE
 cb8WaPOO/hm0Zzt7iQsgiejEm/3JUUdMQGifZXJ0jiWyIsMOn6VImdbReugwU8z2aQ7pprDp7
 5xxfomocOJ7r950K7ME0adIHv1r7dCwwkkrpnU+CZDUjJXMWd63QP5uGMsS0zL77WoA+oHaMe
 6KaXrj7ykKDBTEJhG/iPHsA0X+4BkpYHRSRErmoX74mtJTIwyuH4ZOMq72DwoY43HSBO3KP4D
 hAaXcH71eXSNvUaNBSCa5aMb0Su6IdB4pBHv5qKxd2yj/sxzukpIAENkw8LqeQT2QxoPK9ucb
 01F5GUMcQRPsQPVFFYnpIVh5194fKbCQa2voyB7WN2qSG4cKTdC0GgVT3IrQ10dnGEn+uZxV5
 uYzG5FlfFTLcgN4wPi8ItHOAhAW8fgCiitHoed+cgOC3qWkw/bU+1m3S3I7hw3UCW/vjGC95h
 JknydPbxGWckdBcg5iCEWNsebeFaB61Wl4JQJA1efrVho/j5aACANVfRsbAsTYVLhXcfaVOl8
 Zx1fyu2t37DaWKeGydzWMF4EMLgnJuPwd4hSvahgrJargFAsF6CHPaHQK65LXG/hzjAHnazgh
 scrA=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Mon, May 10, 2021 at 3:08 PM kernel test robot <lkp@intel.com> wrote:
>
>    In file included from include/linux/kernel.h:10,
>                     from drivers/media/rc/nuvoton-cir.c:25:
>    include/linux/scatterlist.h: In function 'sg_set_buf':
>    include/asm-generic/page.h:89:50: warning: ordered comparison of pointer with null pointer [-Wextra]
>       89 | #define virt_addr_valid(kaddr) (((void *)(kaddr) >= (void *)PAGE_OFFSET) && \
>          |                                                  ^~
>    include/linux/compiler.h:78:42: note: in definition of macro 'unlikely'
>       78 | # define unlikely(x) __builtin_expect(!!(x), 0)
>          |                                          ^
>    include/linux/scatterlist.h:137:2: note: in expansion of macro 'BUG_ON'
>      137 |  BUG_ON(!virt_addr_valid(buf));
>          |  ^~~~~~
>    include/linux/scatterlist.h:137:10: note: in expansion of macro 'virt_addr_valid'
>      137 |  BUG_ON(!virt_addr_valid(buf));
>          |          ^~~~~~~~~~~~~~~
>    drivers/media/rc/nuvoton-cir.c: In function 'nvt_get_rx_ir_data':
> >> drivers/media/rc/nuvoton-cir.c:761:15: warning: iteration 32 invokes undefined behavior [-Waggressive-loop-optimizations]
>      761 |   nvt->buf[i] = nvt_cir_reg_read(nvt, CIR_SRXFIFO);

I think you can ignore this one, it's a preexisting issue with this
driver that gets uncovered by your patch: if "fifocount" is read from
a broken device as 0xff, the loop causes a buffer overflow.

The code is already unreachable because the interrupt handler
will have aborted already, so the compiler's dead code elimination
should have shut up that warning, but adding a range check
before the loop would address this as well.

As far as I can tell, this warning only shows up when building with
"make W=1".

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1uTgFyPL%2Bm2Ts3vigVc1V%3DBNLhMpF5UtJdnd%2B-FQy2_g%40mail.gmail.com.
