Return-Path: <clang-built-linux+bncBAABBUMTVPZAKGQE3657LZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id E395416189A
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 18:13:54 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id v188sf7044752vkf.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Feb 2020 09:13:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581959634; cv=pass;
        d=google.com; s=arc-20160816;
        b=drah6EFPvKxYdRBRd+Tc59zQt3xa++wDD6gLCFTkclo7GQCwC8Y0dah0ek7SS0avzU
         qoxfemaGZE7KmQkSXGjKab9MnRW8nNdDqziq4irlmeQX0HFfgsQDihQ9CedWnjHd3EXR
         YUmZY6kpAgnaNiHiJpO1TfSbct7qIRgDHDiR9OMjIXD3yp43ERCHI7GcV+2dCKBM4CSn
         HoStP2FIhDmoLhoMUL+tEt4cv5vI0xTyBcQSBFLdnZr3SCRq2VYikXHPS4dQdlMOjGGL
         XVTAgj/+W1PwkUK5PZaDaoFVgUNkR4Zb9zhgMeHd3wOqF6XqukJAMH7wO6FQ3AWIBm90
         EzJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=vY22Q3Czj5VQ0/GdNk8chORNIWVP7cSJ2PV03yk3kWk=;
        b=QK5eEzwc2vItut94muU7Uv79/VKQGxvSIUpNBNGeNy2lKKAa93wqAwKpN7Q+hAPygE
         5f4XIrNKu5XmdpPhj8VqOfHFNjlpdh1k8RkiyxgnGeKB9whXri48PpRsmoOAV6ESGVtp
         bOsVkKUUWL7uDF/RvZavZQgrdBih4ukJVu8qs2F/vo4w03fYyiVd1TMZg111i7fno6Tf
         HVAp2g2Y/zF0KX882A5Pvjyzonhd9XSMCSrXZ342fwETVT3XNJVdmY+lNb8LOC9/8OYa
         FyVLBZpsdhJpxjfbllRDKzovWQvEhTSpM8DM3tK1Ichv2W7Qd7d5W1viJqw4/Mqh//ur
         tq/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vY22Q3Czj5VQ0/GdNk8chORNIWVP7cSJ2PV03yk3kWk=;
        b=OrHm9ma7PTu3PwZLAeqJwAO5xHZlyA8lXk+UvQzjv8iClXJU0udDK0FTHjqF1vrJNn
         OU9dbNRW46E0Ap+XQj3pEvDF8yQPlq8XuBtukfcTg3LOH4U5Go5Es5fVIcbPvfX+MmE4
         x8XkDQvF64HPJ7v7z08EGaDHDbIE4TvRz8zqEGl8kGozP53BBm6+MCCqC0VKu6k+KdaG
         uFxPSBgdc4RngiOE1UF9ye9elCFoJEHqOhKlX28+sEee2gyvcuQ3FkbUpKN3i+xnJQ12
         BMWRyILWqMZSeQnOdsv3ZmJ4/i8s6odNb3NXTUjfQPy3RXixF5ezV1tOZdhmV8jvD9+d
         sf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vY22Q3Czj5VQ0/GdNk8chORNIWVP7cSJ2PV03yk3kWk=;
        b=DNcZc1YjMWknGub6e/97u7dkwvMzdgm1l5as9OqnOfQHisG5altOPDxJDx6/KDf93b
         ZnGetEF0XPWNAQRSMF4h/eeJFBu7DCnaiUZ6eNkaUwQ9lASH76qzGapGYBtpMqDkcrNJ
         W35pCHFEsikDWo7Z5e6r93ZfOPzsjt8vEbh5e855Y1lqNLnQpOoZ42BLIA3dkh3iyAGZ
         Z4bujQxuLB2IRtqw3p4UGWxrDyVDopJSz3nZNca+lOwWlCcg9eQQf/u6l/vjtx4kehxN
         Rgx6R5AKo5vhsrPh3eTdsqPdu/vBGzMQX9YV8H9Rj5S0bgzvkGNRlO/p+n2BvNV77Y6j
         JcKQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXuBIUYj7P956sUaa9ICK2u9trUXD/SX6Uob68r3M3woTSVe+nM
	oyMTaZMGinLeqzOKmSc9dco=
X-Google-Smtp-Source: APXvYqx2taT1eJYO7HMcGI9FIUJqAJ2czRn4Gh7P8Xkp+qXMETW5YvhKfvf/fQ+fQEZSGNclnEVZ3g==
X-Received: by 2002:a05:6102:535:: with SMTP id m21mr8128568vsa.95.1581959633976;
        Mon, 17 Feb 2020 09:13:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f316:: with SMTP id p22ls1184951vsf.6.gmail; Mon, 17 Feb
 2020 09:13:53 -0800 (PST)
