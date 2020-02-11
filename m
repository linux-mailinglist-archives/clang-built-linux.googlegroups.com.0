Return-Path: <clang-built-linux+bncBAABBMOQRLZAKGQEFM73XBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06AA6158F83
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 14:12:19 +0100 (CET)
Received: by mail-oi1-x23b.google.com with SMTP id n196sf5968493oig.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 Feb 2020 05:12:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581426738; cv=pass;
        d=google.com; s=arc-20160816;
        b=EqYTpp/6RB8R5nfy2l7Wh7wqr8pTdFGDPRavn+lLaTIbZyZZT+Z37a8UH+xWLRIhhv
         ytpjVdHHWQ51xeXWDIb/6tA4T77YDDcXEnqpMZcxwfdN60L+dBTDtWHvjmwYcjLUwqYd
         z10iK6eaVxdBHImfVuTf4A9WfRNMMsOOKr5uogwwALn0rbr34rwyYR9uVz8ysN20oBK4
         ctnXyAj9bKM+pKu1wMuV5YyBX49d7NiXjPx9JKVqyV/fblrhguhZTrbIlnrApvcHBth0
         POqu9XCTkOKBJOCEIJ8IC/KkfgsnaBjdByaU/SbIrlav9S84Lp7PgetYvIDqFHf8LzOW
         rAjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:in-reply-to
         :content-disposition:mime-version:references:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=TWzEJNkTevpuINmuLYXkWWE6hv20XF6LRNiXEgEx5EM=;
        b=hoUu4rXgYCmfPaCW1t78JLVLr/fSwWkNfYEDqUF0Mkoio/xAvlqNgOnHqEEQZUxPk3
         HWdlZ4LZK/zXxzY7k/YivKm7HY2P8Jp8Ee/9oKOuWAUBbND+fI7uGemBfezbFlnIU9/L
         Tcah1KGGxbaOzfJ6cqkkmdlKUr1+NOvNaMln2seWpi+W41Qo9HxOBJyKrGzGd56DNrGJ
         lIzpIQkouUIpwzulbUbjcdFSPFHdQEwaFOFmlktCm4oGdAnr75wXobV62M5rY7YI851U
         ZqcmfpyZHlR0W+VYetmkhbFAfunlwLMT7LUKMwHqXMUfsXEMe2+efzi80UMlF9/3Klo7
         0EVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TWzEJNkTevpuINmuLYXkWWE6hv20XF6LRNiXEgEx5EM=;
        b=jthJez9mUviMGSxcfBAOyQX+dWfqyCIWiKNy3e8g5dAv+w9YKs3OPY7o+KG+IBLo7u
         YGcY8mzKCnlZ06E5xPLI1YlslOGvKYlZxs9jFuw4c8aSROqvwjJdqaGRGqAfB18WHX8Y
         jL46jNitWdnKUTvVMdzyk0hlN+KjnbbxARW/NIBWffUBJWtNd1aUK6fNihq7u6SNMw2c
         6XeoIKO04OjHlqZCJqE5HSMN3bhgINV+N5w/3MoMtoBggiMi+0m3F4iQqnDylyYEtUmf
         YumJWzJdRK2iEdrxebrP+vYF1bftIoewLEV0kj1+QvfxooqOnZt7XFauLZCg4JspI2di
         UPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TWzEJNkTevpuINmuLYXkWWE6hv20XF6LRNiXEgEx5EM=;
        b=M3kzMctbSGWPFZfYsx+dF0KjK/L3DQzf1+ACyTYaFdRJ3Tf85ohwYlk2hdRNmDh0FJ
         fuUQ6eXh70Zcv6zPIy4GLYsI/kDqSPfJVP3N3oFd/FSe+NrhNyZXn+Kt8SxQXiOcLGav
         o9SpOxZao9tZu+e8lgXzZQjRFcAFS8rGA4MNkSjm/rZFqzV2WG2KqdvAv+HVyMSF/oTu
         /M5pZUY8CJPvOtieHs3XRkoAQVunvXwWIrBIKI9aYujt/N1GToelOxNNnQQXll/IrbpC
         ax7xhbVhkgouoQQVZpDuhoPZM1gGXcFMt82a86uH7ybTWd1k5oAYm0Zlx2XC8C137g+n
         LbQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWEMuEaCvMzNAAyKGvSdbf01FkYHegRIw5EI7FTGiIIIjULPQk4
	vmD07jO1x3D87vud8284PWI=
X-Google-Smtp-Source: APXvYqwAFrcAS4ZkGIQuTitdHSOiVog5D4Wrir754oJUia4hyDC199O1Y3bcYk+9cqNkyCuFitS92g==
X-Received: by 2002:aca:2112:: with SMTP id 18mr2671910oiz.155.1581426737916;
        Tue, 11 Feb 2020 05:12:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:3ae:: with SMTP id n14ls5496991oie.8.gmail; Tue, 11
 Feb 2020 05:12:17 -0800 (PST)
