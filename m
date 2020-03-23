Return-Path: <clang-built-linux+bncBCFYN6ELYIORBFFB4TZQKGQE4YULBYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8270C18FDCF
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 20:40:05 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id s8sf10688857otd.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Mar 2020 12:40:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584992404; cv=pass;
        d=google.com; s=arc-20160816;
        b=wJBdQYEWC5u+7B8UC4Krvo+jm7kp9GUSr+ec639yjWGCRPVelnaLXv9YyZU7yzs6Va
         U1NlNcr48OehdA9VJg90zzWW0//JTxWA4eqxWjjLPYkwqx0bvl8oHYR3/dTGGxzc97uQ
         dsAUgfLK7rBMPG7CyOmyOIq9I0PRvkZFJIEPopexFZAG4gKlTmveSyeUJdz05JCquvAA
         hZykSbQZF2laS7xV6fpghZj/ugeo1GbiU+h5dSj42dgqySdyxBaYygcJyzJ1WKw4rEzf
         hqwZOzzbQc4H5YB6BMpvZ9LxclDQXOPcnqrqMfKscIYi7BksH5oGs2GtKdHHfBjuiMUo
         +8DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=bqEo8HS31dw0kHmegQSlQjllBtmAua2DDXBkO3eZWW0=;
        b=fyL7Bgw8DHWdF35aC8d3FW9bPljXnLUcXEeEyzmJZ4jqsk/zFYFU6Yi8IElp6mXWKY
         pnO18jq4BuhODln7E5tBaU6UGbZKDNJZHREXfq2OexC7Xs616xeqCW65RLW77tvYWSvo
         X90Vuik3TM4XEmQFGGcn7pY49qf7AScAmcxh6acqt3311CI2PjeThdFYF0EbdzsL2/mu
         977Fn/o6PpWIwQFdJZYlb6ZLbld7UMHC61Fn1WKWbyxQvsX14kMjNwjDHoPTxDfrM7G8
         8Mr6l9Zx//J507oN7sYY+f9mjhgB1kQ8cwy5q6TtNN6697FCjij3TRsVTH5Ku+JFQEqk
         gEBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dNbXEnQp;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bqEo8HS31dw0kHmegQSlQjllBtmAua2DDXBkO3eZWW0=;
        b=K/vNcOo+majT8007yYzAgH8a9isqO6+btNiXLUEFmWpAiH3UnHdHq56vL4+61cFfi7
         qvA8FozNho1HoDR2LjHtmw+RQr4IcjrYQrLdwh3LER7YAc+6wBSR08GteczBXqHs+lpI
         TWoFPP5b6C2S/Ms7e9t0P6O3ZnYTxjT1GPuXVgGaoCGM6Y1vzlWZNjv5Bdtl7tohxjR/
         +Nd7vodXMF2jKt4iDcJ8HOsHzm6PClZfl1qhGamdiDCb5ws2abatzJAMwpEeSouHxyix
         yK499HQL5n15WFlY5F3mwXCL3EU9kVDXDFBoZgnWJPtnH3q8jmLq0XHivvKBn9Y3Y9CH
         OMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bqEo8HS31dw0kHmegQSlQjllBtmAua2DDXBkO3eZWW0=;
        b=YKIdKkA7kO7ca3XMi+AyKSZ+071s62EtLMzXEPTOWPizaXagULtIa4igAYJhQJ2Xto
         Df7lWmyIymF1/NtOaxQZTjI2eUw1THOlxjWJmdI6WYKYizgp7ykiqNAVPz3czWyp0FmQ
         x37swNZ0MLNyJrqbmurBgA/n3zYi0+LUejAudOf+wTAvzxi/vX1FGM26FJdzkUj4EHSX
         5SlxApeEyYKcv4osT5LL4aKFziL9eIHmqHKlqBPXfkcanIi2UN9BqPgqL8VHQ/GiI0IX
         2vbpslCS9pmxE49L3scJTJ3sUUxWcz03weC+kMn4l6R90FuK9dPgwtF8TzJpICuqD36g
         bR8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2KchTEwXVVduztg4VXgMOKnLq2S7V6ZG0WmbmNoMqL3LVICW1H
	zwJ4RvYr8R2QlsTsfk1/alc=
