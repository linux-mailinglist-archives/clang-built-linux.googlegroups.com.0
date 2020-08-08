Return-Path: <clang-built-linux+bncBAABBPWGXL4QKGQE6R6BKPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B5323F7C0
	for <lists+clang-built-linux@lfdr.de>; Sat,  8 Aug 2020 15:06:08 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id s185sf3401243pgb.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 08 Aug 2020 06:06:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596891967; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0Thw5g8qne2emh+QJgbC+A0rbLP/h5Lw0XFyACIGAQ5nuWNexiZFI6rp2l9nIqerF
         g53zmIxu8FNLgt5v/UE+XRo91NrXQskpt+ynJrE+yusIWSF/1OqiCBFrwJHZRj4RApOM
         Si4xNeATSczCXxZRXvH7pt2wJIVgAgxD1ov1A8/Lmon1+1GCpOg7/guaQ89M4JxXDWlI
         60+f6Jc8iZ54xtEhCuXptNLSzcpeFpFW23bTejwZGpcXTLCOOixUSxDBxfYhoz+/lNk3
         RRIkLAWsdrUj7GkG6VrvfL+wiIUt/kWPz6VYhXdeGyFzrmmkGwy6ALK8urSZS9DGdJa/
         SUIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=t3h1bfO65QKXytqZvsKJmMZ5Jbjp9fkGKGP79sKwCvA=;
        b=Pxssilci9mTEq7PL+5kiilDQYE7pxyAQVUwt0FSPPVNO10W9vBKm4mnn0kL0M7d6dG
         GlLtkzF7UpYePAVr4W0/Ka/p1/AjYCbODG2g+gjN5cU8AinYYZPlXJCVNXj2eBWAsExP
         B0UIh9+SAvOn4sddp9Rsgb8IxkxdMVHU3zekB3Rk+WRmqTmo//dtcjW0q/6u4WqtGsw7
         7HS3J3DcFmBuxJa/YZIIhxoaJKuxaHGOSuUtAssNhKioo0lgxDSeJ+Ruk+yPkaj4WGHp
         XdwQWRCUV9bBx5zNGGs5RsLHs5jNobX2aco5NL9vdpte5C7hbh23NSBAB5UAzDDeXOcL
         AZ3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=LRb5LpcQ;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t3h1bfO65QKXytqZvsKJmMZ5Jbjp9fkGKGP79sKwCvA=;
        b=OKjAtAjOO+TaiEI3mmHpgvn4B5HI/ozUdHhh/mQ0D1ete0eumVbbFggyqoUm0UEKr6
         7/TJqBnieOROE2QZZiUYWcNql4CyvaJQZir7MWyf2JFdv3lYnjVEnBLX2S8Jyif+yZFg
         pbovtOAZdHM5KU5EKcWV4rJ11m5C+F5jdvEeEmNEGHOjD2fHOfhViqpeSWm/kuHD5P0e
         gffY+Nwk1a7+IDUrjiVQhki0FYQJBS9kgfuYT5WI/TGDRNjHd3WZr14CAUPBnPg4c8iv
         67sINmm3azyCtoZCyam+CPJfTVexBW4kvVNnfD0JkLNlJLoIrgfhMLPLqOC5JQjXRv57
         KpPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t3h1bfO65QKXytqZvsKJmMZ5Jbjp9fkGKGP79sKwCvA=;
        b=O/KeTnG3Ka8+yWFMSNwYPAwmr8bKUqJGsyWhigPEt9yzcRtB/JSTTNcK9/ruRal/xl
         QxEDnUyjOnAnIGtLHFiLbOIIIJdaXcvFw6Ie3UWQwTJleADHZpqhBYZLR8QV1WSxiJcE
         MoVbipFQO/aeS7yFaWZgaRoDo4nrx3zYr4Vrx3vINPMira+OnHIDlXl9ht95VlV6UheX
         URopCc5+7miNLdP+wZwR/RaD2dgX1+He1aHxqd6zk30E7wJAiiqMLlV4HDVlJb6N4P0I
         4XPLXHVwD9ZD1ZVOUSHGLkkauFLbUaMtdi8ZLxEWYpUPlJXLSt5Qlmi7aTt+2j53znVj
         do6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+HZjfjlagKGqYDnfRtmhow8NdmkVEaAjWx8RxbmWj0F4NAcA4
	wwqIYGZJVN1iI5mdw1tFy84=