X-Received: by 2002:a54:468a:: with SMTP id k10mr2864619oic.3.1581426737580;
        Tue, 11 Feb 2020 05:12:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581426737; cv=none;
        d=google.com; s=arc-20160816;
        b=rTXa2zaNHovYtZBV74GRfb/Yat8Wq0Z+N+FZRg6gOHpbsw7PUjZQd+mfq12/AmLwMY
         AzUg827fsIZUCD7eRmHt/B5U4D0CVxl/pSW3wjU/ysPqxbzx8jWYb6HS+bqFDzbfsVLG
         AvuTypa/VX1j+QbNSRs852XBlECPGBd7AW7DxdWkGRl5gq0aW8UdgfqU74NUNlZhSrBo
         n1y/hlMBxmqTKi4d7/WYqDgdFVnEKnRn+NQxLKeFagshCQX5/e4m8aENnGzzuhuG/0ZJ
         461ZPhTNbduGpl3ul9yKPn6N/14FEpM/TSjAU7qIiv42Csw3Eyg2vCjZN5K+W9OinsTQ
         NQXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:content-disposition:mime-version:references
         :subject:cc:to:from:date;
        bh=GDvzCLGt5c5qHc0vci/DjjZE2eXnPjTvCzn9dwJwwQ0=;
        b=MBgV08hTmoRnAWutYsf28AotPvMWa25txVNbE2w30wex13/IeH5iMcGGO3DU9cSCip
         BqeSNuvztqB6I8CnNOvslXWKaONqfMHB1GWc/ZZDKoOM8gqzzslm7Omw+ZsI0bCwhFIq
         a+aEj+D+rcewM83Hx1eggvULWRPLn465w9LKTCzNwLrpUBbvCEnPfeiG38kM5zuvo0lC
         fp5l26xbhE5O5DZfFPfKEBChsSN58EBPJp0y9EDnud3DykQ73qKxyNSYtrWukIZSkzkU
         4MZieWJd5RsduW5hTk8hlUGyn1RqMNi75w7SZtO4UhUN5sYPfIzfK4Qmi+ZJZAB8ya66
         knSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id o11si177688otk.0.2020.02.11.05.12.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Feb 2020 05:12:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 01BCx7jj125786
	for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 08:12:16 -0500
Received: from e06smtp02.uk.ibm.com (e06smtp02.uk.ibm.com [195.75.94.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2y1tpcshss-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Tue, 11 Feb 2020 08:12:16 -0500
Received: from localhost
	by e06smtp02.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <gor@linux.ibm.com>;
	Tue, 11 Feb 2020 13:12:14 -0000
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
	by e06smtp02.uk.ibm.com (192.168.101.132) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Tue, 11 Feb 2020 13:12:11 -0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 01BDCAtN21233696
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 11 Feb 2020 13:12:10 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3222FA4060;
	Tue, 11 Feb 2020 13:12:10 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C25C9A405F;
	Tue, 11 Feb 2020 13:12:09 +0000 (GMT)
Received: from localhost (unknown [9.145.77.145])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Tue, 11 Feb 2020 13:12:09 +0000 (GMT)
Date: Tue, 11 Feb 2020 14:12:08 +0100
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390@vger.kernel.org, linux-kernel@vger.kernel.org,
        clang-built-linux@googlegroups.com
Subject: Re: [PATCH] s390/time: Fix clk type in get_tod_clock
References: <20200208140858.47970-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200208140858.47970-1-natechancellor@gmail.com>
X-TM-AS-GCONF: 00
x-cbid: 20021113-0008-0000-0000-00000351E012
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20021113-0009-0000-0000-00004A72814C
Message-Id: <your-ad-here.call-01581426728-ext-3459@work.hours>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-02-11_03:2020-02-10,2020-02-11 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002110100
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

On Sat, Feb 08, 2020 at 07:08:59AM -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> In file included from ../arch/s390/boot/startup.c:3:
> In file included from ../include/linux/elf.h:5:
> In file included from ../arch/s390/include/asm/elf.h:132:
> In file included from ../include/linux/compat.h:10:
> In file included from ../include/linux/time.h:74:
> In file included from ../include/linux/time32.h:13:
> In file included from ../include/linux/timex.h:65:
> ../arch/s390/include/asm/timex.h:160:20: warning: passing 'unsigned char
> [16]' to parameter of type 'char *' converts between pointers to integer
> types with different sign [-Wpointer-sign]
>         get_tod_clock_ext(clk);
>                           ^~~
> ../arch/s390/include/asm/timex.h:149:44: note: passing argument to
> parameter 'clk' here
> static inline void get_tod_clock_ext(char *clk)
>                                            ^
> 
> Change clk's type to just be char so that it matches what happens in
> get_tod_clock_ext.
> 
> Fixes: 57b28f66316d ("[S390] s390_hypfs: Add new attributes")
> Link: https://github.com/ClangBuiltLinux/linux/issues/861
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
> 
> Alternatively, changing the clk type in get_tod_clock_ext to unsigned
> which is what it was in the early 2000s.
> 
>  arch/s390/include/asm/timex.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/s390/include/asm/timex.h b/arch/s390/include/asm/timex.h
> index 670f14a228e5..6bf3a45ccfec 100644
> --- a/arch/s390/include/asm/timex.h
> +++ b/arch/s390/include/asm/timex.h
> @@ -155,7 +155,7 @@ static inline void get_tod_clock_ext(char *clk)
>  
>  static inline unsigned long long get_tod_clock(void)
>  {
> -	unsigned char clk[STORE_CLOCK_EXT_SIZE];
> +	char clk[STORE_CLOCK_EXT_SIZE];
>  
>  	get_tod_clock_ext(clk);
>  	return *((unsigned long long *)&clk[1]);
> -- 
> 2.25.0
> 
Applied, thanks.
I wonder though if Fixes: tag is really required for such changes. It
triggers stable backports (for all stable branches since v2.6.35) and
hence a lot of noise.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01581426728-ext-3459%40work.hours.
