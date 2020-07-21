Return-Path: <clang-built-linux+bncBDYJPJO25UGBB7OC3T4AKGQEBHNNMPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id D53B92286CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 19:10:22 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id d131sf3431002qke.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 10:10:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595351421; cv=pass;
        d=google.com; s=arc-20160816;
        b=bSh9tJiHTU+1xQM8PXwaQDQTrNzEYwNvmF4UXQ5s/zBocbC2sZ6OYb/oeMn1/NJrLJ
         P+zkfJZg25LgEuw5TTYJQqxkhQWrtvdTH8eNbGhmbeTMDHDD9mgh0WNjCmhHqB2M+93g
         sZUePOSVdKv/ve5DfTKrb2QLBoGaRlUXPqyy9lv4dSlfRNMhyNQejd2SgBOcaPuKQUwL
         qR7lDuo0snjn0rPXcceGZUUY28mUSA3Wwdh7tW1b0fk2U4DA4++jhhx+dcAVPX8xMjNg
         mRgBnjueEzlIHAtoXCPIFosZhkesf3l2ONY3ciycfaU9T3BX5kuvQcDGdSuVUpwBtLhE
         4r9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=qq59NTm+TMlrG4Mp9DN914ktY4VLEy8DqmnyWGR68zk=;
        b=jIPkwVlA9y6PEnDxlkBYPtts4HKXaVh1TBUG9nD5ipaMbyAWfBgdmGKL2iRWtNkkUM
         pTs+7cSmKC/+clsh38TF/yN+r2qkuymyhmXihuAkVQp6yLRrYgtPRZOxAu6guKDRty2G
         zcHaqabp74SHJR618OB3OM4t49feS7z9gluOTE0jRQPOsWEF5hBTKoiBCo3R5R59dCpr
         iU0a/qHJIUHQb03hJwhC71FFB4h0llqLxqF3c1cV+zl4dYFH69FYPM6w78FShrlBDZ8G
         xwi/TUNV/dmL4Vm4oJ5H4fmJmTzsWnRKFhCnAq9l3+ib8rTaujgYmduGGHIEpm74yuOJ
         5P+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jbNCKuWr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qq59NTm+TMlrG4Mp9DN914ktY4VLEy8DqmnyWGR68zk=;
        b=hCHrDr2zYPbL7mpOVF5am7A9hgus5cTgkNMI9ZJz9wXiFOdMCWY7GS8Jv7eVZw0ZTc
         MU2d0f2O0oqevvdZPwfkqChjdQpGcIdcl3mh13KwC8mAwK6TBSLZgLbxwB9plIdvE9Sl
         7/qB6j42gXRiHWUPUkwN+EpFHf+rh18HpeYZdsSrejEpgtWNhKpPOlpW49ucYCb8vVDt
         hXYFDGhLcQZa3aE5eGKeJJ5JbDTKYSmVqL6JcoPMaB8Yrduwp8p2lGS9/YF116KXJj6u
         AIao/vBVl3cxr/EJC6Gn2Xqa2GuJNStJ5n+1YY9POEPfRHrr2suF3CQyh/vEnwTRaKvx
         DohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qq59NTm+TMlrG4Mp9DN914ktY4VLEy8DqmnyWGR68zk=;
        b=CYQs+qe93n/8Ov6VGLsPTsIuL/KLTc9a0W+AYMyNF/cBr1irFMsIETTNxxSZwHHI4W
         XwA+a9DGdV8a3TH+9t1YDuV5iVREmWAorlzhZrcW15zep2VuJhbyzDqzu6/G3uj9+yvf
         O0gKV2Q5yunDDW6UmdX/S1NbJwr0O5l0IoM2cuH/XR64nr+9XceIvNs9kU6tQ3OITnJ6
         BMN5XISjE0682o9mGtd7atCG44acFhieR/v61/1k9NbqWgREYi1z1A+W+4ot7236UG1n
         10O6ITKNEqM05Eb4cjt9tzF+DJMWVkD8jIoqfSqEy3eZKmEiiT6OeexpuxiIpi2ILeXG
         cWPQ==
X-Gm-Message-State: AOAM531cN8UISTnpS9buSFUWdLGEU+XNGuXjd4Yhbespk/XBJkxXuwlW
	8EyRwy9SoFAQdX/Vgm21r9I=
X-Google-Smtp-Source: ABdhPJxlUlMn/+qfuj+gxo2vQxFYjDlvhVJjbaJtMfyHi6eclT7xgWIzNmVb0+Sym0/2hgi35kzpQQ==
X-Received: by 2002:ac8:387c:: with SMTP id r57mr30676529qtb.144.1595351421648;
        Tue, 21 Jul 2020 10:10:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:16ca:: with SMTP id d10ls2629732qvz.7.gmail; Tue,
 21 Jul 2020 10:10:21 -0700 (PDT)
