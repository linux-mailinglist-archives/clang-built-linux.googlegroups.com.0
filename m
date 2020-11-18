Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7PW2X6QKGQEJJP4HAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 34D0B2B851B
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 20:52:30 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id m186sf3896127ybm.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Nov 2020 11:52:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605729149; cv=pass;
        d=google.com; s=arc-20160816;
        b=h4/i1KDr2xeWORm4/b+5UjNMu97WglQfnpjLIha1FWmjURiepcNFJWsayprcpzqBDX
         8cGGZ2PkHQyj0I/Dr4em7ZRmqeuuWd6XtuJexnTsIqaA8a+IhKPDUx5ddQXB+Ej3kKHZ
         DJ0/f0gsqaypcF0k8wPgmeLLVN4FBg2nOUKTfli928sk3boMWqdrYK/Bs7BNqPNvbGIm
         tdmF4KL6VndZ4oCqB+u2XMK+YJzSXZF7MRgVSQOWJLONAJZ/4L5s+54p9RyHa+52QBXI
         bXxwzUvVA6hnKobbyTCC5RmcHBfkz2RlAV1kGLM7hlUmoRYgRUBwKgd6wJfJ7kZpJXxV
         v8VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0jpfmSuXRUBth/Szwo9R0MKg2K3T2pIY7MErAoZmZW4=;
        b=zkmWJyVQMM7oVvzXNX5hF554Y/rzM1e/RIcf0lMtkqxzWpQPh2f50MuFjESzFTEsiN
         0oEIaW5o7WVCxYD3700F/IUNFfObBcMlJEqLImXfr69mK7QiDDaZ5Mt8KYZavLp8SZze
         OxBLqvyT3GCm0KbinAhgyGULRNdEjkZVHx5t74qm6h+NnuGQtin3nSBR1GMJIZj90pHJ
         gi12v22dJMXRoWwT84hJiBZpwMvVhZyoyQDrShG0pZAdQEKYofNcn4jFFrq/sFUDfzj3
         o2k5SVF2o9lwZaMLXPxYGYxbeis1VYcCh9MFwUJ0npuxWtP3rBkiTO/OzXB1IIXxdiCl
         /r0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RnMjbKlM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jpfmSuXRUBth/Szwo9R0MKg2K3T2pIY7MErAoZmZW4=;
        b=RUYNIkX9spEJOEdT/wpAInxZ4PzWd6wWFw/1HdyKsFBxQgtAO7UmH+33JQxoP6xu3/
         IEaMe4rIJupRT84AHUhBo8dZb9Pai9ypO6+12d9NYFCrtc9RqZ480n9kAsUb8RrHjcsA
         Tr/fUF/x5W4DbMD7NGUmVceywOuolJjSKXWQ4sgg2+HZczRJ8OzPdxfdvHm65AOatBFB
         4O3654dw/gVtjiWnbSPvFuxC0p6vQ0VVlxecRkGeN0m3PvigS6oURG8raMn4khGqOn/L
         kMrZUw/tjYWqTcIN/M0rUYYYw6w4nilppFfYUOUrFfXyLaCybae65fz9fFLz5EX688O+
         oNKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0jpfmSuXRUBth/Szwo9R0MKg2K3T2pIY7MErAoZmZW4=;
        b=M2T5ca1vkLgwlziMf+dTDyFg9bven/4ZeLMl/cbs1name+ls/3O933tNa0aJnhXz5D
         Jd6yeDm0gZfGRT7tRdLC/UBlGR3lKiVKyX8FwEekvpmM20MF3Ykgm3gY8AXSlGXTMGMi
         9VPbnmaizYMxIE+KsGeReIU153ANUBFsaze6hAa/S7xGsWWvuNIY0UtpJk9we/OhDYT6
         bTPwy6RfJbyNnjL0N0Ni4cMargoN/5WjGXkTIsP0Tq70DjGXTomRn6OUhpeTA+f8g34E
         0/efI7VGblUAanEjhrRyFeJG9j9Te+iRktOUl4BPKYrZIIGcQw3ev6PcFID8n6oeRjBD
         SX0g==
X-Gm-Message-State: AOAM533AZZ+Z15sZ/yVMVLnhpa/qMWu8JnYtdF5sL14vrUDAgIywjaff
	C/GLVIjHj7EFktwXrFp9Qrg=
X-Google-Smtp-Source: ABdhPJxVES/Umt7zo+s5/ZwNj/xGdOXvfo2EQDNPi7sAfSvFewtw30hM01s5mksT4lRgVsdwChXbUw==
X-Received: by 2002:a25:6ec3:: with SMTP id j186mr8928486ybc.165.1605729149200;
        Wed, 18 Nov 2020 11:52:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:84c4:: with SMTP id x4ls419581ybm.6.gmail; Wed, 18 Nov
 2020 11:52:28 -0800 (PST)
