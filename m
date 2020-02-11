Return-Path: <clang-built-linux+bncBAABBXEMRTZAKGQEPM5DVNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF98159A12
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 20:54:05 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id n71sf9357397ybf.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 11:54:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581450844; cv=pass;
        d=google.com; s=arc-20160816;
        b=tr3mqE43Rb08gKs5z3a3w9mUGoRU/r66orIE54831R5ppD7/CP+DDU1LPq3xPHGIPS
         WcLHOxnGSaZ46/drZh2Du5PQHKhWn8AI7TMbtBmTwydHsagqDiz9IwIcB8ibauk332EZ
         I8PcVA5Hqj/btCvBL7YekJsr52pQ9ZXpaQ8YuvQpsa+HlWPmcUCoobtKdlQn1uGdg0p9
         WBcAwHRUrBOrAagE6zrJ5Vn5UNmIxaZZmXbessm99KYlwvT1JfuCQDwl4BCqK+lhWW67
         vbILHIGYmxxfxQYT4pHzVQhx1ObFwB/1bUO1fWQ8W7mg8s8Sk3oprXPW/I/xbzsB+5ZA
         EXcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=Ey9SzMEO9vef/XVzjTNyq0OyM3w25jAxdF5vRvRRxoM=;
        b=PvW5ml2UDVOU4tB11tFfUWLl+NXPC9MzJAbAJd7jlro9GSv4k/oYTiuhFcb1cAL41L
         n6g8hEd6rR/efd9Hoc+dtPa/cjB6mQTvycjFVi+xkKEkLK8PBWYaFZVyiy5xPWXtM7Fo
         GR+a1a9LxZo1WMY4m7yyUqG7Q2Nj7wGqMcYKsgTQ31WJSCdyVtVj/KYblvFKyHg5TnPY
         DmfB48HIpycPGTyKxnobhBPaCfwwDuEBjYCEkH1BPXVJZ2AA9XYWMtYpUIYalv/AYV95
         XdlduYBanzUjL32lWK9dHfJkpeaJtSXTlZcMcdgMoVmOZDtWQXdOnVRLVawU5g65xv5m
         WXLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ey9SzMEO9vef/XVzjTNyq0OyM3w25jAxdF5vRvRRxoM=;
        b=VVI0v/FRqoqY7t6JykS4e7s2loaiy5xqkmBFwQwTxRmfrNc/HyyKHVJTe1s4sqz58l
         YyLnLLdzH1TfpOSX+IAHaarkvMhHFAe52uY9DdcJtDMKQK0Udw+xnbQHNLs75kx2uWGb
         EpEUvKoeRFCD5pFBBvspjElSYfofLpLp1aX7yW4ao7qjzaojzpnjjwwl9BlG/xOMe7nf
         Ki0VpR46CoDBYpBveqjPn57KlsX0KegKwEDIglBvLgqYTA9glB1M7EgkW4CYXDMPbQHL
         n7T9cQgoKZR6evgmRW/+VsF8wLv9oay6XAVjzyecE9q/gIr4Dbi1/2IsmA3MKo88spCP
         UGCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ey9SzMEO9vef/XVzjTNyq0OyM3w25jAxdF5vRvRRxoM=;
        b=NwG+6WJXnWJ9fXiV2Q7Nbi3sVqA1Rbk+wGZ/SyJBPGRbz6Ar4DWoNwUBW1aQEAQ1ki
         LY4AamFJJfH1+bWYakT+NmpMgNRhr8Og/QyMyce6qwfTe9jd3HgQV9gX1POecAiiX7Wb
         7dUbhrfKtEKrl0FRkPkVPYWTJNWHoxBIkEhnUwJJ5TCEf/utXHu5j+DTRTodxR/MT1dv
         j/ADVIIiuddC6qYokyJcMUZvNx/oHNt/YoD3qozjmnjFMHd7ieERHzW0PK4frxl2Eufp
         7xyIj67VcUbvH0/4wthkXMEzmNagHIE1UciV9MD3Nv4TolZ4ESXfVnmJB0ItYI3eSL+4
         iV2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUOPMwB4Evsk9b/cCypsoPy6BiY0uMxypvNVgksLwRB6urK0orf
	VqRdW9d4ceQyY49KZ77N5xk=
X-Google-Smtp-Source: APXvYqzKmd1Uj57yU/tSuJ+17659jtjhOVqLOJ0swiJLSq40fMFV4F0wPuCPWl+gsX0SZVYjnpoP9w==
X-Received: by 2002:a25:c64f:: with SMTP id k76mr8097735ybf.271.1581450844529;
        Tue, 11 Feb 2020 11:54:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:d883:: with SMTP id a125ls2670063ywe.0.gmail; Tue, 11
 Feb 2020 11:54:04 -0800 (PST)
