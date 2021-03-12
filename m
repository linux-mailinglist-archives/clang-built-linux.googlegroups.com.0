Return-Path: <clang-built-linux+bncBCS7XUWOUULBBNOUV6BAMGQEHZRH4ZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CAE339999
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 23:24:54 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id q77sf30924386ybq.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Mar 2021 14:24:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615587893; cv=pass;
        d=google.com; s=arc-20160816;
        b=xLxhXwGJcuBrELTrN20iFyQ1i0Ntpkg1kPRYaS8NKHbcmXsNQxrG2wWVB2WnEMIiBW
         RPPfzr2BZ6LCj4o+Yi9s3uLBvnaA+peI3VnSJ/DzkjpCV8bqVo/mqMxcNgVa841rtpcP
         kqnQkN2mEi8mma4MSHOSeI0uiuxPNt6EAA4kvmLvg/1HqsmEs30ggE23f9oaT20uTW91
         QjiARyly3RTQI/auvRebgYmlSkoj8uscBhnRoiOqbKmzgMQ4uTBvboDUw2Ph7S86Iufg
         1DUJ5d2GiqnxUx1vrHsFcM3erkcg/IE2OWUJ5wwB46WJU9UM82M52rjHcDK6wHa/6FFX
         UjSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=O0/9RR2f5p/08E+oTcqHAlmERH5BaZ5gCV55ucx2Wbo=;
        b=eLL8U3dVGPQjTX33BlRMqseoq4Zs96BlN+PLLyy+r4mBdISXUcNkVhNua0k5IHA2V9
         TnKI/GvtllUefzlv9yzwqdBmbvcrpFzEMg/5pa1YBm6r54kmcEeDwniBNvClA4o1qRi9
         EtHPNtxb8TaHMf8jKhipmt59/Pt4yIwqdAfupovsu6WKwUEh92gl9Pl5N9ZRFp5RfCj6
         V26+ueKx6AlOciRZjhItlCU7U2gku9kVYQpXbjIBhxUArpex80oAtIfsPdkZvuA1EiNW
         xn26MfkCKjGBeo+PJYQBK7gjP8/LMeF2NoXUfUq0WM/XQVLIWMntr7aLUi6bEBLXu9t8
         UFvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tRMYCue0;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=O0/9RR2f5p/08E+oTcqHAlmERH5BaZ5gCV55ucx2Wbo=;
        b=cIWHdkTakDMTeqzM0d59nSXNjRsrZov/B1gV+E6EYcXLvsUvXkdqVTlpTQj4bx7r9L
         CMmwXk9M7jPYHH97Ahq+B9Huh2xhQd/9KH+KXRCVkTxC3BCtiIDpVRCWq1zpiDpxO6QP
         kgwd4q0XWXY55jrd90r0jZI6FVTtEszqvY8mLUYmtO0uw0l2bb5qHdD8EqQnHPKajEeT
         tF19xhIFhmCQxsP7Zf9C9ZgvAjHZ1Fa49k1+mfDJOql/yC8k4dp2OjBtVNyD8dJo/hjT
         OHXxeesedrqzDroWuyhJxbqLxa66fE49uXBChja21OWX/xmBKwfgCaDS1G4nkzK2EECB
         drOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O0/9RR2f5p/08E+oTcqHAlmERH5BaZ5gCV55ucx2Wbo=;
        b=GKZNTUQ8pDzlgC1PZ4RWHrWC5K/8Bv2kuuUwy4KN06U7hEFQzwtpBG2zrJ1LlBkUzX
         WlO92kYJvGV+ANZ3A2m77+6UXJujvobPxg0/5LacLt06RvTYi0YoAFLk7rKAAGCx5W+6
         NPJISfkvUtZkbRxnPd0IV62dnwnXjxgX0y6IFDh5eck3bSIqmO77tv+hzLGgDQPB0cR0
         v2eGj5IH05KvFgiVTpr/2olwp8hxszFwIQ4RpYhwtHJPZDyhpUyimEHV4BaxzrQ7S1n+
         lSRtdhunsskcElClSJkiMKSzs2InnCboenxwwuBxc2ERl46guN60pu9czCn/hxd+pk9f
         SC9Q==
X-Gm-Message-State: AOAM533PwVJ7dmYONWMRZGARr5SCPFaaqzIs5Y7vKvEvIBcPXkZqIbJe
	Ziakm6y/TbBvBqPKb+gvzRc=
X-Google-Smtp-Source: ABdhPJxOfrqxUe2fYVBlno2Pjqgp7CK0/3SrWteHtEgMFpwkbCkP9xeO8XEMdvLCywEyTompdKitoA==
X-Received: by 2002:a25:c106:: with SMTP id r6mr19635451ybf.136.1615587893701;
        Fri, 12 Mar 2021 14:24:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bc4c:: with SMTP id d12ls4978549ybk.0.gmail; Fri, 12 Mar
 2021 14:24:53 -0800 (PST)
