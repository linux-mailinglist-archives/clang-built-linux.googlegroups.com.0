Return-Path: <clang-built-linux+bncBAABBAHERH6QKGQEUYT4G7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4A32A606B
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Nov 2020 10:18:58 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id j10sf20783194ybl.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 01:18:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604481537; cv=pass;
        d=google.com; s=arc-20160816;
        b=CKb/iIojnzmzeeSX9Jh5AQKO4UzH+dMyNV3ENwMCDkTM9lrmuTk7FGO12EiuLMJuuf
         En98jz7qFHLALemBKZYi72M95z1aOcovyFjNk0uppy/g+XqpcNuVXaEBEYXAWS3bNFDj
         BA3AsV3w17VyPIT02D4Weewi+nyzP8aHtNIIp1hv14NV0Bj5+Mi74ZkfgLd44nD7sxXR
         FVnSsYNQD+h16HZ3J+WV14nAbB0QVZhtvg3DKE+OMCkg2m1956pSh7qHjLIkw4mMqDJ5
         9FrWWA7gFUZKmIiDv5d/YYs6uMpY5DqbVqHuyTfR+H/daSnYTV1ntX8iSrcT8s9hwH0Z
         cUBQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=qhb17XhZZ8YNrrrP33qE8r1lr2azUr6fmi/jatPvrRQ=;
        b=jjrKwEpHF0rQFwz/tQVZJRi3ixB0Z6peeNBijgsGabEMIFuQDSrtWXrCxC2okEVjoK
         GsY5595VArVoRSwOLxHFFHekUHYcUgJlBjdfHMlFk0g6xsVR6wGs1EgDpMdPMl6w4HwW
         j2fzn1uNDtyFJSlcmMQukGlhBPO3zrHHqzU38Rs2PnzVIGSUwitXGE+SGULSteGVinKW
         b04psvsr/8C59S70fNdZ9S2sHeioSbF3GBntQ32AcxirwIAXjmvNR979QJmDqINhtcoo
         1HMLEPHQhohhpJhRGf0k6WnetIsbSrQEwP12ukSIzXlZQdF482G0K5gDJ0JxgAqzOfQm
         H5Uw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Pj3AZwkt;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qhb17XhZZ8YNrrrP33qE8r1lr2azUr6fmi/jatPvrRQ=;
        b=cKkD0qsMA7fDTdNW+F+odTPtCN7N9NQwNZqxmBzwkpVLiUieZxovV3TSQThjWqEcpt
         98od/HuoLPX/i8+6J9nBGzlMlA4tfFYYCJGutjiizXdwfCFRjzmXhBh8PKdcNRSoSKy+
         wnnGEO8fG73MTnCLcnT7P8byGrYn+NjaZABTbSp3Lky08QwGdq8lndkVFk+oHEbI5cqz
         kPH+9aG7YM5UO3XCfD5sUwPnts8cM1DISIDeyJcYtzMsSaoYjHqkziNFNpDt9JXNnOZf
         6tv+8WCumC7cJnxC8whf+lKCAZQhNX2kaaMO2e4hShQfBLiO21JEpYYUutMg8KyxrZjC
         s07Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qhb17XhZZ8YNrrrP33qE8r1lr2azUr6fmi/jatPvrRQ=;
        b=tMMCZC/3EUEsbcaltpY36k14Z8Re5k/AjPd5oTibnt22N8tWHgNhhekcUa2BPI/WIW
         o3+ViGdAnQEvHqF1We0SsGS/lkYy1Eqx3Ex2on8a40PHZ2g6bQGHjyp9QcvitLZAKzs0
         tHEnXE/VGAqZaU7ulzDcgT+9xxhnHxknPVe2lvRUf93W2I6g24RbcwN80apCc5L8fQO+
         LAoZKF0Yd8y2FLNC8F8MXCEou83rPdp2nxHTNvIWtbRrxJYfnW8OreWNfwwSBGxcxj/b
         750wIjbOAR6cUDwOD11STSwasTaWYjfAl3IpzFdtWU9pAy+i3F3ZaOELHU+WihmERKm9
         tc8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eQ6LZ7dlkPRszxCx15mETzPuTWb4fcxloMHhcN4RbCB+hz1fF
	tH0nTaJ8K7A+amvn8pM72bM=
