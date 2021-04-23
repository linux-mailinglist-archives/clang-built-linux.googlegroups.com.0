Return-Path: <clang-built-linux+bncBCI27E5CQECRBIFARCCAMGQENDNSKRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C2F3689A6
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 02:09:05 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id v63-20020a252f420000b02904ecfc17c803sf10832783ybv.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Apr 2021 17:09:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619136544; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+z/kI/sVJKz3DvcB0N0bgsvSThO1UU8is/ohLFe2YAYmK5A4V2nrba2kP3bzcp4Jr
         /lQxX5wiepPVk+sVzo6+KBqiN49UUUSSN6i4BRODnYbMoOSCqa5HUkl/bZ8aau1tf/+c
         eiYBovnbIFDQZqD7gTNm9f02L9OA2GFSTEF5icmIKqShx0cv3raERmnWzYoQ53hAGJCo
         5kI/jtF1VtECdrZGNuS1w/NIGRXFVvUiXkC6bCAbeMOKR3PIQJ06Fp8LVqmWMcUSticq
         0H36ZK8qQNXkLamJ9B4BXdxkXpDKKuRHV47zw9tB8EDx3g78JHWOGJISs2GA7MOTD/mj
         KdBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=GVHXkC65dV2FMg8PnMb3kXUfCU08CQ1liN8ZR6chHYc=;
        b=mA925yhC2sT1r8tT/pNyO89xsgYy2MFFI2hLubOaU48JZpsx+z//nwkmhpLxPOM0YR
         G1yZGuHIF6ywUN67AIoWbimOgtIXIsRsfA2wqHrHoAC1RA4QEq4mETDnydsu9DV2qXhT
         RmTyirBR5PktVY/nkHLe38qF1fA8jCJGGRloy8foyQ4vpHMpUXRYsH1fnCmgmSQjWLbQ
         T5hCIwTXeZh2ga0A3hg/DCS7EI3n/vkc1Hz+YLpd3RlHZVwx7cTPtbSeLLqF/6XcoF7K
         8+G5qPp7j0woWrH+KEBtiUnc5GSXIwQJtd7eY+iJHQJG/Wn06pn+pDHdss6SYsekaFjC
         0qmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MOieLRc2;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GVHXkC65dV2FMg8PnMb3kXUfCU08CQ1liN8ZR6chHYc=;
        b=T1ix+ahEQOO+S5ULJNQ5vGkertHXRaY+bL8wVmA6mktWlkLkrpnFM7+9EF7s0sGX+Q
         IvQ1Ubh+PSmOStz3+5t3t3W+I8bck6HnGeRKxYXfb4Zp8JG8NDMndx/H4gdS9uqIHscV
         7ylbZxPY7oRsU4tUx5XG0ZKhq3GGTBUy8HE0vW6V9kWxjZrEpx5/2Md6VmAO1TRw/8kN
         XlWyvB3In6KumjoIZXexsGwGAd0O7jhx/cV4bIJ+gpL1Ct96QH0DYdRzvktJgV/TZoOE
         Pk0zS8EbB3CWBDmGmkaU9u5w5pOFxOCnlwqQZXdTdIl1zJG1vNAEerZoqdu7R/z8lA2x
         UFuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GVHXkC65dV2FMg8PnMb3kXUfCU08CQ1liN8ZR6chHYc=;
        b=fe/pYXAFGPaUIebsP8+Z9uQYLEjJfG93YQO+i4dJjZKkfX/vTpgrzBsvkdXR2baF0x
         YDMfw3LZBrLIxBllIaF9K6QzIE9fMIdWoUuYZtoUOHZ0nBeI+L6qe16KPwD+//H6RXFC
         y2aU1ToDf2t5EEjWfI7T3H10mxl8svrJhiVRXS/H8VoMNyeSco76CoDWmBMWcxb3KJYj
         tk61n5R8tl/B/R8wpCJw8hOL+GWohO3rUGiJsP2DR70ck0ZITTEvCjtg3E3Bte6c8/Mh
         gRgw0qlU7CIIETO3BR5dA+WJlPiRJyWL/32XXuX6bgBQI5FoBEa8c6/hutRnSclW6U1d
         BKVg==
X-Gm-Message-State: AOAM5327KOJck2ycJwWNalTW8pdw1mGdehoiWm+Gpl74ysSKt7Aau7bQ
	IL57ix/KNVyA4Ysvo/dI9+s=
X-Google-Smtp-Source: ABdhPJzz7gRIccry3/00hdAYSDhJTz4T2l0mUxiHClFRf8KNIO3iNe5aqR3WSwZoey1zOcBiwXG45w==
X-Received: by 2002:a5b:d48:: with SMTP id f8mr1719008ybr.9.1619136544429;
        Thu, 22 Apr 2021 17:09:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:64f:: with SMTP id o15ls3466265ybq.9.gmail; Thu, 22 Apr
 2021 17:09:04 -0700 (PDT)
