Return-Path: <clang-built-linux+bncBDIZTUWNWICRBC4UVH6QKGQEFSPJAVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E748C2AD0D3
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 09:06:36 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id p17sf8710060ilb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Nov 2020 00:06:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604995595; cv=pass;
        d=google.com; s=arc-20160816;
        b=H+PI9UnM6rrzn3rjYWUgI5HORr19DNPL0/N5PYynMxpiX1OjQDBqSpCnWsWNC6OvGX
         Bf5z/lwTYRPApge+YVfsdVAzT/sRnkWl0LYgkf2iAg19Igz6k+D9mJz09Lgn2vClJoJJ
         YB5J5k19LdrpsZDI0j/YMJjNm817JSMpXDJcJSDY7xsFDjQ50i8gxbtSSP0ygR8nQlgq
         tApUthASHMh6+dNOc15FFRJKqPBfU/hi2l7E/PzmlKWjSVStV9mAuy1ZnKu9Ya+uH7WY
         JWVjEjaUPfvK06tmVFbiy5oYGEhp8NoC4H/NdijQTvU4qLKqmD3P0bypFVkombQQ/YGe
         AKqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ngWgQ/VqBTbs2V4gcZu4W9hZk3IDJ2OYf5KYQc/+Bas=;
        b=hvJJH2iiqfhqiHGFVgcw3gur8DIt1+Y2LbzLeREnhAd2GhnyKyI6mvQRFpr2nQFwO+
         536U8RgSXIrD+PgY8dkr0ZY6nNhAz+CePhdLS8x4cCRe5Dd3kDgeiMJEYQPXXLKbslcO
         ZnM+GwYa9xepty+kEtBBuPui5mRriVoEjAHj5nhx+ElzeOiPJUdLFoOT2GNQB69+EHm/
         wWmbQXV9LKSiONb05udAe+6+DCWiyEzY3eqV0KKFqBj0nJhfS3BaSCOWew3U0M/OgJSJ
         E2TJ5Lu87bIxadyXHf3/0uIMuL7YZnlNMozid/UFjLy/w2GrEpz132cBeUJsKDJLugY/
         kJrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=omBLIIFp;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ngWgQ/VqBTbs2V4gcZu4W9hZk3IDJ2OYf5KYQc/+Bas=;
        b=eHRk0Q+x3f5428dmBuuDlBf2QQ7jkKYeIUYtwePmNBOCvjV7fhZ5uHGJ7d4Ty8KvY1
         WmwzNo2rKAXJYKI0+z1F9XhTfWoItlUniEoDEufprgccFVvRkOVQsXRFyVnjtDYctX7R
         KGGYteDmCUGUB0mlogyBCxPzGgzTeeiavIEoxbiwYSCa3/6ocKYtRN2SZOogEIBVBa3b
         645XHSbLaVvAbch/5YthwwQPZavvhgIf3l2UYZo6tSlQW9m9MafNII5kQY+VQffozrVp
         0LExg7pjZiJK/IJlV46awkJh4wIkZJ7VYIjHWtCpIlFe8hDFOmKMRIzCFQJOinzllWeb
         2v7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ngWgQ/VqBTbs2V4gcZu4W9hZk3IDJ2OYf5KYQc/+Bas=;
        b=O3WfR443z6WbZURS/J26rpoWX3IKEYPUMNRmpFy1jbVdCPRrfuapGJ2EXOgVwJ095H
         6uwpNgOj+0NDYltLV+vKKqkuf1+xuuzfYDIZwBmMYY4uCCwmCS2fq09JzI+E70z0+aK7
         khit/BRiPThdG0VmYM5Jg8enhbNsxRUfdHDrpnAYHK7RtINsKwhRU2oeKC+GYJsWlFy0
         EcLQnTaM4FsVzWu3ehi3KRDa6gFuoxmqh7sgJE00wjRvM/8kFkbaZFlnD2IF22rz5wY5
         5k2y/X1jtTfyOKaIttbgigsk0z2YJzAqY8liwSwuZP4pZaBKgyOAHU7eNmQ1SgqUue2d
         kaRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+T4B4IobhQmUkbHOLZcVLbC0+YJXq1hTCEryv1d0n6OZZ5zmO
	ouelPQaus7lfLBu32kgWf/s=
X-Google-Smtp-Source: ABdhPJzlCNQqhmtoibfQlg3/+gMg5QE+RS6FzmWkCM1p6vjrydIz0A4Hl4QGxrOVyJZRW8aPx0QGRg==
X-Received: by 2002:a05:6e02:4ad:: with SMTP id e13mr12163253ils.59.1604995595653;
        Tue, 10 Nov 2020 00:06:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d990:: with SMTP id r16ls2409033iln.7.gmail; Tue, 10 Nov
 2020 00:06:35 -0800 (PST)
