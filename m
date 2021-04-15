Return-Path: <clang-built-linux+bncBCFYN6ELYIORB3PQ36BQMGQEMQXLMBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 13365360434
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 10:25:19 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id t22-20020a17090a4496b029014cf3d7ff6esf3186758pjg.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 01:25:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618475117; cv=pass;
        d=google.com; s=arc-20160816;
        b=AuzzUust0P5ze58ckXV465BjYs2EEPUtfcBT4O3FzGtc+1AN66iK6hxCx/Ndy2pSr7
         01h6SsIC8mMrCEooVmmmZKw2+OZrjogGR4tipnXw3JuEgprCfhMaIjAvsW1GPaT1q9Qf
         8OIKRan6AWJJF9PDwc1gFa5roBagAKsZCr7NX9VHPqwbX5xa2ReXbT06e/B0fD5JbdLu
         aouLPe7PGlquidy9sZcjfoM9nwBpaTuw8hVNEsJWobZtvYFPGYVADCDf/lrOiJJqUzi0
         sXG48CqlhQJE1jty7ia9intFii0/Br7BR2gkXUdQJ6K6yvpGXnHTy2x3OZ20dxddJuv/
         Pqhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=yeVobprt6uOvCDvr/6d1a1jSlngGC7A8FgKmihmyREE=;
        b=nxjJYEeWyD2NOKcyhTH9ASmlWlaLWUDYnnWduf3yYxjA/9wGg5z2sdjx2ei1PGxUqI
         E2okYRFaYzv6REK5YxkjfK6i2Ja+wxg1p+VCtoVCCyjKBmP794ntg/syVje3Q5BfHJTf
         bBoisfPnWeFB1wIoLTd5LUdwNoV2524f8Q5cFU8egJmZ76Q10XArLANaNcaUFHw1GpVm
         V9ZLCj2NHbABYpKLxeMtIOAMVQAtnkxQdz+eAfMXulgQzbb6BrN/6C3oFtavbRW5MBDV
         3OeaJEcJZKJvM10ZNMcMul+er9UAGrge3fddicCQpqjwlu4B7Ywqd0tkeyRFtUCMXagi
         2Y2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FrLbKiWI;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yeVobprt6uOvCDvr/6d1a1jSlngGC7A8FgKmihmyREE=;
        b=n18vq2N0KGFsqBwnxfGBXJ1lqf61ePcNHx/nlD+rTnFxeZwA5xpsvrxqpZC+e6zol+
         NJqT2SuCB+th9HltS1fLGLP7TltQziLhnFU6kkmNucDQi0suQM0RLGL+hVCDdznUp6aq
         v3ebbJBN5B9NlXaic/Hn0O84NaR4LUS7IjBb2pHviWkq3aD4MTT+ayqaIHHK7FEFsonE
         RzX1+tBtoTDrCt+A7V8MYvmM0/2V0mTa1sDt/tB+53UO/HZGECzHHaaJh0NMA/AFbs1g
         zzbcjWQxjFIl1+CaZu8iChToRdY9ruO/n1U1YEfQJvAc2jff9I6E91rhD3uXlaaxflr7
         LckQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yeVobprt6uOvCDvr/6d1a1jSlngGC7A8FgKmihmyREE=;
        b=IA3lVoWSVCo22ytERi8yAb1cTtO64ZOY/CaenVEAGEO4IEY7yL+o2JxTNgvniMlbDR
         uavFIFk10Jt6QcHL9kPyQcxhDJZ3oD0EKb9a1r2jtLnZYBw17+E7UShmlIR2EmBxM/ys
         Mqp/HAqNiRGowm3Dlu+iWWFqPFuLMAB1lkrKFl1jTrmtrTEy2QYBlpcmcGTroiluRRug
         PSQtUyBFvSxovzfTHdOAxfee5vpsBiT3UBYym7H+amKejqyF37Bw1FZ/U8mdp/gFUB30
         7BkObCVdHLWy/viCW/hCk48lbFuUKE8RacCTng50rzkALNfRTiF12BD+cSShwaco0XwH
         +97w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530OEmubdFY8soJWgW7kec15ovCxKlg5+Lw2GTzh3QyGWVWmbZdW
	t4CG4PehUsNsNIDlI7AWURM=
X-Google-Smtp-Source: ABdhPJx3UfGsJwMvMyL+y6GraBk6YD1AGQURwGQcWLSY1PEFM+qnKwTTXhCY/I3CFhoaSlr9QYo2Pg==
X-Received: by 2002:a63:f303:: with SMTP id l3mr2461218pgh.263.1618475117759;
        Thu, 15 Apr 2021 01:25:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:1c5:: with SMTP id e5ls2832601plh.6.gmail; Thu, 15
 Apr 2021 01:25:17 -0700 (PDT)