X-Received: by 2002:a5b:c0e:: with SMTP id f14mr11805511ybq.83.1605729148722;
        Wed, 18 Nov 2020 11:52:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605729148; cv=none;
        d=google.com; s=arc-20160816;
        b=PMvshYy0dDzSCwGlk+TvBtqO3+zvTTyh5z8q0QaBw0ngF2cHs9tr9iagglUU+/grav
         gwD/RefA9jqbLIemJb2rC3kh83PLwwJa/sTRuH7uZ3efSr6jw5uJ9pvWJ8pNmPb1ze1J
         sQZw42G6Fuu5z/qP3V0QJeSwD/TKLayORW2IEtvc0+PpCyEPN7qxtMd1GEFQGeYc8X9Q
         q3RVWODZTMMaed77tH01/gA9Yuk8MI+0f/3lNCscGx75j8ANUi8WULCClJrvBied9vcI
         yFdKthw+v5SbU9EQ3Z9k20jCiGFtGTZLqZdYkn7bpl6Ogx6XciteIKbaLq2mE+Cmymcs
         O43Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M4piJ3ylJUFdPdZ2F6myDl/P6I4u4Ujh7Hd5kBHBuzI=;
        b=pkO9MX21/8I4S0LeSzaevFV+OwXmnh3ySixRHUbnY+KzJ3dZwH5C/qxt6OxDbGURjU
         LwcNen17aNr/PfhiBj2dJbyJ3hsxM5xl6eAcuGsIe07WjwvOfsvjOQHKgtRJLeb6g3as
         XTbvCkbgeySRseihoD4ZacFRmYEcUGUzffOzWK5tDgXL3rfFQUuQA8e2jhtN1xZDQPmI
         bPeOzUwCFlgUntBjeZiDMst8la5fewLX9tTd64tM8r4MuJSZvz5snNjLcuop9vhsitph
         B/S0KNqleikSJ+n3gBk+yOFSMB2Vl8545YNUGON8tp4pqK3dTT8BO1XoHJk5KbAf0MZF
         ND5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RnMjbKlM;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id y4si1806814ybr.2.2020.11.18.11.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Nov 2020 11:52:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 62so1928268pgg.12
        for <clang-built-linux@googlegroups.com>; Wed, 18 Nov 2020 11:52:28 -0800 (PST)
X-Received: by 2002:a17:90a:4881:: with SMTP id b1mr658403pjh.32.1605729147763;
 Wed, 18 Nov 2020 11:52:27 -0800 (PST)
MIME-Version: 1.0
References: <202011182008.u7jsMtBl-lkp@intel.com> <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
In-Reply-To: <CAPcyv4haEaWN9f6eCpnQEcjo4kcGwYp8dcs2PLDnvhG6wj8cDw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 18 Nov 2020 11:52:15 -0800
Message-ID: <CAKwvOdnJYhs1vO8QmfPBdd107JRGfBQXTipCOZnaHe0=qSi0dQ@mail.gmail.com>
Subject: Re: [linux-next:master 5868/6773] arch/powerpc/mm/mem.c:91:12:
 warning: no previous prototype for function 'create_section_mapping'
To: Dan Williams <dan.j.williams@intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Memory Management List <linux-mm@kvack.org>, Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>, 
	Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RnMjbKlM;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::543
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

On Wed, Nov 18, 2020 at 11:22 AM Dan Williams <dan.j.williams@intel.com> wrote:
>
> On Wed, Nov 18, 2020 at 4:27 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   2052923327794192c5d884623b5ee5fec1867bda
> > commit: d106ad47e292fde47fc09e16a2ddc13609ff2ad1 [5868/6773] mm-fix-phys_to_target_node-and-memory_add_physaddr_to_nid-exports-v4
> > config: powerpc64-randconfig-r026-20201118 (attached as .config)

^ randconfig

> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2613fb2f0f53691dd0211895afbb9413457fca7)
> > reproduce (this is a W=1 build):

^ W=1

> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install powerpc64 cross compiling tool for clang build
> >         # apt-get install binutils-powerpc64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=d106ad47e292fde47fc09e16a2ddc13609ff2ad1
> >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> >         git fetch --no-tags linux-next master
> >         git checkout d106ad47e292fde47fc09e16a2ddc13609ff2ad1
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64
>
> I get:
>
> Makefile:597: arch/powerpc64/Makefile: No such file or directory
> make[1]: *** No rule to make target 'arch/powerpc64/Makefile'.  Stop.
> make: *** [Makefile:712: include/config/auto.conf.cmd] Error 2
>
> ...changing it to ARCH=powerpc I get:
>
> Assembler messages:
> Fatal error: invalid listing option `3'
> clang: error: assembler command failed with exit code 1 (use -v to see
> invocation)
> make[1]: *** [scripts/Makefile.build:283: scripts/mod/empty.o] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1199: prepare0] Error 2
>
> This is on a Fedora 31 host.
>
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> arch/powerpc/mm/mem.c:91:12: warning: no previous prototype for function 'create_section_mapping' [-Wmissing-prototypes]
> >    int __weak create_section_mapping(unsigned long start, unsigned long end,
> >               ^
> >    arch/powerpc/mm/mem.c:91:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
> >    int __weak create_section_mapping(unsigned long start, unsigned long end,
> >    ^
> >    static
> >    1 warning generated.
>
> I do not see these errors with gcc.
>
> I feel like clang errors should be flagged / de-emphasized when the
> same error does not appear on gcc.

Note this is a W=1 build. For this warning, you either need to mark
functions as having static linkage, or provide a prototype in a header
so that callers know the correct function signature.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnJYhs1vO8QmfPBdd107JRGfBQXTipCOZnaHe0%3DqSi0dQ%40mail.gmail.com.
