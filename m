Return-Path: <clang-built-linux+bncBCS7XUWOUULBBDNTV2JQMGQEYBHV6EQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B66B514372
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Apr 2022 09:53:51 +0200 (CEST)
Received: by mail-il1-x13c.google.com with SMTP id g15-20020a056e021a2f00b002cd868be1fasf3180160ile.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Apr 2022 00:53:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651218830; cv=pass;
        d=google.com; s=arc-20160816;
        b=FCkq0io3ctKpVTs/l8Qt1ExdIfXKuXLbi1mxstuBmWOyBW2EW9ETidEnQDNUz68gih
         ars5Bfe8hq2ac8QfUH1fhhSjERK52vE0PNdLqf06LcuFzPTm8ag1gqMW2zNWuYp3Ct1Y
         MmVOR+5S5CDvzNFB7ZLX3ZP16509dz74F752IbfN/V4nT/8GSdIeDdiuinahB7/oNRBy
         zotVOAvsF48PBlDQRJNta5pVKA8NAPXH0V6xVy8NzGHgYkVFsd+kGL8oCUHRZWUOh0qM
         Nj7VgdFbimlPhNvc7ceH1/dT+3gO1mM72oRZ8ai6NMoQIH0eYbgXDbbusmFl9KospstA
         DwlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=jtuGi9kbLfIpwcEEksIEl7Cm0mrxmfZn8Y5KtNB9z7M=;
        b=sdbrwbw9TaxfqhSnupBdzxdBaZyZ2EaUN4RA21JikOM8uQA7SfzyYFmi4lchsXbgTK
         IkWRA2HqA5X0+dn/IWijEY82Cy25aLGs/gFWTyJAj/pBO6wPjaE/LidvTbF210hQdj1r
         snqgyLJH2smrgxjrHPaTLNPm3pVOLzzB5lJ81qzv3/x0vDjJ5EKh+eA3z2vIBj+oFAQ5
         ILz1KU+6fo2q6IEQalKE8xKty3yGNcY+kKnkmTw49Z4lTGa1seLlaUDdNarGJW5TpTsN
         MnUeKENqVLFO/8on/9CLpB5Ax6aWi2WOICf8JtDPLenqZTBSwpn3mhPtWqJfxEtynrZc
         AsfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="hY6H/CJg";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=jtuGi9kbLfIpwcEEksIEl7Cm0mrxmfZn8Y5KtNB9z7M=;
        b=XXjHquUrPuI3n+ji/4iwCB1Bi/vUoLTG78vfxEJlZQt2Spjq7iYx2enj6XFYZYYHP2
         tdgUNKHNBxcHwAeVa81+Bc6PPQwMeUY7faBKsy3AwKRMSXN0ZBu9RuYGEfPqIdizaqC6
         bQdLizUIVes7AmAlCz3uKGOZW4uxch/lSFi2E/zIWpWoXI2tI+2mzYhEEz75t0lllzub
         o9PChBGsXlRw40rn1BwbzzZo/1bNLFGfH7Oqn1v/JiBB8ai3+Vd4LVCdEp3bpNZOR/Un
         iwOOJ1ZNyLhujgVOYMeSnYrgklGxYWGTc8TQhD22qJRCxe/PX+jbhte5UrLfVFg46Saq
         zufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jtuGi9kbLfIpwcEEksIEl7Cm0mrxmfZn8Y5KtNB9z7M=;
        b=I5uDSgFDZrJoC9hGklEDe2Tu9smi0Dbzrk86k6jwlVSvGC9wsmfLmGJxURJ/4rcN7s
         XChAnnTybqJGdPm9rnyfcU4ht3H3EYiFcbIrJ5EZwVbwahNJbxaNbDmkfwJCZzqds1nX
         PyVw5M5oqi/dIaj/Ql+8lhFOcdjbgk+POmEiJlQqShd2ZksjPzaIF+gpHPaUVI+7CFsJ
         ubtdvjjZWVAa0k79ChzY3nxS/FMvCBmNUzlKgOHkjy+DecXxADCblXBR3ELpPh1wxbxQ
         dCq2M4B9fuSX1aAtRnrmH+7vpFEUcjxnw0mC2J9I6wf7favQOE/eVk+srILMSKyJmIrl
         8/bA==
X-Gm-Message-State: AOAM531PfrE4j6spp63C9IN4UYtQRJPVbSIjBmldqevBRNtxDsgrniR7
	/AhZRuSuWlBnpfV7145rawE=
