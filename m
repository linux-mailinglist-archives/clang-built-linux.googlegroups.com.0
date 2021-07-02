Return-Path: <clang-built-linux+bncBCH4JVXIWANRBC4D7KDAMGQEWRHWWTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE3B3B9AC4
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 05:01:32 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id p6-20020a4ae1460000b029024c388a4835sf1606905oot.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 20:01:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625194892; cv=pass;
        d=google.com; s=arc-20160816;
        b=b3SgGdfgKE58TEWjQ89GZvtToy0RSVBBpF8YEXJAVKrxWSwGU0LxvyU4plWHQcvG0Y
         ixgm0PDdzBDwILjE5wfZ6jQRXYc9rRHkmF5dAsKUrjzDCP5BzAY6atgEJI8geyUdKIEo
         sOs0W5+Fv6NCF1hJW8gGcpG0aekFKlVkloblAQ+OKbOGAkm5faGAb8bC2BlWg0KSYjXT
         eMRZgGZxDhNbIfgUytVHYNJT4uf3RhFjtngArOHjhirqrPezApxKc727ULKaX1JE2Egb
         aEWDBcI+Ms7VgOPvxkhvqjdFis/0LF/QwIF9eAAB7IkdzPGj6Soh5ZQ9DgD1CGk/EmqQ
         9ArQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=5EM+mXkKxFHa56zxJlG5PjR7sO4Hb8sHV8Doi1ToJxg=;
        b=WtfnXoXo2MGFUuPiNxU3w3WfXLovSX8rF1b6fKcGRPIZbx6xufl8UeB+yFWKG8K4mW
         VXm5TvEm4/ZWpwpN3Moccgqqp3CkkPLctNlfb5NXN7VLHKBXGoA0DFHA669ohQLBbeiA
         3bG4LcLLO8NqI6yV0RbdiJ3X+Xc491dj7l/un9+jgWrXltX7Hyi33LxniMLds1Xn2q93
         zcbPDzsyjfJgVmsJ8QJyAnUIPdwYT5fKfqtCVTNsppBG/mmJZl4NpH2WF2JIdJw2uYt9
         ksC+GTamh5sO4UisWts0mhp8Obi6h8Rm7iSu5xgsfQFKeSvZ0V2oOmeNAH83f4E8XjLE
         PBIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=chengzhihao1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5EM+mXkKxFHa56zxJlG5PjR7sO4Hb8sHV8Doi1ToJxg=;
        b=RZIJEOSQYR8OKMUfme2GNXAoo9Tenv1/CC3vCg85i+bCHXsk1ibMATRiuLxn/84ZO0
         qe0+Uyb5D3e1PywuigIogTfDe/dTQS7dQNa9LMTfERvR8Rq/68zd4YsHUftthnWDXdXx
         04h6y0lTsruDbav1XuxRMRc7kgsZCJ3FpUh8j+cwfPNEdU+B/36w9xHsrMSxhsih4754
         7FGaJcQr/tPE3FCB9Q/rn8NXd2YgzIHoJq7l4OCGr8RAx+q737rutFYdeIVyiLqBAkR3
         e0LKPJjUAFsxlvJBuWvR2d1sNLaRAC38ByxHp7ZLcgSbdzhlisB73GMC8Ee5sVraidbP
         k9Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5EM+mXkKxFHa56zxJlG5PjR7sO4Hb8sHV8Doi1ToJxg=;
        b=d4o1snZD0m9l5IffZXQhohFvFOkyIyDia0tAJc2LND1TNHkgG7TDirJydTt1dPlEpv
         jFnAuQmFTGo+1F4sQDfW4pJkWkSa1Wxn4qRpoU8F4SCjzgRP9Y7mBhNjt/GgZcJhghhr
         8OWO6aSq9fdMd88DIr0o3G4YOg4g3EfveBbIbK15tUC3nJOgAhmx/LSpt/HBEc/+OCDy
         blnud17TO7fdi94FBPmo1XGxgAokp7DS/K730JPouKKbiDeY4IqdlDFpfhI2U3knpIb0
         9aXGXNkZEnLRL9EK1a++ul/sJ2SebHBX2P1rwd5moVaEDTnue1ujbnB0/nqONwriBz17
         Ec9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533I3jwJAS+h9H7k1y0YK4a/NQQbzlctstrHjhEMwL+ieWrPzUUj
	HuDqavsYfjMOPu1OPGhMVrs=
X-Google-Smtp-Source: ABdhPJxtOSACYVl39CFrAtSwLiPgo0sgMITZy48j5HryHfWSHhbfRNAaoZCDlO5s7B612UlIGGB2gQ==
X-Received: by 2002:a9d:7b56:: with SMTP id f22mr2631452oto.71.1625194891957;
        Thu, 01 Jul 2021 20:01:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls2895781oth.4.gmail; Thu, 01
 Jul 2021 20:01:31 -0700 (PDT)
