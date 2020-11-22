Return-Path: <clang-built-linux+bncBC27X66SWQMBBVVF5L6QKGQEN6QALBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0962BC700
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 17:33:27 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id q17sf6837489otc.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 08:33:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606062806; cv=pass;
        d=google.com; s=arc-20160816;
        b=XkglqKzeYff86+zMJXc3zn82ImUY40wGFgiTwleX0Ue52eTxiH4pIz9IDYh9YkAt/T
         3GN3VcZH60V5/XiDOpPlvzx8ngVzdiyQv3BlnlZLiViPx5D8dMJT1GO2tJBQE88Mki+j
         qI+NdUJhHsKQ06Isw+RkNbOiY3jJGJz1p4XSE1aucgN+ipF67kZJZOfQuh33KjHiRXAV
         eXyLaKVOfQQ8EQKCFm6ZB3ebaAA71FeawNuAm9IsOi5KG5bglUocc/wPOx/dYvZv6rlY
         A9R549W7c9gphh2f8AQWPlClXB/cSEKTNMlyAFM5rzZ9lSOip12TpxXSu2AdrxC0gYPv
         +v4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=V/bzpkpktoncProgt1GVrUuwQziqxPInrhzbjv2Em70=;
        b=YX1rovA6KbT6+ZXzA+axf7aRO1vKtL5CRV0fO85+cvRkikNCwnoztOdrWUB2ztsSO+
         htSIFfkMs4SyQoo9VjjWfCsIOuZVf8Ps8t9S5ztpVjNDMcsParusc0tfnBy6IJRn2xaF
         v8VVwFmUj0OKyPs2qNxq8iHR8Axs88j/eyt17sK6q2Zb0a/+NzPhnXmIHShEf8Fmbf3k
         jLdrIfW4YLcrIZxD3kzI9TxHyYhg3PVYosk3qugm+z7sB0qAElqi9OUb8WWE3+ymhACW
         TkzCXw3/M8jYmgzRcIFckvArgdz0k7a2omSV3tk5skdAcRBLpwIXyxrKDXGIPQ8jlrwd
         lX+g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="StCMHC/H";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/bzpkpktoncProgt1GVrUuwQziqxPInrhzbjv2Em70=;
        b=gTO3mw4zLzOBytYlfG5Agem6OzPTNVFvOL9JKYNAkUf12zT9zBsd3HXhUCqXQtPxzs
         u+Fya8u8nLF1PT1IWdYJvCVZZudBuYS4BjLnhijdFkfmFicNEt9CsHl0oP7x872XAhFB
         THj2+b6s6uMYshgKKgkhmb45wer2lip7anCICN2mmN4oToMm7sVK8mNH+KwcClnx3jAA
         Q/J+twf/rlNHAyobMjwIAI9VuyoImLWoCPyMUbUr9wgssCgwlH7BK5/Ybj93dKiC13ic
         GpJqMb1YoeA9Y6uhCPd2JWTd+yY76ijG0H2wM0KYacItbCljAUdTyr++FPZ/aeyYMF92
         NqEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/bzpkpktoncProgt1GVrUuwQziqxPInrhzbjv2Em70=;
        b=sWl+ie+xqtR4trKLT3j1I3pO7gaARNRE/L5dsGGjY/7UPizT2vanfQ9uNChAJ8A6P9
         HNKpirJdxh9B4sPjUix4JKBC7SW192gnGmx/5DvUKUQU8goEq+pQOGixiHJ0NdnaALEh
         LPykL1kjMdOP1jHw9nZQ0SgE7GNk8ILQQ3nLecK2eo8EMNdfbH9y1u+y6UCSRhsfokfG
         MHubuxSn6fQCJ+rXZTolGMGDYKlGSEy3eR7ZG20VSHYDDYmjEnALe7ZeUYCvd7i3RX4E
         qSjd7Pj01K8L8KrFYPBCG6ZaOAc+b2n/KLfcXTM6LUGTs2KCy5zz24JBFgH26fJR9MWj
         iWiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5307BCpAdpD8h3gv5ss1d2KrjUWu4z2yrlImvuiRTfIoyAHC7SC5
	ckil6cfJr86enrF8vA36PLg=