X-Google-Smtp-Source: ABdhPJwByIMSN+L54fpQfjRAyctWrwqA9quj/8t8GtkyR9qWgW5nEMTyZQxvv1WGe77IiEg1rP5GJA==
X-Received: by 2002:a92:c691:0:b0:2be:8eab:9f7d with SMTP id o17-20020a92c691000000b002be8eab9f7dmr14698270ilg.26.1651218830083;
        Fri, 29 Apr 2022 00:53:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:2e12:b0:654:bff9:572 with SMTP id
 o18-20020a0566022e1200b00654bff90572ls286441iow.8.gmail; Fri, 29 Apr 2022
 00:53:49 -0700 (PDT)
X-Received: by 2002:a05:6602:13c7:b0:657:44d4:9764 with SMTP id o7-20020a05660213c700b0065744d49764mr15221493iov.213.1651218829681;
        Fri, 29 Apr 2022 00:53:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651218829; cv=none;
        d=google.com; s=arc-20160816;
        b=F2FZxdMF59uJRcaNl7s9Y9nObcUvFEFLyxNGtrD/nmUtng8ERQKuSff4wu8ixeERMJ
         2kxauSIa1WveHRRGkC5wsXeH8j/OboONbc+nGmwBK6+3AkiD6ylugqbdMNW8GMlHN5do
         Ef94Sv6oiLbF/sBgJrTs2QbZs5F47dE7uCOEWAs+qJNpdh5Xpy+ACXJ6nnV/mF+yJUyb
         +e6i1Lv/kvdIFPXHCecmfG6s/skmlnVcYF303q5INYBxkJDSJRT5eIUNVYKWwb9/P7ET
         0oL1LxwWhDuFpXYH3ajMSTPvhsNV9V43/BBq7CWDslILLh0UZxLkJTM0X+ZFd4om3y6G
         KymA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=boCUD4eqK+wVfLrpWleuh2ZQ1/jep/RypYnq45tS3eA=;
        b=c0INDDccMLt0p6tgBx6Pw1LK7x44AWnjtf9yYWM3pxGwhly2GIMAVISYP/b3O9rd0f
         SkB1j9541lB97icxTplwUC9OxTXKxetAROK7KY9RcSF8GyUaHv2axtZNWlrZQqVJvjTV
         ie8P32OAAKvsdbLRtjlSwtWxSLnX6MirA2nJQcoUOWBqAGKOf0mucAAACm2wJ7d3OdWu
         pO6EsDKuZeGep6P6Tg7b4k1iTEHhgrJIR8Mx5c336vnum979wPCAVTZamT6Ic2bT/Rws
         00WHo35p0anuKTPg9xdf669iPlC3G0hwlbAqRsyb7Zps/VfJNzZ0ej4fXz+xHCc+ritU
         gcTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b="hY6H/CJg";
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102e as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com. [2607:f8b0:4864:20::102e])
        by gmr-mx.google.com with ESMTPS id s11-20020a5d928b000000b0064cedb07afcsi877410iom.3.2022.04.29.00.53.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 00:53:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102e as permitted sender) client-ip=2607:f8b0:4864:20::102e;
Received: by mail-pj1-x102e.google.com with SMTP id w17-20020a17090a529100b001db302efed6so5053575pjh.4
        for <clang-built-linux@googlegroups.com>; Fri, 29 Apr 2022 00:53:49 -0700 (PDT)
X-Received: by 2002:a17:90b:3e83:b0:1d2:edd3:5639 with SMTP id rj3-20020a17090b3e8300b001d2edd35639mr2497945pjb.183.1651218828855;
        Fri, 29 Apr 2022 00:53:48 -0700 (PDT)
Received: from google.com ([2620:15c:2ce:200:fb4f:b611:3fdd:bd70])
        by smtp.gmail.com with ESMTPSA id b22-20020a63cf56000000b003c1a1f44736sm2077614pgj.90.2022.04.29.00.53.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 00:53:48 -0700 (PDT)
Date: Fri, 29 Apr 2022 00:53:44 -0700
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Sami Tolvanen <samitolvanen@google.com>
Subject: Re: [RFC PATCH 2/2] arm64: kernel: switch to PIE code generation for
 relocatable kernels
Message-ID: <20220429075344.mhvytqhqmplh2stf@google.com>
References: <20220427171241.2426592-1-ardb@kernel.org>
 <20220427171241.2426592-3-ardb@kernel.org>
 <20220428024030.gwxb746c5gwvcnw6@google.com>
 <CAMj1kXEW-KPVWqS33OX0Qw-EAeX+XfocHGisVw8gsb2k_KffJA@mail.gmail.com>
 <20220428065742.rl3w5rz2ni2fhngl@google.com>
 <CAKwvOdm_zysTbsMp8GmmrwB3MU9MyZU-jtenH7JpPTX7+ZODKQ@mail.gmail.com>
 <CAMj1kXFY5AKvpjetuRGKA5Dt0hOPKY5S=oSFqgANTde=fe9rBA@mail.gmail.com>
 <20220429070318.iwj3j5lpfkw4t7g2@google.com>
 <CAMj1kXHJb0EJPtQP1c=2X0eWg_6s0FyLqpqjauKbt5ktjhS9CA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <CAMj1kXHJb0EJPtQP1c=2X0eWg_6s0FyLqpqjauKbt5ktjhS9CA@mail.gmail.com>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b="hY6H/CJg";       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102e
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

