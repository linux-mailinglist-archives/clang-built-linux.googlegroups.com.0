Return-Path: <clang-built-linux+bncBCLMT5XNV4GRB2HLTD5AKGQEOU5OQLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 541F0252B33
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 12:14:02 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id s185sf1151124qkf.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 03:14:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598436841; cv=pass;
        d=google.com; s=arc-20160816;
        b=W0w84mQAR8fzVX3FuLimr7edsQ4SApFWQgGJ0r1qU1CzjO8f2uikMPv5vv56jhY1mn
         2sBSEYt7uQ4TUYSUFvIm5An/JLHJ8DIFt8LvIsoYGWga8wB2KeJe28YgggqbIlVEm3Dr
         Q+26iN5kM1ANXdY7DwKUhBEcMxUH4B7gBHX9cLoLwNbwouafHq3ygjghNYzdTjiOQ3jm
         aXPEL13i8XvDnUUymmuTigmjjvOyr3+ahxPRUt8oMkT6tBEhZX9cbR4Hp34rCu+KdSLT
         qnUn1/zdL5IRBfG16io8/OjVNNaH0pTziqtVLgUiMVIpFj5EirMbWE5R6CPR9FpIEyOy
         jk+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:organization:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=tcsuRdjZbYr7/tWIY7AqtdKIj23KFtw6TLEGo0PyM7o=;
        b=UDLYAkgffxGeOc4h+fRZH2BUgB1pfbjhxJZGzkuh+Kj8QPyFRwXJmnoU/0BUP0MgOW
         oOEkfm5ddwPY+5Tam0GmVgdtQb4u/vHp1SmXxuYtrrv7JY0O3l03QA9zLRa9OYFOGVlV
         P25DLM+viJlxGxavDaIwAe0sNC1AGlCrt7L6Mt+lZk9+HaI4/Y86CsIVPAcJOsIK5wXd
         /ojSok/8Jqk7WGKHrd1hy9gpIVrvMQq+5xMe7vdxT6dCm+L5Nb4TGsessYtMsc47E0bg
         F1FH00a0TwT7KvPYA57HQokEAgejxLqzP/3bB1PA88MsBTb+e7nqBZB7y0s9h1JiG8Mo
         ziSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iuAab4Ft;
       spf=pass (google.com: domain of nickc@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=nickc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tcsuRdjZbYr7/tWIY7AqtdKIj23KFtw6TLEGo0PyM7o=;
        b=nzKtY5fcXwdmHaos+gBIAuiGkIe1feOsQOIH7nsFeuu4aFNKxNIag1vDxy3arYmfpQ
         3yJKOo3NHGhYBiCGmJLopUyp+nP9ZtNfzWYmpnD4Gw4CynQ/zIoJRIIaGOkH7ur6Cpe8
         P2N29RqOEBFfM8WL8pMuFZqHUjY4zmJrMS734lMWjc+mEbKgpci0Kvi+ktEcDuWavYux
         K4qA3jPjULcgeAZHjjtgsYnYVsWYb89Og3Zzbs58SCH1X/joNs+cq62wTCQMrCncm/OL
         z1zxM6ktfq1EfmMUhoq/DWLr2BGFy7Wis8JiskpUCMSd3VtIxY51KU+VU2RBRSUylSmd
         E1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tcsuRdjZbYr7/tWIY7AqtdKIj23KFtw6TLEGo0PyM7o=;
        b=PbBSFFPnHHrU1HXyDWuotFcfuy113rChOkEKL/c9z1umZmKQoM2r4QRXBOxKf8ip6e
         o8bE1QDFmKsNS7ByYe6e2s2wFQApo2Ag/VpZ9Rh6vyZh0odyDOlOR/f75n1jCm6GOXUz
         xxkNWPkVcyT/kqWSieSMYVRIuIt4Fnogh81LBUSmmB/be9QhNbxSPWWHu5Y6Waz+cQ5Y
         /v5Bc2yEjbnEPFvXJ7A84APmHe3BSyeiXfyJFXo+yfGxb49XwLg7sX5fcrbErsYzRhrh
         Cd+0thLjyFoM5zsnd4AUbvsb0DBWZS7nykSzBs0GAlHH/+uwq027rOFWNCYbovU5hdpi
         +2fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531O1ln3FbQr3mrcUij+0ZT5seuh5gt6GuqaUCxIAOa17n+ye/HB
	JkAmfUxZP23J9Enw8MeSitQ=
X-Google-Smtp-Source: ABdhPJyjWxqi31X7PgLvBUwp0QfETf6IqFhJ37bIBQWQjv7GKnNcdJuBvs6huUAO6E4eMdlQ88os2g==
X-Received: by 2002:a0c:fa50:: with SMTP id k16mr12714600qvo.132.1598436841018;
        Wed, 26 Aug 2020 03:14:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2752:: with SMTP id n79ls779431qkn.7.gmail; Wed, 26 Aug
 2020 03:14:00 -0700 (PDT)
X-Received: by 2002:a05:620a:2f5:: with SMTP id a21mr1643812qko.191.1598436840563;
        Wed, 26 Aug 2020 03:14:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598436840; cv=none;
        d=google.com; s=arc-20160816;
        b=UJ3hqPvbtTZicVzwcwgPbSxKvYT0f4ZcSmg3h82PNkb/2cfMvcjoVkTxcf95solKQr
         Bl1V4vAiEZcW3iAKdMy+Cv1JxDS7YRJOGVhXtckvwDf34AVP9Epu11SU0ZvOPX+UVXkm
         k+zvqaTrXYw4MGYvWv/ffPGEWL1jdU1V5xafMrakeILXm2WBhVhfV4AUuVh26TYEC9us
         71nAvdWKe4t8Byobg+ews5CyLkQQ6Lou/HEWyBmZNBKmMmmQL6D+PTbMDdElf5VgvQnO
         hWWzhSfL2atfEdviN/xr7c2j1/YnUDVeDFsKZfGGW5mzVi4N+YxqBO43gjdfOAaMlwXQ
         oJQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:organization:autocrypt:from:references
         :cc:to:subject:dkim-signature;
        bh=cXgbW88htAH9n9zzebLYpAkbPc7g/DVy2dM847xOvjg=;
        b=x43Q98pBtYkag7ePgTXMJj4MPYkzws5muAbFO/dohDtVZpeXSM9JeDNqutPp2TBNgV
         rLgGVxgEWnumikUKTnWjupd/eQ7YZrPXrrVF5L7PuVNsz+r7whbBAM8SoQxwtSAEtvJs
         OJET9oismNbGO1D8mmYXx4czatDp9Nul+UJbpa0OFheHmZhyLiHO6Y1TWulswJSYlWxJ
         edWpKq8K0bfOHEa4yRKIu8+yNC/1Wv948F6UCQAbmWcXZFsxJS/nREIDMdGNeS4fv+gL
         VWGg2K8Hzfqux6f7Jy+fPJwceR/196tX+QcTXPxpnR5wIkvK3a3HZBcWIMKbq/C9oTce
         nbiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iuAab4Ft;
       spf=pass (google.com: domain of nickc@redhat.com designates 207.211.31.81 as permitted sender) smtp.mailfrom=nickc@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [207.211.31.81])
        by gmr-mx.google.com with ESMTPS id o24si122927qki.7.2020.08.26.03.14.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Aug 2020 03:14:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of nickc@redhat.com designates 207.211.31.81 as permitted sender) client-ip=207.211.31.81;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-61-aYpc_jmIPPG4vbG4ssRLQw-1; Wed, 26 Aug 2020 06:13:58 -0400
