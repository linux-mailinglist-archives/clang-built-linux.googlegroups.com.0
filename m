Return-Path: <clang-built-linux+bncBCYL7PHBVABBB6O4Y2DAMGQE2CP6HOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C533B0052
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 11:33:46 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id u12-20020a67f94c0000b0290278a507ec3asf105138vsq.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 02:33:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624354425; cv=pass;
        d=google.com; s=arc-20160816;
        b=k2K7bX5GomUvhwnBTHPMZsp5j6Dqz8ABuYIWeJsY1InAmHQD7S2b1CjlK7LD0HIa37
         ZnLYCLTF9f1Ffan9MwJauB0xHbXjoKytGBCv7cBLLkMYaFtJ+Ji1HH/LuqBAWuoycAOX
         BW63DLku98hL4GTecfrsZekR/CiGTovvtEOrmCVG4yefyulWxuYiBVHs5U2+MK/f9/Hv
         5X9vaelRfs0DfimKj4JsSSIiwlex9CrdMcS6J2ApZjFzVxs8btmi0RRNQz1dtIbynLPg
         ikSnTWjgT5+3bQF3WktlkWjOTpabwYE3gPCmcLBBKMYCyP6jBUHPNjJrkfiomgHmIiXv
         5tkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :sender:dkim-signature;
        bh=CyGzvuZ4p7F/kZFQV69OJf5G2ozI5c7NgJ3zOif9fXg=;
        b=BvkUyIFUS+u6zNQlllTjr1NK8ruwsakXOWaR4baJXAOcYRIZUDzvfssJHHN+JVXDHQ
         KOtCCm2fZFyfWNG9g+2UfwhyNgC7v9BGdBzoRk5RQFpCLGmX7d4eDInY71FaZcVbLWM7
         ter7wmX2ZjfqycKQXmX2rSD7SbfhFa/JkaeuEgXd+IwO0ZukOyy+zdAK6naK4zhQwm3o
         3L84PyIDe8EyAov6lLNemOzhPZ4toN3GEa01dEVJKMQmlTNvlydJPSnhGrIa246NVVsA
         uMLtQz+EpXX28U+SFc4zwM5TmstpnrbOVmVULIdZG3vX4zMn97omFokSBMkeBe5hdeLH
         7/iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=B3rySooA;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CyGzvuZ4p7F/kZFQV69OJf5G2ozI5c7NgJ3zOif9fXg=;
        b=TaukG5pMdKlIkWV5HTt/MHVsOq6JwR+0kY63gYS9TVOxnffY7ltlAYCY88yHHSUIZw
         GEn/q5PGgUgLbKWKnUKgaUFmFeZOHuKenNXnm7ezbRyP0hoYBrlQ40YRol6x6UNRtn3n
         SHoYeCkApyyMcsybtyEQXTF4K7sMwUIxT1KxL4TgwvTlymf6PZ5UgFB3sSjYB7LXwWCX
         heu0VxU51kqkkY97uLhB9d30hvKoBPrZXVzy5Dc6LulXrFZrK5A5ECgWTd3szD7t80lG
         IubgWjvIN+ksctW4DaubQyqE+vYqUoPbZoubj74zPTDlc0Z9eIq94wyfzBrlV4pA+Vyy
         p/Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CyGzvuZ4p7F/kZFQV69OJf5G2ozI5c7NgJ3zOif9fXg=;
        b=LpVs0Gs88BFsedkMM5yhWcX/LVXq2AoV0gOPFjo8H0Sqb/bmqXCTCVsOBWSajRo4v7
         ZK7W8hkV67e+jDPggTkTraBZoj4oEsy57VVP5G41rd0X3C/KnC3z3yMOrUM6SLaWaY82
         eFxfAdAH5X4EqOurTt5n0cUo/0VimsxRL8FrBzlzEvPG2o5k1oFyqCFgMKaAXP5buByK
         P0X6SY+an4fpXgvb0BQA3+XOlqY6259n+ueZP2uSd7PRpc5GTILswirOTCRCkUIGG0IX
         3V6oKPeQiJb8w8vu4UvUaBDakCC9k6C6wZQG8WgT82xssSlMbhLmyCV4dflOcspE0toT
         4mqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kYF+58LOlod9z9ZX+76ri0IEKX0O3G/3NoSVHtV4U+2tKM66Q
	HY1GEHsISti9HsO9Uhoczqc=
X-Google-Smtp-Source: ABdhPJynh5kqXgRslFDFXsXUuAPU0M302xZbknOVP2NkiFSmvlfjFO6xVOHqL86Dwfq1GJ6NUJYolQ==
X-Received: by 2002:a67:cfc4:: with SMTP id h4mr16912107vsm.34.1624354425804;
        Tue, 22 Jun 2021 02:33:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:3fc1:: with SMTP id m184ls135620vka.10.gmail; Tue, 22
 Jun 2021 02:33:45 -0700 (PDT)
