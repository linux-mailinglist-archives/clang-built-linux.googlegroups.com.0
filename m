Return-Path: <clang-built-linux+bncBDTIRYVLZUEBBIWE5SAAMGQEHQWTLTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F35530E5F8
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Feb 2021 23:22:27 +0100 (CET)
Received: by mail-pl1-x640.google.com with SMTP id o9sf736642plg.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 14:22:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612390946; cv=pass;
        d=google.com; s=arc-20160816;
        b=klFQx7qPVFIBN9DG3+151PkmgHlPt4ShH9tcWrS7YEVtOPr8cxwBTPoZpBZaTULN60
         NZ0lbtH7oZ3d6mVWM9WzL9Jfb9E5tXNxAeOXJUgODpA/+hTP/pG5Avz8+Mp+K0Zo3Hvo
         Ot3DGD5bMp+YVehAZO+0enYaepbtwo0ydXe2lS/lOcXjUhlrRuJ03MQPVwgPpSWbrhkN
         rUbf1bLS127JFyiFupOZ0qlQiMQGeXVbsoBxDKusp8dlT0mIcNVdPTACCBHSUWRT7cYZ
         RC5Ob88mzKns/U02KIebNJUQsO/evU/VfNdQG6fbezAIy5SmIDJgWFFzTdz4VAagLzz0
         fACw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8RxU3rXzxlv99kDmyos+7M/o7zR17bS1eJwx4+4jAz0=;
        b=RkRTNu5OP6C9FxUI1/z8DAiCyWKOn1Y37bisbbzD/Db9h+rQer9E4zfll2eAVAHjxB
         OxjPiz3tAxKx9P5m88zMMmQPUf92vGFNx+aLnZCY8GRBkvmbWv82rMFX+S1LQOZgnDz4
         UWtoQFaDHKtJfVL7qYmbsQlO6JYqRXTpOFoVQjnWcw6E5KciWtRWtVUlaHZNjh6UzCWI
         gpCd99HpjmoW/BIGJYqPaBaqdY54QD75jCuUeajKulJVFRsSJpUEYNJ5yM4Z7N3NmmyL
         01XmCV/fgqXMH/vPe9e2SgwLML8ng3QHbCS6QUyfg1YIY5WEGvy9Pv/VI+XFpR5YfEmK
         jfBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZOSlSAEq;
       spf=pass (google.com: domain of omosnace@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8RxU3rXzxlv99kDmyos+7M/o7zR17bS1eJwx4+4jAz0=;
        b=L+ABZfWSxjY3qRPj/8avFsDgMhdRfJUJN4a5B0/rpwDleRhKQrMbwMYBMGLekmpR3t
         4Hde4JYQp7dimDEpeURdRlaOMSbvG1PBRumjCFN7bic77sTK7E1IPcCnDS8VgssCzlS1
         OwinwYwAsJ6tV0lfzfJkbIUccfrf5AQIVJLSQG6/l77WrY5uyhB4Gq37A0fgXe6v5t0D
         TfyX1Igrs8Db1nKYAPbdZ/ieCXb97nWaYC/6O+V69DzjYvS3IVbqhDzGsAx1UqWn9J79
         nUgg3eGptzhXnxj8tfvMWnUxzCyGoODu4aZwPAjOSbWKeuFvEL+y1IuUv04CS5pbgeEd
         dJew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8RxU3rXzxlv99kDmyos+7M/o7zR17bS1eJwx4+4jAz0=;
        b=CHgtHwWpptvf6BhH/hwtYwVvvEWXano3S7PKnbcAjY+IatuZLGuCa7l4arx5tc+vDz
         U4HvKmepK8Z/bZg7pzwxcrnZ9Uy2vXTWfX8ghD+Uj7q9br5azil3lcAxQvQF1BZEfB6O
         hIKT+aPROeZsCglryGcQfnymF63LG7OcbXFej2ArfogNsKrQFmc6nU0pElQ+H7YZifk8
         aTbpv9NNFrMCVfYljWg8KnWZ2zffTRc4Alle92evIU3/ti2tCGqVKSHRiqAJiQTkKyBY
         mdY0v33k6DxSHu7fw3e2l5ESQ/dlP6X4/+rzMG2urvdU0+vrIqhWRVoFtgv6rW+iZYMF
         9EbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530lIhiIv97cHqBluBigWzb+TWvONsK8LPtouFn9MX7EIY5p1BKQ
	xxDwVrbrEz3rJpsmqtGJtS8=
X-Google-Smtp-Source: ABdhPJxKeozL92gqqhvCTjDUtA9rBl9s38gQ9z7ln62jiL00OCrIhi5LYpZijzlxe46c5JonuobvHQ==
X-Received: by 2002:a17:90a:5b05:: with SMTP id o5mr4994547pji.109.1612390946381;
        Wed, 03 Feb 2021 14:22:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3583:: with SMTP id c125ls1419657pfa.2.gmail; Wed, 03
 Feb 2021 14:22:25 -0800 (PST)
X-Received: by 2002:a65:498e:: with SMTP id r14mr5791853pgs.235.1612390945599;
        Wed, 03 Feb 2021 14:22:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612390945; cv=none;
        d=google.com; s=arc-20160816;
        b=Pcc/qAZaYM639mjFsMvPmwsAlG07TRgGGCP8PjC62J3u+hj6J7FglaB8Hkdbr8loxH
         T+Ilsd02mw2NGpIjoyVDGvWDrrvXah8TxgmNMEBwxcxbnWPXlt596cdtDFwR2RBEPCer
         Hc/pr1G4tDoAj8LWw35/LAWZY1uZ/cBeZqZlgyD6EL971YvK/Gx4e5H+KmcWgVPAAUWQ
         4ynGXT48q4vy6MRhva1eVwQbOPOsKSexxuiXx6caAsu1ypkH7+0SNxHLCX8CtGwEG3Cw
         n1jQUYExAPTMlRLGy40NGPpm200RrBK5GCetMJrb9TuCQG4eb+tMcVZnXP4k9gAzzHrV
         g7bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=CTc+rsImuJ+NawJXWIS9yZR1dxxWI6uopozwDg++uP0=;
        b=Z1cH3qeDVbjKmkqEg2dANgjI9R6vJEyKsMsjnb+R00waAr2OnWVwxN6Upnsp4W6nnn
         Z7sk1/JBduLvNNvvhqtgsNfateSpL9O6vZr17QppvdHIeLipICbCZqoCkMLUZXjd92bk
         DCIvdFGix5jndXU0IIDgzMCNO+7KDsESTDE+2gRbpuxQkSqC3nS3VGliag7fNQps803K
         zfiHO7bNek4ItVWxvOlJI0xiE3NyBtuNJAQnP0fLv0WDPHmD3AxkyrwsF9f/KVqbNU3V
         i6FpczKEaLL+fcgxhQx+ujCDJKSTP37i0VQEwbdWXoZXAMsPESWLeRSsWYiMYqiNl/+m
         TOlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZOSlSAEq;
       spf=pass (google.com: domain of omosnace@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id f11si143042plo.4.2021.02.03.14.22.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 14:22:25 -0800 (PST)
Received-SPF: pass (google.com: domain of omosnace@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mail-lf1-f71.google.com (mail-lf1-f71.google.com
 [209.85.167.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-468-ATWGG11oOxSt5Iopq-iIfA-1; Wed, 03 Feb 2021 17:22:20 -0500
X-MC-Unique: ATWGG11oOxSt5Iopq-iIfA-1
Received: by mail-lf1-f71.google.com with SMTP id k11so531395lfe.20
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 14:22:20 -0800 (PST)
X-Received: by 2002:a2e:9b16:: with SMTP id u22mr2948018lji.416.1612390939257;
        Wed, 03 Feb 2021 14:22:19 -0800 (PST)
X-Received: by 2002:a2e:9b16:: with SMTP id u22mr2948015lji.416.1612390939076;
 Wed, 03 Feb 2021 14:22:19 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost>
In-Reply-To: <20210203220612.GA1738694@localhost>
From: Ondrej Mosnacek <omosnace@redhat.com>
Date: Wed, 3 Feb 2021 23:22:07 +0100
Message-ID: <CAFqZXNuv+RMSOR250vMTtbaggURJLHPu-0QrHJb4Ei4E4OiukQ@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nathan Chancellor <nathan@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Rachel Sibley <rasibley@redhat.com>, 
	CKI Project <cki-project@redhat.com>, Milos Malik <mmalik@redhat.com>, 
	Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: omosnace@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZOSlSAEq;
       spf=pass (google.com: domain of omosnace@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=omosnace@redhat.com;
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

On Wed, Feb 3, 2021 at 11:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
> On Wed, Feb 03, 2021 at 10:36:32PM +0100, Sedat Dilek wrote:
> > On Wed, Feb 3, 2021 at 9:45 PM Rachel Sibley <rasibley@redhat.com> wrote:
>
> [snip]
>
> > > As far as the panic, it was was triggered on our upstream LTP test, I
> > > don't have a corresponding x86_64/LTP mainline(GCC) job since there is a BPF
> > > bug which is causing our jobs to abort while updating the kernel for x86.
> > > You will see the following in the logs:
> > >
> > > 'failed to validate module [something] BTF: -22 '
> > >
> >
> > Guess this is with CONFIG_DEBUG_INFO_BTF=y and LLVM/Clang?
>
> I read that sentence as there are issues with BPF issues with GCC, not
> LLVM/Clang.

Yes, it's probably this issue:
https://lore.kernel.org/bpf/CAADnVQKbku+Mv++h2TKYZfFN7NjPgaeLHJsw0oFNUhjUZ6ehSQ@mail.gmail.com/T/

>
> CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:
>
> https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369
>
> Cheers,
> Nathan
>

-- 
Ondrej Mosnacek
Software Engineer, Linux Security - SELinux kernel
Red Hat, Inc.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqZXNuv%2BRMSOR250vMTtbaggURJLHPu-0QrHJb4Ei4E4OiukQ%40mail.gmail.com.
