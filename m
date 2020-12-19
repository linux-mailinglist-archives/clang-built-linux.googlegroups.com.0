Return-Path: <clang-built-linux+bncBDZKLXNI4ACBB5XZ677AKGQEK4IGWJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2972DEFC7
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 14:15:35 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id o6sf3495284pgg.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 05:15:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608383734; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jfh16KZIRsSLazXTEeNbSc1l7Ky4ZPXKByN0PKXq2qbhGBQagF/lXgoFQy3PRVLlVJ
         EhmgpHkAH5c4L+fLOAKmk/4qeFJpHl8XpRXPbPjyZp/eY5yD4hS8hzdtzO4gdYegmbyA
         rwnS9n4WioQeTx+yNmEboUyl6hPQRBQfoAzPf3/6rx38GrQfS1z+5ICiTKJNX+M/JmlH
         KFu7nePyJ2W8asxL5qeAw0VuzM1/HLHWvc4GyyPAACmfYdg65rJWLoutXf3UFvoqTGwA
         yxWEMpsIEgflVGXsyBImjyn9Het6gnodQW/Es5MV2r5f+rUNegjh/b58G05aerniJp5C
         Nniw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=KIXQYI7yaeGrKwsGOoR8Iqy0in0GJg7GK8c6PUoMCIs=;
        b=ajaQV8TwWuGYjo33AcbX9HW7ft+ktOB4xc7dbIEE8975UrwWEI8f6TwmgWM1chVuFN
         VkRt4jhzQ4Ly2zR3S7o9+z84fMrHa5nVdWzuLXs4+dB1VF/pJb5wO6guRdajTTNdi5M+
         arg8mV3W7ZM29ufFovO2htMiy2OCMsXjYoM+IQg4sQI/bsNDWF9q1hOh6wryZRY2RT4a
         JW9CQGjuxZQRZ9+mnfOvyoipRbOW9GtLHeeOySvppphuxNWslrkJyYd/8f+atfyN/4Lo
         HJ5HO88/93QhQQSXHMMAkEijyF4W9dukC0Vbw9DyWXbgZSrvQrQuBT5rtqU0msU9Sgil
         ASoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KIXQYI7yaeGrKwsGOoR8Iqy0in0GJg7GK8c6PUoMCIs=;
        b=Hn5yBiVAQgY/HyeyjmNWFf4LIo8xqXxMtAe448qgnANWER88NqtDzF/mwrhVXSciRg
         8cHsq+cKbKpF9FDZERrxzTUaoQuDjcCSml1YlqsZgCnn1aWHPMQ1t+jYVEzxDHifP48g
         8A8tvWLudSrdEzeEGG7ZWX5+EDH+5b+CSOmOdWbhaVsSwaC7Zf1A9IkpefF4q7/D/LA9
         zLGLVOOQzMXwQu0zQIZ4hfUKfQi1oP02SvsR1Ep3L4qbgEJxqkQbk9KBRJnWUwosT6s+
         PJ2bLFmKRcSwtT6OwEsFN2hrZhdpqd7gKVghVZuX5lEK/hOm+yx7TZNph1rf3khVtrTD
         yZsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KIXQYI7yaeGrKwsGOoR8Iqy0in0GJg7GK8c6PUoMCIs=;
        b=Godum8rs0hgZYhlOdziV0A4gM1sIsnZ2xDAfIdlTJyYbrF+Atwi5vbulkuQAddfgWq
         z+hG5IAVLIkztrA7b3dfp8esR8EKIPfFjxnBXrAqw9FAunatmjYuQxbsvqiYpHWPXPOs
         YzR8lSFlcYIyYBYTPSu0OUN8YySmkc0OoPOxREwcZy0AYdpNTmsPTcD8jxKCH9RTnuRh
         hroSefsII3fHS+ofH2T/6B4oOeAVWs8EeI/aZDuuz/7WXd3fDoYuA9e/5Z0CrKGv5ncc
         bGxhRNrlTY+j/ySBSmT9ZxM+rcNYt5eIJs5LcLUtl9Dpo381jBmZYZigVO6J5lEcRPGh
         L6cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302BZNa4wVfnpMQ4RGr2W56yvID2DDnkvNA8Ni4lMqm6Drd4rVg
	ikwCDeLmTcOJiWif2DN+C4A=
X-Google-Smtp-Source: ABdhPJwzyRKBoYwGMU1RSD4mTm/7tSujyqD/ZaBB6XB/eLo7hDDbgEXnnHpwnuJZ8qJBKOVkKJHsDg==
X-Received: by 2002:a17:902:e98c:b029:da:cb88:f11d with SMTP id f12-20020a170902e98cb02900dacb88f11dmr8917564plb.17.1608383734575;
        Sat, 19 Dec 2020 05:15:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:4f4b:: with SMTP id p11ls13433904pgl.10.gmail; Sat, 19
 Dec 2020 05:15:34 -0800 (PST)
