Return-Path: <clang-built-linux+bncBDJJJ24Q5QBBBWOD5PVAKGQE7MVWQTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FCF94C0B
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 19:52:27 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id g23sf4841395ioh.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 10:52:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566237145; cv=pass;
        d=google.com; s=arc-20160816;
        b=KfChPcrFs21RrDhNc9NNvGBdEHhjD2vrBNyrtJnN0k7PxhdUJaez/YWDz6DQxVMyrl
         uIsN68kwtjiaIuta3PqoKayPWng4FXkwt9VFkRyJsSgqJiJIw34k0R+9U4hOj9pxs8vX
         LfqQL/d2wnj+i6GKfC/l+Oh5S6QcRVTZn06imAYgrENTgj8oce5zTlNvY/vaUmhz6mfj
         XrKYJkFC2HrjSHXfxpsV8T5QnOw2MGeT2EMi8kZMoX4sfzcdEv+xGyB9bQLsUESANFTD
         LfA/lGFu6scGKs5FbCfQcgZOczgbSxc1JIdE12r/ghmjOoXrzcaByYNJoE64FGICTxrE
         YtCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date:sender
         :dkim-signature;
        bh=tiIC7V4wpFx1UKJeREiq84uUYipGREMoaaCWe2bVHRo=;
        b=fI4Ko31OxKJ2aJU2omMLsbWnu2Gz2Xx/ulD7n/KSqDZOBGOjUePOjExUtK/vj/Ii4G
         aX9c+F+yGHOygjvxWF941Ogf3mxgvPxbxNviS51yD5CjB1ueWd6ygEFwKIZxrrYrBFyA
         7dUPtc5RyE9IRVelaplYJO+DiCy8sWPnWCSZHVBwY93/QM9GF4swaD8CeyJeGK9lofKN
         lbUYL/YcN6B0SvEGPtzpwp5vaS97MeVSyk2QRCyr8AYR4fR6MpWdYFBhvaJEJgzvQC+d
         EuUmB5aw/iA25iPVmUlN7tupqzpOeoCR5Xt6rhnX+nL3D1K+3IqX8eLtgbF6O8Q/uutp
         Qq6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=naveen.n.rao@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:subject:to:cc:references:in-reply-to:mime-version
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tiIC7V4wpFx1UKJeREiq84uUYipGREMoaaCWe2bVHRo=;
        b=bTjQeYE2GLTF8eHxwcUBALba9FVouRDWIPzoolIx13m/VwBtAj1YMT/eLG8t5AbHBl
         mS8+vVd7FbhKzVtNsHZbug6IqJMG4ojNZ+8jhcrReUN5x4Mw3MrXZDfkOYkQUOONMHh6
         +zl8NmkfIQB7AKCCcZvgAO6/qOXxV11MQ/aoeDtGqlu7MbdbiWxuEG+9v9iY9kUr2RfB
         lnWIWT+mfwxyM2mHmphl/90amMsRimsdadCNIq47rzXnM/YhmHuBv6DeTC9WEbvL1gVy
         R/rvuIrVWROlfU4+AKAu14ESi3njsSGg0DamCqi9uvE9hjoI8yS2u4jcFcY8I83trSba
         7XVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:subject:to:cc:references
         :in-reply-to:mime-version:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tiIC7V4wpFx1UKJeREiq84uUYipGREMoaaCWe2bVHRo=;
        b=ie0iefEC13EqHN6dx7ETP0sla4DFZsIOaRItvqaZ1YotsV/PzWiHl1rf8lY+QCTqhy
         N1tiERdHFd0LnHPInEIGwMsUfbDQC6XgWWn4jnvJEgjxCCHkbn5kseSVE8VI/bXUXpdW
         XsNFKju0Mq7n8xMWuTLPd4qyxCaKEh+8I0OZW9YOCSlB6lRV0BRotNFy30l2wwcC46Fz
         h0slRLcKsfKeDX123rJ+s6BeXUaOE0tG13+H1zL2XUu+11ymGD51XXsAaasfA2FQSsmP
         ag95cchjreyDjXFAZNaDHtFQSJ93S8QkILOJgI5V638CRZu/sPbbQAGY5m0t9RbR3GXI
         jFaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX90Txv3NPcNUUjHO2dPxC45rp//VhHXdtFO0fgzd2OATAqYHpk
	oy2DgXWOEFTcc9wbUlKi9Rw=
X-Google-Smtp-Source: APXvYqyz2G4H+pyjUUTFoSuniddYmGUGNa7FVT9a14yPpd83/I9PxrtoW+6UOE1WyA+e99EGNQJleg==
X-Received: by 2002:a6b:4a08:: with SMTP id w8mr2494124iob.246.1566237145720;
        Mon, 19 Aug 2019 10:52:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:b893:: with SMTP id p19ls219838jam.9.gmail; Mon, 19 Aug
 2019 10:52:25 -0700 (PDT)