X-Received: by 2002:a05:6122:a1e:: with SMTP id 30mr17383696vkn.3.1624354425260;
        Tue, 22 Jun 2021 02:33:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624354425; cv=none;
        d=google.com; s=arc-20160816;
        b=P0DoAHIHSkK+ykBPCCEqSo+8t77+Qw5EwJN9BBOVmn4okUEwDBphbsHgyrb2IqVE8o
         xeYrjBFSv7HmXtKdHf0+J39IaLOCemhDVA0iQB24/3H9FaOvAXgQZLU8GI35+RTBqQFt
         LTzVMOjOi4A0kS2rzyFAGdurVpJOJONgTIGIgNqr9MW2NXcOR1qLzlHeYxwcSg8LSWqt
         upqOfQP7kWgytB2zSfwYHbAE75iBwNqlEhP9FCUMrKgndeE1kjfbkVvtDkorTiNSX40o
         Kv5AAq5TumwTO4T55KBv4WZ2UD/lR580NNEevRqcPAavmmCPv5ucS/6OeekZctoFwctj
         rdVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=q/kOB4NKVpOx4buNmAVOSPQSRCs7ghgBdjl2ofeD1UY=;
        b=Q3jm+fcCfTVd9SpojZeNEnjuTJ9HddpKl9co8fYTTvNINBw4HQMS//WrQwKYSSnNVx
         Gjk0pv0A6YxLfO4/xbSu3zshrIsM4qJY4F4o0l7WA5P8Px1KcEt+fltzxSA6HfzjiFJi
         W3EmlA+a+Au1rEFdEQOQI2JoNRvtgSAsfI50AtA13MhWYYdDffFkrR6fr2nh9/oAcaFN
         e3ob118BguudKBNlALih5cPngPzt7xjFYNary+ceR9k1TdxoV2wD43fmCJyGhMte+trF
         Y2L3ez01+uFfRavd7fqCupl/XCGAI51GlBSpxO29+PyRVdVtnKSgtwCE/LcDtKgBxaH6
         nctA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=B3rySooA;
       spf=pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=hca@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id ba24si90808vkb.1.2021.06.22.02.33.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 02:33:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15M9SEc9129533;
	Tue, 22 Jun 2021 05:33:33 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 39bct1h0hh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Jun 2021 05:33:33 -0400
Received: from m0098394.ppops.net (m0098394.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 15M9T655134078;
	Tue, 22 Jun 2021 05:33:32 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 39bct1h0gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Jun 2021 05:33:32 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.1.2/8.16.1.2) with SMTP id 15M9RbTB000559;
	Tue, 22 Jun 2021 09:33:30 GMT
Received: from b06avi18878370.portsmouth.uk.ibm.com (b06avi18878370.portsmouth.uk.ibm.com [9.149.26.194])
	by ppma03ams.nl.ibm.com with ESMTP id 3998789bf3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 22 Jun 2021 09:33:30 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06avi18878370.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 15M9W7Bn34603406
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 22 Jun 2021 09:32:07 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 32B1CAE051;
	Tue, 22 Jun 2021 09:33:27 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 0CAC4AE04D;
	Tue, 22 Jun 2021 09:33:26 +0000 (GMT)
Received: from osiris (unknown [9.145.20.128])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTPS;
	Tue, 22 Jun 2021 09:33:25 +0000 (GMT)
Date: Tue, 22 Jun 2021 11:33:24 +0200
From: Heiko Carstens <hca@linux.ibm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>,
        Bill Wendling <wcw@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Peter Oberparleiter <oberpar@linux.ibm.com>,
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
        linux-toolchains@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
        Christian Borntraeger <borntraeger@de.ibm.com>,
        linux-s390@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2 3/3] Kconfig: add
 ARCH_WANTS_NO_INSTR+CC_HAS_NO_PROFILE_FN_ATTR, depend on for GCOV and PGO
Message-ID: <YNGuZPl64IwQeF0/@osiris>
References: <20210621231822.2848305-1-ndesaulniers@google.com>
 <20210621231822.2848305-4-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210621231822.2848305-4-ndesaulniers@google.com>
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 3zDGCVJf9g2k5E222QjL_kpljCj0uR2S
X-Proofpoint-ORIG-GUID: wOSKkkZu1vnWUXVoAF3BJoqRyevFgeXb
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-22_05:2021-06-21,2021-06-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 spamscore=0
 priorityscore=1501 impostorscore=0 clxscore=1011 phishscore=0
 suspectscore=0 mlxlogscore=870 mlxscore=0 bulkscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2106220058
X-Original-Sender: hca@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=B3rySooA;       spf=pass (google.com:
 domain of hca@linux.ibm.com designates 148.163.156.1 as permitted sender)
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

On Mon, Jun 21, 2021 at 04:18:22PM -0700, Nick Desaulniers wrote:
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
> ---
> Changes V1 -> V2:
> * Add ARCH_WANTS_NO_INSTR
> * Change depdendencies to be !ARCH_WANTS_NO_INSTR || CC_HAS_NO_PROFILE_FN_ATTR
>   rather than list architectures explicitly, as per Nathan.
> * s/no_profile/no_profile_instrument_function/
> 
>  arch/Kconfig        | 7 +++++++
>  arch/arm64/Kconfig  | 1 +
>  arch/s390/Kconfig   | 1 +
>  arch/x86/Kconfig    | 1 +
>  init/Kconfig        | 3 +++
>  kernel/gcov/Kconfig | 1 +
>  kernel/pgo/Kconfig  | 3 ++-
>  7 files changed, 16 insertions(+), 1 deletion(-)

For s390:
Acked-by: Heiko Carstens <hca@linux.ibm.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNGuZPl64IwQeF0/%40osiris.
