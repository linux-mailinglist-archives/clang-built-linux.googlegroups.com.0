Return-Path: <clang-built-linux+bncBCPOLJHXQ4FRB7FLWKEQMGQEP4SGFKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id D49C53FB271
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 10:25:33 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id h143-20020a25d095000000b0059c2e43cd3esf1602402ybg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Aug 2021 01:25:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630311932; cv=pass;
        d=google.com; s=arc-20160816;
        b=QUaLzdWDLD/Ac3aASBEfNT+4tpzThJZWe0Ew421ZGRFlVjY7QudnVrPfGCTd/XnwPX
         RczqhU0fv85zeXkNpCFhkAyA0MvdJWRIA+5MylTCKCgUHeSgARWk+f+hERfxhQ1U/+uc
         oH7uhZjms9tuvgjd6IopN3ch687C2RFZuYHCVwdK7IRCWHteT1ma/2zn0IdcjpLnT43Z
         SwnPZkuoCVd0+wX6i7XB1Chm4M+kbRouqloNgZ4HVbvnBXtealnKUr7LFb9cRyS9x03r
         UsTDhV6humDJeNW5BlT/AbCWFPeOQomj55D2w29AcHgPBJdIUpLxTVLB+rIx3Gu7Z+l6
         scuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nlFTL4EbfBwI78+7dkKGG7nRbcgwUGR2xyehx3Y0FEE=;
        b=p1VZ418MsXcycvNsYmlZGqdOh2t2LUMJLfsgW+stn875tZBXNAevaxN50A3wbHgMgt
         rKEetibZsX57y4QJJtKLWnLQY2DrmK3Li/mJXa+GcdFjvDwKHM9VnGHP2H4GKfb3r2K9
         IQREFia/vKhHwR6bmdrioTvU/Yr8ClX16qIO44blLbM9rPOC0I6sckjtic9uspRJHTyE
         VKdxDlK1tghxTh/RVD3FgnwUhm4qFOi71UexGE55PX/XBjfrYIzRoDVWi7yfkBwVFXj6
         P3mkrQkS38G2FFbeDVn7Dp0brpNvkFsHRyTvTV3brC595BxxszLLO2uHJgSuI0gYVR8y
         S7Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cBHPP3Be;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nlFTL4EbfBwI78+7dkKGG7nRbcgwUGR2xyehx3Y0FEE=;
        b=VEqT5V+Xp+oKITWAnw0QQsLgWHyy2YQ581egG9Dviti/UPYf/4Dq9+B9oHpAd3vH7n
         42mU+1VnQzWiSx+wmBBsn5rfgR1L280WssjCSbPAwnUBcNS+LQSgY8whMrnTL1R7Q0qf
         TZEBAXmZyhEvhAmFeZzPbof0yjih30KJVXuKlxnTCIMS3/RpDHGkhiW+JaJuVZwCZ20h
         NRm7x6R340gKtINzX+WLAKBN1AHY3+wZAqn0vGjWnVEOE1LqAz2GG8qSFksSF39jaBNk
         f2bmQqYgYhnSfNhQ3Yt45HLIHjzyXWyA3IYJSF1RukMvWbF3SWk2gSbshBP/kjJRkg4K
         9EfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nlFTL4EbfBwI78+7dkKGG7nRbcgwUGR2xyehx3Y0FEE=;
        b=uhEUc9NvOB8x6lyMx7vLb7j3HuaWjFtM2v9Q+JhEkwBclmq+lXf/r47V3zxmzCi24q
         WVG7hrFmDH3HeoSJNCZ9qD1UGRpSt2a/qsO5Dnfwv2ff1akutrlJ3C9yG6T+CoggpGML
         wjklrs3zvlAnvqBiZsClm5FqulVyzHhzhQmFrJiSO6W0QxIL+b4ZDYg6VNz8hK2hL6+s
         Bvu++yT0kvuMA0p513YFOb0BQnYy4+uWvHKkTaI2oMU5ChkpU+/21ygy0Hnlnu7uCgQH
         sYxEME0ybds+v2hajE3JXb4RNDpZXfDuR+TV+oE+6/Idrfhzj4WW3t+89BdQR/6AyEeC
         L1Sw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ir6fkRQi4OMiVlGmqMthu8Q/05Uduv984QuoRlTSkNv3lYjhG
	jyAYFQEpDAox1iFPmqjVgRY=
X-Google-Smtp-Source: ABdhPJz+rmCgfjx8jM6pc30tg9jKankiI1wP4lQu6/Ab6RPaBDB6L6YiWUSfX6eLbliW9ZttFzRBog==
X-Received: by 2002:a25:a522:: with SMTP id h31mr23237263ybi.355.1630311932766;
        Mon, 30 Aug 2021 01:25:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2b08:: with SMTP id r8ls2132332ybr.9.gmail; Mon, 30 Aug
 2021 01:25:32 -0700 (PDT)
