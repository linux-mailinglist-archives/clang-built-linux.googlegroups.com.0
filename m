Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBYH2ZL4AKGQEBXUNU6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AB2224A0B
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 11:14:09 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id g124sf11593989wmg.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Jul 2020 02:14:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595063648; cv=pass;
        d=google.com; s=arc-20160816;
        b=uhxvaeunkkM9Yy5ECk6u/sAoybaerFqjILYwAfYrQ/6tocxjcgvw0k6ofVYeDLUCaA
         8ynn3vmrXkcPM43TkGjrxeQg8TpOZ4IWcpGF0X5BGqu5IktOpRphMXfFT9DSuvW6deym
         12DBHX5cfDA/5UYs1M+rCzlfcMf76RFAGAgPUqjY0Ngf2+YPqaqpIjRtVtwJ4GfyD6M1
         MoRc7BNpR+TribTZN6XY9buX7m3m8zf2SXMF6lug2T55wCVA+IUjVc0YXMYDrQRITRUE
         SRVoWnJr+g26syQJJqF2F8NBUUCh6pIhTPp6mjUTByN3XoWugBvHisZ1G2JXJH5EMgLI
         kjCA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=H+gCBvTUiGG5PAteFqxIGidoCKEQ08kY7Utf0a94fjE=;
        b=nECmLc+6DtA36oo0/r4UAM2su7odt2qcBOWlIV2AMFY2KZfikugXWKl/Nrw9mjwPPE
         78Pzg6X3LmiqioAj+EwBSiA2eMdLAmULrWYrsDC85QEP+i1UdW6POcMzSvKThc19R5cj
         x6LMfnRdwv5uIUSedF3+jjvjAVdynTCDSq8sY0Lfgv36LYK5Gyx8SLWHnQWQtig/vG6s
         obVP7qW/ISc9/C0bbNO313OWf902m3Bl+jqSczNgYgD7XQGtHqVMYbGUZyJzdQ1ti/lp
         cqlFQVmy0PKHW5ogwM9DjLrgsUKq2UgCkyK0KL7Lh0jrZv6RbzfcNZHhRYzIAyOgxan3
         /ikg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H+gCBvTUiGG5PAteFqxIGidoCKEQ08kY7Utf0a94fjE=;
        b=E9MaeP+xqJX6oU5b+h9H0/efmmrVliAlR0uO+6zHBZ3cr1CC8fw9oGatkEx2kx8DnV
         J8+BDmbmt+zyx5uHvnL+lSsuKbaVnnt9FKgkDw8hbJvhnrvgBsUPa05yGeNAEao/a4zB
         frcVepLn4SA5LP0vbzXaRE2kxzfkoGuodZUB7fnWMY709rHRSTAI5uSfyAD4LNcBup0H
         d1qWL1/vu8JSRLOE6VvQJjKhXDvnu4PoqQUBe2wRcBgyhwn6lxAvMJOftEUM3j4hq/N9
         jfbWVWZLC8b2YJQnhIde9dVDtQElKwfNmOTH8cBs6LwCiBHlqPVsHY9YsQIla9WnNXOF
         OM9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H+gCBvTUiGG5PAteFqxIGidoCKEQ08kY7Utf0a94fjE=;
        b=fVLrfj9Mkpod03Zw7Js4JaWMMMae6jq6qBd4eObH6ic3n5Jyr0Lm/22NyOk4713q3A
         3EiHmjMkzb/sL9+J35z6buQSA2Mr3F8TJdhgIB78ef8kixwZiVz9b5RP1MHtFzNPV97T
         +VpqjK2F91/kU09r3ksx5KpNGgLd643Yogn9zIRxhTZ7aJZ/Iv/6mpFsOIwAvZsY5zG/
         eQOGxj8DPekUAUtNCLFXbyA9tj5V+QehcuizrQivufwY1ID+PJMJcTpaNWzWzEDRFgn+
         E8nEk1+qSCvL7GnZEuAvS4rA9InAHmCYjfn9Xd6pMk3XxzcPPtDinmJGEg6OWFE+KCos
         L2SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530v8Az3Gef7lQFIodYuj8VeiBIKB5q4LQ/Fl/jQOwhvVi413yHW
	hjmjSWqTXsJfsdC/YYOlxmc=
