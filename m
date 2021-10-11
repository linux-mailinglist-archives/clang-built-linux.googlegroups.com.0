Return-Path: <clang-built-linux+bncBCYL7PHBVABBB2EWSCFQMGQEHUPQNYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 31D50428A4E
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 12:01:14 +0200 (CEST)
Received: by mail-oi1-x23c.google.com with SMTP id x145-20020aca3197000000b002986e47af95sf3647302oix.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Oct 2021 03:01:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1633946473; cv=pass;
        d=google.com; s=arc-20160816;
        b=prDKxUwx4/pMaShHR3qXBgY0h+CBkN8dvlEQAisE0PEOhdUsxPR9l9gDhXQFHPVYBK
         erliyeiGGEBwcDZgeVixS43ALDW1BNSkmAVXVi31pRxJ2vNyaK6mfuHaeZrrzIkTa8kz
         5fsqhqLmWXuAS8gOTP8ijUGYaR35KoYJ/lQ7QtWUHSsijQ1wYlAG8Ep8oa8HOKQjF0eQ
         d0IvehINt3/G9Qh/TvmR33BDtEW86Lge4fVGvEXUV+NIrKyNNIzliT2sHJNWOA8h/yR3
         8WkfqldrZmXSCBcueblC5XmMOf1sirJ7ztTsUAfelvgKkxy7dKG6PL9evhOL7iqbOeXj
         eXig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=m7WT553WrgTzXOhL/JaxjPfvYWSKprsDyCP4wfbAn3Y=;
        b=xCJ3c5+y8Zq05paO8fQ6KeHcuFQcws7UgXhHLBEyA2FT6nBVclZzURgFjZR6WefqRV
         4fecSIDkzVCaow8pXSvguDomT7FuK9dOmOUGLnqcmtPanbYh708d22VYZ18PyGL1jthm
         aeOA4WWEk48wI563bsNXEUPuOn83RTfhoLg+C+k6+Vzvnv0qjB68RVQMuVisKosaiS/j
         0EFhpwKetMCVLsHNKkBstWQFkC4rYRgrGGdDQw6YmpRNpTlXqZAxsA3gW2f06Yi7zStG
         PcU7JsahHOaQ4hVaNpZPeq5MunYRj4pqg2GgrXXdB11Q9iueRKyDkPwyTO+aTiTxVn3+
         RLnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=GmGL0WOz;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=m7WT553WrgTzXOhL/JaxjPfvYWSKprsDyCP4wfbAn3Y=;
        b=XK1nq0Ytcc3WHU3oH9oqbKzVRJpXmnVTIA5xgDjDkc8+uCdV5OkVsBnJPJ9Qxncmql
         Qo6+ILlZAh7qOz+ACOiQuhK3GH6ZhnuBT20U4BQDiZdlrIZOZpq68XlsGBxBtyZ+ed9e
         HbMlI2nHsLXJi5IcS5Kb3Vaw+FHss7drIDOzwoXfucHC5pu/0KOaxjs5cAWbUDyAHf1Y
         pnky2e+/mT8gIL2byu7YnNXj/E0onv+X9V/VwwXNm9ENbZz/zjq8ylxI+S6Ctyll/Nho
         oOFy4Id4q+k1Ep+m+30qLZ075T12PUp0bwJKis2KzIYdalpOZUMif2/yfV/6vYQQM6Ph
         /FPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=m7WT553WrgTzXOhL/JaxjPfvYWSKprsDyCP4wfbAn3Y=;
        b=VtXrwYMKzIQkVH/gGt65RH5wPZyWmHs9c5uKy7YecJ3YE+0gTCwaVaDGr7J0c2L0Xd
         WAtwqzouDWEYkhi87NQSffcKMhAJIxZxR1gBTkAbA8EQugKHZUU0B+BDNWKs98eh+cHp
         HnkcwH1aPoaH7KIvNMgAKDHH4pwNfpaojNs22io7BuFmQRM3dHY7yVy0zKX76Z5Be6jN
         XDr/zcQ9WDnCZinqmB2VWOwYMpaQLAFkU2D8+ZwHJKUeOyf0BHHbiIOBrRH33MZg2vDD
         C8VnwHB4t8WTgE/+XCTb5JdbjZ9+3VAwAK88WRpA5TbtGqvnLDxC73lXGoXPRbirfwXh
         GzyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532g+EirEkBBDcKbubHmkDlr3jTGIXWPCbb985lJDbMBlld12lSv
	nqW+qaemPC4KJ2Ep4HT+0Wg=
