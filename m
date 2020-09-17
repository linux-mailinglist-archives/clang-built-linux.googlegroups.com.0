Return-Path: <clang-built-linux+bncBC3ZR65BSMBBBB63RL5QKGQEKEJT2BI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E80E26CFEE
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 02:27:53 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id 6sf206555oix.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 17:27:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600302472; cv=pass;
        d=google.com; s=arc-20160816;
        b=bB9EI3pW1f9uERd++KUlwlr64KPZKyxOQZl+OH7c2iY4yIesbX5eydaa8i3x6/qHzl
         Cot+c7UV6ga7NFj0vio8O+oAM9nkCIoppDyAwWMow8JPsWLW2TZtIwoQ19gsIYbUzPP3
         EcL48Y/l5JeigaCmTwijZSXDxKXpbQw1WX/nOh/s2FFTw0Nkebb1EPzgMXDlgwPJaFkh
         23sHct0Eu/oK1ikW3D4+1S/V/80HIpssaEKTUqJEqh7njvfFa2uL7kEe93sri2eE83rW
         leinWpHh0GkE8C/vYfDsmpH8To9wLgo4oTe4eTcvZklOYPWkV1nmUNHnNNnyM4nc1ft1
         d3fQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9cvzNw4RlpnSBbKWA3BaeLcFkRQ6FZG+J4SeyBFSSmg=;
        b=s7T/6yf0DPkkEFczmQ1fSl08n9QZtt2pdyTlBaWp7COYzkDD6VbeiZqGcZtrnJzUqK
         a4YZR1gPgwYpysU8L0PFGR1AsSkE7v2yaLENZcZ4lYa1MaUCUrlx8WEW16wl82+otfG0
         WK/4wx0KlUhBNdjI+36j/ixmzk4lswgodSTy/nUqY4eDvE8MtnjPNMSbRiXZa3g+9dHP
         hB0PIxSAv32eWLfR5AugJJEEcUrqSNcCKgZtaE79xXHS7nHEWaPdzUb6NXzBi/Y6A8mK
         L1Wn74SiuOY9I+CdhRkkZqMUKDpnWQQT/8wQouwlAbErZVKnB37/PPF9Nuhh6YdIB2Qz
         dEuA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=i93QMEPw;
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9cvzNw4RlpnSBbKWA3BaeLcFkRQ6FZG+J4SeyBFSSmg=;
        b=X5Eufi7Q1ClNy/q3TdmWGNhAXS7eoWhyuif/9WFmHRqju0Zp9VNHOWwkCrmofhQgSJ
         I+cYw4wq7auuYbLemMfSHUF7Av3FlsVOSgqgtn8gS2nuskOMr09xjxXgWD0LDI/gRmww
         /y/nVO0EOcrCcHnKtIGE4xqn48kQyqRrvTGcBvDfYIrOQ/Ib5PgFvMNoRj3837fmQvjr
         1syJRdQJAasBylxNV4OGC40SwzxrpZJ/ym1hmwckTKpVszZv4fU75P2F2KUDXqYRRGzF
         ECnzfYOy0xUenSsn3JzE9sPYgBsAUVdSWJoZ/6jUsICB2y0Us3lqd2tjPB8KqVtfREoe
         QOVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9cvzNw4RlpnSBbKWA3BaeLcFkRQ6FZG+J4SeyBFSSmg=;
        b=CfTsAKfEBCpy7dqukB2qUR8pt9ObB1v/HxNUXjZGnlGZ+eMLkfGizsQXhN8AnqAzDH
         NtWZyMS03Za2hPYPuLkHU2//XucQN0Gmwm/Es+mTuLednMBZ1Ol1m7H8Gd+g/4uRTtBH
         G2zguQbFRqWTS8rz3rO21x4rP8KUnpQxaYZEvqbUDpcTiJL9Nsgxm+1GPwALd3bXfmcQ
         nNE29mOGApPW0elw41uOmk1nmjwreWWXI3LRNKVDG6FnjHBff0vvWSqwFQH8BGDR7MGq
         nw521YTKbDekvWVmL2ICZLwR8XmyQ9Ide2kQO09gCYIPTUy26n+8Sdg7ghQvwpaNre1v
         eDqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53001N2xlI2fW5VUm4oBN58Q4I6BgdkAb18NURpwU3G+RN7mCdup
	B7Wn+StIVbF+hyT6IvcEFaE=
X-Google-Smtp-Source: ABdhPJy6G/29eWw36baIM6iPofCRQGqkkhkEByR/rduNHl0tJYMeIjjtD9MuhB/SGbzUmA+8uNGMiw==
X-Received: by 2002:aca:4a89:: with SMTP id x131mr4670578oia.162.1600302471846;
        Wed, 16 Sep 2020 17:27:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:2231:: with SMTP id o46ls52292ota.11.gmail; Wed, 16 Sep
 2020 17:27:51 -0700 (PDT)
