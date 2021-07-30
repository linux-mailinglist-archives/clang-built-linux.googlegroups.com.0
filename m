Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBUFPSCEAMGQESWXSF3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id C91393DBBE5
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 17:16:33 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id ep15-20020a17090ae64fb02901772983d308sf10117100pjb.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 08:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627658192; cv=pass;
        d=google.com; s=arc-20160816;
        b=dCud8bWFmrovrFkekxOZPRJ+CrhpbyQMdGBjt/SJH67IGkuJy86I2kUoeoQ9WVCjQE
         aPuG37rNkOb3udm6lCFdqeibpZpwRipZ/aJthVO09vk6qSqQVGRZhj3hXEdRYD+O9PMe
         mm7OIsVEFqchVNDzMk59omXtdAX2w2427gBalKSUWuvu5CpjEe8WLxPwqOvXT7WIbs9v
         BiI23EqjJgywXbMss6E/0Ir+cI1tZ335txP7FXWEx4vQnIoda2TUevEbVUhTvhBKHbSV
         lWMO9DRiX4t7ccfCmBZcNONnbQQn1o5kREdPTXtq0BJRCi9khZH56XaJdmJ34/uc5Xmh
         Q9LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=cSWSug9ng+FCgbl72WoVjAfA+ywlbP4PTHwU8ylW68s=;
        b=k11DDWO+HhShal75wrngRo5SWkBV7pnvlyqzZGg1K8sB4/TbiY29KqxgpRzpUd/nlX
         k4RbKVULWSGiUCttCMoS2ioYKb1wxwoW9zwuMdZMw2CMHakaHsjowTKjALJd0ctzuGtR
         mVDGfS4xKVcj7BwiumuRUY9v27j0Ob061MOP+Wxd5dFKIelMMeiRb2noE/KirJ9AMTon
         PP4Crtz2s6PdsNeBXWlK5YSia+SqIsM8/ttZyaLrPgqgGkqgMYpDGVMyNNYuSibu07eg
         s0zUXYw6JdPcDSybKZYynBgAv6TI4AI+huvdld8rNmCNxIgxbo2eron9YkCvMGII64wb
         TIUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="t+XmJm/I";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cSWSug9ng+FCgbl72WoVjAfA+ywlbP4PTHwU8ylW68s=;
        b=pwWIITAJQ20dkv+/YEr2sERXwyaGr/HfdoE4fqvCv9ZcoGNoUNTDsNDbKuDo6X5lO9
         d7gWoNkERF4pLzU25XmynX5CJJqlZoR1PiGl06RGMBDDvkiEQ4OUywKJSYJuauW5u2EG
         40CtBSl6qloMjbYaQdxH8dsJHAddajb4zWZbkWXfD1n2J4l0nOqk3fZLh2P5VqyvGemy
         /gNUKbFCg8w43wxJzR2QVNvXbJrYlwIehVV/TDTN8i+9HS+NJJhjC6Z+FyX41/fR92HH
         ER6hF07NFV6O/lEyOoJiW4L2pI2mQ4GD4mWjyy/xpMrMnpO7JFLluHBOkR6DoOeeqx1n
         E+zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cSWSug9ng+FCgbl72WoVjAfA+ywlbP4PTHwU8ylW68s=;
        b=qMWJPGKFnenERDIUQUI2Y5nKp9YVfHHjPZrjF0nRKru0wpwXVMJvH0SNYNFWhQrEk6
         XPb6lPWiHAsaOW313yvQ5wPXbFY6XBkWcVA/oMa8VpmKoD6h3DGsTY+FVX4lBw6Lr2o0
         kqd1RFm5t4nhXsDN4rxv2V1/kTRYMv2ssyFhaJ9R3QO+Dsr2IfOyjZ/wGN370V5mPFKL
         F4omlcUaskSuvSGAz+MRzr8KFrwib5oRReleUEfmgGHsbUHH3j/AVyYZb1vHTEEGJA6P
         lHaPSrNQGXJk3+m29o9ZMRvbZazrXZDxPTigFJEYrDHML8lhNqR/pn38xo1vJXw7bPI7
         yfPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533XAlyanmFoAMJg3aU4vatUbULkzEto5EFBoCd/SJ4OTMngV643
	o3z8vgc9vtW3GrAOy/DNXKI=
X-Google-Smtp-Source: ABdhPJwKm4Yu3ibnGrBRnboHLvRHAqVd5sTtaAfD9Ca2otYLLCIkFDj/mmT9yF2S/h53F0OmfHCD2g==
X-Received: by 2002:a17:90b:4acf:: with SMTP id mh15mr3639096pjb.196.1627658192439;
        Fri, 30 Jul 2021 08:16:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:a1a:: with SMTP id p26ls834333pfh.9.gmail; Fri, 30
 Jul 2021 08:16:31 -0700 (PDT)
