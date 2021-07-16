Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBV6QY6DQMGQE6DCPEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F333CBD8E
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 22:13:12 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id c20-20020a2ea7940000b029013767626146sf5503134ljf.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 13:13:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626466392; cv=pass;
        d=google.com; s=arc-20160816;
        b=WrpgeniWaPGshexoN0M0Jxe2Lx7KshY4hvRqCWp6LDXPidp8Qw3WoPIOQxNutlzn6W
         WAMZJdzgVyC3V0Jt0jITX46MYvvhAxGDSthCd0rcTdOAtjOkNg3b3NOQrvVMEop3KKdz
         vLq3Cyqn0shAMryvh0yYfzyUHZ89Czq2X9pj4LJ4/8eIs0x0zDrkQAxNIdfWEO68P5Y1
         ChhYiwSJjot3+c4YMdHQDfvIE2TvnWRD5c8C1cQczNZeWmT4jVAY6RsZGWsPB+5s3Vf6
         t6KxWucN3VjcuXW0YHeA8m8KtSZdXhcxr8XphgIxVb90EBpDWuVzWB+waVCWZf16YZtK
         5HdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=CRLdOSQJAK+MpegewKOwpsO56d6uSsuZzjgGvsItAS4=;
        b=xSSwjyt3HzPY7giN3KKb0BYCVQlJnrPPBFsnT315G3p2nKgUBJxurNQpyUG9tsbKca
         gNuBPNYpAEWLkx4FY6B/JqLklJtP2/yMdRFH2pFBJ3+ozEDK5dJ+nVhh6Gox6ff8lh9u
         4JBIMHN3AoqnNGzRoUjrx9G7CNpgGGuxqJ1Sq0HPXn5ElN+2oKNSmb9bDm28K2Mj/dOH
         zu09tvyq/plF/j9TO2Nt6VD2Tpk+qn9dBa1CpYvkfA+t+OhSLTuLO1rLGDj7Qs/PIyQl
         hvxzIQ+xzb+prFUWdG3Id/RVPoVMa3IuH3vWNTr2nm/WFnhOeck/uHQVlH7V4YWcNwvW
         +ZfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CRLdOSQJAK+MpegewKOwpsO56d6uSsuZzjgGvsItAS4=;
        b=ZkyRmE8Z1POnKr0a+WRHui9B28KMpoJUyBusFXT5VlKxEvSAbdMWZQhat31OAxUgWC
         OLmQ4i81VnHV8+Dmz9YmOx6oy/CU5t/ZVFXZx3ru6fjPkGmPgNh5SlWwQf+6DUowd/X8
         C4Tqb6FtD1APoWwfTgwyaHlx5bnXmf5Qrd76FCSYZkCnGtfGteMD+7MpF+n0alNl/HCt
         9O3BYAnvWJO1qKAiIpMnFKQkzDdKjmHD+hZPBbhNnD8ijxFYoEl+9skZYS/SQRqiQvDk
         fq5cEoPIY0EUXghCcDMjtgUoCOlR4OMbfSJCuLKoKmizUaHleRVWIVW/hkRTwLIJkWei
         knEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CRLdOSQJAK+MpegewKOwpsO56d6uSsuZzjgGvsItAS4=;
        b=X+W35AHKmiiURgCeBtZ/qgCKGJUFvQqCSuj9yVERGppkMwrehxQyIZ3iepUkDExAOn
         5g457T9UFMv4Z2EB0f3e5C0go5+1rqJSBLTQ9nB5QowsI1khSKE+P9yy/lcjeaeg4xAP
         OFIDfJimB8LHfVLpiNHDh29MCxyBWRGiqeSkZnxeuk3fZFcxzhEEJHJCj2Ah8QJiIEbi
         xWbH+atAF36AHw7/DJEN4nql/dpMYLTKCdVPCOMU6Rn7UgUbRwkduV5EL0uxewAE18yF
         iqhV7FYlamzROiJOjuCPwt7Hhq6XG/AcJXmZor1n1ZJMmChxyhOTxgM3Yend6F6N5+lF
         A0KA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HRvO9WwhDsHFs67GYn1E+fDUvxT/Ftua6GdOVJrOlizzxeRJn
	3rot4fqXNCwsP7KIJQ2H5oQ=
X-Google-Smtp-Source: ABdhPJxZNSa8vE+BIGgNjOUe9fh7wORwzU/BkkD/y+1XiYpx3tBe+SoQydwh/wf6y6uqjfvp/1AcCA==
X-Received: by 2002:ac2:4109:: with SMTP id b9mr8627244lfi.566.1626466391973;
        Fri, 16 Jul 2021 13:13:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls758340lfa.0.gmail; Fri, 16
 Jul 2021 13:13:10 -0700 (PDT)
