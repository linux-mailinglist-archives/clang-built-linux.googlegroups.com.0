Return-Path: <clang-built-linux+bncBCJJPO575UBBB4XB7T3AKGQE2WIH3FI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE091F345A
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Jun 2020 08:49:23 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id k16sf14890867pgg.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Jun 2020 23:49:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591685362; cv=pass;
        d=google.com; s=arc-20160816;
        b=MNvXSdxJgShZcOIFOyrMXW/5E6XVEa+J5zbLktkCI5EWsInSgZAXp3AL5wfEgw4FZY
         iJYT0yG9boPIrMRdXoLCGP8LWGGUs5mZlQO46a8OT91GL1IROvJGL6PHA7ohHGfM4boo
         Uafh0Qi4Bau7UWc6yVv8evyQqDGogtkKSfATXA3Fn2+7XjKBlz7qe4k3wuKu2X9w1ZqI
         kvjskVMcOMNocwlnl4J/QtekoxiCLpJ9VcwuJjwIWVKGc3QLSYQtqGQl1ifobGtg7f4u
         fQxPoj0EVEZunRiY9oiJrzKnF+rQvaCZkkHEfmc3E9Pnmf8FLZEI6rnIX79Fhovnsjd5
         zUhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TDUUc+CBCrABweMbrrTcLU8wGAgdKlug0U/GofXouM0=;
        b=aEu7/teH1TC8xo5V87wN85Q8RJXHOToRjnX5gHf3wirvfUjy0WoVKpaLO26w3keFio
         mS0sBX++T1k0Ug29i8VSPPmjw4PJg7D0xh1rTAvvdCENOFxWc53dhQ15+Z72LgVyBlXj
         48KUSc+CaImcZUXd2zVMPbmY+9eAljAK7jebnvCORxwN2XhEm6Iff87+vc8+WPehk1hV
         E1gDZ9ACWksobOShZT6hMeBtC1Z5reCyt5Zo6CVt5igR8OTo2Rj/Fbf9SwMB61Ogk/oo
         GV/3ed/3wdcTsNDhNLajwmeDA/l6Ms3yZYC6ENmaDox3QgGIhdlQXbCNEEQ+lMA62/D0
         4F5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TDUUc+CBCrABweMbrrTcLU8wGAgdKlug0U/GofXouM0=;
        b=A+qOZPfSnl2Y4qb3QBZdpOyyFHb7xi8g8KdS4hlSQNhtt1ebHV4LQEfypvSrproTbf
         KPJt5Hmz7tBYxKNldGDs7sVOyL1GnUIYdDdzyMpEhqvb1jNAaNoL84w9qJDSM0QjTsHR
         5AeQbcF5Z6OO1E6pi7WP29Kyvr8b5pGLJagbrdVH/5BOkKOi3S0yiMr8TN+gJvivEUIO
         3P+J1zeZUunJmkcdH//qXOFNnLE0OR5n032arMwBsIYqDBLhgp4tqvamMntSvBBaXL59
         xGkb2OcSjUVPBeRKF1aZp38l2VUIaoxnGXpDvIJBQ1U86WGieNXHdtSbN4X4Crt77y7q
         Je0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TDUUc+CBCrABweMbrrTcLU8wGAgdKlug0U/GofXouM0=;
        b=Jv/wFbjpGGMNhlvg4IHaClMJpPTZv4bC8N8T7TgqUtSNC+urld29nr7SWQdpvZAnF8
         LXOLWB3C9poHjBrV5sihZm8FfsO+R776oUPwX2/bV4C9U8ymodhHADan2JR2FcGy/kHV
         /7ed68hmHQLKPoN/5KonOc79+Byygus+HvPGj/NCy0EXZ5sET35FB5on/Ch1AaBpC9QQ
         RMxchJbTe6powR8/caomz+jQEv2evfctkLUTSHYlKh8iOUp59wV/aRsNciPqRvZUkuvA
         +nwYA3hxXDoqoTKfHqfkDV8CQOPdzhpb+EP/iAyhjONwKhiZQLSyGqMfoCFYUyORIPfO
         07fQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530DfRC6jMVVtu+30gGc4BhDw8bUudwm4bhLLKMl2eCWOff+0gtA
	ZL0H7BlXaUzcJaYzMZt4bV0=
