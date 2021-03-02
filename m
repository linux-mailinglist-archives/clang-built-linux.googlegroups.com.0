Return-Path: <clang-built-linux+bncBCS7XUWOUULBBEXM7KAQMGQENRX7GMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id 6253932AC70
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 23:02:59 +0100 (CET)
Received: by mail-vs1-xe38.google.com with SMTP id i189sf3054820vsi.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 14:02:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614722578; cv=pass;
        d=google.com; s=arc-20160816;
        b=GXeHCEhbcJjZ3vvu3v7AgFkmJ6h+6HHClzX98x7dCilAa+3RCgDTHqw3QpIJ4I2fHV
         zi/zcnW5SH4y/X0XKsAfElTqTC8v9l6c1KXxDWlg+7OXXrL/RTsFLA0DcvMp3Pq9Rv/K
         VNLAtO4nmWNUpr+Ss21WbF/yWLstniW1b5hNPu52F2YCHFAUpoFSlc/5cStUhW08Qw33
         ZQN8gBJ2RUbwjm0LP4czwGcXn8Cb892z6oVbrkJYKr+UXu/YBJOYW+k/gUjvvPBBI/w2
         sPVVm+wIs4uiHF5QKlBGzAcAt/iYQArJe0osgdBXub+3Gi05h3IFenkcBS9MoCskNNV8
         cQwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=1b0aIyiI6DF4gon+gySf7A982Mfqv8vF/ZzF4WraK1I=;
        b=lPzadOwosdDXlsAB3hrQvNHgtvcO8DprADhCCPiyUJFt3Nakzbor+M7NVYE/rCqHEB
         hJAWrNzal0SVR0s1rQ/dCSFTkhEoPmZMpe9ag4S1kPA5jf5VnE9ktUOrM6qGEq43iGJZ
         b9/P5jPnL0+hX4wAIRVLMmv6Cm0Nvlmzg/YwgaJxf0IXSxUDCp3wnM6a/T0ugC2lZk2F
         JIOfNI7qEHYlz5RSnuXZuAIWoqJUzQOuIGcph4F8AmchOYG/wADoO75+qFXCJ9zmAxdQ
         HFzBPpW5Bg+XT22NHkZJAfrhntWa0lb5dmqYZt1z64XHG+7w6/byb57ll5YewFAAmg+G
         qm1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v37pp5Ke;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1b0aIyiI6DF4gon+gySf7A982Mfqv8vF/ZzF4WraK1I=;
        b=iim6uu2zqb30JpM0jkLoRGKqkv3/qdUYMKwyLG6RXmbuQkhyhVihAo2SgaDORRRCF3
         Xq3fny2ZLhJDYgkQ0nrADFer/OPhzcm4JU0VUveJeFf+VtWGbiLRx74FyRBP14U4fV/J
         cyG05gSMafyyG+7ioEfwSho6NimA/utsf9KvKKhYbdHlzyPQWS1DWIF9hwNU1OYYQ+pT
         0n8OD4bHqlx9PZRZe4A/knpc1MDmsehZ3ukHyGhUTZV/qxOZAubT//W49FdIOlPbvj2M
         gC8NNGzR5HzKr0MPwGSr7n+zNUsUcOCN5rIE09gpb3A3Mn154f54k6txws6keEQJvvOi
         nssg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1b0aIyiI6DF4gon+gySf7A982Mfqv8vF/ZzF4WraK1I=;
        b=CMhoLQ0ouK6MJvdA8Lajhgl1C9N1aya8ejUYIqaGqbyxtVBvl8PHX2069r/DwiYNUn
         xp6DSecELc0LKBZCUZVxXUevjWNyq4NkCfLB8ReZEnO7ufGsTsqS9E9t02FKBBVyrr1x
         cAhekoWDp+KjN+rZRj9JnN2a2Jz7CdVPdEumKXhhccWepGpu6KsHqBq8iAClytcEHV7F
         Mrq3MY3pywFS1yktELOhlIZGtUKlGyP/7esEwVm26VcBSPeo0quQBVmmm9RHkWvKkk4K
         5x1IAP9m9tSGlVnjrzErVsA/9z1IqHRXW3G/DsrzyzfPalpnaXRbsyPqAZp/xnK2cv/x
         khCg==
X-Gm-Message-State: AOAM532nxPgCg07SXCz+dPAPljfMdaGKBYqPfIFoFi/8c12fpEvwplIU
	JMNVZz/ZXG0CuQVtab0RJFg=
