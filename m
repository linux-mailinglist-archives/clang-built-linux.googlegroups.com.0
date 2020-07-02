Return-Path: <clang-built-linux+bncBAABBTFS7H3QKGQEFCMQTYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBAB212F38
	for <lists+clang-built-linux@lfdr.de>; Fri,  3 Jul 2020 00:01:49 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id m3sf10584685pjv.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Jul 2020 15:01:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593727308; cv=pass;
        d=google.com; s=arc-20160816;
        b=crr6YiBVqrAjB8d6X529P2o0S5Q6GS0sHQIFLrCE9L0wnLPiYtnQsM8ULNt1GsIu6P
         WoDD9r2M20VifdctkLzdczQlqCMkyAFBGpSSgK9H0AJ/p/GvGcri8nZav8VLAcawh/y2
         2m/VRM8Cgg+5JYhVRvjEFcd9gLkEw3GxNbwbn4pgBCvuPMC8RUMoSadI7R1VFNwic66C
         vKc5VDmFh+vUB/neU9BYMWgvH912OhKEeEgDSnfLTBXJ5dSWM8DvBg0+LTxZcyU7Dh+i
         2K7RRp+dqEjGpOBiGrpUoS1NCjmnQ/KRLooa37DgWqpeXruwljaqd3Y4VhlAVQM/rlUV
         Uw8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:subject:cc:to:from:date
         :references:in-reply-to:message-id:mime-version:user-agent
         :dkim-signature;
        bh=tRfCCp5iXsMEYDenkgFAFncmleSEpr7s5EIVmCjcxbs=;
        b=n/N+HZboOxxINuyzjef8MgtQOrMgNNLfvisgqB+H/wQ/kkPS1k2R9TU+ucPlH4CHTA
         +Wr/xAdy6fjPtC4q1N8KcgSApBhi0dpV1XbB0oJj3uRtc43QLJYA/n1nD02IGTZmgfft
         nIV0IgNGCrusL1CMpN82YBsTqAV39dSVAQGiV3ed/s7OiOQ3zXrADzL2DhJ/cVaa18PO
         FU2HMlpS6ID4BfQ6MXZxvzdejZsWZt7evawTvx30AKmD9cSP6z+C2lHJCZQudESN5WL6
         ejXKSL0i6mY2AWpk+q7/UM7IUxrbRb01WM43IZIb3DhDDrZ52w+EBZsivihVyLcEroS/
         XXCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=Pg4yk0YI;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=PhkQcYY6;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=user-agent:mime-version:message-id:in-reply-to:references:date:from
         :to:cc:subject:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tRfCCp5iXsMEYDenkgFAFncmleSEpr7s5EIVmCjcxbs=;
        b=a4smBPtjShEfHjSookmdW9dtKFNCcVmN8uYkin23+mgcx5kLJrwIUeXrZyRcH6jhZK
         xbLyf0jgNvxExE7yzjmcUpL04q17nBEuaVi7SYqANgQLV3745DXcgOzzMojHBQNGw9Bx
         JMr2dpyRqI/VA1gfXKXgfE43yz7nd/Q0d9BkiZSv1tqD+ZWc0dg11zxqCph7lpYkD192
         q9eRqtDxHrkZi9Egk2czX2mxQi/3pYm1z2id3JOzargCmffXeAVDGPpb4GVtpEgyeylb
         c+YlfP+9GuT3Vym7VB7gRNdEHl4Fl+gwNW+cjqije84Bt3oc5xlVA+nY1A2hB5fCyIms
         O6iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:user-agent:mime-version:message-id:in-reply-to
         :references:date:from:to:cc:subject:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tRfCCp5iXsMEYDenkgFAFncmleSEpr7s5EIVmCjcxbs=;
        b=Ms9sacMvk2vthD6z/V4YrJPZlzdhfeb9TCPPNUakVEbCbCZq6GCSl1vw+IvibVgsMd
         6ZXagxtaaIC5f2vSXhCmzNC2BTeHbg67sAwVIKVfbWdTp5rahbJ5YRdlua1BW7WumqJy
         RapSTetJO/DsvNCzLAbs3B7NUz7Lusr3kz8PP3FkaTT94UhZt7UKQERNMOEdvZcz6Gh4
         K2tCY95ISjMXmaB8g6jVZqbC/07PFHcDC5Ak2PhKKf0Z7J6SgFrM5Y+C/ORuKVV/SB0j
         scrud3GvjkAiGLx1ffE1WLz+uj5PVidAzUU1myYM9eaviWaN+aSYZBb+J5aTXZsFHhji
         VRww==
