Return-Path: <clang-built-linux+bncBCTYRDEG7MGBBQWP3TXAKGQERAWG2IQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id A68A7105D87
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 01:11:47 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id y3sf134985ilk.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 16:11:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574381506; cv=pass;
        d=google.com; s=arc-20160816;
        b=CcKp6GM34VfGdnNmVMW4u5LvvSflt/prUTfc5jNo4TcAcC1Wcmx6WQFJp1gXVLff+S
         5y7LSvUnG2xML6+OwIytcJ0hiGeVtksMbLZb0YwzXC7rJjd68dseUmxCkC0iT8bxHuvh
         lQhIedmDVIPOZg96ktaGmrVRAp7iAlnDZlunVFdjVK/yNRPPku+jMRANCngTdwoBG7cE
         +flsQ4jUdjM8mnyAszzj2xhKvCer78+OvmVuEuz8vsdqfjX2aGbcXycyhXL9eAfQZu6N
         eMKjWbeQiJidlx5J/LaI/qE6ddTZomzC1IwFzQpk39R3CiprPr+JPxaEEuCMfV8JkHE5
         guNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Om7ARrHQGilQ0zmS/u1xGna2vQYJXJEza9v3+HWx10Y=;
        b=o4hudYOeHt1w8JAo2l6UaKXjASGVAVI2y0j0sRlr35FGMUenyUHepei8KrpaPIOYJD
         oSJUqY5d44ZXP4gJAGPF+hO6mMTrCtTRjh7fzlwIIO98qiH9gmP93em6veIR29gRIl+j
         IMjQG4mnFQYICJbSfglhkVOYHMX54J+dLT9vGxgt8GfMG3dl4xTFceLJKAArw3/unfJv
         2IK7YO66UiWsg/2o86mV8Qr3EwAdL92HaPZOSpIvdINCRldCTfGQPLkGCIx75cxgiyTx
         feC055AJMFoN9M/x+yPm51KXqU39uvPp9azjvLG16UGFYp5cWcB9Ypsc+eBSUi1eOCVL
         QH4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ww8mlpop;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Om7ARrHQGilQ0zmS/u1xGna2vQYJXJEza9v3+HWx10Y=;
        b=AGnLzY1XxIBIbgn0nWtOzuYVMnR3KCRZOy+Xeq2Apq2V7uf0Ch0exoFxNMfQqlo2VT
         2VqunP5QvT47tQrfJ8wQH1wZm3TK3/xC+dl1PIWEEMjr2Q/5W+VwfnhZaOvhRZCowcS7
         AyrgN+dhDm9TgIp45S9TmYfWMFmYjXzOH48UlKWhUFUDytWrvv+/mZByEuKk2sS366uG
         GzbvEqaZWnTBwdJz2SV4BqwQhBc0zUjwrVju6lcUR+UOZvShQq9zDSQ5Fg/xS+hNnW37
         RLDVKKpem3H4esFjOWMiRovdS9ImE5xxxA+eJKube2hfUZVNN8eG1P2gUqx13TwYKlm0
         3Ptg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Om7ARrHQGilQ0zmS/u1xGna2vQYJXJEza9v3+HWx10Y=;
        b=KV2pckMg9AJYqG9WPco3TPOs9vA+cdV9Yp48039F2Ohvt2RiaEENMcEVBI1EETmOkr
         LVCXzxKzJAidbqBjKOVL5s2vMjbqQjeSI/9X+x1lzp1y3XnhmWuWfV74FI167OLk2gmG
         2y41Le1ARAexINhBwcOzULe9lYhn71qWwK1nYZ3hiFmQp8AHgUyLYtFPY02RUqIfw61S
         Um2xzEtAqLgp6Iryk8MhpWqAnMgkf17JVykJ8oqkd7r2UGD+rrH1YgI0ZQZRdQReRsUA
         Kcv52tFWAz0TfuZBJo+IrZJl4u1z9rX8s/okyNctMhglZqBT9+c4lnfGDfeCw009OMTJ
         rjxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Om7ARrHQGilQ0zmS/u1xGna2vQYJXJEza9v3+HWx10Y=;
        b=UeNEtuURujJh4Daxfc+Zd2isSgvCkYlZWW22SN7hYRFIn4ZnVVZuodlVWp9hzFIKCB
         dFhU42/iiqlTX7f4mj9GeuXeyUsDXcB6esrodm/29op5TKRFFP1znAva8MAKn5ZsBPOW
         t4zKY/2Vs2kh5J70elDqMDVgSVkj0OPOKpCWCBd5xX3GDvuGkNXniBBmx7WTrXG7WFuh
         uij771q5PfYEFO+WtBy/EUJVIAWlxWy7px+gmoM57pD8bP0HbnzIMEtRlAlsIjOhlxQ5
         0M5JhHpe/DvwYLqZt0h2iQNNpanos2CTb8EIF7VF+NPMt0U6yRpAzAH9FDSB8tbmFvKs
         ucdw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiXRqwlHyxw/RoWfF6/JgZ0w4+VjiwgDPrLwWc69ZlqjMPJdvZ
	f1keW/XGgtLlQIYlIS+qdqg=
X-Google-Smtp-Source: APXvYqxuPFnODG7tgvcCPI4oYnuXurXczO/cCiT72cqePEI022DRCghfPmrfymBkrXsNFa8eQwcY+w==
X-Received: by 2002:a05:6602:2550:: with SMTP id j16mr10473234ioe.196.1574381506540;
        Thu, 21 Nov 2019 16:11:46 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:cc4:: with SMTP id c4ls120802ilj.7.gmail; Thu, 21
 Nov 2019 16:11:46 -0800 (PST)