X-Google-Smtp-Source: ADFU+vubKl7ayh1Jc1g3W+z6Jmly7cuABk4pq9xvBYmZGCvdAf91oG0+GDOLhE3v2UAsroSyS3P0zg==
X-Received: by 2002:aca:5109:: with SMTP id f9mr768606oib.14.1584992404435;
        Mon, 23 Mar 2020 12:40:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3985:: with SMTP id y5ls6766464otb.7.gmail; Mon, 23 Mar
 2020 12:40:04 -0700 (PDT)
X-Received: by 2002:a9d:6a91:: with SMTP id l17mr19652499otq.29.1584992404013;
        Mon, 23 Mar 2020 12:40:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584992404; cv=none;
        d=google.com; s=arc-20160816;
        b=QQLx2knbi4958ETeHEjZILDi9l+UZxOGyQnJPHCf3IJK/FWn2K05vdF0HkAgdYdtuk
         EbHgkI2pJQmxE/lahq7n+1k4jve6rxUbV+DxVdBZVnYtXptblGSAUBW07zUWzCh6UfJ3
         NiPkWHVz4wD7tA/9lRm7krYt2RbBzGWNSgJPokN2O3W8Pm4acYZW6Gqm1nIkNXp55wtp
         fOpnu+yDvdozMWC/jise5Ltc6laHjgiLMDwEeRQsk6X+ateEJIWkA7hH4v9wLoWfzGNO
         WXxL4CpLq+oGA6LsLPU+TbeBgsqPEjL/5sSVI8qsY3iZYhm3EbXxu7IkXcE2BiX0At1j
         Qu+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=uFP2aeHKGeRXBgby7kJAWTWaWKoNQIcpjzLubNvUNy4=;
        b=rAWlcIwEsNXGrPQUbVNZQYDIIZlr1s61HG6FRsGeaD4K1bgGSzNkoobQ8m/QmYqy4w
         4Ab9XkkY1N9tS+Yn+RzWRNDUprCR6h4lRh7bKUe3xUdrEX1zt2ylqj9dp8i1qoijtkTR
         jm25uZSm07q3Snjawq4TRXS0g5trlBU4+RTON/LILxcAWzUQj3X4zgWBytvhZQZj/FnL
         2CToB09gTvN2PNUJStKc6h/C9KDVbY8J9EqClV914EZv5/mF+QZK8lk5TikHuHgwgWuC
         rxr/s3lDaOSaMI6U/fd8fcrx4JuAEFpK3ICKOfa2XEbClXW2obFLr93eDSfuFL48bAGc
         MePg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dNbXEnQp;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id m132si1015140oig.3.2020.03.23.12.40.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 12:40:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-385-VvbX-ih8MYiFgbMcRm8qLA-1; Mon, 23 Mar 2020 15:40:01 -0400
X-MC-Unique: VvbX-ih8MYiFgbMcRm8qLA-1
Received: by mail-wm1-f71.google.com with SMTP id n25so241091wmi.5
        for <clang-built-linux@googlegroups.com>; Mon, 23 Mar 2020 12:40:01 -0700 (PDT)
X-Received: by 2002:adf:f68b:: with SMTP id v11mr15340138wrp.270.1584992400619;
        Mon, 23 Mar 2020 12:40:00 -0700 (PDT)
X-Received: by 2002:adf:f68b:: with SMTP id v11mr15340093wrp.270.1584992400294;
        Mon, 23 Mar 2020 12:40:00 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:24d8:ed40:c82a:8a01? ([2001:b07:6468:f312:24d8:ed40:c82a:8a01])
        by smtp.gmail.com with ESMTPSA id c23sm25417876wrb.79.2020.03.23.12.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Mar 2020 12:39:59 -0700 (PDT)
