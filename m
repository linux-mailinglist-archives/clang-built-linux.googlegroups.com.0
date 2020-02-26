Return-Path: <clang-built-linux+bncBDV2D5O34IDRBJ5F3LZAKGQEYF7EFJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECBB1702F7
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 16:45:44 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id o13sf4643875ilf.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Feb 2020 07:45:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582731943; cv=pass;
        d=google.com; s=arc-20160816;
        b=JNnl6p89eR+jPHOkbGXLAOoL3ILluZDCQUbI9o/hdbdfXhV9RhdHRfXDpE28OVvDGV
         jSWMDLMOOCCPvN38dG3WxHqYTMjJi60dZpp9CayXIhSfh6YTN7jmX4StGDeqc+D8mifE
         ca7X1xo1xVVBYZHVH7Bg+HxTIOhqK8eNEoCK291iaHZkH6SQip6cJsVhXX2wdiv3bLeW
         qUGrHNmJlipNxAu6M4tLL7MsAePFqQ6QC+VVY3FRM78sIzsZfGnL3hm2i8S1EM1sFt2p
         SgonIlrI8gVdZ6k70Bs9k2/kNwPEul5rjlvNUuWzbFJMgkK/VVYf1wQMm6mrIhRxXrns
         MXHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=fH97s/8bRTZVNj0LsOn74fiskHTjKYBkE8h00WB7kIw=;
        b=UhwcTxYznlhAoH5kP73F4qmI7K1FtJAKitsMiKYW71SQmj8wIv/Sne9iNwv/MUA2kD
         qrw5UWZwQY2yAMd3/f9fqkdzGWxNnZis6sU3lHpdMVLqcKom0efyYQOxpPy8ZRsJUjHJ
         +vVCvDGbNuWN2ylvG+i28XR5Flpvy+LpgBlQ/7zSFFj89M63hze4bhXT0/NuNTGDIkh/
         NXBc0SKdntTNyFylwQuOTaS24Im6oehYbSlSJqIMRo64sdwaAv+bzJ1da9GcdS9pw0lA
         YgEfd0m76fpH79jiCIXDZC0n2o2uACSnMgz9dgk387AlkLA3rU37JtrnbGcLD63giI/f
         8igQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=eNHjTAaA;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fH97s/8bRTZVNj0LsOn74fiskHTjKYBkE8h00WB7kIw=;
        b=pSRAH3/UuQwKX0PGJAsbpJbEDUo7YME8Lg7sUMb7rPf93It2FNEHEqZZCqhrfDQlPS
         XBjUNKSZ7Pol7PV6PbUzzP4Wzj/yzb0dv7Wr/5hw8sU2u5msWueHg1VdGxO4ukm1G8li
         aJfmyK0qnizfE4cVL2+0ar9B1Ycctu9zlyrmVYOQfUzngkTq6q1NYtoqmLBwz6OwpM0L
         hDT1CHY6uwQXW0ufRlTwGBc9HtstvebYzqEV0BzEKfP04HxqdZnY1NAdJLOoscPd8yXf
         ep3BpITsIL9r+tBbraldPkvxjA4VMIrZxBw3SbVVfv7Jaj7HwHd2w/5bnuADvEvtjrtj
         srrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fH97s/8bRTZVNj0LsOn74fiskHTjKYBkE8h00WB7kIw=;
        b=eqKcHh8gyYm91zjE+WBqCbjezgufreOu/qMXFQBakJaVe9hAg1kCjloQ5Huk81xoCd
         Ld852Bhv5xQjXrqabXAM6/X4hKnHxpLFcsW0ZUYqtWhG4un7t85mncDpwxHggfdJ7pUg
         8EKZt+2cau5H91fgzY+jmd4196qavPbl6CcQ4HrztbUC7MpD+ATVKbhQGf1Com5Y7hU5
         0ehnEpUnhb0gkgcLCLg3hlGQTE/QTGyWoLt2eNnu8fepAiuzk8FWrzmGdcx5EQHZICI2
         YQjayQLz/KRf5dK0S7TZ/wAcHP0fC0UZkUOYuVbbLgj2p0+WBdJ9uuiWrCxAtY/rFsnM
         ho2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVQ+ccNz/F/lZrVJG2tfXI0xTuzZjkx6HgTn6vfi45IjM2O0mXq
	J5sOwWMk2v7yc5z2fye+q9I=
