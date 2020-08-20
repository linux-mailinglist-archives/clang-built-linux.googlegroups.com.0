Return-Path: <clang-built-linux+bncBD52NTUX6UGBBJ7J7L4QKGQEM4SPUUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 165B724C4A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 19:36:40 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id y6sf877961wrs.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Aug 2020 10:36:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597944999; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZbfbAqTFR8EhSJ9HZkTYUfxI/jzL5Oi8YRLtz5zUsGbE7FkTZOl20KIqXzO+5ynvCw
         xNx4HWIYyEbdc70WnjhssKLDu15fU4JhOSUCDEB1GSwUz83WvVBnX6WCVq0aRdUVoMgv
         /sx6S3pgpaaNsQvdbnvmN4ktPEOvFXTZV/5OLirkD8BzLNk7q28AEVLLYoGMQEQW2Jdq
         I62G3S31dKPgzPXOKtgcqXvbov82sDCy88lUQuexaai2vUCbyYBPg99ZVZfyjXQVI83a
         fnZtABIXmOCoaIVv4Ook3yLuPgbZyl88B440GVaf5q6TM8CLcpj3lRZ871bI6iDxrTj1
         InhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=PkYV9j4vN2wxo1/FviPlPZNjaupr/7KbRsJUJ/y0M3s=;
        b=Eh1YejGBw6ecHPrtLf193AnPTy0joMuDHptY4PywzsBmOXJUQuPToSXchMUM8i+DNZ
         DyqdOm0O6PJz45Lrup9gqNfY7KKOM/i8839PDJh/KdQt+LG1geXji1DLdTvjahB4cgqZ
         mDb+yOJIm3pgOen+hm0F/qnDfpPmbFI1Dj6Tz8Pv0r1yIE2OtTdxwFYd2SeHh0/BxdHE
         ++NgnexVrPV5tBfki6hJrQ1uvMD4c9PJ5twI01w0AQjouKOVBtuTMynre/SbQJ5/JB/p
         22ol7yXhalfxSa2GIf1p+VRQZSZwikNscYwEmnFZnK8M8BaWYE+AgidCpWO3Dj6AEt4S
         lB3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PkYV9j4vN2wxo1/FviPlPZNjaupr/7KbRsJUJ/y0M3s=;
        b=a2JyHisETUmpMZIQ0qDgdfURy5O+1doRMbpsEjyzSb/W48HxkpdtcDS0CdVBW0pSWt
         JFVQeAZfg8bUYw9ZEjm1qaWQYoUnQwvGMJE6B30J8+oWcvYDSkG1EQaNNwnInKx+mzgy
         +D6eeHONJ2WIuubF+hk86GlR+vkiMwCx4hNJ/ECjSO3FGzk95LoHyIcETvvzTgbpz3VH
         hNwl+1dvPzoV1jhwp22YchBYEZl+oySt58dorlzhL+KM0J5H0NSiBF7sqwSXVfiSl6F0
         T/JiFirx2km6OO4KCKp41jar+Tw7vxieAYmPQ1x8xp0YYzBjmQSsWXnKS7Sz2R0rlmyE
         4pDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PkYV9j4vN2wxo1/FviPlPZNjaupr/7KbRsJUJ/y0M3s=;
        b=cd1nhEH0WnzJkBJ5x98GayzHrfbZyX+zfZBUXzDrs5CGWvUGP3VNXZwXLr/YJV3eUJ
         53CcCOpRUU1aqYXwHVFDYesQoFyBtalPZV2rBe+mF8lj7yF3TGJlIwjeF3t/TOVzQHke
         hzKHt7+Avm6E04LsSglHu8oGx5AkLPPRGWb6uakFYWudOKq1s5193D48flE/Xpkv1yPK
         u8ET64rzuwDswExDR+vDjr9wskzYlP9CZBmKUvyNar2D7+GQ8NloY6LcXfauOnuRlyPM
         S3qiTuqA6JsN/j7jLGvax/IlRyfvcCMAbkKFy+JwyNAkPqYU8Zs2jGdpyN06Z4ddhi+j
         yvcQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533iOVmvXpyDzfMGz29FhvOOMC7743qY01WUyS+3eGvYuVf7L810
	C+acKABvqWRfERaTXjGCTyE=
X-Google-Smtp-Source: ABdhPJysadST3abk1gleHmM7Kio2Ygkfrn3uGQqru/ErsjV03sMlptzJvoZBbIK9FUe3m4SdmnLeow==
X-Received: by 2002:a1c:28d5:: with SMTP id o204mr4740454wmo.104.1597944999764;
        Thu, 20 Aug 2020 10:36:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a50e:: with SMTP id o14ls1327878wme.3.gmail; Thu, 20 Aug
 2020 10:36:39 -0700 (PDT)
