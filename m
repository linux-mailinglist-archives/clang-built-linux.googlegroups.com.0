Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7VZ32DQMGQE7W6SQIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DB33D0773
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 06:05:19 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id b20-20020a0566023314b0290523c137a6a4sf692505ioz.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Jul 2021 21:05:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626840318; cv=pass;
        d=google.com; s=arc-20160816;
        b=lEVUwRS168AoRE6Vx0iWpslCgkRxQj0Ewsf379qDpI6ZoI3pD1hmOE879pf+CMuMBy
         jTUeV0+asQLR5gcOENojxW8GEl0hJnSKVQYdvEkT9OClHvVyMCN8H9BYYXGqc6hINu0q
         7l1duRovinPnfdS09na5OBdgqc3fyB1qFaX1oGQCn+rpAtt1JW4iSZc9nI0D3BGIMLlo
         EzHha9HWfcLDUKLycC8+OSFAmzpCzAkLpkdzkRvX1LmQCLQxBeTdkS+MHkaow9/boFcF
         YyhNzVorT8n1Gx+oOeV44AQhMd0o/nmRQvsnKmTAXY4gxZVyayeGH7E7Qr5JnDRgb1UY
         ZsKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=I/AT+9W7wEcT4T2g+G8pWPaBu/EeuFRxDJpTE0vfZ5w=;
        b=BLsIBpmun3FXFeUfdzG7ZzZqtgwXQA3lHYGHbzbo3Tq5IONIFUvuSeIDLz0/iC21xw
         /JfB50a5Bq1fmPLWnXZ4xO0F3BktNqnCdH13VmIAx6QLec/7kOilbpxZQ7/bR5iYtC1y
         beLdtWOUa7pYkUBredO3jOMvzEQiuWF/ecG/9dYBVtwaDUbZ1NcSeCrFzpO7cpXjiZF2
         eS4RihjioWsK/Epr4rE4pt2y6vWevo/QWZnPhqCR7TbJne12vw32PSlfEq4O51jmqIzc
         qqFzA7tPfuwK+gyYltoFzYkbQHONx+U99ODHmuIjVa75AP8/GPe5ToTU5H94kQxc7meU
         +nUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UoGntPjr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I/AT+9W7wEcT4T2g+G8pWPaBu/EeuFRxDJpTE0vfZ5w=;
        b=ky7ggdvGRTu06jI5IbFPy0rAJf9p94sqcIWVDJdEGw7TT6mW0X7A9kf/x2v7G3Y/Pv
         UXzATr2m5XPJMfrVnLRuBupOhHFWaRuTELA5mNdsVlw4V+XnnSykHapsDAq3JIv2mYfe
         88kiWpGIT2EuHHGEK1iaUh4Cq7Jq8MIuU7T+K4DgLoop8D65kqAmkcXN5Di9NRRLCZ5V
         qb0NgEe6KvKrstJ5AeM01JA1lJLmYq5MoAk1A6FbAGfmCaB09wPOXLm4QSSHfoa7XFwi
         ZsgKZu9jRF4CfmFDj0YTFNqDy4EFHGENESiZ3w45tX3vye9cr2zf2bxSTqbxkgYKed5G
         0tRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I/AT+9W7wEcT4T2g+G8pWPaBu/EeuFRxDJpTE0vfZ5w=;
        b=QZda63gHKapeY4UZ1BvU5h5FLX9xNHh5IFBvl/p+Vgr6daLabfAM/cjeNedrSsj8CQ
         EivtQ4KH3BOe7TUiIzZ18gxQ3zLUdrfpdBTVGEuuvDFvTFOsPH/MdIdAbTwhMUACQgnH
         XJ9AUUGX3ERSuTZa3V/ivpmAHBlHtH3WnQPPWKkrlxc89jSk59u9kLBIrD7MmsRTSiP3
         l4w9p841YnUWvsaNSTdVdCfl4xCk8PqnVCydPNMC3SfNP4h9ysP/OucSu/aZCFgwqChK
         rArDHX1jV23BtzV7CM+MY859io6jDjXt4QE2JPaBpUv/XVK4RDpKCBZEwvTYv7DtGeso
         z4oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531JBDbWddgCSzDGLekcVebEfd2cAXYMW8icDmdppBVmxedodQoo
	8tTI5kVvPOmxLLiwW5pri24=
