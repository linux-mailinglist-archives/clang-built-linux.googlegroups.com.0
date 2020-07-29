Return-Path: <clang-built-linux+bncBAABBY75QX4QKGQEIBZ24KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F46231F98
	for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 15:51:33 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id x186sf17350775pfd.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 29 Jul 2020 06:51:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596030692; cv=pass;
        d=google.com; s=arc-20160816;
        b=gx6mEPqmvF0OUQVMooaK4SMbYm/mu2+baaE/fpzoMHw+hxqwE+KjiW6T5U7+vw8nFs
         4HXdwt1FhWrtCbcTX+79hfsomwEEtN1pk8t827P8rSAiM4hvtb4Z80A6gJy7NMmN/yHr
         8vqlBueWmR+9COkTXbANga1AQpG7Bgmh/qAxXcBKtE/2qkbJbPkSggsDqsXFA5kZ8cB1
         bEEEczAfiyZS5DhX9QSJ5vIY//bvDss6KWHLnA7whLm21U5/m2o8P5AKsx/0EmwA8oa6
         V249OHP/u9SBdViQ9pWMXvWP96/kvjToVHfeRmA5Wl5g9j2MnVXvWRLtwQGYHqs0iZ6y
         O0JA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sCOT1gvZh9F4eIvSiasFfsuQstWihjVgW+SCdHRGags=;
        b=lHtfieTgEpgkAVLV01lIvwkGg+4c/nzOHxViwqOHCuOkVkEgXvY0hoHkHXN990ZYcQ
         ImtyRE/HTBRg+IpWFUZUF5oBlTUBwsHbj1vdoll0R1uLg8fi/dwKM0ByanQ5/XDKLU/Q
         Nj84t4BpURngsIi41gp9TPFxjrU+UwRxO0B7SonVGqBnT0u3kEGmWjG0WeXNg9ArPR9k
         BUwoy8IE1xo31kmzB+v8c48YbA9qoWFsah8FUQCpqmlTlsI3biwt4lS1eV/iA6zOhKVW
         icv60Xzw/xZiHHtJCoebZLZ7pI3PCqQTJ5cOUFDuWpkPN7R38PX60XzpHn72jqBJuDS7
         5u5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sCOT1gvZh9F4eIvSiasFfsuQstWihjVgW+SCdHRGags=;
        b=XxWvMO4G7D7CR0yQWjnZ3VCvDxxVJ5ABCUlDYn8m+4cToDLAERlrMh0cZz8UNenjPV
         mYBE1UHOTW1cvOh9r8qgbEML/Peib2xTIl2vAB4tklz0t8b5qliM5y7OvzC0Yezk1IpU
         +J+VT0k+7pwHDM3MwQjl7kM6Ch+7MSWu/5T2R+20IzIJpH+uxo/K3aOtudQyb7bBV6ut
         LyvpIHqdtx59YLLWFYvXhvsbAQabLi1CBRNxaUkVexjwsGd7kbBX4fzeVCYN2OERejXn
         ftNT0vph3bFp5vwgB18hk7zksw40MYZFKsUlLQOxqisDivddCMwSld/9EA717+chbaSs
         oP4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sCOT1gvZh9F4eIvSiasFfsuQstWihjVgW+SCdHRGags=;
        b=o5AziYGP716SryVriI1ffUzmPIukLWwNiewlqtf/122kXmSGmwWeBKZHywPhoT/E3D
         Qt5cW4g9xH48rbGYdcER+i1bA8jkl0c5u7UHSJ3a8QN/NbgMXTwJ49XCluikLqyEG3WA
         bdfYvpWvpazVC5xSD/eWry3pSSDgdpOKSHQv56IcI/3mrKKnaDrxmKXPOwE0g4RQO4ut
         DTtygbu4xgnEumZvBtBSm4WRIzqVe2AZvZTbIOI36M0eJFHkiXE/Wrv+I3+q1m1EzmkZ
         CbGxF1escPcsthNO2V7YvtYe0c6C4/aA0NIey3YA9QqX9+llBUnaMkfglpO1LsUUyZ8G
         tgnw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531UdMldbMtw26FIjhi9BtDqPIiUtTBQ+eeYKXxOOao7VxzXShii
	dwLeN/JtnPylp7j0tH3tiMw=
X-Google-Smtp-Source: ABdhPJyOIn++GdR/XulGc8gABwTyM+rxbT3KrOeygZIy2wf+BwFnpIvtHgsFzXcvK1rDxgSZxS/p8Q==
X-Received: by 2002:a05:6a00:789:: with SMTP id g9mr7621647pfu.65.1596030691683;
        Wed, 29 Jul 2020 06:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:ea02:: with SMTP id t2ls792444pfh.6.gmail; Wed, 29 Jul
 2020 06:51:31 -0700 (PDT)