X-Received: by 2002:a63:1519:: with SMTP id v25mr6969300pgl.217.1608383733990;
        Sat, 19 Dec 2020 05:15:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608383733; cv=none;
        d=google.com; s=arc-20160816;
        b=hxqgWPBu8ThWR5Miv/VGphHi+uSgmWSEo6nyrmWnkYP+dVdTLF9JUQ1SjE5ltQqieL
         bRR2wJecqm6cEFZvlej3HPCUFqt9gTVufxv0INmvTgdncLTNa1pAOKi80tQ1zh3YEvCN
         EJMibcxL7xF+ilQX3KAQn3C2zo/o2c3lW1cJLff2s6GtSuycohxDbw3rv+qsPcwR9eqy
         dlS1HLpZuy87L4YHX6N6ChxKyU3nZTObrtz7rGU245ISwWBS9cmQ5AQuYrKUldUpCpjQ
         atVuuDnRKJE9QqqX3bUWaF7a3m3VwPtaTzDhb9Zi2O+GXlaUIxrg5DketgotjamGgs5X
         2c1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=kTzqZparynieKtCigsRHovDkTtbp/wIpC+3byvS3OsU=;
        b=ZRX/hi6Zy91OvVP8yk1LJ9XjUrv3A8nV98vmhWGTiM2RQFp6nlV62fofXVMtWoQZRp
         Cjx2xkUAe4u4VMG34vQ1t1JZ1Uvpf45ETjn20lEibn0lCt+mD+QmPV2MGkCSnT6G7u25
         EkGkT1nGpYwl16c7HEpXnSwNw6x7ffrw7YZSHxI5Pt22JGNleQtxO68bukNPMnfTDsNl
         gzqT4FzNpKh4vgnc6KMiF5hG5cxv6HEHXtdRmTATzvtetNrnCKhFF2SH09JD9ABtf6E+
         vxdGaCBTiuDeV7unDEX5mZxILQ68kiRUm4qycbha1M48fUwdH4fJJuBv4rbMPKwFi2T7
         uCFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id w6si785386pjr.2.2020.12.19.05.15.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Dec 2020 05:15:33 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id D5FDA1C0BB7; Sat, 19 Dec 2020 14:15:28 +0100 (CET)
Date: Sat, 19 Dec 2020 14:15:28 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Philip Li <philip.li@intel.com>
Cc: kernel test robot <lkp@intel.com>,
	kernel list <linux-kernel@vger.kernel.org>,
	Zheng Yongjun <zhengyongjun3@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [kbuild-all] Re: [linux-next:master 13538/13785]
 /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
Message-ID: <20201219131528.GA18240@duo.ucw.cz>
References: <202012191403.y8Aomjpm-lkp@intel.com>
 <20201219075606.GA20870@amd>
 <20201219102820.GA14085@intel.com>
 <20201219104006.GA14905@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="FL5UXtIhxfXey3p5"
Content-Disposition: inline
In-Reply-To: <20201219104006.GA14905@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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


--FL5UXtIhxfXey3p5
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi!

> > > Crazy robot, stop spamming. This report is obviously bogus, yet, you
> > > sent me 5 copies.
> > Thanks Pavel for input, sorry for the false positive. It tries to
> > bisect error like below (the new error), but it may be related to
> > assember support. We will adjust the system to not report this out
> > wrongly. Kindly allow some time for us to resolving this.
> > 
> > > > >> /tmp/metronomefb-846872.s:300: Error: unrecognized opcode `zext.b a2,a2'
> > 
> > Thanks
> > 
> > > 
> > > Whoever is responsible for this, please sign emails with your real
> > > name!
> This is Philip who maintains the 0-day ci, and lkp@intel.com is the
> mailing list for the team here to be contacted.

Yes, so... 0-day bot normally does a really good job (and thanks for
it).

But getting emails from robot is slightly annoying, and it would be
nice to include name of person who is primary responsible from the bot
somewhere.

If you are primary person responsible for the robot, your name should
be somewhere in the email. Or perhaps the link in the trailer should
lead to explanation somewhere.

Best regards,
								Pavel
-- 
http://www.livejournal.com/~pavelmachek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219131528.GA18240%40duo.ucw.cz.

--FL5UXtIhxfXey3p5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iFwEABECAB0WIQRPfPO7r0eAhk010v0w5/Bqldv68gUCX9388AAKCRAw5/Bqldv6
8iuUAKCwJvnZj9AKJe3lC0oq1dgqEjdquwCY4xqggoKVoSEcV8Pok0Z/qDfKoA==
=0AaT
-----END PGP SIGNATURE-----

--FL5UXtIhxfXey3p5--