X-Google-Smtp-Source: ABdhPJwo2z8qiTRC2el35oj9ZvOUyYsVIP4qcT/93Vkytvpfo8kKzXMQEyboSkjUDHKYK4XQVzkSbA==
X-Received: by 2002:a65:6250:: with SMTP id q16mr15778219pgv.149.1596891967015;
        Sat, 08 Aug 2020 06:06:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9b93:: with SMTP id y19ls5119477plp.6.gmail; Sat, 08
 Aug 2020 06:06:06 -0700 (PDT)
X-Received: by 2002:a17:90a:c207:: with SMTP id e7mr19372084pjt.172.1596891966591;
        Sat, 08 Aug 2020 06:06:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596891966; cv=none;
        d=google.com; s=arc-20160816;
        b=eOgs3dzNLg9ICx8IidpgnUmjAYUNAkAEO7Y6qny0G7ejZOXRenzs03DuoYHZI5jjLP
         tIR/UTEUk240N+gi7fy4P5IujDGBUGHW8AZHvwttQcNACcMfxTcDCpqc3R9UDGzGNPfp
         oW6APzx4AKFnEfYkRbETPNDyH6ti6UfL2WreTDBcNNxXcoWYgoKjzHbh63Q8AVPvtT/x
         QkU8dQq9D6obpZ9MovoCYjrQOn3yH3IcJxD5ea24wLsGt2GfgU3bpZkwmugHdltdwNVV
         m9+Xm7dQ++I3oC2EmDwjC7NWHsjQImhl64rUMLCXMEiYH8YG6U4JbUVKXc8OxRHLJmPv
         tadA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=U8X6qRYCXP4zF6uXjsokluM1K/PbdmKCnP7Vf5VhsAs=;
        b=zqefFHKo6ggFP4NKJRhICdR2Yx+dRaqlVyLywgr7st+7gC5JR3E6mZ3EJ8H3BRB32N
         zOaUhsi1WvC8ep6j71SG7Dya+Zc/mgd2lPz/w2akGhq83kabRzj1fsPiqch2YpF45PhK
         NYjN39DBIBGVUELPTeOdcyW1Bub1QRETTDv0T/HOntHb91qTNmJmmvX/W5heGvBesfZG
         NjCHxa086KIeOa63BoBeMtuzmcL21VPiFTQnGrkPStor4U5SYNgbglYw1pXzRZFPpQxR
         7XS/3zGz8JkzzNdMXItNkT9a8Gdj06zShzdvaQNojSn/KMNJaCzrBdhQnGmXl1aSP+rT
         b5Iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=LRb5LpcQ;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id nl1si839621pjb.1.2020.08.08.06.06.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Aug 2020 06:06:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 078D15j3134717;
	Sat, 8 Aug 2020 09:06:05 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 32srbycpjy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 08 Aug 2020 09:06:05 -0400
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 078D1Cos135111;
	Sat, 8 Aug 2020 09:06:05 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0b-001b2d01.pphosted.com with ESMTP id 32srbycpjm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 08 Aug 2020 09:06:05 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 078D4fP6023661;
	Sat, 8 Aug 2020 13:06:03 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma03ams.nl.ibm.com with ESMTP id 32skp88ct9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 08 Aug 2020 13:06:02 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 078D5v3U30998942
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Sat, 8 Aug 2020 13:05:58 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C9F2311C04A;
	Sat,  8 Aug 2020 13:05:57 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 50E7011C054;
	Sat,  8 Aug 2020 13:05:57 +0000 (GMT)