X-Received: by 2002:a25:e70b:: with SMTP id e11mr1786464ybh.240.1619136543979;
        Thu, 22 Apr 2021 17:09:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619136543; cv=none;
        d=google.com; s=arc-20160816;
        b=UFHzzKIgnwT5gwetZlJj4aAVeQ22j1dTDFC6s7ScH4rdXplqVuN9CZKWRcrgaILRTx
         /p3xtUDVMHxtxLAWP5WqTIPtdkvyVYGGF9TE9YBy7uO9r05ptF4uogLBg4bwgBIfcAFX
         btxy9F5IBjaOHjnsklTu6w011cDsVh9MIkVu5al25ACpy8/4ny8HPSMNc+yyHObcSETk
         ifc1M1ZPoZkRaRB5YrKOlvh4+BE+IhzUC1H+lVe+/EQ5+BVFqGcKP2ECfH0H/yw+HXN5
         pRSiWkDzIPhJKfbQHPWJF0GlBdZe7PzP+MBYqchbCHKjNO0csZMQJbKhd8TGphW0iXHr
         2Olg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nMfzkQEov6kIVHNuaAn8iFcBDyLGbYrJQC6NcLJ8Y0k=;
        b=D7d19Xp6QULAgnOS86lAi2cSBqkzIh9Xg3cRhk3JF3k2kQJRqIytn3EcngtzI9ULhT
         mI6xo7cYDtA1i/GVqS8bzVE+nhPreYFoS4ALfI8kljbUjw8Q4eNbioqQFZwKcy96b1yb
         pFE7TDILcupe4ATrKw/mHvwgiMHpssy6D9lLLWxGAT9DqtmYXENF79oOxPootap1Azdk
         E/NYk/KtSrjLM4svWiCaHbN5XsXC51j0WRRUVG/ZiSd077MdszvHHmlQ+iVcl4vAzwA+
         AuDrUhk8xMQoBnYJQcGfHEAIyv/UK82uxG3mLGK/cwesvuFzdzowKiAycv0NxEb5zlFJ
         vtMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=MOieLRc2;
       spf=pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=ricarkol@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id t17si796147ybi.3.2021.04.22.17.09.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Apr 2021 17:09:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Received: by mail-pj1-x1036.google.com with SMTP id j14-20020a17090a694eb0290152d92c205dso285047pjm.0
        for <clang-built-linux@googlegroups.com>; Thu, 22 Apr 2021 17:09:03 -0700 (PDT)
X-Received: by 2002:a17:902:e904:b029:eb:73f6:ac99 with SMTP id k4-20020a170902e904b02900eb73f6ac99mr1069354pld.12.1619136543044;
        Thu, 22 Apr 2021 17:09:03 -0700 (PDT)
Received: from google.com (150.12.83.34.bc.googleusercontent.com. [34.83.12.150])
        by smtp.gmail.com with ESMTPSA id w123sm2906742pfb.109.2021.04.22.17.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Apr 2021 17:09:02 -0700 (PDT)
Date: Thu, 22 Apr 2021 17:08:58 -0700
From: "'Ricardo Koller' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Sean Christopherson <seanjc@google.com>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/5] tools headers x86: Copy cpuid helpers from the kernel
Message-ID: <YIIQGu82bdqjpktA@google.com>
References: <20210422005626.564163-1-ricarkol@google.com>
 <20210422005626.564163-4-ricarkol@google.com>
 <404e903a-5752-6ab2-9b46-aa40f7fb0fba@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <404e903a-5752-6ab2-9b46-aa40f7fb0fba@redhat.com>
X-Original-Sender: ricarkol@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=MOieLRc2;       spf=pass
 (google.com: domain of ricarkol@google.com designates 2607:f8b0:4864:20::1036
 as permitted sender) smtp.mailfrom=ricarkol@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Ricardo Koller <ricarkol@google.com>
Reply-To: Ricardo Koller <ricarkol@google.com>
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

On Thu, Apr 22, 2021 at 08:59:50AM +0200, Paolo Bonzini wrote:
> On 22/04/21 02:56, Ricardo Koller wrote:
> > Copy arch/x86/include/asm/acpufeature.h and arch/x86/kvm/reverse_cpuid.h
> > from the kernel so that KVM selftests can use them in the next commits.
> > Also update the tools copy of arch/x86/include/asm/acpufeatures.h.
> 
> Typo.
> 
> > These should be kept in sync, ideally with the help of some script like
> > check-headers.sh used by tools/perf/.
> 
> Please provide such a script.
> 
> Also, without an automated way to keep them in sync I think it's better to
> copy all of them to tools/testing/selftests/kvm

Will move them to the kvm subdir. The only issue is cpufeatures.h as
that would create a third copy of it: there is one already at
tools/arch/x86/include/asm/cpufeatures.h. Note that we can't move
cpufeatures.h from tools/arch/x86/include/asm to
tools/testing/selftests/kvm as it's already included by others like
tools/perf.

> so that we can be sure that
> a maintainer (me) runs the script and keeps them up to date. I am fairly
> sure that the x86 maintainers don't want to have anything to do with all of
> this business!
> 
> Paolo
>

Thanks for the review!

I'll try this approach for the next version: copy the new headers to
tools/testing/selftests/kvm (except cpufeatures.h), and add the script.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YIIQGu82bdqjpktA%40google.com.