X-Received: by 2002:a63:5b55:: with SMTP id l21mr30291212pgm.348.1596030691319;
        Wed, 29 Jul 2020 06:51:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596030691; cv=none;
        d=google.com; s=arc-20160816;
        b=Y/maRh4uaQc31VJYDaiF5q56nnC3nEKveL0bnVTKmblqwzJ8bkGOdmGWivv3MI0P9R
         ThgGxWSFXpgbicHOXc2icRxZKurNUKMJR/qICZWAzEgj4wvtAE/BHB2qXtVcBbooL50o
         2K669b8t5DE3dDFAyjfoDGyzvF8qWBxxSbrrBfIzvmApiAAWgHuMIKIv16BOcLmg0aCy
         cujK7WLnr/3tP++kKngoua4emQ520AdRlieKpWIKGACBMahMiQdycK1dDMNCHqdNzZJK
         TRCMgQ02PsGGHSXcRhCbRJWbZf24mL2kDT34/k8qFn4/qzWG06q5l8rBs7gvjGK2nTpN
         QA+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=KbyunJT9s964IHVkXU2MX4kbNZxE6KoP7A4QN97aEi8=;
        b=Ux5T7iuutCqmSnirc1j4/UMPA8MLqko860SwXf2rohka6TRVf8k5JtHiFWZmLNend1
         jgh7xa3MDcM7L4SWtkpwnWY8JJ7HQn8AFZiWdyDhVfKuYBODgj8z4Gj1ioC69vP/5e26
         2ImFqWEGJC6Rle0HyCE2e8YDYwxjLHz19FRsoWFDBy3ZcRXEE8tNM5+/aD0zPPHsAJGj
         W0aJOyzr3N3rxvx379o//IkzZBzYNtAM42RT9XGzUJYMrIJrQZ4z6eYsj1+ZzRsA9+fW
         1PjeJrCe/b/hnDvnagSg/WXEFn/RyjCx6FfCH1C6B8puVEnVrUF+cuB0mJObo1GG33kj
         b7ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id lw11si41139pjb.1.2020.07.29.06.51.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Jul 2020 06:51:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 06TDWsVU119229;
	Wed, 29 Jul 2020 09:51:30 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 32jpwdq5ej-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Jul 2020 09:51:30 -0400
Received: from m0127361.ppops.net (m0127361.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 06TDXBaj119834;
	Wed, 29 Jul 2020 09:51:28 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 32jpwdq5dk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Jul 2020 09:51:28 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 06TDjqDQ027428;
	Wed, 29 Jul 2020 13:51:27 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 32gcpx553j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 29 Jul 2020 13:51:26 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 06TDnwVX61473274
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 29 Jul 2020 13:49:59 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1BE834C052;
	Wed, 29 Jul 2020 13:51:24 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id B8B2A4C044;
	Wed, 29 Jul 2020 13:51:23 +0000 (GMT)
Received: from localhost (unknown [9.145.151.1])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Wed, 29 Jul 2020 13:51:23 +0000 (GMT)
Date: Wed, 29 Jul 2020 15:51:22 +0200
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Heiko Carstens <hca@linux.ibm.com>,
        linux-s390 <linux-s390@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: linux plumbers + clang + s390 virtualized testing
Message-ID: <your-ad-here.call-01596030682-ext-1369@work.hours>
References: <CAKwvOdn-2E=v_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA@mail.gmail.com>
 <20200716112840.GC8484@osiris>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200716112840.GC8484@osiris>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-07-29_07:2020-07-29,2020-07-29 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=912 mlxscore=0 bulkscore=0 impostorscore=0 spamscore=0
 adultscore=0 suspectscore=1 clxscore=1011 phishscore=0 lowpriorityscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007290091
X-Original-Sender: gor@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as
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

On Thu, Jul 16, 2020 at 01:28:40PM +0200, Heiko Carstens wrote:
> Hi Nick,
> 
> > We were very excited to see your patches going by for enabling Clang
> > support for s390.  Since then, we've added s390 builds to our
> > continuous integration setup.
> > 
> > We've been running into a few issues with doing virtualized boot tests
> > of our kernels on s390.
> > 
> > I was curious if you'll both be attending Linux plumbers conf?  If we
> > carve out time for an s390+clang talk, would this be of interest to
> > you to attend?
> 
> I will not attend, however cannot speak for Vasily. He will have to
> answer as soon as he returns - besides that enabling Clang support for
> s390 was done by Vasily anyway :)

I will attend and it would surely be interesting to me and other
s390 folks. Your efforts are greatly appreciated!

BTW I believe basic Clang support for s390 came earlier in 5.2 with
a lot of efforts from Arnd Bergmann.

My part was fixing recent breakages and bugging our s390 clang team
(which did all the great work) to get kernel specific features support
in clang 10 and 11 to reach features parity with gcc. And eventually
doing few adjustments so that features which came with clang 10 and
11 are working smoothly. That is s390 "asm goto" support and specific
compiler flags for ftrace support and stack packing.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01596030682-ext-1369%40work.hours.
