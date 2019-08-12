Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ4DY7VAKGQE67LSY5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 011838A772
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 21:45:08 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id m30sf5747592eda.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Aug 2019 12:45:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565639107; cv=pass;
        d=google.com; s=arc-20160816;
        b=mVktLMcd7nmSzHGYzumJfrb2N3ZidQ6SA4ubyItC8NGeavANg09MJ/Jl319GoEA+EP
         N5LtRKYHHkop7Q4/gBmFe1v6gzGLqUbgm8Ni4hu4CWBa0LmeIeDdTqWhFhZnAr/8buxQ
         uTIYpYShUXWysNoOy4QPN4X7fZ4jnHWJBgKtjZuEly8djHAsnqdItlafHjtPUFu8fWLW
         roPctvu9b45F8U1GL2oSYpwgrja8okoxlGQMmw5fmyrWb8LJ8kiS+RFcL7TRG9DRSp8L
         CX9J5NoBV5XzcXzPLgOVd9ay/mA0w8l8FBTc+HCh1qAAJ9atbM/IpjLxFXLbXkbVO+U8
         ASRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=/5HzlNHKrttrK0xDxtVCBg3KQoyiJbmGRtYz8dVfck0=;
        b=PkulxNBpOD28doy9/XusfaZZFWiZUz4tmIWZ17YahatZ4mNlPqwBRPSoCyolV9IX28
         9VqVV/Zm8HBbOvsYmAlZ5tbSCgn6BFKL0N8dSynUwat7slBEi8+R7OopDb/w0iGsFmOp
         K9SmIlBamsNv8bxldWNLSlYu2gd3hKmH67spXH1NxYpHmBnhJpRqh/a2S9AgZ3FSs6R/
         rwLKOwbDiUNz0BI3z/679i8ZBWVcmY93jgUZou1avqr7XMNNsd7JZqYHVoUGPvrEcGEH
         fzhjrLcPz1V9VhD33IpYQR+FJwuJFuFXrSOrbUT/SEAeuFt9ko7ldtC+JiOit6f9fpej
         wG7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lQfWb4yF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/5HzlNHKrttrK0xDxtVCBg3KQoyiJbmGRtYz8dVfck0=;
        b=J3Fgh8oCNl6P4I0EOB3KxHcIvaAI+Otvjsh9XgHCSzlyM7zm8niKJscYd6UMbxBOJ4
         4kx1b8s9Mrn5TB9U8Um2a/czWXCAuvTS8FYB1BYPHRDjODYKB5yQ3OxZFPM/+UxyFNrZ
         6Vy518Nwn8/ONLZ1svWON+m4aTcYIC17Mzv9EJoRDTVF+5FqK6JgwZ9uPHw829peA7Xr
         3s+tyVB6Tjc580lD3l1idqBa0WDMi9xU9STGRyF9wiVEKRP6dljq1fmlSRUbfASbmNyw
         D9mszkhj/PRtVCT2yxzk3rEe6AdNpaD8Y8F6GpC2qsBjtZH72cXR7Q+Z3kVWWQXxpZeF
         NAEA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/5HzlNHKrttrK0xDxtVCBg3KQoyiJbmGRtYz8dVfck0=;
        b=VW2Uk6mIGI3EvYwR4QPVbWZZuAcW/M+2Ey7ZXOcBtVq/mIZ1ATPYtuI+5POu4zFvlp
         cTRrB1qvah2u0xVyx9klPughfNuVcrn8AoK7Hs1MCrlTVJvb8Xe80/8R8uq0YrVQ+NuY
         Fe+8U/+PwgGwKV5novwDYgVQh8JfB4VjTKBHOdDYX9OpOxS3iiwVrTooGeNSo96ziNlS
         V8WyP/JhIr/MQAJEU9Lt2+76Ts07HDrK/0NlwDWVMGnBAHz7uDKt/8YmNGnbhTjbnz7Y
         uS6AquORGYpgQNhuw9cJ25Fk9TegTdy98DnUgelWr2/djt5nUp3flCHsULVZ6GuNJ709
         Hl6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/5HzlNHKrttrK0xDxtVCBg3KQoyiJbmGRtYz8dVfck0=;
        b=aJ7W0OScVCeJpEE/MYpmbPx7MJ61NqExmBo9HYfpA4a2Q8YYgZUBQA//z90bpNTqIL
         xDorBPz62+PsNSwdiz4p70hsDNuq26x693yOmqOy495eZDraK4VsUZHK5lbTtEgwloOP
         a44oEyz0LpflhgADyUIgzFeYlIP5SLbG85QZMxbxEInMr0lWA9+vbNlr1Lew1wlBo7Q1
         RWrPVFYD6hyyANus10r9AUFDL+vqQq6pXVSOU78w2DW61XDd1wccNuHzHV/djmbwbe+d
         yWj/HDLR5tWp/C3pzydDneWxRfxDMFt5a9IXHBQakgzMllOheATz5KcMdm3XLBdoJTfd
         I0RQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVSo1swcgtcox8r+YCrygoe4WjSEnpw9GhQUG+LKPzIxFzaBDMs
	fDYU4hzz0kkrR0cRsbKaR28=