X-Gm-Message-State: AOAM531zhN0at8+sI7QMIthDyZGKmMu1zugMr6ZRPML2twMLDS+yinDK
	QUGhLpTQz9h2wQfqSnFfCbg=
X-Google-Smtp-Source: ABdhPJxrGq9U4JUZ1N7uGJDw6FK1BCy30YjgLFDqdbrUhPHPa1XySShF4Y7b95NhPdQi3v05Iu/TJQ==
X-Received: by 2002:a17:90b:234f:: with SMTP id ms15mr32988078pjb.7.1593727308295;
        Thu, 02 Jul 2020 15:01:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:582:: with SMTP id 124ls2389956pgf.6.gmail; Thu, 02 Jul
 2020 15:01:48 -0700 (PDT)
X-Received: by 2002:a63:6c0a:: with SMTP id h10mr20917139pgc.11.1593727307917;
        Thu, 02 Jul 2020 15:01:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593727307; cv=none;
        d=google.com; s=arc-20160816;
        b=xqhxqGGM0B9xf1h63ClGHPjr+Ba0Wjhu2gA52t0PV8+kAnoX5uidCq4aSUoKrCWI6w
         RqRljjPo/6cyMS7+7PpMYGMwqLJnv7xWvaq2iomtM4ewT0TRvP0Sh+J+Ve7WvLJtkQWZ
         ltu6cw38YiWy8eIRSnbFCeSo31Fij7eGtqotlscxn/70t02LbaFDGFl6g1RXBUx//eY1
         +0iAXCDl2mQHk69KBb5hLRLnr163NKQlF20WSwlrQwyeas/c4B6fjgWy5NAzHx9FsbyT
         quWa9lh6CrcwCOndqcSr1h4CnOSvkaDUmMU+QgUnRMTttsKM07gKSeprBCQwfajtO+wk
         eR6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:cc:to:from:date:references:in-reply-to:message-id
         :mime-version:user-agent:dkim-signature:dkim-signature;
        bh=++Nf+jzmk32Uv4KzN6LP0cOsHrUI9EjgYva0jX6LIrU=;
        b=qk2TqnmmrnWifYhfPcrWrCw1yMyHJJ4QJzzf/3brn15IqVODuR+PpMfoujIlfBUPHF
         QtUUsqKDGr9I2DcD9ssbVkPkZ/j9L7Xdq4cQUQ1TLiuSMZN1LlP5f40yvz23egmDUmxn
         0a2SusDnbBzGFwb+oggDbk+Dpab3TYdLCYLz7R1vt5KpKTLKouG6gA9gPPYh2xSu6VzU
         OpD5UFLvSflF8S5eCKKouvMz+VnakPEZ2KxSRJAe/gOt80Qn4IkaFRbhvwX8PupezPIP
         NW1NWYP8aLDmS1waKGZfApyC1IM12J5uCc+nJLwux97BKChRY6mRS7CXH16RQJaIuvOv
         4S0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kdrag0n.dev header.s=fm1 header.b=Pg4yk0YI;
       dkim=pass header.i=@messagingengine.com header.s=fm3 header.b=PhkQcYY6;
       spf=pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted sender) smtp.mailfrom=danny@kdrag0n.dev;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=kdrag0n.dev
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com. [66.111.4.29])
        by gmr-mx.google.com with ESMTPS id q85si565507pfq.5.2020.07.02.15.01.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 15:01:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id E57215C0184;
	Thu,  2 Jul 2020 18:01:46 -0400 (EDT)
Received: from imap6 ([10.202.2.56])
  by compute1.internal (MEProxy); Thu, 02 Jul 2020 18:01:46 -0400
