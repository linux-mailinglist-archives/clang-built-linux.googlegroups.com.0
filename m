Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQHE5WBAMGQENMGD2QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id C6ADF347EDE
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 18:09:21 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id p4sf1527084ljj.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 10:09:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616605761; cv=pass;
        d=google.com; s=arc-20160816;
        b=rn5CF+f6rmotdf/376s7O0oULGwhixzonqPlle6bVG76wNeZ/zmgx09ZCedEz+M+uQ
         9E8ebIcbjITVn6BRkvLLHC61e7DqzU/7MJvMnYZA0Qqru1VsjJfz1zHrH8VFjgYept9s
         MJz2yR+wECtaOhmPFcUhIfLHZArrR2IGycIp6gkDaocB2+fJP9/FCbfqthMWhOzTxxsK
         hxQmDVkkbUKIfrSi2c3XpMmG+qCRTpz3eTiYFQxhBxJ8PW0h7bvDcSm4i2twtc4wncFh
         LFg4rkvAgivvWG71jkZTwh00kPr8P1eB7TY8MboPvcPaIvJ94d6JYxohZAkl7rkcbJzm
         4pIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4x2PQXlc65tG2Zd0Rx86dn/3Ez7jzBe0o/ibgkZJVZ8=;
        b=mun5RR1Vxl+otyxypnhkjI38n3FS+1zlzslyqdq5yEYugz9EzI34qgGJwaEkIh2icC
         ZWnQsTuUkY1cwO/TM68Sz3FevxTLul/NS89HHDxF7uIV9NCXe+huWvzPSwzKfbP0fkMp
         R6Ae7b7c2laNbvKoVeCpukzgRek+Z07kjE6mY9Vawmdd2RbTOqAtam0OLF3rDynDEI1i
         WUiMtdgEcWIxEZdqN5UNvOhOBYcPoh2Gt0wAa5MnGW5QiV6yEr1ieBkBA0jk+YutEUSj
         uCEydXLSEU8HgetWq0eS29fVlaVJobgIVRiQJDz+571OOSgcypNp104HjSiTWRXp/E52
         TYVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hG8wb808;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4x2PQXlc65tG2Zd0Rx86dn/3Ez7jzBe0o/ibgkZJVZ8=;
        b=iG/M/2X3LVVVYXOlRWdFmyh2tmTyCgtYEq3GDSx2J1NI4bGwea8UE5adis5ZUIdKCj
         otC4ThRFgdfwf5RN0Pd9JA0hlLH8wNgLyKz+cDKYzYMu+t3PcRPdCC4/8eha5acDqLby
         357PREBBXedbQ/WzZtnMnnb72Rkcls5qG8z3xNyG9wyXSJ46xAgYq01TbyoVEJ1C0pyZ
         r74AZPxGMATymFZBa5eBbjavw3xRTpKCcFO9BSGcg1T+/TqMCXUyVHfCCqhWZnUyW6aG
         kblZnn+F2RWagb0mlaIJh9bvoP33p9YnvJiDRdjiQfYDjr9HEvnRXlaKM3nYmZJRmVQi
         MIxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4x2PQXlc65tG2Zd0Rx86dn/3Ez7jzBe0o/ibgkZJVZ8=;
        b=WKUUCARX9DqCkWvIK8MZVUlH+Fi7qya3QctTdsNu2mXVNQSShY+Gt+fDKAhvfbpbGo
         D5rIOG4moxuIuhxN1dG7EXymoL5ad4mBvtHM+jMTXHSMIVr2y1y7nTS49oNmZ1KM+NRq
         pmfUJlNrTM5LsCPK+24KPznGoWDDR2LBZKcbTiONlHHw4UOZxC+gSRDRKIBTNqBdn6eJ
         aL+casDzHAn6PvKjL0iLDsX0y+NAC5DcYQLigxeUtgZjpUXh3cQsToYXJQ/FgdN9ICoO
         Te687et5z3oo1FJCa7wLRBtJf+x3hdJ8aMZHByyWH30Nc70nF4fiy0VL2uN9vsB0/iAg
         JqRA==
X-Gm-Message-State: AOAM531AvuNv2CFjF10a1EZCzvsAqLD5go8ftKXlJzaZ/ZpX3IiRlkNG
	cM9Q3evO8kbbfLGqK9LVmD8=
X-Google-Smtp-Source: ABdhPJwVkwSP18ULZsqqLkb5OImH1qKzdySpR/puBcEv6Z2EDGOw1wpwdiOR9+9ilPx5BpVprT5ZXQ==
X-Received: by 2002:a19:7e4e:: with SMTP id z75mr2505407lfc.618.1616605761237;
        Wed, 24 Mar 2021 10:09:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3d16:: with SMTP id d22ls2216653lfv.1.gmail; Wed,
 24 Mar 2021 10:09:20 -0700 (PDT)
