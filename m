Return-Path: <clang-built-linux+bncBDU23LFS7MERBNPGYT6AKGQEPP6BBZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 560032958FE
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 09:22:30 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id c4sf482112qtx.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 00:22:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603351349; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tz59+CU3PiUDloZvvgU5tdK5P66fazKytqdjWPFbj/mXIdoAFPE9wzoMkAppWnOKjt
         3Ma2k95Xt/azINIX4fR2WizuwnEMTkkQc3peqss/nYfpEbwUQWliPddzAvRTKVbdwl/m
         3NvuqB4AyEKCKigaZutCs+xJFDGHVyO6C5rdMkDoTD5KH2KJ7LFTpyzjXhb8GXc5l4vK
         dPx9eYafw+WqeulE8QhfXhXrFgp/MgafDFHTYckdixYUit7PWyBkD/fq46f4V2WKUoTw
         4rO1ylB2DXgQWzntsVfZx/F5ZjkRwh/43VQwAPoVIwLiHe5OvXQ+QpXUuYD0HU34Enyw
         PcJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:dlp-filter:cms-type
         :content-language:thread-index:mime-version:message-id:date:subject
         :cc:to:from:dkim-filter:sender:dkim-signature;
        bh=1+Bff6YeIgMHGqkwElTgZ7D6BBLZr5NUSlEZPJHQ3vM=;
        b=bsaM0iCb/TpytCZOUR8dQw4hD+9kf2UbytPwrVnl+V5dMEY5KU/CjbgctV+7XtAflx
         SYffF/lzrkfczDTesMPLB98Tl2injNU4O41MFmR+Kr1SJ/oOomCQaxsmrNf1lpRTAQD+
         HKSZk/qP1/nFR/Q83DvFK7c1OQffxWa0njcUIVKiB7K49KUKn+TQlIKRH4Dp4OfVm67o
         cu425UM5WNDsHEgvKwtU2ZDSBlFPZcsYOrh3sxsN3AHP+frV2KQmTgrtSgvScjELZ+uK
         xmoySGOuS5Qh0YZPLi5azM4g59VI8N/iLtusTUIEa/gP81BvM/3ulBfRuU6Y5sv1+pvl
         5WKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=kz6tuTfp;
       spf=pass (google.com: domain of jhs2.lee@samsung.com designates 203.254.224.24 as permitted sender) smtp.mailfrom=jhs2.lee@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:from:to:cc:subject:date:message-id:mime-version
         :thread-index:content-language:cms-type:dlp-filter:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1+Bff6YeIgMHGqkwElTgZ7D6BBLZr5NUSlEZPJHQ3vM=;
        b=XxI/9MEwfc9M6HQKj7PIt/fyx6Ap0TqviVv8YlI+m6pN9ktGkbcs/OtbpiP7RTnZYf
         LqAS2gEOLRoVLaADxDW2TBepparCQcquhr1MH4E25+ne6naPI0O8U6uArLqXNsV3BgWA
         3cGD6WumrktrgX99kG7Qsaf+MNvZp/0mFbHWJUIMhzlYztHJWI2JHdLFSXnsjNg5xBC+
         uV68wZv3Rf2yCxx8tY32G/sOqSD/fKG8CW3aMgA3xlrTccOROf4vsPmuwlrJlvRZnD4H
         9j5AE9hYi0I2DfLiIym4rPaB0WM2+l2ccAOQXu63UugWhw5vwD0VZcajHXCxxAlO+cQV
         43zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:from:to:cc:subject:date
         :message-id:mime-version:thread-index:content-language:cms-type
         :dlp-filter:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1+Bff6YeIgMHGqkwElTgZ7D6BBLZr5NUSlEZPJHQ3vM=;
        b=FApw132koZSOIPzhdkG1ZKQzghI34864qaSz/bS8qeal3i1EkqqxpgO7hyi4M4ZiMT
         7mGKxUs+ZyyVg630jYzfB1+cnXz16Jua9TGNZ3/97CCFmIgoeQ1E9t2mYx9B5tl35TKm
         LKEbnUt9KzJWiVNzI5EO0JIvHnt5sbq38X5xrrwMoWe5IoXHMOTK7Epac9fYLakxKe/p
         NLBwKLUCdSjag3ODJIHpLf89FaOL/1Z4u37hEaiT0BxTGbCH4kL0VBkLcEh1A5JOndjP
         eQjZn5m+pNfaNs7DdbsW5syquwUHt1VwmsZaep7fCGYe/eTNrRHlL7jPM7hItWjT+BHZ
         t0rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5305W3b2uBZkojiWq6fvjwlEc+ipvWIV9h8JuDIiZjGOE88132jH
	OrFZKKREWi9h9pY6mmoQ508=