X-ME-Sender: <xms:Sln-Xjboo9M_5vghecSHvELG_X8Ep6NsZzlQqXichH2uu-epJdiGNw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduiedrtdehgddtfecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefofgggkfgjfhffhffvufgtsehttdertderreejnecuhfhrohhmpedfffgrnhhn
    hicunfhinhdfuceouggrnhhnhieskhgurhgrghdtnhdruggvvheqnecuggftrfgrthhtvg
    hrnhepvedvkeefhfejtdfgleegudeujeeuueehtddvudffkeegjeejfeffvdeuteektdeg
    necuffhomhgrihhnpehgohhoghhlvghsohhurhgtvgdrtghomhdpghhithhhuhgsrdgtoh
    hmpdhlphgsgidruggrthgrpdhkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigv
    pedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpegurghnnhihsehkughrrghgtdhnrdguvg
    hv
X-ME-Proxy: <xmx:Sln-XiZ_KI0R7tLQBB603k6POGD4AnwbVGYLqTD9JeGfhWctw0SGfg>
    <xmx:Sln-Xl-f4p6_IADPDXa0-gVkWCwumJOJOq59_ZE0qAP4St7f4qZQOQ>
    <xmx:Sln-XpqhJNQceDvleWresQwqvXSTx4g9OypfHQ-16YAfN43WuXW0LQ>
    <xmx:Sln-XvfGUyibpnCLUa2lxupWF6rFTNlGU2pLzTOUwk6EnTI8kmqm0Q>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 1791B1400A1; Thu,  2 Jul 2020 18:01:46 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-dev0-576-gfe2cd66-fm-20200629.001-gfe2cd668
Mime-Version: 1.0
Message-Id: <7304fdf3-23d7-442b-b870-e88ae6f37004@localhost>
In-Reply-To: <20200702160420.GA3512364@ubuntu-s3-xlarge-x86>
References: <20200702085400.2643527-1-danny@kdrag0n.dev>
 <202007020853.5F15B5DDD@keescook>
 <20200702160420.GA3512364@ubuntu-s3-xlarge-x86>
Date: Thu, 02 Jul 2020 15:01:25 -0700
From: "'Danny Lin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: "Nathan Chancellor" <natechancellor@gmail.com>
Cc: "Kees Cook" <keescook@chromium.org>, "Arnd Bergmann" <arnd@arndb.de>,
 "Nick Desaulniers" <ndesaulniers@google.com>,
 "Sami Tolvanen" <samitolvanen@google.com>,
 "Fangrui Song" <maskray@google.com>, linux-arch@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 stable@vger.kernel.org
Subject: =?UTF-8?Q?Re:_[PATCH]_vmlinux.lds.h:_Coalesce_transient_LLVM_dead_code_e?=
 =?UTF-8?Q?limination_sections?=
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: danny@kdrag0n.dev
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kdrag0n.dev header.s=fm1 header.b=Pg4yk0YI;       dkim=pass
 header.i=@messagingengine.com header.s=fm3 header.b=PhkQcYY6;       spf=pass
 (google.com: domain of danny@kdrag0n.dev designates 66.111.4.29 as permitted
 sender) smtp.mailfrom=danny@kdrag0n.dev;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=kdrag0n.dev
X-Original-From: "Danny Lin" <danny@kdrag0n.dev>
Reply-To: "Danny Lin" <danny@kdrag0n.dev>
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

Jul 2, 2020 9:04:25 AM Nathan Chancellor <natechancellor@gmail.com>:

