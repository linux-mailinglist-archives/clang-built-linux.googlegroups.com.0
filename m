Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBQMU6WEAMGQEMSMESSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63c.google.com (mail-ej1-x63c.google.com [IPv6:2a00:1450:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB8D3F0AB0
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 19:58:26 +0200 (CEST)
Received: by mail-ej1-x63c.google.com with SMTP id k21-20020a1709062a55b0290590e181cc34sf1175846eje.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:58:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629309505; cv=pass;
        d=google.com; s=arc-20160816;
        b=gWLs1ZhX6oK+QffeozAK0VZqjLjBJijTZfSK/9gxwYXxz4dclwn63jhxVy4q0S3NhR
         nKigP6lkiD/mAN/Whf24npkui906kc2Xo2a0rqyam1QV+bGmtMxaUe+acSDlVsqlLwOc
         FFsRT+4ahA7OLyNKIF69BpvUlnTGP+uWD9SpeWswb4mSMd/tkhtzDOpfyTGbxE9LI4PF
         TFxrP2JhN3n4YUp8wqLfN2H1qhZzKXlrVFGC99fyebgMPsDCQAMQHjeAjmJXC0UAE6dR
         4ypbMt8379I205TZx/dinmPhMAv6c1mZ3/+/mRkICOQWqh+CTvvYZ7dt/yuuVt8gQGai
         5obg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OE9duaTvT7+CfIDheQrgfCaPJnpZ+TN7svldgFtXGA0=;
        b=dG0/4vQ2VWTr3Q+DSoxSh9kvDYBS+Z3UNCuyP4cSUP4tq+k7Q2XCCbeBIXmfJwmkW5
         aH/ukdwqZ9xf4j5rflZwHMB0APmBpbsk5JiFet57Bmtiuxuddw3Ai/VqzHFsVlg1niT/
         xZaSBzIp4GzOLeZlPmEAJstozJQBso/pTqMjHW1+fM1IZ7JK9BBw/4fLyxfxjGFo5vha
         ZCsEmxM/0umjDtUFlOO3OyxHQLwZ569kyA2WRohaf/PODCY0bweh28xbaMIKjPdpYPBN
         8zUMi9GNodhOveC69bBLV87OqO/hssN84OIXrhfRQFVVEWyIxpF1HYgRR+Xjp3r4zDXV
         e7IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=QK8Dumn0;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OE9duaTvT7+CfIDheQrgfCaPJnpZ+TN7svldgFtXGA0=;
        b=TOZZsIG/Tu7w3FzULWWxRfMnKRjsBF+0ybB0ez9D3hhUARyqsytf5PfXOb8SkVZ99p
         BCVsMxMx54rlTQPoLwgRs8iekIXVzaiW0iUguM3OqbElpZUYHWUqEs4NbEMICF1y7Uzt
         F+GUB786HLGIsusjelCRGTCXC5FK1oSkPnQHqfmu8Z1c3zM6MWLj/UtpJnSst+SiksxU
         OhGhkCZ2CKAX2oGwdJx+rrfdNvfPrcgfKiNRr4tsFcc3JkvsQR+XfGNwPz9WhZhfnEDm
         DG4ouXrJ+hv9JZ6wKi7f6Quf599Abip7TzV+EfvTyK5XrmPM8ofYk1H7Db705sI9AKF1
         ziqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OE9duaTvT7+CfIDheQrgfCaPJnpZ+TN7svldgFtXGA0=;
        b=uP6Uu8ova83jWCQOuwlQKj/BZtiTYncZJ5MqqjgervAHa8YL4XiAHyZQjj8JETiw3B
         Y3QJG902JrTHTpQfz6aDEZhz5r47H6i3B9FzG0FY+4ibw/kgTm29vypr6trR6thoSzS5
         sjWq2wEdMmH/V3tHpTiZhuHt30J7Es8lk3ARXIgx4pRVrty32lcgAfDhfEOTAwUZo/cO
         ge+BApsqYONUwbU+zzcqMKCg6W3euE0Mpm+V4L7NFt+9kaYkqqCFe4SZTT2Hyp1f2qCP
         3sRPPw8z4rUhTdnvXx8JCiHeA55l75I1q2tVQCE8C11MrRa/XBA/22YobC8nNJeDrh7A
         Opog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ppmNvyBI35XjPjFdoeAxFXpebJA8Ff+9HuVG/PULqQZ2BtGst
	iXTNrAlgOFHWrOPjnCq06DQ=
X-Google-Smtp-Source: ABdhPJwZ8nrySU4V29jQSpRV3Vgmn1cDgV4vcut9VJOfUu4B8uBS1eXNOFoxdoP+Doun4dYHTZyInw==
X-Received: by 2002:a17:906:7691:: with SMTP id o17mr10867140ejm.485.1629309505740;
        Wed, 18 Aug 2021 10:58:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:46d8:: with SMTP id k24ls1409005ejs.5.gmail; Wed, 18
 Aug 2021 10:58:24 -0700 (PDT)
X-Received: by 2002:a17:906:c091:: with SMTP id f17mr11146264ejz.134.1629309504810;
        Wed, 18 Aug 2021 10:58:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629309504; cv=none;
        d=google.com; s=arc-20160816;
        b=GDhx6J5Zn4tK12JKHvm/kJHsnrN79g46tZrHthxpJn5Mdazv5lyqaq4dyxusy11Uob
         T6W3gmoXy+ntyIXFHBsKwUZoN1PxYDfEtSz4+x0abp3eNEWrAeFY/BqPkeEvX1mE4Fmq
         egZ9tUAYEA3Gb7AEiusmgEUsMVI30EqOt5UxnEs5X2xgpwxmwNxo0k9dGzG0dYa83x3k
         RdwqIAavos+JQ/rBJ7SwKiXBLLwEu5Snx7BsuFvDYnCBWy6pQBlC+ps75XJa6fpeZaKm
         pyHamnnIrJpmY8EM6EqlYa3lu1ssFx2R1hsas9K8Jn6+7p/lRRe3NTW6X9Na38ORI8si
         nRGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=AFLaBaNpzHVbJbyU9w9pbzBVwCiTKlHLGR5SGWofGM4=;
        b=t3fvNq9pKAAcplFRpsja08FmkjzcECxw8TpwJriFmPSrAZj0zXP1KROrom8RFVZ0Lo
         /IbHzOBDkLmLH6XEMdqofWQmjWdnkUmEGtUTomwenk3orOPd4DaY7GbJqHkRRoYoa+5C
         GwjnzK05xQVftBk46N2qJ8Lz4H33OZItihcFkpg8LURVQKzVgJspL6Y53Kft/2UYEQKz
         JcelvFHW4aLyvPS1BHfK8J86P2vslloG0IMAHwX81Ydurb+O4IA/EJMi4LazDwY7leqT
         UiPuJL7ABBF52dkxF3Sex24cV+lSDu9KHkqIrcXv18jVX9WIdofj+MCuxrfOSr4lhquR
         IYFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=QK8Dumn0;
       spf=pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [5.9.137.197])
        by gmr-mx.google.com with ESMTPS id y10si40458edq.0.2021.08.18.10.58.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 10:58:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted sender) client-ip=5.9.137.197;