X-MC-Unique: aYpc_jmIPPG4vbG4ssRLQw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 33D491074646;
	Wed, 26 Aug 2020 10:13:55 +0000 (UTC)
Received: from [10.36.113.194] (ovpn-113-194.ams2.redhat.com [10.36.113.194])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DBFDB16EC5;
	Wed, 26 Aug 2020 10:13:52 +0000 (UTC)
Subject: Re: linux tooling mailing list
To: sedat.dilek@gmail.com, =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?=
 <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, postmaster@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Segher Boessenkool <segher@kernel.crashing.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <CAKwvOdkHzbPjw71n+RVXuM6Wt6PNO6fiy+14QTzthF7MCkewwg@mail.gmail.com>
 <CA+icZUWvEzUhCjkMYAK22pkjshKmfE4a2y_W0sPPuqRtzXOtNw@mail.gmail.com>
 <CAFP8O3LQSS4BufLEPQKOk62T0d8HoZq0kQAU8+K4d4gpY4CPag@mail.gmail.com>
 <CA+icZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q@mail.gmail.com>
From: Nick Clifton <nickc@redhat.com>
Autocrypt: addr=nickc@redhat.com; prefer-encrypt=mutual; keydata=
 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
 6susi2ReUyNJEJaSnjO5z13TQ1U=
Organization: Red Hat
Message-ID: <664e5923-d65e-0a3a-1320-8b6635146676@redhat.com>
Date: Wed, 26 Aug 2020 11:13:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CA+icZUU44tbsmGfTc-2OO42V42Z02dRSs7AZCJBnXL65vJDz-Q@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: nickc@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=iuAab4Ft;
       spf=pass (google.com: domain of nickc@redhat.com designates
 207.211.31.81 as permitted sender) smtp.mailfrom=nickc@redhat.com;
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

Hi Guys,

>>>> Would it be possible to setup:
>>>> linux-tooling@vger.kernel.org

>>> s/linux-tooling/linux-toolchains (better plural toolchains)

>> FWIW FreeBSD names it "freebsd-toolchain".
>> NetBSD names it "tech-toolchain".
>>
>> I'd slightly prefer the singular form.

> OK with singular form.
> 
> I was thinking of GNU and LLVM toolchain*s* - that's why the plural.

Personally I prefer the plural too, but it is not a big issue.

I am however delighted that it looks like this idea will go ahead.

Cheers
  Nick

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/664e5923-d65e-0a3a-1320-8b6635146676%40redhat.com.
