Return-Path: <clang-built-linux+bncBDXLVH6MVYKRBQMTR3YAKGQEXMCAA6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7CD12A87A
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Dec 2019 17:09:39 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id u13sf16041360pfl.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Dec 2019 08:09:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577290177; cv=pass;
        d=google.com; s=arc-20160816;
        b=qdc3FUxU5jJcU3t/Fd3dxAZH5e9orcaPmWUUeW6UwqGjYIBB0J4Uv2A5vLSuk7CST+
         W936Rqk621Qp4EEGjmqMZ6jIQfVIkp/s80wC0mJsWdIp9CfLA5MBJSgyfUhwGfYWhGyY
         6Gbz9db0x+Ea/lGuGvDjqDwQdbOml5Hy+J/HjqiIaLX62D1Xzf2pmOWlNi3Lwu0fuv2k
         Fq9gPDf7zeg2OEbq8wF9SQ71E1f+uUO5JC6HUtZwt55xNyVdGY+X32no/B1wyBzWP+i8
         guto/zgNH9WhTXCJ43q4zlyAuY+7Pzp/mAU2X9zW0N6DFuu5MjHZGqyFYS00p8a59XoM
         VNRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=yJnyXllzu/CEtXwOpDXZ6ArKVQtFZGw+GVx5PhPltGg=;
        b=jPOCRftuSK4PG1xdGMoWjVxCe5fvWae7prA/rEHJUevDBs4uH364MSWpiM0UD2Ye9G
         bPKfqiQ0nGdX0owHQZJHKRyi6T85GZpUfq4AptNtw5UwiwouPCwnYHnXpnhRAJlB04HE
         DRHUjMF57Mlx/wbbmj6c20avt046L3e5KMr5ZrckXJ3NnSLpL0oaM/p+t8KKori6TdML
         0s8/1FLCTp7firGerdbR3V28Frc20TJtU7j19Z8njXb6gRI0KwIGc0A9rM62zH94c+Gm
         4WIVnqqTTOMhDRD10N+yDoJfc9gU29xJur658ysCqARpcvztnMjy4Re83INu7ZcZ5eOt
         Og2A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScQxjOe9;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yJnyXllzu/CEtXwOpDXZ6ArKVQtFZGw+GVx5PhPltGg=;
        b=HAw2raJbtwAtykeiDJ9fuoEIC77xltK8vG5WmrZgPX6xczsi9gf/kRuw6DNPIY1dqA
         8A5nlMG58igm6gZ7TNi0yAfssKpN9F+qLlWZpidgug27Q3x3CGYguVoYXzqLLjOyJ/a6
         V7e/8mdkkzFJUeD4TKYQGsQpa9MYJ/F6kQBDcwlztGA+tn6NdMJ2UGtPU/LReD1u8aTA
         5KvcqhDPLy8qoPXg9JTXYnS+hQsrsTcLxGmyDyI2u3a2hMdbH30vhynZliibZqknq+GL
         x23HfPf9FCX06qZ3g+FP9iE0y0wqW3Is9hqRnGnlnbNrij2BP6ahDbkDrc+V07Ktp1UU
         25WA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yJnyXllzu/CEtXwOpDXZ6ArKVQtFZGw+GVx5PhPltGg=;
        b=A0XaVbA9T3K9Ba7QAJQcmsSMUQZ4pLEczR16uAxE7sitS243wS2G1pfSg6C8HQYlBr
         dl1GuRld39gj9sWNX/39xaGf9aZ0Jh37EAXRVdfO/LXxUgC7nC/BkhGXUBH92ZAF77QM
         qu981rNEW0WXQqp1gZKA4rKRkHZisElKNpbO2w6WubTxt+5PjqoK+VXacJJ9GXUThva+
         hNPBaHCXxu9Gk937KKMDrnskFsSIRj7OUu4hsTNxm4my2NFy9OJ7hoXl/huGNTsl6oAj
         1PMuxmJJSUjYFqoLbSPTD4YKUxA51b9+f+oqaGbW1fAFofnLHPY424XpZRPcN8T31utH
         zApA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yJnyXllzu/CEtXwOpDXZ6ArKVQtFZGw+GVx5PhPltGg=;
        b=nrKeSAyHNkPXI+bXxD8x+Qr202WzSw8r13EE2qMZdqPzez8XPH6uHwA0P/4pIkpoIE
         M9fCqwJ76sLDk7LKm2Y2Sv76L8AE44VX6ah5AU7bD7pw23AEChXlS+J7hQybylKish1p
         r8pS+28wyy3ILaWNv+Wel+i5eIV7wE+CAFMHbE3way7TQfg1AwpbWJUMcxqmjREAG51X
         b4z7IclQ/mElYyDc8GciA5oEJ/V7nKoXywlKUmg6WjHlH9hicERBC/9v8IArNEv0GopB
         FGKuYJ8k9W1ni/XxzWiP73eNqxj5h3qdqDTLgIFJZgWFkitR71iM3jX/TUHYR+DxYqQy
         bhTw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU4iH5EUSoRjJZBM8y3i7fF8z0aIO+2HYw/pPHAimnIk3CbGBVs
	vCPTISD4J9gcZpGs2gUogr4=
