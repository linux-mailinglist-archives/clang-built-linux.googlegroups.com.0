Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBAHCTGEQMGQEHNQOH5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0353F7AAB
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 18:34:14 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id a186-20020a671ac30000b0290289c309d3b2sf3473266vsa.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 09:34:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629909248; cv=pass;
        d=google.com; s=arc-20160816;
        b=tNq5GX7JACbYQEEePSLUkGQ69aT2YKXRWZHEbbXrxqBIBNtRHYpaOInkYiAInhlYpy
         yYsh+ObSJtRsLE+aJerO0sgNCylOYBxmPx080q5tdg8cFjTUWIxubt44YvcMe0FsKOLr
         uQRPZrSsOvPE8fBINFExxvlXRTiSAD2eF5QgUqWYwxHVm1nQdGqEHc/Zek7CPu1gkre4
         e2qQuEb2qEKy802vp0ONs7emHaxh0gBbHS11gCnYNJVDgb8py1fbI7ZkKBs22u3cM9ML
         pIvSrrzrVwl64Iw8d+jIfuQ4XCZiaia21zS3KTVYpvYIag33AsRxVYCR7SPQIZ5P7a5Q
         uwjg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5V5ELTfGEIcsgD50x10GPdA/LnnXuE+SlzDNSPfiDzI=;
        b=PQKNr1XTx625bG/ZOnOESWfbvKBEx9lf0wSHOGCTcs+1AfN0gs/oObUTTsXXHBgQjx
         68BfH/vxBUCQcLDrQFgM7Ys945gwmNv1B2NhyfkKULOb9XSsPsQlKgy5qycwrKa0lnbT
         vr7dL4GoImx/zZVmjlx4yZQAu2XjZuqDslquGYzDaa8icMYPDBy9f643TF4e21ZYaiGF
         k5pEeZUlVbp1w8fmN238naJV7ugl5bpAlUODJvUP663ByPiXw9PhHIiYDG47zF/r7N4L
         SnbJFZ3hAxwZCZO23dEnGOpKmx6vh/alsMketULcrbRfxbl8RJRdJuwD7Q8fNX306N9b
         8i3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GbxNR4El;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5V5ELTfGEIcsgD50x10GPdA/LnnXuE+SlzDNSPfiDzI=;
        b=mRxwVALhP8GsjfVrfWTh4lHq7gk6XYPQ/5Fv/tXhsPP+4xRX6vIXLWl0XcGbSHvxR0
         TqYgffsKb6bye25X16GJPmbqwQGfYIx854bSbRR7lGrhHy1L+5D8KWFPJlAvQIVtkQMQ
         BdDRbErT/1Mks/nz76HoTKCIPu4Zz5ljBJe1xwlBeZ9miGDbiq5kYGMQGLj5GB5YDrsG
         1q4BG9iJegzhJyerT12Cy50EnnqbJbk+DLoS0Do4FJEwgv7yKUQxB7AOA1BBXFPWWuW9
         Zvg/bQ7iX4d9Skk1upaWY6LpPvsMVS8rSZSrzd1rw7qP5HuemDjSYr9/wcSjWjBq2Qym
         Qbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5V5ELTfGEIcsgD50x10GPdA/LnnXuE+SlzDNSPfiDzI=;
        b=B7iRi7LwT7BchgSy4Zs7KddQudofv3Mtqa8f/rmIb+2+sVstExC5MEm023F5VSU3Gm
         dM4ykJSm2nH/7irg/7iUyPCwS6gM4yq5Bnza3nFYhbddTj3dzSYtua+yOUrHrPC5lcof
         l9lW1dSx5W1EEup7ym/jo+aSadtSH0q2vN2JpH/x4yqg6zHyO5wX4O7kyuoOXtzR2msi
         9BCZXLLmkh9zzXn1A/xojgzD0LdWtaOvHSwJYI0Pkz1hW1mFe4NTl/L4Epc7EJIphmna
         A4H0KPFQhaK+UtcndwRVd001bBR5P0Fb1+850JMFgMFprsgprecySkz6pGcdY9dAMOL5
         wuEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KLAZXis1zwc+krpFxBG3f49Dev5rUSRAlS/DEI97hZ57NpWbF
	JpnOK1Vf6OhTNjA2yX+5HNo=
X-Google-Smtp-Source: ABdhPJwBmpPdQATunJE8wD4e/avSwbeZ9cm49eDLS6zBaZqMvKLMrlkTp735GjXwOlq56xfPluWeDg==
X-Received: by 2002:a67:ca9c:: with SMTP id a28mr2345615vsl.23.1629909248442;
        Wed, 25 Aug 2021 09:34:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:338e:: with SMTP id z136ls516839vsz.2.gmail; Wed, 25 Aug
 2021 09:34:07 -0700 (PDT)