X-Received: by 2002:a67:15c7:: with SMTP id 190mr8659299vsv.178.1581959633608;
        Mon, 17 Feb 2020 09:13:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581959633; cv=none;
        d=google.com; s=arc-20160816;
        b=zGIQu5RmYhj+hzoxeUfVz1Qv8KPoaER+niPbIGYWy2N073G0Croy0/jxO6WP7cg3aC
         FoQ1pXizlSEvXYCy1IF2GMRrWUKBUt2PMp3RHhxJTl7ww1rrGn+/XQMXcGKWet6vFP+K
         E6xGkWFCdcZ47mBMZk0ZWW0mCqodNR3jQ1MWARZ+vz9iRnHkQgy+6hBOh23mBeu9pENm
         xO61XVUKi/NWxIGpBcXPIKzS2MGFoDxNsZ4UVpaSOdyXzA/WWaNRxatwsCNbkWywUK46
         uQeeVSNZ7HapiAc41AEpY3GJ7Ak9LpAKxIekcNbOBvF/ijFp8B+xZhqauI2ha/BTil5N
         SMgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=18jMRXgV6+nCKvZI4Sbijd9v59oTbSFFKhQOkBTR/LQ=;
        b=xvBVnobqeW/BfbAQlsHc28IKqjNcfjUng87iZ9RxWYv03poWmdpN36FhYeoaYkX8yo
         ZUCKLPeTffxz4suW7s8cMRRg/3/PNletvhCbapQOWT2vF/HTk+fyGEux176Wt4q6VX7t
         jaqGhNxA9sFwIhCGnYni6ab9uABgtEGIPlBUQoMtp670l+gvWzYAe5MHCrQ7M8hq1H4Z
         ihTGdMbWYhJd6tVSdeJwkl9hobfyKS2BjAJsg7VFDQq44nxhodwvwmwj3YPoc0VJnX6y
         JYdDt+R5KHykUn6U9N9xSxesuiURIChSsF4FdzdsoolA/cHotW3/9jJm3CvC1PCttfOC
         sMAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id k26si68766uao.0.2020.02.17.09.13.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Feb 2020 09:13:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0127361.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01HHDk56087258
	for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 12:13:53 -0500
Received: from e06smtp01.uk.ibm.com (e06smtp01.uk.ibm.com [195.75.94.97])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y6cb9kq26-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 17 Feb 2020 12:13:52 -0500
Received: from localhost
	by e06smtp01.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <gor@linux.ibm.com>;
	Mon, 17 Feb 2020 17:13:51 -0000
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
	by e06smtp01.uk.ibm.com (192.168.101.131) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Mon, 17 Feb 2020 17:13:47 -0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01HHDkK636503712
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 17 Feb 2020 17:13:46 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 65D8D42047;
	Mon, 17 Feb 2020 17:13:46 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 2133E4203F;
	Mon, 17 Feb 2020 17:13:46 +0000 (GMT)
Received: from localhost (unknown [9.152.212.204])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 17 Feb 2020 17:13:46 +0000 (GMT)
Date: Mon, 17 Feb 2020 18:13:44 +0100
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Joe Perches <joe@perches.com>, Heiko Carstens <heiko.carstens@de.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] s390/kaslr: Fix casts in get_random
References: <20200208141052.48476-1-natechancellor@gmail.com>
 <ba371a74412c07c30eeb26fa25c94c25468599a9.camel@perches.com>
 <20200214064628.GA14336@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200214064628.GA14336@ubuntu-m2-xlarge-x86>
X-TM-AS-GCONF: 00
x-cbid: 20021717-4275-0000-0000-000003A2DB4B
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021717-4276-0000-0000-000038B6E05F
Message-Id: <your-ad-here.call-01581959624-ext-8482@work.hours>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-17_11:2020-02-17,2020-02-17 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 adultscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 clxscore=1015 phishscore=0
 mlxscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002170140
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

On Thu, Feb 13, 2020 at 11:46:28PM -0700, Nathan Chancellor wrote:
> On Sat, Feb 08, 2020 at 12:17:20PM -0800, Joe Perches wrote:
> > On Sat, 2020-02-08 at 07:10 -0700, Nathan Chancellor wrote:
> > > Clang warns:
> > > 
> > > ../arch/s390/boot/kaslr.c:78:25: warning: passing 'char *' to parameter
> > > of type 'const u8 *' (aka 'const unsigned char *') converts between
> > > pointers to integer
> > > types with different sign [-Wpointer-sign]
> > >                                   (char *) entropy, (char *) entropy,
> > >                                                     ^~~~~~~~~~~~~~~~
> > > ../arch/s390/include/asm/cpacf.h:280:28: note: passing argument to
> > > parameter 'src' here
> > >                             u8 *dest, const u8 *src, long src_len)
> > >                                                 ^
> > > 2 warnings generated.
> > > 
> > > Fix the cast to match what else is done in this function.
> > > 
> > > Fixes: b2d24b97b2a9 ("s390/kernel: add support for kernel address space layout randomization (KASLR)")
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/862
> > > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> > > ---
> > >  arch/s390/boot/kaslr.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/s390/boot/kaslr.c b/arch/s390/boot/kaslr.c
> > > index 5d12352545c5..5591243d673e 100644
> > > --- a/arch/s390/boot/kaslr.c
> > > +++ b/arch/s390/boot/kaslr.c
> > > @@ -75,7 +75,7 @@ static unsigned long get_random(unsigned long limit)
> > >  		*(unsigned long *) prng.parm_block ^= seed;
> > >  		for (i = 0; i < 16; i++) {
> > >  			cpacf_kmc(CPACF_KMC_PRNG, prng.parm_block,
> > > -				  (char *) entropy, (char *) entropy,
> > > +				  (u8 *) entropy, (u8 *) entropy,
> > 
> > Why not change the function to take void *?
> > 
> > static inline int cpacf_kmc(unsigned long func, void *param,
> > 			    u8 *dest, const u8 *src, long src_len)
> > 
> > vs:
> > 
> > static inline int cpacf_kmc(unsigned long func, void *param,
> > 			    void *dest, const void *src, long src_len)
> > 
> > and remove the casts?
> 
> I can certainly do that if the maintainers prefer it.
> 
> Cheers,
> Nathan
KBUILD_CFLAGS contains -Wno-pointer-sign but special arch/s390/boot code
has a separate set of build flags. Anyhow the change makes sense as it is.
Applied to fixes, thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01581959624-ext-8482%40work.hours.
