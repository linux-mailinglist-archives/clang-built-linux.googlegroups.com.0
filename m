Return-Path: <clang-built-linux+bncBCHJVF74S4BRBJHI36BQMGQEVNSCVOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 414663603DE
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 10:07:02 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id 73-20020a170902034fb02900e9a576887bsf8329059pld.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 01:07:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618474021; cv=pass;
        d=google.com; s=arc-20160816;
        b=fWa+ipi5bij2UOkBTnAO3LcLqGZnzssYStQ/nqGrenmk8GoY4YbCPd5k7vTR8hQusl
         Y3Bs3GbzwXeJEvPrnR1BKIwOX/MrLaywLZbJB97uQ7JrxRLB3ITtp+GNul+AFxMO60q6
         9CwHt9NNM4spiDbjDGhnsoA7/dyOWPwXJWLExV6O0/03xnCiohnlhf9gmWmplt3XyEAR
         vdNCFcNlYHOHTGyKKMxTh9GpT/RDrUgsXSVMFn8dyRaYnL5Ybmn4ArIxBuA32N9KfFNL
         OohDoTgpTSBny4KYuDTsjEcjpeWMMohqB+V/swqv0WDlVmdafUi0YqZFJl/m8s30Cneq
         xgxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=c3UPfs6XiwLy4m3hJGuul5RtxUpkOeT82lpBruXk3OI=;
        b=AZ77KryewMTDnpz9sHAzZXlWddD0BFi9Kak8HjMSQjZ2atwg6YFD0fc1xX8CO7iEhP
         Zr6mm3rLbYvjR9nMArw7+V5LD1pfMexLjclgNdCr+XNp8kp9zyHupaQzk5HgqRVrhBo7
         3EO6gRfQ4Uwgb+1jGXKV7VEdS8ouDfRUgVJ2jV/TvYjn/iAMHDSr3ReeX5b4mmSlJ6bZ
         v1BG/yMUomN5ThI4sdwZluAddDom2cUxawQVfmVP5yjC5ztLjYHNRHdzZkP6UlMkWcJy
         PwAZMUY37t8vEBPLxi5PGNM3RgNzQg/VX4cISzGkrxjvkW2+W5iy3tSVFn+5GUJBy1Pj
         bGbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=bOZgsQih;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c3UPfs6XiwLy4m3hJGuul5RtxUpkOeT82lpBruXk3OI=;
        b=JtQSbKpnvwtiFK2vxA3Zy8mE0vIp9AM/OaD2a+2ByOdUkk7gr3HDnCX7E9vikdph6I
         kRZseEiU9nF8f0tIdbet477oDSzVhrR7FneIijwU3MpjbCz+tityPuo6R1p2ZYfkkiSA
         hTGTP8UlhNMpOJP5+McGKqlYGZPzYZalyrHKpMXbmypLVfYQyUoeWF8WO0SGCTkE44l6
         E+FFm5pIyOk3sVq4gBIObQEi/PsiBqvHHhK9Bi6OcHnKmx+5JlSAW2V4XiRVEZlpFZwe
         R89xoXfPUo0zgWnOyAwiudycuJ/nJu+p8wKEDpQ2FXS7Im+vp4XC/8qoQZyfkkzYea6Q
         FCYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c3UPfs6XiwLy4m3hJGuul5RtxUpkOeT82lpBruXk3OI=;
        b=peABNWl/uM6zwFJzVF3AwoxZFo/jYcfRm4nZfPdSuloFNfUJGBKIQXD84AfX+JosHW
         EUfSkrCIYeJ2uyi4rqeEfid6vXC4OmOzzikQ/bg9TfuZbw9SA18tOGgkoKlASa52m7Pq
         Wuk+9IkzMMgtj+1ScrnA03FlHWEuuLlSqOOM7X6ENnbcUFXw3IEN7IwdwvuuSHFj2j4+
         FoN/5MC2t1SB5DrB3nxMflm3J7D0t75l5Mkf9b0gShR2CGiRnuOZyQODp/wiWZXrwMEN
         HI3JfEx+QrzWYwyZZdUot6feUyF/yUr7iyCPYts4Ie75HWSngMAlcX7E0Dow2RE88Dzp
         hR+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532r636HZgu7ZNM967Me0uDGdf3NOBw/DfCabGEUcwWKsL8lmhqV
	xCmtG9FTp1r7t87a7Xju7pU=
