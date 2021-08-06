Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGWUWWEAMGQEDJ35JQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FA23E2EAA
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Aug 2021 18:58:02 +0200 (CEST)
Received: by mail-ej1-x63f.google.com with SMTP id zp23-20020a17090684f7b02905a13980d522sf3322123ejb.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Aug 2021 09:58:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628269082; cv=pass;
        d=google.com; s=arc-20160816;
        b=RDYuZD1VA+Zuj06eUQhpu5aXO2hLEZuqkpocDZzKu5wW0PD4cm6DYhfZp+cNHzKJp1
         LJ12XIY1iD1vE3xajFvrvTTwOrRT2/pMB591ctgZT7+eiq3xcvYTqzNKoS8rfo3o65/S
         urr7uf8SXA9N5DAhHupl2+bfbOlN5HcFaW5CO7+rLORojOKF3mg309o1PQIBIy3rSF5q
         7Z/4Ivn5RfES3u+GnkajwoboauiDGHqh6X+Ya7W1SGlMT96E+ctCjWnFE4ubTd/yadfS
         5ROYltQtbh/35/NzmTtl3DGf9/1Otit5NcW999ah4p+YPz4/FhsGboUxKqkcpXPSdRvQ
         W2pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=hdoWWIms+/qyzbon/agb4KlA8vANgWOl4PuSmhMukqc=;
        b=lO6Vys1RAAuSSzMFZYhvQ6AsxLx5x0hncD5S+RVMNAHmY2I4Pn7+LHgiBkVDnHS3kj
         6/MUt2xzRdaIfa4GIbLp6W4nrq8epFuCzsXqwSZr+BJEwm4sCpr+snW+fw7m/Zp3h/6x
         H0D6ACr5oo1OEbovxHcwPwbg37tzPGP8RTlrfitzacMIPRkksPxCTBLi5GU5c3blTFIa
         FOyQx7nBaLWD5yl5YtF5BwTeA6dAvb1FsGaL0xlEn5achubJeyPFWrWlf0RG5JLh1FmH
         bzMQLSULL26pDX25b6ZTwmz6Yw5MVVJ+eNsTpVJ16xCkl/IOtudxAK6OoXT4EKMV/nIk
         t6bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ce4Conzv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hdoWWIms+/qyzbon/agb4KlA8vANgWOl4PuSmhMukqc=;
        b=ruxzRPI1imenHHsth4Sam3Oj1NvHr3QMVaHcJo0n3fsveie0nqgKbfnAgZ2gI/qlBx
         1TLAkg+RhWhfBOA4Br01nA87CiVW+zsvrXaH1PLEY2KfSzcrVr5LAlHxouNz+q1l3WmL
         V/OTXETmtfL0hrAAaHBIAKzMM7VuGbP6TmY1Q2xm1zQf9Oi7sE3z+THcHthEbP+lEDXK
         wVsFiroo1dwR6e57Wvm4kEN1826Qquw6OUN/rzN57FtPz0bGP5JkrSn5Clvjnl8rxHrd
         zGdOfzij4Kw9G48ilKzlHGI8l1jfBVugibBIHSJBaCk9pX8sm53ITY39zTGEkqNbwKAm
         3kVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hdoWWIms+/qyzbon/agb4KlA8vANgWOl4PuSmhMukqc=;
        b=FCR4KaHmVrpEhqDXOwdOlwZe47gGExrX6HNBFvbaoGRW2QRGw1Lwv8XziQ1NI/a+mQ
         LVESVHIzP2KF39g/SWWiLIhG/Q6c+0wZeOB9OxMZdePvHc25SjkYwbzCtNysUQHgsH0H
         a2XHPZ1vR6dS5aOJWF6Hx1KwjwqCDaKQs9qWMus8lrhYttspjCqcMJGhI+mOX+OCGFk8
         t9nMw03/tFRaagM04WtGyP0PIWl+EXDgfZrSHcqQDoCoaNVNxq1z1pWgJ1cd9cMdJTxi
         MP8Y7ngNMeXbisQMKWLxQUVNzvID1UfY5vko9P0v/JyC1jMUQlZuXh7lfKpmgyDXxw/m
         d5PQ==
X-Gm-Message-State: AOAM533JgT4xpEDBgxj8hN5ViJLc7eRl2awnXez5d+Q9E38Pi5mFF5iT
	kT4gLLLkoLAXa7mNjVYH1v0=
X-Google-Smtp-Source: ABdhPJzUbyYCT7WIpfruLu2gLqMkd0TSVxCbRYnyNgqiR+iT0hyEmANHA0wW2/iw9z2XVNZu50QDTw==
X-Received: by 2002:a05:6402:152:: with SMTP id s18mr14076631edu.221.1628269082709;
        Fri, 06 Aug 2021 09:58:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:fd13:: with SMTP id i19ls1563581eds.2.gmail; Fri, 06 Aug
 2021 09:58:01 -0700 (PDT)