X-Google-Smtp-Source: ABdhPJz7T4IShdmQ5SPvpbqgZvvVQTtSSxw5wFZJvIm9AOzo1PB96FhF+dyW4GzCM8r8y+jknAAGlg==
X-Received: by 2002:a05:6830:1319:: with SMTP id p25mr20665079otq.33.1606062806333;
        Sun, 22 Nov 2020 08:33:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:dd84:: with SMTP id u126ls2777684oig.6.gmail; Sun, 22
 Nov 2020 08:33:25 -0800 (PST)
X-Received: by 2002:aca:2b0c:: with SMTP id i12mr12843948oik.72.1606062805808;
        Sun, 22 Nov 2020 08:33:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606062805; cv=none;
        d=google.com; s=arc-20160816;
        b=dCxZlwIX8jsQZgpusHtPJpCFlk7l4zM8DVXGWEguiCUGotJxNaAQgsNgzuwNHaCGK4
         5A8g35V1gjvfjteWhKnGYB6yKZTvRv/5LrCbfmV8FaSHLs2JD6Sw5CHczUwkXl7PcyEJ
         JeZdjpDl3sPEfXdvcHytykZlrREPekY0Ly827lvg2t8+uMZgfJJpYKTK7C5suENmOBMe
         VkmDzEfGAszvbbeBi1lTLEL56Mu7AibhUsO1G7psewAaWPrfjCLHWrrXX4yuXYSgR1p5
         triHLDhtrLZqur92GNxIVE8RLd6o0cPQnOu0WN2yinPkUS16EORpnusGfcCzZlnsa0Hm
         LA8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=eSFXaX0DZkpNbOwM/RCeF/BEd3n14fz/kurtk7pTmoY=;
        b=DCD5VVncR90IhjC2PIOltXqMb80dwShhKLQnnugrYYv65Svoh/95t0GZtkX/D+FrLk
         YZcalAVfxH5oNCt5xAKSOHDWOXlYuah1c69Tugm1Wb8kjVn405ZsXmKQAdBh1vT3o3Q+
         lWyB+V2N1xX5rXooERX9DG+M+0qemmwdvMNdtkLwB5sfgU2bjgQH4SE9gycG+NVpcEJc
         oEMWTThrIeHBSyAv1tH6qCh8BHVOg8y5TpKYVjc1DYuXTDL3JWnfpyzyRKClajt3ZXUM
         zhkGvYsJv9K7dqfXZ/ijTtxZQqqvUbZj74eXGX06MDq2uY3DEbeTlsZSf9sB4fRR3ybn
         VUqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="StCMHC/H";
       spf=pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id o26si975506otk.2.2020.11.22.08.33.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Nov 2020 08:33:25 -0800 (PST)