X-Google-Smtp-Source: ABdhPJw8lV3us3mccAY7W9je+w1j13cLY2ulw3oNS3rWeW8Ene+SWWrlc7ue/x7jqKF4OamJp9r/aQ==
X-Received: by 2002:aed:29e3:: with SMTP id o90mr748135qtd.90.1603351349156;
        Thu, 22 Oct 2020 00:22:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:baaa:: with SMTP id x42ls249641qvf.9.gmail; Thu, 22 Oct
 2020 00:22:28 -0700 (PDT)
X-Received: by 2002:a05:6214:122a:: with SMTP id p10mr1187171qvv.0.1603351348552;
        Thu, 22 Oct 2020 00:22:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603351348; cv=none;
        d=google.com; s=arc-20160816;
        b=ovyWDok1ZBn3XCpSJdUhH59fOpGUxOWOthWoYCVeRdurQj3se66gbcWpgUQ16xiUft
         mOea53L+EKD1U1vqAdJEeoXcUul3UFgDcPlQRWtQguLHnf3DnV3fKtA5k7tNhDTpLRb7
         k7fUIG7sZdriKsNMV/W+3vMNouljk9epFc1I40TLWVD/rX4Omu4P5bDkJMVO4oirwMUu
         8WSdCupqFD3HHyGe0UbMWwHyqeZGoCVggAbambnO03a2Vt/moLk/ryJ2TadZLk2U2BlM
         hmqyOTWetoTDWlIHGHjdsiOTNKcUxCMAc2qsqTPZhTogVXaEZf481522mhzGiMazprHM
         UezA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:dlp-filter:cms-type:content-language:thread-index
         :mime-version:message-id:date:subject:cc:to:from:dkim-signature
         :dkim-filter;
        bh=xzoGgqu074OIW8Wu6vI2g3F+FdN5ztPxtAq3Lf9qZ1s=;
        b=NoDOI7pFFMg5ZIHBrpHlbny+8sKDQTCBZYTaWLxYdNVUFnzl5snuSWLqOdi4DWAurw
         SZIItImO3/4t7Z9AacImLCEgJeENC9/FaLw83UswqfCYNZ4k3Dyej4wckP4mPt1SgZ7f
         AHm52iUpW9h5W8B2awAPw8jbkcpj5ITHNh7EkeL9O64nd5ApAsq3i9zFePtSkXaTYI16
         HnoGpfLVnHdZ8OEpS/SzPco75kf53XT/apiC5D/fhnecv/l+bs6bCt0ck1AzQ4UMN/QC
         R52IRQW5wLwtJ08tyjqqMhKvBu+JidsqqHgaKV/V9hkC8BOzIKDSYQgYb4RhWxhUWa3q
         NTUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@samsung.com header.s=mail20170921 header.b=kz6tuTfp;
       spf=pass (google.com: domain of jhs2.lee@samsung.com designates 203.254.224.24 as permitted sender) smtp.mailfrom=jhs2.lee@samsung.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=samsung.com
Received: from mailout1.samsung.com (mailout1.samsung.com. [203.254.224.24])
        by gmr-mx.google.com with ESMTPS id h18si56506qkg.3.2020.10.22.00.22.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2020 00:22:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of jhs2.lee@samsung.com designates 203.254.224.24 as permitted sender) client-ip=203.254.224.24;
Received: from epcas1p2.samsung.com (unknown [182.195.41.46])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20201022072224epoutp0199e6d649a2368f40985f7833daf24b71~AP42gN0Oz1141311413epoutp01h
	for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 07:22:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20201022072224epoutp0199e6d649a2368f40985f7833daf24b71~AP42gN0Oz1141311413epoutp01h
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas1p2.samsung.com (KnoxPortal) with ESMTP id
	20201022072223epcas1p22e74038c714c03aa328dd9bcf14b4c3c~AP41dHq6F1415314153epcas1p2u;
	Thu, 22 Oct 2020 07:22:23 +0000 (GMT)