X-Received: by 2002:aa7:cd77:: with SMTP id ca23mr14164403edb.92.1628269081809;
        Fri, 06 Aug 2021 09:58:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628269081; cv=none;
        d=google.com; s=arc-20160816;
        b=WaaVlIJ9oBc/nvK/CNVH6q03NkWM3L0Exz7WVjXsqwkAdjBbWYwcT+DljKvviHr6Sh
         7jQDp1kzC2JB8PRdYwfMZKTb6hY+BBJsOyDRmulKCJY0bVI86owRf4+KCmfO3ZDFTUDN
         6fziVvvwPgngfGr+poF10RtVROp6R931Jv2x1LQzz7SjKBa9xuww/v1rqWliYtBJ4WlK
         tJ6x8U61un/pjfX0yD0QIrwrtCg8d5HxKIY0G5Wt2sE3jg/baxtuP8wysVrZlQwfdRFm
         NtC1KcY/IuSWOB8msawnvt/JLQ+es3yY41qlpH/rQ+0p5D8FgcXvah5qIMKdQOufwher
         uPiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EgwG50222WXNSnZDFbFFmfq8ScgcYhX4k3g5dD+29I8=;
        b=LcMPZiSY5oUhCP2OadBGRuxtOuHCPP9WPRmj54v3ATBO4r+RRyr5iOeNwzG/KhjiVp
         YCKCur5jMiixVakskZjz2Q5OAGU5MrBi8rfOak8pa7f8FXKC8nDG7yEcpCzticRvTb1O
         SIO9/JAWBcneVffAbRqjFGiH+InNlw4UzUpaIcdJ0+eCq0MxVTHcIiooPWFK/2lZyNWL
         mWg4ytqiMFLq0dHRY3cX6HZ1ybfWWJ4tN3RTJHJXxNSWBzaQoejxReOskGozbpA+43yI
         iMDy15jgG3Xvvv/05Klf+M0jXj9iDOju3GgXyQ9kxA8QPDGKGj9rAnXwnRFy3mHDISJ3
         APvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ce4Conzv;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com. [2a00:1450:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id w14si571402edu.1.2021.08.06.09.58.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 09:58:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f as permitted sender) client-ip=2a00:1450:4864:20::22f;
Received: by mail-lj1-x22f.google.com with SMTP id h17so1473957ljh.13
        for <clang-built-linux@googlegroups.com>; Fri, 06 Aug 2021 09:58:01 -0700 (PDT)
X-Received: by 2002:a2e:5352:: with SMTP id t18mr7071504ljd.495.1628269081263;
 Fri, 06 Aug 2021 09:58:01 -0700 (PDT)
MIME-Version: 1.0
References: <202108041936.52T4sUU6-lkp@intel.com> <CAKwvOdmOTNTGvGeaRKSp4f6M1PC-HQLjMoaeQU6WM9ygxuU5_w@mail.gmail.com>
 <20210806102246.GB1330186@pl-dbox>
In-Reply-To: <20210806102246.GB1330186@pl-dbox>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Aug 2021 09:57:49 -0700
Message-ID: <CAKwvOdmP1Bb0wkyUJAs-n5wT-obH56jw2zcBpT7jpV84id4tfw@mail.gmail.com>
Subject: Re: ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko]
 undefined!
To: Philip Li <philip.li@intel.com>
Cc: Chen Rong <rong.a.chen@intel.com>, Nathan Chancellor <nathan@kernel.org>, 
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org, 
	linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, kernel test robot <lkp@intel.com>, Brian Cain <bcain@codeaurora.org>, 
	Sid Manning <sidneym@codeaurora.org>, Sylvestre Ledru <sylvestre@mozilla.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ce4Conzv;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22f
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

On Fri, Aug 6, 2021 at 3:28 AM Philip Li <philip.li@intel.com> wrote:
>
> On Wed, Aug 04, 2021 at 10:18:10AM -0700, Nick Desaulniers wrote:
> > On Wed, Aug 4, 2021 at 4:39 AM kernel test robot <lkp@intel.com> wrote:
> > >
> > > Hi Nathan,
> > >
> > > First bad commit (maybe != root cause):
> > >
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > > head:   d5ad8ec3cfb56a017de6a784835666475b4be349
> > > commit: 6fef087d0d37ba7dba8f3d75566eb4c256cd6742 hexagon: handle {,SOFT}IRQENTRY_TEXT in linker script
> > > date:   4 weeks ago
> > > config: hexagon-randconfig-r023-20210804 (attached as .config)
> >
> > cool, one of the first reports from 0day bot of hexagon :)
> :-) yeah, we just enabled it. BTW: we use one specific version of clang,
> does such hexagon support work in latest clang 14.0.0?

Yes, it ought to; we're using ToT llvm to build it in our CI.  I'm not
precisely sure about clang-13 yet until the apt.llvm.org binaries
exist for that branch.

>
> Thanks
>
> >
> > > compiler: clang version 12.0.0
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=6fef087d0d37ba7dba8f3d75566eb4c256cd6742
> > >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> > >         git fetch --no-tags linus master
> > >         git checkout 6fef087d0d37ba7dba8f3d75566eb4c256cd6742
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All errors (new ones prefixed by >>, old ones prefixed by <<):
> > >
> > > >> ERROR: modpost: "__raw_writesl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> > > >> ERROR: modpost: "__raw_readsl" [drivers/i3c/master/i3c-master-cdns.ko] undefined!
> > >
> > > ---
> > > 0-DAY CI Kernel Test Service, Intel Corporation
> > > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmP1Bb0wkyUJAs-n5wT-obH56jw2zcBpT7jpV84id4tfw%40mail.gmail.com.