X-Received: by 2002:a05:6830:1e52:: with SMTP id e18mr2659110otj.135.1625194891583;
        Thu, 01 Jul 2021 20:01:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625194891; cv=none;
        d=google.com; s=arc-20160816;
        b=vo+DdvpoARdDE9JUI+FiABf82GtpUPxct+yoyRSbWKxHmujFdlbX1dlHnq9dG2c9RI
         cpC8LLTEtaKVvG36K0zg+mr7v+BY/vmiOvsmG3ZrjAicL0qYBUdR9NQryrglacCWab+g
         XC9tnE58RqK4Ql78SGdB+iJmlM2VWhS9D3ackxdHywhuQXsMlm4O+c++B8bvifL75eFP
         ZPljLcIaYB9FNTCWJ/Gp2/c8fWbNOKzfubNCLuUHZMp2wzRD80t4gQfKmK+BDFySlIWn
         5bOeAwmgMLK66/7xiQzNC/FyvXP5ww5okn7N92mZqglwUmZ6POoYvDE+q1XdVQhJVMfz
         egFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=Qh1JOiiTLGk0Y2Ys2ZjoS0PYRfz00TrW5eXi8HGJg1U=;
        b=U4EI5iQwFLopi/blelEMNYsM7n8CmuUtEYkeWA2aMk3iTeyhMhJgAVG69xdQ4UFPA2
         TRmqudovxNxRnNCnzu0uZPj3ik2aKgHzsghFg6iDhB8Y5swvnlWDWIN8LnwxH5cK39+W
         hFI01J1zos5yzLzARmtepicu0ad1YReIZa71fW2HEghS+Zq73Dog6Re09Ie5yOnRuUVT
         PBW+7UtmTMoGd5S/NSWxwzFXQs9E51E8rwGNNb6TzL6Vmyd6zfsN3UKICMWU3EHLNdX6
         9JvK/K0hXa1IHJgAzUvhDgCcyT9l0W8M7YJfNaW/AVZIkiwrthhxFYJ2WomU41emviEL
         rHMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=chengzhihao1@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id c22si144892oiy.1.2021.07.01.20.01.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 20:01:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggemv711-chm.china.huawei.com (unknown [172.30.72.54])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4GGKTf5fn4zXmKM;
	Fri,  2 Jul 2021 10:56:06 +0800 (CST)
Received: from dggema761-chm.china.huawei.com (10.1.198.203) by
 dggemv711-chm.china.huawei.com (10.1.198.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Fri, 2 Jul 2021 11:01:28 +0800
Received: from [10.174.178.46] (10.174.178.46) by
 dggema761-chm.china.huawei.com (10.1.198.203) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Fri, 2 Jul 2021 11:01:27 +0800
Subject: Re: [PATCH] perf llvm: Fix error return code in llvm__compile_bpf()
To: Arnaldo Carvalho de Melo <acme@kernel.org>
CC: <peterz@infradead.org>, <mingo@redhat.com>, <jolsa@redhat.com>,
	<ast@kernel.org>, <daniel@iogearbox.net>, <andrii@kernel.org>,
	<nathan@kernel.org>, <ndesaulniers@google.com>,
	<linux-perf-users@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>, <yukuai3@huawei.com>
References: <20210609115945.2193194-1-chengzhihao1@huawei.com>
 <YN35TYxboEdM5iHc@kernel.org>
From: Zhihao Cheng <chengzhihao1@huawei.com>
Message-ID: <21406430-56f0-c59b-7ece-7fd387bb47e9@huawei.com>
Date: Fri, 2 Jul 2021 11:01:27 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <YN35TYxboEdM5iHc@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.174.178.46]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggema761-chm.china.huawei.com (10.1.198.203)
X-CFilter-Loop: Reflected
X-Original-Sender: chengzhihao1@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of chengzhihao1@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=chengzhihao1@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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

=E5=9C=A8 2021/7/2 1:20, Arnaldo Carvalho de Melo =E5=86=99=E9=81=93:
> Em Wed, Jun 09, 2021 at 07:59:45PM +0800, Zhihao Cheng escreveu:
>> Fix to return a negative error code from the error handling
>> case instead of 0, as done elsewhere in this function.
>=20
> I checked and llvm__compile_bpf() returns -errno, so I'll change this to
> instead set err to -ENOMEM just before the if (asprintf)(), ok?
>=20
> - Arnaldo
>  =20
Glad to accept this change.
>> Fixes: cb76371441d098 ("perf llvm: Allow passing options to llc ...")
>> Fixes: 5eab5a7ee032ac ("perf llvm: Display eBPF compiling command ...")
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: Zhihao Cheng <chengzhihao1@huawei.com>


--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/21406430-56f0-c59b-7ece-7fd387bb47e9%40huawei.com.
