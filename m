Return-Path: <clang-built-linux+bncBDDLNO7VZ4IBBYOURGBQMGQECMVRW3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3c.google.com (mail-qv1-xf3c.google.com [IPv6:2607:f8b0:4864:20::f3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1831B34DCB4
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 02:01:39 +0200 (CEST)
Received: by mail-qv1-xf3c.google.com with SMTP id l16sf6552300qvt.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Mar 2021 17:01:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617062498; cv=pass;
        d=google.com; s=arc-20160816;
        b=D/VNgZLvqVj1kAuKzdbJ2iirLm5OmNWLM4vw9g9mluIGx0Q78WoGTbOxWisXr/kvAV
         3dGHjD9jG7/8Robyt85PwxWiP3gFh3FUWb85NpIlVmZ+o58klXWg1DWftXZtQ6/ET+TO
         ythBzT1xCHxJGsLYMil9OiZn5F5ebzRxJJwjyqy9s+36mdG+Wf/481g5wm7OLjKeptmK
         OTpiZKrTJk97hjaheQqrD0JqpQw/qa9U6kYbFuGRVoSdzwkLAJ0O50kVLAih3g3VtaUm
         88o0d9InYygaGiXFCcF3ktk9vYgAWKmUI4opJyyc9ZCpxCg0b02bJe3mZZBmIL53xH/5
         SQNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:dlp-filter:cms-type
         :content-language:thread-index:mime-version:message-id:date:subject
         :in-reply-to:cc:to:from:dkim-filter:sender:dkim-signature;
        bh=U4urzqI9PPa1NP+YdfiiAg0C30LJkG2RfwUyuBXjMs8=;
        b=y0mvgHifwxmuQsB6+LeSGPEgt85KueZ1XVGbyhTkM00NtMiJCFdNBTsjoxMUOHNCve
         Og03aoshBwUuqXv49XzHNInEr+lpZzgSKNNEx69I397/+Xfbf3jLzV6BWVFpDEesJeoH
         UBvMH/HA5HIvAZyrApe4I09vsvZ7Kqyc9T/5E2r7COfK70pgMhSRKjKfW4MNGPFFRAEW
         FZy5rKpa0iXKt+zQqkEDBz1Jbgi2/vnNg6vNViKy9goH3PKqbMte4KBwIUqTS8NeRQ0k
         vdHW30Tum+F3Xg34qzXnYW+Jhl685SF14eeQcUCT+OM5UA6dzSU7Ys9o6cMfM1SGi9R8
         Mplg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=Lc9aFCOe;
       spf=pass (google.com: domain of namjae.jeon@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=namjae.jeon@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:in-reply-to:subject:date:message-id
         :mime-version:thread-index:content-language:cms-type:dlp-filter
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U4urzqI9PPa1NP+YdfiiAg0C30LJkG2RfwUyuBXjMs8=;
        b=aw3qyu3ylcB2oEQQlQLj1yCL+TyBLD9iTdTHFcwJcVmngFmPX9k1RvLVQxaENw7Ce7
         eqtgOSXZnW81+a4zTpMvu7egK5ApDylVLYvBGlAjW7qnUoQw88kobR5BgrVcn9j4kGjF
         twDpNisvD4rezhjj174gB10AC3sirhx8qggDzj1IjQ+abQO7qqqzoNBeRbqR8/clAvTA
         70u9ccjMcUTyZ3jfUPBtKESwsGIqqsP8pFFcAR6bxn/GfkYPO1ofxnJhAeu5WXrELqr6
         BRAxksILISU5Pz3WrjkqMl9ZM4rOVZm2SadHL0HCuzyon/qHQfRTlkXHnQjEH/3W/HJ0
         O8Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:in-reply-to
         :subject:date:message-id:mime-version:thread-index:content-language
         :cms-type:dlp-filter:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U4urzqI9PPa1NP+YdfiiAg0C30LJkG2RfwUyuBXjMs8=;
        b=hXr9gHLW1Nqi3FB2LkqWvjEztcq0h8KEj65eqvlogWxE+f5UETS/a8G72HM4daqB73
         HTxRb8G+Xa7BEw7zxlFqM7Wd3JiC4K660bCYf9VKPVaPJxJO1JHcRl4H4cQ9/5hDjZen
         uVD282cGejZLIOynl5hFHegG5tbsZFkURVw7aDIBO9Nf41RwHW33ynvFoFJj4rXxZ+py
         nIIeA+A9GR1E0ulajXX6cnRm1LGPyTWnsdPDXro41Kd6uIeVXqq4hcQngw+0c10eIAaW
         MOEnKWYfMim8iEoG6YK1XI0U4Cioli7jkJraasiLvXgAnXe6IzR/mt7rDn1Rcx1ehOYD
         sYVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532cWrqLDp3RIMPVMC9jCWOm7A7BebYhfhqI2s12uxMqFTdIXMLL
	/DaWdj2o5oWYKV7GF3LRYQk=
X-Google-Smtp-Source: ABdhPJxoZ1n4f0AB4PhtQNHq35SGSjwI3y0H2Ia4iN1iCg7O9DD5AtNux6uHwXRyu2HjDWalaNwD4A==
X-Received: by 2002:ae9:ebc3:: with SMTP id b186mr27110544qkg.335.1617062498026;
        Mon, 29 Mar 2021 17:01:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:4455:: with SMTP id w21ls9441085qkp.7.gmail; Mon,
 29 Mar 2021 17:01:37 -0700 (PDT)
X-Received: by 2002:a05:620a:13ac:: with SMTP id m12mr28038141qki.458.1617062497616;
        Mon, 29 Mar 2021 17:01:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617062497; cv=none;
        d=google.com; s=arc-20160816;
        b=EdmLX40u3jOx0uGCYxTeNXQin3YHARdiW7DAbkvuT4wiKVR23EoeYNLRnMTen0AaFB
         vs3ZvuliQ2hoXeP/8yuyddiNTKk1iGN+jgh+FuE/uTjvki36jf5TmvVGMaDD6KPBV5mZ
         k/K8UGnTz86LLdYUOleR8BcK2Aiz8Wt2rCQFwqcC7H9HOduwKIMtLt0ZjWmkUBXeOGQh
         Tc6rSIoSIQfNkyaPy9s2jpNdW5IoKa4QOLcLbm/6FWW0A66pkfWo6e5zJpUuDN9lpyPD
         ER522S3lw5P5+v4XmAZ7thJT4wyCQI4H0HbPPUUl6mb2pEJocIv7CM43fJS9pgQo+I1D
         bz2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:dlp-filter:cms-type:content-language:thread-index
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:cc:to:from:dkim-signature:dkim-filter;
        bh=GX6qHH3/Clsiu+Z7BA2dw0dJy/VGVCarqbW7kuEJCTg=;
        b=XKr4BPSZ0a+4v1up1MwizxBxO4npfGUydHZdsM9eNBXUe6zrRSKqtKSfPWK6VbLHHP
         iEws45AllAX/7Wy7osj7uzleLre4evEJjcaz1fSRExIIJpOpjy7Mi0oM7wdOkvrgvyRw
         borj2Kbe3vFVpKwumrgPY6szelKLcX6d/OaUSh63dpmvHS9TgHpWnKJTHdjVmWERU9oC
         cQ7icf81k2uaJSk1szchQXVx73frr/qU0OG0oVtxttHfQYL9/Z3KqjAO2wYqd7TqqkWd
         J4M7X5oQQD7buiZigW4T5pd98xFAJyTOJ6GBVFaxL4/nTf3gPoxkikGUhXinI79C29qy
         whyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=Lc9aFCOe;
       spf=pass (google.com: domain of namjae.jeon@samsung.com designates 203.254.224.34 as permitted sender) smtp.mailfrom=namjae.jeon@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout4.samsung.com (mailout4.samsung.com. [203.254.224.34])
        by gmr-mx.google.com with ESMTPS id r26si1001208qtf.3.2021.03.29.17.01.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Mar 2021 17:01:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of namjae.jeon@samsung.com designates 203.254.224.34 as permitted sender) client-ip=203.254.224.34;
Received: from epcas1p3.samsung.com (unknown [182.195.41.47])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20210330000133epoutp0497228fd518ef104c0ba0dc8a292100cf~w9cVHA0r91766217662epoutp04F
	for <clang-built-linux@googlegroups.com>; Tue, 30 Mar 2021 00:01:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20210330000133epoutp0497228fd518ef104c0ba0dc8a292100cf~w9cVHA0r91766217662epoutp04F
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas1p2.samsung.com (KnoxPortal) with ESMTP id
	20210330000133epcas1p23a769377f0fc11fb90dc08399a02d43e~w9cU6PHa30596505965epcas1p2f;
	Tue, 30 Mar 2021 00:01:33 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.159]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4F8V3c2S5hz4x9Pw; Tue, 30 Mar
	2021 00:01:32 +0000 (GMT)
Received: from epcas1p3.samsung.com ( [182.195.41.47]) by
	epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	51.E1.23820.C5A62606; Tue, 30 Mar 2021 09:01:32 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas1p3.samsung.com (KnoxPortal) with ESMTPA id
	20210330000131epcas1p382112fc4caa16e5c484ff172ab846d01~w9cTNG2AT1892618926epcas1p3R;
	Tue, 30 Mar 2021 00:01:31 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20210330000131epsmtrp2d3cf43bf1857322af339c5f8506acbed~w9cTMZYCe1985619856epsmtrp2j;
	Tue, 30 Mar 2021 00:01:31 +0000 (GMT)
X-AuditID: b6c32a37-0031da8000015d0c-66-60626a5c0d98
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	D2.6F.08745.B5A62606; Tue, 30 Mar 2021 09:01:31 +0900 (KST)
Received: from namjaejeon01 (unknown [10.88.104.63]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20210330000131epsmtip11a6a7a8623d8d182cf78e170efa62b85~w9cS9rk4D0329803298epsmtip1D;
	Tue, 30 Mar 2021 00:01:31 +0000 (GMT)
From: "Namjae Jeon" <namjae.jeon@samsung.com>
To: "'kernel test robot'" <lkp@intel.com>, "'Hyunchul Lee'"
	<hyc.lee@gmail.com>
Cc: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>, "'Linux
 Memory Management List'" <linux-mm@kvack.org>, "'Steve French'"
	<stfrench@microsoft.com>
In-Reply-To: <202103292024.H6EkiwQx-lkp@intel.com>
Subject: RE: [linux-next:master 4948/8469] fs/cifsd/oplock.c:1454: warning:
 expecting prototype for create_durable_rsp__buf(). Prototype was for
 create_durable_rsp_buf() instead
Date: Tue, 30 Mar 2021 09:01:31 +0900
Message-ID: <036801d724f7$d7414520$85c3cf60$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIChOzcmaR60iAvWVR16UE+ZmhK0QHAMThpqjbkHDA=
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGJsWRmVeSWpSXmKPExsWy7bCmvm5MVlKCwdcTPBYP3sxms7h2/z27
	xdnua4wW99b8Z7V41fyIzeLWxPlsDmweO2fdZffYM/Ekm8fiPS+ZPDZ9msTu0T37H4tH646/
	7AFsUTk2GamJKalFCql5yfkpmXnptkrewfHO8aZmBoa6hpYW5koKeYm5qbZKLj4Bum6ZOUB3
	KCmUJeaUAoUCEouLlfTtbIryS0tSFTLyi0tslVILUnIKDA0K9IoTc4tL89L1kvNzrQwNDIxM
	gSoTcjJObT7IVtCoVPH8p3cD4w2ZLkZODgkBE4klp8+wdzFycQgJ7GCUOPp+OQuE84lRYtbd
	dYwgVUICnxkluh4ownT0v++FKtrFKLHv9Two5yWjxLvnJ9lBqtgEdCX+/dnPBmKLCARKfDy6
	iQmkiFlgJaPE62XNrCAJTgEjiXM9r5lAbGGBrYwSF9cEgtgsAqoSl68+BhvEK2ApcXntemYI
	W1Di5MwnLCA2s4C8xPa3c5ghTlKQ+Pl0GSvEMiuJfUdnMUPUiEjM7myDqpnJIfF0slgXIweQ
	7SLx+rAnRFhY4tXxLewQtpTE53d72SBKqiU+7ofq7GCUePHdFsI2lri5fgMrSAmzgKbE+l36
	EGFFiZ2/5zJCLOWTePe1hxViCq9ER5sQRImqRN+lw0wQtrREV/sH9gmMSrOQvDULyVuzkJw/
	C2HZAkaWVYxiqQXFuempxYYFxsgxvYkRnEC1zHcwTnv7Qe8QIxMH4yFGCQ5mJRFe4QOJCUK8
	KYmVValF+fFFpTmpxYcYTYEBPZFZSjQ5H5jC80riDU2NjI2NLUzMzM1MjZXEeZMMHsQLCaQn
	lqRmp6YWpBbB9DFxcEo1MB1xzi67o7N596HDTVNeme/Ivyl8tybaXXvLH9vce7ON7Tg/XPFo
	mNPy3vLAv1WVKxU0m5w4pr+dwJVxYMmlxW7tLYGCcoq5DOce2kltnmy24I6g9jG2J7mFQt53
	M10Kg3cFGf3aUPTGZrFgRbGgyzSDDE2r0D9Pv59YdWBi8V/j0HfLA+aZHJ/04+330ErelPn2
	jslhAhxJj46cZLZfEfJs/4VpzDLifAuve5YWvTpzdcvFIvkAmctqCmo3meomTzPIufrAt+zU
	Bve6m/sW3Q/PaZkklXmm5KzdtV05/R2P/toXv94RN8nm2DI5ua9mt43Yfrx4n51zw/LaI7lZ
	Btuea+3tdXvw5przq5i3n84qsRRnJBpqMRcVJwIAWOZhvykEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpmkeLIzCtJLcpLzFFi42LZdlhJTjc6KynBoHWOpsWDN7PZLK7df89u
	cbb7GqPFvTX/WS1eNT9is7g1cT6bA5vHzll32T32TDzJ5rF4z0smj02fJrF7dM/+x+LRuuMv
	ewBbFJdNSmpOZllqkb5dAlfGqc0H2QoalSqe//RuYLwh08XIySEhYCLR/76XpYuRi0NIYAej
	xLn9R5ghEtISx06cAbI5gGxhicOHiyFqnjNK/JnRDlbDJqAr8e/PfjYQW0QgUOLi7rXsIEXM
	AqsZJfruP2KG6GhmlHh5eRpYB6eAkcS5ntdMIAlhgY2MEktu/2EESbAIqEpcvvqYHcTmFbCU
	uLx2PTOELShxcuYTFpAzmAX0JNo2gpUzC8hLbH87B+pSBYmfT5exQlxhJbHv6CxmiBoRidmd
	bcwTGIVnIZk0C2HSLCSTZiHpWMDIsopRMrWgODc9t9iwwCgvtVyvODG3uDQvXS85P3cTIzie
	tLR2MO5Z9UHvECMTB+MhRgkOZiURXuEDiQlCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeS90nYwX
	EkhPLEnNTk0tSC2CyTJxcEo1MG2VtdRaKHrK9nP+TDPRT+I7OPx3z8nPaXDQ/2Flcj7M5XZx
	W7tDrtAqNjvhlAcHUtdVHj+k9zhjj7v+PI6yZLVzQkoWh3+cSN1fNNH/mX58xt8n6c6v982d
	nTdj1Q3z7tuCRwz+Lev63b/G6fp+kVm3Xi/aFsp7VbmRb3F+HqMh36mL3kEBi6pnbLrvp7z0
	jh7/wgqpNXVhPpbJa9gOX5/dsuzhZJuqS1vKT5nxrNXRtPrpdeDL7W3+TRySvR9Of5aMvSHA
	rxVlMKvp2QXGJqEFC9jYnrQb7ZnI8v6qkFN12bnY79P+HWH4+jyWm72xSEeQJazF98BkV0cB
	//opLc5zM87HL/rPFLrDdvX670osxRmJhlrMRcWJAOu81tYWAwAA
X-CMS-MailID: 20210330000131epcas1p382112fc4caa16e5c484ff172ab846d01
X-Msg-Generator: CA
Content-Type: text/plain; charset="UTF-8"
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210329122146epcas1p247c9b82896f35a3206ec46c2a128577a
References: <CGME20210329122146epcas1p247c9b82896f35a3206ec46c2a128577a@epcas1p2.samsung.com>
	<202103292024.H6EkiwQx-lkp@intel.com>
X-Original-Sender: namjae.jeon@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=Lc9aFCOe;       spf=pass
 (google.com: domain of namjae.jeon@samsung.com designates 203.254.224.34 as
 permitted sender) smtp.mailfrom=namjae.jeon@samsung.com;       dmarc=pass
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

> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   9d49ed9ca93b8c564033c1d6808017bc9052b5db
> commit: 2d44673005eab9b51d7851724c63f8bcb060202b [4948/8469] cifsd: fix incorrect comments
> config: powerpc-randconfig-r023-20210329 (attached as .config)
> compiler: clang version 13.0.0 (https://protect2.fireeye.com/v1/url?k=cfc3a3af-90589b52-cfc228e0-
> 000babff317b-12d18b655f894d9b&q=1&e=d28116fb-666b-461f-8615-
> 4fdc6017188a&u=https%3A%2F%2Fgithub.com%2Fllvm%2Fllvm-project 2a28d1d3b7bf2062288b46af34e33ccc543a99fa)
> reproduce (this is a W=1 build):
>         wget https://protect2.fireeye.com/v1/url?k=30d373d6-6f484b2b-30d2f899-000babff317b-
> 9937228f3c05747f&q=1&e=d28116fb-666b-461f-8615-
> 4fdc6017188a&u=https%3A%2F%2Fraw.githubusercontent.com%2Fintel%2Flkp-
> tests%2Fmaster%2Fsbin%2Fmake.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-
> next.git/commit/?id=2d44673005eab9b51d7851724c63f8bcb060202b
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout 2d44673005eab9b51d7851724c63f8bcb060202b
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> fs/cifsd/oplock.c:1454: warning: expecting prototype for
> >> create_durable_rsp__buf(). Prototype was for create_durable_rsp_buf()
> >> instead
Thanks for report!
Will fix it.
> 
> 
> vim +1454 fs/cifsd/oplock.c
> 
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1448 788b6f45c1d2ee Namjae Jeon  2021-03-16  1449  /**
> 2d44673005eab9 Hyunchul Lee 2021-03-21  1450   * create_durable_rsp__buf() - create durable handle
> context
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1451   * @cc:	buffer to create durable context response
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1452   */
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1453  void create_durable_rsp_buf(char *cc) 788b6f45c1d2ee
> Namjae Jeon  2021-03-16 @1454  {
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1455  	struct create_durable_rsp *buf;
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1456
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1457  	buf = (struct create_durable_rsp *)cc;
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1458  	memset(buf, 0, sizeof(struct create_durable_rsp));
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1459  	buf->ccontext.DataOffset = cpu_to_le16(offsetof
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1460  			(struct create_durable_rsp, Data));
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1461  	buf->ccontext.DataLength = cpu_to_le32(8);
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1462  	buf->ccontext.NameOffset = cpu_to_le16(offsetof
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1463  			(struct create_durable_rsp, Name));
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1464  	buf->ccontext.NameLength = cpu_to_le16(4);
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1465  	/* SMB2_CREATE_DURABLE_HANDLE_RESPONSE is "DHnQ" */
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1466  	buf->Name[0] = 'D';
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1467  	buf->Name[1] = 'H';
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1468  	buf->Name[2] = 'n';
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1469  	buf->Name[3] = 'Q';
> 788b6f45c1d2ee Namjae Jeon  2021-03-16  1470  } 788b6f45c1d2ee Namjae Jeon  2021-03-16  1471
> 
> :::::: The code at line 1454 was first introduced by commit
> :::::: 788b6f45c1d2eef909c296d775196bc6ec7dd63a cifsd: add server-side procedures for SMB3
> 
> :::::: TO: Namjae Jeon <namjae.jeon@samsung.com>
> :::::: CC: Namjae Jeon <namjae.jeon@samsung.com>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation https://protect2.fireeye.com/v1/url?k=19998504-
> 4602bdf9-19980e4b-000babff317b-66f0fe65bf138534&q=1&e=d28116fb-666b-461f-8615-
> 4fdc6017188a&u=https%3A%2F%2Flists.01.org%2Fhyperkitty%2Flist%2Fkbuild-all%40lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/036801d724f7%24d7414520%2485c3cf60%24%40samsung.com.