X-Google-Smtp-Source: APXvYqx20KA7vTuDnPK3TS8Ib2sqVlDRFdo7C26nG2ncmb3krd6D8izzHJ7XutFvr65VBE8sUSFlIA==
X-Received: by 2002:a17:90a:dc82:: with SMTP id j2mr9839183pjv.70.1577290177447;
        Wed, 25 Dec 2019 08:09:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d207:: with SMTP id a7ls5709017pgg.1.gmail; Wed, 25 Dec
 2019 08:09:37 -0800 (PST)
X-Received: by 2002:aa7:8695:: with SMTP id d21mr44622483pfo.199.1577290177128;
        Wed, 25 Dec 2019 08:09:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577290177; cv=none;
        d=google.com; s=arc-20160816;
        b=U9X7TvaHVlU+DsQH0A2qb/6hZuji6XfA48lfRB3udG0HqvD0QMyHUV/XAq/nEwcIcX
         OR1zY0ZUw+t2BjSBdd/rxLlolAY9m76PRhb2Q4X4+2m6JWO6WjW/+WvEr/Lw3B/ultjp
         VHKE72vuWEA3mgJ9oQh4GRjJTjIVRZPkEYmL8dRfG1MzzyfIxvibZ1O93G9Q7dpzrzIf
         FiR4B//KjlRoUCpQcJTaGnM6k1BulkqDDibrGLsMeCGku+z8Ax80ruFKW4Z2PHh9luX9
         s2/4G1Qe3kkOCtvcMeU9lVNLGhGMq7G0XQNkkCIZ8b11ccr3WST3WbowQ6xdsDI1Rtj3
         aTYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=u/nDjlcbflgCCSGswkR/Gb0OiK0a4gLM34d62PDnrA4=;
        b=vZZRrSDFWE8jxsca70qh2K0kxxBNOlNmycIMxMWHynL1mrhO/bXuKiF6KDYxe8l+mJ
         Bjd1vqANdICnXOoUxOTWGuHPwbZ4Jq/o/Kn0VAPjju/nvlNa5S149kotdcCJOpAitaxk
         3KSP/irM8xmVtIFLX8zw7V3lglBjGTBg4yaZ9D/CwRx9OqOSWDMP6Q7a08tQToDkvC7W
         KYELk68HCsuLtxreTUw/lcgKmBndGkPXaWIS4NT6BS0uwDZt05Efjen3yMTK/16UajMm
         GE0OwZktdNdrumzv3gfxD36o0olNUZnPuH9uiEJ982PJCq+TnvqPIIboxSHxHSvBqV2x
         mRJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ScQxjOe9;
       spf=pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h19si443248pfn.1.2019.12.25.08.09.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Dec 2019 08:09:37 -0800 (PST)
Received-SPF: pass (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id b9so11741907pgk.12
        for <clang-built-linux@googlegroups.com>; Wed, 25 Dec 2019 08:09:37 -0800 (PST)
X-Received: by 2002:a63:4850:: with SMTP id x16mr45118018pgk.334.1577290176828;
        Wed, 25 Dec 2019 08:09:36 -0800 (PST)
Received: from [192.168.1.47] (ip68-5-146-102.oc.oc.cox.net. [68.5.146.102])
        by smtp.gmail.com with ESMTPSA id b21sm34173874pfp.0.2019.12.25.08.09.35
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 25 Dec 2019 08:09:36 -0800 (PST)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [PATCH v2 32/32] elx: efct: Tie into kernel Kconfig and build
 process
From: James Smart <jsmart2021@gmail.com>
In-Reply-To: <20191224210151.GA19657@ubuntu-m2-xlarge-x86>
Date: Wed, 25 Dec 2019 08:09:34 -0800
Cc: linux-scsi@vger.kernel.org,
 maier@linux.ibm.com,
 dwagner@suse.de,
 bvanassche@acm.org,
 Ram Vegesna <ram.vegesna@broadcom.com>,
 clang-built-linux@googlegroups.com
Content-Transfer-Encoding: quoted-printable
Message-Id: <19A235FE-7C54-4AB5-8F58-938E7BAD1BE5@gmail.com>
References: <20191220223723.26563-1-jsmart2021@gmail.com>
 <20191220223723.26563-33-jsmart2021@gmail.com>
 <20191224210151.GA19657@ubuntu-m2-xlarge-x86>
To: Nathan Chancellor <natechancellor@gmail.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Original-Sender: jsmart2021@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ScQxjOe9;       spf=pass
 (google.com: domain of jsmart2021@gmail.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=jsmart2021@gmail.com;       dmarc=pass
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



> On Dec 24, 2019, at 1:01 PM, Nathan Chancellor <natechancellor@gmail.com>=
 wrote:
>=20
> On Fri, Dec 20, 2019 at 02:37:23PM -0800, James Smart wrote:
>> This final patch ties the efct driver into the kernel Kconfig
>> and build linkages in the drivers/scsi directory.
>>=20
>> Signed-off-by: Ram Vegesna <ram.vegesna@broadcom.com>
>> Signed-off-by: James Smart <jsmart2021@gmail.com>
>=20
> Hi James,
>=20
> The 0day bot reported a few new clang warnings with this series. Would
> you mind fixing them in the next version? I've attached how I would
> resolve them inline, feel free to use them or fix the warnings in a
> different way.
>=20

Hi Nathan,

I will gladly take care of them

=E2=80=94 james

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/19A235FE-7C54-4AB5-8F58-938E7BAD1BE5%40gmail.com.
