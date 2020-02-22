Return-Path: <clang-built-linux+bncBCS7XUWOUULBBDFNYPZAKGQEIME3WSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E48F168D2E
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Feb 2020 08:21:50 +0100 (CET)
Received: by mail-pg1-x540.google.com with SMTP id w5sf2384572pgw.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 23:21:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582356109; cv=pass;
        d=google.com; s=arc-20160816;
        b=c2yg/ROBBQx54bzWusW1cQGpggm/dnABgkjX9hZ+iaNOLJF8f9TNPOe1gNtl6nzQxQ
         rmEM2SloDpPsHBcqqFThF10uJdsPDHm/sDevpxKlzdlFyselQ2ple9/v1mbwEpfAn30O
         EynaSiO4EzuKl5wxZEB1sSyjixoQ4rjzDPP/hQ/67eqT1Xubo4HxhafYFXC2zyh3+HOP
         pZJe0l7Wyx3BhpFVQjohvNMNKzXtjyYcM4YGa/SNXGYTLy0j7NCzNdaEcjjEXEkOKeLo
         0Tq48AgQNhyrwjwN9zRmXpyReMZwYCoJwlYuqLQQafODvsaOua09S2mCPeDp61ZWZZoM
         9nUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SBKli09vS288U4AOM/Sa3+yZshW6qBPHLG2sFp5hqsM=;
        b=yMYELX53b4tZKBtAxqa/v+8g0oRCvSxFXCvzUOpPpWQY01edv8SqcoEoTWgx1tqo0O
         cIRb3CUDRSiQauONBA2iNGiknGiWxPFykGu+EDhKlRVAksHt6fdvTUGOq944w1gCD1Us
         SajEtG2jj4+HUC4klWN6rfDaje2N4pxIqnhbQ4HzUcpciiuKZPFyIrxNSkICmqSBKAj0
         AQ6xwZ30bveEgwVC8XMMIThwCkIwappzA1B5k+yVKC7idXhhLFRWdBi0/+lGwecr6vlG
         VQ/61+Kq0LhrnSssR2/A6hge22s28S5D4xxYPK7wivl+Lk4wtX3xjKxq4B3d8QvghT1m
         Qqww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nIIzMWrQ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SBKli09vS288U4AOM/Sa3+yZshW6qBPHLG2sFp5hqsM=;
        b=D/U1wouhETXEvIQnDZZ5qOdp0uR4Lv7t/thXM3gAQIjjmbf5498hHoVbOAEWivJ7sp
         O/MwxvHVAL5lmWm7JAp8+TA7LYBs8SinGcfdElK0hPKTz8KkEnVO7t2eKoaS7vr37d+w
         mvlO7E0NPVdbRl6YPO1uzQOEHp8i47epEBaMKlnkUyvTG5Za49tbrBnUBU5iLVNL3K2A
         LPW0+arnC/h0B3OTdGZSs3DAQ9x8HDXtbUmNyCeKZyRdAo4hHwdIhNEVaXqKDKp5ZCon
         MHCk4INOmpAkco/Dlz2QwCrezBAZk/CSo4ZnAVUsqJfZcte4EdcPhf7mKt+1uuklB8AB
         xCUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SBKli09vS288U4AOM/Sa3+yZshW6qBPHLG2sFp5hqsM=;
        b=oLLZagFbc43vbyMQp/pBSQyxNGKl3bI4ha3iZIrxm9EYL9k9E0Vfq+BOndPaQprZus
         u3vlC2WAe3A7qwLkUD3otjFLmuZo5/7wCWKGvsOAHgpxSei1CVYaWfZrmUCTrgHJ41XW
         Tr8KImmt6nO46uMVMHqzfxDZcfNwJO8LC4/WU4a4Z3Wx8NeEPdRh5pzYfimXjf1d3f6I
         iPahk+VIuAKm0pMzlO2z9wdYQQjx1ye22geVqQKqx3aAPXSbUJNGdrHTlihpyhynbCXz
         80CuA4SlfmEO324zpfexUM060XTLzrDutxUvOf5b0uE2xudRriyFsNb5UONiBQmCT4oo
         SSCg==
X-Gm-Message-State: APjAAAVkT4a/pRqT9dSvf++HKTQs/epT9rcKEH4i+KnEpU57mWL4mi0N
	XJUc8CnCjHjvH4c8AiyR/UE=
X-Google-Smtp-Source: APXvYqwTy1Qw3iv7xr1B7foHh0IKCAQWZHpuxr6smTft3gdSbidQlqA/hgsiVWA7BqFbkCaibQ/LXA==
X-Received: by 2002:aa7:8597:: with SMTP id w23mr11291376pfn.38.1582356108861;
        Fri, 21 Feb 2020 23:21:48 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:46ce:: with SMTP id jx14ls1507487pjb.3.gmail; Fri,
 21 Feb 2020 23:21:48 -0800 (PST)