X-Google-Smtp-Source: ABdhPJxT4AW6k5BrpAH6Q+wRNlkAtRvgFYMe716CuziKypY6rYxQ1yRVFWnasDyW6bfwy0W6TPpgWQ==
X-Received: by 2002:a5d:9eda:: with SMTP id a26mr8850043ioe.166.1626840318237;
        Tue, 20 Jul 2021 21:05:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7e4d:: with SMTP id k13ls169715ioq.5.gmail; Tue, 20 Jul
 2021 21:05:17 -0700 (PDT)
X-Received: by 2002:a6b:7905:: with SMTP id i5mr25672545iop.175.1626840317755;
        Tue, 20 Jul 2021 21:05:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626840317; cv=none;
        d=google.com; s=arc-20160816;
        b=b/L1n5r+PXK5Bqf+RR28/cMPWshyDJ2GOzYJevk2faNaFvCq7GLsrXzia3Lb4cNMJa
         JDdpf49RrL+Dbi1/Jlymrl+DRjzIEf3igU4bzpbzts6xjjanarL2MuT47lSWne9DUeVi
         xGsDvkys+Cb5ZwSfL9r9jD7UkIc+qk5fNbe0BFOMkhLJ9+w37yiwR+XkUck4Drc/ULg+
         oEqWLk9ggPZsn12btW7ZT6R8PnkRQLHHERKZJmi+oehtFvcMbAPG1B4DLGWSY5S7fikH
         xfkmcKU3cocodjruCbc2mVFpyew6ARNUstZubQHKuXznC6JZqbRpL4ETY0pH1D89iTZY
         MSXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=AfCQ8zWwU2kVtZFAJkMMPrdLTVubh6u8+7aVLlmJQ1M=;
        b=0eR+t/c5e6DggCUZi9Xcvb91O0BmZSZ+aTx7fjfTiNmJ2YSelvo2gDa0tsNcqVqvzi
         FCB1JReM/uCbSS2p4rZyhanMTGpsCsjUFq4jS3lasRuXUJt11aUqv6IqXy3jwE2iBQdK
         et05JxjNQRa/j9qqi6t+a4CVBswR6vD+CXNbYuqtHN6eNy5jVreVaH2etP3J8YO6dliZ
         oqiHal4/8KWCsiE05DpP0SyPWpiMU1n5eFeXjZC2Qg8JZYz2UQZa6t2KGdKI8VfuIL37
         JBIUmpBrI9oWpLy26tsOSTPBgc5FmZIsFjWdbo724dQxrTClskFqzecD5gb1DLiAbP6+
         WTkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=UoGntPjr;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id e16si1816642ilm.3.2021.07.20.21.05.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Jul 2021 21:05:17 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 16L44sgi004891
	for <clang-built-linux@googlegroups.com>; Wed, 21 Jul 2021 13:04:54 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 16L44sgi004891
X-Nifty-SrcIP: [209.85.216.48]
Received: by mail-pj1-f48.google.com with SMTP id d9-20020a17090ae289b0290172f971883bso3243972pjz.1
        for <clang-built-linux@googlegroups.com>; Tue, 20 Jul 2021 21:04:54 -0700 (PDT)
X-Received: by 2002:a17:90a:c506:: with SMTP id k6mr1773256pjt.198.1626840293821;
 Tue, 20 Jul 2021 21:04:53 -0700 (PDT)
MIME-Version: 1.0
References: <20210708232522.3118208-1-ndesaulniers@google.com>
 <20210708232522.3118208-3-ndesaulniers@google.com> <CAK7LNARye5Opc0AdXpn+DHB7hTaphoRSCUWxJgXu+sjuNjWUCg@mail.gmail.com>
 <CAHk-=wgGxu4_hgzdYpFuKd95SfnkJbPTWAQ9-fMgmMN1Oxs2xQ@mail.gmail.com> <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