Subject: Re: BUG: unable to handle kernel NULL pointer dereference in
 handle_external_interrupt_irqoff
To: Nick Desaulniers <ndesaulniers@google.com>,
 Alexander Potapenko <glider@google.com>
Cc: Dmitry Vyukov <dvyukov@google.com>,
 syzbot <syzbot+3f29ca2efb056a761e38@syzkaller.appspotmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Jim Mattson <jmattson@google.com>, Joerg Roedel <joro@8bytes.org>,
 KVM list <kvm@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>,
 syzkaller-bugs <syzkaller-bugs@googlegroups.com>,
 Thomas Gleixner <tglx@linutronix.de>, Vitaly Kuznetsov
 <vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 the arch/x86 maintainers <x86@kernel.org>,
 Sean Christopherson <sean.j.christopherson@intel.com>
References: <000000000000277a0405a16bd5c9@google.com>
 <CACT4Y+b1WFT87pWQaXD3CWjyjoQaP1jcycHdHF+rtxoR5xW1ww@mail.gmail.com>
 <5058aabe-f32d-b8ef-57ed-f9c0206304c5@redhat.com>
 <CAG_fn=WYtSoyi63ACaz-ya=Dbi+BFU-_mADDpL6gQvDimQscmw@mail.gmail.com>
 <20200323163925.GP28711@linux.intel.com>
 <CAKwvOdkE8OAu=Gj4MKWwpctka6==6EtrbF3e1tvF=jS2hBB3Ow@mail.gmail.com>
 <CAKwvOdkXi1MN2Yqqoa6ghw14tQ25WYgyJkSv35-+1KRb=cmhZw@mail.gmail.com>
 <CAG_fn=WE0BmuHSxUoBJWQ9dnZ4X5ZpBqcT9rQaDE_6HAfTYKQA@mail.gmail.com>
 <CAG_fn=Uf2dDo4K9X==wE=eL8HQMc1an8m8H18tvWd9Mkyhpskg@mail.gmail.com>
 <CAKwvOdntYiM8afOA2nX6dtLp9FWk-1E3Mc+oVRJ_Y8X-9kr81Q@mail.gmail.com>
 <CAKwvOdn10Ts_AU6i+7toj7NkMwK-+0yr5wTrN0XEDudBWS0sPQ@mail.gmail.com>
 <CAKwvOdnwhoHe8ouao2VBo1meRd8H4EOC7Nr8hnFkbXBACWRm9w@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <887add8e-cc74-b50b-46f8-f51d39c12dff@redhat.com>
Date: Mon, 23 Mar 2020 20:39:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnwhoHe8ouao2VBo1meRd8H4EOC7Nr8hnFkbXBACWRm9w@mail.gmail.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=dNbXEnQp;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 216.205.24.74 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 23/03/20 20:30, Nick Desaulniers wrote:
> <ndesaulniers@google.com> wrote:
>> So maybe we can find why
>> commit 76b043848fd2 ("x86/retpoline: Add initial retpoline support")
>> added THUNK_TARGET with and without "m" constraint, and either:
>> - remove "m" from THUNK_TARGET. (Maybe this doesn't compile somewhere)
>> or
>> - use my above recommendation locally avoiding THUNK_TARGET.  We can
>> use "r" rather than "a" (what Clang would have picked) or "b (what GCC
>> would have picked) to give the compilers maximal flexibility.
> So I've sent a patch for the latter; my reason for not pursuing the former is:
> 1. I assume that the thunk target could be spilled, or a pointer, and
> we'd like to keep flexibility for the general case of inline asm that
> doesn't modify the stack pointer.
> 2. `entry` is local to `handle_external_interrupt_irqoff`; it's not
> being passed in via pointer as a function parameter.
> 3. register pressure is irrelevant if the resulting code is incorrect.

Yes, this is fair enough.  I've queued your patch and will send it
shortly to Linus.

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/887add8e-cc74-b50b-46f8-f51d39c12dff%40redhat.com.