X-Google-Smtp-Source: APXvYqzEibIfm7Gi0LgsZJ3SYDR6oFYFQ7cqciNfglpKVg51K3UJXBavLAOPEE+22j+m9aaf6V0DHA==
X-Received: by 2002:a17:906:ad82:: with SMTP id la2mr33484672ejb.123.1565639107787;
        Mon, 12 Aug 2019 12:45:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:89f6:: with SMTP id h51ls2948448edh.15.gmail; Mon, 12
 Aug 2019 12:45:07 -0700 (PDT)
X-Received: by 2002:a50:ba69:: with SMTP id 38mr4881257eds.46.1565639107435;
        Mon, 12 Aug 2019 12:45:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565639107; cv=none;
        d=google.com; s=arc-20160816;
        b=a/wuGb5JDZoGZp1F4zlaIWSdMq16TT7j8HOwipYszYM1r3OmNfPBER+fOPYdR5rKRC
         /l7+I5pf7l/rtEFK0JWdLoaFMkvpHH6OpMTLJe6+UH/yPPBTJ4M5nvZom73C+LKM4U6S
         uMSFyaCO00XG+utcs5rrJ4JwgNfvUBMYPVxtmzh1wkZfAbVOJppeRk+UgGU7X92XvkXz
         njFXosT/mJ93w3D+wxcv4UjWTXloZyz1VFsRgZ7imSjybBrzrQH62EIXslioK882tGjQ
         TjO7YcglRZ4RuM+Z/JjO23y6dhlLhSBwyTb85VUpd58QDhGvwgkWjgvZ4i8gsRtA8s5x
         aV8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zbqcR8Gm7CUEaTh+RQEFIgeFFaQXE5F4/3ORKyv2UHE=;
        b=swxpRKj4JODQY81iQaiSDSw78MKj4dzOdfQH7CcpfZXsErbuAaFJrh2KqO5JJAxdTI
         D7cKy1SCtpErC80YbEdloB/TMkBJsd8+n0MIfgQrv6ItR1I6b4/dc1Jg5Xj6OaTOIz6M
         WkhrI/ppQkbcdzkHr/u7qYd8uZc5KL8k2fUFeeG14hNn9ElOeHX+iizz5f0YCzGWWF97
         umF5mms9SnXIEKErfXA17S0JU1+0/euZzIFSBLGceA7aIV5hERhp58dgi8lfrQC9KWiI
         J3pxKbGoH87hpF6NpUW/FN0uJiJphTSASlITDl3zk72JUGbvQxllm7BeOnO9USlR9Y4x
         tvFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lQfWb4yF;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m16si274762edv.2.2019.08.12.12.45.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Aug 2019 12:45:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id 207so667193wma.1
        for <clang-built-linux@googlegroups.com>; Mon, 12 Aug 2019 12:45:07 -0700 (PDT)
X-Received: by 2002:a7b:cb8e:: with SMTP id m14mr942713wmi.10.1565639106989;
        Mon, 12 Aug 2019 12:45:06 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id f17sm443561wmf.27.2019.08.12.12.45.06
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 12 Aug 2019 12:45:06 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:45:04 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Jussi Kivilinna <jussi.kivilinna@iki.fi>
Cc: Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
	James Hogan <jhogan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Vladimir Serbinenko <phcoder@gmail.com>,
	gcrypt-devel <gcrypt-devel@gnupg.org>,
	Herbert Xu <herbert@gondor.apana.org.au>
Subject: Re: [PATCH 3/5] lib/mpi: Fix for building for MIPS32 with Clang
Message-ID: <20190812194504.GA121197@archlinux-threadripper>
References: <20190812033120.43013-1-natechancellor@gmail.com>
 <20190812033120.43013-4-natechancellor@gmail.com>
 <ec4666a6-c7db-247b-de81-bb784bb9d649@iki.fi>
 <20190812171448.GA10039@archlinux-threadripper>
 <1ba05172-500b-6b42-00ad-27fb33eff070@iki.fi>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1ba05172-500b-6b42-00ad-27fb33eff070@iki.fi>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lQfWb4yF;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 12, 2019 at 10:40:49PM +0300, Jussi Kivilinna wrote:
> That's quite complicated approach. Fast and easier process would be if you
> just own the patch yourself. Libgcrypt (and target file in libgcrypt) 
> is LGPL v2.1+, so the license is compatible with kernel and you are good 
> to go with just your own (kernel DCO) signed-off-by.
> 
> -Jussi

I have gone this route as another developer pointed out that we can
eliminate all of the inline asm umul_ppmm definitions because the kernel
requires GCC 4.6 and newer and that is completely different from the
libgcrypt patches.

https://lore.kernel.org/lkml/20190812193256.55103-1-natechancellor@gmail.com/

Thanks for weighing in and cheers!
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190812194504.GA121197%40archlinux-threadripper.