X-Google-Smtp-Source: APXvYqzPE3kcQYy9/zj/Reg2mJSK5W0I+04bk1ulW2/7AYy4m/h87eP+AfIbEPm7VrnX9Pi8V6dJgQ==
X-Received: by 2002:a92:d34f:: with SMTP id a15mr5790741ilh.184.1582731943406;
        Wed, 26 Feb 2020 07:45:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls733142iog.6.gmail; Wed, 26 Feb
 2020 07:45:43 -0800 (PST)
X-Received: by 2002:a6b:3a09:: with SMTP id h9mr5351859ioa.81.1582731942971;
        Wed, 26 Feb 2020 07:45:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582731942; cv=none;
        d=google.com; s=arc-20160816;
        b=tp8iIDi1e015+fEzcwHTsezOD7znyL3cQPRezTdqwrUEM9XA6ZASB6aqcmYHrPELfB
         Juj4BAeJp137x9GBcJyfiyF/CVLgu5qyWVq4LNwOPQs6RBIXUusA+LWrmJKtJLk0Qkg+
         B0TDRM3tQY0Mia2EW8wGN4iTKgkuK3i/gO90NY+j35TA0eiBiDOobliqrFZd+p+vTF19
         P0XGsvTYvYcOz4hnmiEUQFB8w+5kNXwbw59SlllUvNdfB/VstUVBprWGb1P2sNeEJE8h
         GWw2ugTfIe1XWQgnZqgIxuUOmEoyvz/DN8DozVPIxBTlRmPzIRjD0HNgoPVF34dhopt8
         OUSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=44++bZYwMLEcKWsWEdjH2TMBF93T+j8iNKdpvJ43O1c=;
        b=N4DGrg7/OCmZbUPBWHNbMD1k4JWGDJwn5Q/fpANnWK8SlXi0b4rrff7y6iObMQzdWx
         0c6e7fZUR3hca8QXbvCIG+k1GNZlW8wE/yIhzfKETtRSn1T/javKpjAY09mNUG5rA5iE
         PWQPcGqW1nTJhAG03WxV7rEY/DGc4vmnii2X1llXNfTVYN0w+4BroExpT9H+iWbA/7lB
         MSzspBXbDFEFF/gLpbYi9fJHmWsejVNdNY8l9J5GxuQWj6GNEE4Eks/SXz+ZlqPAkRM+
         f892iIkvtSn63lD3m7H9w9cWyRg2jThtAZzIt0VfliTu2Dtbzo6Kz3XL/qnCT++ZhR90
         3WoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=eNHjTAaA;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id p9si128923iog.5.2020.02.26.07.45.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2020 07:45:42 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::19c2]
	by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ysW-0003sn-FG; Wed, 26 Feb 2020 15:45:40 +0000
Subject: Re: [PATCH v2] Documentation/llvm: add documentation on building w/
 Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Kees Cook <keescook@chromium.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Sedat Dilek <sedat.dilek@gmail.com>, Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200224174129.2664-1-ndesaulniers@google.com>
 <20200225210250.64366-1-ndesaulniers@google.com>
 <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <d70e7d82-4f08-0a30-e54b-8b0f225145df@infradead.org>
Date: Wed, 26 Feb 2020 07:45:39 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNAQJuF__26R+fEsdfYH1SAJuo3-8grGQAE4htjxzEG-nqw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=eNHjTAaA;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 2/26/20 3:30 AM, Masahiro Yamada wrote:
> Hi.
> 
> 
> On Wed, Feb 26, 2020 at 6:02 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> Added to kbuild documentation. Provides more official info on building
>> kernels with Clang and LLVM than our wiki.
>>
>> Suggested-by: Randy Dunlap <rdunlap@infradead.org>
>> Reviewed-by: Kees Cook <keescook@chromium.org>
>> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>> Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>> Changes V1 -> V2:
>> * s/On going/ongoing/
>> * add Randy's Suggested-by
> 
> 
> I do not understand this tag update.
> 
> As far as I saw the review process,
> I do not think Randy deserves to have Suggested-by
> because he just pointed out a typo (on going -> ongoing) :

I agree.

> https://patchwork.kernel.org/patch/11401189/#23179575
> 
> (or, was there off-line activity I had missed?)


-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d70e7d82-4f08-0a30-e54b-8b0f225145df%40infradead.org.
