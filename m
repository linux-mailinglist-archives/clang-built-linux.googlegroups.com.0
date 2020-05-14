Return-Path: <clang-built-linux+bncBCLMT5XNV4GRBZ6Z6T2QKGQEBWTTP4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3406C1D2E63
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 13:35:05 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id g7sf1241175uac.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 May 2020 04:35:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589456104; cv=pass;
        d=google.com; s=arc-20160816;
        b=NZjRHaXomC3/36I8sgXQlMVeEusgqlqTghRW2I4q+NDRXmX0Aqza/YpNXpRwaq8zO/
         qptdrgTve+mK9jX802BPAtJxwrmxk0XDxhk0hZdVluoK8hSUj7FtaJqeLldt1yzpyEs1
         K2R0Q//MbD8mcnC7RpyQEfcNAqWPfkT5XOE2SnJ1a5lm0WpIiX8pmA8pLeLpGauIMWt3
         kjpNQTqJMiagRjWmOvWnHrQ7KvTK3DnDdJbHxsmkHBhW1o3yx0/emgwQkyQiZLFw5H8P
         /CgF1Kj1elYcvJvRDbnvQdhWwfbLvDq/sYqMtGXwl6UcXRJ9wrCeDW6/KHTaKxcvwpiC
         dl7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:organization
         :autocrypt:from:references:cc:to:sender:dkim-signature;
        bh=48emaTStYZoW/gHj1thL+QkQ/yJgZNi8U7/kx1yK4cc=;
        b=fV1mEZMpn9oT4/pk1AGGFEYJ9JJE5ayMubbiovIChQh5JC+57mqDdfUr3FheZCErXr
         Z5Qa0n/ZvqD/pZdamqU7Ej60myApeiEsAwouBMfD0MBE0wYuHVT9qmzOpAE0nt0E3SWl
         XTfji3nUq5PoWNYpMTJRn8ITNqyktpO52SJPI6jKwxbZXK6xVQ2WHvi9NNXqvOIj5i0m
         wZutkAAJdkUGgG4O6LPmgasTaycDsExqIUYluytcBeUlR0heY+rbaPw8gup5OB17bHZR
         lEn/X1fWMmCEo+iLizCd8WfWklZ+4N7NScX4djNHU4+Y37SwFWPmewHc+C/IUnNEhrGP
         Jx/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CQORmTxI;
       spf=pass (google.com: domain of nickc@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=nickc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:organization:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=48emaTStYZoW/gHj1thL+QkQ/yJgZNi8U7/kx1yK4cc=;
        b=c90O4Z+HYsKrEw6O9xOoFCf/9YK8HyJgcgykmo6tA7oASwHyAnBD1fjdDZ2pf/ARsW
         z8upbPIr4R0m1oIqcQ4d2O9MlYi0cRaoX40e2kimJoB2tapP5+nvxzCn8uhoE5X310us
         HwV9wTJ/KvwOcUREQnDl0n3uweT9KxbTaqph3d8OjSAjqFyGxLmBFs7/x5czFZ4ossM9
         TmpSIuP5SdHEN2tq6hEPkdjpPGCGE9pSiDmvrXPgmX+c90ATeWzKGTmIhCQl0YDLshWC
         sQ6tPxIRNPdximRsukjU6qdiMCHDF3aEaSvXv3KDeVLzsY5QqpFA1IkyKztYIOdG906Z
         MykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt
         :organization:subject:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=48emaTStYZoW/gHj1thL+QkQ/yJgZNi8U7/kx1yK4cc=;
        b=aRKVXLTlKNXnIFvrYgJRnDzwX3AQY07Bo25J1LIH9N1sCuPgoEE1mhEEQ2loKJV8mu
         JJmIP9oQujjT40R2v2hH+t5Y83qRSz5+3wyOeuVcEbUXz7Zmqk3wBwnNDmjwKvghXXnY
         /gMaL0O9WgS6eV5O5UluH0Es9xopmvTe1lMmHH64jST1Vj3Hx2sMQ9OO31zHPetHb8NB
         VEL/09I/6k4gRvxnFYIcsv7HQXXgRApBzsADA6X8Pk29WZ4/JLhbENqVkCAQRkkrKglD
         cF6zDcU6xcE8EXwLxzK6FsPCp6HKpho7v2IeT9OGfjMFHAz5ItNfthsSXtYbgyaFfdk/
         LYSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531/kKMnljKR3P8CoehXXbYC2pv5fTU38Cl4vYV5osRw+iu0tW1W
	C8WxDSM28f6Ssz49bUf5LQw=
X-Google-Smtp-Source: ABdhPJxrVIMx30H9xbvsxS/wQGP83HkHLVBA5OA8AmzS9g0IrTPNVoFlR9eRvGJEJUKSSR8AlFTtxw==
X-Received: by 2002:a1f:24ce:: with SMTP id k197mr2978264vkk.13.1589456103961;
        Thu, 14 May 2020 04:35:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:9583:: with SMTP id x125ls135938vkd.4.gmail; Thu, 14 May
 2020 04:35:03 -0700 (PDT)
X-Received: by 2002:a1f:d0c5:: with SMTP id h188mr3076545vkg.0.1589456103513;
        Thu, 14 May 2020 04:35:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589456103; cv=none;
        d=google.com; s=arc-20160816;
        b=x/NuDkpUvZtYGX1EeqhRDXLjr5GbDhsqZKhEApjjBzVimdPVQq9Fd1QIzgGFs1QIBZ
         Dr1amGFm8SENdsRCi0l/5te6p7MzhOC7vKxQpmKTyFh74ipkrQycF7QhsnUZUo04an51
         ZBFbdsPv0gyqZGo50knn5MSnzMrMgZTBPxN32qyWnHw54y8ln18jwqkbyWL+MCYZEXY2
         TnXJCR6qThTVxbsnlEuUvpZtzFjb0izjddbZ/MpvcIfVXodTW5hYeYnBMMsp19crcdS0
         70nTNo4bZFrHJVzhcPYEshJDVcvZJ4AC3OPJgkroif6fH8cAPhjgNSnE/zPmOfG0B7DR
         bN8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:organization:autocrypt:from
         :references:cc:to:dkim-signature;
        bh=oN+tnBbDKf4f0knAwOaUwUK3LWi0S044igL/voA/EAA=;
        b=SFVMGekYBqcgPs3dsMyUZ+2FLwgEcIj82pru3HGLFuNlhGlKYNpLH78uTyeNRFVicG
         UQh+KTttguE87mQFJeHnPtsaSm+UZJiZB/BayYZEyqL0cHJFkUJYBTgq8lrcBwEgF2p9
         ExJbntpsGugDSLVeLiP7VIIyGKUVPbl4pgfwTdxXknkpEjNJns8x+9d5hXygjAJil75D
         jPTpHcBZbkMJ4kK51wili6Q6AY1GvzIfPscoSf/jSXcZmbqj6QT0lh3MxjhkGy357uE/
         z53jDifmcQX3GC5n5Bo23E2ud4dI2Dad0l9oyM1pBlrhbGQAZ5QNei7ZFCTgHbcwXe6E
         fdZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CQORmTxI;
       spf=pass (google.com: domain of nickc@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=nickc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id c14si186280uam.0.2020.05.14.04.35.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 04:35:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nickc@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-390-8U7m8sOpPqS1_Nr3t9U4uw-1; Thu, 14 May 2020 07:34:59 -0400
X-MC-Unique: 8U7m8sOpPqS1_Nr3t9U4uw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A18D68015D2;
	Thu, 14 May 2020 11:34:57 +0000 (UTC)
Received: from [10.36.114.73] (ovpn-114-73.ams2.redhat.com [10.36.114.73])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E5DB910013BD;
	Thu, 14 May 2020 11:34:54 +0000 (UTC)
To: Nick Desaulniers <ndesaulniers@google.com>,
 Fangrui Song <maskray@google.com>, "H.J. Lu" <hjl.tools@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Sedat Dilek <sedat.dilek@gmail.com>,
 Nick Desaulniers <nick.desaulniers@gmail.com>,
 Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Changbin Du <changbin.du@intel.com>, Randy Dunlap <rdunlap@infradead.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
References: <20200504031340.7103-1-nick.desaulniers@gmail.com>
 <CA+icZUUOaqeKeh6n4BJq2k6XQWAfNghUj57j42ZX5qyd3iOmLw@mail.gmail.com>
 <20200505004738.ew2lcp27c2n4jqia@google.com>
 <CAK7LNAR7-VMEWBcJ_Wd+61ZDHEa0gD8FaSs63YPu7m_FgH8Htg@mail.gmail.com>
 <CAKwvOdmEP9Auuc+M+MqPoQmx+70DgdsPYZQ6pg=8oGnfCviqRA@mail.gmail.com>
 <20200512200114.64vo5lbl7wk2tzxk@google.com>
 <CAKwvOdnArcsqusvmMDUJyTjVhkOufJZoRHxg-ARDfPhfjNj_JA@mail.gmail.com>
From: Nick Clifton <nickc@redhat.com>
Autocrypt: addr=nickc@redhat.com; prefer-encrypt=mutual; keydata=
 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
 6susi2ReUyNJEJaSnjO5z13TQ1U=
Organization: Red Hat
Subject: Re: [PATCH] Makefile: support compressed debug info
Message-ID: <10f4fb0b-1012-b0e6-af05-0aa5a906de21@redhat.com>
Date: Thu, 14 May 2020 12:34:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnArcsqusvmMDUJyTjVhkOufJZoRHxg-ARDfPhfjNj_JA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Original-Sender: nickc@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=CQORmTxI;
       spf=pass (google.com: domain of nickc@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=nickc@redhat.com;
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

Hi Nick,

> + Nick, H.J.
> I'm unfamiliar with the git tag conventions of binutils.  Does a patch
> that landed in 2.25.51.0.4 mean it shipped in the official 2.25
> release, or 2.26 release?  Specifically, commit 19a7fe52ae3d.

2.26.

The convention is that a released form of the binutils has a version
number of X.XX or possible X.XX.N.  The current mainline development 
sources have a version of X.XX.50 where X.XX is the latest release.
(So the current mainline sources are version 2.34.50).  When a release
happens the XX value is incremented by one as part of the release
process, and the .50 is dropped.  (So the next binutils release will 
be 2.35).

So 2.25.51.0.4 is a development version which will then have been
released as binutils 2.26.

Cheers
  Nick

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/10f4fb0b-1012-b0e6-af05-0aa5a906de21%40redhat.com.
