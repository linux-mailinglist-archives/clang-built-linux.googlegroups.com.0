Return-Path: <clang-built-linux+bncBDL3F4G2ZAIBB2ULU3YAKGQEDKP7XGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3e.google.com (mail-yw1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FDA12CC8A
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Dec 2019 06:06:52 +0100 (CET)
Received: by mail-yw1-xc3e.google.com with SMTP id z7sf25799330ywd.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 29 Dec 2019 21:06:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1577682411; cv=pass;
        d=google.com; s=arc-20160816;
        b=w4kUD6tmzTJxMg7tHgHkc9nFSDBkY+pFIf/5/w5vjwaSdg4f5qdaTtN86Drn8K288n
         KBNruIhDnVxQmd5VX4A1WGcefeGMU39CWfMiHypGRlNiLARVi5cv1DhTfPXEy6VrRUqW
         tIY+RS6Vc71u5UsS68uh+0YuwZZYLB37oZ1ssDjPWa+2s+tcESPd9uWbxTGO7OjiE/im
         +hnkb9x58HlQZBrZUAHRCPNiUi94l2ZD1wFHyDCT+kPIwFbjP7q5my4wIRR3VIxBGPlc
         4kLmWeAOrb0zY7o6eQWDSOxrrmRSy7zwPlqsmY92MbZcFGuXJdI4hQk2XVA3Bidja/s4
         0KIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:dlp-filter:cms-type
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:cc:to:subject:dkim-filter:sender
         :dkim-signature;
        bh=6SVg+6dzahmCsQyGO9zJIggn4m5edLA/LjZVImFXGGs=;
        b=OxMy88bcDyhDYi1fs8WZBvzC81iH86TshL45OYB5FwWVYpAtYdQ3gdlT51vVn81gmt
         lt7iuRbDlJE8yQtr5h9gU/21BOqkPCBOf4L4EE1Btb3jRIZB+D80y8IHH3RDX0B3Xf7w
         wxNgr13BGBELji1Kck5PIXCfrHc8g6j1DLzF0QUEv05dPe4scKpFcxaG2jKvSZD79SDn
         f9ge7VW6KvmblC33E0JIcK7ibc6rGPC87gp+mNttAxY3yW5tw7FDUT+s32b8r7SjDfO4
         KE9ioduIRtZ0+FVZbJ1sv/YlUZijHkgX5hKJaUg6T7MkYfzPn/HFnhEJNkHN6xQX9uzp
         +c4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=I8N4Yytg;
       spf=pass (google.com: domain of cw00.choi@samsung.com designates 203.254.224.33 as permitted sender) smtp.mailfrom=cw00.choi@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:subject:to:cc:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language:cms-type
         :dlp-filter:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6SVg+6dzahmCsQyGO9zJIggn4m5edLA/LjZVImFXGGs=;
        b=Dnw1wiZfQrjIKM1Slz5piIipm2Yk+u4+7Mgh5i74izXYRsdUANxB2t3azTmFTG8rqP
         69/bZTTXoaRE+3dDMOvbFdsKZvcUjmrs590+7qKvD6/FutILh6XHCbuQTsVz74Sq6jFT
         /GamQTLxvP3v8VjVjmVgYZjTJz/I2siZ5sATSovFovolc8rcgTcU0dKmgl5pcUNzL+AA
         JWsWcA/7cHs3AEcBElJfs2q9b9fO2BARzAqao8yiYoswh5XbXxK+vxtfBgZL8BU5qtai
         i3gQ0NWkk5Iatw1sCsbOLNK7iJoyjFDkNZjcrtAmrN6aeYw2iRLAvINmAmAyvdgFanad
         8HUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:subject:to:cc:from
         :organization:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:cms-type:dlp-filter:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6SVg+6dzahmCsQyGO9zJIggn4m5edLA/LjZVImFXGGs=;
        b=RbowgazpbBcTtTDseiSvNZlLuNA6BVEkk8IyK+z/uvnKkLxW300BlEwct+HG0pkKWc
         6+1AcBP/ggf9idGVMGLEF90Dg03vzWkYE6kpTHjpjYFuF1itVrDKCoGQ6UXmAoiECDFh
         lL/wk7N9RYg4CPN06MzwrBm1X21wKec7pEruXR1r7X9S9TBJv1NCK41pTVLRK10Sebt2
         1NUXKC0x2IbVMwdnpx5tyKwZpzGTVlzM4JMQPB9fKbdbB6s459MYtmbc0Z3sD/kyqhqy
         5xKBhsRWJLUCnPCa5RnXjAxDohlrw/+FevPEgrMmSIvU7qnu5/vEBtQ4N5W2BclULKtB
         To6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVmgBQBq28AXqUfaeQVBflKrx0gar7eVyq9fOZjtIZwCRE8GpQm
	SFS7aD9Y0EmBPtN1iogRddo=
X-Google-Smtp-Source: APXvYqxo97j2QAtVkJA27DCIIMAzlNadiEigQSje2iE/7kduUHgVhYp5A4twQdkwyQBtSGeiaVtn8g==
X-Received: by 2002:a25:48c6:: with SMTP id v189mr49432789yba.41.1577682410814;
        Sun, 29 Dec 2019 21:06:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:db8e:: with SMTP id g136ls4146220ybf.0.gmail; Sun, 29
 Dec 2019 21:06:50 -0800 (PST)
X-Received: by 2002:a25:1841:: with SMTP id 62mr24291152yby.405.1577682410382;
        Sun, 29 Dec 2019 21:06:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1577682410; cv=none;
        d=google.com; s=arc-20160816;
        b=JoDr8JPk4E7Cand1Vo14LYOpMjpfRPd0JUgQYtVzUC/pSqALl3njmIRV9o/8L5RMB+
         U72/npd02jPh7t0LFqHwzfciIOmBu8WL0PtHl6W+ABPCGok27mpaxC8gSwQvRPMlmio9
         7U1t2qs35uI8lIxV74ijn9FhDNsM7g3bKHyM6wbybL652YgL9cXd/1Ynbp925evoTQy5
         TYGaJyWInToAccaVuN+cvqEJR1hfe/b6afzyziIFqkM4vc+IqtKGZYvUFuGa3Y0hvbbd
         MSgeIyPLNZF7Ljo64yiW14WgLDvxTjDRUDO1+FQzXg8PiULSUAkiGbzKrIgtyM9dOS0Y
         w+cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:dlp-filter:cms-type:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:organization:from:cc:to:subject:dkim-signature
         :dkim-filter;
        bh=mSMK7ME/7YbkPTqVFLLmqfgGhRPgDxzeqkbJM3M+EXw=;
        b=mPb1OvCvplz35/Er7kiCKmuqDKJrT0d4HOvrjrjBlDCKe6c+3K51pMhPtVWPM3yZ76
         fIjdd0M0B70thlnvgLIr6zzCpPkUF/hX7xnKburUNVck6UKXTnGKZesQohvnc3sZEFcp
         CS6owWlvfIpRsBi3jY8gCQDmNcUlcbr9gKIRgYPCokyTHgZDMEZKPIHv7nHqtPhJJQpX
         3LCF9TISbzAMxOHHCGu4yoaTOOXtGRAjRzFotZlewOPLV71O3REiSjF5d5UAQJc2vQeY
         gwiy7E6LFo1kmynKkuKo2MvYRedIxoOy/myFxGypmd8SWYr5pU9XjIqMdWCv5PjLqNiL
         x4Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=I8N4Yytg;
       spf=pass (google.com: domain of cw00.choi@samsung.com designates 203.254.224.33 as permitted sender) smtp.mailfrom=cw00.choi@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout3.samsung.com (mailout3.samsung.com. [203.254.224.33])
        by gmr-mx.google.com with ESMTPS id j7si1429551ywc.2.2019.12.29.21.06.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Dec 2019 21:06:50 -0800 (PST)
Received-SPF: pass (google.com: domain of cw00.choi@samsung.com designates 203.254.224.33 as permitted sender) client-ip=203.254.224.33;
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20191230050647epoutp0301a862e01287ebd7117481f02d4fd1cf~lDcpY-T3o1562415624epoutp03g
	for <clang-built-linux@googlegroups.com>; Mon, 30 Dec 2019 05:06:47 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20191230050647epoutp0301a862e01287ebd7117481f02d4fd1cf~lDcpY-T3o1562415624epoutp03g
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas1p3.samsung.com (KnoxPortal) with ESMTP id
	20191230050646epcas1p37fae9dfaa0ce041f842bf151a2b5df88~lDcpAV_lU0082100821epcas1p3R;
	Mon, 30 Dec 2019 05:06:46 +0000 (GMT)
Received: from epsmges1p2.samsung.com (unknown [182.195.40.153]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 47mQQD0tlzzMqYkr; Mon, 30 Dec
	2019 05:06:44 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
	epsmges1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	5D.37.48498.3E5890E5; Mon, 30 Dec 2019 14:06:44 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20191230050643epcas1p2fc073f9b43493baaedcf69e1949491bd~lDcmBb3Ao1714517145epcas1p2k;
	Mon, 30 Dec 2019 05:06:43 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20191230050643epsmtrp236be5b77e0f08d0dad03969e7570473e~lDcmArxrB0865108651epsmtrp2b;
	Mon, 30 Dec 2019 05:06:43 +0000 (GMT)
X-AuditID: b6c32a36-a55ff7000001bd72-49-5e0985e39400
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	4C.77.10238.3E5890E5; Mon, 30 Dec 2019 14:06:43 +0900 (KST)
Received: from [10.113.221.102] (unknown [10.113.221.102]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20191230050643epsmtip26885f69c537d19650bbd804d81d96f7b~lDclixsD61694316943epsmtip2X;
	Mon, 30 Dec 2019 05:06:43 +0000 (GMT)
Subject: Re: [PATCH] PM / devfreq: Add debugfs support with devfreq_summary
 file
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
	chanwoo@kernel.org, myungjoo.ham@samsung.com, kyungmin.park@samsung.com,
	clang-built-linux@googlegroups.com
From: Chanwoo Choi <cw00.choi@samsung.com>
Organization: Samsung Electronics
Message-ID: <22655ea9-d57d-f24e-3912-7e588c036ee3@samsung.com>
Date: Mon, 30 Dec 2019 14:13:39 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:59.0) Gecko/20100101
	Thunderbird/59.0
MIME-Version: 1.0
In-Reply-To: <20191230032655.GA40172@ubuntu-m2-xlarge-x86>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA02SWUwTYRDH83Xb7VatrEV05EFhlRBIgC6luKCgUWMqEkWMR4yCG/gshF7Z
	bcUzirEK9QhV41EVD8AoPBgIIjQiEQ1ajUYDBpQQMPKgiGKsIkYfbLsYefvNzH++Ob6hCE0N
	GUkVW+xYsPAmhpwib34Yp00YcqrytMNrOXdvt5wbHLlIcs8PjSi5Lu8lkvOfeIS4vrKbJPf1
	s32p0tDq6Vca7rl9pKGxroI0nGyqQwZ/49wcxZaSxUWYL8RCFLYUWAuLLcYMZvX6/OX5+lQt
	m8CmcQuZKAtvxhnMiuychJXFpkATTNRO3uQIuHJ4UWSSMhcLVocdRxVZRXsGg22FJluaLVHk
	zaLDYkwssJrTWa02WR8Qbi8p+u4+Q9i6N+0a+HmDPIh+LXMhigI6BXqrBBeaQmnoFgTuVq9M
	Mr4h+H39FpKMMQT1nZ1KF1KFMvoG3IQUaENw/6xPKRmjCMqbP8qCqnA6F6q9NYogz6S1cPjB
	oZCIoOsRfOopI4MBko6H9g+9IQ6jo+H1+HsUZDWdCe/GnoRYTsfAS1dD6KEIeiP4mg9PaGaA
	78KQPMgqOh3G6t+EChP0bHg7dGWC58Hdz5dCrQLtJ8E51DAxwwrw36+USxwOw4+bJvyR4P/S
	Rkq8F275HpFScjmCpvaXCimgg/ba07Lg+gg6Dm57kyR3NLT+voykwtPhy4/jCmnDaig/opEk
	86FrsF8m8RyoPlpBViLGM2kcz6QRPJNG8PwvdhXJ69AsbBPNRiyytuTJ392IQhcan9qCrr/I
	7kA0hZhp6vPnqDyNgt8p7jZ3IKAIZqY6ZasqT6Mu5HfvwYI1X3CYsNiB9IFtu4nIiAJr4N4t
	9nxWn6zT6bgUNlXPssxsNTX+apuGNvJ2XIKxDQv/8mSUKvIg2r6mpvyhc2FYJ7OGyYyNnl9b
	F3c7oWrP033+A6PZXVkHWuFa7brOs2+WzrozI3dH7LM/6qxcTfUpR9zTRcZ7wx16djRrTllp
	jqzqyf6aq6uEsP19ztN/fqxu27g5ImPspt3beNK0AA/oXH1TNUkbuOcxy3pOJZX6avdWHBtZ
	4mRwJSMXi3g2nhBE/i9iq10itwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnkeLIzCtJLcpLzFFi42LZdlhJXvdxK2ecwf8NchYTb1xhsXjwZjab
	xdmmN+wWl3fNYbP43HuE0eJ24wo2iw9vSxzYPXbOusvusWfiSTaPTas62Tz6tqxi9Pi8SS6A
	NYrLJiU1J7MstUjfLoEr48vEKcwFV8Ir7n9fxtbA+NOpi5GTQ0LAROL2/YnMXYxcHEICuxkl
	3p7+zAaRkJSYdvEoUIIDyBaWOHy4GKLmLaPEtw0bGUFqhAWCJBbvWsIKYosIGEi0HGxiByli
	FljNKLHuYw9YkZDAPkaJvc3GIDabgJbE/hc3wBbwCyhKXP3xGKyGV8BO4uG3E2A2i4CqxIWu
	jWBDRQXCJHYuecwEUSMocXLmExYQm1PASuLb6ptgcWYBdYk/8y4xQ9jiEreezIeKy0tsfzuH
	eQKj8Cwk7bOQtMxC0jILScsCRpZVjJKpBcW56bnFhgWGeanlesWJucWleel6yfm5mxjB0aSl
	uYPx8pL4Q4wCHIxKPLwfZnLECbEmlhVX5h5ilOBgVhLhNYnhjBPiTUmsrEotyo8vKs1JLT7E
	KM3BoiTO+zTvWKSQQHpiSWp2ampBahFMlomDU6qBkUlfUWT2rtW/BUJ/tjbFzdolzjhzFWMy
	e6ch35c9U/tO2TvvfC+VrXHpg96n8pnK91fwdembf6j4eO9ME983qZefTNWeCN1eUMiv9en6
	JzlHl7XnxVcbh1zce2HNdfZ3sfszZM7ssZ64/nzIhI55QS/CHN9vYVkev3p5xL0+5o6fNY2T
	bB9tvK7EUpyRaKjFXFScCACzg81dogIAAA==
X-CMS-MailID: 20191230050643epcas1p2fc073f9b43493baaedcf69e1949491bd
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20191226060101epcas1p11a225c00bb7ab2f6b7895b4cb00b9871
References: <CGME20191226060101epcas1p11a225c00bb7ab2f6b7895b4cb00b9871@epcas1p1.samsung.com>
	<20191226060749.13881-1-cw00.choi@samsung.com>
	<20191230032655.GA40172@ubuntu-m2-xlarge-x86>
X-Original-Sender: cw00.choi@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=I8N4Yytg;       spf=pass
 (google.com: domain of cw00.choi@samsung.com designates 203.254.224.33 as
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

Hi Nathan,

On 12/30/19 12:26 PM, Nathan Chancellor wrote:
> Hi Chanwoo,
> 
> On Thu, Dec 26, 2019 at 03:07:49PM +0900, Chanwoo Choi wrote:
>> Add debugfs interface to provide debugging information of devfreq device.
>> It contains 'devfreq_summary' entry to show the summary of registered
>> devfreq devices as following: And the additional debugfs file will be added.
>> - /sys/kernel/debug/devfreq/devfreq_summary
>>
>> [For example on Exynos5422-based Odroid-XU3 board]
>> - In order to show the multiple governors on devfreq_summay result,
>> change the governor of devfreq0 from simple_ondemand to userspace.
>>
>> $ cat /sys/kernel/debug/devfreq/devfreq_summary
>> dev name                       dev        parent dev governor        cur_freq     min_freq     max_freq
>> ------------------------------ ---------- ---------- --------------- ------------ ------------ ------------
>> 10c20000.memory-controller     devfreq0              userspace       165000000    165000000    825000000
>> soc:bus_wcore                  devfreq1              simple_ondemand 400000000    84000000     400000000
>> soc:bus_noc                    devfreq2   devfreq1   passive         100000000    67000000     100000000
>> soc:bus_fsys_apb               devfreq3   devfreq1   passive         200000000    100000000    200000000
>> soc:bus_fsys                   devfreq4   devfreq1   passive         200000000    100000000    200000000
>> soc:bus_fsys2                  devfreq5   devfreq1   passive         150000000    75000000     150000000
>> soc:bus_mfc                    devfreq6   devfreq1   passive         333000000    96000000     333000000
>> soc:bus_gen                    devfreq7   devfreq1   passive         267000000    89000000     267000000
>> soc:bus_peri                   devfreq8   devfreq1   passive         67000000     67000000     67000000
>> soc:bus_g2d                    devfreq9   devfreq1   passive         333000000    84000000     333000000
>> soc:bus_g2d_acp                devfreq10  devfreq1   passive         267000000    67000000     267000000
>> soc:bus_jpeg                   devfreq11  devfreq1   passive         300000000    75000000     300000000
>> soc:bus_jpeg_apb               devfreq12  devfreq1   passive         167000000    84000000     167000000
>> soc:bus_disp1_fimd             devfreq13  devfreq1   passive         200000000    120000000    200000000
>> soc:bus_disp1                  devfreq14  devfreq1   passive         300000000    120000000    300000000
>> soc:bus_gscl_scaler            devfreq15  devfreq1   passive         300000000    150000000    300000000
>> soc:bus_mscl                   devfreq16  devfreq1   passive         400000000    84000000     400000000
>>
>> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
>> ---
>>  drivers/devfreq/devfreq.c | 65 +++++++++++++++++++++++++++++++++++++++
>>  1 file changed, 65 insertions(+)
>>
>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>> index acd21345a070..d7177cc0a914 100644
>> --- a/drivers/devfreq/devfreq.c
>> +++ b/drivers/devfreq/devfreq.c
>> @@ -10,6 +10,7 @@
>>  #include <linux/kernel.h>
>>  #include <linux/kmod.h>
>>  #include <linux/sched.h>
>> +#include <linux/debugfs.h>
>>  #include <linux/errno.h>
>>  #include <linux/err.h>
>>  #include <linux/init.h>
>> @@ -33,6 +34,7 @@
>>  #define HZ_PER_KHZ	1000
>>  
>>  static struct class *devfreq_class;
>> +static struct dentry *devfreq_debugfs;
>>  
>>  /*
>>   * devfreq core provides delayed work based load monitoring helper
>> @@ -1670,6 +1672,62 @@ static struct attribute *devfreq_attrs[] = {
>>  };
>>  ATTRIBUTE_GROUPS(devfreq);
>>  
>> +static int devfreq_summary_show(struct seq_file *s, void *data)
>> +{
>> +	struct devfreq *devfreq;
>> +	struct devfreq *parent_devfreq;
>> +	unsigned long cur_freq, min_freq, max_freq;
>> +
>> +	seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
>> +			"dev name",
>> +			"dev",
>> +			"parent dev",
>> +			"governor",
>> +			"cur_freq",
>> +			"min_freq",
>> +			"max_freq");
>> +	seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
>> +			"------------------------------",
>> +			"----------",
>> +			"----------",
>> +			"---------------",
>> +			"------------",
>> +			"------------",
>> +			"------------");
>> +
>> +	mutex_lock(&devfreq_list_lock);
>> +
> 
> The 0day team has been doing builds with Clang and it pointed out that
> when CONFIG_DEVFREQ_GOV_PASSIVE is unset, parent_devfreq is always
> uninitialized. The else branch should probably be eliminated, moving the
> parent_devfreq NULL initialization above the if preprocessor directive.
> 
> The full report is below.

Thanks for the report. I'll fix it as following:

struct devfreq *parent_devfreq = NULL;

> 
>> +	list_for_each_entry_reverse(devfreq, &devfreq_list, node) {
>> +#if IS_ENABLED(CONFIG_DEVFREQ_GOV_PASSIVE)
>> +		if (!strncmp(devfreq->governor_name, DEVFREQ_GOV_PASSIVE,
>> +							DEVFREQ_NAME_LEN)) {
>> +			struct devfreq_passive_data *data = devfreq->data;
>> +			parent_devfreq = data->parent;
>> +		} else {
>> +			parent_devfreq = NULL;
>> +		}
>> +#endif
>> +		mutex_lock(&devfreq->lock);
>> +		cur_freq = devfreq->previous_freq,
>> +		get_freq_range(devfreq, &min_freq, &max_freq);
>> +		mutex_unlock(&devfreq->lock);
>> +
>> +		seq_printf(s, "%-30s %-10s %-10s %-15s %-12ld %-12ld %-12ld\n",
>> +			dev_name(devfreq->dev.parent),
>> +			dev_name(&devfreq->dev),
>> +			parent_devfreq ? dev_name(&parent_devfreq->dev) : "",
>> +			devfreq->governor_name,
>> +			cur_freq,
>> +			min_freq,
>> +			max_freq);
>> +	}
>> +
>> +	mutex_unlock(&devfreq_list_lock);
>> +
>> +	return 0;
>> +}
>> +DEFINE_SHOW_ATTRIBUTE(devfreq_summary);
>> +
>>  static int __init devfreq_init(void)
>>  {
>>  	devfreq_class = class_create(THIS_MODULE, "devfreq");
>> @@ -1686,6 +1744,13 @@ static int __init devfreq_init(void)
>>  	}
>>  	devfreq_class->dev_groups = devfreq_groups;
>>  
>> +	devfreq_debugfs = debugfs_create_dir("devfreq", NULL);
>> +	if (PTR_ERR(devfreq_debugfs) != -ENODEV && IS_ERR(devfreq_debugfs))
>> +		pr_warn("%s: couldn't create debugfs dir\n", __FILE__);
>> +
>> +	debugfs_create_file("devfreq_summary", 0444, devfreq_debugfs, NULL,
>> +			&devfreq_summary_fops);
>> +
>>  	return 0;
>>  }
>>  subsys_initcall(devfreq_init);
>> -- 
>> 2.17.1
>>
> 
> Cheers,
> Nathan
> 
> On Thu, Dec 26, 2019 at 11:47:26PM +0800, kbuild test robot wrote:
>> CC: kbuild-all@lists.01.org
>> In-Reply-To: <20191226060749.13881-1-cw00.choi@samsung.com>
>> References: <20191226060749.13881-1-cw00.choi@samsung.com>
>> TO: Chanwoo Choi <cw00.choi@samsung.com>
>>
>> Hi Chanwoo,
>>
>> I love your patch! Perhaps something to improve:
>>
>> [auto build test WARNING on linux/master]
>> [also build test WARNING on linus/master v5.5-rc3 next-20191220]
>> [if your patch is applied to the wrong git tree, please drop us a note to help
>> improve the system. BTW, we also suggest to use '--base' option to specify the
>> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>>
>> url:    https://protect2.fireeye.com/url?k=aa57311e-f7cb307e-aa56ba51-0cc47a31307c-5e67a2de952cf65a&u=https://github.com/0day-ci/linux/commits/Chanwoo-Choi/PM-devfreq-Add-debugfs-support-with-devfreq_summary-file/20191226-140227
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 1522d9da40bdfe502c91163e6d769332897201fa
>> config: arm64-defconfig (attached as .config)
>> compiler: clang version 10.0.0 (git://gitmirror/llvm_project c5b4a2386b51a18daad7e42040c685c2e9708c47)
>> reproduce:
>>         wget https://protect2.fireeye.com/url?k=e9857e19-b4197f79-e984f556-0cc47a31307c-e0c94321f498a093&u=https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # save the attached .config to linux build tree
>>         make.cross ARCH=arm64 
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers/devfreq/devfreq.c:1653:4: warning: variable 'parent_devfreq' is uninitialized when used here [-Wuninitialized]
>>                            parent_devfreq ? dev_name(&parent_devfreq->dev) : "",
>>                            ^~~~~~~~~~~~~~
>>    drivers/devfreq/devfreq.c:1613:32: note: initialize the variable 'parent_devfreq' to silence this warning
>>            struct devfreq *parent_devfreq;
>>                                          ^
>>                                           = NULL
>>    1 warning generated.
>>
>> vim +/parent_devfreq +1653 drivers/devfreq/devfreq.c
>>
>>   1609	
>>   1610	static int devfreq_summary_show(struct seq_file *s, void *data)
>>   1611	{
>>   1612		struct devfreq *devfreq;
>>   1613		struct devfreq *parent_devfreq;
>>   1614		unsigned long cur_freq, min_freq, max_freq;
>>   1615	
>>   1616		seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
>>   1617				"dev name",
>>   1618				"dev",
>>   1619				"parent dev",
>>   1620				"governor",
>>   1621				"cur_freq",
>>   1622				"min_freq",
>>   1623				"max_freq");
>>   1624		seq_printf(s, "%-30s %-10s %-10s %-15s %-12s %-12s %-12s\n",
>>   1625				"------------------------------",
>>   1626				"----------",
>>   1627				"----------",
>>   1628				"---------------",
>>   1629				"------------",
>>   1630				"------------",
>>   1631				"------------");
>>   1632	
>>   1633		mutex_lock(&devfreq_list_lock);
>>   1634	
>>   1635		list_for_each_entry_reverse(devfreq, &devfreq_list, node) {
>>   1636	#if IS_ENABLED(CONFIG_DEVFREQ_GOV_PASSIVE)
>>   1637			if (!strncmp(devfreq->governor_name, DEVFREQ_GOV_PASSIVE,
>>   1638								DEVFREQ_NAME_LEN)) {
>>   1639				struct devfreq_passive_data *data = devfreq->data;
>>   1640				parent_devfreq = data->parent;
>>   1641			} else {
>>   1642				parent_devfreq = NULL;
>>   1643			}
>>   1644	#endif
>>   1645			mutex_lock(&devfreq->lock);
>>   1646			cur_freq = devfreq->previous_freq,
>>   1647			get_freq_range(devfreq, &min_freq, &max_freq);
>>   1648			mutex_unlock(&devfreq->lock);
>>   1649	
>>   1650			seq_printf(s, "%-30s %-10s %-10s %-15s %-12ld %-12ld %-12ld\n",
>>   1651				dev_name(devfreq->dev.parent),
>>   1652				dev_name(&devfreq->dev),
>>> 1653				parent_devfreq ? dev_name(&parent_devfreq->dev) : "",
>>   1654				devfreq->governor_name,
>>   1655				cur_freq,
>>   1656				min_freq,
>>   1657				max_freq);
>>   1658		}
>>   1659	
>>   1660		mutex_unlock(&devfreq_list_lock);
>>   1661	
>>   1662		return 0;
>>   1663	}
>>   1664	DEFINE_SHOW_ATTRIBUTE(devfreq_summary);
>>   1665	
>>
>> ---
>> 0-DAY kernel test infrastructure                 Open Source Technology Center
>> https://protect2.fireeye.com/url?k=f6f1d925-ab6dd845-f6f0526a-0cc47a31307c-7e8a6c295935ff12&u=https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>>
> 
> 


-- 
Best Regards,
Chanwoo Choi
Samsung Electronics

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/22655ea9-d57d-f24e-3912-7e588c036ee3%40samsung.com.
