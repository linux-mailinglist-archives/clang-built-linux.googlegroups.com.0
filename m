Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBQE652AAMGQEXSMU24Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3539630EC4C
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:08:02 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id p5sf1192991oot.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:08:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612418881; cv=pass;
        d=google.com; s=arc-20160816;
        b=unnOEWIyfnlNeMCH0eb+56hb2OuMfCfQWwDRuEME2JvAzqOQ0I9ZtrMPqtHoDSqOIP
         FfnuZRpZfdAWEEMTHqPA+Ua4Gff0KFm/OHbDl2zy72HMocWmM3nmcbZldEaivnuSm+2n
         37AyQ6/ZnwW8rMjDkHUgDhmGrMEOSzk7wdhj7NPUTNkiePCFDgucaRAoOWHRqgO5rvcQ
         9z197wSZhlF2/OpcA1Wc8bg8IL9Arwx/bsmfseU9huB5TuO2ZE4f846zA2nc9ZsTSSsb
         vDxNUv2Md3+hjtijv948cnX7fDMt7vSOwb16zdNTVG24ZWUFVnzpKZh9o0wKIg4JweJA
         e5vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=5zsGXg7nXFGYhGNHd2nZRpiiK7KjZYcqEuVGgAIwAKk=;
        b=XE3JIWearuRm0EQQ4dRQK3uvrlkZUz2ruckWqUtkGnslMcZ2B8wzmWphQJyk6+/EJ8
         uJb6vz5zCauGE0CmnOy6zdNZSjuO4GIygHryxaiKc7XTsaNAHqqUGAxrYvc0vtHiVGdy
         QB6RY8CfKg72YJwgi0mM/Rt75qAycV0mRFNjJZG/HjcrVaTDCWTZ+VOPs6WLJz5IGxHy
         4VkRu3sSccDbMgSTUdCtdPGlqauuJR5QEWCbBsBAX4SevVRe82xkDceI4wyCUujMSSjI
         swjtafhOGtEIg+TtzPyl60QE+aQT011/IQggz2y3/7+oZou3pYf5Zv6acAMD0X1ib+Sn
         2jEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ukwp+nsy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5zsGXg7nXFGYhGNHd2nZRpiiK7KjZYcqEuVGgAIwAKk=;
        b=s1E/WVC4HhlMm4641xMuKrACvvimcngURf0ygWzi7MyXlRu5JbbTz5rvCjV3gbdnTV
         UnrFsxZ6osLoxrtCAMjnDJhgETbtljRtTIK0saH354sHmiv/EE0AbF7L9f5Tp3lPtzRM
         t9EU0GQYOeocAU/oYVyrU1QggS5+pjkyU5oUHLWWrCaw9NM20idUzimiCdmo4F8mn76h
         Vtm0/mAdBfelj8LHSkIr0EV6tKU1eni21PAvYVR/PBgps44Hsu2FawsAW+K+3SRTfun+
         X8IZNQTWUf3yVoggA0f1yng2ZPhwowwnmQIEx4ZILsHVVb7wyW0FsDjN4siPVo+qPUI1
         AwWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5zsGXg7nXFGYhGNHd2nZRpiiK7KjZYcqEuVGgAIwAKk=;
        b=P7Ham4T/DRt5S0yeM2qtO2AxDDmk8gm73vC5vK3fFHbMIXFl/Zetk3mZAxGc34cXdx
         tBK3lrXYw/n5vdgOU1fjAW+Gy5yd2uMjDKB5uC9De6X4iJt5IzOzosV2lbdsfL/Ev839
         Q352h0pcNiVflhIW7ZL/aJlXZDFA9T0EhPYFIRwWl6Zk5l6YPkVAs4+PgJyVaKUxeuDy
         I6AAKsGlnudOhdCqRYKNErTdH76cdfzT+CroZLV/0RIAWXL7MOBNKXIpN60o5nsrtyYn
         AOUT84hSTq2LsHvSho+vl/6ezKTNm9odtWkn3/A5W55R1fvlwu1ZiDMikUWtUqoCVYSV
         bxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5zsGXg7nXFGYhGNHd2nZRpiiK7KjZYcqEuVGgAIwAKk=;
        b=mzNEXRb2fC/6eJDuA+hxtEjwRWGHye0ySPdjRkdcdsvCrzA96QrQfYkG6zx7YAEaAw
         H76t7NpCj/VZJtBihTnJO00htphMM0fk7hMvtuFRljZc1i26AvQikIj7tGli+S1fAwri
         O/2BOKZDetDcQRN4KhBOik7gZcnRtjky9q3EhyTFtloI77poDwCgeqiSQQmpHjbsvlWT
         X9V3tifUvmsiMGJOZinZnFpP4CxfQ9VTIB6IqKc1IQ3GlPasdGZdKJr5icUL2grtNiV4
         hiyBViUFT64Kokk3GUa4kxUG2/9edZI8pIV8bmls+9a09yWI7Bqeav6EVLwwJJyxaCDf
         mz5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312huCoQMRSF+ur/idw1DEaNHV1FkKn5yBo1rCzt2RfRtTN34ql
	qMWSoR2Yx4fiOBRZ0jXgWfU=