X-Received: by 2002:a25:3bc2:: with SMTP id i185mr22137274yba.87.1615587893228;
        Fri, 12 Mar 2021 14:24:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615587893; cv=none;
        d=google.com; s=arc-20160816;
        b=wH8vT0+XDaOXECH37p/tJ+cHtLHGnsmU9aySXWvP5N/eVgwd9pPF8Kx/cY9mruZPMc
         6diuyKaLOM1+nDHd4k9elWVEWwiSHVVYdaSARUOWmvsx9KU4apX/72mX8rUDsS7IYU+D
         if+I40LepIj0OYa5oUGYw7fDIK3S5UMuwv+FHXlG+lfLCfeWaylQuyguWJW4u8/WqJwC
         Rh7J8akiHkI/ouFS3DXnoQVhS9ot2pqKLPlpw9kadViDPHT/kvfsP7QzcikxcX4subaq
         oea+zNdvZAACjy0fuadOuLvOLLKdYtEOHWaxX4aDdcQsEb1Dj7DceEm+yFQram/pP6wc
         FRRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=fUp9bdMACAhipmgQpADFkYf0b9xiq1zIbv0Svm5SjIQ=;
        b=Ig2Wpsxa97fExOrAs9vwqZ57/gwYNQeQLf+x1fsizLqpPNXw8FHv7RwKTMCvjCixk5
         lVINlgr80Fw5kkdpjrpaQZ2rqvqyFS5Ra3W/rfDtCtGHJYklhPGm/9NBeK/tFWfx0kWj
         NevRcfD+UzZl23g3R9rsRvo9vzhyv5Bp53FwV5SlPh/WoZ1Mq0C71t35n52mHQhyM+61
         u0phfbufHQNnlyEkvlzopMwz3cGAa89GYEwYNUTJ7Dw8XYFpyZ6OoU3DP6zGCLhPTebM
         EysfqpBzuWBGTDgzJDvTLItt3RUi7ejqtrd1jb47a//p8N0TyUMsOi0+naI+w3vg8HxY
         NANQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=tRMYCue0;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id e143si456885ybb.5.2021.03.12.14.24.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Mar 2021 14:24:53 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id f2-20020a17090a4a82b02900c67bf8dc69so11405102pjh.1
        for <clang-built-linux@googlegroups.com>; Fri, 12 Mar 2021 14:24:53 -0800 (PST)
X-Received: by 2002:a17:902:e74f:b029:e5:fedb:92b9 with SMTP id p15-20020a170902e74fb02900e5fedb92b9mr601002plf.67.1615587892224;
        Fri, 12 Mar 2021 14:24:52 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:bca6:9fa5:8695:2f0d])
        by smtp.gmail.com with ESMTPSA id s27sm5966766pgk.77.2021.03.12.14.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 14:24:51 -0800 (PST)
Date: Fri, 12 Mar 2021 14:24:47 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Peter Oberparleiter <oberpar@linux.ibm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Prasad Sodagudi <psodagud@quicinc.com>,
	Nathan Chancellor <nathan@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] gcov: fix clang-11+ support
Message-ID: <20210312222447.rwnvmlp4i5jfmwyy@google.com>
References: <20210312192139.2503087-1-ndesaulniers@google.com>
 <20210312202537.z77v4qnvptbrug2f@google.com>
 <CAKwvOd=8WM9KVoPxy7x9kQR5cEz1M+hJ4Pbz8kU+5ipMSzSJ+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8WM9KVoPxy7x9kQR5cEz1M+hJ4Pbz8kU+5ipMSzSJ+A@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=tRMYCue0;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102a
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-03-12, Nick Desaulniers wrote:
>On Fri, Mar 12, 2021 at 12:25 PM 'Fangrui Song' via Clang Built Linux
><clang-built-linux@googlegroups.com> wrote:
>>
>> function_name can be unconditionally deleted. It is not used by llvm-cov
>> gcov.  You'll need to delete a few assignments to gcov_info_free but you
>> can then unify the gcov_fn_info_dup and gcov_info_free implementations.
>>
>> LG. On big-endian systems, clang < 11 emitted .gcno/.gcda files do not
>> work with llvm-cov gcov < 11.  To fix it and make .gcno/.gcda work with
>> gcc gcov I chose to break compatibility (and make all the breaking
>> changes like deleting some CC1 options) in a short window. At that time
>> I was not aware that there is the kernel implementation. Later on I was
>> CCed on a few https://github.com/ClangBuiltLinux/linux/ gcov issues but
>> I forgot to mention the interface change.
>
>These are all good suggestions. Since in v2 I'll drop support for
>clang < 11, I will skip additional patches to disable GCOV when using
>older clang for BE, and the function_name cleanup.

Only llvm_gcda_start_file & llvm_gcda_emit_function need version
dispatch. In that case (since there will just be two #if in the file) we don't even need

   depends on CC_IS_GCC || CLANG_VERSION >= 110000

>> Now in clang 11 onward, clang --coverage defaults to the gcov 4.8
>> compatible format. You can specify the CC1 option (internal option,
>> subject to change) -coverage-version to make it compatible with other
>> versions' gcov.
>>
>> -Xclang -coverage-version='407*' => 4.7
>> -Xclang -coverage-version='704*' => 7.4
>> -Xclang -coverage-version='B02*' => 10.2 (('B'-'A')*10 = 10)
>
>How come LLVM doesn't default to 10.2 format, if it can optionally
>produce it?  We might be able to reuse more code in the kernel between
>the two impelementations, though I expect the symbols the runtime is
>expected to provide will still differ. Seeing the `B` in `B02*` is
>also curious.
>
>Thanks for the review, will include your tag in v2.

4.8 has the widest range of compiler support. gcov 4.8~7.* use the same format.

clang instrumentation does not support the column field (useless in my opinion) introduced in gcov 9, so it just writes zeros.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210312222447.rwnvmlp4i5jfmwyy%40google.com.