X-Received: by 2002:a92:db12:: with SMTP id b18mr14279074iln.78.1574381506102;
        Thu, 21 Nov 2019 16:11:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574381506; cv=none;
        d=google.com; s=arc-20160816;
        b=pYM2Xe268nDmuI4fBdgnM4/rv93iIIhFbQHgb1xl3um7r0/LvsP/k6EbpY9x9ArpyL
         xfFbdxk+GsVHk9S3fG2Pt/CLn0hlbv2gpecc8yM46hEgnJwUhpmxsnj2rC3vthF4B1gS
         ZCZ5MkMP8wA6nrePFSu02+GWr7cOdlNgge2MNnC84iLpf8gtShrcE0EnkvDrqNBwvLMO
         Yq3HYR6FbEqJAH0UfsG4IE7UvNe2/aswM7nEOWk7G8nvQ81FoyxN4/6tJxVtQBjnQtZv
         6jJl2VXYOFUGq9A0vfZhTyKDOqz0z34ZwaoV9eeGvZqMcZ3tCkGFoorGGCEMKVgKxcU/
         m3tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rvf6GdcZqxgDiIyBJHEmvdw8Sb4QOPMzejK6SiW3zro=;
        b=seSWghaS94IF2c9QHVzyYfKomDlyMeFG1q54YO6Ha7GdhP1vwRmPm40HyeN8wTeUva
         MfuFtvESKjIL1QF5CPiLP2+DLolivluwRwmRCfsezj/0pcK/Ba222Ah4vCwPPUQguVaT
         XU/kbQhJxtOud7yI4Yxp1+4d5KlbrS0lp6RZ37MHkSkZYQXIMwcF+gMSWcjWc3yHrkPo
         O8FGnLaKOIxGW22XoPu0QEJlKYsfu26jgFitBCEwu7V6++z4dIpQFnutGqe0cc71NLGH
         IwxIrJltBS4L8bbyYRf5Ne178+vOgzcEowJW0yR9jXLrvnz9AoVMzYq3jUa288Vq05Iw
         VtKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ww8mlpop;
       spf=pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com. [2607:f8b0:4864:20::f42])
        by gmr-mx.google.com with ESMTPS id k25si133604iog.5.2019.11.21.16.11.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2019 16:11:46 -0800 (PST)
Received-SPF: pass (google.com: domain of andrii.nakryiko@gmail.com designates 2607:f8b0:4864:20::f42 as permitted sender) client-ip=2607:f8b0:4864:20::f42;
Received: by mail-qv1-xf42.google.com with SMTP id w11so2178357qvu.13
        for <clang-built-linux@googlegroups.com>; Thu, 21 Nov 2019 16:11:46 -0800 (PST)
X-Received: by 2002:a05:6214:90f:: with SMTP id dj15mr11147691qvb.224.1574381505270;
 Thu, 21 Nov 2019 16:11:45 -0800 (PST)
MIME-Version: 1.0
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-12-ivan.khoronzhuk@linaro.org> <20191121214225.GA3145429@mini-arch.hsd1.ca.comcast.net>
In-Reply-To: <20191121214225.GA3145429@mini-arch.hsd1.ca.comcast.net>
From: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Date: Thu, 21 Nov 2019 16:11:34 -0800
Message-ID: <CAEf4BzZWPwzC8ZBWcBOfQQmxBkDRjogxw2xHZ+dMWOrrMmU0sg@mail.gmail.com>
Subject: Re: [PATCH v5 bpf-next 11/15] libbpf: don't use cxx to test_libpf target
To: Stanislav Fomichev <sdf@fomichev.me>
Cc: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <jakub.kicinski@netronome.com>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, john fastabend <john.fastabend@gmail.com>, 
	open list <linux-kernel@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	ilias.apalodimas@linaro.org, sergei.shtylyov@cogentembedded.com, 
	Andrii Nakryiko <andriin@fb.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andrii.nakryiko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Ww8mlpop;       spf=pass
 (google.com: domain of andrii.nakryiko@gmail.com designates
 2607:f8b0:4864:20::f42 as permitted sender) smtp.mailfrom=andrii.nakryiko@gmail.com;
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

On Thu, Nov 21, 2019 at 1:42 PM Stanislav Fomichev <sdf@fomichev.me> wrote:
>
> On 10/11, Ivan Khoronzhuk wrote:
> > No need to use C++ for test_libbpf target when libbpf is on C and it
> > can be tested with C, after this change the CXXFLAGS in makefiles can
> > be avoided, at least in bpf samples, when sysroot is used, passing
> > same C/LDFLAGS as for lib.
> >
> > Add "return 0" in test_libbpf to avoid warn, but also remove spaces at
> > start of the lines to keep same style and avoid warns while apply.
> Hey, just spotted this patch, not sure how it slipped through.
> The c++ test was there to make sure libbpf can be included and
> linked against c++ code (i.e. libbpf headers don't have some c++
> keywords/etc).
>
> Any particular reason you were not happy with it? Can we revert it
> back to c++ and fix your use-case instead? Alternatively, we can just
> remove this test if we don't really care about c++.
>

No one seemed to know why we have C++ pieces in pure C library and its
Makefile, so we decide to "fix" this. :)
But I do understand your concern. Would it be possible to instead do
this as a proper selftests test? Do you mind taking a look at that?
Thanks!

(please trim irrelevant parts)
[...]

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAEf4BzZWPwzC8ZBWcBOfQQmxBkDRjogxw2xHZ%2BdMWOrrMmU0sg%40mail.gmail.com.
