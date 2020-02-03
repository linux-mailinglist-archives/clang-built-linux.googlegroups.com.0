Return-Path: <clang-built-linux+bncBAABB4VN37YQKGQEZCPHL3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9BB15025F
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 09:16:52 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id w12sf5914690ply.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 00:16:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580717811; cv=pass;
        d=google.com; s=arc-20160816;
        b=0kVjCskdLqBma64M6Sqz7AnmuIrUyoxCl59U16rOOSYlbSgsXcn5bpPuEppZFrMo/q
         UbIryjMSW+Z+ET2xkli4Au5W5R8VpBdQIe3Z24klPcv3LhRLjVCAi27Gq04tsVXU5VhM
         /CpnpAym6OTC0S+l1WEpXKOhOv1q8o8IPLNUs9L2YWXn0Zrs7kaE3pg+BkNjJsW0oyoG
         goNHdIbI41UoGdSzTGj0qxuVQDhkjjYU85eVA3dqeBuw2G8vyc6EOgTO4rzyS6CqrNPQ
         tWU/zuTIgc59eS30ElrT/h3V2UhDbJL9ww/YohcpMZuTintz6gIBAICBBfzJnvybUWEc
         MEbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=rKk8L1v03ZubEFXmym1xcb4G9maRbiMpcIaGEqNrU8c=;
        b=dIn7WBGiTT5FfdMbi1Yl4Mz57wGzxSTL9Ene5i3osXLL3gZnjkzuPPRO2K30sME8wo
         sZYUHwimxwZjzUu+6B7L39xc/3uzZSoCbI9LvN7XLiQTiDB6Z9MZWWd+anWhFE2k5p10
         b1xd3yCdikZf5aDwDVTlyqzBT/Qq/WKfEZ2igkiv1bZ1JnDIP1hrOr5IFxjCRyrsJrv7
         h8Z/GAgi5PmqpPPjxNy2TXgzDh3oeNuX1cY61oWIt7Z8PW8CegL0IFsf69NIHu2XHGQr
         8IREn9HZQk9jbuSqkolqvToEqeIha3m3p+vt4jFJjKG83CBJxbxrypzBB8Mp9OpdGIbw
         BJlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=yaohongbo@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rKk8L1v03ZubEFXmym1xcb4G9maRbiMpcIaGEqNrU8c=;
        b=SFTF0SDllxV7KLKXvsAA1h1msESoyHuf8Cs3XxhK41OkUdaXUxSfRE9MgyIZ04ww3z
         klJ2eyB5nT5hweGTM7vIEEatM4HCIajE158LnzJixwTZ+V3+FaAvQvYBDlwnsJXvx+Ue
         0CAa2Zipga+p5uJrThh44FXntG76s9HQuiiNg+wdmbYUfL7MUsAyiuVb2UUwM4yAOya+
         5hWKc8OkAU4/zJ5saWO27ibtdSh4NJVWcOqDi1ZMk8100k/6H5u1EUIA8/iJv+7w4JAl
         F9iDwp+8mQ+v32/3H4+Rx6v7uRPpGadFJq1xy6s+4cgEkZ0ccT7gwASGkh6pOPbnS6dm
         SAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rKk8L1v03ZubEFXmym1xcb4G9maRbiMpcIaGEqNrU8c=;
        b=AvLdEHKrQ306o17SXMYhsIJSPC5TacyLJObAKjUuLOubCi8FDmAzLpoxD4gVLgtB7Z
         u5kjVH/Blsjvgf1MHVNPW40/TAAq1JqfWsWf7a1BZXpBNET3NNHue94pTmZMo0Gr9bBS
         TSveZnz+fQHo3NZBbgYPjeBnNrvev2ng5BLyqQ4MaSpjgeZnc6QpZrzhmwLswyrspZaj
         mC7T/3cCSIw+HaOKgNH3me7MwxBB5i2wXz+qAraPCFpuZcK/Atv4iSaGRMiEmFXsRbbA
         w/y5cn77bAMyi5Hp6exEiAu+EK6XhNZDIW0cGfrxBQko8MSfnwbfK+y19if/uKEze42y
         UbPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUTGbF9frMhaP06/HypXq8GQUedoyQY8SP//45rNWDp+p09d4Nj
	yeuv3u7Jc+v4nldcdhmD2os=
X-Google-Smtp-Source: APXvYqw08oIRjDzLloOjUr4pHYrOsUWkfMjh915VWMx9csiM3411oOk0oCkehomLSEIhpgeffF+eWg==
X-Received: by 2002:aa7:8283:: with SMTP id s3mr23577164pfm.106.1580717811010;
        Mon, 03 Feb 2020 00:16:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:874e:: with SMTP id g14ls3820320pfo.9.gmail; Mon, 03 Feb
 2020 00:16:50 -0800 (PST)
