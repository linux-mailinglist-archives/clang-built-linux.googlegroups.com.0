Return-Path: <clang-built-linux+bncBDJJJ24Q5QBBBZWSTCCQMGQEFFKAIWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0410138A0AD
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 11:18:32 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id d10-20020a170902cecab02900f342ad66bdsf5226207plg.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 02:18:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621502310; cv=pass;
        d=google.com; s=arc-20160816;
        b=IpyXlq5lDtboC9eFTF6vkJA3UGUFrI2hXjaAOAukeYNmiAJhKDIYwbyTFNfZpJQsfW
         efBCGlAuS2tHhR2FOHadQzsKOcaySrrOdDHcHr44mvB3DSCLt/Wvo5WgBckbCYQzBAJ1
         heiIWgxyedaBr69F8MF3192rtnIXqaW6lQlZHZlv3NIHqxttXU6C3hYfc5mJmu0LKKRD
         wIYeE8gIyJovdRhMpTy1JQQ4L8SjXcFiQ+WRWkYZWDcHMNgX+ycHGkgFE7fA2EngThJM
         ILrUCDJJzTdjPNMZGwcL9QRga4OD8iIYE+nd/WRQuXifgm4JFdU+r7JtWpPpgd5k6dQF
         4k8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:sender
         :dkim-signature;
        bh=EFeZgV212RAAKlTTPSBkM4+dH8gRDFtJmGGxfAa+7b4=;
        b=iy7a9KcqnbQd1+SaQLoyn+JTCyYrGdAYbrRPcmQU+hrlwYKWKn6m7xnK62Lf05PZX+
         kQoPOioAJyjB5Fg0vUHl3w1Os/tY2vv9rcldQU68VMYTWEXqtOMGEfPAfVbtEUojOTmP
         ZOjXmjhXCNxWOZ0SnhrbzoKjPxA+Dv6C1qI1Pg19VvEwHJW6Tf4NzG8ehd4fcxKF92HS
         D2Jg6LVnMUu7ZWorzU1BFTl5vDUMrB1WQIY1YdXzRep3k60ghpPiyZsDMBVmOYetPJV2
         ufGlotD8icO2vVx5n5Ez1N/hz2gmxxt3EoE2VZP56m1esVsJIMOjsxWrt39RjvFfW8oA
         JwKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Vcp9ME0H;
       spf=pass (google.com: domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=naveen.n.rao@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EFeZgV212RAAKlTTPSBkM4+dH8gRDFtJmGGxfAa+7b4=;
        b=Tmw2Cpry95Yy1d5FZx94hVd4pVDG4g7pqPp6TdiuWQCVPbsBmzJ+qXtxzt8mJzERzm
         A/M3YMNkiTtOLFhTqgpl+CElXuEAgFxy8wLXi65Ey6IxEwYvWWpXh791Kc6aIqsV5uNz
         uwr6cJhBbOZJ1V/beTL7P0rnQtNkpqC1vymX1zTCf8UixsvuEFvP+igTnIa+ZRfDtluB
         FjAEUbkkoHp9B2k4oseVWmQztw6bH1OqN1JyCuEMirZ3pAIvcJB8QW6Yvjpe9r83W/V9
         o8mV0pCZOeV46fokBygsKziS0KEL7FBY9xm1s3lwwqWeX/hSsC+wlySlxOn/w1gM7RVS
         fZrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EFeZgV212RAAKlTTPSBkM4+dH8gRDFtJmGGxfAa+7b4=;
        b=sKuG1v8EsTuVXS9qFb6fmBX3QK3fL+kqla2lj1Tzocl55iEISqWIJDFA+ihE28JnKC
         ZG9ZX7OOUJ1ZTE6m+iu8qTIGBgFoRuMVj6cRrX23GFqRiWDcktIuCmjZg1vRnFZWjXln
         +vpbuXEMXSMULp7+5xgP7yQDnfsxO8mSZpwaaNUu7Z8tubMsb04mt+38073+ehjP3wsU
         rcS9JDtTVCJPHlynVktu+rgDyRB4/neYuy2wezUWJ8gxmimErm43PSN3JRYPy+e2cU+X
         r8ZwZpaHshZ0d1gfVGduUuugYPSQ4RJ/RUbQNAEs9jwlbbvKHcsHCmpbFR/EoqZqU9nf
         HVSw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531LczlA6o0ZJipR1ZS+kIjRYvoDNR7Kbb5UaFLCpfbRFxjfhhnj
	ErFEvbnClM12SPW2zWn8Zog=
X-Google-Smtp-Source: ABdhPJwNrx5/VbdUtuYBWrVIBDh34DELGZbxKihQ6fQxPACcPYboQ05y1MVeW18toyZasnTc9Kv+tw==
X-Received: by 2002:a17:903:22d1:b029:f2:67be:82fb with SMTP id y17-20020a17090322d1b02900f267be82fbmr4720494plg.15.1621502310697;
        Thu, 20 May 2021 02:18:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d95:: with SMTP id v21ls1478162plo.8.gmail; Thu, 20
 May 2021 02:18:30 -0700 (PDT)
X-Received: by 2002:a17:90a:ab0c:: with SMTP id m12mr3813369pjq.179.1621502310186;
        Thu, 20 May 2021 02:18:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621502310; cv=none;
        d=google.com; s=arc-20160816;
        b=sTR4UlM5NZSAK7hPp3pRX+4aepIh0P3XpdcxQA5nU5YiyEApXi0Y95AWiNcp72Ts33
         NGPjiewM5emYBSe2CDbcap5NSQD6ebOhJcAuqoVuZFCL/keZyRzN9LKzDexZYeyE13kr
         gz8cOSZ8DTr9uNRjlvAPhQMrC6nFrMi02sxhxnHOxD7T4M7LGtw9a6EswsshvhAETu4+
         6PgiaBlzF4RBp6PbwQYfxQIm5hn5/cOiEjozuylvpHwSSOFUgwy/59h9zTUQ0/7mNqez
         vAdJwsCCw6LKLPSLpMp0LWd5ONxAgeLuiRIlwnMrbsHJjqLLtmVd5VDF8EFMi6gsSBjn
         9vyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:dkim-signature;
        bh=tleZC2hya9RBqm4qrAUzBWw8YcdKoAgMUeBDZ71H3H8=;
        b=xjW7/wYa2tpT71V1qP+7S4qEVAW5kMLrdPzwrRG/YBSqI2fX8NOkncSvCOanH89VQN
         fCsznqDnO6dXEEF7RtmHg6EeM/XL+m+o0We7Ws9tioXpVOiXn9sErHjM+hkCxDoQHj9n
         4MmzaWbR+H6GHAyWbNMz/PDMOPbkcbpUWKFJwA5fYtPBzEEvq8HVA5J2QySmb/y96b5u
         W88qBlMOQ1aG7kLplbZFZa56pqPdOBfy/811eUSMZ5hVwfGYKgsn65kF50u3gIEM+MBV
         zFCtkmKhcUkSAIU0R7qNG8XECw60o0wxrW/jifGhOyHyhyjGhX7+EKliuPCJ0459hR1h
         xXsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Vcp9ME0H;
       spf=pass (google.com: domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=naveen.n.rao@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id u24si251238plq.4.2021.05.20.02.18.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 02:18:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098393.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 14K93HYJ138017;
	Thu, 20 May 2021 05:18:20 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 38nmqygkjr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 May 2021 05:18:20 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 14K998mq008871;
	Thu, 20 May 2021 09:18:17 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma04fra.de.ibm.com with ESMTP id 38j5x81dat-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 20 May 2021 09:18:17 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 14K9IFoQ59113976
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 20 May 2021 09:18:15 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 27F03AE045;
	Thu, 20 May 2021 09:18:15 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A05AAAE053;
	Thu, 20 May 2021 09:18:14 +0000 (GMT)
Received: from localhost (unknown [9.85.120.117])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu, 20 May 2021 09:18:14 +0000 (GMT)
Date: Thu, 20 May 2021 14:48:12 +0530
From: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Subject: Re: [PATCH v2 1/2] kprobes: Allow architectures to override optinsn
 page allocation
To: anil.s.keshavamurthy@intel.com,
        Benjamin Herrenschmidt
	<benh@kernel.crashing.org>,
        Christophe Leroy <christophe.leroy@csgroup.eu>, davem@davemloft.net,
        mhiramat@kernel.org, Michael Ellerman
	<mpe@ellerman.id.au>,
        Paul Mackerras <paulus@samba.org>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org
References: <40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy@csgroup.eu>
In-Reply-To: <40a43d6df1fdf41ade36e9a46e60a4df774ca9f6.1620896780.git.christophe.leroy@csgroup.eu>
MIME-Version: 1.0
User-Agent: astroid/v0.15-23-gcdc62b30
 (https://github.com/astroidmail/astroid)
Message-Id: <1621502039.xhb8rgk83c.naveen@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: TN-9W2ygPmu9Z093LdAE_EPBFOKaiAbE
X-Proofpoint-GUID: TN-9W2ygPmu9Z093LdAE_EPBFOKaiAbE
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-05-20_01:2021-05-20,2021-05-19 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 mlxscore=0 malwarescore=0 adultscore=0 bulkscore=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 clxscore=1011
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2105200069
X-Original-Sender: naveen.n.rao@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Vcp9ME0H;       spf=pass (google.com:
 domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as permitted
 sender) smtp.mailfrom=naveen.n.rao@linux.ibm.com;       dmarc=pass (p=NONE
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

Christophe Leroy wrote:
> Some architectures like powerpc require a non standard
> allocation of optinsn page, because module pages are
> too far from the kernel for direct branches.
> 
> Define weak alloc_optinsn_page() and free_optinsn_page(), that
> fall back on alloc_insn_page() and free_insn_page() when not
> overriden by the architecture.
  ^^^^^^^^^
  overridden - courtesy of checkpatch.

> 
> Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> Acked-by: Masami Hiramatsu <mhiramat@kernel.org>
> ---
> v2: Added missing prototypes in linux/kprobes.h
> ---
>  include/linux/kprobes.h |  3 +++
>  kernel/kprobes.c        | 14 ++++++++++++--
>  2 files changed, 15 insertions(+), 2 deletions(-)

LGTM. For the series:
Reviewed-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>


- Naveen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1621502039.xhb8rgk83c.naveen%40linux.ibm.com.
