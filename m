Return-Path: <clang-built-linux+bncBAABBVVTQ3ZAKGQE4RXWWJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AA21581DC
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 18:58:48 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id s24sf606244vsn.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 Feb 2020 09:58:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581357527; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAqG/T8Nh20AypXTWHcVb2lAd7/zXN65jWCEA+Eldmj9qSKlOXQu/5evtG1pXebCZ4
         nB38FDC8rS2bb6oJzJmyq7oLBmqtR9VRw4eu050X7X8XBmDjoakEH4c5gllSATp5xNPs
         4PkYeLkojcuHQiGpUqSmMlA58lZ7k/PjFn/yB7ucOi99DbMEPBnMOnLqRGsr7cazjVxw
         DpPkDzSfzOGycWExpcdMTyUxWslUxB4g24U4II9sESJgwG3lhqpgxz2VE9quUGStgUvG
         XjAO50DoybmzOUEFtu9UiGICvAFWDAU2MOfuT4FOEfgm+89H5H2mFMUM4almZ9yvqe0s
         TWzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=IM9S6xwgoK7ilDgPYf4VbSdIQLqwTtyKvRCbgXV+UQY=;
        b=G/jvNHkKOmtFORRdWOis0gBKeJzUkzQI2Z+vwOuw/oSLtqID3oJpHAgpGJ6nPmNzfa
         ncxxdORquqhEmV17bjDmQVwCOvHnwLovSjP/m+T1rJNa478ekAoUUpwCJ4n8FbTes+jj
         CsOMIzv0s4l+PbcxLeCZrG7ByWmHNUR49DapCQcBzdEPBuoqRtJcnLWmZQcPtt1667LZ
         RpbT+hcS9eMg/y2AIRIggBcd5vw1R62jxXZRQ9Et7UIhrbcxZGL2jm047F91zrqZPbRb
         lumCby/n05BvkPSrpMvL1QFYA+1pS8D6aVn/st2ByufboDaOWoaJCKENmtTK+eAukUMp
         xzVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IM9S6xwgoK7ilDgPYf4VbSdIQLqwTtyKvRCbgXV+UQY=;
        b=XdBrRUWkLPagjyEPfr6G7PYGWmkamzGyfUH3LMGpk2vyTGKsOguWSYaUqLY+MVUdcn
         EK6YCJqkrzU4w4l0HplpPKTAfIJYtmuEXLr/SAOX8HJH14PxSvGZ2wulxQ5Ysgshy5Wp
         Upnf0JS4A/ERdjEiknRcGv9VDCxESvCEzIFj2rVqU1AzbTSOwzP3Te5KWhxZq9uj1sR1
         UnmUG8zMD3HC3KLhBVeGhr/JV8znJlk9MA7iMjiFLcookPmSO3AHzxlqBZzSOr1ZgZMc
         9i1knm/SmgsIzCzULkxVLlwvOO1HLto1VTh+SmRvTrXAd/eRcvzrWdGtoZVkalS16tIE
         KlUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=IM9S6xwgoK7ilDgPYf4VbSdIQLqwTtyKvRCbgXV+UQY=;
        b=J3stQnwI2/K219Fua9tiPN34kMdri2RQoy41CqwZeJw/T37KrBVQymyIAVjNfNZZny
         BHM0wizczNFqvnLLukRJTzsDrEERnCqSaRMH3bjjm0q43YXMS9h14agkhJQAzvbzIYAP
         f/+Cp16d0d5x+WbA++AqUwsjB6zR/Ro/XlYEB8jOOcfjIDS0Q5nVstwddC5DqxQRqsXo
         AVekfw+Zf1dd5/o84MaGUmFuCc/7bHGZpUz05+qMXoy0KhtgdVHo68hgYuZTQiQ0Ktvr
         P/MqjsJ3ioj22vNmod8h817iOfJmm0eSoPHMtr3RoezIDYQkFmbTbXgKh+Pp/XAZT61H
         SiSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/ZMFItJ/Gj+C5UVx2kwZ2HFPUHxz5f85DF1b1KlkAp9r8mDY+
	vsqKJ35Xc9mszS6hIPCA+Xs=
X-Google-Smtp-Source: APXvYqw8JIemlLk8ZE/U8Sours7RzP6DUyd4eXPWCYKSE5Gw/2A4CbTQaw0tgOyo9r8GcYU9Nr9/sA==
X-Received: by 2002:a67:ec03:: with SMTP id d3mr7310879vso.152.1581357527020;
        Mon, 10 Feb 2020 09:58:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f94a:: with SMTP id u10ls851165vsq.1.gmail; Mon, 10 Feb
 2020 09:58:46 -0800 (PST)
