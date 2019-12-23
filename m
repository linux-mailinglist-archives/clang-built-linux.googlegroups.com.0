Return-Path: <clang-built-linux+bncBDL3F4G2ZAIBBFELQDYAKGQEAHCCSQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 10C6A12906E
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Dec 2019 01:08:54 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id j7sf10704635pfa.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Dec 2019 16:08:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577059732; cv=pass;
        d=google.com; s=arc-20160816;
        b=C4FCwrubnEIaypB/DNXbACU7Dprk5vdV+s4yTQwhIluujiupGgDvIAz+XUxkchaEYL
         UaKV0Qa2uWDWlW5C7ArTJITWZIpXF9y1d0NQ5Ryoxii2yT32C4txbxbTv88slZF1wVXK
         jnqzo92goTLB4qVinvlruQFbRJJyyNtYiMVrZO/7Bo2JHYzbRHeK3vzMoUb0WGAIEdV7
         vFYgyh5zY4O1cNc2HpynsZC9nwAfUlrwoXK8C1n4IZAfWAz7qEswy8jY/lsyIueY3hf5
         JlVk6fJDznpFoc+fzr2cRGcf8B3VcWeZPRRco8Yu4P3krqHBuTyGAvpnejQHcd4mofRZ
         UEcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:dlp-filter:cms-type
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:cc:to:subject:dkim-filter:sender
         :dkim-signature;
        bh=6+nm6aTNzHJFlMJNjNmU0onWYi5zKHLXAcjYzS6q22A=;
        b=JEeYBVHAvDGU4ZzowlXO18PgW0QAEf3YjMWrWzq6UznnAxoH+9suO+9l5gstzfvNBh
         JexUWJfSSG6C8Owt1xaw9b7YDvAmqdqk4iJBQyh9rsQMHtfPM+ft+XMiX7uVt7hc+vqY
         0Nz2OMjjF5hyd86SeTHCofWhNRwrcK3kZ7+6mZ/5VJDcA7b7JEvyrHpXmaDqznQ2xs72
         Eyv9pNTZQIWs5yRVnqolkR0DeRrHLrQ1TNYML+mN0Ttl3QvvV8wVnXUrV67A/r/YZQRS
         eCwfD8hXTvcgsCy/I6sUsWyV7Yk1aep+5p1bPza/UBH+/AC60gz4l4Ewidukhjt+cdhY
         J71g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=WXixDTvH;
       spf=pass (google.com: domain of cw00.choi@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=cw00.choi@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:cms-type
         :dlp-filter:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6+nm6aTNzHJFlMJNjNmU0onWYi5zKHLXAcjYzS6q22A=;
        b=MCWZwgqsBWsEZqdwLE01RCYb7YE/4TsJvsLFAcMUKsH/omAFVcdJC1BmdDd545L+hR
         lnwjrDUvjKIgpEYXIfqlbU3VfzaHcbJcjlLAe5zt7NOR0NwBkZi3f+7BM6SBchIISQ9Q
         YXnKJm0ldAqyu1tKnu4lwukli9rbpfKdvZvUUPUvY00vcjih0Mzjx7FQpFog1pAbP+7Y
         qv2YRTUwy6Feh453uQHTm7ryePaLnYnQ05cK1JRud4p4NJ31J4cZS9eUKmYBupm2g/zn
         nRV36jTTSfhF0McAUinVfAma32/0Ij1C1vhLLwfOvkc4libGAIL9wcojLD+DExrnfVBM
         nuIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:cms-type:dlp-filter:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6+nm6aTNzHJFlMJNjNmU0onWYi5zKHLXAcjYzS6q22A=;
        b=Hxov/3kBO/BZL4r6UM+rkrGDAGCsUJgu9ywfLMpnl1Bp3Yky4eo3dL1fJJ3lG+YvXV
         qXgk1EqbsTC0WmKv+SWsKThstG1L/T0e6j6+/p49CVQmGeuPB8SeLfBRMMlV4bsPQcaa
         q71OX22gw/kl+37aq0rTQ4EOE5npo/9GfX6jjPC9ecGWSmxpCI9j6PRW/zUFdyqgdSKq
         5bTuUln5WgR+UrG1Tls80KeZekIei851u/hjvW7w/lWmjDLaU0FDXWuFngBt2//HFAc1
         b0MslMTPIxK6NH7f+qZZos6ogFgWtNsHbbkrqto6H1uygtIXvT1QIg3WkTwEfgbjrbM/
         66wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXw7q1rEC+pMk9KzG7SI59A8AKzAcPYDw5QvUn8chLNLYlOBWa4
	HJWU1bZdWZti1ezzZdgH2OY=
X-Google-Smtp-Source: APXvYqy4yxLHcnG5evtnJx/OhRmkk7f87ivQzhQ9q2cueIGyaG8Rt8j/4U6V3ExeBIp1qFA99u4RFg==
X-Received: by 2002:a17:90a:8a12:: with SMTP id w18mr30586537pjn.68.1577059732165;
        Sun, 22 Dec 2019 16:08:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7292:: with SMTP id d18ls1377079pll.6.gmail; Sun, 22
 Dec 2019 16:08:51 -0800 (PST)
X-Received: by 2002:a17:90a:bd82:: with SMTP id z2mr31735227pjr.17.1577059731681;
        Sun, 22 Dec 2019 16:08:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577059731; cv=none;
        d=google.com; s=arc-20160816;
        b=TbyVvSIHszrQ950NpK/jiSaRDG5J0X3KcnkST0g74edNd3WZ9juvG5eJEVgxdchO7A
         QV2bU4Wf4TrU1WjJdARsZ51mGEsfbwtVJlpBx34+7VmAaIKAIEOu8+eJADhWvtxH1hkI
         ARC1Xi7DbLHKqLNBQWOGxR4MxnTtFBgbsMsBE5LOJP7HXhOr9m81x4yiqqQnpZTPpGWB
         Ln6nL08N2+a6z8Xvw+MV1zJJW3ExqjTDEgspj8eD9+QbWyP221gpNJ45HBqh5WRGwKYt
         GqtJZnKoJUCZ8MQQogI4L+tUF1lqlAHQmxepCMpJZcEfVJj6bqHCQSefw8a8i9wqLEwY
         jdbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:dlp-filter:cms-type:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:cc:to:subject:dkim-signature
         :dkim-filter;
        bh=M1Iq+Y5Ufr76PHYhoPqMteFv+x5lpEehF/zCyfTYiCA=;
        b=ZQph3GoI3FqWNGd9dJy+WTV4U3WMVAxKbR9nbiEKky8IR+h89666IliacpU5WTPRZW
         IXx1jalUi3zPu8YRd3NVtPS1WkLM/Ox15qwwW0jjIo9OXFXp/dUno7KVd53NyfEhb+F2
         JlIghsWmmIGqSsy6pL02FseA6F7bw9wAb553HbEKLJcNzVC5/OxnVxs+MHulKMFxlwYA
         z9A0DEhjsfy5vZs8JGntwRZTayHjWNEvtw5io6x44F+nPcBKPy9nQs49KnT+xYV8gLI+
         We4tsutDqlC/bW9BYSIZdP4N3jcpv4o+hNM5HnpBaFSEEiOIer3CXPgWw15UYk9Zf08g
         6JDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=WXixDTvH;
       spf=pass (google.com: domain of cw00.choi@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=cw00.choi@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout4.samsung.com (mailout4.samsung.com. [203.254.224.34])
        by gmr-mx.google.com with ESMTPS id h18si580965pju.1.2019.12.22.16.08.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Dec 2019 16:08:51 -0800 (PST)
Received-SPF: pass (google.com: domain of cw00.choi@samsung.com designates 203.254.224.34 as permitted sender) client-ip=203.254.224.34;
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20191223000849epoutp04a788e0b296eaacbdac2c738213dae483~i13fMkgvs3247932479epoutp04H
	for <clang-built-linux@googlegroups.com>; Mon, 23 Dec 2019 00:08:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20191223000849epoutp04a788e0b296eaacbdac2c738213dae483~i13fMkgvs3247932479epoutp04H
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas1p2.samsung.com (KnoxPortal) with ESMTP id
	20191223000848epcas1p2013b6ecc95fef3174d4456a1a025fcb5~i13ert8WF0288202882epcas1p2_;
	Mon, 23 Dec 2019 00:08:48 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.152]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 47h07c73hVzMqYkg; Mon, 23 Dec
	2019 00:08:44 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
	epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	64.01.48498.785000E5; Mon, 23 Dec 2019 09:08:39 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas1p4.samsung.com (KnoxPortal) with ESMTPA id
	20191223000838epcas1p4418297651206f6aac31eb5ed62faee3e~i13VvWCAR2707227072epcas1p4i;
	Mon, 23 Dec 2019 00:08:38 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20191223000838epsmtrp2416b2bab4d4d23d347790b7352ec27eb~i13VsFT332783127831epsmtrp2U;
	Mon, 23 Dec 2019 00:08:38 +0000 (GMT)
X-AuditID: b6c32a36-ea9ad9c00001bd72-fc-5e0005873f01
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	15.6C.06569.685000E5; Mon, 23 Dec 2019 09:08:38 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20191223000838epsmtip2521c79d03d711f51178563545144a0bc~i13VhDmuf2268622686epsmtip2J;
	Mon, 23 Dec 2019 00:08:38 +0000 (GMT)
Subject: Re: [chanwoo:devfreq-testing 29/29]
 drivers//devfreq/devfreq.c:426:38: warning: variable 'freq' is uninitialized
 when used here
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org, clang-built-linux
	<clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>,
	kbuild-all@lists.01.org
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <5fd56f03-41c6-25a2-3911-349d3b6d121c@samsung.com>
Date: Mon, 23 Dec 2019 09:15:24 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
	Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=-G48735M_AMBc3_8993kaLMg0DN1YiBBov7PFVb80Hw@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3e207Fava2yJz+Unuiiou04ZzO0ouuiCCUKSswO7k3N3Tpn
	ky5EQytLBQs/ZNNoWJKXsjLReamFBTG6WhmRWGIKZRelG0GlbecU+e33PP/nz8P/eV+G0pym
	w5gcq4MIVt7M0pOUzbcjtTGFqgk7tflHowx9Hypow4Pi58hQ77qqMAwV9NOGkZNjipUqo6fR
	aew45aeN5zveKYzFFaPKFOWO3KRswpuIEE6smTZTjjUrmd24JWN1hj5By8VwiYalbLiVt5Bk
	ds2mlJh1OebAXjY8jzc7A60UXhTZJcuTBJvTQcKzbaIjmSV2k9meaI8VeYvotGbFZtosyzit
	Nk4fGNyVmz1y/Z7K3jV3X30V60LloUWIYQDHQ/VNtghNYjTYi8A12qySi88IBq7VUnLxHcHX
	vouoCIVIjrpuL5KFGwh6H3uUcjGM4NbgK0mZgUsQfLjwRbLMxLGQ7xtWBAUKlyJoeV9JBwUa
	R4Hv7QuJp+EI6P7xRjKo8XLoqS2W+kq8AJ5UlVJBnoW3gb/5yN+Z6eA/M6AMcghOhcEajzRD
	4dnwcuCcQuZ50PKxUgoBuIcG79B1Sg6xBiqH+//yDBi62zRR5jD48ukGLfNBqPXfoWXzcQRN
	vscqWdCBr7pMEbwfhSPhStsSuR0BrT/PInnxVPj0rUQln1gNx49p5JH58LSvVyHzHDhfeII+
	iVj3uDjucRHc4yK4/y/zIGUdCiV20ZJFRM4eN/65G5H0KaMSvKjq4aZOhBnETlEz7rF0jYrP
	E/dbOhEwFDtT3X7od7pGbeL3HyCCLUNwmonYifSBa5+iwmZl2gJf3OrI4PRxOp3OEM8l6DmO
	na1mfnSla3AW7yC5hNiJ8M+nYELCXGitpmTvg/xM+6qt9zue9adVRX87Nrpz11ia0LL4qe6r
	tyu6Ok+8vDBVz0WElvb6SgoeHU6qn/bidXxiavl2d8/6NHJg0eaCzhVa4Uh5xOqrlxpJ02TW
	779ipI5ugzJD6xTXr7R7NxmmZqSspvt1v6lhd2HDhhUQ3T7oadu8B+f8YpViNs9FUYLI/wGY
	JVEAqgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpikeLIzCtJLcpLzFFi42LZdlhJXreNlSHOYNI7PYsHb2azWZztvsZo
	sbphA5PFq+ZHbBYfJvxncmD1WLCp1GPPxJNsHov3vGTy6J79jyWAJYrLJiU1J7MstUjfLoEr
	48Pm06wFF+UqVi9SamCcIdbFyMkhIWAiserqDsYuRi4OIYHdjBIX1y5mgkhISky7eJS5i5ED
	yBaWOHy4GKLmLaPEjaOtrCCOsEAPo8SbJZ8ZQRpEBPQkmva/ZwJJMAv0M0p8ntfNDtFyhlHi
	2P5JYGPZBLQk9r+4wQZi8wsoSlz98Rism1fATuL2ym6wOIuAqsSlRf3MILaoQJjEziWPmSBq
	BCVOznzCAmJzCgRKPF2xAKyGWUBd4s+8S1C2uMStJ/OZIGx5ie1v5zBPYBSehaR9FpKWWUha
	ZiFpWcDIsopRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIzhmtLR2MJ44EX+IUYCDUYmH
	l2PW/1gh1sSy4srcQ4wSHMxKIry7a//GCvGmJFZWpRblxxeV5qQWH2KU5mBREueVzz8WKSSQ
	nliSmp2aWpBaBJNl4uCUamAUm7rD/3GC8c8PZ2//L5BhTOizLqjvW1Dz3put5//M458ro2Zk
	CC/py5WNfukgUrErwL01a+sysfcl7evLbyjdP3e/hmOFSfdEh6QGowkK/Rredkq9q7r6pFw7
	C4+xHVtvY6c3/cKZVJmIS2VOwv6asizv3kTMkDpd5p7XNf3Rl+f+nTql8UosxRmJhlrMRcWJ
	ADrWSSKVAgAA
X-CMS-MailID: 20191223000838epcas1p4418297651206f6aac31eb5ed62faee3e
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191220174426epcas1p45704fba72a78fcdabf5d76868b25e7bd
References: <201912201959.QalWUTrz%lkp@intel.com>
	<CGME20191220174426epcas1p45704fba72a78fcdabf5d76868b25e7bd@epcas1p4.samsung.com>
	<CAKwvOd=-G48735M_AMBc3_8993kaLMg0DN1YiBBov7PFVb80Hw@mail.gmail.com>
X-Original-Sender: cw00.choi@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=WXixDTvH;       spf=pass
 (google.com: domain of cw00.choi@samsung.com designates 203.254.224.34 as
 permitted sender) smtp.mailfrom=cw00.choi@samsung.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=samsung.com
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

On 12/21/19 2:44 AM, Nick Desaulniers wrote:
> Hi Chanwoo,
> The below warning from a 0day bot build w/ Clang looks legit, can you
> please take a look?

Sorry for late behavior. I'll fix it.

> 
> On Fri, Dec 20, 2019 at 3:29 AM kbuild test robot <lkp@intel.com> wrote:
>>
>> CC: kbuild-all@lists.01.org
>> TO: Chanwoo Choi <cw00.choi@samsung.com>
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/chanwoo/linux.git devfreq-testing
>> head:   b5402cddb67cb59901cb74992831ef3015aed1a7
>> commit: b5402cddb67cb59901cb74992831ef3015aed1a7 [29/29] PM / devfreq: passive: Add missing getting freq_range
>> config: arm64-defconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 50c3bd9e71254d623ed4f0b449d5620f4e965bfe)
>> reproduce:
>>         wget https://protect2.fireeye.com/url?k=573ddd83-0aee8697-573c56cc-0cc47a31ce4e-8f6c69829de1654d&u=https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         git checkout b5402cddb67cb59901cb74992831ef3015aed1a7
>>         # save the attached .config to linux build tree
>>         make.cross ARCH=arm64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>    drivers//devfreq/devfreq.c:416:6: warning: unused variable 'flags' [-Wunused-variable]
>>            u32 flags = 0;
>>                ^
>>    drivers//devfreq/devfreq.c:415:6: warning: unused variable 'err' [-Wunused-variable]
>>            int err = 0;
>>                ^
>>    drivers//devfreq/devfreq.c:414:32: warning: unused variable 'max_freq' [-Wunused-variable]
>>            unsigned long freq, min_freq, max_freq;
>>                                          ^
>>    drivers//devfreq/devfreq.c:414:22: warning: unused variable 'min_freq' [-Wunused-variable]
>>            unsigned long freq, min_freq, max_freq;
>>                                ^
>>>> drivers//devfreq/devfreq.c:426:38: warning: variable 'freq' is uninitialized when used here [-Wuninitialized]
>>            return devfreq_update_freq(devfreq, freq);
>>                                                ^~~~
>>    drivers//devfreq/devfreq.c:414:20: note: initialize the variable 'freq' to silence this warning
>>            unsigned long freq, min_freq, max_freq;
>>                              ^
>>                               = 0
>>    5 warnings generated.
>>
>> vim +/freq +426 drivers//devfreq/devfreq.c
>>
>>    404
>>    405  /**
>>    406   * update_devfreq() - Reevaluate the device and configure frequency.
>>    407   * @devfreq:    the devfreq instance.
>>    408   *
>>    409   * Note: Lock devfreq->lock before calling update_devfreq
>>    410   *       This function is exported for governors.
>>    411   */
>>    412  int update_devfreq(struct devfreq *devfreq)
>>    413  {
>>    414          unsigned long freq, min_freq, max_freq;
>>  > 415          int err = 0;
>>    416          u32 flags = 0;
>>    417
>>    418          if (!mutex_is_locked(&devfreq->lock)) {
>>    419                  WARN(true, "devfreq->lock must be locked by the caller.\n");
>>    420                  return -EINVAL;
>>    421          }
>>    422
>>    423          if (!devfreq->governor)
>>    424                  return -EINVAL;
>>    425
>>  > 426          return devfreq_update_freq(devfreq, freq);
>>    427  }
>>    428  EXPORT_SYMBOL(update_devfreq);
>>    429
>>
>> ---
>> 0-DAY kernel test infrastructure                 Open Source Technology Center
>> https://protect2.fireeye.com/url?k=ab89e7da-f65abcce-ab886c95-0cc47a31ce4e-8670feeedcf0eaab&u=https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
> 
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5fd56f03-41c6-25a2-3911-349d3b6d121c%40samsung.com.
