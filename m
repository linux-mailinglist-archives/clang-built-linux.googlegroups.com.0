Return-Path: <clang-built-linux+bncBCAIHYNQQ4IRBBE32ODAMGQE4ZBG27I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C4D3B3591
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 20:23:01 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id v65-20020a25abc70000b02905574862aa77sf551083ybi.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Jun 2021 11:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624558980; cv=pass;
        d=google.com; s=arc-20160816;
        b=zmIw+Pdkj/HI9k7eAoNceKOmFKkwTs/HRSGPYhDFVQjljwOuOu8/S8YfaEdAtvedBS
         cKdOWDsfZmyfyIIYAAQVGSpVdUhn3NTNwEiXTHySB5pKJynFnwLb9dimIrYrC5gRSOBT
         9kHPOJsdgJV+RO5F5TtSg5FjbUJ4RfwZx/i5o3zkoLxieMtbFPqIM2KnoeEqeoYOH46r
         a5+IsO64b6nm1uObPDIA5fI7KUsvR6I4yUoyvBlNA26NMkv5RJV/2rBp269NM1LScn6Q
         VKssFSr3R3643ueLmvBmbtrJwZgUIdd4n7YWzRAoFCTbuDeLK+/8k1KYaYW6VkR3mldn
         nCjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Wi7CnSudp2PSp8CGPs/M2RxS2Y1JY/5WD9I/lK2NjMk=;
        b=BR5kiB2PhEJfh1EMunK/m/cDhcL29g52J0vaV62k1JFogbCwVSyqjZgfUcuSVxzuS+
         +ilKF9gLEccREVjbQa97+JyhuvmGeWGMefVWkRFMomCsgVjY/r2eI3QDlegaQHwno4jy
         Pd1h8nWjte8kg0SkUcMBmj/Rk/nMOH6rtPt8HJWNa/U6AD2/bxqqQtg5XFsDDDC9rVP9
         cfTHzCnV0TDDHUG9hcSXlzKc0S4E8xlnVW4m0mJwHlVAT8yRLL5d2pmUgiBuW/Hljh/l
         E3ECcEmYoYF3AckaRQF0Nf3kegJsif7F3Rl+X5CfaooSLBx+wBy0m3pozxydFGNNng2P
         5MPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="P5/Ko+gJ";
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Wi7CnSudp2PSp8CGPs/M2RxS2Y1JY/5WD9I/lK2NjMk=;
        b=Mjwl/OfGsVz0n5+Dh8IK8LxvZZ9EyZ3Z1ics/iEaSQrrwyy8hYVwwwLu5j4A5e1UCE
         0ObjVI8k6sGX/Fil//u9ZJv4mlqPYs//+Fdf5Wp58Yvk9VjkdbJeubN2Djo/MZ4txyKb
         IK4JvZiT0ZurxeNrPqKQPSCQKdDWJfdLSUBW8dNXOlYqEjCgN3iptdarckRbfS+GagA/
         hnQRQSmJ29ZNjnWyKJ6b3C6+b41wEb99JJ1ip7HDttD+ChInWzytbN2d/9PFUJYywJMO
         rhdtjSccUQGPGyeiUhbCPHBkDZYVcr7OczyYkFkuKZwUlOsvK0J66Ry115hC5yOG/xX3
         fifA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wi7CnSudp2PSp8CGPs/M2RxS2Y1JY/5WD9I/lK2NjMk=;
        b=IvWrTIBtuYNg0cOhAlrYFjV5FRF16P1VSOqK3crZiGtAyzmwxF9zIqde81JSet1n4a
         pG5hVqteLgpzCN1kjoMmOBpyOU2E8WehENvsz4PkWR+EQfz0cTCkv+1jXMZb0nYZHeW5
         0HUT02zSekJmBCtDsLJzNgDdqORTWXEYrj9lkHgJ64PCT4QVd9UoWIKtcEIGFPnxXc0n
         lCRRvGXrjCOjQx98h88IUTvHK43YbnJ53sFcJws+nduEiYTDzi2imhNysvRCm7RG4q6w
         p3KHs8gg9Ct2Ki8bS+2a3Y6hYHU/Dz95eTsdJIUEZz/v8dbLIXurjb53pMZMA46g3l1N
         CadA==
X-Gm-Message-State: AOAM5329ZImYVq8UKB/kCN7ubCzGm1xhalDeaHXrF9GyIHm0kYsecTbQ
	pH0dd3Yxsek9Ndk1V2JrP0M=
X-Google-Smtp-Source: ABdhPJyl1h43VZkuMAm4WnC3HNFOO6RZc2fhXidXWXVXL99e278n3oBC2M/awtTidSscbyZg3PiCnA==
X-Received: by 2002:a25:a549:: with SMTP id h67mr7029305ybi.393.1624558980263;
        Thu, 24 Jun 2021 11:23:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:aae9:: with SMTP id t96ls3727593ybi.11.gmail; Thu, 24
 Jun 2021 11:22:59 -0700 (PDT)