X-Google-Smtp-Source: ABdhPJwmwUWdua8DLoL9A3cdqOUOoZkl16C4tWwV6qTEmzP/pDWJdgzpehZ8sLJsLXLEIPyyipUtCA==
X-Received: by 2002:a17:902:599a:: with SMTP id p26mr2121225pli.322.1591685362241;
        Mon, 08 Jun 2020 23:49:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:422:: with SMTP id 31ls1035699ple.2.gmail; Mon, 08
 Jun 2020 23:49:21 -0700 (PDT)
X-Received: by 2002:a17:902:70c2:: with SMTP id l2mr2053699plt.237.1591685361866;
        Mon, 08 Jun 2020 23:49:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591685361; cv=none;
        d=google.com; s=arc-20160816;
        b=SR3YGU1l084eWQtNrbR3xt7vX6VMkVtiBiv7w/+oTgNNrebv4lLLBbOuSSQVAt/bwX
         O2Q6lta8w9rm7m1dec1wOCHA8AJ5n7V+70BDVbsc+/oTKLMNbc7zBFBU2ctCst6wpsOg
         xo3mrXJ2PhPN1wVfFEBK1lM0/eZkxHq0g+MyJFmx3E5BtBc0F8LJMQUo8nNl4HaPYZkL
         3T+Rp/sq4ggKs87dU8qSX2qsehfORg4KlBI/i4E2praVfzhRxtDaFnukzX96BQZGdsqP
         QpSsjkzggxKIF/qzXvJphoVrVpugPFBX3JmBpuIDr4UvdIF6hsHoRXfGNndAY1LD4SJ0
         Pa1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=RHHEgKs08w4gtyUuvEKRh0wDiEnPgGPvKLzkrDV04iM=;
        b=tw1I3DitO57hxVhAHa2/8xuQWubX3V4J+4Y9MigUmE0v7AQTl0kmhf4WKsJOQBKTSr
         FVbraz6wNABTa54l3G/xw03ph8S1VJVC52k5c20wI6Ee4Yv0M/IFGkVxfeyEy0UzeSrh
         YVw1Z6A9QQENp1J/2IlVIiyzNwR9G7JyDogk7T0BQhyikAy4Iage5xQkhnOBBw86Kuc2
         KEHoFbcFDcqIx0jFhGOmZHmRr3oL5sgnZlFAKD6Kb0rENYwpTn8AiHI8PZevzf8ZruUw
         b/tDo6fDsNF8yercnCzQ6GzVn3JgUQ7WBnYbs30jzuWdkOkIB0NYRlOiBC4llQEVNMYo
         RwyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id q1si519041pgg.5.2020.06.08.23.49.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Jun 2020 23:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0187473.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0596Vjqi191885;
	Tue, 9 Jun 2020 02:49:21 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 31gg81hspu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jun 2020 02:49:21 -0400
