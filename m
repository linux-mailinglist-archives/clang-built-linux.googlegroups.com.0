Return-Path: <clang-built-linux+bncBC27HSOJ44LBBB7VSP7AKGQE4YM4KMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id A73142C860D
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 14:58:32 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id f16sf6752118lfk.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 05:58:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606744712; cv=pass;
        d=google.com; s=arc-20160816;
        b=vPq5zJQ1+OChLjvSkw1mVAFVDRMzc1zpAaVrtPU6bNoCSltQ8Q6rwmI50msWOanoB5
         5j01THLvD1BtHApxgfFXI1Gn53B52b6PfX41EDRX/Df9WuSe7A/dsDS776lAednCgaoQ
         SSmn7j112M7C9qSMFq/AgUz7ro/ZYHEvI5WLJJZyZN8dOgPIF74zosrL0CIuSqTQipo5
         470CED0y8kyB3tD9S4oRxLdc3QaR8G5nT/x9H2l6sufcu8+39pWCnaJaIbiyj+2x8SMN
         rIJ31WkjSBKuPeBFEyEoJlcMV/GklTBs15VM5MG5YpbdkJZfjlT33r9MkAdvfwDTQosX
         EqCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=lmSAJWSHKeNkdS2W6U3DceumjT0dSwIAJODqLuju04o=;
        b=GbFsn9NHJwGQc7lezqcjPDUN6VK5mWR39jwVUd/f4Fw0tZl6CzklS0NEV8pNUtlQ6j
         7tDbEj1KHlHyqVmk+ZinpbZqIfT7fE5kjwvl9v3bA6P4IbJvjfJSI8tmeOkotk6KOb5h
         sV4cuNR4vSaZuD1LjoEH0X+tviITo5thONVoHnSvQfTGUfmSImCvmNGgkT1UcHoKU2Xm
         EPcmnj+ys3tPax2L5LmPOt3JJlVvr4jR3OPv7Ws/MHCFES6gsHI6SoXO/H+uu/vjwpq5
         0IVJRJ3SJQBHXJGAmWCY7edD4RxCZJlePB3KN1Ma140rTX313J7qL5d5Xp/HjXBE6Yqe
         xDUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lmSAJWSHKeNkdS2W6U3DceumjT0dSwIAJODqLuju04o=;
        b=nuktxEHtbY3Olr5IMZBOkhdNRT8mR/xfaR9vvJV/RF5Y0PP9nmaoc//OZ6JnZE4UHO
         O81IU4fkMMfm8MPniYE8JViNMJe3cWwb9yIRNTHYLietkDLW3+c7I0/DfUcxIPrbaieT
         JPTM4o12Etvpn1xrN2Fqn2E1jwgyQFLgjpuu7pK6OXiv7+juW9KuhuFS+lexUmrK4gq2
         bPFL1JguUj07m1lUaNyJqKeCZaZNUDM4/91WTITuTC/pMHizT6rr8u0VyWoo/npF9td+
         qvP1EHlmCmvZgNajexmUJVEC3d5PvYni4HyqvefHp9tBHmmUwqvR/jv7RQH6+dxxQCvn
         JTXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lmSAJWSHKeNkdS2W6U3DceumjT0dSwIAJODqLuju04o=;
        b=GgLWK9sn1Ii0KMmTGyclRPDjNlFrNEFPswpUFSXaLFC95QsZJPwdmBkEi9UCFE70tn
         g6Z08OW6rxAWJHOkBjSiIh4KUV8XRDTVPOenYtOibpPOnlKk8sklLx4RztXIQt67s2MW
         8b64j8rss0wkqhJ0ZE2nduVDUJ+obqvXfdLon3ePXKn1ZwSaSU36reqxvGalA71v7Sih
         1iFm+ys02Nxk00JXvjsVozbX+IU118+5Tt1dtDijYrbGuAJQRJ5zQk25M2JTBuhczQlX
         ZJ0gYMtAtd7ic/gmaKoFCnRX+mVtHJGsSzvd85sVKuD/9it/M4NPTf/ADZ3AZwOOTugd
         K1Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CKkfK47TSSPMmgnx9YA3ok3/8d+k5IQzPT/275SydASb5TIzS
	AryK0cGJpAAvBdfTTrjkk9E=