X-Received: by 2002:a17:902:eccd:b029:ea:ed20:b646 with SMTP id a13-20020a170902eccdb02900eaed20b646mr2740442plh.4.1618475117162;
        Thu, 15 Apr 2021 01:25:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618475117; cv=none;
        d=google.com; s=arc-20160816;
        b=cxHTNQ544lK8+DjjpgTt+pOAXnXqkoXreYVVLodeMXkwN9gDzmTzq7iITfVi8oY9Gz
         DddLI5W4zHyt9kQXulMXPtA7m0kQn+jglmoSqOsL7UgMTQ4IHeOVaoRHBzC8UvkiSxn8
         2zEKYbLrAeh7nBJF2qfa4ijSwHDLqW4Grn5bwc3xiKEGh4CkWvm/rppxA4XlUoRhj5J1
         gj+8dBLoyUHJndJAiz7GQSClr+jcxpggSPLrEeYa5m/Z9HfQ5vY50H0+Hvis3zWSsH8/
         F/1eqaMCOMrCF/FHsYanUjddSKl7+xlU1P7T1mnnUJTIxXm9UdYnsm2nCB9uuR8OyVtN
         uHaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=/bQmWZhJFBGurEcgsfC0EuOHiXGG/UZMr42BKHCg0CM=;
        b=rwcgxbw1xkiodnxzAvAtZYJsjr+iwJtWo1q6fWEFAoQe7rFPDCRdBYesaWQGQ1sHsZ
         dW/pxK19ylIZn5u3qoJB7pT2yA3OSPFKFUw5yee4fG9SvXlvwESiNIF+G4z1aXKVooJn
         Y3wQuLirl38C8DR7Uvt6TaoybTwjSaHYJPSRjcQErmXGypJY0T9H6mCbVKJhaxHUcuGg
         LFRbP9MP7gXVOereyVyyu2WifavKqSLnvlu1fvT2vt6EEf53NrEe+0BYKyvSpJR6ZYOK
         pfnWW9NGDnwnHjvh+wpNM34ubmjv2dkMpfWdUpf6Dno0BYIa9iMZru7epeKL7cLfO2Ic
         uebw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=FrLbKiWI;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id l10si164252pjw.3.2021.04.15.01.25.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 01:25:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-116-J9KrYxAnOJi_M0oQoX46UA-1; Thu, 15 Apr 2021 04:25:14 -0400
X-MC-Unique: J9KrYxAnOJi_M0oQoX46UA-1
Received: by mail-ej1-f71.google.com with SMTP id p25-20020a1709061419b0290378364a6464so656120ejc.15
        for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 01:25:14 -0700 (PDT)
X-Received: by 2002:a17:906:fb90:: with SMTP id lr16mr2188964ejb.173.1618475113127;
        Thu, 15 Apr 2021 01:25:13 -0700 (PDT)
X-Received: by 2002:a17:906:fb90:: with SMTP id lr16mr2188956ejb.173.1618475112977;
        Thu, 15 Apr 2021 01:25:12 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:5e2c:eb9a:a8b6:fd3e? ([2001:b07:6468:f312:5e2c:eb9a:a8b6:fd3e])
        by smtp.gmail.com with ESMTPSA id bm13sm1380535ejb.75.2021.04.15.01.25.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 01:25:12 -0700 (PDT)
Subject: Re: [PATCH 2/2] tools: do not include scripts/Kbuild.include
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Janosch Frank <frankja@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Harish <harish@linux.ibm.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Paul Mackerras
 <paulus@samba.org>, Shuah Khan <shuah@kernel.org>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 bpf <bpf@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>, kvm@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Networking <netdev@vger.kernel.org>
References: <20210415072700.147125-1-masahiroy@kernel.org>
 <20210415072700.147125-2-masahiroy@kernel.org>
 <9d33ee98-9de3-2215-0c0b-cc856cec1b69@redhat.com>
 <CAK7LNAQupbmeEVR0njSciv0X9FD+MofeB2Xm=wprEdNaO4TQKQ@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <2e46231f-1d30-6a6f-c768-f34295376d0a@redhat.com>
Date: Thu, 15 Apr 2021 10:25:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNAQupbmeEVR0njSciv0X9FD+MofeB2Xm=wprEdNaO4TQKQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=FrLbKiWI;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 15/04/21 10:04, Masahiro Yamada wrote:
> On Thu, Apr 15, 2021 at 4:40 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
>> I think it would make sense to add try-run, cc-option and
>> .DELETE_ON_ERROR to tools/build/Build.include?
> 
> To be safe, I just copy-pasted what the makefiles need.
> If someone wants to refactor the tool build system, that is fine,
> but, to me, I do not see consistent rules or policy under tools/.

"Please put this in a common file instead of introducing duplication" is 
not asking for wholesale refactoring.

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2e46231f-1d30-6a6f-c768-f34295376d0a%40redhat.com.
