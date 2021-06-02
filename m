Return-Path: <clang-built-linux+bncBDCN7QF72MMRB2EJ32CQMGQEFNOFUII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id AC719398A43
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 15:17:29 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id n16-20020a0568200550b029020b438b2591sf1438401ooj.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 06:17:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622639848; cv=pass;
        d=google.com; s=arc-20160816;
        b=FWLBf5UmeU6gwwe6zybBlQ2KMQ5rD31fbcgzB5apHt0YC6gJu/nA6MXNflOCZ+lwlM
         Nc5XOrsaAII1WZqArTInEd7wpxPjMH9m6W9qNjm7jD2pQDKDATYD3TKo5fDM5DYJaVmI
         Bi13LfDYAQuWjAEPBceafmFIoSA348SGJM1kVCbbvL7KHZuyRROC/1BUVOCD82cgPYir
         pb8aHRToOv1nJKXLsoCx8Nb+ObAdJ6iO5coRNBd+T4SKPppWTqL1PzqcQOXQ59IqBoX7
         IXFKt/GuX9RKI9EF+wG+0bsAPkS2Ts4qpCNeARD91wfrlZYH4OWVpX8IHFs+r8QlXD0j
         ycQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:in-reply-to:user-agent
         :date:message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=FbBJlUddlrRL81UHI8ZTqWFNhic+WDQ/8pqeI+rNlCU=;
        b=DUKdaUtB2GUFDm3A9soAs+cIccLZ3hY88JYRffYmqgn+XeCmJjEAyrlvKehxH+TXiG
         SosLk0FofGlI1dmiqgJMjq6ie9lG0AEscAF04L2D0cggdD/XieMn3aErpNzmxyjcdO2i
         8+CmYIqCXd4Pb2nlpYKkCI8xslnkayoSa4IwJZb0wpNga+IoA+qQz6hD3SN1fWix7gax
         37/bO9PXHZ9OF/FfKMIDwp3Bw/jzheFQurrzDaXBYT7BiVE92gQHE/ApQMNelFAn6z/X
         wtI7T9+HlH88J4xq+hUuaflSSvMzT30N+HWjhSW5i1xsYTQ4hSPsJo7SK3qBkh2cifjV
         mlVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Y15Phl3X;
       spf=pass (google.com: domain of stefanb@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=stefanb@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbBJlUddlrRL81UHI8ZTqWFNhic+WDQ/8pqeI+rNlCU=;
        b=TcL8fnTx8bX3d1GYEORG74uRAgFvrV81KOP6wOCV1f5Xk0bADqVV0FynIoNJdB8MAM
         YYR3o98IT6pK0UEqH2bAXmEBW/GLEsY7XHpqaKAbcYxAhK5F0VKbYV2on5c3ihAXP1nY
         HrPzMyufqulza6wl7UQu99B44H+T7lyHQ2Kiht74Ym05zsMqoTiKA4w63EKGIedoQbba
         kqH2mMO7RlwK5IMohIEOLuOcJnIwy1PMXwsyqeAfsqtEGxszwAsRp+wajzPch+wwLVhh
         bQ1WoMBjWi5cDuSmQhThsE7O+rYMMAkYPB5VXWuWUDQw+8UsYkE7ZQRDMeM6tvpNaDKz
         zcbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FbBJlUddlrRL81UHI8ZTqWFNhic+WDQ/8pqeI+rNlCU=;
        b=CZWSMp6Qb2yQrMp15w8LlbAolXsJL3Y/TFBY1Gf3m4U6rDSwD1xg2VFHWwv4kCoDGp
         7KDaFHPQbPCy8xeZiggYYLW+gbaVCUCcgtmfP03RoK+eHnzRHYCvPf3tQ0lU8MHQpaml
         2ijvpHLmqL87+oElT2d0dlPGRbyh/BhXpozfv5PS6U3QFT4UOZ3LI7Z2K+8MNCQdmK7X
         /6SB5ElQg9j3uUJ8oOIqXFRJK9+iUskAVoH8kwCJi1u0w3aqk0zMXHCl699gbdJTn3Qy
         A0xoR0+gJLzRfzTueIjuFhanBDFmrmU+JPa9Xsmitp+A1VwpWEWmPHx2vtJsQ13t4B/V
         UHXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mOheDBbOa9x03C6fS+vXhWNLwoC1CkHX9OfRrSIjFGrJOODnn
	T+E6CLGMBhiGBm9ru6CFgJU=
X-Google-Smtp-Source: ABdhPJzSshMbAtfDbI8AZKh8kNq0le4ehqJ6wNsJqsTK40x1D1GUPE3NGC8Mm7lC40yvjTRM0qkmtw==
X-Received: by 2002:a05:6820:455:: with SMTP id p21mr14199017oou.24.1622639848515;
        Wed, 02 Jun 2021 06:17:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:75cf:: with SMTP id c15ls499794otl.6.gmail; Wed, 02 Jun
 2021 06:17:28 -0700 (PDT)
X-Received: by 2002:a05:6830:34a7:: with SMTP id c39mr25381576otu.357.1622639848063;
        Wed, 02 Jun 2021 06:17:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622639848; cv=none;
        d=google.com; s=arc-20160816;
        b=FsXj3+uDpkxgvdzOoqMYoZC6oui9W+sXAOYHftD+doL8UiGBM+uqYke81b9s70dDnM
         ia8zyzs90AEyFxhLZOVqVfH9ELJcguhze4aT8HxJJHkHlvDuKbYugjQXJTqRmP75Vl07
         Nh+4VOUl72+dzgDjs9qtXuqlSpVxaSDhHM8reUwR8ZQ+JLclWzYLeF+taVYT+m2pEzUM
         OaJz2x3Tw6unuCZfiYu0BSkBeeNFbFykY8FOOG626tc3AByxauH82PscWHDAjYyd6cCP
         vSNsuMq2OT+T9DzNM+ioBlQiAvlYelgzeRDTNminUuySbz/r4cCsIy/Sjz9W0bfNVCTk
         J30g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=hrE1HMQwvTsSVuLTc73f9BBsb8VmgsasXx3FuBtdq8s=;
        b=EfwAj9RRDrNtVb4TxV96zwMyZrpXEwyinsRSFEVRwVn5r4621YAaQH9fd4fVWFG9fW
         kAk7S14P+OilTxOktifvO7jzEvnJaXCQSB0Y5zB5B7qvfx+w6VOWGGmrg6w3vfdNbiZK
         7a+4cKbYgNyDVsbWHuirlLAYR4v38qAtQ5UI2hriqiLa5ZH2aL9iaUSRrRZCr5LPCpzk
         /uuRh31GqGK8T+3EUswBZs3/o60aMALqllGqt04CfSP3NJulugROwWexuOsHXks9UmaB
         qOECEJrxvDCC3ChTCZvUekpwlSrEfWgzyApGdKBWhTlZglDZkBD6OTCcvvIplqPGGKyf
         L9GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Y15Phl3X;
       spf=pass (google.com: domain of stefanb@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=stefanb@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id k4si181oot.1.2021.06.02.06.17.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 06:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefanb@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 152DH5rn094434;
	Wed, 2 Jun 2021 09:17:26 -0400
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com [169.55.85.253])
	by mx0b-001b2d01.pphosted.com with ESMTP id 38x9c8agjb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 02 Jun 2021 09:17:26 -0400
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
	by ppma01wdc.us.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 152DCRPU015197;
	Wed, 2 Jun 2021 13:17:25 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
	by ppma01wdc.us.ibm.com with ESMTP id 38ud897nwh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 02 Jun 2021 13:17:25 +0000
Received: from b03ledav004.gho.boulder.ibm.com (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
	by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 152DHON526542582
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 2 Jun 2021 13:17:24 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 8192B78060;
	Wed,  2 Jun 2021 13:17:24 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id EA2527805F;
	Wed,  2 Jun 2021 13:17:23 +0000 (GMT)
Received: from [9.47.158.152] (unknown [9.47.158.152])
	by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTP;
	Wed,  2 Jun 2021 13:17:23 +0000 (GMT)
Subject: Re: [jarkko-linux-tpmdd:master 6/8]
 140108115232000:error:02001002:system library:fopen:No such file or
 directory:../crypto/bio/bss_file.c:69:fopen('certs/signing_key.pem','r')
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
        Jarkko Sakkinen <jarkko@kernel.org>
References: <202106022115.XEkGFxuQ-lkp@intel.com>
From: Stefan Berger <stefanb@linux.ibm.com>
Message-ID: <9583fd55-a033-d078-ede4-15e6a3986afe@linux.ibm.com>
Date: Wed, 2 Jun 2021 09:17:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
In-Reply-To: <202106022115.XEkGFxuQ-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: OkN3QqAUEuLsUXL9fEdFrvDYJBi6r4KW
X-Proofpoint-GUID: OkN3QqAUEuLsUXL9fEdFrvDYJBi6r4KW
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-06-02_07:2021-06-02,2021-06-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 mlxscore=0 priorityscore=1501 clxscore=1011 malwarescore=0 bulkscore=0
 suspectscore=0 impostorscore=0 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106020085
X-Original-Sender: stefanb@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Y15Phl3X;       spf=pass (google.com:
 domain of stefanb@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=stefanb@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=ibm.com
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

My guess is there's a key installed on this system but openssl is not=20
installed. We probably need to test for availability of the openssl tool=20
before deleting the key...

 =C2=A0=C2=A0=C2=A0 Stefan


On 6/2/21 9:02 AM, kernel test robot wrote:
> Hi Stefan,
>
> First bad commit (maybe !=3D root cause):
>
> tree:   git://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-tpmdd.=
git master
> head:   ad12c6cc5452b3c9422e5e5f33ec961ab36dac97
> commit: ec739868f34062e2180260890f44e5ab2ce52443 [6/8] certs: Trigger cre=
ation of RSA module signing key if it's not an RSA key
> config: x86_64-randconfig-a015-20210602 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project db26=
cd30b6dd65e88d786e97a1e453af5cd48966)
> reproduce (this is a W=3D1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/jarkko/linux-t=
pmdd.git/commit/?id=3Dec739868f34062e2180260890f44e5ab2ce52443
>          git remote add jarkko-linux-tpmdd git://git.kernel.org/pub/scm/l=
inux/kernel/git/jarkko/linux-tpmdd.git
>          git fetch --no-tags jarkko-linux-tpmdd master
>          git checkout ec739868f34062e2180260890f44e5ab2ce52443
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dx86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>     Can't open certs/signing_key.pem for reading, No such file or directo=
ry
>>> 140108115232000:error:02001002:system library:fopen:No such file or dir=
ectory:../crypto/bio/bss_file.c:69:fopen('certs/signing_key.pem','r')
>>> 140108115232000:error:2006D080:BIO routines:BIO_new_file:no such file:.=
./crypto/bio/bss_file.c:76:
>     unable to load certificate
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/9583fd55-a033-d078-ede4-15e6a3986afe%40linux.ibm.com.