X-Google-Smtp-Source: ABdhPJy7+k3fpE3gGmAgrktMmFwU1fisXANxYShbG2wjHrUc49szXBDMAmckQUQMJXW1J9DytLDLyg==
X-Received: by 2002:a25:b7d3:: with SMTP id u19mr7463341ybj.339.1604481537139;
        Wed, 04 Nov 2020 01:18:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:84c4:: with SMTP id x4ls606029ybm.6.gmail; Wed, 04 Nov
 2020 01:18:56 -0800 (PST)
X-Received: by 2002:a25:10c5:: with SMTP id 188mr35360548ybq.181.1604481536601;
        Wed, 04 Nov 2020 01:18:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604481536; cv=none;
        d=google.com; s=arc-20160816;
        b=vTeuq/U41QJhLO09uwZLAX3w3RTUb+OtFSQMiSU5QsLfosUthwlxRJ3j91lOaOUThG
         fYsy4pwptAMxM1FeXFp7YjMyHon1f+vtS0YtDpQqAhEx2VEWqfjSj1v25rQ1Nk2v0Gc2
         XI7YL60WDrH2/DCYe+7+bOeEbeh3VruIN3MHNmTKhCGkl+VF4LFu3qUzhS/m1Q+sxoXP
         yq4boDD0iVan3MosCYMfbMaEq0KewazpQwV+51G2JMpsqhPdEV0Ctslew3J65fCmZZPW
         Gw7a6lsESFJKv2donuZSPP2bVfpYaD120mbxg/lOLIyrYZGYtvZtiUfpVb8zH9fK3xCs
         EW7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Kodq/LWw0MNTRbdIREhTCnz9wF8HuVqdZz6l81U4ZYM=;
        b=aXyw5Z4UEScX1yjF3WClvodFRRXZeQxV6qb7dTRCCezZJPHw2K0jTrXnRAM9g51RMM
         dur1merryj07PptBz7WbT9iuOxq7wr/yumubHwZRWVhN2JwYR9YmB6Qb6QP70+OYBfh1
         DEtyffuA3ueMGsmhJsoigMrtzqaGltytn9NFOhlJqP4f4PGjQvVPq56yzMsI3v/FCyNr
         y3y3si8gny2XekJjMfCRYPdMUDkzfTPcT5onz2/pNj8n5OodXQ4pwZfrtXC+vI0db0Cx
         X4pb8MNj5TO5pFYKyXyjtlD+t5Y7nOei4onUeAFHqfsSTslRJ6Yzn1w2SZ8sG3D4XYk7
         Ge+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Pj3AZwkt;
       spf=pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=gor@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id q4si131729ybk.3.2020.11.04.01.18.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2020 01:18:56 -0800 (PST)