X-Google-Smtp-Source: ABdhPJwzGQMzRhhBzPVZgfq+4G39IlwGFhY2+ydOeln+7qaP+aCR+lYXt9dG916TKzKpFkZx7wVTOA==
X-Received: by 2002:a05:6830:3151:: with SMTP id c17mr20263397ots.372.1633946473094;
        Mon, 11 Oct 2021 03:01:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:19e7:: with SMTP id k94ls2900798otk.7.gmail; Mon, 11 Oct
 2021 03:01:12 -0700 (PDT)
X-Received: by 2002:a05:6830:56d:: with SMTP id f13mr19728872otc.382.1633946472635;
        Mon, 11 Oct 2021 03:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1633946472; cv=none;
        d=google.com; s=arc-20160816;
        b=DqcmvHF7rv2ev/2IaZD0U07hHS5XyVJKGOkZuMtaS0C6pH/PiKk9KYpIVslaU7Izse
         eWQ8jTA/xVaiDCKLhM9bkMb7MbnPhptzNwqEAzujjN4vbyWoDEsHWDvTrMI6zjW6GUrU
         SrpsisFLsgvivV8caqfqgynsRuLR1GoRy4TVnvPHWSiJW49NsnfCdm99xz7lMambheM8
         2lR1qyFKZNcu7QVukKMIkrNXapx2RgLIk/zLSxPYMqjmZUeiD/WibaR6mZSU5JkYLCMs
         WXxuXY4c2qKaSgTVGrnM7wTsv/q2ppunOvBN6pG1Ly79wrpeGHdz3rYD/Qn0Hxg6bu8t
         oauA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WCNQW008KqRadTwMEqOJX2IJ4+dVZVQvodrIMlZrvdQ=;
        b=CuwsJoEIA6CE7CjlfSa8pD8BsooVAdU0sz3LjwEjeYp6Rzs8VlLj3JC2g1KNA2eG/q
         3rknYEntk3btqafUNCTwu4aZDlD1GAALbMopRlI8FU3eVx5Fxp4LOCRviF9pP2SBfJvM
         p+IUbh24QD5qZEaGrVLfo6tcZWhg5XRV97Yk/omUaBMBBDZb6flXxw/UbSCyjVmHnJd9
         +WWdLxG0EI42/x72RrFgS8RABefnvLkZYAqiGSXnAA1If73ERsd0zF5qvbFk03A64z9m
         jowSFmzTZc99tplbu4QlLBjcEihielrQFpOO23ZKp9NdlA29hQ8OAIkq5ENdLcDPhHDu
         P37A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=GmGL0WOz;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id v21si507846oto.0.2021.10.11.03.01.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Oct 2021 03:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098413.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 19B938RY021282;
	Mon, 11 Oct 2021 06:01:12 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 3bmj9s13ku-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Oct 2021 06:01:11 -0400
