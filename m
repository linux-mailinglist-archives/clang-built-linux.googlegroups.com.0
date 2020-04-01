Return-Path: <clang-built-linux+bncBDRZHGH43YJRBLNJSL2AKGQES6WVFAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EEDC19AC8D
	for <lists+clang-built-linux@lfdr.de>; Wed,  1 Apr 2020 15:18:38 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id q22sf10154148lfj.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 01 Apr 2020 06:18:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585747117; cv=pass;
        d=google.com; s=arc-20160816;
        b=EfNvPzNzAsCbnDle3f+MCWfughPt2S5URqYoGuyId/2X21DDgHAHjptepLyYoJRSGh
         RT3FgM6AYQJNJ8k1Slrb2xnVXmAA8iElvg2+ziJNhK2rITeED8l8Mun83lStTTyMAH7X
         XtsNP4wT71vVOualiulBH6igt75HHVKMMUw+F8qszVfRGCQ7Q6RJC01DIZ17uvEKsE7x
         plNZqhI+j9I0pKmSYDFYJYz5zzFIzYx+/uQisl5mLZqtWR6ZAo+Dbn5CnzDfgZWsyB8d
         aNBva3baXYCgnPxgj9wG3BbtKzkfpJHXMxPZqu3SMotXTAFuVLUTtv4NLjoDTlBLp5K6
         RNDw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=vi8iHBzPHzWMm4xXYFWeezjI2MUNlqIcpkhjLyN0vFY=;
        b=ENExO/p21jd5qpwqTcxxhUYy1TB7QLOybAH1VIRerK07D3+abAC/LClnZLE3CFsyxk
         WKf2sNXiD1L3WQ/DEvcrrwP+KAzW/g3+KU2iYW/2NviTsTIvRMiVMk9/Vt+1SFtzZdDq
         DRMIbXgWCNT4n4QgNc64Ckwr3aEUue0hrr7gahcJCn+rJ5FLJ+Gi0QlnKxzkjuTFEtZG
         Wz3ZfWl3CB9ECyHCd5N0lHtU7mO6YbLbm/QuhHwtIGMlCJvRRrnW1CKcQMQT01MSRhDT
         ci8U+xRYKM+327Y/aKLSIin69pFT1E3IZHJI4s5m4Y8p2gGnpzFtoIpFjcNPJ6T9fRDx
         yITA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MxAcpSTX;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vi8iHBzPHzWMm4xXYFWeezjI2MUNlqIcpkhjLyN0vFY=;
        b=ioRXYHAhEUYa9knSTlAzscRHkyI3A86BDB21nKhW99/raaVMBvfmObwx48kxPaBphi
         L83zAJObBSTGksjD6FJnRY8zjSW1rvxnpYio6aqBxyULiBdYOC9bfbKmVh8dDmp+Tnjy
         s0fkmk4nUCaHCUU7Z9QYFjOz/nTcwYD+z/7Fr1c/bWHakRI/nTtRTBK25Xkt6tGc4d+u
         i98LaScvDuFCDGUjKKVChuxQEp6+IqPr0LP7/O0YulbklT1f+JeHCgsFfyff5qv6hTqS
         P7//vPpYQEn/gORc3eELR9lPOT5d5xavPUTcw1daK4GJHt/YR/H5xL2hnwXR+Yk56wN0
         olMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vi8iHBzPHzWMm4xXYFWeezjI2MUNlqIcpkhjLyN0vFY=;
        b=f+jRvFoASJeEQTllqSizxYoT5SO7K0aAGO8KAQi6V64LHMUszgebKX851frrcWw6sv
         sSjR7JpJ0sAQBBYM0X667inZp9yT1CrID+2psjrcG6m6IcjjHtD+ZDlncYPzWIZ8AZ5G
         7jnoZ/ReJA1i4eLRZ/E92ItZ9Bv23LGXXsTh5oLcQ6ir3RwwQfTRWliCRwUtfoZQvZC8
         ch6AAZgVI72EafnKJ7JH4wkMQyYnM3o/cxL4V4+Vbr067BADAiNDojGih88D/zRCn/Bh
         6JAfeVNARKkRdaPElDUMqCOJFH4Mih66tRjp7gRBL45Tqu0YSFRzLysA3AALu0uXQHlI
         3YPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vi8iHBzPHzWMm4xXYFWeezjI2MUNlqIcpkhjLyN0vFY=;
        b=IZ0R97qV8oVnQke9i1cq8hnmwBhnLfXY89Ah+r23haPqjXz5qkyR3R2FOFKYJ0jwuE
         5+TYCFuTy26ivD0OQqgw00MPYtATSmn4OJvwBLMUvSHI/BjYa+QjjzkIzxSlBp1nz54v
         /rjGCqi4A0wPC4ogXXzqUZsBvz2rrTo7Bva4nGIZqm06r0qnFSTWEuRAC2G3r+kBCYu2
         VUWohd2O4XnOLCTVMqNAfHJnAcWB6aIS7pDs1Pa1Zrw4zkfRvqAuVKBoFanu++ApeBZO
         3mtdZGZeYTPWA07HvRxkdmP38+yPJw5Ln8bqSOGx+wvMF/UZMOeb24//qKZ7IJIqws2X
         tD9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZOMvUdb245VJxHu6e2bvHBlNOOVzqliwJVfpA0ekR8xs3I3Fuy
	GA9bxcpRSCo/t0KBze3E8Uw=