Received-SPF: pass (google.com: domain of gor@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 0A49357v182368;
	Wed, 4 Nov 2020 04:18:51 -0500
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34krkq9xa6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Nov 2020 04:18:51 -0500
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id 0A493bwq184889;
	Wed, 4 Nov 2020 04:18:51 -0500
Received: from ppma06fra.de.ibm.com (48.49.7a9f.ip4.static.sl-reverse.com [159.122.73.72])
	by mx0a-001b2d01.pphosted.com with ESMTP id 34krkq9x8n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Nov 2020 04:18:50 -0500
Received: from pps.filterd (ppma06fra.de.ibm.com [127.0.0.1])
	by ppma06fra.de.ibm.com (8.16.0.42/8.16.0.42) with SMTP id 0A49CQ0I009115;
	Wed, 4 Nov 2020 09:18:48 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma06fra.de.ibm.com with ESMTP id 34h01kj4cr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 04 Nov 2020 09:18:48 +0000
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (b06wcsmtp001.portsmouth.uk.ibm.com [9.149.105.160])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 0A49Ik4m61735330
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 4 Nov 2020 09:18:46 GMT
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 58302A4062;
	Wed,  4 Nov 2020 09:18:46 +0000 (GMT)
Received: from b06wcsmtp001.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 95C22A4054;
	Wed,  4 Nov 2020 09:18:45 +0000 (GMT)
Received: from localhost (unknown [9.145.163.252])
	by b06wcsmtp001.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Wed,  4 Nov 2020 09:18:45 +0000 (GMT)
Date: Wed, 4 Nov 2020 10:18:43 +0100
From: Vasily Gorbik <gor@linux.ibm.com>
To: kernel test robot <lkp@intel.com>
Cc: Josh Poimboeuf <jpoimboe@redhat.com>,
        Masami Hiramatsu <mhiramat@kernel.org>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com, Borislav Petkov <bp@alien8.de>,
        Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
        linux-tip-commits@vger.kernel.org, x86 <x86@kernel.org>
Subject: Re: [PATCH 1/1] x86/tools: Use tools headers for instruction decoder
 selftests
Message-ID: <your-ad-here.call-01604481523-ext-9352@work.hours>
References: <patch-1.thread-59328d.git-59328d9dc2b9.your-ad-here.call-01604429777-ext-1374@work.hours>
 <202011041702.EIrDb4hS-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202011041702.EIrDb4hS-lkp@intel.com>
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.312,18.0.737
 definitions=2020-11-04_06:2020-11-04,2020-11-04 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 adultscore=0 suspectscore=0 spamscore=0 mlxscore=0
 phishscore=0 bulkscore=0 clxscore=1011 lowpriorityscore=0 impostorscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2011040068
X-Original-Sender: gor@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Pj3AZwkt;       spf=pass (google.com:
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

On Wed, Nov 04, 2020 at 05:11:28PM +0800, kernel test robot wrote:
> Hi Vasily,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on tip/x86/core]
> [also build test ERROR on v5.10-rc2 next-20201103]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Vasily-Gorbik/x86-tools-Use-tools-headers-for-instruction-decoder-selftests/20201104-043600
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 238c91115cd05c71447ea071624a4c9fe661f970
> config: x86_64-randconfig-a005-20201104 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 1fcd5d5655e29f85e12b402e32974f207cfedf32)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/ab4952becdfae8a76a6f0e0fb4ec7d078e80d5d6
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Vasily-Gorbik/x86-tools-Use-tools-headers-for-instruction-decoder-selftests/20201104-043600
>         git checkout ab4952becdfae8a76a6f0e0fb4ec7d078e80d5d6
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from arch/x86/tools/insn_sanity.c:19:
> >> tools/arch/x86/lib/insn.c:72:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    if (peek_nbyte_next(insn_byte_t, insn, i) != prefix[i])
>                        ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:115:6: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>            b = peek_next(insn_byte_t, insn);
>                ^
>    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
>    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
>                                    ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:140:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    b = peek_next(insn_byte_t, insn);
>                        ^
>    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
>    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
>                                    ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:145:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    if (unlikely(insn->prefixes.bytes[3])) {
>                        ^
>    tools/arch/x86/lib/insn.c:157:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    b = peek_next(insn_byte_t, insn);
>                        ^
>    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
>    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
>                                    ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:171:6: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>            b = peek_next(insn_byte_t, insn);
>                ^
>    tools/arch/x86/lib/insn.c:34:28: note: expanded from macro 'peek_next'
>    #define peek_next(t, insn)      peek_nbyte_next(t, insn, 0)
>                                    ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:174:20: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn_byte_t b2 = peek_nbyte_next(insn_byte_t, insn, 1);
>                                     ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:187:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                            b2 = peek_nbyte_next(insn_byte_t, insn, 2);
>                                 ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:189:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                            b2 = peek_nbyte_next(insn_byte_t, insn, 3);
>                                 ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:197:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                            b2 = peek_nbyte_next(insn_byte_t, insn, 2);
>                                 ^
>    tools/arch/x86/lib/insn.c:32:9: note: expanded from macro 'peek_nbyte_next'
>            ({ if (unlikely(!validate_next(t, insn, n))) goto err_out; __peek_nbyte_next(t, insn, n); })
>                   ^
>    tools/arch/x86/lib/insn.c:245:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>            op = get_next(insn_byte_t, insn);
>                 ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:265:8: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    op = get_next(insn_byte_t, insn);
>                         ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:297:9: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    mod = get_next(insn_byte_t, insn);
>                          ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:359:22: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                            insn->sib.value = get_next(insn_byte_t, insn);
>                                              ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:410:31: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                            insn->displacement.value = get_next(signed char, insn);
>                                                       ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:415:7: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                                             get_next(short, insn);
> --
>                                           ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:448:26: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->moffset2.value = get_next(int, insn);
>                                           ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:467:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate.value = get_next(short, insn);
>                                            ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:472:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate.value = get_next(int, insn);
>                                            ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:490:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate1.value = get_next(short, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:494:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate1.value = get_next(int, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:498:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate1.value = get_next(int, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:500:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate2.value = get_next(int, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:518:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate1.value = get_next(short, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:522:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate1.value = get_next(int, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:531:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>            insn->immediate2.value = get_next(unsigned short, insn);
>                                     ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:568:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate.value = get_next(signed char, insn);
>                                            ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:572:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate.value = get_next(short, insn);
>                                            ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:576:27: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate.value = get_next(int, insn);
>                                            ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:580:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate1.value = get_next(int, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:582:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate2.value = get_next(int, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
>    tools/arch/x86/lib/insn.c:602:28: warning: implicit declaration of function 'unlikely' [-Wimplicit-function-declaration]
>                    insn->immediate2.value = get_next(signed char, insn);
>                                             ^
>    tools/arch/x86/lib/insn.c:29:9: note: expanded from macro 'get_next'
>            ({ if (unlikely(!validate_next(t, insn, 0))) goto err_out; __get_next(t, insn); })
>                   ^
> >> arch/x86/tools/insn_sanity.c:128:19: warning: implicit declaration of function 'ARRAY_SIZE' [-Wimplicit-function-declaration]
>            tmp = fgets(buf, ARRAY_SIZE(buf), input_file);
>                             ^
>    37 warnings generated.
>    /usr/bin/ld: /tmp/insn_sanity-8655a9.o: in function `insn_get_prefixes':
> >> insn_sanity.c:(.text+0x1bd): undefined reference to `unlikely'
> >> /usr/bin/ld: insn_sanity.c:(.text+0x203): undefined reference to `unlikely'
>    /usr/bin/ld: insn_sanity.c:(.text+0x24d): undefined reference to `unlikely'
>    /usr/bin/ld: insn_sanity.c:(.text+0x30f): undefined reference to `unlikely'
>    /usr/bin/ld: insn_sanity.c:(.text+0x353): undefined reference to `unlikely'
>    /usr/bin/ld: /tmp/insn_sanity-8655a9.o:insn_sanity.c:(.text+0x38e): more undefined references to `unlikely' follow
>    /usr/bin/ld: /tmp/insn_sanity-8655a9.o: in function `main':
> >> insn_sanity.c:(.text+0x13cf): undefined reference to `ARRAY_SIZE'
>    /usr/bin/ld: /tmp/insn_sanity-8655a9.o: in function `__insn_get_emulate_prefix':
>    insn_sanity.c:(.text+0x1cc1): undefined reference to `unlikely'
>    /usr/bin/ld: insn_sanity.c:(.text+0x1cef): undefined reference to `unlikely'
>    /usr/bin/ld: insn_sanity.c:(.text+0x1d1f): undefined reference to `unlikely'
>    /usr/bin/ld: insn_sanity.c:(.text+0x1d47): undefined reference to `unlikely'
>    /usr/bin/ld: insn_sanity.c:(.text+0x1d6f): undefined reference to `unlikely'
>    clang-12: error: linker command failed with exit code 1 (use -v to see invocation)

Right, this is expected. The patch is based on jpoimboe/objtool/core,
which has extra commits.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/your-ad-here.call-01604481523-ext-9352%40work.hours.