X-Received: by 2002:a02:cc8f:: with SMTP id s15mr28491698jap.53.1566237145270;
        Mon, 19 Aug 2019 10:52:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566237145; cv=none;
        d=google.com; s=arc-20160816;
        b=ejVzltEfGcmjFboOKLcPMzpUdg61qoAROKoCmyZ93lMNbrpLcKS442l4+PpFfLgu30
         SrWH3ulWeMR2m0VVzEealJ8TF8e1PXb4sKVJJE6QTRg+se7WMSh52vJ1CIcCw+fkUZeC
         ODygufE7FxveZ4jbe1ZqC8276r8VRKqjZydzxFA2HYbflXUaISXKoaj9d8fchxkubmhB
         7e7jPYuvd+5yILeUnWgrEzKro4cI9reH/7JuBEHyRqTUaaKOKJfcSJIEeKOFSiaaen5l
         U150ID29O8IlijyH24Zv/kFfO9H0YZua3Z9h+Cbq9CE0HkJxaFunwsgJrDMpaRg3zyby
         TuRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-transfer-encoding:user-agent:mime-version
         :in-reply-to:references:cc:to:subject:from:date;
        bh=TlgjmWOj7aNq2MixUl8gwNCMd0eCnD3Whljl4BK7Jxs=;
        b=vCFpNHE42zK7YZ2fF2LneqWGkCCruxkCKRcZWzRHGQNZGERPzFeSq9Y01eM/dTntrG
         wI5AaJOKI1oIfBCCJPIDabo99+4R8EcDzjGw0eogcY+bRmzlgCUE4OGITlADDGoXvOz1
         YSPvd2gq0kBYcwd7mq+oFrJUSEwdFzq7xKoTiTqNZIf17gi718mB9/zdCf3VrJREMg3a
         ZunISSkA1caOFebpo18be6ptb5wIURGvWnHMbFmfH05TlnamCEMYtY4cKajG7eo+Xyx4
         x3QoaeATGvV514QMNVO5jP3TZvGTbmBwIc3xJ0RF9Dxq0ovKOp2U9woqh2J6pD4mj796
         YPBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=naveen.n.rao@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id h25si677361iol.2.2019.08.19.10.52.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Aug 2019 10:52:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id x7JHlx4n077012
	for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 13:52:24 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
	by mx0a-001b2d01.pphosted.com with ESMTP id 2ufwyteddx-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 13:52:24 -0400
Received: from localhost
	by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <clang-built-linux@googlegroups.com> from <naveen.n.rao@linux.ibm.com>;
	Mon, 19 Aug 2019 18:52:21 +0100
Received: from b06cxnps4074.portsmouth.uk.ibm.com (9.149.109.196)
	by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Mon, 19 Aug 2019 18:52:16 +0100
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id x7JHqFKa25427978
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 19 Aug 2019 17:52:15 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8E4AE4C058;
	Mon, 19 Aug 2019 17:52:15 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 02FA94C040;
	Mon, 19 Aug 2019 17:52:15 +0000 (GMT)
Received: from localhost (unknown [9.85.69.174])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Mon, 19 Aug 2019 17:52:14 +0000 (GMT)
Date: Mon, 19 Aug 2019 23:22:13 +0530
From: "Naveen N. Rao" <naveen.n.rao@linux.ibm.com>
Subject: Re: [PATCH 13/16] include/asm-generic: prefer __section from
 compiler_attributes.h
To: akpm@linux-foundation.org, Nick Desaulniers <ndesaulniers@google.com>
Cc: Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Alexei Starovoitov <ast@kernel.org>,
        bpf@vger.kernel.org, clang-built-linux@googlegroups.com,
        Daniel Borkmann <daniel@iogearbox.net>,
        "David S. Miller" <davem@davemloft.net>, jpoimboe@redhat.com,
        Martin KaFai Lau <kafai@fb.com>, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
        miguel.ojeda.sandonis@gmail.com, netdev@vger.kernel.org,
        sedat.dilek@gmail.com, Song Liu <songliubraving@fb.com>, yhs@fb.com
References: <20190812215052.71840-1-ndesaulniers@google.com>
	<20190812215052.71840-13-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-13-ndesaulniers@google.com>
MIME-Version: 1.0
User-Agent: astroid/0.15.0 (https://github.com/astroidmail/astroid)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-TM-AS-GCONF: 00
x-cbid: 19081917-0016-0000-0000-000002A06F66
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19081917-0017-0000-0000-000033009ADE
Message-Id: <1566237106.8670clhnrk.naveen@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:,, definitions=2019-08-19_04:,,
 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=655 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908190189
X-Original-Sender: naveen.n.rao@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of naveen.n.rao@linux.ibm.com designates 148.163.156.1 as
 permitted sender) smtp.mailfrom=naveen.n.rao@linux.ibm.com;       dmarc=pass
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

Nick Desaulniers wrote:
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---

Acked-by: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>

- Naveen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1566237106.8670clhnrk.naveen%40linux.ibm.com.