X-Received: by 2002:a1c:8195:: with SMTP id c143mr4605276wmd.85.1597944998967;
        Thu, 20 Aug 2020 10:36:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597944998; cv=none;
        d=google.com; s=arc-20160816;
        b=TmUS3hrdcwthCSzg3wXXjFP5dP+OPxTbtWrYpW330WWDArdkG4hbpJI5tx8gb9px03
         d/eH4vegesAFpcQo4gFwbwJLylAHZUFJMhw1v9908kMRfcT3CBU6+kjvj/HhboEbn64f
         vN+ULbYAc6p+blRQGyNyEC82+BpE9nQVZhoWTkhzEJIJKLZ34Lk/8WmRkJvsP0sUorOU
         qiZF/9gwZ3fx0dbMxUxF/7EptVOyCFdEpHIIkrxEcUMjn50mLm1h2bqNM57ook/53ZL9
         Y1ozYB1yTJEBu4P7fuYNhypfx/rp6Ihqzyu09U35ISJGxUvI2JPWkbcrUWal+oJ5+4Fl
         P2bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=I6ouO32bOz7xp6CsAB3FBCntSC2j5o0hcv6mqgG3nXE=;
        b=kWecuCHm6bFMWWUeGGcX8oZi3fQErJVMyEwhdBJtDNd2K9GMqGVqeIc9+Ir45TrGcB
         TOCFUD8lZukbqSrDB5Mlzrv0wGAG2/H6a5izy3Yy9l85A1zf3/MZlzu5EojkNQiDeVjR
         f15SF7o77hUsKt346mQXWqH/8JBb52AVS44G974NAkvpVCBF4DaVSPXXIwxURGQVfbWU
         OtS9a7nTM48MMxCBBsth5Uf5Ah6pP45kiFOJG2Lw5w5dLP4v5dK1vIri/rl/84CYpOCT
         c8fjvf6/9b6bFMsrqbb8DqCb7AGDvPyjB7zztwIrge68kEXN0+ELC5SFWLuwepWlQLzO
         gwFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) smtp.mailfrom=mark@klomp.org
Received: from gnu.wildebeest.org (wildebeest.demon.nl. [212.238.236.112])
        by gmr-mx.google.com with ESMTPS id a15si87013wmd.2.2020.08.20.10.36.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Aug 2020 10:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted sender) client-ip=212.238.236.112;
Received: from tarox.wildebeest.org (tarox.wildebeest.org [172.31.17.39])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by gnu.wildebeest.org (Postfix) with ESMTPSA id DE21230278CD;
	Thu, 20 Aug 2020 19:36:37 +0200 (CEST)
Received: by tarox.wildebeest.org (Postfix, from userid 1000)
	id 8569E413CE8D; Thu, 20 Aug 2020 19:36:37 +0200 (CEST)
Message-ID: <a6f1d7be73ca5d9f767a746927e7872ddcf18244.camel@klomp.org>
Subject: Re: [PATCH bpf-next] tools/resolve_btfids: Fix sections with wrong
 alignment
From: Mark Wielaard <mark@klomp.org>
To: Yonghong Song <yhs@fb.com>, =?UTF-8?Q?F=C4=81ng-ru=C3=AC_S=C3=B2ng?=
	 <maskray@google.com>, Jiri Olsa <jolsa@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Alexei Starovoitov
 <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Nick Clifton
 <nickc@redhat.com>, Jesper Dangaard Brouer <brouer@redhat.com>, Network
 Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, Martin
 KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Andrii Nakryiko
 <andriin@fb.com>, John Fastabend <john.fastabend@gmail.com>, KP Singh
 <kpsingh@chromium.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Date: Thu, 20 Aug 2020 19:36:37 +0200
In-Reply-To: <7029ff8f-77d3-584b-2e7e-388c001cd648@fb.com>
References: <20200819092342.259004-1-jolsa@kernel.org>
	 <254246ed-1b76-c435-a7bd-0783a29094d9@fb.com>
	 <20200819173618.GH177896@krava>
	 <CAKwvOdnfy4ASdeVqPjMtALXOXgMKdEB8U0UzWDPBKVqdhcPaFg@mail.gmail.com>
	 <2e35cf9e-d815-5cd7-9106-7947e5b9fe3f@fb.com>
	 <CAFP8O3+mqgQr_zVS9pMXSpFsCm0yp5y5Vgx1jmDc+wi-8-HOVQ@mail.gmail.com>
	 <ba7bbec7-9fb5-5f8f-131e-1e0aeff843fa@fb.com>
	 <5ef90a283aa2f68018763258999fa66cd34cb3bb.camel@klomp.org>
	 <7029ff8f-77d3-584b-2e7e-388c001cd648@fb.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-8.el7)
Mime-Version: 1.0
X-Spam-Flag: NO
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham autolearn_force=no version=3.4.0
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on gnu.wildebeest.org
X-Original-Sender: mark@klomp.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mark@klomp.org designates 212.238.236.112 as permitted
 sender) smtp.mailfrom=mark@klomp.org
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

Hi

On Thu, 2020-08-20 at 08:51 -0700, Yonghong Song wrote:
> > > Do you think we could skip these .debug_* sections somehow in elf
> > > parsing in resolve_btfids? resolve_btfids does not need to read
> > > these sections. This way, no need to change their alignment
> > > either.
> > 
> > The issue is that elfutils libelf will not allow writing out the
> > section when it notices the sh_addralign field is setup wrongly.
> 
> Maybe resolve_btfids can temporarily change sh_addralign to 4/8
> before elf manipulation (elf_write) to make libelf happy.
> After all elf_write is done, change back to whatever the
> original value (1). Does this work?

Unfortunately no, because there is no elf_write, elf_update is how you
write out the ELF image to disc.

Since the code is using ELF_F_LAYOUT this will not change the actual
layout of the ELF image if that is what you are worried about.

And the workaround to set sh_addralign correctly before calling
elf_update is precisely what the fix in elfutils libelf will do itself
in the next release. Also binutils ld has been fixed to setup
sh_addralign to 4/8 as appropriate now (in git).

Cheers,

Mark

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a6f1d7be73ca5d9f767a746927e7872ddcf18244.camel%40klomp.org.
