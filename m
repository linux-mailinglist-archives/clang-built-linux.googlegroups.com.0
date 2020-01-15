Return-Path: <clang-built-linux+bncBDMLN5HOIYIND3P46ACRUBDKOG7KU@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF8A13C892
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 16:59:14 +0100 (CET)
Received: by mail-ed1-x53e.google.com with SMTP id u20sf11796322eda.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jan 2020 07:59:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579103953; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z/AkBqX2iuCpIFaLOwS7GI0ZimeUZ5uyugPC7PMTbea07Rpc9wzpet1UWuOlVFs5CO
         5RNJuJCpa9xRu86jWlRnOXbpkhuLKbZD7L+9S6dUeSHRJcX3aEVspMHicXegqdN61IpX
         YH5OKZh9Yb3uTh35D8uAoccLUjXbgSTHrGRTsXgQdmHCbExweuxbEnsHSxE3a0xITkGr
         uWXK/xRUM/X1d4gqjoXkLqAOSw85sAkpjWJ8oirhFyQg8iFW26hVam8QI/i4ddrBsOLd
         i5roXv91A7P77AsqLog9wY1j1MEaaQU1rsB8hpyWy7bxw9zgFsagFqhQctKaasychgN/
         XcXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:cms-type
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:to:subject:dkim-filter:sender:dkim-signature;
        bh=69wCvlWeADT3ZOManh4n4LvEAFbjo4c9wq7D53PR1Gc=;
        b=GMWxwjQsYZNWww1EC+YyItm1cOJyAaTZ8QRUwciIYNZ0rICvfozrX2icfMMg0aRKP8
         etaLUhrVSQmZ6+UkJuMH/znERsQQ+15W6AkFKPTuEVUp259ASHIbVv68KRxVg43p2i+q
         QgTc6PdZ810l5qB2lm7phOE9pUnlTrvUTdWUfMWP3VlWDyKc6jL3GW7uXfw/EYMHvPt3
         eXjayf6DBQyi/jRf8JHhrdvtqNOtj8mhp9u4jhvJ65BgSOn7OQpf5X73z5JEjmlDcAqV
         UuPGr6LT6mXcjPbroBBhR/dJEmbTMpH3Fom08dlJgdbi9tgOVwo0RMGs6B17wbLG9ZC+
         R/9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=k+NUh030;
       spf=pass (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=b.zolnierkie@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:cms-type:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=69wCvlWeADT3ZOManh4n4LvEAFbjo4c9wq7D53PR1Gc=;
        b=th65ehUEHToyHA7deoG9EqUM+YgLZ37MO+RKanBTiaicSZgNtRpV13/xAUGpGVj8GS
         /WBgvcgT6hKTJ3N/grav5cadQFoyKZVln1XxTABy0be3Mwg+jGIU/RdA9uobN2clfZkX
         mYWicsozoBUUzdGTf1Ft4vCzalNHvLX5tGx5rgJ8dZELr4u2SWo7aMjA3Bm/rnF0ZE7+
         4gjzyIKOKzlUObM/3yyNOZt4WlBlVJaNwEM8NKtDWmDzuGiZeotlLGiAv6zSjVyHzRkR
         Gv35cetypRDEO/Ok7mTnA1Jcy6sOmtuwC34VDAnL130Kgqx6/rWkuT2nGSqn67V3ZeIR
         ygHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language:cms-type
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=69wCvlWeADT3ZOManh4n4LvEAFbjo4c9wq7D53PR1Gc=;
        b=NA5FOJ5d2DfrcPIZxy+q5/jQdJ9kFOyYyPinuOo9i3R0bdc5R8++BU/eo+6mkgcr+6
         M8maEQ9JNSqdWwfwimH+13VpZbCoNrtx/uzjASG+4OPaNuBTPnoMFyER7PAoaOrO7BZq
         cHPhLcXEAcKk4iYRirJg4Da0uoqiHv8ONEr3F4VZKLG/nJl3TOe9cvvG/4FbJNWlggMQ
         LFZrfiXgmEXXNHHXkYjCKD+n1qrxYiG+ys2BZXgSK1UpmkR7U018IWhwi5/scFLzBodF
         ki7g+sSI7bJVnKaMSJvZdm8zOvcynSwfLH9vrinB5xoIz7qvlXmioF3/8ovHGweqEvL6
         qtdA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAULPJZn82xWYYXTHQ53ym6JtAQdsfnsRtRLjZO9uP/F5/xdhxum
	NS8GTNyFEhBMafhrayvyvuQ=
X-Google-Smtp-Source: APXvYqz4r6IcS5tpB0TliJBGGT6x1QyJ+VK+CVIYgDfF3N2mS/LHZ6BzFsf3iZRGpOIwgg+B+84Buw==
X-Received: by 2002:a50:a105:: with SMTP id 5mr30625206edj.75.1579103953812;
        Wed, 15 Jan 2020 07:59:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:355a:: with SMTP id s26ls5459601eja.15.gmail; Wed,
 15 Jan 2020 07:59:13 -0800 (PST)
X-Received: by 2002:a17:906:3647:: with SMTP id r7mr29013720ejb.320.1579103953009;
        Wed, 15 Jan 2020 07:59:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579103953; cv=none;
        d=google.com; s=arc-20160816;
        b=DDLHvewomL5pDwFOZYNpZOHMSzi+BpXDKZgbrPsncJ89vlfjyqgKBV2W3XpQztSKE3
         f2zKztqdCLapPZHBfzdmM+0FvWCoZDbA6MnFUieptIWNVjfub3YYNMRsC7KfgVo1TlBf
         m/zPWeBJnjGkRjwS6W+DkVXMbxGw3bgAWDYX8v9i8hnBWOILo8Zm8zNJ7WoyFdWSUOTO
         +LkjuivQqBT8Fzcv7fBK9I/IpY8IML88kVn1D1qLHpK6IS457/mYH9vqsMnb1A0kREi+
         tqtfC1ZfDYUfNnp7Q7UQeCD+jPSTinWxEEzpzwkmErl5b2Ljg9Hekw8In0CHj2aY+hUo
         5G2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:cms-type:content-transfer-encoding:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:cc:to
         :subject:dkim-signature:dkim-filter;
        bh=tlZOFhcA5K3eXyOfi9aCIy9MzGM2jqBd5MqiVtEQrME=;
        b=x0kprd//LojjX1PnxDiI5CXMZet+8EJbNoyCb/XkaO3lRKiolhIlA/+xKJ5Lq9Ie+K
         HwS//EVs2sDAGMPVugOZMX/UF6Ip/k1iF87vN5O68j5eeQyiEo4N7rgL8yzQC77xb/RA
         lkEKgbX9+pgn+ZadGp4xrplWOO3/QYm2nOIcl2QxiU1H1MP9HpUEKLEAmcunD5xlbgt6
         lrikMZY8rRcG88d4LsusKhnTgOBvVLf9EQB41yWe12jvgOqgHp73Aam1xI9SJefC6m2J
         MLRbvqWoGLWVt9DcsBnvLvPtTF9T35UKTG9ECw1UPCjDkVUBCtn5PKrKCcdBDzJAW1Jb
         3s9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=k+NUh030;
       spf=pass (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.11 as permitted sender) smtp.mailfrom=b.zolnierkie@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout1.w1.samsung.com (mailout1.w1.samsung.com. [210.118.77.11])
        by gmr-mx.google.com with ESMTPS id ba12si729984edb.3.2020.01.15.07.59.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Jan 2020 07:59:12 -0800 (PST)
Received-SPF: pass (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.11 as permitted sender) client-ip=210.118.77.11;
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id 20200115155912euoutp01a42123a75c673e9d6686dda4b56f9a8f~qGq2Z6Xp-2878528785euoutp01j
	for <clang-built-linux@googlegroups.com>; Wed, 15 Jan 2020 15:59:12 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com 20200115155912euoutp01a42123a75c673e9d6686dda4b56f9a8f~qGq2Z6Xp-2878528785euoutp01j
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTP id
	20200115155912eucas1p1fb336d2576c52ff09108b40ee20efd21~qGq2Quqpm0918709187eucas1p1P;
	Wed, 15 Jan 2020 15:59:12 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
	eusmges1new.samsung.com (EUCPMTA) with SMTP id DD.27.61286.FC63F1E5; Wed, 15
	Jan 2020 15:59:12 +0000 (GMT)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20200115155911eucas1p220088bc450d966bb2f25eb0f6ebb4e16~qGq1xo2nz1037010370eucas1p2W;
	Wed, 15 Jan 2020 15:59:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
	eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20200115155911eusmtrp1863eec411d2583ec2e23e9d1f1186848~qGq1xFoID0436504365eusmtrp1N;
	Wed, 15 Jan 2020 15:59:11 +0000 (GMT)
X-AuditID: cbfec7f2-f0bff7000001ef66-aa-5e1f36cf65ad
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
	eusmgms1.samsung.com (EUCPMTA) with SMTP id 3F.82.08375.FC63F1E5; Wed, 15
	Jan 2020 15:59:11 +0000 (GMT)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20200115155910eusmtip2c6122f0c7e9d1c4294b3e509bdc2d3cf~qGq09fjz30449104491eusmtip2U;
	Wed, 15 Jan 2020 15:59:10 +0000 (GMT)
Subject: Re: [PATCH] fbcon: Adjust indentation in set_con2fb_map
To: Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor
	<natechancellor@gmail.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
	linux-fbdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <02a247ea-6837-847b-c3cb-af881bc26850@samsung.com>
Date: Wed, 15 Jan 2020 16:59:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=DcXiA5d07bS_3qhr4F-mbsGzZic=OgomuhZchGaXeoQ@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHKsWRmVeSWpSXmKPExsWy7djPc7oXzOTjDOZkWDx4M5vN4srX92wW
	J/o+sFpc3jWHzeLD2xKLDxP+MzmweeycdZfdY8GmUo89E0+yedzvPs7k8XmTXABrFJdNSmpO
	Zllqkb5dAlfG9UnaBS8VKr6c/cTWwHhVvIuRk0NCwETi05NOpi5GLg4hgRWMEouvT2aDcL4w
	Sjz7cYkZpEpI4DOjxIV1ml2MHGAdMx4oQ9QsZ5RontcGVfOWUaJxfj2ILSzgIHHywWs2EFtE
	IE7i7qEbjCANzAJrGSW2Ld7HApJgE7CSmNi+CijBzsErYCfxNxpkPIuAqsSu6YYgBaICERKf
	HhxmBbF5BQQlTs58AtbIKRAo8Xv6FHYQm1lAXOLWk/lMELa8xPa3c5hBNkkIrGOXOLlsJwvE
	ky4Stxc9YIawhSVeHd/CDmHLSJye3MMC1cAo8bfjBVT3dkaJ5ZP/sUFUWUvcOfeLDeQ6ZgFN
	ifW79CHCjhLzHq1hg4QJn8SNt4IQR/BJTNo2nRkizCvR0SYEUa0msWHZBjaYtV07VzJPYFSa
	heS1WUjemYXknVkIexcwsqxiFE8tLc5NTy02zEst1ytOzC0uzUvXS87P3cQITDWn/x3/tIPx
	66WkQ4wCHIxKPLwZf+TihFgTy4orcw8xSnAwK4nwnpwhGyfEm5JYWZValB9fVJqTWnyIUZqD
	RUmc13jRy1ghgfTEktTs1NSC1CKYLBMHp1QDY4Uv29l7kbYLqorWWzMcnfldbPHhRxlntnsd
	ndkst7zd2vKEnd/WnBtGoXsWuG5PLyifsTt738PaGDWOnL3XPmwu5Harf2TuOffc8cbvJX/O
	P3q2KfVe19WDltez5/MrOjnFzhL8s0bJgm+PefLptRt5deV2em8KC3tuHp9kqfJy1oFEdUmR
	ICWW4oxEQy3mouJEAFGhA4oxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEIsWRmVeSWpSXmKPExsVy+t/xe7rnzeTjDNqfK1o8eDObzeLK1/ds
	Fif6PrBaXN41h83iw9sSiw8T/jM5sHnsnHWX3WPBplKPPRNPsnnc7z7O5PF5k1wAa5SeTVF+
	aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexvVJ2gUvFSq+
	nP3E1sB4VbyLkYNDQsBEYsYD5S5GLg4hgaWMEo0vJrFBxGUkjq8v62LkBDKFJf5c62KDqHnN
	KPHs2ixmkISwgIPEyQev2UBsEYE4iTdHb7KAFDELrGWUmL+rnxGi4wajxL1l/WAdbAJWEhPb
	VwEl2Dl4Bewk/kaD7GIRUJXYNd0QpEBUIELi8I5ZjCA2r4CgxMmZT1hAbE6BQInf06ewg9jM
	AuoSf+ZdYoawxSVuPZnPBGHLS2x/O4d5AqPQLCTts5C0zELSMgtJywJGllWMIqmlxbnpucWG
	esWJucWleel6yfm5mxiB8bXt2M/NOxgvbQw+xCjAwajEw5vxRy5OiDWxrLgy9xCjBAezkgjv
	yRmycUK8KYmVValF+fFFpTmpxYcYTYF+m8gsJZqcD4z9vJJ4Q1NDcwtLQ3Njc2MzCyVx3g6B
	gzFCAumJJanZqakFqUUwfUwcnFINjPnB93xfh8kp5B/6z/Yp0WDe5sMrm7gfLKr8by7etdvk
	gkGRUSovz9NP5vvub72Wm9kge+BC0stNvyKX63Mttb21NOw2Z5K8a8jrVwx5c/cv8nXR9+gu
	a2wMDJL/sLRwy5yFnXoqnnfcDvc2X5ki5cQ1/fzelK2myrXL6rkOlXyMkrj+4dyxE0osxRmJ
	hlrMRcWJAH8Xo2rFAgAA
X-CMS-MailID: 20200115155911eucas1p220088bc450d966bb2f25eb0f6ebb4e16
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
X-RootMTR: 20191220180738eucas1p2c5a571666d1f75812de7078ca6b84ab3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191220180738eucas1p2c5a571666d1f75812de7078ca6b84ab3
References: <20191218025337.35044-1-natechancellor@gmail.com>
	<CGME20191220180738eucas1p2c5a571666d1f75812de7078ca6b84ab3@eucas1p2.samsung.com>
	<CAKwvOd=DcXiA5d07bS_3qhr4F-mbsGzZic=OgomuhZchGaXeoQ@mail.gmail.com>
X-Original-Sender: b.zolnierkie@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=k+NUh030;       spf=pass
 (google.com: domain of b.zolnierkie@samsung.com designates 210.118.77.11 as
 permitted sender) smtp.mailfrom=b.zolnierkie@samsung.com;       dmarc=pass
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


On 12/20/19 7:07 PM, Nick Desaulniers wrote:
> On Tue, Dec 17, 2019 at 6:53 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
>>
>> Clang warns:
>>
>> ../drivers/video/fbdev/core/fbcon.c:915:3: warning: misleading
>> indentation; statement is not part of the previous 'if'
>> [-Wmisleading-indentation]
>>         return err;
>>         ^
>> ../drivers/video/fbdev/core/fbcon.c:912:2: note: previous statement is
>> here
>>         if (!search_fb_in_map(info_idx))
>>         ^
>> 1 warning generated.
>>
>> This warning occurs because there is a space before the tab on this
>> line. This happens on several lines in this function; normalize them
>> so that the indentation is consistent with the Linux kernel coding
>> style and clang no longer warns.
>>
>> This warning was introduced before the beginning of git history so no
>> fixes tab.
>>
>> https://github.com/ClangBuiltLinux/linux/issues/824
>> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks for the patch!
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

Patch queued for v5.6, thanks.
 
Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

>> ---
>>  drivers/video/fbdev/core/fbcon.c | 27 +++++++++++++--------------
>>  1 file changed, 13 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/video/fbdev/core/fbcon.c b/drivers/video/fbdev/core/fbcon.c
>> index c9235a2f42f8..9d2c43e345a4 100644
>> --- a/drivers/video/fbdev/core/fbcon.c
>> +++ b/drivers/video/fbdev/core/fbcon.c
>> @@ -866,7 +866,7 @@ static int set_con2fb_map(int unit, int newidx, int user)
>>         int oldidx = con2fb_map[unit];
>>         struct fb_info *info = registered_fb[newidx];
>>         struct fb_info *oldinfo = NULL;
>> -       int found, err = 0;
>> +       int found, err = 0;
>>
>>         WARN_CONSOLE_UNLOCKED();
>>
>> @@ -888,31 +888,30 @@ static int set_con2fb_map(int unit, int newidx, int user)
>>
>>         con2fb_map[unit] = newidx;
>>         if (!err && !found)
>> -               err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
>> -
>> +               err = con2fb_acquire_newinfo(vc, info, unit, oldidx);
>>
>>         /*
>>          * If old fb is not mapped to any of the consoles,
>>          * fbcon should release it.
>>          */
>> -       if (!err && oldinfo && !search_fb_in_map(oldidx))
>> -               err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx,
>> -                                            found);
>> +       if (!err && oldinfo && !search_fb_in_map(oldidx))
>> +               err = con2fb_release_oldinfo(vc, oldinfo, info, unit, oldidx,
>> +                                            found);
>>
>> -       if (!err) {
>> -               int show_logo = (fg_console == 0 && !user &&
>> -                                logo_shown != FBCON_LOGO_DONTSHOW);
>> +       if (!err) {
>> +               int show_logo = (fg_console == 0 && !user &&
>> +                                logo_shown != FBCON_LOGO_DONTSHOW);
>>
>> -               if (!found)
>> -                       fbcon_add_cursor_timer(info);
>> -               con2fb_map_boot[unit] = newidx;
>> -               con2fb_init_display(vc, info, unit, show_logo);
>> +               if (!found)
>> +                       fbcon_add_cursor_timer(info);
>> +               con2fb_map_boot[unit] = newidx;
>> +               con2fb_init_display(vc, info, unit, show_logo);
>>         }
>>
>>         if (!search_fb_in_map(info_idx))
>>                 info_idx = newidx;
>>
>> -       return err;
>> +       return err;
>>  }
>>
>>  /*
>> --
>> 2.24.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://protect2.fireeye.com/url?k=bb9fa192-e64db737-bb9e2add-0cc47a31bee8-3ce98548f51cd7a2&u=https://groups.google.com/d/msgid/clang-built-linux/20191218025337.35044-1-natechancellor%40gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/02a247ea-6837-847b-c3cb-af881bc26850%40samsung.com.