X-Google-Smtp-Source: ABdhPJyFjWL0acyKjmnJr0KQeNwnJ2+4iWjgEE4zFeCNAkOy+NFAy2OH3Xg0gTh3RA50iBLKpnpfzQ==
X-Received: by 2002:a67:8a87:: with SMTP id m129mr168620vsd.32.1614722578151;
        Tue, 02 Mar 2021 14:02:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:23c2:: with SMTP id c2ls17402uan.0.gmail; Tue, 02 Mar
 2021 14:02:57 -0800 (PST)
X-Received: by 2002:a9f:230c:: with SMTP id 12mr13781346uae.0.1614722577622;
        Tue, 02 Mar 2021 14:02:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614722577; cv=none;
        d=google.com; s=arc-20160816;
        b=w77VvCyRHVTu3sXtipHgOZg/Xz5bCluvaXsmlU7VUJx7MZ6pW3C1Uv0XHcncZPxJNE
         Xc/gWbqpqyRUjCR0xXV7O5MyXHW2ms552h+MMCQLRATN9PNXacVyKjnbANNX578KLcvy
         1RiZh6K5z1YTyLl/a2YFqqaRw5GnxS8N4aOXw22sgav57jz/mvvHQVgRDrb8u8UkuExz
         9HSd2h8VcEcUrjUSPr0ObZabuuTb8V0WxLu/UUqAdD3XmtZAhylcMxWhk3frT4c1FM1u
         rhRRqwjhbt4r4cI4a4Tl538txk2VvnBtv+jMSn7/lw7NeFxS853LUpAn9xZR9f2b0N0k
         XOXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=VSzmNjYTy01rJCfITYLeDvSot7XkofY2f8pmB6oIiPU=;
        b=NzQx3Jkp+ZKAIgr0RDQ6i8MUnesesfJBHqQc6dR/nIKLnbQOxwcGShj6zkYyxm11QD
         xgomS/9r1zOOW4h7NZX6kFOn+umzmCY0yquSPVyMBJ+7jw2ufq7uztFT62YnosfKR+K1
         AZNZl98Q3W/n46Tt7Sn2SeClU56Vrtm3CdryzjgEq1mMJFrmTrmtyykH9pnnZWFnZboc
         CpsONGn535Em7XDTz8V/DTdqFf/42aIKGg0npNGe9GVHT6Sxq4GiMSfsjn6GahAXrNHS
         7GRtqMeEKXKeFkC4RNDz18baUP3hCCOsMydCyx2Y7V+m0OjufYM+zc1AQ6jHXbcjNk86
         FBlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=v37pp5Ke;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id r5si951639vka.3.2021.03.02.14.02.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 14:02:57 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Received: by mail-pl1-x631.google.com with SMTP id s7so5642808plg.5
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 14:02:57 -0800 (PST)
X-Received: by 2002:a17:90a:1b08:: with SMTP id q8mr6229310pjq.203.1614722576641;
        Tue, 02 Mar 2021 14:02:56 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:fce5:88bc:1857:36b4])
        by smtp.gmail.com with ESMTPSA id g6sm22462672pfi.15.2021.03.02.14.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Mar 2021 14:02:56 -0800 (PST)
Date: Tue, 2 Mar 2021 14:02:52 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] Makefile: Only specify '--prefix=' when building
 with clang + GNU as
Message-ID: <20210302220252.ulvlsfyp4ordwrky@google.com>
References: <20210302210646.3044738-1-nathan@kernel.org>
 <20210302210646.3044738-2-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20210302210646.3044738-2-nathan@kernel.org>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=v37pp5Ke;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::631
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

On 2021-03-02, Nathan Chancellor wrote:
>When building with LLVM_IAS=1, there is no point to specifying
>'--prefix=' because that flag is only used to find the cross assembler,
>which is clang itself when building with LLVM_IAS=1. All of the other
>tools are invoked directly from PATH or a full path specified via the
>command line, which does not depend on the value of '--prefix='.
>
>Sharing commands to reproduce issues becomes a little bit easier without
>a '--prefix=' value because that '--prefix=' value is specific to a
>user's machine due to it being an absolute path.
>
>Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Reviewed-by: Fangrui Song <maskray@google.com>

clang can spawn GNU as (if -f?no-integrated-as is specified) and GNU
objcopy (-f?no-integrated-as and -gsplit-dwarf and -g[123]).

With LLVM_IAS=1, these cases are ruled out.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210302220252.ulvlsfyp4ordwrky%40google.com.
