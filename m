Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ4NZ6DAMGQE5AJL4MI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 41A9F3B240D
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 01:41:57 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id b1-20020a4ac2810000b029024bec618157sf2620702ooq.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Jun 2021 16:41:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624491716; cv=pass;
        d=google.com; s=arc-20160816;
        b=sGgwioztXhAarprQ0HUUYXzrsqubOVvoUQcedSvILVct7vXGtEoXgF41IiaxS+cJtB
         qsFeQvvkLfpd98xH/7d6GDb6+tuOe3/IfnFlV2ZHOtUSDWKY8rFP55rDu4O8zE3tWnmp
         yQQ8B2FY4URFfumpUZLk1uaKRDzaKAWPVONJ0aU1QJTbD27UTOW91AsujQBygUog0S3o
         0Wy/9uNW8nvu4RRfYymk2fejBIlMWEZh/XpjXiVMLTyJTKFNJ/3IPfJxSt+fE0/ZlIsx
         oKh4aT7OKbDYqrh5HEsdAO4p7BipmzpNKF531dg+Uxq8iyg7ophZEqFuJI8EVSujEQBO
         B1Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=b9h+cjyRgY+DPFUmikt0l/YVLpgcWcJJwbRP6yGW7Kc=;
        b=TMK4ftawzSdXdeGbMRo1DacUUtOnz9NM596Jz/Dr9E+sj5Q+B5E3QqNsWl2JoBsG8+
         mpTuLyl7Secg9OhxnUmviZKHpf33WwbOQDHDfd/oOdLinZD6HxnhjSHcKTHoObb9Xduh
         ZOxjQ/Alu4Vy2vvjJBKCrYaZ3fztz7ZnJZLHpAP7xmF2eKy05vbd3ilZ3cFZmAC6xUyt
         GxbltRhXPRqi1iYFFh9Eu30c1l9hGtCKSpPMSuFltEM+uiC9eKIE32jeUTOh26enw9M9
         oI1NUV5vEm5m4msUuVm0b75zZvoivW/d8JfNRlTgVAOalI/F2A521ensSA101IU7plg5
         7Aig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GsX1V/vm";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b9h+cjyRgY+DPFUmikt0l/YVLpgcWcJJwbRP6yGW7Kc=;
        b=IVU+Kn8udofQ8QM29HiZGrDgxsfLTYEvh15S0kRQTgrdLinEf+KDHYQDZv6qnvMJh9
         mNR3jh1lr0aQ3PRFvgwBILLms61+jxQvCVL/7AANhtYj2WZGFK6qWIpnSAgvaGTlUAXV
         GDvW4t3GBIz8DXvz3Oq5ZkoidDnZq2CuvMvH4xuadoyP+CXEwPyP2kD3Os85YbRgLBn5
         lYNogKnbJSuS48ZvsTh+Upab8fP0+pvNPkwFjDr81sTP47oqMpDRENi11D2P1nO2jRS9
         1aq1XYQbDMSuqxOOGB1RHx0uQ35kmzA0opfrlLJVy6xxPrLcKYqWfaKxzfaBQcjD7j9y
         9TDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b9h+cjyRgY+DPFUmikt0l/YVLpgcWcJJwbRP6yGW7Kc=;
        b=dtn32vtzsnLWjZbwnsPjREmPgsG809Z4L83JnEMrltqDJkmdvt6b57a355NJ5sQt96
         GAdo6iJwOTzo7pK6DRtUSi1SabZWtxA/ubxqhnSY2zL4+6HSyDK57dH0lNWO978V+VOe
         nDwASiXA87Z7Ts+Yn/YNfG/qIiZ3K0DrUlvpaCtn0N9UrJNHAgAq5O3MK+ND71MstqRp
         LXiBJlBp6xUHC9V/7TWhf/+mjllY+z+FVPWX++qxWX3Fn4o8PTL20B8NvU2olmdP7hYe
         pdsvkqKKLL037LGojrvTO3EDjDCD10D+SvIQp0R7xubmP+1SsZRz524dqN+JFY43DmHH
         HjBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530rnfkf0GAqazFMih+korKjq23DdrBDBBWEtXBHNZcGMk3lLG/T
	z0ASMueh/gz3wUOmuOTOqt8=
X-Google-Smtp-Source: ABdhPJzwxLaYZqoXHuBJoVuZ1g84WoN0fig+zkR0tMbJuFPCC67k3XSsVvzvHAGAMu//R/GXv8hakw==
X-Received: by 2002:a05:6830:22d9:: with SMTP id q25mr2196798otc.98.1624491715941;
        Wed, 23 Jun 2021 16:41:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:30c1:: with SMTP id r1ls1337384otg.5.gmail; Wed, 23 Jun
 2021 16:41:55 -0700 (PDT)