> On Thu, Jul 02, 2020 at 08:54:53AM -0700, Kees Cook wrote:
>> On Thu, Jul 02, 2020 at 01:54:00AM -0700, Danny Lin wrote:
>>> A recent LLVM 11 commit [1] made LLD stop implicitly coalescing some
>>> temporary LLVM sections, namely .{data,bss}..compoundliteral.XXX:
>>>
>>> [30] .data..compoundli PROGBITS         ffffffff9ac9a000  19e9a000
>>> 000000000000cea0  0000000000000000  WA       0     0     32
>>> [31] .rela.data..compo RELA             0000000000000000  40965440
>>> 0000000000001d88  0000000000000018   I      2238    30     8
>>> [32] .data..compoundli PROGBITS         ffffffff9aca6ea0  19ea6ea0
>>> 00000000000033c0  0000000000000000  WA       0     0     32
>>> [33] .rela.data..compo RELA             0000000000000000  409671c8
>>> 0000000000000948  0000000000000018   I      2238    32     8
>>> [...]
>>> [2213] .bss..compoundlit NOBITS           ffffffffa3000000  1d85c000
>>> 00000000000000a0  0000000000000000  WA       0     0     32
>>> [2214] .bss..compoundlit NOBITS           ffffffffa30000a0  1d85c000
>>> 0000000000000040  0000000000000000  WA       0     0     32
>>> [...]
>>>
>>> While these extra sections don't typically cause any breakage, they do
>>> inflate the vmlinux size due to the overhead of storing metadata for
>>> thousands of extra sections.
>>>
>>> It's also worth noting that for some reason, some downstream Android
>>> kernels can't boot at all if these sections aren't coalesced.
>>>
>>> This issue isn't limited to any specific architecture; it affects arm64
>>> and x86 if CONFIG_LD_DEAD_CODE_DATA_ELIMINATION is forced on.
>
> It might be worth noting that this happens explicitly because of
> -fdata-sections, which is currently only used with
> CONFIG_LD_DEAD_CODE_DATA_ELIMINATION but there are other features such
> as LTO that will enable this and make this relevant in the future.
>
> https://android-review.googlesource.com/c/kernel/common/+/1329278/6#message-81b191e92ef4e98e017fa9ded5ef63ef6e60db3a
>
> It is also worth noting that those commits add .bss..L* and .data..L*
> and rodata variants. Do you know if those are relevant here?

As far as I can tell, those sections are exclusive to LTO which isn't in
mainline yet. I don't see any sections like that in my DCE-only vmlinux.

>
>>> Example on x86 allyesconfig:
>>> Before: 2241 sections, 1170972 KiB
>>> After:    56 sections, 1171169 KiB
>
> Am I reading this right that coalescing those sections increases the
> image size? Kind of interesting.

Oops, I accidentally swapped the numbers in the commit message.
Coalescing the sections makes the image smaller as expected.

>
>>> [1] https://github.com/llvm/llvm-project/commit/9e33c096476ab5e02ab1c8442cc3cb4e32e29f17
>>>
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/958
>>> Cc: stable@vger.kernel.org # v4.4+
>>> Suggested-by: Fangrui Song <maskray@google.com>
>>> Signed-off-by: Danny Lin <danny@kdrag0n.dev>
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
>>> ---
>>> include/asm-generic/vmlinux.lds.h | 4 ++--
>>> 1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
>>> index db600ef218d7..18968cba87c7 100644
>>> --- a/include/asm-generic/vmlinux.lds.h
>>> +++ b/include/asm-generic/vmlinux.lds.h
>>> @@ -94,10 +94,10 @@
>>> */
>>> #ifdef CONFIG_LD_DEAD_CODE_DATA_ELIMINATION
>>> #define TEXT_MAIN .text .text.[0-9a-zA-Z_]*
>>> -#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX*
>>> +#define DATA_MAIN .data .data.[0-9a-zA-Z_]* .data..LPBX* .data..compoundliteral*
>
> I am fairly certain this will fix a PowerPC warning that we had
> recently so good!
>
> https://lore.kernel.org/lkml/202006180904.TVUXCf6H%25lkp@intel.com/
>
> Unfortunately, I forgot to reply to that thread...
>
>>> #define SDATA_MAIN .sdata .sdata.[0-9a-zA-Z_]*
>>> #define RODATA_MAIN .rodata .rodata.[0-9a-zA-Z_]*
>>> -#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]*
>>> +#define BSS_MAIN .bss .bss.[0-9a-zA-Z_]* .bss..compoundliteral*
>>
>> Are there .data.. and .bss.. sections we do NOT want to collect? i.e.
>> why not include .data..* and .bss..* ?
>
> At one point Android was doing that for modules but stopped:
>
> https://android-review.googlesource.com/c/kernel/common/+/1266787
>
> I wonder if that is a problem for the main kernel image.

A comment above the code in question explicitly states that not all
.data..* sections should be coalesced. There's a .data..percpu section
in my x86 vmlinux which should probably remain separate.

>
> Cheers,
> Nathan
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7304fdf3-23d7-442b-b870-e88ae6f37004%40localhost.
