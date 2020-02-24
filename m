Return-Path: <clang-built-linux+bncBCS7XUWOUULBBZEW2HZAKGQEW7Z3NZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 79F9416B3A1
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 23:17:09 +0100 (CET)
Received: by mail-ua1-x940.google.com with SMTP id b18sf1591046uap.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 24 Feb 2020 14:17:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582582628; cv=pass;
        d=google.com; s=arc-20160816;
        b=WZEJvMJaZZv4K/iBPAmxIwgf2X96pNcrxcT2gcDnWWhGdXTxdwqy6Him7/qrwJ123f
         ZyynAgwhRNgPmFj1gUL1WMsrN1NtAzgY595GduRzE59pcqHLzkOKz8WA3TdmHY2d6qk6
         +95JQFzzRHhpLi5NCKKNcH3+O98ZfqUdmQ1IfcwCoWXhnjbFnPUmzZdG1T/DvZJIp1QD
         fiVt7IxGm4Y8vXl0KsKJdXT1xHnBrsCWNffdCHLTVqYr2lttQWPu8jWQwF5N1ZYdKeYm
         QuMZpX8fmYt4XY79yxBAauR0sSFJ67YAKzIzBuj3jZPeNROBKHwg6fVYKPqKsl54kTHJ
         XaAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=9ZyhRdojptG60R6Vukxzcu2GWjh8YRBskiGtKjWLe1Q=;
        b=wqkap1l4mg2LZnk7tUJJ0LJjvlmwr/5QHENSDj7LzFQvPrXxCeBhgHRcIyukVDb2qH
         OTTIw5U5tX4gsx+CEI8RtSEYQXJC1zTHi5RO6NEBjF9guqaMTghYEBwLH1iOhHmi0r6h
         fflCUjWDrOeBZqur612FxyoHcQcAC0Nz99E4sxUKCGwE8hahnzeVUB9o7d0kwQZiXtMR
         z+TbVsoXvxjcVzaFXLE+ZiQv3sCg+0PjmcfG/t4QxC6aTchYr2jytO8TQrmEKbhH3v3R
         HfkEJ9kpP2n2Q9nhpNkJ0r8XJA1vkdoRQWE28SPsNt7ztYYJ9pvqmOC/VAnNBs4FPJQU
         VEPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SSKlPPTC;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=9ZyhRdojptG60R6Vukxzcu2GWjh8YRBskiGtKjWLe1Q=;
        b=L1T9PsoAjXnJld4X4QRRZWroNsmf+RQtWJP4517/y0p8mN5m/m/XuFS0wKtIaILdVM
         TIzGcVovWXOuAvSd6vrNIsDwNyBrUQj1mEHCQx0x3gGYxzgQd+ge2k5wfe7BWefj4eaj
         DW2EEH0nngLHaulMddLRDnyN3iKhy2rlB73dy7Oix29/yjnQqywmVmKWHQ4z7K0DD5L+
         GfG2qCNzz/zE04A7BDh5KSl0DhbBJd8WNYMBEfXVHSN7oB+6eKrqK6iIpyvPgiUWux6Q
         0hE5nsoY7/4MOfBy2iDLnO3/uQq7Plxz4sQhUcjUgnMqxBrpPOQxc8HqmnL07Vyn/JtO
         1dcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ZyhRdojptG60R6Vukxzcu2GWjh8YRBskiGtKjWLe1Q=;
        b=ckybf4KxSYfgvr4aHjEY5aEYfQx4QXPF7lkTHm5OVTNz0BON32DK3pZuk4cBPVgjXl
         qt7awjpFVwNb5W9GewbRlqF39ffdp3zyU2uIpuf+MtdSh3B5PY58Clf0qgqZr+tZUkIw
         hyHN/LK7OOSg8N3CWirCQuvrgoFEyDmMUPWDdE5/wmkiBxBZqgIwqyiax1PLUYqASSQw
         srturVKgfyqrYrPTfjkZIOX4jYXm3O9D/AJLvC/ayA4uW0dlg+2JuEWqygjL6G6hiIdC
         8O20nzKKy1Eiw+YcpAPnxejzf1EM7efSRAq7wQpXqlnELRz0BIUH/iT/s4wsLLAUY79R
         DttQ==
X-Gm-Message-State: APjAAAXx2m6wOp3L7eyMZhizB/JmtQRjLIpzloo7MY/gqDZdCetRfb1g
	HsiFUs9JQnSrhGrzU9nW4eQ=
X-Google-Smtp-Source: APXvYqxwubDQ3qaTh7f6vglinUwbc+j4z4dEnq4JIBe5XQ12y52ZcFFwvQho3IP9p9LbtQ2Ofxja+Q==
X-Received: by 2002:a05:6102:402:: with SMTP id d2mr29391420vsq.146.1582582628518;
        Mon, 24 Feb 2020 14:17:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f94a:: with SMTP id u10ls1241444vsq.1.gmail; Mon, 24 Feb
 2020 14:17:08 -0800 (PST)