X-Received: by 2002:a63:dd46:: with SMTP id g6mr1769727pgj.347.1627658191827;
        Fri, 30 Jul 2021 08:16:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627658191; cv=none;
        d=google.com; s=arc-20160816;
        b=oXiYCVNe3Zj+1rMNP4+IaatwnXpOdZLn3oEMEse+8xndqLFGFvkHfYpSfFCjejN+2C
         ZfCQndAyJUFYJqjZk6m0wlnd9Q1BlMbbSehyMAC5kQ295biBp2+bJxRgAl4BVGQ1I5P0
         QdfL6otVhUUH+PgFTUhG82rxJdoAYO1fjTCVOf8HXpggvdxTo9zXyhc4MXB+aBiTpSkl
         YEHomjOliBCNbmOFCjaavj3HcAg/kj3oYi03L1Ftzw3Y1nVJmM1/UB+RlexNczPvvmKh
         V02WxdhxPDVfGu154xE0xX3SuhiTaXrvVaOzW8ok/b7qcnHCI73b37MjiJ3bDzXMaUHR
         8kvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=rwXESo6Zwmg+wSRT6LqVZ2Q5mAY+xa2YCUP4gKaEPA0=;
        b=mQhj28KzzsUrHHHmgwt8fNQkJ2xJfOxAaN/vnujw926Jg+ye2T37rWrtRdL67iIk9L
         MnY8/9hTkR/dtPGClfHJKiVp5CmSKBI0BI2eLX7UDOYbvmx431bDuflQ6+F6FpahHByz
         OtXUkLai5nVmHBqLAnN4q62+in2oTtSaCilMFVH4B5Xzl3khuBDvSbYL2Hm1vCpvHxgv
         01A7yd6zMWQRz+1YkDQW0SQwTEENSJuXUnHZ+BDG2UvWFAvvj93jVtrXgSQtzWkQydc8
         uVOqBBOkX0DAOER4M4L2zTAAqKvIMLRVtJGkjqPDd89tF9EPnu4IYOqUWCYGzZbM1eDB
         pX1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b="t+XmJm/I";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id h20si72036pgm.4.2021.07.30.08.16.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 08:16:31 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 16UFFx0M022071
	for <clang-built-linux@googlegroups.com>; Sat, 31 Jul 2021 00:16:00 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 16UFFx0M022071
X-Nifty-SrcIP: [209.85.214.181]
Received: by mail-pl1-f181.google.com with SMTP id t21so11405104plr.13
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 08:16:00 -0700 (PDT)
X-Received: by 2002:aa7:8593:0:b029:32b:c173:cd96 with SMTP id
 w19-20020aa785930000b029032bc173cd96mr3341045pfn.63.1627658159170; Fri, 30
 Jul 2021 08:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210729165039.23896-1-ndesaulniers@google.com>
 <20210729165039.23896-3-ndesaulniers@google.com> <44117d0c-51b7-1f68-f752-ba53de503b14@kernel.org>
 <CAKwvOdm0xs4ikb0K0_b8Az0T=Kxu_-6AHjWHOhjsKZb3hTrH2A@mail.gmail.com>
In-Reply-To: <CAKwvOdm0xs4ikb0K0_b8Az0T=Kxu_-6AHjWHOhjsKZb3hTrH2A@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 31 Jul 2021 00:15:22 +0900
X-Gmail-Original-Message-ID: <CAK7LNATbbHosb7uB53HPo3BpdFH_g5YAKkn1ouL=ymHb5nkEXw@mail.gmail.com>
Message-ID: <CAK7LNATbbHosb7uB53HPo3BpdFH_g5YAKkn1ouL=ymHb5nkEXw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] Makefile: infer CROSS_COMPILE from SRCARCH for
 CC=clang LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Miguel Ojeda <ojeda@kernel.org>,
        Fangrui Song <maskray@google.com>,
        Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Christoph Hellwig <hch@infradead.org>,
        Linus Torvalds <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b="t+XmJm/I";
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org
 does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Jul 30, 2021 at 9:19 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Thu, Jul 29, 2021 at 2:00 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > While I understand that the LLVM=1 LLVM_IAS=1 case works perfectly fine
> > with this series, I am of the belief that making it work for CC=clang
> > LLVM_IAS=1 is a mistake because there is no way for that configuration
> > to work for cross compiling without CROSS_COMPILE.
>
> So with v3 of this change, rather than:
>
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang -j72
>
> If you wanted to omit CROSS_COMPILE, you'd need:
>
> $ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=ld.lld OBJCOPY=llvm-objcopy
> STRIP=llvm-strip
>
> or
>
> $ ARCH=arm64 make CC=clang LLVM_IAS=1 LD=aarch64-linux-gnu-ld
> OBJCOPY=aarch64-linux-gnu-objcopy STRIP=aarch64-linux-gnu-strip

or

  $ ARCH=arm64 make LLVM=1 LLVM_IAS=1

still works.




> That's straight up worse IMO and defeats the purpose of "shortening
> the command line," which should be the goal.  Not "making CC=clang
> maximally flexible."  We don't want folks generally using CC=clang;
> preferably they'd use LLVM=1.  I need to rewrite our docs to make that
> more explicit and straightforward.  And if folks would prefer to use
> CC=clang for whatever reason, let them explicitly state CROSS_COMPILE
> then.
>
> So I agree with Nathan, and hope Masahiro will reconsider that perhaps
> the v2 variant that required LLVM=1 maybe makes more sense.


We can always infer the target triple from ARCH unless CROSS_COMPILE is given.

Doing this all the time makes nothing wrong.

"Whether CROSS_COMPILE is unneeded" is a different thing.



> Either way, I need to fix the comment in the new script, commit
> message, and docs, so v4 is necessary.
>
> I'm tempted to add a rewrite of our docs to say "just use LLVM=1"
> front and center, then get into finer grain details below, moving this
> second patch to be the third in a series.  Let's see what Masahiro's
> thoughts are though first. (I do appreciate them, even when I
> disagree).


I am not sure about that.

LLVM=1 is a very strong all-or-nothing flag,
but technically there is no reason to force it.

(At least, target-tools and host-tools look
independent to each other to me)


When you send v4, one more request:
Please drop LLVM_IAS=1 check as well.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNATbbHosb7uB53HPo3BpdFH_g5YAKkn1ouL%3DymHb5nkEXw%40mail.gmail.com.
