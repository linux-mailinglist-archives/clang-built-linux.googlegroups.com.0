Return-Path: <clang-built-linux+bncBCHJVF74S4BRB65A42BQMGQEOXKUJ5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B8B3620D9
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 15:26:20 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id x10-20020a1709029a4ab02900e71f0256besf10578602plv.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 06:26:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618579579; cv=pass;
        d=google.com; s=arc-20160816;
        b=I0lCNFAUp8vCm5bbe2fEuhzGLwj3EhrO2VL9yLpWhnYhSeYE9a0HHuwYIeR2UdeOb/
         Y/iBZ+rOrj1ZEXa2KspkBY9BnkbnwyXQhQXhzH+FTsSl0jZLxgYQRqG+mwiT13sy8s2m
         NGgj/p2ZjQH76Syrke2iQuHj/lwoTS2NJv50pKVtA3yqOLXKWNFP0uUrM1fIb4CqI1zD
         So5FpjrfR21ttErvgH0rJnPkpZ7y2g8ZFEn8S0s+lxBO2C2canREgdLzwQb4PjpFEEDy
         9XgnyF3c03YDEC7ocNmYaYeTYwHco0TpBnDAmUa37Vei2ZFQqvPsox4G/3mx0BTgDVAY
         3vpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6BxjiNCPOZV3LPcN6C0VNNQtso0OC0bSqmb/+vr4dNo=;
        b=n3MKOGaFvch6SB8UV+0Jz2E7NF/WYFRLP0EwOTVjsL9h4kgLUZlbMPllMoZ6vx0Plf
         M7ZSvNuA+Z8J+wFCuLAAdisfqChThAT7IcPLZjgDwBj2OqRowdq3tTRwrHk3Ja0e4sQ4
         pwJXJI9/J095IHuUA/fk3W8blLuzBCSJ9kTuJRxRqEQ+gRNKIyu3NCgovsRNYFINYhGY
         TAvWqy+yJLkOOvaLfkY0tVsVzTbfql9ThddtoBO+xlwztWV6EaLn/lrpj7uTAkbJFSrG
         nTI+w51u4tfS+d/PCJzRkVJb1X6jF++2c0znUG26x4fkvosXxyurJVrwf/Qi/2e50dFA
         wjQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QK8NVpZ1;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6BxjiNCPOZV3LPcN6C0VNNQtso0OC0bSqmb/+vr4dNo=;
        b=oOtdiMNbzcB8ele8YVFLVy66Vtc2ro3X7Cd1AzUi4MCvgTBIl8PMhEnaS8BTwpc6hz
         cAawmQwgT9fi2YFOLwcf3JTBQMqtNatxLMGbMnzbI/E/M0mWY+WVZ/5E54XeRBtjcLlM
         dJmyWx4AC7jnGl02ONrQCctY+jRg0mAShUymVCgbdR03cTsVwVInj1WTelHbyFe8CIbu
         B3jVsXI4aR5/j9r4UfY5OU3N83mOC4nH/eKBKn5QuKHenU9sYLIe1pR4m4bsO+GqJJ36
         f/acUhBJtrOR4T7Ta69I/RDLyFfPu/bpy4zaaNA88PtOTzn5HP0k6M4dvnDMPlJUb5PB
         CWGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6BxjiNCPOZV3LPcN6C0VNNQtso0OC0bSqmb/+vr4dNo=;
        b=YjcF7zzrYhSemfrzNfHLxGbVxD27ua+PEg5C3uCYb38y43AzYVUFcbkVMaCy0C+W3g
         eyT0AgPfEvJ+p3V76vcao7VzqvqzKR0iDdQ33KTiWiEU5oeqEUltJnunUhxJ2EiXNaQL
         sSh2xQqAp95KxKXfZT8Tx1cCzscTxR4ecb0w/UguSDK+6pyYGVFSpxn+VirjNRguqrtb
         PaRyMbPHKdp5yJjmNipWKodULSvtVgtp7HPRmqm/dKsOuPjVUvtFxOUzDnES/RmyAn5c
         On6jkxoWMlSVVB1YSqNmN2qbrQ8+tPbBL9Mv0C52WDVX6iXcV1h4mFbul2AhDxHcypTr
         XBkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330ygXrjgfPig3SZPgrDqmn8aE6cJf8J0JVakqQ1i/ZJvDDqvEq
	sn4YdWkNG9fFH3H8Vf24eLE=
X-Google-Smtp-Source: ABdhPJzYEqOJWXPQvFY/pTBdCbLU0BLsvxnuk4lpPeUBuYrFEsNrFnMNijd8Us+g+mYCzw52A/Ukwg==
X-Received: by 2002:a63:e443:: with SMTP id i3mr8321568pgk.114.1618579579534;
        Fri, 16 Apr 2021 06:26:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8184:: with SMTP id g4ls3697171pfi.4.gmail; Fri, 16 Apr
 2021 06:26:19 -0700 (PDT)