X-Received: by 2002:a67:ebcc:: with SMTP id y12mr7107915vso.56.1581357526477;
        Mon, 10 Feb 2020 09:58:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581357526; cv=none;
        d=google.com; s=arc-20160816;
        b=q9MnO/l3VcxxUPlZBlAKum2ilzggDSxUAjCk+/94P1nU/OFm9r0Uvg1S8IjIZRqx3N
         CBxecd1guKSw6yiR0dH5piKFa8NZD+e+Y0s7Ijc6ZMAvh0ew5viN4PJOgh0+OISac8oG
         rXrus8DXoo24IX1FpztSuf9uiu9JNsAFqpEa24Ra2zOywnY1cX3onehvsUR0iVSiQio9
         hecQivaTeaN9mO3CRy+Uz2tqwH25VCjHOFJ7zLb0m2jyKs+eaxrlZzL3YFL6Japn6k9x
         I1Q1JlO/0Vp37KWeek/M/okPVBpzBSUI9cmpMp4JYEy9UbJvuK2Sc4eMRVpNRNOGu/mh
         3iEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=zy44dHaT1w2n0d2c6dAwvykJMCHXRcfhQtn4CHCgbUM=;
        b=sc4AlEUomZgcUInTOTZ4MdRkq/KlruRyIAQvYM+Tmcsc7u08R7WE1N+933UFAbyzu7
         /OBDkad7zG4Niqo1uW9C7XZ9GXZMP2nG5LVqB8EW13goUByxe1RHpqnqLWGl9iOUrjV3
         Hcz3UvShe38dp2fBM0tfZ+Dq4tqUclW6trA43D6Q0f0qSdx5XclG5bdhA3jCxojvpao5
         eHmfZwUqVnle2dn+rO6t9rwMpT2yvGHFX3AUrdJOFtpWK7V0dHtkq5GeBZ2b6RJSynOX
         4Y/YVSsxRCAN+AmsQzQTx3bohrQekVVi4JDCEWt6awiOiyqAJkGWz2On2CFLr84kYlc5
         YPNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id h6si72276vkc.3.2020.02.10.09.58.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Feb 2020 09:58:46 -0800 (PST)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01AHsC3b050110
	for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 12:58:45 -0500
Received: from e06smtp03.uk.ibm.com (e06smtp03.uk.ibm.com [195.75.94.99])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y1ubqqfb1-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 10 Feb 2020 12:58:45 -0500
Received: from localhost
	by e06smtp03.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <gor@linux.ibm.com>;
	Mon, 10 Feb 2020 17:58:42 -0000
Received: from b06cxnps3075.portsmouth.uk.ibm.com (9.149.109.195)
	by e06smtp03.uk.ibm.com (192.168.101.133) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Mon, 10 Feb 2020 17:58:40 -0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01AHwd4514942346
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 Feb 2020 17:58:39 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 7142FAE051;
	Mon, 10 Feb 2020 17:58:39 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 216ECAE04D;
	Mon, 10 Feb 2020 17:58:39 +0000 (GMT)
Received: from localhost (unknown [9.145.76.6])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 10 Feb 2020 17:58:39 +0000 (GMT)
Date: Mon, 10 Feb 2020 18:58:37 +0100
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>,
        David Hildenbrand <david@redhat.com>
Subject: Re: LKML: Vasily Gorbik: [GIT PULL] s390 patches for the 5.6 merge
 window
References: <CAKwvOdkCtyGPeO2kNQSJ3adX6t6k46tf3Au-P06c1G3McRE2KQ@mail.gmail.com>
 <CAKwvOdm+1bMq-uZxe96HViKLzT7jRyxdS68KLyOXhMm2hM9F5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm+1bMq-uZxe96HViKLzT7jRyxdS68KLyOXhMm2hM9F5w@mail.gmail.com>
X-TM-AS-GCONF: 00
x-cbid: 20021017-0012-0000-0000-000003859303
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021017-0013-0000-0000-000021C20BB2
Message-Id: <your-ad-here.call-01581357517-ext-6250@work.hours>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-10_06:2020-02-10,2020-02-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 adultscore=0 spamscore=0 clxscore=1011
 bulkscore=0 lowpriorityscore=0 impostorscore=0 mlxlogscore=729
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002100134
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

On Fri, Feb 07, 2020 at 10:22:20PM +0000, Nick Desaulniers wrote:
> + Vasily for real
> 
> On Fri, Feb 7, 2020, 11:02 PM Nick Desaulniers <ndesaulniers@google.com>
> wrote:
> 
> > https://lkml.org/lkml/2020/1/28/1141
> >
> > Yo, what's up with clang 10 support?
I believe s390 kernel had limited clang build support since about 5.2
(with jump labels and ftrace disabled), thanks to contributions from Arnd
Bergmann. With asm goto support in clang 9 and now everything for ftrace
in place in clang 10 s390 kernel should be in a good shape feature wise
(including KASAN). At this stage clang based tooling is the main interest.

> >
> > Can I boot this in qemu?
> >
qemu tcg seems to work fine for gcc built s390 kernels. While clang built
kernels run smoothly natively and with accel=kvm there is still something
to be fixed for accel=tcg (kernel fails to boot on both s390 and x86).

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01581357517-ext-6250%40work.hours.