X-Received: by 2002:a9d:170c:: with SMTP id i12mr18522656ota.39.1600302471445;
        Wed, 16 Sep 2020 17:27:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600302471; cv=none;
        d=google.com; s=arc-20160816;
        b=qgEVO+6FnZRWORGeP7PO9wZOcW0ctwweJr7RxLSM5Cx8tlImZg9P03HqZAi1oLmY9C
         1c1NML/StKEVo2Pm/Ik93WBQqxn9X6uTsSVL6bwwkKibIu8krcxF8pgRfTFgg/gFnVI4
         AK2gFAL1x+plNwQPpQ7u7phhNA+GEK5qorFnoRIcz5VhMqkvmBPBrBgktr0g52iWXvcf
         QiipBnuKSDnti9zmWZhrayDyuJkGbUoFpg97k4m0ViTeo9SN5oaocpz8UTV7BzK9sAkT
         TMTWsdsf0Yu0LH6JY5xtzXis9CeXt20ekMOWoQPvk0EbA8PpJWTbCDbRzZEp2x9Ih74d
         mjlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=i5PdYeE6Lh+elNKqy+XB/jcGNPfB8It0mCAsmSO9Pw4=;
        b=L0KHjcigAr+36VEunj5quBy3oYIJfXFU+XX271rGvcyuY4t6bMtcNSri9lpbD7khM+
         /+sucRS3bCRwMswE0twa3cZP3Ium9WyP5CyCtLnQHAfE2ONe9mq3ic+akaANZl9NNBoO
         +OK6tZMFZYDIAQgKOaiyi8BZPm7npL2FtGkeXIo+VPdVPIbvYfZKOSxgmp/5y9VJFFD/
         8UoXJc3VXCcciJt7UD5lFq5/RBEr/GylDoxg3G00BNyQqRrhapHojYPRsJtPXMPN6yRl
         qBmJmXJCYBt+EtMCODWGhoR0pc1tvPLhuyr+IQz/v3bZFPBneQKRxq6iQPwseBaAG5lN
         vBRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@oracle.com header.s=corp-2020-01-29 header.b=i93QMEPw;
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates 156.151.31.85 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=oracle.com
Received: from userp2120.oracle.com (userp2120.oracle.com. [156.151.31.85])
        by gmr-mx.google.com with ESMTPS id b12si624883ots.3.2020.09.16.17.27.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 17:27:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.kravetz@oracle.com designates 156.151.31.85 as permitted sender) client-ip=156.151.31.85;
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
	by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08H0EZgc187164;
	Thu, 17 Sep 2020 00:27:27 GMT
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2120.oracle.com with ESMTP id 33j91dqqsv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 17 Sep 2020 00:27:27 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 08H0GGne106700;
	Thu, 17 Sep 2020 00:27:26 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
	by aserp3030.oracle.com with ESMTP id 33khpm84u4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 17 Sep 2020 00:27:26 +0000
Received: from abhmp0015.oracle.com (abhmp0015.oracle.com [141.146.116.21])
	by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 08H0RLEo005858;
	Thu, 17 Sep 2020 00:27:21 GMT
Received: from [192.168.2.112] (/50.38.35.18)
	by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Thu, 17 Sep 2020 00:27:21 +0000
Subject: Re: arm64: mm: move dma_contiguous_reserve() to be after
 paging_init()
To: Nick Desaulniers <ndesaulniers@google.com>, song.bao.hua@hisilicon.com
Cc: akpm@linux-foundation.org, guro@fb.com,
        linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org,
        linuxarm@huawei.com, sfr@canb.auug.org.au, will@kernel.org,
        ardb@kernel.org, clang-built-linux@googlegroups.com
References: <20200916085933.25220-1-song.bao.hua@hisilicon.com>
 <20200917001934.2793370-1-ndesaulniers@google.com>
From: Mike Kravetz <mike.kravetz@oracle.com>
Message-ID: <ccfcf5a5-79d1-6339-b4b8-33b587507807@oracle.com>
Date: Wed, 16 Sep 2020 17:27:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200917001934.2793370-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9746 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 malwarescore=0 suspectscore=0
 mlxlogscore=945 phishscore=0 mlxscore=0 adultscore=0 spamscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009170000
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9746 signatures=668679
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 suspectscore=0 mlxlogscore=953
 clxscore=1011 adultscore=0 lowpriorityscore=0 spamscore=0 mlxscore=0
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2009170000
X-Original-Sender: mike.kravetz@oracle.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@oracle.com header.s=corp-2020-01-29 header.b=i93QMEPw;
       spf=pass (google.com: domain of mike.kravetz@oracle.com designates
 156.151.31.85 as permitted sender) smtp.mailfrom=mike.kravetz@oracle.com;
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

On 9/16/20 5:19 PM, Nick Desaulniers wrote:
> It looks like that change referenced may also break arm32 boots with today's
> next?
> 
> The following allows me to boot, but I have no idea if it's incorrect or not.

Thanks Nick,

The referenced commit was pulled from Andrew's tree and subsequent versions
of next.

I'm looking into other architectures as this is dependent on where in arch
specific boot process first cma call is made.  Hopefully, there is a some
way to do this without potentially touching a bunch of arch code.
-- 
Mike Kravetz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ccfcf5a5-79d1-6339-b4b8-33b587507807%40oracle.com.
