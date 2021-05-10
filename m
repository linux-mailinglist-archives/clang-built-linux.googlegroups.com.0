Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBW734SCAMGQEDJHXTBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1815D378FE1
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 16:06:21 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id w1-20020a6bd6010000b029042308b21fb9sf10543877ioa.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 07:06:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620655580; cv=pass;
        d=google.com; s=arc-20160816;
        b=h4Ha3lpppBuQRMjF/gaeu+oVg+kKsr5FJCzNy5T67CeQl0RYfMRev4pzitVOeBsRMZ
         RKrZ5Y1wG7xa/7oFJyxa7SshbV6hHPhZukfVNUhPnrx4YjYvitYcAcfPXKIEZfyyC12q
         KhsYFw1Qg7jd8WZPry6dnPHUC+YWEi9Mb6oRjuxwHcOxw8LQFaMtzhW91LcvOIWR4Iio
         GxLLxfBphX5BKPO9LRoubli/X6HL+xvGH2aMdOsPQHHYg2ii50K7xdLp4lTTsu4pMEdi
         6gSZGVALrKbUBAjXMHBNtcxs3WeDqi1Mibt/9ZRgIxCRR+o1ChTghxUL+fGxdneXuR7d
         U00g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=0fKrapYDFYuHTBeULGXnajmcNkVMj8UXSbet5ngfaCc=;
        b=C4CkFdTrSYuBTYKMxFQvd6VNlpoXzv6Veo6SalqfpzYx329qIn/xIgB8MDUxxnxppm
         YlUy8c9LL0OCPe638UCf+Hc8Opira1yOyzGnXFW2U5z1F9gMT66LrjgBMRb0tSTEosh+
         OezroKSCUU+EpRfMWlxy1GJZR8lLrTXHo1FyqIW05o2nohd0pKT1vo5sUd11VUL9AAiK
         nsz9wd1RZkn8LyQu1UX0YcHRs4O9exX8X5U98WyxpzefoHkBOQwUKqNf1vVM7wP95B/i
         7Hg1pCe/Dp48d4O7ilf5aggLSlGm1rZb61FeykbhedrxQbmD1jlBnJPCmG1YHuOhW1OB
         tJCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=gKfwOYju;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0fKrapYDFYuHTBeULGXnajmcNkVMj8UXSbet5ngfaCc=;
        b=ns/wZ827YDV0tqgHTRu3AndGphQiO6zzke/7YwHbPsQMIFP1oqSyJrWfqVhoEeKx3j
         AMCcevcqxmcOAOGP+s0YvI7nV8/9zO+pYE4X1PrGcO0m409d1vqojOB71Z7RRZM7cx4n
         DR9oHq59x5+qsnLm2JdFE3zFDVr8v02fBk44x7G8AXq48MT9QzDtGIeU9DPnRoBPAT1Q
         CAGmllbr4UwLk0o39Qh4kFSxiAiGGpYMu5ZE2k10eD3HnJ05AQ5LyMoq2b99faBB4nvV
         BbkJsrJb471U9PBd1iB7NDrt4SVmhAi3Yl1/LPZOnPVVAj2VIrWPAl5TnWGtTCy89+3g
         /xKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0fKrapYDFYuHTBeULGXnajmcNkVMj8UXSbet5ngfaCc=;
        b=H+yBzt5VwPwTTh2yzh7weLI09kgcMI4tXJ67QZtaMUzLA4DfROvR/fmSJyJ8j6nn3+
         /3Xyh+nz0YQKA/cM62ni6ZMMhDOwuY/SHw754v7nJrSWJEVJyZ9Hin6GxiCX/CEjLDOC
         80R6lwViJEOmop91fiKG+u1ICetsqZ53eMYUpChJIK/2kNxtC+9kEkrwjoeyDLH/c9yH
         cKCh8RZvfLd7q69YfPPLc0NwjMUVWPEGmA6Y6y70k5hm8YTeeDyPQGZGhYoEUBaKdG5X
         p1B07MfJJJ5C2NEWLCj2saweFN/55zuT/t6t1Yt51141x7xEtbL0+t65/ka0AT4JjZul
         FYmg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Q7JGoS87J2uFFMsaDhzs2QxJo+dBAL7Fqju+C+BC+puHjfvP7
	yZUP16QYtmuICJVwzqWES34=
X-Google-Smtp-Source: ABdhPJyWuZtR+f3FOdEudPEaHd9Kc855B34FXPOqcJzQWvLQebDDQcTDbPVBjelN2W6aZ1rUCpopAA==
X-Received: by 2002:a05:6e02:1d15:: with SMTP id i21mr12119711ila.189.1620655579986;
        Mon, 10 May 2021 07:06:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:c48e:: with SMTP id t14ls1787103jam.4.gmail; Mon, 10 May
 2021 07:06:19 -0700 (PDT)