X-Google-Smtp-Source: ABdhPJwTqFFEsWMKNHiqnSa4IIpceYXfpnRGHMe5npmrzqFpbzwKTw3LYf1ze9bypQlsFn5IxnTTQw==
X-Received: by 2002:a17:90a:ec09:: with SMTP id l9mr2537402pjy.141.1618474021017;
        Thu, 15 Apr 2021 01:07:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:ef0b:: with SMTP id u11ls2185884pgh.4.gmail; Thu, 15 Apr
 2021 01:07:00 -0700 (PDT)
X-Received: by 2002:a63:6705:: with SMTP id b5mr2391013pgc.58.1618474020507;
        Thu, 15 Apr 2021 01:07:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618474020; cv=none;
        d=google.com; s=arc-20160816;
        b=xUkqiwx1zQPQpEAx04IhtkEryEkkdy2HNdMNa13vQ+9uscp3BWzqxQptyOB3QdaVDh
         lFGMVr6xSNcCsZ/0Q9WXRatq0llpEg8QL3YtgQtmBKaqtvfRuXeCKQ0kFEozfTmyP7ZX
         kA/MoRlf5f/pf9O9/NXdV3IG+kxdWT5S63QqhmXhSj6gDgckcsbO4YV+/tj8y5A5bWDr
         LD9Epf203vItMKVHXbJWz3aylHHnyzt25YtMdDy2jzNrUqTSyfAZeFWxTN6P3CAtFSEy
         hSRHliX82E6cuC7ZOcKiNi1/UgMZTAkdA/dIXl6t+vq8D5JkWQ0LULNqAmwlSpPL0xU/
         a0+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=qlxWFtVavXCd/lHzWzSrLnEFhrdIu+gCNQ7cSdIefOE=;
        b=RcC7PO3+zMgyR9EEsgvEjkFUB6tQa4VtB7In3Qjl6LvbOCT7Q1kbVIHsoeXYaN/YyN
         hqQ09aWGCcoKcrDyuvDfdA2I2rxu2HZWDA2+0NUGg0H/c6uzHcBn9A4ZBQdhqHpP1RH4
         5xPUnyuzIayOQhN9at/AAOU8t98v1rstsykewS0HDjn+nmIA8HGG2lydICDm2dANkF5I
         lDHLcEPvxJf8/tXVw20dw4RZJfa0qpcfKCwm3V8pF467G11SAcV9HCETdQPU4JxIzX2m
         XffN3WTz7je/jY+H92Fox/VkYZGWR+Qn+mK1QY7qYItXaEA0Omf5zJiEmS2LnGP8ydtg
         VfAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=bOZgsQih;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id i18si780077pju.2.2021.04.15.01.07.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 01:07:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13F84B5A132058;
	Thu, 15 Apr 2021 04:06:53 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37x46utmt3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 04:06:53 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13F84VnS133994;
	Thu, 15 Apr 2021 04:06:52 -0400
Received: from ppma04fra.de.ibm.com (6a.4a.5195.ip4.static.sl-reverse.com [149.81.74.106])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37x46utmru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 04:06:52 -0400
Received: from pps.filterd (ppma04fra.de.ibm.com [127.0.0.1])
	by ppma04fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13F85EEK011874;
	Thu, 15 Apr 2021 08:06:50 GMT
Received: from b06cxnps4075.portsmouth.uk.ibm.com (d06relay12.portsmouth.uk.ibm.com [9.149.109.197])
	by ppma04fra.de.ibm.com with ESMTP id 37u3n8a0dx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 15 Apr 2021 08:06:50 +0000
Received: from d06av25.portsmouth.uk.ibm.com (d06av25.portsmouth.uk.ibm.com [9.149.105.61])
	by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13F86lP066322744
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 15 Apr 2021 08:06:47 GMT
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 73F1011C050;
	Thu, 15 Apr 2021 08:06:47 +0000 (GMT)
Received: from d06av25.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id BA81411C064;
	Thu, 15 Apr 2021 08:06:45 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.171.63.231])
	by d06av25.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu, 15 Apr 2021 08:06:45 +0000 (GMT)