X-Google-Smtp-Source: APiQypI2RU8C4rpKG1K3fQ/wVOwHMsK/I9NvVCpP5HnvbRlQsWGdRvn1i/lpmnR2EgY4Gc+Px8u98g==
X-Received: by 2002:a2e:8914:: with SMTP id d20mr12423230lji.148.1585747117708;
        Wed, 01 Apr 2020 06:18:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89c8:: with SMTP id c8ls3970963ljk.7.gmail; Wed, 01 Apr
 2020 06:18:36 -0700 (PDT)
X-Received: by 2002:a2e:8e2a:: with SMTP id r10mr12975712ljk.276.1585747116887;
        Wed, 01 Apr 2020 06:18:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585747116; cv=none;
        d=google.com; s=arc-20160816;
        b=gOfUoKNT85MAd1XlhkrTjzH4sis8TL8SGrh1/q9HTW8DWdkBNsx7rsDOAIqT5Fvmt7
         u1tw7p4malsqpQtpbfgwMXYqL64XUNPEZ+NzbruhI1cTqGzCrdfD+wpC6aVHQjUBZjH9
         gskWaBlyfkHGveaoPCnX3ZR9DbbYk1ci5ZNSBT8dWCUPdL07oUnMPxqAXPKU9v0bJ/wP
         6/zWePcP9LtDg2nwbICQp2DNlmmgU49YfdUWiB6i+F/ULBSygEuL28vBpgeY2PSpF61s
         vVLDHNeOQnls3ZWU2bWSKtxOc5lFsJW7TtwgR4wtSgX7JxBr3b9sm3zGQ6tj6J1fEp2N
         o44Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gas058aqK6+R/Ga1N9ekMQIN3LpYhng+FzKXcG+s1xo=;
        b=rlyyK2+2Jdn8BADOiybum4MzpRiEZpAFI0LY2KkhvajsK7d70ccqmV1aUxWyS85nri
         BZf+2JCxkq3ei62rZXWa0IHjMcNaKfa34/fBk9uS+Zd02r19WytgyBfLauqaKESLqu8P
         ZnYv408qZl9RWDuIL8xZkFO/T/I1OjQ3MsVUQT5oOygDb7XUhlk9v3i0C5WLM0QncxtY
         nm/rI32BR6dtDZJPP3a3E3WOmyxhnwlllbk9USn+ixE/U3o+t74siw6A8TVc8G58Ztcc
         6yZUg1RmIJzXFbLNZLCy9NX/16uD09vreLEBXv8jC2d+V7vaJ6Gb82XVFMbx/x4ZlYRn
         9gTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MxAcpSTX;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id e4si133572ljn.1.2020.04.01.06.18.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 06:18:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Received: by mail-lf1-x144.google.com with SMTP id t16so19564922lfl.2
        for <clang-built-linux@googlegroups.com>; Wed, 01 Apr 2020 06:18:36 -0700 (PDT)
X-Received: by 2002:ac2:4a72:: with SMTP id q18mr15020714lfp.10.1585747116686;
 Wed, 01 Apr 2020 06:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-10-ndesaulniers@google.com> <48smMS2jDxz9sT6@ozlabs.org>
In-Reply-To: <48smMS2jDxz9sT6@ozlabs.org>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 1 Apr 2020 15:18:25 +0200
Message-ID: <CANiq72kT9iYueBp58PXKgLCvBU+2PsgJ9VJ1xOVTw-srdwHtgA@mail.gmail.com>
Subject: Re: [PATCH 10/16] powerpc: prefer __section and __printf from compiler_attributes.h
To: Michael Ellerman <patch-notifications@ellerman.id.au>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Song Liu <songliubraving@fb.com>, Alexei Starovoitov <ast@kernel.org>, 
	Paul Mackerras <paulus@samba.org>, Rob Herring <robh@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Yonghong Song <yhs@fb.com>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>, 
	Geoff Levand <geoff@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MxAcpSTX;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

Hi Michael,

On Wed, Apr 1, 2020 at 2:53 PM Michael Ellerman
<patch-notifications@ellerman.id.au> wrote:
>
> On Mon, 2019-08-12 at 21:50:43 UTC, Nick Desaulniers wrote:
> > Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> > Suggested-by: Josh Poimboeuf <jpoimboe@redhat.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> Applied to powerpc next, thanks.

Missed this one from August, thanks Nick for this cleanup!

Michael, you already picked it up, but you may have my:

Acked-by: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kT9iYueBp58PXKgLCvBU%2B2PsgJ9VJ1xOVTw-srdwHtgA%40mail.gmail.com.
