Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBV4D5T2QKGQE67YLBVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD6D1CFEEE
	for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 22:06:48 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id z22sf21663271pjt.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 May 2020 13:06:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589314007; cv=pass;
        d=google.com; s=arc-20160816;
        b=fbqqIDm+zw9PckWYjn80zMKIW6syAfDAbTc6rODUmhOb2s2kkpVtf8kM01UqL6aMJH
         33KhuJHj0Sca2T/R7+EG57pV5DsiFtnTTytiPlgrHDt98ruXJOzB6hF5UpI9j5qsKXNc
         3DMnXhRu2X9o6i1x54BleJBOXW7XC3VxEjg7CZRoe8a7kuQ3freRQo6oFUE8Ks6eXbRu
         mHL6BSdcAJITj2Hem2pKsz7q1ky6sbUSqY1m1Q/E6JMUhyEwZL4uTUWvcSAiX/Uh87nG
         TWmyM65BNCcZenNeJj9lpI0VuBmHouThd3s+/+cfd23y94dqgMBJNY6xXwHHWA4VLJ1x
         pluQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=sEt4Y44AVjlFLqPtPnWJTen76Cih0r5I9W1lCQ10/ag=;
        b=hEv6aPzfyIyF6H/VrxaYtwaJRyTQkORZTFIytdk3DRqi6Sa1nYBy5G2UpP1A3DkJA4
         Mu1Sbr54hOj9R0SlotJK0+nxYp1/tSXIwrogNBxrWcetDxOwVZYc80WWa2dyxoPxokgt
         5rHkt1HHQcc8SAgrIGSB1ocIvoy6Y1es5qdo2jNLA60mL9N3Xl6OtTn0KD/qVa0iRLo0
         9UBbo4Ugb4MOVPCL8Go6blny2gc5MfqPhvkLl0PJowJcZNDl9Zty3IEMd+EADbyauwYE
         0v+Gx/8wxEjtpmr99kyDPQxiBAujhLZICB9z5X7sOwTUOhjrQV732hiebQVFoMwxUf6m
         JWiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B1dEFzwl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sEt4Y44AVjlFLqPtPnWJTen76Cih0r5I9W1lCQ10/ag=;
        b=QcLe2IaosNPh5fCqARWvWj+fRRCgX1MBd9dqvzsLRhurbCwJx7A/pEWSvUga35OiZe
         aXvQc3f8FpSkL2e0faFlto5UQjtTrFRnaZgc+VfOlMBLN0F8tz0kc6ZV9jqPkJ1CXpc2
         vd5Itf9PDejqhAwBcL0cdXuMDxXqjtwnN8g5NDgutxYhqr7hAAgXxWgHonJ5SCIdvt63
         t6mO1hIBw0hkMZ0kn/RrWODpPSq/mgFpHNaw42B78dMYbC30Fof7ISXOaLjo+KJLSmIV
         jwEWbPtcYfWZnyqo06p8pna/kwgc3VR1riA0J9vZ6BtqA1Q69aXDbUjTCLZyKtb0V38n
         PaBQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sEt4Y44AVjlFLqPtPnWJTen76Cih0r5I9W1lCQ10/ag=;
        b=CKISYc1/NP/LReVeScjMJJ3HR02IjxsVzsyDSjiHyCCto1YGYJEFNU75qN/ARIqTjv
         QLDosHmoyR+VipsOJIX5NkExX4ra+52j9yM2IshHNbOOtI/4UAYhWa99FxExcdvA3BCm
         GtF6TlaAHGqaruu9C0UsmuUe1YCI5iCytdlLLOTYIByfAuZxI2YU4Vq2mGofNrobkfNq
         57tG9tpgGk6y08pcN3QJd+HOkU5AJ6LUw5y3NwtIRQOxvoJFV/LXkqrEVawOl+EDy8mX
         y79Xd1uHQWLs5cBLyFgCuNkBdHlJvR1CnrEWSTS3lOPEf3RpitNPx96y4+AFLGsSMndB
         EtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sEt4Y44AVjlFLqPtPnWJTen76Cih0r5I9W1lCQ10/ag=;
        b=OAwbB3ewBNhn49iCLIrG6E4JEj9nP1mq+s3mOuM5yhZ0C0XzQWJKDLD/xJy3hUGcwS
         L8TZISERsMkeQOCEIr4+LpKRXWldfrLdb6adUbrv+TpRZZCZlbuO1Zk2Ot7og5BL5mf6
         5I30BzcYW8TZ96C3smep2WVd6hC/t/Nkcp73xl1mXUbn7S+9t+g0kR8lN9bLUMpUO5qW
         q6gHj81Wvq6g2C2kF6bgA688h0whEVq1riQZHTAOIXRbJB6TQEMUX7UE3BVaPdMm+8Uf
         GCOhD2mhSDalYSYSOGtRB0oCMp2ksjBPxWWokMRmETW21qTIt9N7wztaftqnqSmhNXLs
         YIcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub0HNj8zndV1p4NcS/xztQzVadHhI/BLuKQp+a9BJWbPXWMBvLG
	uM1DA2OCEGbNGkYXEmdmHyk=