Received: from epsmges1p3.samsung.com (unknown [182.195.40.164]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4CGzMf5Q1czMqYkn; Thu, 22 Oct
	2020 07:22:22 +0000 (GMT)
Received: from epcas1p4.samsung.com ( [182.195.41.48]) by
	epsmges1p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	A8.8F.09582.E23319F5; Thu, 22 Oct 2020 16:22:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20201022072222epcas1p252967ec49294985d09ea651f7960e4b3~AP4z-B9Jy1415314153epcas1p2l;
	Thu, 22 Oct 2020 07:22:22 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20201022072222epsmtrp181eb643e7fa8def42990f7d04bba8fc2~AP4z9fmEp2450624506epsmtrp1G;
	Thu, 22 Oct 2020 07:22:22 +0000 (GMT)
X-AuditID: b6c32a37-899ff7000000256e-7b-5f91332e3dda
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	FA.E6.08745.D23319F5; Thu, 22 Oct 2020 16:22:21 +0900 (KST)
Received: from jhs2lee03 (unknown [10.253.102.101]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20201022072221epsmtip2cb494cb1667ac676a8d2a57694d3199c~AP4zoLp_M0175101751epsmtip2Z;
	Thu, 22 Oct 2020 07:22:21 +0000 (GMT)
From: =?ks_c_5601-1987?B?wMzBpMf2?= <jhs2.lee@samsung.com>
To: <jhs2.lee@samsung.com>, <oberpar@linux.ibm.com>,
	<natechancellor@gmail.com>, <ndesaulniers@google.com>
Cc: <linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>,
	<mcneo.kang@samsung.com>, <cmlaika.kim@samsung.com>
Subject: There is a kernel panic with CONFIG_GCOV_KERNEL
Date: Thu, 22 Oct 2020 16:22:21 +0900
Message-ID: <00c301d6a844$150aa530$3f1fef90$@samsung.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00C4_01D6A88F.84F692F0"
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdaoQxRnYt7qxMV5SnuG8/IrQyw0Pw==
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCJsWRmVeSWpSXmKPExsWy7bCmga6e8cR4gyc/1CwevJnNZrFy3jk2
	i0v377BaXN41h82iqzHe4sPbEosPE/4zWZy6c5fRgcNj56y77B4LNpV67Jl4ks1jwqIDjB59
	W1YxenzeJBfAFpVjk5GamJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIT
	oOuWmQN0jZJCWWJOKVAoILG4WEnfzqYov7QkVSEjv7jEVim1ICWnwNCgQK84Mbe4NC9dLzk/
	18rQwMDIFKgyISdjztEXjAVbWpgq2rc5NDDO+8PYxcjJISFgInFjTTt7FyMXh5DADkaJK3cv
	s0A4nxglXq98C+V8ZpRY/nYmO0zLuRNv2SASuxglLk+8AOW8YJTYfHo+K0gVm4CVxIsPd5lA
	bBGBHIkFk+4wg9jMAvUSH1Z1gMWFBSwkFvRPBouzCKhKfPn5DWgdBwevgKXE81+cIGFeAUGJ
	kzOfsEC0Rks8/biAGeIIBYndn46yQozXk9g89TzUeBGJ2Z1tzCD3SAjM5JBo33eGFWSmhICL
	xO9ODYheYYlXx7dAPSMl8bK/Dcoul3g19S+UXSNx9P0SZohWe4n3lywgwooSO3/PZYRYxSfx
	7msP1HReiY42IYgSJYkV/66xQNgSEhsOd7NB2B4S/27+B2sVEoiVePZ3JvsERoVZSJ6cheTJ
	WUiegbCNJJasns8EYWtLLFv4GiqeJdF16DA7hG0oMXPXSixqxCX2X4GZoygxpfshVL26xKk9
	S5gXMHKvYhRLLSjOTU8tNiwwRk5BmxjByV/LfAfjtLcf9A4xMnEwHmKU4GBWEuHdrT4xXog3
	JbGyKrUoP76oNCe1+BCjKTAqJzJLiSbnA/NPXkm8oamRsbGxhYmZuZmpsZI47x/tjnghgfTE
	ktTs1NSC1CKYPiYOTqkGJvtYezb+Gy42PsGzFynN2BC8zE7BZKbw3skqPYc0OJbtZXp54xHf
	u07V0jezAm5zSLLnHPqsf08g93FmjfOedWeb3U9v3+fVrb9kq9u66/c2st4SmXT/f2PPDUH/
	VJdIG1bNGVNe1Kje2120cN3N+rxHu6zvN2+Yqu+lJBR+8Ug8S3NVU0mJcd28czXepseVfwr7
	nNr9qr3vhJGbwWvDxSJvsg8eLT/av+T4wqamnvdH7RVc+Q/MuVEYssXE9pvOdlmtravazr6u
	mbZVJPOp8ufw52eyk1edfiIc8/x96eHaxdtn2xxtyLA/76/tOuWDneKvQO7dGXWHT30qVQ5d
	xejbKh5i9lStKzD2wcrFp5VYijMSDbWYi4oTAdvQFFyHBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42LZdlhJXlfXeGK8wbUJ1hYP3sxms1g57xyb
	xaX7d1gtLu+aw2bR1Rhv8eFticWHCf+ZLE7ducvowOGxc9Zddo8Fm0o99kw8yeYxYdEBRo++
	LasYPT5vkgtgi+KySUnNySxLLdK3S+DKWD67qmBLdMW+fzkNjDMCuhg5OSQETCTOnXjL1sXI
	xSEksINR4s/iU6wQCQmJDZvWsncxcgDZwhKHDxdD1DxjlGjY9Beshk3ASuLFh7tMIDUiAgUS
	LZdUQWqYBZoZJZZM3MYOUiMsYCGxoH8yM4jNIqAq8eXnNxaQel4BS4nnvzhBwrwCghInZz5h
	AbGZBaIlnn5cwAxxgoLE7k9HwVaJCOhJbJ56nhmiRkRidmcb8wRGgVlI2mchaZ+FpAzCNpFo
	PNwNVaMtsWzha6i4scSFpgZGZPEFjOyrGCVTC4pz03OLDQuM8lLL9YoTc4tL89L1kvNzNzGC
	o0pLawfjnlUf9A4xMnEwHmKU4GBWEuHdrT4xXog3JbGyKrUoP76oNCe1+BCjNAeLkjjv11kL
	44QE0hNLUrNTUwtSi2CyTBycUg1MgVFet1m11mfKd4md+5C9/81e9pWCmrN3CtQWHn65h802
	KzT/SJDABKUvWkEnS/lXNaWzi/Kvkb/GWv/x//zAsNfTz95m+j4rx569Iod75oukdj6ZXRrs
	lS16rydtfNN3YuKuRwX5TRevcUsxM5c5ru6fmlDB9dGoWtw7ydaJvaV65qEiEQWJbUdkz8w2
	e/32x5G/AfLCSZk3WrTMzsqfWW88Z/ImvRxL9wbTw32zOeXnH6h7IuIeLSbPZyZ+53zI8nel
	/Selz99632DaEVvNbpZkbvDt8J7bTOGu91bxbNDze5xfd/VojXPFlI53G9V4pgaeqLm0Pl2X
	O6omS61LZuHH1rAlASUsdpus9JVYijMSDbWYi4oTAXcE8cAZAwAA
X-CMS-MailID: 20201022072222epcas1p252967ec49294985d09ea651f7960e4b3
X-Msg-Generator: CA
X-Sendblock-Type: SVC_REQ_APPROVE
CMS-TYPE: 101P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20201022072222epcas1p252967ec49294985d09ea651f7960e4b3
References: <CGME20201022072222epcas1p252967ec49294985d09ea651f7960e4b3@epcas1p2.samsung.com>
X-Original-Sender: jhs2.lee@samsung.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@samsung.com header.s=mail20170921 header.b=kz6tuTfp;       spf=pass
 (google.com: domain of jhs2.lee@samsung.com designates 203.254.224.24 as
 permitted sender) smtp.mailfrom=jhs2.lee@samsung.com;       dmarc=pass
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

This is a multipart message in MIME format.

------=_NextPart_000_00C4_01D6A88F.84F692F0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Dear. GCOV maintainers

=20

I'm JeongHyeon Lee, charge of security features(CFI, something else) in
Samsung.

=20

When I tried to enable GCOV feature in kernel using this kernel
config(CONFIG_GCOV_KERNEL),=20

I met a problem about CFI(Control Flow Integrity) feature.

like this:

----------------------------------

<4>[ 1.379424] [0: swapper/0: 1] CFI failure (target:
__llvm_gcov_writeout+0x0/0x7c):

<4>[ 1.379462] [0: swapper/0: 1] WARNING: CPU: 0 PID: 1 at kernel/cfi.c:29
__cfi_check_fail+0x4c/0x54

----------------------------------

=20

I was try to find root cause, but it=E2=80=99s too difficult.=20

So many new =E2=80=98__llvm~~=E2=80=99 function add when build time. I don'=
t know what
each function has.

=20

It's not easy to find out root cause of this problem on my side.

I think GCOV or LLVM isn't consider about CFI. because CFI is new feature.=
=20

Or There may be GCOV or LLVM patch that do not apply on my side.

If you know about this problem, Could you please tell me about it?=20

=20

Thank you,

JeongHyeon Lee

=20

=20

P.S) This is a call stack when a problem occurs.

We get the kernel log with "CONFIG_CFI_PERMISSIVE=3Dy"=20

=20

------------[ cut here ]------------

CFI failure (target: __llvm_gcov_writeout+0x0/0x7c):

WARNING: CPU: 0 PID: 1 at kernel/cfi.c:29 __cfi_check_fail+0x4c/0x54

Modules linked in:

CPU: 0 PID: 1 Comm: swapper/0 Tainted: G S                5.4.61-~~~~~ #1

Hardware name: ~~~~ ~~~~ (DT)

pstate: 60800005 (nZCv daif -PAN +UAO)

pc : __cfi_check_fail+0x4c/0x54

lr : __cfi_check_fail+0x4c/0x54

sp : ffffffc01005bdb0

x29: ffffffc01005bdb0 x28: 0000000000000000

x27: 0000000000000000 x26: 0000000000000000

x25: 0000000000000000 x24: 0000000000000000

x23: 0000000000000000 x22: ffffffc0103fd000

x21: 7e04a0fb7ad8bcd5 x20: ffffffc01380d630

x19: ffffffc010b1cd00 x18: ffffff8000680430

x17: 0000000000000000 x16: ffffffc0119a1014

x15: ffffffc0129b2e17 x14: 000000000000003f

x13: ffff000000000500 x12: 0000000000000001

x11: be6ce93934dbcb00 x10: be6ce93934dbcb00

x9 : be6ce93934dbcb00 x8 : be6ce93934dbcb00

x7 : 0000000000000000 x6 : ffffffc0138d0827

x5 : 0000000000000001 x4 : 000000000000000c

x3 : ffffffc01005b9c0 x2 : ffffffc0119c0454

x1 : ffffffc01052cd40 x0 : 0000000000000034

Call trace:

  __cfi_check_fail+0x4c/0x54

  __cfi_check+0x6e2ec/0x7ae50

  llvm_gcov_init+0x104/0x108

  do_basic_setup+0x44/0x7c

  kernel_init_freeable+0xe8/0x168

  kernel_init+0x18/0x2c0

  ret_from_fork+0x10/0x18

---[ end trace ba162e7bc497b725 ]---

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/00c301d6a844%24150aa530%243f1fef90%24%40samsung.com.

------=_NextPart_000_00C4_01D6A88F.84F692F0
Content-Type: multipart/related;
	boundary="----q2hlABjytB3FjdIOp2eHAFJCIp_XgROIT30sGl.6W2Oeht0G=_6a313_"

------q2hlABjytB3FjdIOp2eHAFJCIp_XgROIT30sGl.6W2Oeht0G=_6a313_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40"><head><meta http-equiv=3DContent-Type content=
=3D"text/html; charset=3Dks_c_5601-1987"><meta name=3DGenerator content=3D"=
Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"=EB=A7=91=EC=9D=80 =EA=B3=A0=EB=94=95";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:"\@=EB=A7=91=EC=9D=80 =EA=B3=A0=EB=94=95";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	text-autospace:none;
	word-break:break-hangul;
	font-size:10.0pt;
	font-family:"=EB=A7=91=EC=9D=80 =EA=B3=A0=EB=94=95";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"=EB=A7=91=EC=9D=80 =EA=B3=A0=EB=94=95";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"=EB=A7=91=EC=9D=80 =EA=B3=A0=EB=94=95";}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:3.0cm 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DKO link=3D"#0563C1" v=