On 2022-04-29, Ard Biesheuvel wrote:
>On Fri, 29 Apr 2022 at 09:03, Fangrui Song <maskray@google.com> wrote:
>>
>> On 2022-04-28, Ard Biesheuvel wrote:
>> >On Thu, 28 Apr 2022 at 20:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
>> >>
>> >> On Wed, Apr 27, 2022 at 11:57 PM Fangrui Song <maskray@google.com> wrote:
>> >> >
>> >> > On 2022-04-28, Ard Biesheuvel wrote:
>> >> > >On Thu, 28 Apr 2022 at 04:40, Fangrui Song <maskray@google.com> wrote:
>> >> > >>
>> >> > >> On 2022-04-27, Ard Biesheuvel wrote:
>> >> > >> >Fortunately, we can convince the compiler to handle this in a way that
>> >> > >> >is a bit more suitable for freestanding binaries such as the kernel, by
>> >> > >> >setting the 'hidden' visibility #pragma, which informs the compiler that
>> >> > >> >symbol preemption or CoW footprint are of no concern to us, and so
>> >> > >> >PC-relative references that are resolved at link time are perfectly
>> >> > >> >fine.
>> >> > >>
>> >> > >> Agree
>> >> > >>
>> >> > >
>> >> > >The only unfortunate thing is that -fvisibility=hidden does not give
>> >> > >us the behavior we want, and we are forced to use the #pragma instead.
>> >> >
>> >> > Right. For a very long time there had been no option controlling the
>> >> > access mode for undefined symbols (-fvisibility= is for defined
>> >> > symbols).
>> >> >
>> >> > I added -fdirect-access-external-data to Clang which supports
>> >> > many architectures (x86, aarch64, arm, riscv, ...).
>> >> > GCC's x86 port added -mdirect-extern-access in 2022-02 (not available on aarch64).
>> >> >
>> >> > The use of `#pragma GCC visibility push(hidden)` looks good as a
>> >> > portable solution.
>> >>
>> >> Portable, sure, which is fine for now.
>> >>
>> >> But there's just something about injecting a header into ever TU via
>> >> -include in order to set a pragma and that there's such pragmas
>> >> effecting codegen that makes my skin crawl.
>> >>
>> >> Perhaps we can come up with a formal feature request for toolchain
>> >> vendors for an actual command line flag?
>> >>
>> >> Does the pragma have the same effect as
>> >> `-fdirect-access-external-data`/`-mdirect-extern-access`, or wvisould
>> >> this feature request look like yet another distinct flag?
>>
>> `#pragma GCC visibility push(hidden)` is very similar to
>> -fvisibility=hidden -fdirect-access-external-data with Clang.
>> In Clang there are only two differences:
>>
>>    // TLS initial-exec model with -fdirect-access-external-data;
>>    // TLS local-exec model with `#pragma GCC visibility push(hidden)`
>>    extern __thread int var;
>>    int foo() { return var; }
>>
>>    // hidden visibility suppresses -fno-plt.
>>    // -fdirect-access-external-data / GCC -mdirect-extern-access doesn't suppress -fno-plt.
>>    extern int bar();
>>    int foo() { return bar() + 2; }
>>
>>
>> The kernel uses neither TLS nor -fno-plt, so -fvisibility=hidden
>> -fdirect-access-external-data can replace `#pragma GCC visibility
>> push(hidden)`.
>>
>
>OK. But you mentioned that GCC does not implement
>-mdirect-extern-access for AArch64, right? So for now, the pragma is
>the only portable option we have.

Right.

>> >I agree that this is rather nasty. What I don't understand is why
>> >-fvisibility=hidden gives different behavior to begin with, or why
>> >-ffreestanding -fpie builds don't default to hidden visibility for
>> >symbol declarations as well as definitions.
>>
>> -ffreestanding doesn't mean there is no DSO. A libc implementation (e.g.
>> musl) may use -ffreestanding to avoid libc dependencies from the host
>> environment. It may ship several shared objects and export multiple symbols.
>> Implied -fvisibility=hidden will get in the way.
>>
>> There is a merit to make options orthogonal.
>
>Fair enough.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20220429075344.mhvytqhqmplh2stf%40google.com.