X-Received: by 2002:a05:6512:159d:: with SMTP id bp29mr8839922lfb.619.1626466390896;
        Fri, 16 Jul 2021 13:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626466390; cv=none;
        d=google.com; s=arc-20160816;
        b=r2PSw8afMNLFoj/yzi4beWoHdBSh6fCcDC5BtNAbDg8RO5qILM1dRitnk3zY2ejvay
         Pl/TQtYmiyuye0Btb8WFuEgPRzfKK9h8OtVSp5oXNv7eHWPwAFImI6aNuzOknEjHFEV6
         cPyat16MEvSNLsPTfd5MuIfVLyQrTTyDS2VtF6qpcEwh6Q+ovr2EcXa2+1QD47/ltJ7x
         LXwpzRBrEayCUrXmDOxM6rYvJ1AV+cIbZ+ePue1oVv3SIT/gLX3z6RCvfv3+grKYgS0j
         S8II593s2m0COT4oASiuLESTHh9zm8jjxl1zJFz3ISuYkk2d0xGW0Yor9BJtgXp3qiUN
         UrKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=a685FLjSH+9umNSNQMQiNSBjQC5SAccTy7GmDFrt2Ew=;
        b=g7v5SQLRkGraNEDwmt4vBiNPrjTlzFI8jhYBd6xUpHMgZDBn/MWXrADPXnVUe4aVem
         TknAQZMdblnZH22PLoYQ9mE/O97PIWBPM6Wl0OOrICCevjPujC1jzDeRp/99pU6P3lx9
         /qhU47e4zLtZnbxg+FfmPKugicRtK+nkTTAUoztoKdPQh4oh/1nU2mfZAxqKUuSFV5v7
         8Ui2yXqrksInzhrgQ9qhOMQzZIx3GeGBlmhEfOBxVQgI2WIxnBjSY499uK8eyFPZ8+oR
         BqP9ic3h9S+BubLjAhd/JnMOnC9kL8tZgSjd/gTADed13BKIlaEA4tZ3MvSbf7eIDuqo
         KB8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id w9si117907lji.7.2021.07.16.13.13.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jul 2021 13:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy01.your-server.de ([78.46.139.224])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1m4UCf-0006dK-96; Fri, 16 Jul 2021 22:12:57 +0200
Received: from [85.5.47.65] (helo=linux.home)
	by sslproxy01.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1m4UCe-000QgN-RO; Fri, 16 Jul 2021 22:12:56 +0200
Subject: Re: [PATCH v2 bpf-nxt] Documentation/bpf: Add heading and example for
 extensions in filter.rst
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
 John Fastabend <john.fastabend@gmail.com>
Cc: "Roy, UjjaL" <royujjal@gmail.com>, Song Liu <song@kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, Andrii Nakryiko <andrii@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
 Yonghong Song <yhs@fb.com>, KP Singh <kpsingh@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Jonathan Corbet <corbet@lwn.net>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Networking <netdev@vger.kernel.org>, BPF <bpf@vger.kernel.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
References: <royujjal@gmail.com> <20210712173723.1597-1-royujjal@gmail.com>
 <60ee2dc76ac1c_196e22088d@john-XPS-13-9370.notmuch>
 <CAADnVQJ=DoRDcVkaXmY3EmNdLoO7gq1mkJOn5G=00wKH8qUtZQ@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <80579c8d-ecdb-4334-9912-c04f75f7a6d3@iogearbox.net>
Date: Fri, 16 Jul 2021 22:12:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAADnVQJ=DoRDcVkaXmY3EmNdLoO7gq1mkJOn5G=00wKH8qUtZQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.103.2/26234/Fri Jul 16 10:18:39 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 7/16/21 3:48 AM, Alexei Starovoitov wrote:
> On Tue, Jul 13, 2021 at 5:20 PM John Fastabend <john.fastabend@gmail.com> wrote:
>>
>> Roy, UjjaL wrote:
>>> [1] https://www.kernel.org/doc/html/latest/bpf/
>>>
>>> Add new heading for extensions to make it more readable. Also, add one
>>> more example of filtering interface index for better understanding.
>>>
>>> Signed-off-by: Roy, UjjaL <royujjal@gmail.com>
>>> Acked-by: Song Liu <songliubraving@fb.com>
>>
>> Looks OK to me. I thought the original was readable without the header, but
>> if it helps someone seems easy enough to do.
>>
>> Acked-by: John Fastabend <john.fastabend@gmail.com>
> 
> I cannot figure out how to apply this patch, because I see:
> Applying: Documentation/bpf: Add heading and example for extensions in
> filter.rst
> fatal: empty ident name (for <>) not allowed
> 
> Any idea?

Same happened on my side. Maybe not sent via git-send-email(1)? Anyway, I've
applied manually meanwhile.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/80579c8d-ecdb-4334-9912-c04f75f7a6d3%40iogearbox.net.