link=3D"#954F72"><div class=3DWordSection1><p class=3DMsoNormal><span lang=
=3DEN-US>Hello Dear. GCOV maintainers<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><s=
pan lang=3DEN-US>I'm JeongHyeon Lee, charge of security features(CFI, somet=
hing else) in Samsung.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-U=
S>When I tried to enable GCOV feature in kernel using this kernel config(CO=
NFIG_GCOV_KERNEL), <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-US>I met a problem about CFI(Control Flow Integrity) feature.<o:p></o:p>=
</span></p><p class=3DMsoNormal><span lang=3DEN-US>like this:<o:p></o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US>---------------------------=
-------<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>&lt;4&=
gt;[ 1.379424] [0: swapper/0: 1] CFI failure (target: __llvm_gcov_writeout+=
0x0/0x7c):<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>&lt=
;4&gt;[ 1.379462] [0: swapper/0: 1] WARNING: CPU: 0 PID: 1 at kernel/cfi.c:=
29 __cfi_check_fail+0x4c/0x54<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US>----------------------------------<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=
=3DMsoNormal><span lang=3DEN-US>I was try to find root cause, but it=E2=80=
=99s too difficult. <o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>So many new =E2=80=98__llvm~~=E2=80=99 function add when build tim=
e. I don't know what each function has.<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal>=
<span lang=3DEN-US>It's not easy to find out root cause of this problem on =
my side.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>I thi=
nk GCOV or LLVM isn't consider about CFI. </span><span lang=3DEN-US>because=
 </span><span lang=3DEN-US>CFI is new feature. <o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US>Or There may be GCOV or LLVM patch that d=