Subject: Re: [PATCH 2/2] tools: do not include scripts/Kbuild.include
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Janosch Frank <frankja@linux.ibm.com>,
        Alexei Starovoitov
 <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>, Harish <harish@linux.ibm.com>,
        John Fastabend <john.fastabend@gmail.com>,
        KP Singh <kpsingh@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Paolo Bonzini <pbonzini@redhat.com>, Paul Mackerras <paulus@samba.org>,
        Shuah Khan <shuah@kernel.org>, Song Liu <songliubraving@fb.com>,
        Yonghong Song <yhs@fb.com>, bpf@vger.kernel.org,
        clang-built-linux@googlegroups.com, kvm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org,
        linuxppc-dev@lists.ozlabs.org, netdev@vger.kernel.org
References: <20210415072700.147125-1-masahiroy@kernel.org>
 <20210415072700.147125-2-masahiroy@kernel.org>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <eb623ea6-a2f4-9692-ff3d-cb9f9b9ea15f@de.ibm.com>
Date: Thu, 15 Apr 2021 10:06:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <20210415072700.147125-2-masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: -YMTQ38-A9pZbmNZPcHayMt5HbaIwtug
X-Proofpoint-ORIG-GUID: FIconhLodZz_0nArX8fkTBP6UY0y2BNs
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-15_03:2021-04-15,2021-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1011
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 bulkscore=0
 adultscore=0 suspectscore=0 impostorscore=0 mlxscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2104060000 definitions=main-2104150053
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=bOZgsQih;       spf=pass (google.com:
 domain of borntraeger@de.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=borntraeger@de.ibm.com;       dmarc=pass (p=NONE
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


On 15.04.21 09:27, Masahiro Yamada wrote:
> Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
> scripts/Makefile.compiler"), some kselftests fail to build.
> 
> The tools/ directory opted out Kbuild, and went in a different
> direction. They copy any kind of files to the tools/ directory
> in order to do whatever they want to do in their world.
> 
> tools/build/Build.include mimics scripts/Kbuild.include, but some
> tool Makefiles included the Kbuild one to import a feature that is
> missing in tools/build/Build.include:
> 
>   - Commit ec04aa3ae87b ("tools/thermal: tmon: use "-fstack-protector"
>     only if supported") included scripts/Kbuild.include from
>     tools/thermal/tmon/Makefile to import the cc-option macro.
> 
>   - Commit c2390f16fc5b ("selftests: kvm: fix for compilers that do
>     not support -no-pie") included scripts/Kbuild.include from
>     tools/testing/selftests/kvm/Makefile to import the try-run macro.
> 
>   - Commit 9cae4ace80ef ("selftests/bpf: do not ignore clang
>     failures") included scripts/Kbuild.include from
>     tools/testing/selftests/bpf/Makefile to import the .DELETE_ON_ERROR
>     target.
> 
>   - Commit 0695f8bca93e ("selftests/powerpc: Handle Makefile for
>     unrecognized option") included scripts/Kbuild.include from
>     tools/testing/selftests/powerpc/pmu/ebb/Makefile to import the
>     try-run macro.
> 
> Copy what they want there, and stop including scripts/Kbuild.include
> from the tool Makefiles.
> 
> Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.ibm.com/
> Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
> Reported-by: Janosch Frank <frankja@linux.ibm.com>
> Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

When applying this on top of d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")

I still do get

# ==== Test Assertion Failure ====
#   lib/kvm_util.c:142: vm->fd >= 0
#   pid=315635 tid=315635 - Invalid argument
#      1	0x0000000001002f4b: vm_open at kvm_util.c:142
#      2	 (inlined by) vm_create at kvm_util.c:258
#      3	0x00000000010015ef: test_add_max_memory_regions at set_memory_region_test.c:351
#      4	 (inlined by) main at set_memory_region_test.c:397
#      5	0x000003ff971abb89: ?? ??:0
#      6	0x00000000010017ad: .annobin_abi_note.c.hot at crt1.o:?
#   KVM_CREATE_VM ioctl failed, rc: -1 errno: 22
not ok 7 selftests: kvm: set_memory_region_test # exit=254

and the testcase compilation does not pickup the pgste option.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/eb623ea6-a2f4-9692-ff3d-cb9f9b9ea15f%40de.ibm.com.
