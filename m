Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNMGY6EAMGQENTFLGQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 079D23E5042
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 02:07:19 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id b1-20020a0568301041b02904d0a18787d4sf6828629otp.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Aug 2021 17:07:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628554038; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmcbkK2R8qyNBvSeW4YMX6Qni3Nj+6cniBQI+BqMUbmHlTDCIdZAxUWzAvhQRLXm0i
         CiiRQUPuOJvsQ8Um1pGNQaRaUzTcJ3kgR0FYXydZIXDH7kegoA/9516VA4Fds+j6ZPh6
         69fZ1caS/RSRqcrUkwMQSRWQKfxOfEtxd6HWGNWBFejgIEP1FukrP1MSVt5MJiIZzyms
         Ox9/+NnvGWD0pugNO3Zmym1ar/ZaIzWohuT5Bz4a00fhjMAYhO1/osNBVeQFhZwuDJWF
         Cfug65ix1YU9E/o4zhAwFpCe78cIxr39rw4Hvegd2k1a4aWHsWH1p1irK6oiRnFHNbiL
         KLsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=3pBlJQws5q8i/XkSsNbzleO7tuA9E70blrfdqkL8yoQ=;
        b=TekLlM3M1vhFFngLADfAOLfvZH9cY6NHbCAok5xMK/ilU2HOve3s4jyabGE/U7HLXB
         6vvmVnTTvR1qKbMQDE6Z4RoHIKmNYNo3Wll0Y1gJc1GbQ+e07yFSH5Oe8567wN0Kegpa
         /PC6qOikqA7D8fcaycHNxcUMMIXODMFfZ9FqzOegvGo0JjpnGEelTUf82jQmHW7eYefy
         /RRwtQ6aND4xgyGqSsoGaYjUG6v2AV4RwE4Ap+cmr/2eXViGQtZW7PREt7wp4Iwyj6cp
         hfZOFDrr42AqBKz/gW3/ReSwfNB59lkUXACKMxWADLu4fbmfjrGr1me1StumNXUB8Ky/
         lx4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qpeaZfj1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3pBlJQws5q8i/XkSsNbzleO7tuA9E70blrfdqkL8yoQ=;
        b=OXJH/Dx5A05xDYaCLC97khR5V34N4nLwQHPFDeDhJIlNxRMbHO/306SSNlLezw8DAo
         a9GmoB8Q6z/+YtacOzwtdL+bdFKUhArQxVFOTJM+LTTDLwZnDmt9+KIf1UiTVVYWhfxE
         vzk55A7fGLBKhMeg5/c9fS+a10wx8yFxaU54th8DIukaI4Rtmmn+b4IEwG/sMVma4e7m
         Zx0Y/4q0nnBOZmFuQVUCN5kFBLFzqJyA7wrQHLt5p8+kTxkTtT8GH966j3NLCrl9irSK
         HTVSFNsAZZlG19cTWg76+UdEG8n5yYW/FLaE8M5oVDQ/3JzPVoYXehIcqobuoH3Efco8
         whpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3pBlJQws5q8i/XkSsNbzleO7tuA9E70blrfdqkL8yoQ=;
        b=qk1+sgum1GnUAlKQzmLDsETYbJP2hDranXd331WHcslbk9B/Civ7fMpmedaoWTvzEw
         9+A3KGdcA2dj1EhJ5A+KMMVe9pL2S8Fh6RF2INBiT53hijxVtCK65+x/gOmy+GeKS4/B
         d08CnKL6Y5Hpqpa91AKss1es8A4RXTAc+DCkUttX4xb9MZWkMuyVmxmvZ8at4flaDj4y
         +DBxUoWB8QlFD/2v7HnhQnG7lK9efAtltLaKP4mFAHuJsaRoDPFEpM7BT05bSs9+4YC9
         EA2BidXD0MFT+rbALSC10pef+cOtdqrI14/mm4NtPbqu4nl8ZgDlma7N9oiNDSGg9CWd
         306Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qECkWW11DQMwqnKXsOttZJSDOFpvKPf3j4tuzAdc4v6jYRGo5
	el8T4+s4aSKjOCNNuHfx17Y=
X-Google-Smtp-Source: ABdhPJzoriHWK6zc0i+58q9fMkPfxd1p1u3IuneBGLiMO/PGeFgl3o4/z1F932PvIbhW+KNaY8bTTQ==
X-Received: by 2002:a05:6830:544:: with SMTP id l4mr18885343otb.164.1628554037893;
        Mon, 09 Aug 2021 17:07:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:1688:: with SMTP id bc8ls330699oob.0.gmail; Mon, 09
 Aug 2021 17:07:17 -0700 (PDT)
