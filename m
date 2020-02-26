Return-Path: <clang-built-linux+bncBDL2VT427MERBBX63DZAKGQE24L6A7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E8F16FB49
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 10:48:55 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id i18sf470370lfo.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 01:48:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582710535; cv=pass;
        d=google.com; s=arc-20160816;
        b=vr3hKB7yOyESJyHNsjPQEg+4bIeG7Gxsb57/pB4RrdDWoLBXi65OwpNRTko0WzaVDp
         LXR812s3TJyT9OqqNUpZPXitvjjSLfG0RlQq2JhJ61vvwoh+KjBAqpRLJfix9ZhKty49
         hV+MuiIS0lswxOYmO8BVejuB5XZTaKhyJmq46E/NIlvODLLLYKanI5bflDVl724vb9Qv
         bgtdd7P6Yw02VqDCJqpYAM1as5CKddrK94C7rsg1AgN6oZsy7e2uXCUFo/w2m+XVHkXR
         5K0FQvEo93LVVAukI3VzWjvw2DutkDXVC4HVl7ZJwBh2Iizhsg8313+n8S7F3LsFS9oG
         nppA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=o4tQPobKUz9cM1PmWLmQ4ejbYZkU/n0NRKvf6A9T6Cs=;
        b=MmHbaQU++OBu7lBy1X8as5fdKGGOn03rdhwZHMdu3ALa8No65IMVaCQCSmKQPf3XZ5
         7XqS4hUq32Xlrnsle6uMWDxO/3Xh76Kg8d2LGqq58C1jlTNBy/LBdN2vUkdr4+/NwN87
         LDRS8k5qABtm74iIHwrwtTtU4oQD7juEsoOPpJjBQHV3ho26M0eHF3L8wVCHaTtbC7xv
         hiWnlxacMoq+N+rHa2wj/Xs4OCayDsgTij4C29HzfUAlClnx1+YPHSnl/TxTEusFuujj
         EoevXpMacA954t3BpYc/SfBxRMrsZW3TIphpaDeQxXqErgLOk5spzFkeeRGfEyC68pXW
         WFNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bp@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=bp@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o4tQPobKUz9cM1PmWLmQ4ejbYZkU/n0NRKvf6A9T6Cs=;
        b=kmYpowVDc4rW6EoWIzJlXYsF8QhacFoDmejGBjOcXD5S6mnKJoPuYBOQC8GlyXbzoo
         Hi0ZecCmf9n5fKRzuLHP7IHU7WxMkNWJC9iSS4EenzkfLafEuO7yJPCXmEAxARfYRSa4
         AwHIm4jSA0Xe1ZqaBezsJODIZrZEQbPGXR1rggDL6CkYvBBbmjbfk70BB0FvGAf8P8pj
         Z/K4quW5Pg3pujzgBJIqeyu5jS3c7GmYTefQycvZBrK5maxc5anAEaAElAhz6J5Moth0
         Zg5FpanIIBIrurdAn7e+eIXVAZYZ9szwv8Y67NsVmPNRN3qxmA+W3zTfSax5xG5cVTUb
         qdoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o4tQPobKUz9cM1PmWLmQ4ejbYZkU/n0NRKvf6A9T6Cs=;
        b=f/RAGlDBnZi4t0WHt6+vsPwhGKY8COPXDyE2I7aFlWyJfEFSiHWA2XBBiib57OizBx
         Wv5UUG+9TBnXL1h/LFdjb4gMbPuxgHvDv/9bdoGD9EAqbgbFrA+793Gm83nREEIIIMdu
         7dnwMR00Btd7fgjjk0oI02RwMES0/TF3pvIJAwtPJ80TItpe8OdLx3M9A68KYSZq04Ug
         IBqov4pmPSRZR/BWxlKwVHyugfsWF4gnUOfkw5tyI3ayld/iHd4k7Lw/OZKiyIvylndv
         Y9p8/+yQ5i1geKqPE45BCErC/sxWV6rvtE1yM2GytZLJqvSz3XNK1pQNnTY0/jcAzDil
         eKCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUlwHSugKuqY7XXznmDhemr4EuGM6dtLcvJi5YVa7SK0HJXIhzn
	79DBXuYPlSP94h4RA51HXBs=