X-Google-Smtp-Source: ABdhPJw+sfXhT2xXmBajnFAvKc6njCy1fUrejKRbzMApwKJ09pgYlplddjSYmMNFInyJYFIn5BVteA==
X-Received: by 2002:a1c:59c2:: with SMTP id n185mr13526167wmb.104.1595063648730;
        Sat, 18 Jul 2020 02:14:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a94e:: with SMTP id s75ls4902614wme.3.canary-gmail; Sat,
 18 Jul 2020 02:14:08 -0700 (PDT)
X-Received: by 2002:a7b:cd09:: with SMTP id f9mr13556801wmj.160.1595063648257;
        Sat, 18 Jul 2020 02:14:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595063648; cv=none;
        d=google.com; s=arc-20160816;
        b=MA99WvvqGUNsnR94vLFoJ0KMEJnI1L5PVo4H6QVnnLDobUHnYaASwdHhArzR5OYlg0
         kWCRZQVJBNsqIbu/HYz/5hLvEayHXcO0MJRfYfwGptt8/uEZozfrTIxV0ttwuWmFHVaC
         0J690hf/3Xt7SzKSnv7+axNaAcoDrGd8lzRzQtSvhlfVu2z5kj8+IwsOQ6+aAg7tkbHA
         MBCs253aK8Idv/N1+rLQ9XlavuHibc/Q7se4jd/KS1VIAdSN0I4dAr9oYFVvPdAFDpGO
         kkVsMrUmZNEcPzpgzG13n5hRyYuo2adPDNiGNeYFvzJeP7SYSCs2jbufPZ9xLUMGjN0T
         jQ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=QdKdIFIquV/ToRz1CvGW0W/6ncNUtQ1+wXbCAUrSn0U=;
        b=lruD60c0CnJiLvdpea4Ae//IbEgk6G4Aisx084JwaxmwaT/dLjrTYf0B3pB7bXH1AP
         eU3wnId2zgeEfshAr4yVNLntVe9R7yIGiFp1WVgS8bA1PRqxgXHVOW4HEWRIecufL/Q0
         vwVA9AZk06x4C/fDJHmaxpjteNbzu2P4wpCq5pE4jCvYaF4gZB8YC/fys5DTJ+zvDijj
         no0WKOTPSSVZVlgwY/vUBnwkCG2AfkLACPKuwe/jWzMosOS01LfjdzhWl0fgeirH23hF
         I7E68E3BCPrR8AmWlgSxteYr82eG3AmzD3JAW+vt8HaU9nI8Yg1jnLGwATPD8fTubECB
         13Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id l4si599124wrw.2.2020.07.18.02.14.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2020 02:14:08 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-qk1-f179.google.com ([209.85.222.179]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MaIGB-1kK6nK2jO1-00WErl for <clang-built-linux@googlegroups.com>; Sat, 18
 Jul 2020 11:14:07 +0200
Received: by mail-qk1-f179.google.com with SMTP id b4so10958059qkn.11
        for <clang-built-linux@googlegroups.com>; Sat, 18 Jul 2020 02:14:07 -0700 (PDT)
X-Received: by 2002:a05:620a:1654:: with SMTP id c20mr12589219qko.138.1595063646520;
 Sat, 18 Jul 2020 02:14:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200624035920.835571-1-natechancellor@gmail.com>
 <1bbb6956-d9de-e0c8-5b45-20b6fecc2189@infradead.org> <CAKwvOd=5nE6fkwp8iw0JqwQFp5KcUaC7RyEf2L6+tkbp9smsvg@mail.gmail.com>
In-Reply-To: <CAKwvOd=5nE6fkwp8iw0JqwQFp5KcUaC7RyEf2L6+tkbp9smsvg@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Sat, 18 Jul 2020 11:13:50 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1JjQCB9HdRE6chvA5ekOGWUVpSDdPkgqQ+RGz=y06ong@mail.gmail.com>
Message-ID: <CAK8P3a1JjQCB9HdRE6chvA5ekOGWUVpSDdPkgqQ+RGz=y06ong@mail.gmail.com>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Geoff Levand <geoff@infradead.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Paul Mackerras <paulus@samba.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Joel Stanley <joel@jms.id.au>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:cB/vT1+yDf7L1dYEI/L1urdyveL25NMuFIW5pcUxy+lxoXn5LvK
 YSSJ5n8AbDEG9pAJMXK49Wrfic5KOdo5+kP5ecYQq/zoSob6vnttotNWv31kuBe5Gzio9PK
 FmoBlssGeqsbmUAZU8kPaOeZVM2DXxhZHngxkfo4H+nDhhinioTgjojlGmrAaW7REMNJgHb
 BYzO+r/pEVmgB4QVt4CkA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:z5vbQTFMtYw=:LNf0O0r+FakYD3cxvL/16K
 T9q14DjB/VTeGJKIW7l6RuHZ0AtIYzYAwF+iUdisXMnNlJsUTsNYi3qJC1N0a5uCrD36YdryE
 YQqISnXe8pgWstlLmnMm+Bo0c8TAfyr0E/mWycNbsFba74tE3kYZJnqIMiftiundqsBHVcG4X
 yBaaZ3Q+9N5IoHq2bDaGgG6p2zXX8Z3wqeH0pjhH5d6l4s7gcnDIrHpvfKrzKEJgsEWFVjQ4Z
 tDQGyaK0tZOdgSvmhxiwGPflj45PHzinDj+G6OyjmNEvetvrazdehcMdRZ3/8iBXndOQwto1z
 Q7rnVQX23ZMI4oPHd1K+U0/wddZx8vixJiviUw+W7Fu9bual/Y64ZvpU1AxVd8GTvoB63vcHo
 IKO2EPi2ETs6d6bqc6TyqtwREZm0oGH2hTtLofgfAxaN8T1/IQwuBIuzsV/PltDFs4Ed/NJov
 Hq+c25KyJp0MNiDNjD6poP05pz6fKDGhDWNlS2XQCyIKM+NNJnMse2+20w2ljbH0q5omt7gei
 foP6EipgqUe4agCVqJF9bsy5C0upU//+R5dmq+4M7qKHFSeP/4/yD4uIa2q5ig8o94ZhfUIXT
 K4L/BeTuy5lvHzdFTCmTbRQuDayxk46POtNcTJP32ab2t33Z2alKPdOJTT/APq7+4gxf0C5kX
 iL3p2X4s4Kru2c4H8aZYX69UlAI/gL84OXXZ9pjEGrbUFwNDrtuKkw+ilb9g/NL2zZESmLLTT
 lxIMe4t9IX/ZE/atl/SUDOk39/fsiAXNrBZ1YwFzASbEvnBimf5WmxKEz555Oy/dgMtud4Oz1
 X+dBWNBd3l9a7yzN8jHIjvHNGWLA5/PzLjp/IdBDj4W/XdqKhDQ73RHzED1OIO/OVYHP62hdp
 kyg6K48BwMSwAZKgIZpY0pBe2ftYjwdl4z4Yl7dS1CtK0z0CU+yTr7ptrzHc8IBx0upfQEFrj
 bcGuN9DtaqnpEFVD1dMrH8N3IvB/tN733WsHFT3NBjyDgC+huI33C
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

On Thu, Jun 25, 2020 at 6:32 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Wed, Jun 24, 2020 at 6:19 PM Geoff Levand <geoff@infradead.org> wrote:
> >
> > Hi Nathan,
> >
> > On 6/23/20 8:59 PM, Nathan Chancellor wrote:
> > > These are not true arrays, they are linker defined symbols, which are
> > > just addresses.  Using the address of operator silences the warning
> > > and does not change the resulting assembly with either clang/ld.lld
> > > or gcc/ld (tested with diff + objdump -Dr).
> >
> > Thanks for your patch.  I tested this patch applied to v5.8-rc2 on a
> > PS3 and it seems OK.
>
> PS3?  Folks still have ones that can boot Linux?  Those ****ers took
> my Yellow Dog Linux away from me; I enjoyed depositing that settlement
> check!  Hopefully by now, folks have figured out how to roll back the
> system firmware?

I still have the PS3 from Hong Kong with original 1.5 (IIRC) firmware
that I demoed at LCA2006. Haven't booted it in at least 12 years, and
never used it for games or movies other than the free "Casino Royale"
they sent everyone.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1JjQCB9HdRE6chvA5ekOGWUVpSDdPkgqQ%2BRGz%3Dy06ong%40mail.gmail.com.