Received-SPF: pass (google.com: domain of trix@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-61ThXXNaMfmcmnerLTYVSg-1; Sun, 22 Nov 2020 11:33:22 -0500
X-MC-Unique: 61ThXXNaMfmcmnerLTYVSg-1
Received: by mail-qv1-f69.google.com with SMTP id a1so11199662qvv.18
        for <clang-built-linux@googlegroups.com>; Sun, 22 Nov 2020 08:33:22 -0800 (PST)
X-Received: by 2002:a37:a783:: with SMTP id q125mr25815203qke.10.1606062801571;
        Sun, 22 Nov 2020 08:33:21 -0800 (PST)
X-Received: by 2002:a37:a783:: with SMTP id q125mr25815168qke.10.1606062801138;
        Sun, 22 Nov 2020 08:33:21 -0800 (PST)
Received: from trix.remote.csb (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id 9sm7113466qke.6.2020.11.22.08.33.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Nov 2020 08:33:20 -0800 (PST)
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
To: Joe Perches <joe@perches.com>, clang-built-linux@googlegroups.com
Cc: linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org,
 xen-devel@lists.xenproject.org, tboot-devel@lists.sourceforge.net,
 kvm@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-acpi@vger.kernel.org, devel@acpica.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 netdev@vger.kernel.org, linux-media@vger.kernel.org,
 MPT-FusionLinux.pdl@broadcom.com, linux-scsi@vger.kernel.org,
 linux-wireless@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 platform-driver-x86@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-omap@vger.kernel.org, linux-fbdev@vger.kernel.org,
 ecryptfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 cluster-devel@redhat.com, linux-mtd@lists.infradead.org,
 keyrings@vger.kernel.org, netfilter-devel@vger.kernel.org,
 coreteam@netfilter.org, alsa-devel@alsa-project.org, bpf@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-nfs@vger.kernel.org,
 patches@opensource.cirrus.com
References: <20201121165058.1644182-1-trix@redhat.com>
 <2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel@perches.com>
From: Tom Rix <trix@redhat.com>
Message-ID: <6e8c1926-4209-8f10-d0f9-72c875a85a88@redhat.com>
Date: Sun, 22 Nov 2020 08:33:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel@perches.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: trix@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="StCMHC/H";
       spf=pass (google.com: domain of trix@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=trix@redhat.com;
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


On 11/21/20 9:10 AM, Joe Perches wrote:
> On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
>> A difficult part of automating commits is composing the subsystem
>> preamble in the commit log.  For the ongoing effort of a fixer producing
>> one or two fixes a release the use of 'treewide:' does not seem appropri=
ate.
>>
>> It would be better if the normal prefix was used.  Unfortunately normal =
is
>> not consistent across the tree.
>>
>> So I am looking for comments for adding a new tag to the MAINTAINERS fil=
e
>>
>> 	D: Commit subsystem prefix
>>
>> ex/ for FPGA DFL DRIVERS
>>
>> 	D: fpga: dfl:
> I'm all for it.  Good luck with the effort.  It's not completely trivial.
>
> From a decade ago:
>
> https://lore.kernel.org/lkml/1289919077.28741.50.camel@Joe-Laptop/
>
> (and that thread started with extra semicolon patches too)

Reading the history, how about this.

get_mataintainer.pl outputs a single prefix, if multiple files have the sam=
e prefix it works, if they don't its an error.

Another script 'commit_one_file.sh' does the call to get_mainainter.pl to g=
et the prefix and be called by run-clang-tools.py to get the fixer specific=
 message.

Defer minimizing the commits by combining similar subsystems till later.

In a steady state case, this should be uncommon.


>
>> Continuing with cleaning up clang's -Wextra-semi-stmt
>> diff --git a/Makefile b/Makefile
> []
>> @@ -1567,20 +1567,21 @@ help:
>> =C2=A0	 echo  ''
>> =C2=A0	@echo  'Static analysers:'
>> =C2=A0	@echo  '  checkstack      - Generate a list of stack hogs'
>> =C2=A0	@echo  '  versioncheck    - Sanity check on version.h usage'
>> =C2=A0	@echo  '  includecheck    - Check for duplicate included header f=
iles'
>> =C2=A0	@echo  '  export_report   - List the usages of all exported symbo=
ls'
>> =C2=A0	@echo  '  headerdep       - Detect inclusion cycles in headers'
>> =C2=A0	@echo  '  coccicheck      - Check with Coccinelle'
>> =C2=A0	@echo  '  clang-analyzer  - Check with clang static analyzer'
>> =C2=A0	@echo  '  clang-tidy      - Check with clang-tidy'
>> +	@echo  '  clang-tidy-fix  - Check and fix with clang-tidy'
> A pity the ordering of the code below isn't the same as the above.

Taken care thanks!

Tom


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6e8c1926-4209-8f10-d0f9-72c875a85a88%40redhat.com.