X-Received: by 2002:a81:9c08:: with SMTP id m8mr7521506ywa.510.1581450844236;
        Tue, 11 Feb 2020 11:54:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581450844; cv=none;
        d=google.com; s=arc-20160816;
        b=yfKki+IWzwZvMI+NQ5xpexhSddQcb1cdmldOIjA8xhVWz6OdF8txJKAPuPeYG8zpgb
         t+U3ynx1pkvNbRVSc8WO62M1VHAxb2gRlFHOwppn3IOV4MentDKjnzJbCg4vRIUnvAg1
         ep9IG/9IY1c2k/oqZOPQWGW1YmQGn6Vwtjn9aE/lW844jHp6WETOO49vbnNWfO+efEi3
         WF1xVZeGU3AAKWSWAJ58biToMJRxJm/LJ3rGXJi34heh1spymy30LAMEYLDORtjp8k7R
         fQRwBS+gh2xGCkjIsClxfTzzpQDOlQS0PEIzep/qwmcnMMH9OZO/jue3uhyUGPEbVjlx
         h3mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=WHXIoBiNWbRHH/jYT9os9QoPvr3dVoCM+m4X8Dx6x20=;
        b=OhX8keyygJu4YdhhjxMz5jzcMks36MfasyfXCXL07yKJwZL7PZxNTUfZ84RoejX35J
         iktcT8/BzMhHcHlqC42m0cDFCYqVTMimE8hbMafMtzQhDRFbFb6fxFSZk+7t06COgF9i
         9Kzv8xBWJJfz03WUAn5gcgSizo8bdra1nbk9bjFnR495tRR/dkUyClZZQWQXIE7h1TrU
         /NLvFbLAbhxxrBdNlMp1u4aVe+SxpZumIx38GFH4hz6nDQj5vtEKIH7tHxOW8S0D480M
         E/OW5BjjviazHZ7r2wCZnV0POk1T70yJsLIhNre91I5WxmEfLl/VQRN3pi+WlAkOs7RU
         lGMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id g196si265569ybf.5.2020.02.11.11.54.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 11:54:04 -0800 (PST)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01BJnDl5059250
	for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 14:54:03 -0500
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y1tpd6v4k-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 14:54:02 -0500
Received: from localhost
	by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <gor@linux.ibm.com>;
	Tue, 11 Feb 2020 19:54:00 -0000
Received: from b06avi18878370.portsmouth.uk.ibm.com (9.149.26.194)
	by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Tue, 11 Feb 2020 19:53:57 -0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01BJruiq42664406
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 11 Feb 2020 19:53:56 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0DF08A4051;
	Tue, 11 Feb 2020 19:53:56 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 92DB8A4040;
	Tue, 11 Feb 2020 19:53:55 +0000 (GMT)
Received: from localhost (unknown [9.145.75.133])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Tue, 11 Feb 2020 19:53:55 +0000 (GMT)
Date: Tue, 11 Feb 2020 20:53:54 +0100
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Heiko Carstens <heiko.carstens@de.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390 <linux-s390@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] s390/time: Fix clk type in get_tod_clock
References: <20200208140858.47970-1-natechancellor@gmail.com>
 <your-ad-here.call-01581426728-ext-3459@work.hours>
 <CAKwvOd=CWKnrY_T8vP4a-KXkz-V57dFqk+6FC_krm=pVAVibyg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=CWKnrY_T8vP4a-KXkz-V57dFqk+6FC_krm=pVAVibyg@mail.gmail.com>
X-TM-AS-GCONF: 00
x-cbid: 20021119-4275-0000-0000-000003A03793
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021119-4276-0000-0000-000038B4700C
Message-Id: <your-ad-here.call-01581450834-ext-0583@work.hours>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-11_05:2020-02-11,2020-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 mlxlogscore=638 mlxscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002110132
X-Original-Sender: gor@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=gor@linux.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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

On Tue, Feb 11, 2020 at 05:30:24PM +0000, Nick Desaulniers wrote:
> On Tue, Feb 11, 2020 at 5:12 AM Vasily Gorbik <gor@linux.ibm.com> wrote:
> > Applied, thanks.
> 
> Hi Vasily, is this the expected tree+branch that the patch will be
> pushed to? (I'm trying to track when+where our patches land).
> https://git.kernel.org/pub/scm/linux/kernel/git/s390/linux.git/log/?h=fixes
> 
Hi Nick,
yes, this is correct. There might be some delay due to ci runs. But
this particular patch is now landed on that fixes branch.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01581450834-ext-0583%40work.hours.