Received: from zn.tnic (p200300ec2f0cc30025743e574fa309df.dip0.t-ipconnect.de [IPv6:2003:ec:2f0c:c300:2574:3e57:4fa3:9df])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 2B8431EC04D6;
	Wed, 18 Aug 2021 19:58:20 +0200 (CEST)
Date: Wed, 18 Aug 2021 19:59:00 +0200
From: Borislav Petkov <bp@alien8.de>
To: torvic9@mailbox.org
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"x86@kernel.org" <x86@kernel.org>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"graysky@archlinux.us" <graysky@archlinux.us>,
	"masahiroy@kernel.org" <masahiroy@kernel.org>,
	Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
Message-ID: <YR1KDD/azm1IDr9u@zn.tnic>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <YRwBs89eogLJEiRn@zn.tnic>
 <1708009975.124311.1629299321026@office.mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1708009975.124311.1629299321026@office.mailbox.org>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=QK8Dumn0;       spf=pass
 (google.com: domain of bp@alien8.de designates 5.9.137.197 as permitted
 sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=alien8.de
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

On Wed, Aug 18, 2021 at 05:08:40PM +0200, torvic9@mailbox.org wrote:
> I ran some quick checks and benchmarks, and your doubts seem to be
> justified. A 5.14-rc6 kernel compiled with the default 'generic' and
> one built with 'x86-64-v3' even have the exact same uncompressed file
> size. Benchmarks were inconclusive as well.

Lemme preface this with a IMHO:

Yeah, those -march machine-specific compiler switches don't really
show any perf improvements for kernels because, well, if you look at
the instruction stream a kernel executes, there's not really a whole
lot left to optimize after -O2.

Also, the percentage of time a machine spends in the kernel should be a
lot smaller (orders of magnitude) than in userspace - the operative word
being *should* here :-) - so there really isn't anything to optimize.

Not to say that there aren't a gazillion other places in the kernel that
could use more eyes and testing. ^Hint hint^

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YR1KDD/azm1IDr9u%40zn.tnic.
