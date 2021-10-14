Return-Path: <clang-built-linux+bncBDYJPJO25UGBBKPVUGFQMGQE5DVUZBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4483042E18E
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Oct 2021 20:44:58 +0200 (CEST)
Received: by mail-ed1-x53d.google.com with SMTP id t28-20020a508d5c000000b003dad7fc5caesf5985776edt.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Oct 2021 11:44:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634237098; cv=pass;
        d=google.com; s=arc-20160816;
        b=j/OY2XQyUq/HM9sX/9eBqkPoBeOtwrEMUbv79tnzr2Z+k1rC/MmzaaYF0cq62IZr0G
         Vxu/D9TgQr2DnKKKkiCcJT9xLDQIzoimtfmUc9hgdjjDLpK3BVwhqpEVpKVm9Zouhgmk
         i6iq9tbnRBdAWnPHUYH8PYQnSUbYzSB0F7pJgVODwSvYAZbZ2JChq/JRl2Jg/UqwkPRr
         1MNiEDL/MZG/zmLEqYuzyAurYBEP/vvzRcJzNFNxXCSXWLFULB3IUmxgOdhih097WeKz
         tjQQuznc8O+3Q3Q/1ibY5ySwz6WYIzdcuBSKBMHDbSxkBYM40UF6DIxXV1t46YBj7dzN
         SlPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=bg8ntZ3+N0j8aiGvYDzzDxCKToFtT2BtyAHyJy1dUsQ=;
        b=yxMCjnlS5epblq1PqBHa7fidD5/pkok8KKWhbfF2NeZKya+stOEMNTHVH8ohfRyyig
         d4UcFhmVmJqU2tdrQINeGbOH/rHy0RLRPz6vX3ZbkiimpLjx45HV8FaG2owkE4/Cgrwj
         YPsij0khvBQrtNT7lIvuUSvOsWqmMeGWg8gRotuWQHMgkoeli25nCPqFRT957MA8icSf
         H6OOPW0gArPNm9SRuu88Lkc7c4Hs3r+Ignw/w+92lKG8eZQs/ebHlUXNR75XCt4Bjjaa
         COk/j04QxLckHsZE+jGHIjoEgKqsCVEBJiZXFaYOPhtNTt8EM9omAAqDuKLEldfbqS7N
         xm4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=BAYxaUWx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bg8ntZ3+N0j8aiGvYDzzDxCKToFtT2BtyAHyJy1dUsQ=;
        b=ZDUXG4zlcaGElDfrRGdWg0G5Y0/aKDfYkPCCAVmncehJkDXBJEAqoJj+V1nMYEQJ1K
         2r9KhZjpt13ochhANeMfjybBsr6HQnQ58IGPv+m52SI8N/t+Lv2/9lCIXTsoqbYiz4CO
         F73P2BjmG/CMWmtCx8qno6Htc/Blh84VaehvFPPWwB4rV0OmlKKe2QumaMC+fVGEL4Rs
         c03UFMlcsnVURK6vqG7e3zH6sF/KhPrgU0G/Ix7tMof8Ganxz1J/7pTJPCvwAwH/RDFG
         Q5dGGIbNYKW6YnADctrLW6A80pL2LUkhIFB8UX1TbGLaO/OaOi3zorvKxi+jNaj0GqwA
         AmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bg8ntZ3+N0j8aiGvYDzzDxCKToFtT2BtyAHyJy1dUsQ=;
        b=xUFk6CKYwdl01L0iW+sLwPSgxbafIuLBXlQpW0+DcefV3mos5sMVqwCABUxTi0WbkP
         kU3lT/xxf4X5mL01zXL7CI/crgeC8DNRBYjs9yL3XecO/2wPb3laGhQzY5paBDEhGZiX
         paOdMoclmCpV+U0c7Iu9lVZAczqHk7iZ2ROq0zy65D/hlnV+2H4/6ESJy2gzOQBpUgJ2
         /JiBqeIWQ0KDjmC9YVAqNsl9m8tUeDVUuXAt7iram4Dg83l+13V/3pv+cfLb3Dn8+JQa
         rfUtbGIg1RCVQF40eqPNqmSMFKoqvktTGTRyiB5DYgz+/VxdZxM5RD4m/KEFfoZGKJmi
         re1g==