X-Google-Smtp-Source: APXvYqw0gqv504dy8l1Zfy/kbSFJHnH730OrduF9yPfinMsVDG7QQz+JV20ceF2GzYTw6xJgjxlEUQ==
X-Received: by 2002:a05:6512:31a:: with SMTP id t26mr1071293lfp.146.1582710534831;
        Wed, 26 Feb 2020 01:48:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9516:: with SMTP id f22ls428898ljh.2.gmail; Wed, 26 Feb
 2020 01:48:54 -0800 (PST)
X-Received: by 2002:a2e:9816:: with SMTP id a22mr1115530ljj.12.1582710534164;
        Wed, 26 Feb 2020 01:48:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582710534; cv=none;
        d=google.com; s=arc-20160816;
        b=aim8oW5RAtsHtwhpV3uE00hXHgsMHt38zxr80zO4GDEMWHxs1mq+G3FzHilC0R7gea
         dGxj5IK3xontSGiFkg0/sEVnN03iQXgPCv/uOiOIQ2MEM8Uticp/7onLLbpqqXq8Exrp
         JsUY3LpAHr+Qnp7FxzrxWIR9yFl1ZDhNhGm7sY1Tr+sdhqi4Q0f/zLTj9z44V7KViYZ8
         O9o6nYx9uotiJVQJiCBUkjSQhr68DdAgDLOi1G88osbVK7+UgIzZLeUZ1t94yze2HAVa
         Tw3oxRwT4br9mXN+exM419AnYGjA8UUvfuNv0SK7YZeYQ9Vg4SP7QW163DEOXlYIIxQH
         Z8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=HFUGxVyDDSEU6/0knCGONlvr+ucw3rKrZkIeAmp0NBg=;
        b=tWm2mgIrn/7hom2tSK+9KvkfhyjEPcICh4NxTNji2b22BIaWrXpq1ys7TsURAltSH3
         NOKYsZhONpg8YWaXPVk5zgN/mGyhZlflTkQTrbXr9jelBDOZ9IpjemWJGiw1A2POR845
         Vx1vIMImWUhcxADjr4ZWefJ0Q/B616Salp2JbHzp/Sj7zmEAdMdULzHJedGCgCUM1IlI
         enZTrQxd60Wac9tpK5NaY8K9otYYsI8SKj7B+NlWPYbTxzx4VfNjQPJpqzfTD7jYB6L0
         Se9qvUbG4a0huEg9rKXbYIg0Z0FAcx1/CYFuU1+Ysa29JHXQdcyZQOXEfWjpVc4Gjctm
         kGVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bp@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=bp@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id b10si165304lfi.1.2020.02.26.01.48.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 26 Feb 2020 01:48:54 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 048F5AC91;
	Wed, 26 Feb 2020 09:48:52 +0000 (UTC)
Date: Wed, 26 Feb 2020 10:48:46 +0100
From: Borislav Petkov <bp@suse.de>
To: kbuild test robot <lkp@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [peterz-queue:ras/urgent 1/1]
 arch/x86//kernel/cpu/mce/therm_throt.c:491:2: error: use of undeclared
 identifier 'l'
Message-ID: <20200226094846.GA17448@zn.tnic>
References: <202002261227.tXCI013J%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <202002261227.tXCI013J%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bp@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bp@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=bp@suse.de
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

On Wed, Feb 26, 2020 at 12:38:29PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git =
ras/urgent
> head:   bf69bac4d3ef188ee8cf536a31ecbb230a8ba91a
> commit: bf69bac4d3ef188ee8cf536a31ecbb230a8ba91a [1/1] x86/mce/therm_thro=
t: Undo thermal polling properly on CPU offline
> config: x86_64-defconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 7f9f027c6262=
3bff79730cd30d1a8a534e2ddb06)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
> >> arch/x86//kernel/cpu/mce/therm_throt.c:491:2: error: use of undeclared=
 identifier 'l'
>            l =3D apic_read(APIC_LVTTHMR);
>            ^
>    arch/x86//kernel/cpu/mce/therm_throt.c:492:27: error: use of undeclare=
d identifier 'l'
>            apic_write(APIC_LVTTHMR, l | APIC_LVT_MASKED);
>                                     ^
>    2 errors generated.

Already fixed, thx.

--=20
Regards/Gruss,
    Boris.

SUSE Software Solutions Germany GmbH, GF: Felix Imend=C3=B6rffer, HRB 36809=
, AG N=C3=BCrnberg

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200226094846.GA17448%40zn.tnic.