X-Received: by 2002:a4a:9cd7:: with SMTP id d23mr16741337ook.12.1628554037533;
        Mon, 09 Aug 2021 17:07:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628554037; cv=none;
        d=google.com; s=arc-20160816;
        b=VtK6cm7ddNErpX2LGq55QGq5MdbyypSLYXj9n+jYphseAECWz3d8XLUBvpMy5A3b1y
         B6v2Rhu7jxfc206ktRTUoPeTj/7fDTUXaraiXpSqqf5bI+0kzxPLEvgZmutSGFogOVVb
         FRmSU87eoxHyaWXV9iYc+rGYdNgfCym/CX4bw50FRgS0/ptvPCPjHfOOIw1Q47tN2jvH
         vmmzjruq9QBEsbpMh5R9nJmJ/u6Qk3KUzgdSB5VmeBbb5ugF+pMNOzA/wdxtnXRnPtwq
         DH16qA4VxOc2729mh+lvcT0+lz5CwSrNDGkTjXm9u38K66jZReDR/6EMr+O5Lt64zefn
         qbcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=YHT1wdO9BJeEnVYWadet580A1QtIyBQoR9aiFtvfZGQ=;
        b=AuhFraUMTF8n+URgmklwbFKPk93fGsN4iz+aQmdVg9M+CgQUS9XCbyi9UVGKMVnnvw
         MSEmmyrkyWE1s5JiQttqqJxD2VQlYe/2ZJr4M6mEFsvMmSLI2fSvGMQQdv0slG7h8xmR
         +0n0IHiJ9rs8YHs7zv6qiJDVuOV2Ku/9HGwau7dhouX8BOxyRcRjAOIVQQT33jj5VErC
         oqotaD6XoF6Up7Y0hMVuf6f/kxVsdEFvbebBalZYJ5RRJ3e9LBatbCcvNhzrgTKO7zqX
         7c2A5vt1NoJ/Dkd4lfoCHyKHnhQwifNVU5XBLKQ32x/eM+dLUvCNWaQEU10OyCfp+IWK
         excA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=qpeaZfj1;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id j26si1058224ooj.0.2021.08.09.17.07.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Aug 2021 17:07:17 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 17A07252029984
	for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 09:07:03 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 17A07252029984
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so1663833pjr.1
        for <clang-built-linux@googlegroups.com>; Mon, 09 Aug 2021 17:07:03 -0700 (PDT)
X-Received: by 2002:a63:dd51:: with SMTP id g17mr282732pgj.47.1628554022572;
 Mon, 09 Aug 2021 17:07:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210806172701.3993843-1-ndesaulniers@google.com> <YQ2TGPwjvn8w4rKs@archlinux-ax161>
In-Reply-To: <YQ2TGPwjvn8w4rKs@archlinux-ax161>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 10 Aug 2021 09:06:25 +0900
X-Gmail-Original-Message-ID: <CAK7LNARitJhPF5sggQ_k2885TSS3VbKQ0APAE7G8ANsYxxmz1g@mail.gmail.com>
Message-ID: <CAK7LNARitJhPF5sggQ_k2885TSS3VbKQ0APAE7G8ANsYxxmz1g@mail.gmail.com>
Subject: Re: [PATCH v2] scripts/Makefile.clang: default to LLVM_IAS=1
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Khem Raj <raj.khem@gmail.com>,
        Matthew Wilcox <willy@infradead.org>,
        Michal Marek <michal.lkml@markovi.net>,
        Jonathan Corbet <corbet@lwn.net>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:SIFIVE DRIVERS" <linux-riscv@lists.infradead.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390 <linux-s390@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=qpeaZfj1;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sat, Aug 7, 2021 at 4:53 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> On Fri, Aug 06, 2021 at 10:27:01AM -0700, Nick Desaulniers wrote:
> > LLVM_IAS=1 controls enabling clang's integrated assembler via
> > -integrated-as. This was an explicit opt in until we could enable
> > assembler support in Clang for more architecures. Now we have support
> > and CI coverage of LLVM_IAS=1 for all architecures except a few more
> > bugs affecting s390 and powerpc.
>
> The powerpc and s390 folks have been testing with clang, I think they
> should have been on CC for this change (done now).
>
> > This commit flips the default from opt in via LLVM_IAS=1 to opt out via
> > LLVM_IAS=0.  CI systems or developers that were previously doing builds
> > with CC=clang or LLVM=1 without explicitly setting LLVM_IAS must now
> > explicitly opt out via LLVM_IAS=0, otherwise they will be implicitly
> > opted-in.
> >
> > This finally shortens the command line invocation when cross compiling
> > with LLVM to simply:
> >
> > $ make ARCH=arm64 LLVM=1
> >
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> I am still not really sure how I feel about this. I would prefer not to
> break people's builds but I suppose this is inevitabile eventually.
>
> A little support matrix that I drafted up where based on ARCH and clang
> version for LLVM_IAS=1 support:
>
>              | 10.x | 11.x | 12.x | 13.x | 14.x |
> ARCH=arm     |  NO  |  NO  |  NO  |  YES |  YES |
> ARCH=arm64   |  NO  |  YES |  YES |  YES |  YES |
> ARCH=i386    |  YES |  YES |  YES |  YES |  YES |
> ARCH=mips*   |  YES |  YES |  YES |  YES |  YES |
> ARCH=powerpc |  NO  |  NO  |  NO  |  NO  |  NO  |
> ARCH=s390    |  NO  |  NO  |  NO  |  NO  |  NO  |
> ARCH=x86_64  |  NO  |  YES |  YES |  YES |  YES |
>
> The main issue that I have with this change is that all of these
> architectures work fine with CC=clang and their build commands that used
> to work fine will not with this change, as they will have to specify
> LLVM_IAS=0. I think that making this change for LLVM=1 makes sense but
> changing the default for just CC=clang feels like a bit much at this
> point in time. I would love to hear from others on this though, I am not
> going to object much further than this.
>
> Regardless of that concern, this patch does what it says so:
>
> Reviewed-by: Nathan Chancellor <nathan@kernel.org>


Applied to linux-kbuild.
Thanks.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNARitJhPF5sggQ_k2885TSS3VbKQ0APAE7G8ANsYxxmz1g%40mail.gmail.com.