X-Received: by 2002:a02:7f57:: with SMTP id r84mr22480360jac.108.1620655579618;
        Mon, 10 May 2021 07:06:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620655579; cv=none;
        d=google.com; s=arc-20160816;
        b=RyPAvEjgKnhceGH+qXcQJsH6d6hnw+tHdiQybJiZFsBwGSiz9vi/zCBmo5CynUuTv/
         AiPFv9cNqTfLtjoKgdIVQxmLKnBPZdd4LAzvITnj0eA9YS6dIZLJ7iixOQd8YGNWa0xK
         6JCu9wVXVJskVTtMLRatP13BapXOmGWKzqn6RngRz835eb6UfusAA7yA70+3JrFM3+Ym
         r5bOQXmtj8a0NgnaAVnIAOQvsEwuhsQE3wQBBNJSMga7ZsnGqHBRwL96IB9amO6Cc5S1
         SRZJJ0Anln1d5JbiOp+damoMIGcQUgnvUGtIVXus4xoaEKJ0d/oWXlcO7cuhmcjpaFh0
         jVtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=7N3vj2CNerYDIrQk0YPsy9jHw8dDgtuI8EkCY3dY5N8=;
        b=gTT3cBISbVSlDhpGt1XDyd3TqcVe3eK3p1L4TWYecgNhGCebbqlJbjJeP1Tbm78+LT
         F7YzOhiOGePHUCQqrW9OPbeeaBPOgl7p2YC6sEE93k7/tDBk/ESE+yArUJCg8iR/BFMs
         pJp1rWkyVspGRXLMsJZmaz4Fy0s5cxjSfJn1ZGxoMTUNbiJvt54e22L3mWMrIm8ayd0h
         rBAvTuR1+D5RKP/5vvD1jjSehjPwiPE+lbXn6ehhlF0DtI1IJDXTYkxuGXF+DFzTl+9e
         rcNfh2rCFc0mR2nYklKZghKG9RvXY0GjYBDhJLxlN14XLt8WTuo2iUL3wSiFnWB+nNSe
         DF1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=gKfwOYju;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id y9si769951ill.1.2021.05.10.07.06.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 07:06:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14AE34mQ171920;
	Mon, 10 May 2021 10:06:15 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f66808j2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:06:15 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 14AE35kK171984;
	Mon, 10 May 2021 10:06:14 -0400
Received: from ppma03fra.de.ibm.com (6b.4a.5195.ip4.static.sl-reverse.com [149.81.74.107])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38f66808gk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 10:06:14 -0400
Received: from pps.filterd (ppma03fra.de.ibm.com [127.0.0.1])
	by ppma03fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14AE32JB026127;
	Mon, 10 May 2021 14:06:11 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma03fra.de.ibm.com with ESMTP id 38dj988hvv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 10 May 2021 14:06:11 +0000
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com [9.149.105.59])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14AE68qh19071382
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 10 May 2021 14:06:09 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D3CFAA4055;
	Mon, 10 May 2021 14:06:08 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 45B2AA405F;
	Mon, 10 May 2021 14:06:08 +0000 (GMT)
Received: from sig-9-145-37-150.uk.ibm.com (unknown [9.145.37.150])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 10 May 2021 14:06:08 +0000 (GMT)
Message-ID: <f8833399951a5af8d98a8bf344505163c5947ef0.camel@linux.ibm.com>
Subject: Re: [PATCH v5 3/3] asm-generic/io.h: warn in inb() and friends with
 undefined PCI_IOBASE
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>, kernel test robot <lkp@intel.com>
Cc: Vineet Gupta <vgupta@synopsys.com>,
        "David S. Miller"
 <davem@davemloft.net>, kbuild-all@lists.01.org,
        Networking
 <netdev@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick
 Desaulniers <ndesaulniers@google.com>,
        clang-built-linux
 <clang-built-linux@googlegroups.com>,
        linux-arch
 <linux-arch@vger.kernel.org>,
        Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>
Date: Mon, 10 May 2021 16:06:07 +0200
In-Reply-To: <CAK8P3a0CiVFvgpJJMcutHv6gdfeKWN2=AWYDuAX-ohEg3+L3gQ@mail.gmail.com>
References: <20210510085339.1857696-4-schnelle@linux.ibm.com>
	 <202105102111.SyGVczHt-lkp@intel.com>
	 <CAK8P3a0CiVFvgpJJMcutHv6gdfeKWN2=AWYDuAX-ohEg3+L3gQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: vBfEkW1LBvYu2Gl1VHUytt0e94r5D0RU
X-Proofpoint-ORIG-GUID: F6bd4RJG8syII-GQEGRT02VAJxaPTB09
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-10_09:2021-05-10,2021-05-10 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 clxscore=1015
 mlxscore=0 bulkscore=0 mlxlogscore=999 impostorscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 phishscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105100101
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=gKfwOYju;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.156.1 as permitted
 sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass (p=NONE
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

On Mon, 2021-05-10 at 15:43 +0200, Arnd Bergmann wrote:
> On Mon, May 10, 2021 at 3:30 PM kernel test robot <lkp@intel.com> wrote:
> > All warnings (new ones prefixed by >>):
> > 
> >    In file included from include/linux/kernel.h:10,
> >                     from include/linux/list.h:9,
> >                     from include/linux/module.h:12,
> >                     from drivers/net/arcnet/com20020.c:31:
> >    drivers/net/arcnet/com20020.c: In function 'com20020_reset':
> > > > include/linux/compiler.h:70:32: warning: 'inbyte' is used uninitialized in this function [-Wuninitialized]
> >       70 |   (__if_trace.miss_hit[1]++,1) :  \
> >          |                                ^
> >    drivers/net/arcnet/com20020.c:286:9: note: 'inbyte' was declared here
> >      286 |  u_char inbyte;
> >          |         ^~~~~~
> 
> This looks like a real problem with the patch: the insb()/insw()/insl() helpers
> should memset(buffer, 0xff, size) to avoid using random stack data.
> 
>         Arnd


Yes I agree, will send a v6 shortly. Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f8833399951a5af8d98a8bf344505163c5947ef0.camel%40linux.ibm.com.