X-Google-Smtp-Source: APiQypIo8b/Lid0sl8qKO2QWKHPqSR5iqztU8bslbKWC7NFJeq6k9VyCK10q7Q2vUeSq+1T433ccgg==
X-Received: by 2002:a63:d501:: with SMTP id c1mr20598621pgg.186.1589314007348;
        Tue, 12 May 2020 13:06:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:668c:: with SMTP id b12ls2219725pgw.10.gmail; Tue, 12
 May 2020 13:06:46 -0700 (PDT)
X-Received: by 2002:a63:2ccb:: with SMTP id s194mr21334694pgs.167.1589314006833;
        Tue, 12 May 2020 13:06:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589314006; cv=none;
        d=google.com; s=arc-20160816;
        b=phTaxQmTVmbp2aYD9aSbaTuBDFj7eruOHCJ34PnbMfSEQ/L5C9LUZioEYlFYH2SFQl
         7st3rT84M4yDFhs2/MR8KlG0jrd0UnHqJlIvsvJmcpMzuteDYqQERxn7UqGQNBTTg6BG
         /1tzsOHKE+kdKUKfK05JViljmNnbaDGFgTYDSUFtMWt5zeyCzuwxMt9O5AQbS9sJ+dr6
         jHVgHPJHXL6lPF4sCuMTCBXPY2bJb/DtY1qFT2bdzFpoGKfRySxU7lvwsXkaBKzabtfK
         oSyXiRbVvXgvSV+U2P1eoUwaR/FNamUhwY8gxQurUTE4J2utdY8sFh7+bWxjPCf3NKsw
         7DDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5gYRNxsl+AJhtF04Scdhgt92FgaaH0tr9cW3OfY8ghg=;
        b=DuFwJL2aiGXT4cey28+7uTCbyjxry7POwXW8VrkMiZwBmo3T6kWswCPUfoiZXkwmxo
         kEdqj1Q/PBldlXBTvErmxYanfemyESJEnLhpW/rVdhsK6Xs8WtKoVZoqJ0iUv5hGZeuH
         2LTw5kPuWWAPmu2oPPXbvbme4z9DWGa64wjAy6bqpRGTTtUTjRBEFU2mXW9OKcjWgQ8p
         8X9BEGoOgeeCsKuUcaqTO5hP2lpOmUcV03ZjN0DuF4VCcyXgsdeorRzikitkayjoTuLL
         KN04Qiv7lsb800mMMeMApl9ykBwJ5HveswNm1kfkHUroODW+LpOg/aiNHwqnUX5PXnCh
         HYTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B1dEFzwl;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id a1si329381plp.2.2020.05.12.13.06.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 May 2020 13:06:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id u11so15561713iow.4
        for <clang-built-linux@googlegroups.com>; Tue, 12 May 2020 13:06:46 -0700 (PDT)
X-Received: by 2002:a6b:7d4a:: with SMTP id d10mr22667811ioq.70.1589314006427;
 Tue, 12 May 2020 13:06:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com> <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
 <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com> <20200512200114.64vo5lbl7wk2tzxk@google.com>
In-Reply-To: <20200512200114.64vo5lbl7wk2tzxk@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 12 May 2020 22:06:35 +0200
Message-ID: <CA+icZUUvdso=R3579RReTFk=ts0rNNCwcx9ydGGsG++sT8=abQ@mail.gmail.com>
Subject: Re: [PATCH] Makefile: support compressed debug info
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nick Desaulniers <nick.desaulniers@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Andrew Morton <akpm@linux-foundation.org>, Changbin Du <changbin.du@intel.com>, 
	Randy Dunlap <rdunlap@infradead.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B1dEFzwl;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d42
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, May 12, 2020 at 10:01 PM Fangrui Song <maskray@google.com> wrote:
>
> On 2020-05-12, Nick Desaulniers wrote:
...
> >I have a patch series that enables dwarf5 support in the kernel that
> >I'm working up to.  I wanted to send this first.  Both roughly reduce
> >the debug info size by 20% each, though I haven't measured them
> >together, yet.  Requires ToT binutils because there have been many
> >fixes from reports of mine recently.
>
> This will be awesome! I also heard that enabling DWARF v5 for our object
> files can easily make debug info size smaller by 20%. Glad that the
> kernel can benefit it as well:)

Please CC me on your pathcset - 20% smaller - I flip out.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUvdso%3DR3579RReTFk%3Dts0rNNCwcx9ydGGsG%2B%2BsT8%3DabQ%40mail.gmail.com.