o not apply on my side.<o:p></o:p></span></p><p class=3DMsoNormal><span lan=
g=3DEN-US>If you know about this problem, Could you please tell me about it=
? <o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Thank you,<o:p></o=
:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>JeongHyeon Lee<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></s=
pan></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p=
><p class=3DMsoNormal><span lang=3DEN-US>P.S) This is a call stack when a p=
roblem occurs.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US=
>We get the kernel log with &quot;CONFIG_CFI_PERMISSIVE=3Dy&quot; <o:p></o:=
p></span></p><p class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></spa=
n></p><p class=3DMsoNormal><span lang=3DEN-US> ------------[ cut here ]----=
--------<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> CFI =
failure (target: __llvm_gcov_writeout+0x0/0x7c):<o:p></o:p></span></p><p cl=
ass=3DMsoNormal><span lang=3DEN-US> WARNING: CPU: 0 PID: 1 at kernel/cfi.c:=
29 __cfi_check_fail+0x4c/0x54<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US> Modules linked in:<o:p></o:p></span></p><p class=3DMsoNorm=
al><span lang=3DEN-US> CPU: 0 PID: 1 Comm: swapper/0 Tainted: G S&nbsp; &nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;5.4.61-~~~~~ #1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US> Hardware name: ~~~~ ~~~~ (DT)<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US> pstate: 60800005 (nZCv daif -PAN +UAO)<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US> pc : __cfi_check_fail+=
0x4c/0x54<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> lr =
: __cfi_check_fail+0x4c/0x54<o:p></o:p></span></p><p class=3DMsoNormal><spa=
n lang=3DEN-US> sp : ffffffc01005bdb0<o:p></o:p></span></p><p class=3DMsoNo=
rmal><span lang=3DEN-US> x29: ffffffc01005bdb0 x28: 0000000000000000<o:p></=
o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> x27: 00000000000000=
00 x26: 0000000000000000<o:p></o:p></span></p><p class=3DMsoNormal><span la=
ng=3DEN-US> x25: 0000000000000000 x24: 0000000000000000<o:p></o:p></span></=
p><p class=3DMsoNormal><span lang=3DEN-US> x23: 0000000000000000 x22: fffff=
fc0103fd000<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> x=
21: 7e04a0fb7ad8bcd5 x20: ffffffc01380d630<o:p></o:p></span></p><p class=3D=
MsoNormal><span lang=3DEN-US> x19: ffffffc010b1cd00 x18: ffffff8000680430<o=
:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> x17: 000000000=
0000000 x16: ffffffc0119a1014<o:p></o:p></span></p><p class=3DMsoNormal><sp=
an lang=3DEN-US> x15: ffffffc0129b2e17 x14: 000000000000003f<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-US> x13: ffff000000000500 x12: =
0000000000000001<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-=
US> x11: be6ce93934dbcb00 x10: be6ce93934dbcb00<o:p></o:p></span></p><p cla=
ss=3DMsoNormal><span lang=3DEN-US> x9 : be6ce93934dbcb00 x8 : be6ce93934dbc=
b00<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US> x7 : 0000=
000000000000 x6 : ffffffc0138d0827<o:p></o:p></span></p><p class=3DMsoNorma=
l><span lang=3DEN-US> x5 : 0000000000000001 x4 : 000000000000000c<o:p></o:p=
></span></p><p class=3DMsoNormal><span lang=3DEN-US> x3 : ffffffc01005b9c0 =
x2 : ffffffc0119c0454<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US> x1 : ffffffc01052cd40 x0 : 0000000000000034<o:p></o:p></span></p>=
<p class=3DMsoNormal><span lang=3DEN-US> Call trace:<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US>&nbsp; __cfi_check_fail+0x4c/0x54<o:=
p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp; __cfi_che=
ck+0x6e2ec/0x7ae50<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DE=
N-US>&nbsp; llvm_gcov_init+0x104/0x108<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-US>&nbsp; do_basic_setup+0x44/0x7c<o:p></o:p></span><=
/p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp; kernel_init_freeable+0xe8=
/0x168<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>&nbsp; =
kernel_init+0x18/0x2c0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-US>&nbsp; ret_from_fork+0x10/0x18<o:p></o:p></span></p><p class=3DMso=
Normal><span lang=3DEN-US> ---[ end trace ba162e7bc497b725 ]---<o:p></o:p><=
/span></p></div><table id=3Dbannersignimg data-cui-lock=3D"true" namo_lock>=
<tr><td><p>&nbsp;</p>
</td></tr></table><table id=3Dconfidentialsignimg data-cui-lock=3D"true" na=
mo_lock><tr><td><p><img style=3D"border: 0px solid currentColor; border-ima=
ge: none; width: 520px; height: 144px; display: inline-block;" unselectable=
=3D"on" data-cui-image=3D"true" src=3D"cid:cafe_image_0@s-core.co.kr">&nbsp=
;</p>
</td></tr></table></body></html><table style=3D'display: none;'><tbody><tr>=
<td><img style=3D'display: none;' border=3D0 src=3D'http://ext.samsung.net/=
mail/ext/v1/external/status/update?userid=3Djhs2.lee&do=3DbWFpbElEPTIwMjAxM=
DIyMDcyMjIyZXBjYXMxcDI1Mjk2N2VjNDkyOTQ5ODVkMDllYTY1MWY3OTYwZTRiMyZyZWNpcGll=
bnRBZGRyZXNzPWNsYW5nLWJ1aWx0LWxpbnV4QGdvb2dsZWdyb3Vwcy5jb20_' width=3D0 hei=
ght=3D0></td></tr></tbody></table>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/00c301d6a844%24150aa530%243f1fef90%24%40samsun=
g.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/m=
sgid/clang-built-linux/00c301d6a844%24150aa530%243f1fef90%24%40samsung.com<=
/a>.<br />

------q2hlABjytB3FjdIOp2eHAFJCIp_XgROIT30sGl.6W2Oeht0G=_6a313_
Content-Type: image/gif
Content-Transfer-Encoding: base64
Content-ID: <cafe_image_0@s-core.co.kr>

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
fqAGBgQAOw==


------q2hlABjytB3FjdIOp2eHAFJCIp_XgROIT30sGl.6W2Oeht0G=_6a313_--

------=_NextPart_000_00C4_01D6A88F.84F692F0--