X-Google-Smtp-Source: ABdhPJxu9bRkHRE7hj6SL/QTuEkEBkif4aeiDr/NTfooZoiPNEVbccLlK70WEV2FSYurhUtErqiSUw==
X-Received: by 2002:a9d:64cc:: with SMTP id n12mr4681487otl.175.1612418881041;
        Wed, 03 Feb 2021 22:08:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls1080474otj.7.gmail; Wed,
 03 Feb 2021 22:08:00 -0800 (PST)
X-Received: by 2002:a9d:3d26:: with SMTP id a35mr4723478otc.213.1612418880640;
        Wed, 03 Feb 2021 22:08:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612418880; cv=none;
        d=google.com; s=arc-20160816;
        b=03qgJ6oOgJk7i9SV5ImDkrpWmYN6yMeki1jcmLjmGRRvLBr4FLb2et3eilgrZz8y7t
         ErjWlDEqZaWqbol485ifxvnqteGO4ZtFIqgo8NynrPiCMs1VjHhVHj2vuIohn0ggyThH
         O+5k7f4Pw1Y3gqfoZZ+E3S2QJQx53Ls5nE5f+Juc3JWsDGW8ZKRFFysJT6TRdZniceui
         JJOF/BacIJl8CUkRr0Qb368NOjSYZendKv+tuWYWcZSzGn3SwwJ4e2zYFb7T/y9iq/Ne
         +bnoR38hc+JsD/GtO9pGD8cif7KJJ55PKK7ow4HVXw8AG42B/bvb7lq/NaoiXIewsTJW
         1DGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Je3Nsu3laT4b0+Isa1U5GecUa1fMZSa73L3o5MWsV1s=;
        b=dRaxjVIMy5K4L1yTFO0tngtyL+2FrW9MCrJ6YFocgMPjygLmEk8U62UTdJj//evmhk
         BH4jyhMCo87aGWrjNIzQoOOBDIY25UWnTZCdn5RhoZEJfN+eodjvRzJEqdc/x+uGugty
         rxNfzrx/UWb+7tPe4yxb+YhBbH3DySxdRxKYKECvE8dM++bh/P6uA1QZ8WCSnsrmMZ8P
         HbFs40FJ/qb8fsEJqSr/lRzP1ItKmCRNkL7a76WODq2WgQIMMfkCUobb0Aian96MF88e
         AsKNbDivtUn4lY1US2h80V+Kh+QDf2xH4SlfHaN/N9nC7lwFTx0OgjLfCmgYax3b52LA
         uxMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ukwp+nsy;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com. [2607:f8b0:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id f197si463556oob.2.2021.02.03.22.08.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:08:00 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) client-ip=2607:f8b0:4864:20::12f;
Received: by mail-il1-x12f.google.com with SMTP id q9so1591204ilo.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:08:00 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr5630725ilq.112.1612418880364;
 Wed, 03 Feb 2021 22:08:00 -0800 (PST)
MIME-Version: 1.0
References: <cki.C90653A6EF.V9S14CF2MY@redhat.com> <20210203180333.GA765672@localhost>
 <5877bb33-ba17-6459-410c-1c51bd193481@redhat.com> <CA+icZUWTia0CS5nrdGx7oE+Zj_J3oC4id6U3jpVbUgqVosoFxw@mail.gmail.com>
 <20210203220612.GA1738694@localhost>
In-Reply-To: <20210203220612.GA1738694@localhost>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 07:07:49 +0100
Message-ID: <CA+icZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A@mail.gmail.com>
Subject: =?UTF-8?B?UmU6IPCfkqUgUEFOSUNLRUQ6IFRlc3QgcmVwb3J0IGZvciBrZXJuZWwgNS4xMS4wLXJjNg==?=
	=?UTF-8?B?IChtYWlubGluZS5rZXJuZWwub3JnLWNsYW5nKQ==?=
To: Nathan Chancellor <nathan@kernel.org>
Cc: Rachel Sibley <rasibley@redhat.com>, CKI Project <cki-project@redhat.com>, 
	Milos Malik <mmalik@redhat.com>, Yi Zhang <yi.zhang@redhat.com>, Filip Suba <fsuba@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Jan Stancek <jstancek@redhat.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ukwp+nsy;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f
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

On Wed, Feb 3, 2021 at 11:06 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
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
>
> CONFIG_DEBUG_INFO_BTF is already disabled for the LLVM jobs:
>
> https://gitlab.com/cki-project/pipeline-definition/-/commit/7d138e9a3aede46f7674476fa1b3ca02a391767b#90e1e97a102a5713d6a68df323738846b425341a_1358_1369
>

OK, Thanks.

Can you give me the link of your (above) response in the
ClangBuiltLinux mailing-list?

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVjeGq0UzCrJbf9qMYtR56woJ_XtFGiAzhvHnt0zEbD7A%40mail.gmail.com.