X-Received: by 2002:a67:ec88:: with SMTP id h8mr34384183vsp.47.1629909244872;
        Wed, 25 Aug 2021 09:34:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629909244; cv=none;
        d=google.com; s=arc-20160816;
        b=Or1R9oBzqbDMEez1CWE+qcRyd/E8raPDlKu7POX21dDzFajX9AReghwtMXNrJyMUEN
         0CwdN/9LiKM+/7sVPLyjKWNvKJRDwTOow44QA8wMBPB6u+rLN1u8dGdzhFMN/7dbe/g1
         Ce0BOei8J/HlhB1SqgJ5YZDH3Kzd1OhTLWQN+sigZEXEMAm/S6alAbPmb6ycc8wUxGv8
         wor22nxIy7UE+pISRz2SIpMNiyG4cqp04V0VTdONxc9mQN+KcoPEb26r+iMG1Tqr81HV
         SUT9IPCRZRR5h1FPXIsNDe2AwwaP3Zqqe6Qutl7mZgXT+FXrr0nkFpvgbRImDCJ93Xyi
         TwVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6gejzDovBE5iuyuLz1hruEggadPtmSQG8HRcS9hcb10=;
        b=dzjCWVkaASYhOy2l7cdWOs1BEM5qLHbJTb+TyRKGBQjnbr6mToQPwAea579+cJ+1z2
         OxZYfRI3ux//RIWrr8ZlPX6wWHWIFm49i403fEyQ8lvnDAXsYavAA1a6QpeDQf7mE2kJ
         DB96eZ8wLSylKHGXmRExbBOMDLzxQ0HMtU+mICFzDtrFmNXaAQ0mm2CH042nHv5Er2Vm
         RtbrrxEZZmXRXaERBWD/tNj+JdUUcEdaWqNeyxC6I2u4tPOW8WHN7mbLHPBWLEjVuA4W
         nkGTSB5gOnsgJ//YWxTIZSNN5GiMJJKQJ9z7MINPzr7J7dnKiDxlCTOr84ddtVhrsDrN
         opDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=GbxNR4El;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id t139si15728vst.0.2021.08.25.09.34.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 09:34:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id 17so270588pgp.4
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 09:34:04 -0700 (PDT)
X-Received: by 2002:a63:705:: with SMTP id 5mr8798958pgh.265.1629909243823;
        Wed, 25 Aug 2021 09:34:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h20sm278384pfn.173.2021.08.25.09.34.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Aug 2021 09:34:03 -0700 (PDT)
Date: Wed, 25 Aug 2021 09:34:01 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Lameter <cl@gentwo.de>
Cc: Daniel Micay <danielmicay@gmail.com>,
	Christoph Hellwig <hch@infradead.org>,
	kernel list <linux-kernel@vger.kernel.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>, Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com, Linux-MM <linux-mm@kvack.org>,
	linux-kbuild <linux-kbuild@vger.kernel.org>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 0/5] Add __alloc_size() for better bounds checking
Message-ID: <202108250930.EED99F6@keescook>
References: <20210818050841.2226600-1-keescook@chromium.org>
 <YR4frlpfJQonPuKp@infradead.org>
 <CA+DvKQL6pLfK1vRzaOkEWR7DQLgTh=WZTka2L5yuS8Lf_1ZmoA@mail.gmail.com>
 <alpine.DEB.2.22.394.2108251158420.317806@gentwo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2108251158420.317806@gentwo.de>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=GbxNR4El;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52f
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 25, 2021 at 12:01:42PM +0200, Christoph Lameter wrote:
> On Thu, 19 Aug 2021, Daniel Micay wrote:
> 
> > For example, it will know that kmalloc(n) returns either NULL or an
> > allocation of size n. A simple sample program with calloc in
> > userspace:
> >
> >     #include <stdlib.h>
> >     #include <stdio.h>
> >
> >     int main(void) {
> >         char *p = calloc(64, 1);
> >         if (!p) {
> >             return 1;
> >         }
> >         printf("%zu\n", __builtin_object_size(p, 1));
> >         return 0;
> >     }
> >
> > It will also detect an out-of-bounds access via the allocation with
> > -fsanitize=object-size including with a runtime value as the index.
> >
> > It's not as useful as it should be yet because __builtin_object_size
> > must return a compile-time constant. Clang has a new
> > __builtin_dynamic_object_size that's allowed to return a value that's
> > not a compile-time constant so it can work for kmalloc(n) where n is a
> > runtime value. It might not be quite ready for use yet but it should
> > be able to make it a lot more useful. GCC also seems open to adding it
> > too.
> 
> The other complication with kmalloc etc is that the slab allocators may
> decided to allocate more bytes than needed because it does not support
> that particular allocation size. Some functions check the allocated true
> size and make use of that. See ksize().

Yup, this is known. For the current iteration, this doesn't pose a
problem since the compile-time checking has very limited scope.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108250930.EED99F6%40keescook.