X-Received: by 2002:a05:6830:1c3d:: with SMTP id f29mr2138172ote.248.1624491715582;
        Wed, 23 Jun 2021 16:41:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624491715; cv=none;
        d=google.com; s=arc-20160816;
        b=Bv43hJcVaSLpwhr/PAXRlU5EXK+YeRIrv91EadCIlro3PHceJImjx3svZmGWHXs7bb
         zjRnzC/kePyiwmk49KHxuW6J8PBlcgGtvlfXrRQZcXwqq4B6k1Q0gAU37nn6UJZ306ho
         1ynzYmDzllCZJowPoi1s7/dCGigE3CBEtYzNeOPc7VJW1zKSAwNrijXpUlhoh1PRW1As
         dfMpcMx45gUdivBQEKtsRHc6xzuIMUWcciTlXwKx4O9UW7TO4Dkux4+0O6ukfUoycdcU
         tqUO9bCtp4IhVLUmoj41JBE0FjuwyRT6yFuUkD8esLxyL/ph0/loY11IjMAka3ppaqZG
         oUEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=SLYOQLPz2uI6SWQ/3O5LK9+DJlZ8+PX8vvG7lebVXzI=;
        b=wnfpkjyxc982zJVlSf+LL8K6YIYhQqZwFhV8IBpelzXbZul++bsZqhl2Y42uSDlnZF
         C/eaRKzVcTl8985aRDjCyHO/O3sy9nssDYETxH92maKfoWVUWPqYjocPv6UpE+dB63Dy
         ZRKsX3t6A+Gc/I+1jUj8JvLt9hqB/oMxucqsZgenAmsCkKftTo/XHbulcMqs6P70cKFE
         H5Za1YjtoL6JBC4gTudOxCxJfTi3VEuvxJtZ9GUo8pA5TTd7+fdvVYx1cyXAjgbdEjBT
         Yc3etcU7xQIvn+iZfEh+vlEyFBtjJ4AY2cAW2BB8gZMTH+p4h/2VX5r9k/EPcKwtuC04
         SJEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="GsX1V/vm";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m16si126981oih.4.2021.06.23.16.41.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Jun 2021 16:41:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 40BB3611AC;
	Wed, 23 Jun 2021 23:41:54 +0000 (UTC)
Subject: Re: Build failure in -next
To: paulmck@kernel.org, aneesh.kumar@linux.ibm.com
Cc: linux-kernel@vger.kernel.org, linux-next@vger.kernel.org,
 sfr@canb.auug.org.au, elver@google.com, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com
References: <20210623223015.GA315292@paulmck-ThinkPad-P17-Gen-1>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <5b55b544-67de-871d-465c-af3c8be203c3@kernel.org>
Date: Wed, 23 Jun 2021 16:41:53 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210623223015.GA315292@paulmck-ThinkPad-P17-Gen-1>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="GsX1V/vm";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Hi Paul,

On 6/23/2021 3:30 PM, Paul E. McKenney wrote:
> Hello, Aneesh!
> 
> Yesterday evening's next-20210622 testing gave me the following
> kernel-build error:
> 
> ld: mm/mremap.o: in function `move_huge_pud':
> /home/git/linux-next/mm/mremap.c:372: undefined reference to `__compiletime_assert_395'
> 
> Bisection landed on this commit:
> 
> 257121c5aabe ("mm/mremap: convert huge PUD move to separate helper")
> 
> I have no idea how this commit relates to that error message, but
> reverting this commit on top of next-20210622 really does get rid of
> the problem.

This was reported by Naresh Kamboju last week:

https://lore.kernel.org/r/CA+G9fYsWHE5Vu9T3FV-vtHHbVFJWEF=bmjQxwaZs3uVYef028g@mail.gmail.com/

It seems to be related to the fact that older versions of clang cannot 
figure out that the HPAGE_PUD case in move_pgt_entry() is never called 
when CONFIG_TRANSPARENT_HUGE is unset so it is not eliminated, which is 
problematic because flush_pud_tlb_range() evaluates to BUILD_BUG() in 
that case, which is called within move_huge_pud().

> The following reproducer provokes this error:
> 
> tools/testing/selftests/rcutorture/bin/kvm.sh --allcpus --torture lock --configs LOCK07 --build-only --kconfig "CONFIG_DEBUG_LOCK_ALLOC=y CONFIG_PROVE_LOCKING=y" --kmake-arg "CC=clang-11"
> 
> Run the above command in the top-level directory of your -next source
> tree, and using this compiler:
> 
> $ clang-11 -v
> Ubuntu clang version 11.1.0-++20210428103817+1fdec59bffc1-1~exp1~20210428204431.166
> Target: x86_64-pc-linux-gnu
> 
> Thoughts?

Aneesh had a patch in that thread above that would resolve the issue, it 
just needs to be sent to Andrew for a fixup patch.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5b55b544-67de-871d-465c-af3c8be203c3%40kernel.org.