X-Received: by 2002:a0c:e554:: with SMTP id n20mr27445512qvm.14.1595351421319;
        Tue, 21 Jul 2020 10:10:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595351421; cv=none;
        d=google.com; s=arc-20160816;
        b=mPMR8HuTMm2AWMZ4Ia4SIvVS1kYtbtA4JVAzI/c70lUBWEX4ki9iNIMKIofljf3sdw
         OX7/f7EcnZjLrwwSos8y8hUgUG7jNPF9NeQp8tLdQGNaU+H0n8IISf2hVD87TIoTaxlQ
         +be9KKK1iAmWUR3rNdemnK2mvRMVrbA7HCE2vLkx9Pg6FPM7314w3O2zguCRUhQn0nzf
         X5+uWZowi7LLuX9idyZMxNnwUNulaKcQDix+3yu+LBJj/SbegPlDpo7HwLK5WKU2NX6R
         1SBu3yfFaCjyv9h2K1mbmk+5VCD1pu6Mtx1JY4isYS8rYkSPjEVC1khmu1r4YObU25ct
         lYfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ijLcrIKdMxEslvD+jmX5vh8r2VprMB5vKT+BEwrD43I=;
        b=rgWb3kk3XQkjO+uWT1tMzDHXlbq4NR2NcIRX46bYr+Sn0ulpGxGwfs2pwL+ElOtNAP
         Nu2Ck35/fP/IjiRxVJwmMRt2MdCjUDejubHx4y2mBwwx9gCy0WAO/LBpIKvpYIbA+SkI
         R2tJR2vNbmzKzcHpR/ayeVMONMkXRgrPEzaPzgQYZ5trIVxKaZ1mIgqgbOiti/RQxYe6
         htsLzg+OdKSoakBykigoqIQiuPJExBpAB9JYsH9aVzhTTAgpTdsIW7j+IA65ci/DsP5Z
         /IrWE3ATznSpWy2Z6JVa0FxzU/guAy13Ja2tGwtabgXG7vw2uvo2yqE+OM12nedpUIrW
         CSFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jbNCKuWr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id j11si95783qkm.1.2020.07.21.10.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jul 2020 10:10:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id n5so12231654pgf.7
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jul 2020 10:10:21 -0700 (PDT)
X-Received: by 2002:a63:a119:: with SMTP id b25mr22913481pgf.10.1595351420130;
 Tue, 21 Jul 2020 10:10:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200720080113.13055-4-galpress@amazon.com> <202007210118.fF0Xv5Jy%lkp@intel.com>
 <99314564-cb73-5a25-3583-1afda323d2b3@amazon.com>
In-Reply-To: <99314564-cb73-5a25-3583-1afda323d2b3@amazon.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 21 Jul 2020 10:10:07 -0700
Message-ID: <CAKwvOdns6+LVqLO_aZgXOYi33xskO860=BEU-=Q7c3nGYkHs2A@mail.gmail.com>
Subject: Re: [PATCH for-next v2 3/4] RDMA/efa: User/kernel compatibility
 handshake mechanism
To: Gal Pressman <galpress@amazon.com>
Cc: kernel test robot <lkp@intel.com>, Jason Gunthorpe <jgg@ziepe.ca>, Doug Ledford <dledford@redhat.com>, 
	kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-rdma@vger.kernel.org, 
	Alexander Matushevsky <matua@amazon.com>, Shadi Ammouri <sammouri@amazon.com>, 
	Yossi Leybovich <sleybo@amazon.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jbNCKuWr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Jul 21, 2020 at 4:27 AM 'Gal Pressman' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> On 20/07/2020 20:08, kernel test robot wrote:
> > Hi Gal,
> >
> > I love your patch! Yet something to improve:
> >
> > [auto build test ERROR on 5f0b2a6093a4d9aab093964c65083fe801ef1e58]
> >
> > url:    https://github.com/0day-ci/linux/commits/Gal-Pressman/Add-support-for-0xefa1-device/20200720-160419
> > base:    5f0b2a6093a4d9aab093964c65083fe801ef1e58
> > config: x86_64-allyesconfig (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cf1105069648446d58adfb7a6cc590013d6886ba)
>
> Uh, looks like I use some gcc specific stuff here.. I guess it's time to start
> checking clang compilation as well :).
>
> Will fix and resubmit.

>> drivers/infiniband/hw/efa/efa_verbs.c:1539:18: error: invalid application of 'sizeof' to an incomplete type 'struct (anonymous struct at drivers/infiniband/hw/efa/efa_verbs.c:1529:2) []'
           for (i = 0; i < ARRAY_SIZE(user_comp_handshakes); i++) {
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

is user_comp_handshakes forward declared but not defined for an allyesconfig?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdns6%2BLVqLO_aZgXOYi33xskO860%3DBEU-%3DQ7c3nGYkHs2A%40mail.gmail.com.