X-Received: by 2002:a65:6909:: with SMTP id s9mr6872329pgq.80.1580717810575;
        Mon, 03 Feb 2020 00:16:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580717810; cv=none;
        d=google.com; s=arc-20160816;
        b=NXQzt9+qtCwtehDjFagy8Q33aKdiEIEUFTYsvbXpYn8XN/qu09DpqupS7bWz91J+FE
         Rtm2h1QWnwPHDSga4xwgHEy6U/Gapt0nWepncwrkbkdf8LxZfWFVPvNqu/6m+ge7DfIA
         ggle/OFfQbmmH1vcQ17sW6gX2utEYBKzoBwuI8GTPbA29F2nMe4iHWSr81LVnQF+zHJm
         N+Uj/6GUs0XB6wRSie6MAuiXicVL9PRITvZz0icOl3Kj11nEgODz3DvT/562viv1q18V
         zREaGET1QKlZ5UVTKVvc1eSsug6ElfQ2pE8Qw4UUh/y0jTt2qIfLRZ8Q7QkdS2mkB7QQ
         T7jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Bud0BEdC2gTzPiW9+6UN/W0XO85H/PQkaKQ/txhVyyw=;
        b=yk0pNnEzRUgHzszLqS0zo474FaB4koTJ4MJAYfcg8IjamB52tLNMN2ijgtj4l+WQFd
         7pRpQQ1kiIzfsUoikFwv/hZz2QJ+7g/Udn4WBG/7o0+mQyQY3o3NaF701eoWYUxIm6y3
         /HEm7nVbqbet/aVO+pheRxvytFmK2dZawJF+2inaU3hLZpGbKH/UzTL9VzKRUjvGADPA
         QCvs/a/L/rde9zZ/JaslJ+278DieJeWElQSfUiGvK5M6OpOVv9yt+q9WuVCYAPpePKGF
         4QrQK1oOCkz/FfPpa+XrFa4kdQlbkm2k2/OG7WFIeuXzJLxXY+eL5SBH/QXDAjExtU25
         vT2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=yaohongbo@huawei.com
Received: from huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id k1si923448pgj.0.2020.02.03.00.16.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Feb 2020 00:16:50 -0800 (PST)
Received-SPF: pass (google.com: domain of yaohongbo@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id 71800479F7C0A6080A88;
	Mon,  3 Feb 2020 16:16:48 +0800 (CST)
Received: from [127.0.0.1] (10.57.71.8) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Mon, 3 Feb 2020
 16:16:38 +0800
Subject: Re: [PATCH -next] bpf: make btf_check_func_type_match() static
To: Yonghong Song <yhs@fb.com>, <ast@kernel.org>, <daniel@iogearbox.net>
CC: <chenzhou10@huawei.com>, <kafai@fb.com>, <songliubraving@fb.com>,
	<andriin@fb.com>, <netdev@vger.kernel.org>, <bpf@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
References: <20200203020220.117152-1-yaohongbo@huawei.com>
 <a29bf101-81b0-68ef-356c-dfdc9c53d899@fb.com>
From: Yao HongBo <yaohongbo@huawei.com>
Message-ID: <f82e64c5-9299-b1a2-41b6-0f3630793d2b@huawei.com>
Date: Mon, 3 Feb 2020 16:16:17 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <a29bf101-81b0-68ef-356c-dfdc9c53d899@fb.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [10.57.71.8]
X-CFilter-Loop: Reflected
X-Original-Sender: yaohongbo@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yaohongbo@huawei.com designates 45.249.212.32 as
 permitted sender) smtp.mailfrom=yaohongbo@huawei.com
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



On 2/3/2020 2:20 PM, Yonghong Song wrote:
>=20
>=20
> On 2/2/20 6:02 PM, Hongbo Yao wrote:
>> Fix sparse warning:
>> kernel/bpf/btf.c:4131:5: warning: symbol 'btf_check_func_type_match' was
>> not declared. Should it be static?
>=20
> Yes, static is better since the function is only used in one file.
>=20
> Please use the tag "[PATCH bpf-next]" instead of "[PATCH -next]".
> Since this is to fix a sparse warning, I think it should be okay
> to target bpf-next. Please resubmit after bpf-next reopens in
> about a week.

OK.

>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: Hongbo Yao <yaohongbo@huawei.com>
>> ---
>> =C2=A0 kernel/bpf/btf.c | 2 +-
>> =C2=A0 1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/kernel/bpf/btf.c b/kernel/bpf/btf.c
>> index 8c9d8f266bef..83d3d92023af 100644
>> --- a/kernel/bpf/btf.c
>> +++ b/kernel/bpf/btf.c
>> @@ -4144,7 +4144,7 @@ int btf_distill_func_proto(struct bpf_verifier_log=
 *log,
>> =C2=A0=C2=A0 * EFAULT - verifier bug
>> =C2=A0=C2=A0 * 0 - 99% match. The last 1% is validated by the verifier.
>> =C2=A0=C2=A0 */
>> -int btf_check_func_type_match(struct bpf_verifier_log *log,
>> +static int btf_check_func_type_match(struct bpf_verifier_log *log,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct btf *btf1, const struct b=
tf_type *t1,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct btf *btf2, const struct b=
tf_type *t2)
>=20
> Please also align
> =C2=A0 struct btf *btf1, const struct btf_type *t1,
> =C2=A0 struct btf *btf2, const struct btf_type *t2)
> properly after you added 'static' before the function declaration.

I'll fix it, thanks.

>> =C2=A0 {
>>
>=20
> .
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/f82e64c5-9299-b1a2-41b6-0f3630793d2b%40huawei.com.