X-Google-Smtp-Source: ABdhPJyWR7V3X2kOlVjPhkcteotc7nRUcC6fTdNNXZtUMRC5v71rpdv265VxZcee1VpPtUpA0GIN4g==
X-Received: by 2002:a19:c393:: with SMTP id t141mr10055567lff.529.1606744712180;
        Mon, 30 Nov 2020 05:58:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:bc2a:: with SMTP id b42ls2019715ljf.2.gmail; Mon, 30 Nov
 2020 05:58:31 -0800 (PST)
X-Received: by 2002:a2e:8e76:: with SMTP id t22mr10160820ljk.10.1606744711166;
        Mon, 30 Nov 2020 05:58:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606744711; cv=none;
        d=google.com; s=arc-20160816;
        b=HOEwru5cSMk9Trj8rx7kpD8rbCC6CEKmoU43Q00jiwlqkbnnf8QQZeVI593C2xAenh
         pHQjdNlAb1nAbp+mrMHcidVf5HEamnnqIaQ1ZB5NCSLXEgwpUMcAQWei0asF1olNn9Mv
         AXWzeJUGAY2NtXHEpFGmaNYpNcMa1sPWZk5DKkX5I9KR96HXfDVm1EuueIuWXiuczHTe
         OqpbNLM2l9RLfRM/AVKwXXtcvgGHi92ArPBlJn/Qal2CFJgrSrFaUA3Z7Ec7qdDAkCxl
         MPBiKTeI+32j0GwRJQ4HRnzs41PhwyY3TBGl6BiQk9ULHuOoAtMoDjQyKsO7O8jQ7jOT
         AAZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=vF/aH88wYXF2PP3NSFxlF8roOvIOzer4zS6xm/+nqrw=;
        b=mSPkr+8fMivUuPPB4nS+z9R2PoqEN9dD56+SE9HroqmkhOSBjDwscrlukaSGflWhs0
         8s5Jvxt/EEFMjDFSdl2qk7x9TlgfVdFSUNu/TweDOzg2en4h11J25yUST3WuPXHyXylt
         aG75/38og9r8v91Pkm6OSgWyUieUiEQ+YtLu6aEcPftqr+iKgbjbh6lSnau2LscLWURe
         cxcHQZTfvlnqnjIhhskVbQlAWv1ankNzMjkp7bTwGq53PIOCR8aG0C54mUmPz0EJmBdT
         BJquk4i87ufEkzFjcUyNuG5j21BNw0bw0U/7GRWOCnBcipPrqDLe7mYQKPV5uNGaDFDq
         mdrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id y21si553333lfl.7.2020.11.30.05.58.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 05:58:30 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-257-Da_tl-CCM4WJR7Sm0K_v9w-1; Mon, 30 Nov 2020 13:58:27 +0000
X-MC-Unique: Da_tl-CCM4WJR7Sm0K_v9w-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 30 Nov 2020 13:58:27 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 30 Nov 2020 13:58:27 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Ard Biesheuvel' <ardb@kernel.org>, Russell King - ARM Linux admin
	<linux@armlinux.org.uk>
CC: Antony Yu <swpenim@gmail.com>, Nicolas Pitre <nico@fluxnic.net>, "Nick
 Desaulniers" <ndesaulniers@google.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Nathan Chancellor
	<natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: RE: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with
 clang
Thread-Topic: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with
 clang
Thread-Index: AQHWxwWF86gtz18fiEuAAH79g1ETlKngstAQ
Date: Mon, 30 Nov 2020 13:58:27 +0000
Message-ID: <ca83a5acdf514169b2fde3ec12ea59fd@AcuMS.aculab.com>
References: <20201123073634.6854-1-swpenim@gmail.com>
 <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
 <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
 <20201130102122.GT1551@shell.armlinux.org.uk>
 <CAMj1kXHuERnB01sNrpY9w3C0ECOry7jCK=A2H0D4-_cBXbOmcw@mail.gmail.com>
In-Reply-To: <CAMj1kXHuERnB01sNrpY9w3C0ECOry7jCK=A2H0D4-_cBXbOmcw@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

> And actually, the same applies on BE, but the other way around. So we
> should mark __xl as an output register as well, as __xl will assume
> the right value depending on the endianness.

Why not use "+r" to indicate than an 'output' parameter is also
used as an input.

Rather cleaner than specifying the same C variable as both
input and output.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ca83a5acdf514169b2fde3ec12ea59fd%40AcuMS.aculab.com.
