Return-Path: <clang-built-linux+bncBCXOLN42VYIRB6W5Y2DAMGQEHIAX27I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C543B0064
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:35:54 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id a2-20020ad441c20000b0290251bb08ce61sf79055qvq.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:35:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624354554; cv=pass;
        d=google.com; s=arc-20160816;
        b=qkiv6TyjC8MbVjqEERGTLt8sdqauJkqgWjSI9QpA+unRP0fbCMSb97uHYZg82A8gNU
         og2IojkOLotUxaG7x6y470RlW+kQJVRRYfEArTGVVLtG8Zkx/lGdSHPZi0/aGgAmO0oO
         8D71zSxqBpRkFP9gOweJmXKqPqqMpPB0k0zxT2VmH45Hi2GroyRD1LkMKPh6ZJy5qA/B
         BKixymPRUmiWJPBW8xO1Rxbt64D3iegC972CWKLtsjn1kF4miCSMOufeBfO0QY/pWbiu
         8OnPd0WWFhtElesIAPzhQfq2wHhdTwuVauuNG2junp4Q3UsI1ZNeLma0sk5G/IEnSfVf
         h3jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=o9GEg49Oj1SahzyDHjZDWVm0uf3vlN76Txsx+kafDFI=;
        b=aB9cJVz9XQKiX7dpp3vlbaebqy1UAo+ffP63B3SN/qNaMn+lGGgMrntrKUhCE2r55w
         QpCgB0qv3gxOap4nrkL/n9rREBRAey8xpdVHWJ28sv0PzLprBeMhn7wPdDj0CCMmCVDM
         DBXIjtL0N7TmKsJWPUw87LeOrGKNJdsJWNVt7L+nwv2ooo5blMeueTMuZyuyF7ZHItV7
         y1s89JOxMSNtU7p83c/lLa7oL+kjGhqG533+ovBuWPJFIvhKST28WJpgkBlz/w6Vg/xM
         zNeym6/xtI3N04j9u9sMShffdSTqUDTPDAlyccJ0QxBbLVxymdnflMcqAIhAsvfUdksR
         xoKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Llm1esQE;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:in-reply-to
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o9GEg49Oj1SahzyDHjZDWVm0uf3vlN76Txsx+kafDFI=;
        b=lFAXzT8OpHCjVaRX+gLX6AlgJk+VBGluVOBOf2abX7g7afifOuHIJI9ei3zIIQI8dp
         TCtg7TyGiuuwfp5l5Q4sW6UfiwCry7Nk5rfNXAflC4ir+kVDtXz+wHQikvd4OPfPP1AT
         2hGU3onSmI59ttKp3zyQpPOhSwfLVL3xZVED5k+Q1TDesM4pEcxn2qL2gHbQIXCgryo5
         q2vtvAhj340CKrDMHJ7rEYzDb7sFGvTbt6/c7idcTi7k61erDrs4pOIeZUX/pv+USIqo
         1lWri62mUTIWfFDcohtQ1EzJCnzsB2V+VfFxZIGzgQRXaTPg0yTVDLs1XWh5oAvgtcZ+
         TBHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o9GEg49Oj1SahzyDHjZDWVm0uf3vlN76Txsx+kafDFI=;
        b=HQlYBOmYkkuwEi+6Mseqiw9kqg9PKsXhsn/e4luGHEtXdfIv+h4VywgyfYVORhRJvl
         ZRcw649osHIq/09TzciIACT/jtbq54yg1SJ3HwV/3RjudBiheQ6xrHPq9/JZSbLKS+Ad
         lxqCu13rsRmGZ+otJuZZ+yADUj8J0/DMMx/GZeZytMX3HZRLn6OfD1KKEUwlatkXOGzh
         cvZd78+Otkm3h2BRRIJw0Gg/SrhN2K69ms3BcyM4AbzUxpy5bGVuhWwYR+NtDzYhoMyF
         d5tIOqZf/cLQa6ibb0ApN8yrp9ONLBDQukivJZb87b4uJGd5d5oTWg+ncnmzFpP8Tq/F
         +gqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QuTqzBMkjWplECaq8/iXum1O8BruTwUbGCtMuQG33n5gqr/Mx
	5U0jJx0p8CB4qIEVYQdRVrA=
X-Google-Smtp-Source: ABdhPJw7zLqptjVo7gQdiHDnL4gJ4qu/xfrogvMOhqvfjsZrSaseKmQXjw2W6dW/HhaaeOsSXHzBUg==
X-Received: by 2002:a0c:f750:: with SMTP id e16mr16596955qvo.47.1624354554143;
        Tue, 22 Jun 2021 02:35:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5193:: with SMTP id c19ls9773795qtn.11.gmail; Tue, 22
 Jun 2021 02:35:53 -0700 (PDT)