Received: from m0187473.ppops.net (m0187473.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0596Vtac192581;
	Tue, 9 Jun 2020 02:49:21 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 31gg81hsp7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jun 2020 02:49:20 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0596k9oR002782;
	Tue, 9 Jun 2020 06:49:18 GMT
Received: from b06cxnps3075.portsmouth.uk.ibm.com (d06relay10.portsmouth.uk.ibm.com [9.149.109.195])
	by ppma04fra.de.ibm.com with ESMTP id 31g2s7t687-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Jun 2020 06:49:18 +0000
Received: from d06av24.portsmouth.uk.ibm.com (mk.ibm.com [9.149.105.60])
	by b06cxnps3075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0596nFrb57671682
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 9 Jun 2020 06:49:15 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3B3AC42054;
	Tue,  9 Jun 2020 06:49:15 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DD04B42041;
	Tue,  9 Jun 2020 06:49:14 +0000 (GMT)
Received: from osiris (unknown [9.171.82.114])
	by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Tue,  9 Jun 2020 06:49:14 +0000 (GMT)
Date: Tue, 9 Jun 2020 08:49:13 +0200
From: Heiko Carstens <heiko.carstens@de.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390 <linux-s390@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH v2] s390: vdso: Use $(LD) instead of $(CC) to link vDSO
Message-ID: <20200609064913.GA6796@osiris>
References: <CAKwvOdmCrM0eUZHR12OBgyRhNPFDzZKjrpZ0DW8Cg=wqTfzDFw@mail.gmail.com>
 <20200602192523.32758-1-natechancellor@gmail.com>
 <CAKwvOdnH8rxT7y1U0d=pyD19K38KwarrwA2s+Ji7ctgg+ks_kg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnH8rxT7y1U0d=pyD19K38KwarrwA2s+Ji7ctgg+ks_kg@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216,18.0.687
 definitions=2020-06-09_01:2020-06-08,2020-06-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 clxscore=1011 bulkscore=0
 mlxlogscore=999 cotscore=-2147483648 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2004280000 definitions=main-2006090046
X-Original-Sender: heiko.carstens@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of heiko.carstens@de.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=heiko.carstens@de.ibm.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Tue, Jun 02, 2020 at 12:52:26PM -0700, Nick Desaulniers wrote:
> On Tue, Jun 2, 2020 at 12:25 PM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > Currently, the VDSO is being linked through $(CC). This does not match
> > how the rest of the kernel links objects, which is through the $(LD)
> > variable.
> >
> > When clang is built in a default configuration, it first attempts to use
> > the target triple's default linker, which is just ld. However, the user
> > can override this through the CLANG_DEFAULT_LINKER cmake define so that
> > clang uses another linker by default, such as LLVM's own linker, ld.lld.
> > This can be useful to get more optimized links across various different
> > projects.
> >
> > However, this is problematic for the s390 vDSO because ld.lld does not
> > have any s390 emulatiom support:
> >
> > https://github.com/llvm/llvm-project/blob/llvmorg-10.0.1-rc1/lld/ELF/Driver.cpp#L132-L150
> >
> > Thus, if a user is using a toolchain with ld.lld as the default, they
> > will see an error, even if they have specified ld.bfd through the LD
> > make variable:
> >
> > $ make -j"$(nproc)" -s ARCH=s390 CROSS_COMPILE=s390x-linux-gnu- LLVM=1 \
> >                        LD=s390x-linux-gnu-ld \
> >                        defconfig arch/s390/kernel/vdso64/
> > ld.lld: error: unknown emulation: elf64_s390
> > clang-11: error: linker command failed with exit code 1 (use -v to see invocation)
> >
> > Normally, '-fuse-ld=bfd' could be used to get around this; however, this
> > can be fragile, depending on paths and variable naming. The cleaner
> > solution for the kernel is to take advantage of the fact that $(LD) can
> > be invoked directly, which bypasses the heuristics of $(CC) and respects
> > the user's choice. Similar changes have been done for ARM, ARM64, and
> > MIPS.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/1041
> > Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> 
> Thanks, with this, I'm more confident that the linker flags don't change.
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
...
> > -KBUILD_CFLAGS_64 += -nostdlib -Wl,-soname=linux-vdso64.so.1 \
> > -                   -Wl,--hash-style=both
> > +ldflags-y := -fPIC -shared -nostdlib -soname=linux-vdso64.so.1 \
> > +            --hash-style=both -T

I added the --build-id flag according to commit 7a0a93c51799 ("arm64:
vdso: Explicitly add build-id option") and applied the patch.
Thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200609064913.GA6796%40osiris.