X-Gm-Message-State: AOAM5324YUtdGI1woos7+UFMqvNWe/JX9HN7HJ8WncJl0ejUp2+H195c
	SeHbn5J4HG7AmBsvYKfLFI8=
X-Google-Smtp-Source: ABdhPJytv8w6F6GiwLH30S+3hI7FU8e65bfu2AiFu8xTAt8vIGdd+RyMR6lrPLzcL+gMu48C+aDVdw==
X-Received: by 2002:a50:bb67:: with SMTP id y94mr10662037ede.308.1634237097962;
        Thu, 14 Oct 2021 11:44:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:907:1611:: with SMTP id hb17ls2358237ejc.7.gmail; Thu,
 14 Oct 2021 11:44:57 -0700 (PDT)
X-Received: by 2002:a17:906:c7c1:: with SMTP id dc1mr912382ejb.6.1634237097076;
        Thu, 14 Oct 2021 11:44:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634237097; cv=none;
        d=google.com; s=arc-20160816;
        b=dvCzIIHXT4bRjsw789QHT8WvpUSijvejA4ZPEcuHY+j4Ru2PdGhaYc1Mtn8O3HIVaz
         UGOg5zuFOiTcMHn3nutoCVzkBYvUtLz04n5QiXOhBmyJlvtTXa54b45Kd2Vi+Xxd1n78
         kKhCmPXnTJWKQMu0ITCrnyq6S/wXbVpX/h/BJ+8ZTmQoIPI3WRsa086fa4t66W5n6eHc
         SYTVqyBXQgYmqwumOOxYLVfhGJnbyyWNCx46xQGmkCrlljEL0mZ5FeqvEjaZXwPBpPET
         cqASxIifT6tT8z0MGqVDxuKr+Urw2ntreLDW+JQRSo/90Svx0ZZuCPpE1EGCw1LXBMZa
         Ijew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=dJip7K+K6ddBDtyVBqOLOFvZRLq1b7ylvd2srRqWSRQ=;
        b=gQeg5kppPCJuoCmS1X8LxYHRQ/9Fv1vG7CA8leHqXdAKY/Ek3HfJOrGX+aDKXl4Ucb
         Pq6Dg9W5ZShNv6ehufp4rqJAg1oEPpJZW6boJZC/QZHCjC4ldEkZk2B7TLRUKbCvXRRP
         B7/NoGHeuodNfmJHmQ3drrSvohh9mgx7DEkGvx+qsvPp8je5qUi5sP0lcauRp5F6f1bu
         oGZoe1i9Cqi3d6yrpBH/1dHHHcKCkyJa7/0KZR290Yl3o6LLAIZCa/LWLOyHaEA3fDBX
         G/2n/M95aTKZnaEmbPXw6cW7+V8JyTS+6YxDRWn2DPwGk9iY4R3WtMloxSHswqDAi464
         G9lg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=BAYxaUWx;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id hp4si112166ejc.0.2021.10.14.11.44.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Oct 2021 11:44:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id u21so27828051lff.8
        for <clang-built-linux@googlegroups.com>; Thu, 14 Oct 2021 11:44:57 -0700 (PDT)
X-Received: by 2002:a05:6512:3ba3:: with SMTP id g35mr6810880lfv.651.1634237096625;
 Thu, 14 Oct 2021 11:44:56 -0700 (PDT)
MIME-Version: 1.0
References: <1634167668-60198-1-git-send-email-ashimida@linux.alibaba.com>
In-Reply-To: <1634167668-60198-1-git-send-email-ashimida@linux.alibaba.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 14 Oct 2021 11:44:45 -0700
Message-ID: <CAKwvOdkv70XDdK-k3n4ycFQsz+h7V-sTiH8RuxxaLofp-okweQ@mail.gmail.com>
Subject: Re: [PATCH] [PATCH V4]ARM64: SCS: Add gcc plugin to support Shadow
 Call Stack