Received: from localhost (unknown [9.145.77.129])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Sat,  8 Aug 2020 13:05:57 +0000 (GMT)
Date: Sat, 8 Aug 2020 15:05:55 +0200
From: Vasily Gorbik <gor@linux.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>,
        Ulrich Weigand <ulrich.weigand@de.ibm.com>,
        Jonas Paulsson <paulsson@linux.vnet.ibm.com>,
        Ilya Leoshkevich <iii@linux.ibm.com>
Cc: Heiko Carstens <hca@linux.ibm.com>,
        linux-s390 <linux-s390@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Subject: Re: linux plumbers + clang + s390 virtualized testing
Message-ID: <your-ad-here.call-01596891955-ext-8436@work.hours>
References: <CAKwvOdn-2E=v_7Uie71pz2jjYCKnk98K1Ly8EkpxzvC6M5pXFA@mail.gmail.com>
 <20200716112840.GC8484@osiris>
 <your-ad-here.call-01596030682-ext-1369@work.hours>
 <CAKwvOd=1E+90VHwzh9cYGz9YKy_ECMJuK6gZhzLqBFw9kS4Cww@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=1E+90VHwzh9cYGz9YKy_ECMJuK6gZhzLqBFw9kS4Cww@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-08_05:2020-08-06,2020-08-08 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 malwarescore=0 priorityscore=1501 impostorscore=0
 spamscore=0 phishscore=0 mlxscore=0 bulkscore=0 adultscore=0
 suspectscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2006250000 definitions=main-2008080092
X-Original-Sender: gor@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=LRb5LpcQ;       spf=pass (google.com:
 domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=gor@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Thu, Aug 06, 2020 at 12:02:52PM -0700, Nick Desaulniers wrote:
> On Wed, Jul 29, 2020 at 6:51 AM Vasily Gorbik <gor@linux.ibm.com> wrote:
> >
> > > > We were very excited to see your patches going by for enabling Clang
> > > > support for s390.  Since then, we've added s390 builds to our
> > > > continuous integration setup.
> > > >
> > > > We've been running into a few issues with doing virtualized boot tests
> > > > of our kernels on s390.
> > > >
> > > > I was curious if you'll both be attending Linux plumbers conf?  If we
> > > > carve out time for an s390+clang talk, would this be of interest to
> > > > you to attend?
> > I will attend and it would surely be interesting to me and other
> > s390 folks. Your efforts are greatly appreciated!
> 
> Cool, so our MC has been approved:
> https://www.linuxplumbersconf.org/event/7/page/80-accepted-microconferences#llvm-cr
> 
> But we're super tight on time and probably won't be able to do a
> session on s390 at the MC.  That said, I have just submitted a BoF
> proposal since we have more topics internal to our group we'd like to
> have more time to discuss.  I've added s390 testing to the list of
> potential topics, too.  I'll re-ping this thread once I hear back
> about whether it gets approved or not.
> 
> That said, we do meet once every other week virtually online, see
> links: https://clangbuiltlinux.github.io/.
> 
> >
> > BTW I believe basic Clang support for s390 came earlier in 5.2 with
> > a lot of efforts from Arnd Bergmann.
> >
> > My part was fixing recent breakages and bugging our s390 clang team
> > (which did all the great work) to get kernel specific features support
> > in clang 10 and 11 to reach features parity with gcc. And eventually
> > doing few adjustments so that features which came with clang 10 and
> > 11 are working smoothly. That is s390 "asm goto" support and specific
> > compiler flags for ftrace support and stack packing.
> 
> That's awesome; I'd love to get the chance to meet your s390 LLVM
> team; in general it can take a while to get bugs routed to folks most
> empowered to fix them until you know who they are.
> 
> Would you, any fellow s390 kernel and LLVM folks be interested in
> attending one of our virtual meetings, even if it's just to say "hi"
> quickly? Next one is next Wednesday.
> 
> Usually we go over whatever firedrills we've been running the past two
> weeks, but sometimes have presentations of folks projects and
> research.  I think it would be cool to get more background on s390 and
> work out the issues we're running into with testing.

I've added few more people in To. We'll try to make it next Wednesday,
but no promises since we are based in Germany and this is quite late
for us.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01596891955-ext-8436%40work.hours.
