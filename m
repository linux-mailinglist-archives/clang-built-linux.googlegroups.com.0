Return-Path: <clang-built-linux+bncBCOLPU5Q4MDBBHXNUODAMGQEABFKX4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CA53A88DC
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 20:51:10 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id p16-20020adfe6100000b029011a599a471dsf1787150wrm.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 11:51:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623783070; cv=pass;
        d=google.com; s=arc-20160816;
        b=WihUKJupfSBFJm8sN4Lp/wVsduU5tGx933oC8Eo2apZ5VyNPuDg708hgcbYyDAaXSG
         qAQUqmKLqHikdb87JpGKs/L/a2fnjWRGdj3bRkUUye0igI96S12cyqS7ehkBd34VdHu2
         xxOqmO2c1YO7j/kbMc0mgmUwGhR44WZ6Rx1iZL8rXRm2uu6C8KlEl5I0J1+kmq8Cf5p+
         t1wwdOqhcd67fUEwv5Tez6GsjqiNGJO8hlERlVqSKypoac2aXqPOnu9Z6oA+bNDrI2fx
         WEXkpt9tkIsYP8gN5G7LFzXe33zpY4W+t+9N3L1hGgdNmFxaVdZlxq3I2cr0Bw1u2AyM
         IaTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=Y9d/7Nj8h4FLhsrOFW/AT/7E36mMqM5YBF8tVUbGJig=;
        b=UtgxvMrDlOIK/bco2ptdCjqnBYuQ234J6i0G1z4ipfWksPLCAvPN1gYJDUSwjSVsO/
         /u7CgI2aMbrECGBNsX5YXNk/pvfstkf/SeId7yGG+L5yvyIaJ5X05sA4A85tduYB1oUc
         8BPUFpNw6sTeIEEItuRriiJdXH+Y7/jD3KHCyYEwZu2ELS5vSxv7q0HvNSyMtiWJyrd8
         Tx8QrUqQilivfkRmEVRqsXu5DXHBn4Vl//8ePAPeDZG4zMHjL5ET8Vvb7VSq/DtWDA6+
         ofIo7T2C4l6Kc/j+MK1OL+duwjtC5QODadaMGre3bqgOouAzHEN7D5uZ+dC9r5UOX3Te
         YnFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=keYPy5Ik;
       spf=pass (google.com: domain of ecree.xilinx@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y9d/7Nj8h4FLhsrOFW/AT/7E36mMqM5YBF8tVUbGJig=;
        b=Fl0vQuNkWrn6PlTtLPCrppP/3PX3F+5hwIs0y7SwKFYbJnWK1CtS98GjvZGQQMLSxp
         0GhSM4znOO/+2vnIfY1MrP7s7y4CzrEK2qzJ3mtwdcOsesiFtxu05cuwvx296658Mok8
         dgc0bwCBwGSfZT+X+ap3NbfjCPfjM6VH8saE/nEqC6dH5Y7j+RXIx9Y/foJGiuTcy18P
         yfEhZsF/dDdcVxxEdwWuO1vH1lRqXaN7wC2xKE18HsIB2vd2MK/Fm33w9UfExKbANUD8
         EBEopNu75ljwJGP/GP+WpAg8vIEgVchW0wuol4f66A1sgva/8N3134hqaATJe/IlO691
         HqpQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Y9d/7Nj8h4FLhsrOFW/AT/7E36mMqM5YBF8tVUbGJig=;
        b=px7bBdQeWgkxNGCYuJSuWQOc3eSh+BdeEYLWch7ym4RSUwWvn7KSsaqTh8aJBI+aBx
         yOoDOt3XHLdpjwOdj/5t9oWu1T8pSe3NAnemxOXNBKCeqxv9tECEuXYfHHk7jJec1/ct
         atuy647crkVAd6lsJhx8KaL/VwcuMgKguTA5csMq6N7a2k1AGduApXUsYgIThRxX9Yxz
         E+dlanTD59x38IMEYpqfA3DJ4tNkqApOxYVgIBwoWPoly69+iGWJ6FHqSULdIasHFbCZ
         DONqY2USoVDcV4m+kVv1RuDEv9o96MgomblpfRyPxpl9sl4mNDnCCw1y4ky90FjVi+55
         8iSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Y9d/7Nj8h4FLhsrOFW/AT/7E36mMqM5YBF8tVUbGJig=;
        b=dVi/R0SpBK0hkSD9rwDgJ6GIZdhz4QGtdnGKrp8sbR/Y1d7JMOZdnKRqTMidNpK5+1
         aPzePVuSxNn02kCsmoHnipB3TUL/yM5yqPi83VitT50VipIOJ6Gaxl5Etcz85TR1Wxyb
         5TNzmWZD1lODNUn9QnOx4zyF3MfVlPxV7UahzEFY/MgwC3fPAtyVgm5wMcW6C1xeFb3e
         SXX4pSTkn04gyXz77sogB24YLMxnPJOncbwRUdWERiPxAOzlziuhTTAbQ9CEzJXZ93TK
         opJbo0ETegfTRowyNBNPUyUCI//baqPAMxWgVMdtaiEyhqzkNX9D3TS40g7T8g+WLMbr
         GH0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tUcIZl6dlnI4deSIAo8TjshC98YWJB/tUkVIf8pmtt1wKrxbf
	0EJW3olqW1F5BzIiWpfmarg=
X-Google-Smtp-Source: ABdhPJyL+ekXI/Y7jwApHOVcCXmbx5xcMp6aud5BY1MAyp6FWf1ltL9t7HJyqfSMcTZX5b8smIdUiQ==
X-Received: by 2002:a5d:6a82:: with SMTP id s2mr612043wru.247.1623783070707;
        Tue, 15 Jun 2021 11:51:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls5106205wrr.3.gmail; Tue, 15 Jun
 2021 11:51:09 -0700 (PDT)
X-Received: by 2002:a5d:6584:: with SMTP id q4mr620018wru.230.1623783069747;
        Tue, 15 Jun 2021 11:51:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623783069; cv=none;
        d=google.com; s=arc-20160816;
        b=Pl8SeJp2GyYPrsGZcebIfwi3Km88EVKafLG14GdvsvO0/gGamBhlMJV6UxYvSx+ZtS
         N8jBq0loCFDv6xwwH0K0CwopW7RSx+heQghNLj3ykrhokqbJRE2GiNu99YhtMC+4jDKH
         qzWC8IfJZkIqxDblPfTuF3Kf5CayjRNtirqSBuaCPktAH4HnuuEfRwwU4w3n6l9MPc0I
         XxwKH3EvEnzpQyIzOu3nGTUqDoX6VH+X7Bj8GZWISxkxxvqfUZQ0Nnk6fxa6qJkUH94o
         NQ09xvLI2LQYAftjTbzJLeCZpIK9ikYOM5MhP1+HzCMPBo56xpYISOgtcvKl4gjJFz0l
         ZHzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=QojazdBWoM3SyAlRdVHgqcAEHJPhAD/lO190hYA/8jw=;
        b=cDZ813/chUSGF8OvVc0fc8mOw3qa/zj0k/65XL090BMtkQyb3hSNz4Sn2H054/mI7u
         sd7cEUK+nGlG1n6DoMXPm9GwTBhHTkl/89kUaIdfVOdrDHWasn3xKMKtosZKsHXRseKi
         fg0Dljw5o61T0vhf+O19VwL61JefzHPrzYzd4oNclOBaBcu+c+xRoYDjgScedumOaIAB
         T/Z5wvmFAJ+gCgMUPyMak6xx6q9a8f7RNn9CsH6V7bKGbzNMgbjta57DZPuMaGtUm7w9
         u//UupzENjNHva/vObqiRiEgZEW1pkxg3N2JJdTwFyzpNuUSJIKTRcasTh3BLgHQlZsN
         WphA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=keYPy5Ik;
       spf=pass (google.com: domain of ecree.xilinx@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com. [2a00:1450:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id j15si125120wrb.3.2021.06.15.11.51.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 11:51:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ecree.xilinx@gmail.com designates 2a00:1450:4864:20::42d as permitted sender) client-ip=2a00:1450:4864:20::42d;
Received: by mail-wr1-x42d.google.com with SMTP id m18so19406337wrv.2;
        Tue, 15 Jun 2021 11:51:09 -0700 (PDT)
X-Received: by 2002:a5d:658a:: with SMTP id q10mr618994wru.258.1623783069593;
        Tue, 15 Jun 2021 11:51:09 -0700 (PDT)
Received: from [192.168.1.122] (cpc159425-cmbg20-2-0-cust403.5-4.cable.virginm.net. [86.7.189.148])
        by smtp.gmail.com with ESMTPSA id v15sm2900252wmj.39.2021.06.15.11.51.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 11:51:09 -0700 (PDT)
Subject: Re: [PATCH v5] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
To: Kurt Manucredo <fuzzybritches0@gmail.com>, ebiggers@kernel.org,
 syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
Cc: keescook@chromium.org, yhs@fb.com, dvyukov@google.com, andrii@kernel.org,
 ast@kernel.org, bpf@vger.kernel.org, daniel@iogearbox.net,
 davem@davemloft.net, hawk@kernel.org, john.fastabend@gmail.com,
 kafai@fb.com, kpsingh@kernel.org, kuba@kernel.org,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org, songliubraving@fb.com,
 syzkaller-bugs@googlegroups.com, nathan@kernel.org, ndesaulniers@google.com,
 clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com,
 kasan-dev@googlegroups.com
References: <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
 <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
 <202106091119.84A88B6FE7@keescook>
 <752cb1ad-a0b1-92b7-4c49-bbb42fdecdbe@fb.com>
 <CACT4Y+a592rxFmNgJgk2zwqBE8EqW1ey9SjF_-U3z6gt3Yc=oA@mail.gmail.com>
 <1aaa2408-94b9-a1e6-beff-7523b66fe73d@fb.com> <202106101002.DF8C7EF@keescook>
 <CAADnVQKMwKYgthoQV4RmGpZm9Hm-=wH3DoaNqs=UZRmJKefwGw@mail.gmail.com>
 <85536-177443-curtm@phaethon>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <bac16d8d-c174-bdc4-91bd-bfa62b410190@gmail.com>
Date: Tue, 15 Jun 2021 19:51:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <85536-177443-curtm@phaethon>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
X-Original-Sender: ecree.xilinx@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=keYPy5Ik;       spf=pass
 (google.com: domain of ecree.xilinx@gmail.com designates 2a00:1450:4864:20::42d
 as permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 15/06/2021 17:42, Kurt Manucredo wrote:
> Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
> kernel/bpf/core.c:1414:2.
> 
> The shift-out-of-bounds happens when we have BPF_X. This means we have
> to go the same way we go when we want to avoid a divide-by-zero. We do
> it in do_misc_fixups().

Shifts by more than insn_bitness are legal in the eBPF ISA; they are
 implementation-defined behaviour, rather than UB, and have been made
 legal for performance reasons.  Each of the JIT backends compiles the
 eBPF shift operations to machine instructions which produce
 implementation-defined results in such a case; the resulting contents
 of the register may be arbitrary but program behaviour as a whole
 remains defined.
Guard checks in the fast path (i.e. affecting JITted code) will thus
 not be accepted.
The case of division by zero is not truly analogous, as division
 instructions on many of the JIT-targeted architectures will raise a
 machine exception / fault on division by zero, whereas (to the best of
 my knowledge) none will do so on an out-of-bounds shift.
(That said, it would be possible to record from the verifier division
 instructions in the program which are known never to be passed zero as
 divisor, and eliding the fixup patch in those cases.  However, the
 extra complexity may not be worthwhile.)

As I understand it, the UBSAN report is coming from the eBPF interpreter,
 which is the *slow path* and indeed on many production systems is
 compiled out for hardening reasons (CONFIG_BPF_JIT_ALWAYS_ON).
Perhaps a better approach to the fix would be to change the interpreter
 to compute "DST = DST << (SRC & 63);" (and similar for other shifts and
 bitnesses), thus matching the behaviour of most chips' shift opcodes.
This would shut up UBSAN, without affecting JIT code generation.

-ed

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bac16d8d-c174-bdc4-91bd-bfa62b410190%40gmail.com.