X-Received: by 2002:a25:5ed7:: with SMTP id s206mr22801868ybb.387.1630311932319;
        Mon, 30 Aug 2021 01:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630311932; cv=none;
        d=google.com; s=arc-20160816;
        b=lhaD43EVRRr67kyS3mE6PGPb2cyfQ+3trnvGhJm96ndUlambQz6jXubVkkSIUKzjEP
         zvfnYbJtucajha5HzeNSCjDrdKJ711KD+7jkcIUev/uaJ/QRYFNHftAldZMLdpzDOPwf
         0Gh02m0IRb+PraWj90ca/1jDmk7oe6fo7HZAX3JUPVv/r5L6p/FgbJnOevkn8F3TCU5l
         YL22DG4pfYsUlIec2tJa0ULtRnZLbZnpNOKYMEeMBjuIznAxffvEZxct4pFSqKzQ1Oqp
         Q1e5DRNujXNcQTMjrxvuafvr+nXnqnVUkGjx7XjOd4JsAAVGQBeB9Q+sDWPaGQZFKsjy
         Jg6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LdV1ccUiIRT6wqSDAtprnH7y+iZatInyliSW8dlKSVM=;
        b=PMMqhlf7LwiGaUC2OW1VoUuFZ5LvqUZmvvwMm/te1cXuPlP0PmMSBgtR+tUDqQs792
         S8BrY5JgIECOmbMZbkAtRP+GPYZPDG74qsuJ7EBToRhgpOddVaburLvlB7eR/aBTXw8o
         GHCVcJUuTxiPvRdObsCqu6M5IRSG1fJrPNfEEAN207hV8JAWKZJXHGvCQ9UUZStbwWl+
         nxnIYcX5U+OOoxHO3fgZCUEuuMRaH/PJ/6Bbdb8zt9SAZtr2t36c9qng/7JBYTwKEK9Y
         Z9nBUBV7MraupF/WR2od2KwrVlvBApWSnfDRQZXKasjJhZBC/p07cmYBgVHI8tkk8SoU
         BJJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=cBHPP3Be;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id x7si572927ybf.3.2021.08.30.01.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Aug 2021 01:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bgoncalv@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com
 [209.85.161.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-172-ruX3cOQmOve2iagpPuL29Q-1; Mon, 30 Aug 2021 04:25:30 -0400
X-MC-Unique: ruX3cOQmOve2iagpPuL29Q-1
Received: by mail-oo1-f69.google.com with SMTP id i5-20020a4ad385000000b0028bd047a835so2603478oos.12
        for <clang-built-linux@googlegroups.com>; Mon, 30 Aug 2021 01:25:30 -0700 (PDT)
X-Received: by 2002:a05:6830:91:: with SMTP id a17mr18547434oto.189.1630311929669;
        Mon, 30 Aug 2021 01:25:29 -0700 (PDT)
X-Received: by 2002:a05:6830:91:: with SMTP id a17mr18547419oto.189.1630311929455;
 Mon, 30 Aug 2021 01:25:29 -0700 (PDT)
MIME-Version: 1.0
References: <cki.1BFC96371E.L9SGD4WTN7@redhat.com> <E0BFA0B2-BB53-4AD0-B1FC-BE13AC3E4242@chromium.org>
 <YSpFytRhC2fc9oGn@Laptop-X1>
In-Reply-To: <YSpFytRhC2fc9oGn@Laptop-X1>
From: Bruno Goncalves <bgoncalv@redhat.com>
Date: Mon, 30 Aug 2021 10:25:18 +0200
Message-ID: <CA+QYu4pi2wxSh4b3KQorPNR2Wbz7OFL_Tu=FAseRJt=5Go4xkg@mail.gmail.com>
Subject: =?UTF-8?Q?Re=3A_=E2=9D=8C_FAIL=3A_Test_report_for_kernel_5=2E14=2E0=2Drc7_=28mai?=
	=?UTF-8?Q?nline=2Ekernel=2Eorg=2Dclang=2C_fe67f4dd=29?=
To: Hangbin Liu <haliu@redhat.com>
Cc: Kees Cook <keescook@chromium.org>, Li Wang <liwang@redhat.com>, 
	Jiri Dluhos <jdluhos@redhat.com>, Milos Malik <mmalik@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Jianwen Ji <jiji@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Jinghua Wu <jinwu@redhat.com>, clang-built-linux@googlegroups.com, 
	CKI Project <cki-project@redhat.com>, Yi Zhang <yizhan@redhat.com>, 
	Jan Stancek <jstancek@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bgoncalv@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=cBHPP3Be;
       spf=pass (google.com: domain of bgoncalv@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=bgoncalv@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Sat, Aug 28, 2021 at 4:19 PM Hangbin Liu <haliu@redhat.com> wrote:
>
> On Fri, Aug 27, 2021 at 07:43:55AM -0700, Kees Cook wrote:
> >
> >
> > On August 26, 2021 7:06:23 AM PDT, CKI Project <cki-project@redhat.com> wrote:
> > > [...]
> > >We built the following selftests:
> > >
> > >  x86_64:
> > >      net: OK
> > >      bpf: fail
> > >      install and packaging: OK
> >
> > Are you able to add seccomp and lkdtm self-tests too?
>
> Hi Kees,
>
> For upstream testing(it's a little different for downstream testing), You need
> to ask CKI to build seccomp and lkdtm test first. Then update kpet-db[1] to add
> seccomp and lkdtm test.

Hi Kees and Hangbin,
I've opened a ticket to track this request:
https://gitlab.com/cki-project/kpet-db/-/issues/57

Thanks,
Bruno

>
> [1] https://gitlab.com/cki-project/kpet-db/-/blob/main/cases/selftests/kselftests/upstream/index.yaml
>
> Thanks
> Hangbin
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BQYu4pi2wxSh4b3KQorPNR2Wbz7OFL_Tu%3DFAseRJt%3D5Go4xkg%40mail.gmail.com.