X-Received: by 2002:a25:d68e:: with SMTP id n136mr6848862ybg.302.1624558979830;
        Thu, 24 Jun 2021 11:22:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624558979; cv=none;
        d=google.com; s=arc-20160816;
        b=M8XE6YV2fcrqSJaJ2ESWAehEIecv5+lGepitdQk4BbyIJ9OFuzvpcHMjggTD4stfrb
         Cq1NjHJK/Io0Fg+P/n+ryP1D/rD4VM7YWwsiqQTK/l93BRkiJFQCCzXl0tDpjRY/no9J
         VFmjXXsCr/AdTjZK1wVRfJLSyjTyeYqVaktVHD0g3FpAzvGGvfOCmqISyrtCpQtlSGef
         0lesdFNPsBv2RcZaf69mR1zvHkcIiKSeJ4Z00T7Sdb3ShVkM89pN+I9r/FVloFTUbN/G
         HUT5R7pX+X1H/jm8lpByRzDNm4jHydei7a82vXkPAqM92QWAqjGOE8fi+Bsye+HoSO56
         slCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TJhHdtnxjj/1lVcprn43QULb+ZY45Gr2FgD9/P84aBY=;
        b=UPGnCdBtVnq9+He2x2CQypUwWS/p+P5MI39RoQGkxEts0PVC4jAkkpuxWUYG/Cr27C
         QvQimC9pVt14Q0WgB3cD7ttpJ9aQd1aqJNNHLBjAY5/HuXN6EOOEaTBc4KSYIF40Kpv2
         T00LEStY6uvsmkD0km8Fg7LAuhzp1u2A0+AEruAs96PNcduwAHbQSHyjMdelR5vN8TaJ
         iNsmEHQMBnI/AeBdqnHEwN9vDRyJvbefKb2qX1jpW6fLaPkeEAAtVGfGqn8t9ufhAy2m
         5vCt05z082ekrDu2N/mfPww3/jgtRhsz3UX0/K5fSYiwfQPIv0As1jp4RLkT7ZY+NtYN
         Z0sw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="P5/Ko+gJ";
       spf=pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=seanjc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id y63si475247yby.2.2021.06.24.11.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jun 2021 11:22:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id w71so5908212pfd.4
        for <clang-built-linux@googlegroups.com>; Thu, 24 Jun 2021 11:22:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:be4:b029:300:effd:431f with SMTP id x36-20020a056a000be4b0290300effd431fmr6203290pfu.69.1624558979065;
        Thu, 24 Jun 2021 11:22:59 -0700 (PDT)
Received: from google.com (157.214.185.35.bc.googleusercontent.com. [35.185.214.157])
        by smtp.gmail.com with ESMTPSA id g38sm2948626pgg.63.2021.06.24.11.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jun 2021 11:22:58 -0700 (PDT)
Date: Thu, 24 Jun 2021 18:22:54 +0000
From: "'Sean Christopherson' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Vitaly Kuznetsov <vkuznets@redhat.com>,
	Wanpeng Li <wanpengli@tencent.com>,
	Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
	kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] KVM: x86: Fix uninitialized return value bug in
 EXIT_HYPERCALL enabling
Message-ID: <YNTNfouvheAyCSdK@google.com>
References: <20210624180625.159495-1-seanjc@google.com>
 <6146d62f-3c96-1def-a537-1eace63368f3@redhat.com>
 <CAKwvOdnVUpsiaHAi6DaV7zc4tbi7t6=BcYv85pDXiHQDQUY_0A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnVUpsiaHAi6DaV7zc4tbi7t6=BcYv85pDXiHQDQUY_0A@mail.gmail.com>
X-Original-Sender: seanjc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="P5/Ko+gJ";       spf=pass
 (google.com: domain of seanjc@google.com designates 2607:f8b0:4864:20::435 as
 permitted sender) smtp.mailfrom=seanjc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sean Christopherson <seanjc@google.com>
Reply-To: Sean Christopherson <seanjc@google.com>
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

On Thu, Jun 24, 2021, Nick Desaulniers wrote:
> On Thu, Jun 24, 2021 at 11:19 AM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >
> > I have already fixed this locally, though I haven't pushed it to kvm.git
> > yet; my tests should finish running in about an hour, and then I'll push
> > everything to kvm/next, except for the C bit fixes.
> 
> Ah, I was looking at this case in linux-next, and
> 0dbb11230437895f7cd6fc55da61cef011e997d8 wondering what was going on!

Doh, I obviously didn't look too closely at the blame.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YNTNfouvheAyCSdK%40google.com.