X-Received: by 2002:a17:902:d711:: with SMTP id w17mr41235237ply.303.1582356108422;
        Fri, 21 Feb 2020 23:21:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582356108; cv=none;
        d=google.com; s=arc-20160816;
        b=PIHEzNYU+btZmpLcPfdfghkAQxjkcgDNADp4DtsrtOObz3BuwnTm24ULFwOWv/jYAi
         A3s5SURDYpEtIdy9UncS+14UhHsln3UFlJynXMjLhvN1jPN/cjZZsYePeTWBYZDBNvhc
         4Kc82QND4AamwBKBIgjPdbCtLugiFaKfqITYumbc/d5rLQ4vLyJIBEuajzK3OG/IWqVb
         CZ7QKaUmyOAFXxbdkLgSx4qaR6KY4AwPXfzkt+NKBBObfpXEGYOI53MWyRgrphFQ4BmU
         Ggw+L0+aNEV6dUebDWoXBaum0VgZyk95nD+RTpXKGoAKROdnCuVKnWK1toejejnx9bcQ
         n/tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bv75KEUd02gxsaskLabjo9rQm7ohDzez9MAAHQVvNPs=;
        b=M/ZV2tMJmysvStjxQTHF9GUTaMZPdI4maKnFqxCl+rbfI3cGNMlWzwzk5Z4kd33y3c
         DuIgxARr5vP2YQP9gXaIkbWOQec80oF82tgM5780++VQmHxOrjvDtguJU+I/A2SpP7wK
         4xu4vVErhFNfvWirBHh83cQAht3cT4IjgKwmjf/N8nMpEjo/p0naf4Hd0tw5738bUhNc
         mQPTJ0+oDgrtVogpSWtIanWBsB862GU+KUQvvcgE6tMWtBfVNyMGtMfNL5FjOf0cu+vU
         ASL26ktVSu2zCm3Xq/xDpchw9aNo/Aa3GVAkkA4NGouWtiOQy2S14AjV1yCj+A+6NeKZ
         iyTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nIIzMWrQ;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id i16si197438pju.1.2020.02.21.23.21.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Feb 2020 23:21:48 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id k29so2467350pfp.13
        for <clang-built-linux@googlegroups.com>; Fri, 21 Feb 2020 23:21:48 -0800 (PST)
X-Received: by 2002:a05:6a00:2c1:: with SMTP id b1mr42205921pft.80.1582356107845;
        Fri, 21 Feb 2020 23:21:47 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id n2sm5024772pfq.50.2020.02.21.23.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2020 23:21:47 -0800 (PST)
Date: Fri, 21 Feb 2020 23:21:44 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>,
	Arvind Sankar <nivedita@alum.mit.edu>
Cc: Borislav Petkov <bp@alien8.de>, Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	x86@kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com, Michael Matz <matz@suse.de>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200222072144.asqaxlv364s6ezbv@google.com>
References: <20200109150218.16544-1-nivedita@alum.mit.edu>
 <20200109150218.16544-2-nivedita@alum.mit.edu>
 <20200222050845.GA19912@ubuntu-m2-xlarge-x86>
 <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nIIzMWrQ;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::441
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

On 2020-02-22, Nathan Chancellor wrote:
>On Sat, Feb 22, 2020 at 07:55:21AM +0100, Borislav Petkov wrote:
>> On Fri, Feb 21, 2020 at 10:08:45PM -0700, Nathan Chancellor wrote:
>> > On Thu, Jan 09, 2020 at 10:02:18AM -0500, Arvind Sankar wrote:
>> > > Discarding the sections that are unused in the compressed kernel saves
>> > > about 10 KiB on 32-bit and 6 KiB on 64-bit, mostly from .eh_frame.
>> > >
>> > > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
>> > > ---
>> > >  arch/x86/boot/compressed/vmlinux.lds.S | 5 +++++
>> > >  1 file changed, 5 insertions(+)
>> > >
>> > > diff --git a/arch/x86/boot/compressed/vmlinux.lds.S b/arch/x86/boot/compressed/vmlinux.lds.S
>> > > index 508cfa6828c5..12a20603d92e 100644
>> > > --- a/arch/x86/boot/compressed/vmlinux.lds.S
>> > > +++ b/arch/x86/boot/compressed/vmlinux.lds.S
>> > > @@ -73,4 +73,9 @@ SECTIONS
>> > >  #endif
>> > >  	. = ALIGN(PAGE_SIZE);	/* keep ZO size page aligned */
>> > >  	_end = .;
>> > > +
>> > > +	/* Discard all remaining sections */
>> > > +	/DISCARD/ : {
>> > > +		*(*)
>> > > +	}
>> > >  }
>> > > --
>> > > 2.24.1
>> > >
>> >
>> > This patch breaks linking with ld.lld:
>> >
>> > $ make -j$(nproc) -s CC=clang LD=ld.lld O=out.x86_64 distclean defconfig bzImage
>> > ld.lld: error: discarding .shstrtab section is not allowed
>>
>> Well, why is it not allowed? And why isn't the GNU linker complaining?
>
>No idea, unfortunately I am not a linker expert and the patch that
>changes this in lld does not really explain why it adds this
>restriction:
>
>https://github.com/llvm/llvm-project/commit/1e799942b37d04f30b73f6a9e792d551dadafeea
>
>CC'ing Fangrui as I don't know George's email and he is usually
>responsive to ld.lld issues/questions.
>
>Cheers,
>Nathan

In GNU ld, it seems that .shstrtab .symtab and .strtab are special
cased. Neither the input section description *(.shstrtab) nor *(*)
discards .shstrtab . I feel that this is a weird case (probably even a bug)
that lld should not implement.

In GNU ld, the following is not useful, while lld will discard the
synthesized .strtab as requested:

   /DISCARD/ : { *(.strtab) }

I think it is better making the intention (retaining .shstrtab)
explicit, by adding a .shstrtab beside /DISCARD/ :

   SECTIONS {
     ...
     .shstrtab : { *(.shstrtab) }
     /DISCARD/ : { *(*) }
   }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200222072144.asqaxlv364s6ezbv%40google.com.