X-Received: by 2002:ac8:4f15:: with SMTP id b21mr2619440qte.222.1624354553628;
        Tue, 22 Jun 2021 02:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624354553; cv=none;
        d=google.com; s=arc-20160816;
        b=gQe5/eez5ZUxkJFz9xgzaHJoINpfr/1Cnred0ZJph/9xVaNW9hBHztCd/qRQZLr74J
         DFF1M7fJ4hvjM2aHU3IEayvhA/9QtMgwh0ytQvvSCbLWqbp7wqXUi5NjulCgcnNEcaSK
         yHCl079H85XqgLZrwTPww45xsnF9Jnc8MTqziN7aniPaCtIpFfKZ3DJRjnoj5D0emMpY
         V4GmqKbcSGogCdUiEcngsYMmP7LuIAI27TCCuiLBFcbDWPVoWqPFLYo250aQPswNQc6Q
         xs83blcFKmxJgt8LGBAXO4lACdxvZkVKptie/uBwu7gMOblDVJkxeeQTLZJ8f9r+94u7
         O+vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :date:message-id:from:references:cc:to:subject:dkim-signature;
        bh=WC0tkA+LfSmIpYeI2CWlCZEalhUSsowt3maCuijtwfU=;
        b=o9bisP3njb6p4FMsYg/uChGM7lKIq1OuQulwqr1Tdl/xqWhYE/mjDZYM1HM03hgJSu
         DHcHcxw4sKTVss9D8dbGv9116ah+IqHNLlnLLFL8nOrUoOV1XfsgmLFaqdIKdSdL8Y4h
         tT3zEI1TCMxyYkk08grdak/BNs30lC5IKVO2LRoOKAtUKAU28QfbR+/ulLTSw6vgJ7jR
         mhgA24b3+JVEiO6QoKyfSJtlnIk3EORbIp1idil9DyBjj0XIIhDOZR0Y2Ro3s9ERYJ+H
         TDXNIQ4b5Hd7pdUlAXnCwj4ogSckPGoIQ++b/80HqTPLEqqh1kL0J9xwoF689SRtPDzQ
         Yd6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=Llm1esQE;
       spf=pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=oberpar@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id c15si166309qko.1.2021.06.22.02.35.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098420.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15M9XiCf123200;
	Tue, 22 Jun 2021 05:35:44 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0b-001b2d01.pphosted.com with ESMTP id 39bahpcshc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Jun 2021 05:35:44 -0400
Received: from m0098420.ppops.net (m0098420.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 15M9Xlwq123665;
	Tue, 22 Jun 2021 05:35:43 -0400
Received: from ppma06ams.nl.ibm.com (66.31.33a9.ip4.static.sl-reverse.com [169.51.49.102])
	by mx0b-001b2d01.pphosted.com with ESMTP id 39bahpcsgf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Jun 2021 05:35:43 -0400
Received: from pps.filterd (ppma06ams.nl.ibm.com [127.0.0.1])
	by ppma06ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15M9RJYx013348;
	Tue, 22 Jun 2021 09:35:41 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma06ams.nl.ibm.com with ESMTP id 3997uh9bck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Jun 2021 09:35:40 +0000
Received: from d06av21.portsmouth.uk.ibm.com (d06av21.portsmouth.uk.ibm.com [9.149.105.232])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 15M9ZbLQ8126910
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Jun 2021 09:35:38 GMT
Received: from d06av21.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id DF92852050;
	Tue, 22 Jun 2021 09:35:37 +0000 (GMT)
Received: from [9.145.95.76] (unknown [9.145.95.76])
	by d06av21.portsmouth.uk.ibm.com (Postfix) with ESMTP id EBB7252067;
	Tue, 22 Jun 2021 09:35:36 +0000 (GMT)
Subject: Re: [PATCH v2 3/3] Kconfig: add
 ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
To: Nick Desaulniers <ndesaulniers@google.com>,
        Kees Cook <keescook@chromium.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Bill Wendling <wcw@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
        Nathan Chancellor <nathan@kernel.org>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Andrew Morton <akpm@linux-foundation.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
        x86@kernel.org, Borislav Petkov <bp@alien8.de>,
        Martin Liska <mliska@suse.cz>, Marco Elver <elver@google.com>,
        Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
        linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
        Dmitry Vyukov <dvyukov@google.com>, johannes.berg@intel.com,
        linux-toolchains@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
        Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-4-ndesaulniers@google.com>
From: Peter Oberparleiter <oberpar@linux.ibm.com>
Message-ID: <78555de2-a5f7-5341-a4a0-0f39d0439939@linux.ibm.com>
Date: Tue, 22 Jun 2021 11:35:37 +0200
In-Reply-To: <20210621231822.2848305-4-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: YrLh_3Usz6N0IB0tfVCnbg5tdhsi_6et
X-Proofpoint-GUID: eIjjVl3RwxBbX08ofQ_FmyMMr_8wTQZt
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-22_05:2021-06-21,2021-06-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 mlxscore=0 clxscore=1011 spamscore=0
 mlxlogscore=791 phishscore=0 priorityscore=1501 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106220061
X-Original-Sender: oberpar@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=Llm1esQE;       spf=pass (google.com:
 domain of oberpar@linux.ibm.com designates 148.163.158.5 as permitted sender)
 smtp.mailfrom=oberpar@linux.ibm.com;       dmarc=pass (p=NONE sp=NONE
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

On 22.06.2021 01:18, Nick Desaulniers wrote:
> We don't want compiler instrumentation to touch noinstr functions, which
> are annotated with the no_profile_instrument_function function
> attribute. Add a Kconfig test for this and make PGO and GCOV depend on
> it.
> 
> If an architecture is using noinstr, it should denote that via this
> Kconfig value. That makes Kconfigs that depend on noinstr able to
> express dependencies in an architecturally agnostic way.
> 
> Cc: Masahiro Yamada <masahiroy@kernel.org>
> Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
> Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
> Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Suggested-by: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Looks good to me - thanks for resolving this problem!

Reviewed-by: Peter Oberparleiter <oberpar@linux.ibm.com>


Regards,
  Peter

-- 
Peter Oberparleiter
Linux on Z Development - IBM Germany

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/78555de2-a5f7-5341-a4a0-0f39d0439939%40linux.ibm.com.