X-Received: by 2002:a05:6512:1116:: with SMTP id l22mr2427621lfg.61.1616605760190;
        Wed, 24 Mar 2021 10:09:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616605760; cv=none;
        d=google.com; s=arc-20160816;
        b=RaB8vo30rPRUdcfu2BO2hkAFMkP72jm4qxBsVNXRk5Fl+MYMzwM52bjp5saNf7vYea
         JLhg/IOtmiS0q0pJhDWBahGFljb3rVQ7oEl/2eF0Y0+KMWwLyBrLHPAa33SdoY05vXNc
         YpHkVBRXcQ/qWRJxM2eY6YoqMOAZxpZTOBmUps2NFr5lA1S1SW0j23wmMxhOXl6QjA6H
         fFOgN0tDaIQeFtYRxAKoUuP9KFIQvMA0HyT1/wGnAZcSwIuFC5oSrj5N1GCOFBDB+Rjf
         EgcoMloHAGN0bmz8swYa5zVfai+0dlZTfdO/YuajVFASk4tVU4R1e8WZvCBKm0wBzVoI
         gOIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oPHlCBeoTk7E8H/kSVNwXw422z7kCWrhvuSAS7d04P0=;
        b=I3o/OqXxNYKlRTklP1ggG22XM8eAZmcr7bbiRff/PzDD27Hq+P0v/uSR6aRMG6gtLu
         noif34NW47zPLTVku6m+VgeVRzm0oHj4JWiUTg43i7+SMjn5vLPsODTZPH+XEGO0JyZa
         lWPdY0r6KOcHpFo4SyWshiZr+17JDoyTchCWZaNNH5PP6M0WHBJOR5Dw6CrsVYhMBUaE
         Hr8196b0lRir5oyb0uHSGS35/Bfoesak02B12Fem6hJ6aP0SqC8WYkMOC94MgBf0/oNZ
         5pXZPLxqG6dXQZs9Rpmcj1yJtMjwiuOlsV4lbgyd2tbfToJJ/Mei36QSUChNOfEyatdo
         2cTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=hG8wb808;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com. [2a00:1450:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id a10si128715lfs.11.2021.03.24.10.09.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Mar 2021 10:09:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f as permitted sender) client-ip=2a00:1450:4864:20::12f;
Received: by mail-lf1-x12f.google.com with SMTP id o10so33087513lfb.9
        for <clang-built-linux@googlegroups.com>; Wed, 24 Mar 2021 10:09:20 -0700 (PDT)
X-Received: by 2002:a19:430e:: with SMTP id q14mr2698537lfa.374.1616605759753;
 Wed, 24 Mar 2021 10:09:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmCpMf1Zp3tB=oqse6-Bsm_ybJQ=G5h__kEuOa47CjBHg@mail.gmail.com>
 <YFtxnlHk4TLqtP5z@kroah.com>
In-Reply-To: <YFtxnlHk4TLqtP5z@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 24 Mar 2021 10:09:08 -0700
Message-ID: <CAKwvOd=2k_NaC1U9MwNHzfCHAfhwi55fyoTa+AHFM=drh9d3Ng@mail.gmail.com>
Subject: Re: please pick 552546366a30 to 5.4.y
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Sasha Levin <sashal@kernel.org>, "# 3.4.x" <stable@vger.kernel.org>, 
	=?UTF-8?B?TWlsZXMgQ2hlbiAo6Zmz5rCR5qi6KQ==?= <miles.chen@mediatek.com>, 
	mike.kravetz@oracle.com, Nathan Chancellor <nathan@kernel.org>, dbueso@suse.de, 
	Andrew Morton <akpm@linux-foundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=hG8wb808;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12f
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

On Wed, Mar 24, 2021 at 10:06 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Wed, Mar 24, 2021 at 09:47:49AM -0700, Nick Desaulniers wrote:
> > Dear stable kernel maintainers,
> > Please consider cherry-picking
> > commit 552546366a30 ("hugetlbfs: hugetlb_fault_mutex_hash() cleanup")
> > to linux-5.4.y.  It first landed in v5.5-rc1 and fixes an instance of
> > the warning -Wsizeof-array-div.
>
> What shows that warning?  I don't see it here with my gcc builds :)

$ make LLVM=1 -j72 defconfig
$ ./scripts/config -e CONFIG_HUGETLBFS
$ make LLVM=1 -j72 mm/hugetlb.o
...
  CC      mm/hugetlb.o
mm/hugetlb.c:4159:40: warning: expression does not compute the number
of elements in this array; element type is 'unsigned long', not 'u32'
(aka 'unsigned int') [-Wsizeof-array-div]
        hash = jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
                                          ~~~ ^
mm/hugetlb.c:4153:16: note: array 'key' declared here
        unsigned long key[2];
                      ^
mm/hugetlb.c:4159:40: note: place parentheses around the 'sizeof(u32)'
expression to silence this warning
        hash = jhash2((u32 *)&key, sizeof(key)/sizeof(u32), 0);
                                              ^
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3D2k_NaC1U9MwNHzfCHAfhwi55fyoTa%2BAHFM%3Ddrh9d3Ng%40mail.gmail.com.