Received: from m0098413.ppops.net (m0098413.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 19B9S7Fu030037;
	Mon, 11 Oct 2021 06:01:11 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0b-001b2d01.pphosted.com with ESMTP id 3bmj9s13k0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Oct 2021 06:01:11 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 19B9vmlt021154;
	Mon, 11 Oct 2021 10:01:09 GMT
Received: from b06cxnps4076.portsmouth.uk.ibm.com (d06relay13.portsmouth.uk.ibm.com [9.149.109.198])
	by ppma06ams.nl.ibm.com with ESMTP id 3bk2bhvj5n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Oct 2021 10:01:09 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 19BA0pHq60490126
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Mon, 11 Oct 2021 10:00:51 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id A2C7A11C069;
	Mon, 11 Oct 2021 10:00:51 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 22A0B11C073;
	Mon, 11 Oct 2021 10:00:51 +0000 (GMT)
Received: from osiris (unknown [9.145.33.245])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Mon, 11 Oct 2021 10:00:51 +0000 (GMT)
Date: Mon, 11 Oct 2021 12:00:49 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Naresh Kamboju <naresh.kamboju@linaro.org>
Cc: llvm@lists.linux.dev, linux-s390@vger.kernel.org,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        open list <linux-kernel@vger.kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Alexander Egorenkov <egorenar@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        Vasily Gorbik <gor@linux.ibm.com>,
        Andreas Krebbel <krebbel@linux.ibm.com>,
        Ulrich Weigand <Ulrich.Weigand@de.ibm.com>,
        Jonas Paulsson <paulsson@linux.vnet.ibm.com>
Subject: Re: clang-13: s390/kernel/head64.S:24:17: error: invalid operand for
 instruction
Message-ID: <YWQLUd+BQ1Cc88HG@osiris>
References: <CA+G9fYuqwJD5bFO74vG6Mvbbt1G8rxzd_NDHg-gtOZ6rPjeu3A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+G9fYuqwJD5bFO74vG6Mvbbt1G8rxzd_NDHg-gtOZ6rPjeu3A@mail.gmail.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: IkMHF_JJLk0yR1ir2y9ttGHU4E_89xur
X-Proofpoint-ORIG-GUID: 4joU-_84x3xGn-j9pomuJqH9vVMSAvf1
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-11_03,2021-10-07_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 mlxlogscore=853 clxscore=1011 mlxscore=0 adultscore=0 bulkscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110110057
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=GmGL0WOz;       spf=pass (google.com:
 domain of hca@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=hca@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

On Mon, Oct 11, 2021 at 11:47:42AM +0530, Naresh Kamboju wrote:
> [Please ignore this email if it is already reported ]
> 
> Following s390 builds failed due to warnings / errors.
> 
> metadata:
>     git_describe: v5.15-rc5
>     git_repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>     git_short_log: 64570fbc14f8 (\"Linux 5.15-rc5\")
>     target_arch: s390
>     toolchain: clang-13
> 
> 
> Fail (2861 errors) s390 (tinyconfig) with clang-nightly
>   @ https://builds.tuxbuild.com/1zL35IUSGhDGeVuyIrAp7eyzEUi/
> Fail (2861 errors) s390 (tinyconfig) with clang-13
>   @ https://builds.tuxbuild.com/1zL35Hn7wjErKsLDM6zAgh27BYJ/
> Fail (4112 errors) s390 (allnoconfig) with clang-13
>   @ https://builds.tuxbuild.com/1zL35HR60hSFvBmAcYJvKHm8Lko/
> Fail (4112 errors) s390 (allnoconfig) with clang-nightly
>   @ https://builds.tuxbuild.com/1zL35DTlrX9qRGCtGqgtmmMDjnQ/
> Fail (23048 errors) s390 (defconfig) with clang-13
>   @ https://builds.tuxbuild.com/1zL35DE2KWQUPxbbXeTbwIJaWXS/
> Fail (23045 errors) s390 (defconfig) with clang-nightly
>   @ https://builds.tuxbuild.com/1zL35EgeQfWQDXDupp4itkUO5At/
> 
> 
> Build errors log:
> ----------------
> arch/s390/kernel/head64.S:24:17: error: invalid operand for instruction
>  lctlg %c0,%c15,.Lctl-.LPG1(%r13) # load control registers
>                 ^
> arch/s390/kernel/head64.S:40:8: error: invalid operand for instruction
>  lpswe .Ldw-.(%r13) # load disabled wait psw

You need to pass LLVM_IAS=0 on the make command line on s390 since
commit f12b034afeb3 ("scripts/Makefile.clang: default to LLVM_IAS=1").

LLVM's integrated assembler doesn't seem to work well when compiling
the kernel for s390 yet.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YWQLUd%2BBQ1Cc88HG%40osiris.