X-Received: by 2002:a92:a80f:: with SMTP id o15mr12631605ilh.127.1604995595260;
        Tue, 10 Nov 2020 00:06:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604995595; cv=none;
        d=google.com; s=arc-20160816;
        b=vdExTCd53yyRRnK6l/c/h6pd0mzbLTCSHvi3YVgoi/LW4TbSnkY++385eS1XE3SlLw
         gIscgFs85c/31hrHjUDiABP2sozlupC4EkKDhdO8PepqOLjRmyAHauRSUnyuM4jQJo8s
         FJOktoOxlPCfjBFCtyV4QaztaKSppBBrvoVUEfRCnt8sKaIAEhkKIoW5dar+J3H4Vx7B
         Sk3Zh5fAj5M6mlP91WNv1W3vxr1CNxbYFvffDd0/uD7Fqnl7rxUCTiWUtkIQVS12wrFk
         7ayUQHsPwnjXRiirg9y6uwjmOfnfSK7aRFmDC6h1zGtFqH5kj2TkxYA79sP9GUFhmr+m
         4xzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8Yc+JuCBcxw5njKSI0AKPzOTkerHm9T7cEaGIy0DBvU=;
        b=I1UXIesbamd0NiahoqV01+4/OjP/ImcV/deJRKz/HCK7DPuuhJ/Bo+qmxA30ZhcV+5
         TC/sAWdlu+XmbgmmExH2RQHwdryW5DsUjinbfBLes6IobDdFAVqsoBxSilX0J16fY8yb
         bOdsQMhtOFrANUQ7iX24tUrdGZd6VazOz5WNoxpIgCKrgcsJXFad6U2P3ebCpeRQ3HIR
         T7HtG6rfL+/j+Wj0TCnO6ARdNCInx7GUnJ2c2BUUfib1lBqh40M/5ufgxB0OzozD/3wE
         jPxa6AWWquLcHmngZ67xl24o1DXxFCkyjEBm0F9AbkFH7GNirPJ9f/4621ieg2IBzcAE
         1OMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=omBLIIFp;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id r20si772920ilg.1.2020.11.10.00.06.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 00:06:35 -0800 (PST)
Received-SPF: pass (google.com: domain of dan.carpenter@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AA85PfF032636;
	Tue, 10 Nov 2020 08:06:20 GMT
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
	by userp2120.oracle.com with ESMTP id 34p72eg8n8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 10 Nov 2020 08:06:20 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
	by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 0AA80qTo181652;
	Tue, 10 Nov 2020 08:06:19 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
	by aserp3020.oracle.com with ESMTP id 34p5fyvhk5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 10 Nov 2020 08:06:19 +0000
Received: from abhmp0002.oracle.com (abhmp0002.oracle.com [141.146.116.8])
	by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 0AA86HU7010913;
	Tue, 10 Nov 2020 08:06:17 GMT
Received: from kadam (/41.57.98.10)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Tue, 10 Nov 2020 00:06:16 -0800
Date: Tue, 10 Nov 2020 11:06:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
        Balbir Singh <bsingharora@gmail.com>, Tom Rix <trix@redhat.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux@googlegroups.com, kernel-janitors@vger.kernel.org,
        linux-safety@lists.elisa.tech, linux-kernel@vger.kernel.org
Subject: Re: [linux-safety] [PATCH] taskstats: remove unneeded dead assignment
Message-ID: <20201110080609.GD29398@kadam>
References: <20201106062210.27920-1-lukas.bulwahn@gmail.com>
 <6ab2415b-0642-16ee-4be0-c909e07e7565@codethink.co.uk>
 <alpine.DEB.2.21.2011061126130.20338@felia>
 <aea9d12d-88ee-f262-4328-03993521668f@codethink.co.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <aea9d12d-88ee-f262-4328-03993521668f@codethink.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9800 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 spamscore=0 malwarescore=0
 adultscore=0 phishscore=0 bulkscore=0 mlxlogscore=999 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011100057
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9800 signatures=668682
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 mlxlogscore=999 mlxscore=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 phishscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2011100057
X-Original-Sender: dan.carpenter@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=omBLIIFp;
       spf=pass (google.com: domain of dan.carpenter@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=dan.carpenter@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
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

On Fri, Nov 06, 2020 at 12:04:53PM +0000, Sudip Mukherjee wrote:
> Hi Lukas,
> 
> On 06/11/2020 10:31, Lukas Bulwahn wrote:
> > 
> > 
> > On Fri, 6 Nov 2020, Sudip Mukherjee wrote:
> > 
> >> Hi Lukas,
> >>
> 
> <snip>
> 
> > 
> > I did not try but I bet (a beverage of your choice) that the object code
> > remains the same also for your suggested patch. Try to disprove my claim 
> > and possibly earn yourself a beverage when we meet...
> 
> Lets decide which beverage.. ;-)
> 
> Using gcc-7.2.0 for MIPS:
> 
> original:- ab81d3305d578c2568fbc73aad2f9e61  kernel/taskstats.o
> After your change:- ab81d3305d578c2568fbc73aad2f9e61  kernel/taskstats.o
> After my change:- 0acae2c8d72abd3e15bf805fccdca711  kernel/taskstats.o

I'm surprised the line numbers from the printks aren't affecting it...

I personally prefer Lukas's patch.  "rc" should be function scope...

regards,
dan carpenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201110080609.GD29398%40kadam.