To: Dan Li <ashimida@linux.alibaba.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, catalin.marinas@arm.com, 
	will@kernel.org, keescook@chromium.org, nathan@kernel.org, tglx@linutronix.de, 
	akpm@linux-foundation.org, samitolvanen@google.com, frederic@kernel.org, 
	rppt@kernel.org, mark.rutland@arm.com, yifeifz2@illinois.edu, 
	rostedt@goodmis.org, viresh.kumar@linaro.org, andreyknvl@gmail.com, 
	colin.king@canonical.com, ojeda@kernel.org, luc.vanoostenryck@gmail.com, 
	elver@google.com, nivedita@alum.mit.edu, ardb@kernel.org, 
	linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-hardening@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=BAYxaUWx;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::131
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

 On Wed, Oct 13, 2021 at 4:28 PM Dan Li <ashimida@linux.alibaba.com> wrote:
>
> - This function can be used to test whether the shadow stack is effective:
> //noinline void __noscs scs_test(void)
> noinline void scs_test(void)
> {
>     register unsigned long *sp asm("sp");
>     unsigned long * lr = sp + 1;
>
>     asm volatile("":::"x30");
>     *lr = 0;
> }
>
> when compiled with:
> CONFIG_DYNAMIC_FTRACE_WITH_REGS=y
> CONFIG_ARM64_PTR_AUTH_KERNEL=y
> CONFIG_ARM64_BTI_KERNEL=y
>
> ffff800010013b60 <scs_test>:
> ffff800010013b60:       d503245f        bti     c
> ffff800010013b64:       d503201f        nop
> ffff800010013b68:       d503201f        nop
> ffff800010013b6c:       d503233f        paciasp
> ffff800010013b70:       f800865e        str     x30, [x18], #8
> ffff800010013b74:       a9bf7bfd        stp     x29, x30, [sp, #-16]!
> ffff800010013b78:       910003fd        mov     x29, sp
> ffff800010013b7c:       910003e0        mov     x0, sp
> ffff800010013b80:       f900041f        str     xzr, [x0, #8]
> ffff800010013b84:       a8c17bfd        ldp     x29, x30, [sp], #16
> ffff800010013b88:       f85f8e5e        ldr     x30, [x18, #-8]!
> ffff800010013b8c:       d50323bf        autiasp
> ffff800010013b90:       d65f03c0        ret
>
> If SCS protection is enabled, this function will return normally.
> If the function has __noscs attribute (scs disabled), it will crash due to 0
> address access.
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index cb9217f..426c8e5 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -50,6 +50,10 @@
>  #define __latent_entropy __attribute__((latent_entropy))
>  #endif
>
> +#if defined(SHADOW_CALL_STACK_PLUGIN) && !defined(__CHECKER__)
> +#define __noscs __attribute__((no_shadow_call_stack))
> +#endif

Cool this is a nice addition, and something I don't think that clang
has.  For any new feature, having a function attribute to disable it
at the function granularity is nice, and plays better with LTO than -f
group flags.  Though that begs the question: what happens if a __noscs
callee is inlined into a non-__noscs caller, or vice versa?

I noticed that __noscs isn't actually applied anywhere in the kernel,
yet, at least in this series.  Were there any places necessary that
you've found thus far?

Overall, I'm happy with the patch and am ready to ack it, but I would
like to see a link to to the upstream GCC feature request for SCS (and
one created if it doesn't exist) cited explicitly in the commit
message.  I think that would be a good demonstration that this can or
will be upstreamed into the compiler proper for the compiler vendors
to maintain, rather than the kernel folks.  The compiler vendors may
have further feedback on the approach, such as my question above
pertaining to inlining.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkv70XDdK-k3n4ycFQsz%2Bh7V-sTiH8RuxxaLofp-okweQ%40mail.gmail.com.