In-Reply-To: <CAK8P3a3=JBQow-Ws6tt81k93aw+OCV5C2CtSWxASkv=iQZPGUw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 21 Jul 2021 13:04:16 +0900
X-Gmail-Original-Message-ID: <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
Message-ID: <CAK7LNATLy2F-2zkHm4ENSufBT_o5p=9jc5k1K-xOV8cQf7kKDw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 LLVM=1 LLVM_IAS=1
To: Arnd Bergmann <arnd@kernel.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Miguel Ojeda <ojeda@kernel.org>, Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=UoGntPjr;       spf=softfail
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

On Wed, Jul 21, 2021 at 4:58 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> On Tue, Jul 20, 2021 at 7:43 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> > On Tue, Jul 20, 2021 at 1:05 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > We do most of the other heavy lifting in this area in Kconfig anyway,
> > why not add that compiler choice?
> >
> > Obviously it would be gated by the tests to see which compilers are
> > _installed_ (and that they are valid versions), so that it doesn't ask
> > stupid things ("do you want gcc or clang" when only one of them is
> > installed and/or viable).
>
> I don't see a good way of making Kconfig options both select the
> compiler and defining variables based on the compiler, since that
> would mean teaching Kconfig about re-evaluating all compiler
> dependent settings whenever the first option changes.
>
> I do have another idea that I think would work though.
>
> > Hmm? So then any "LLVM=1" thing would be about the "make config"
> > stage, not the actual build stage.
> >
> > (It has annoyed me for years that if you want to cross-compile, you
> > first have to do "make ARCH=xyz config" and then remember to do "make
> > ARCH=xyz" for the build too, but I cross-compile so seldom that I've
> > never really cared).
>
> The best thing that I have come up with is a pre-configure step, where
> an object tree gets seeded with a makefile fragment that gets included
> for any 'make' invocation. This would set 'ARCH=', 'CROSS_COMPILE',
> 'CC=' and possibly any other option that gets passed to 'make' as
> a variable and has to exist before calling 'make *config'.


There is no need to add a hook to include such makefile fragment(s).

Quite opposite, you can put your Makefile (in a different filename)
that includes the top Makefile.


I think this is what people are already doing:


GNU Make looks for 'GNUmakefile', 'makefile', and 'Makefile'
in this order.


So, you can put 'GNUmakefile' with your favorite setups.


$ cat GNUmakefile
ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu-
CC=clang
include Makefile



Then, you can simply do "make defconfig; make"
for building arm64 with clang.



If you want to have multiple setups, you can put
custom Makefiles, and select by the -f option.


For example,



$ cat Makefile-arm64
ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu-
include Makefile


$ cat  Makefile-arm64-llvm
ARCH=arm64
CROSS_COMPILE=aarch64-linux-gnu-
LLVM=1
include Makefile


$ cat Makefile-arm
ARCH=arm
CROSS_COMPILE=arm-linux-gnueabihf-
include Makefile


Then,

$ make -f Makefile-arm64  defconfig all   -j24

$ make -f Makefile-arm64-llvm   defconfig all -j24

$ make -f Makefile-arm  defconfig all -j24


You can use TAB-completion for the 'Makefile-*' part,
so you can save many typings than you do
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- ...



It is just a tip to ease your life without any change to upstream.
Maybe, some people might be doing that.




>
> This is probably the easiest part here, and it lets you set up multiple
> object directories in which you can then do
>
> make O=obj-x86 defconfig vmlinux modules -skj32
> make O=obj-x86-clang
> make O=obj-arm64 randconfig
> ...
>
> without ever having to type the additional CC/CROSS_COMPILE/LLVM
> variables again.
>
> One step further is the script that automatically finds a working toolchain
> for a given architecture and sets up that object directory accordingly,
> or even downloads a working cross-toolchain from kernel.org when
> asked to do that.


I saw Intel's 0-day bot attached a shell script to download and
set up cross compilers.
(make.cross)




--
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATLy2F-2zkHm4ENSufBT_o5p%3D9jc5k1K-xOV8cQf7kKDw%40mail.gmail.com.