X-Received: by 2002:a05:6a00:162c:b029:22b:4491:d63a with SMTP id e12-20020a056a00162cb029022b4491d63amr8219908pfc.28.1618579579015;
        Fri, 16 Apr 2021 06:26:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618579579; cv=none;
        d=google.com; s=arc-20160816;
        b=fRwraNPEs1yO4sK0yFVOuQ6kHtGzwpWL2ZYf4dvwbOmFbNfN6Ma1Vuty0gTh/FaEj3
         dWzau0tTE0A32jUbIkM1gYe/Ho1CnaqcD19zFpzHKGPfiiEAPYhwb0uz/s5Y/FXqj61i
         1c783X3is1CSbxw5bz/+vAv1MHta7jVLQsEzkSvUGe1SNH24jh0smp3lIofW8dchXumu
         iidDZLg1a2gJbcrLvubposOH9/Hii6OAn5RypyKjwcUmaSMlhx5fm8VVZnzcM2fLhCxw
         Groajj8oMFStEjNtiC1mLn/WHeAWDJa+LOqtqRS4FYD5Ei1zutAqXwhxY+Ai5p6dtrON
         FuCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=aquu956fTIgz3+7lHAMaLfz7OxkPFtlsRwWtasPoQFk=;
        b=e5mU1WxZsIIh2UzfBqX3ltCj5H+QHfcBD2RxX8SrwZNDxsjQVCsfUUCjH+kDh1vKtw
         y3QHWPIB4cSl++094NOe1G88e1qrPnN5sMd6K5lmi0sHxJg04du2ItIblwoVyHVqGR8K
         VaoYArBWq63LJ6NO2lSUdTg3veUnAiHtBQC0AvAG4Ncnzw4+xC9hkXZuTTQAnSKTxMVT
         XQlJBZtH5w0nIUoQ95YAHt4q/hETX3SbHkKRMBkVN4XiOw7Vst25BGdbTkoY25KR27YG
         fcODOB6fNYGX5k7SopBP7tuou2+y5nL3alTshMhS4SOjP9+pXuuLokRU/OZY7T2Vkp9K
         Sp1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=QK8NVpZ1;
       spf=pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=borntraeger@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id p2si593056pli.3.2021.04.16.06.26.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 06:26:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098399.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13GD2sdn042295;
	Fri, 16 Apr 2021 09:26:14 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37y8rnvu96-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Apr 2021 09:26:13 -0400
Received: from m0098399.ppops.net (m0098399.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13GD2qfE042187;
	Fri, 16 Apr 2021 09:26:11 -0400
Received: from ppma06fra.de.ibm.com (48.49.7a9f.ip4.static.sl-reverse.com [159.122.73.72])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37y8rnvu3w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Apr 2021 09:26:11 -0400
Received: from pps.filterd (ppma06fra.de.ibm.com [127.0.0.1])
	by ppma06fra.de.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13GDNG9O019900;
	Fri, 16 Apr 2021 13:26:05 GMT
Received: from b06cxnps4074.portsmouth.uk.ibm.com (d06relay11.portsmouth.uk.ibm.com [9.149.109.196])
	by ppma06fra.de.ibm.com with ESMTP id 37u39hadvx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 16 Apr 2021 13:26:05 +0000
Received: from d06av22.portsmouth.uk.ibm.com (d06av22.portsmouth.uk.ibm.com [9.149.105.58])
	by b06cxnps4074.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13GDQ3ho46137672
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 16 Apr 2021 13:26:03 GMT
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3A9A14C052;
	Fri, 16 Apr 2021 13:26:03 +0000 (GMT)
Received: from d06av22.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id C3F3B4C044;
	Fri, 16 Apr 2021 13:26:01 +0000 (GMT)
Received: from oc7455500831.ibm.com (unknown [9.171.64.24])
	by d06av22.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Fri, 16 Apr 2021 13:26:01 +0000 (GMT)
Subject: Re: [PATCH v2] tools: do not include scripts/Kbuild.include
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Janosch Frank <frankja@linux.ibm.com>,
        Alexei Starovoitov
 <ast@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Daniel Borkmann <daniel@iogearbox.net>,
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
References: <20210416130051.239782-1-masahiroy@kernel.org>
From: Christian Borntraeger <borntraeger@de.ibm.com>
Message-ID: <ee99eb80-5711-9349-23a4-0faf8d7b60a8@de.ibm.com>
Date: Fri, 16 Apr 2021 15:26:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
In-Reply-To: <20210416130051.239782-1-masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: -nujXjQtsLSCrONtCNjn6qt7wKYvylhh
X-Proofpoint-ORIG-GUID: 7gO-O2XrzlXYQU9_QTO3narixz6-3GWN
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-16_07:2021-04-15,2021-04-16 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 phishscore=0 priorityscore=1501 malwarescore=0 mlxlogscore=999 bulkscore=0
 impostorscore=0 spamscore=0 lowpriorityscore=0 mlxscore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104060000
 definitions=main-2104160097
X-Original-Sender: borntraeger@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=QK8NVpZ1;       spf=pass (google.com:
 domain of borntraeger@de.ibm.com designates 148.163.156.1 as permitted
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



On 16.04.21 15:00, Masahiro Yamada wrote:
> Since commit d9f4ff50d2aa ("kbuild: spilt cc-option and friends to
> scripts/Makefile.compiler"), some kselftests fail to build.
> 
> The tools/ directory opted out Kbuild, and went in a different
> direction. They copy any kind of files to the tools/ directory
> in order to do whatever they want in their world.
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
> Copy what they need into tools/build/Build.include, and make them
> include it instead of scripts/Kbuild.include.
> 
> Link: https://lore.kernel.org/lkml/86dadf33-70f7-a5ac-cb8c-64966d2f45a1@linux.ibm.com/
> Fixes: d9f4ff50d2aa ("kbuild: spilt cc-option and friends to scripts/Makefile.compiler")
> Reported-by: Janosch Frank <frankja@linux.ibm.com>
> Reported-by: Christian Borntraeger <borntraeger@de.ibm.com>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

looks better.
Tested-by: Christian Borntraeger <borntraeger@de.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ee99eb80-5711-9349-23a4-0faf8d7b60a8%40de.ibm.com.