X-Received: by 2002:a67:f512:: with SMTP id u18mr28606408vsn.214.1582582628083;
        Mon, 24 Feb 2020 14:17:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582582628; cv=none;
        d=google.com; s=arc-20160816;
        b=mx6jh0axn16rgnJGuTVcQ2RJFk1pJi0KFE26jnDHRIgtJy3L2UQgFalHGIS3/wylIV
         BbN1gBANFfIBTu3ERupzP+QKUkQtJhkznZ+hSMakkluNwyBqxGCEF4xY2s7xL4soXtWl
         nQx3FdzHBVabgB7k3M4jdz58a4F4Wn+uPZJPvkZ/fRYN2DBH05KKb0GkCx92F+dI4UF/
         85W8xX2AALjr1A66JSS7dhzF9tHzOCV812R5LNhZUa4ulH+iuLOH04w/ld4X5oSf7Fkw
         QGyfvEeB5Spm9Vifd8AQD692nPdEOdIMUAiECL273ZnyXaiYKeFKAFdycRs7DCmTtLI1
         3nOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4+q1hPU+vBxz37Lq9CoAPE294r5aS1T2lyZxNwgE7xE=;
        b=m+/VIQ1YRkgePq1eLRWBPVRSs372ABabNB8F8ZY2o0ZRRJxknhyzvdj39eY1VarwsG
         uULx5Z6ttaUr1BWITwWEY+E9tN4glYn5Sz4Lp6ACRxuABKrfHM/iUNt7ZS+k6OsDfthH
         5hok3KjzW5JGdIZUHJvF1ZDUn5/MrAKY9u+fSAU47rqvyl60wPpU2V03MeeSRkOWAAqv
         WJiiMzt36zlGOiTfdMjQ7JBg3Tfv57yoGuE9Mpu/Nsi75ZdVVWYV8Il0m7GcYjM3tDMQ
         ephkOPfAvCEER8uCOB8xOtDAtGdxXptCp2ZNZEfLT4PM6QZxHlZdhWxDtg4iOwFaMRJe
         OADw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SSKlPPTC;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id w4si790485vse.2.2020.02.24.14.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 14:17:08 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id ay11so4623867plb.0
        for <clang-built-linux@googlegroups.com>; Mon, 24 Feb 2020 14:17:08 -0800 (PST)
X-Received: by 2002:a17:90a:fe8:: with SMTP id 95mr1411740pjz.98.1582582626875;
        Mon, 24 Feb 2020 14:17:06 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:9efe:9f1:9267:2b27])
        by smtp.gmail.com with ESMTPSA id l2sm10574403pgp.0.2020.02.24.14.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2020 14:17:06 -0800 (PST)
Date: Mon, 24 Feb 2020 14:17:03 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Borislav Petkov <bp@alien8.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 2/2] x86/boot/compressed: Remove unnecessary sections
 from bzImage
Message-ID: <20200224221703.eqql5hrx4ccngwa5@google.com>
References: <20200222065521.GA11284@zn.tnic>
 <20200222070218.GA27571@ubuntu-m2-xlarge-x86>
 <20200222072144.asqaxlv364s6ezbv@google.com>
 <20200222074254.GB11284@zn.tnic>
 <20200222162225.GA3326744@rani.riverdale.lan>
 <CAKwvOdnvMS21s9gLp5nUpDAOu=c7-iWYuKTeFUq+PMhsJOKUgw@mail.gmail.com>
 <alpine.LSU.2.21.2002241319150.12812@wotan.suse.de>
 <CAKwvOd=nCAyXtng1N-fvNYa=-NGD0yu+Rm6io9F1gs0FieatwA@mail.gmail.com>
 <20200224212828.xvxl3mklpvlrdtiw@google.com>
 <20200224214845.GC409112@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20200224214845.GC409112@rani.riverdale.lan>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SSKlPPTC;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::643
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

On 2020-02-24, Arvind Sankar wrote:
>On Mon, Feb 24, 2020 at 01:28:28PM -0800, Fangrui Song wrote:
>> Hi Michael, please see my other reply on this thread: https://lkml.org/lkml/2020/2/24/47
>>
>> Synthesized sections can be matched as well. For example, SECTIONS { .pltfoo : { *(.plt) }} can rename the output section .plt to .pltfoo
>> It seems that in GNU ld, the synthesized section is associated with the
>> original object file, so it can be written as:
>>
>>    SECTIONS { .pltfoo : { a.o(.plt) }}
>>
>> In lld, you need a wildcard to match the synthesized section *(.plt)
>>
>> .rela.dyn is another example.
>>
>
>With the BFD toolchain, file matching doesn't actually seem to work at
>least for .rela.dyn. I've tried playing around with it in the past and
>if you try to use file-matching to capture relocations from a particular
>input file, it just doesn't work sensibly.

I think most things are working in GNU ld...

/* a.x */
SECTIONS {
   .rela.pltfoo : { a.o(.rela.plt) }  /* *(.rela.plt) with lld */
   .rela.dynfoo : { a.o(.rela.data) } /* *(.rela.dyn) with lld */
}

% cat <<e > a.s
  .globl foo
  foo:
    call bar
  .data
  .quad quz
e
% as a.s -o a.o
% ld.bfd -T a.x a.o -shared -o a.so

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200224221703.eqql5hrx4ccngwa5%40google.com.
