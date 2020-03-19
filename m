Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBB3F7ZXZQKGQEAOLL6UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 6859F18B2EE
	for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 13:05:00 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id y10sf1685602edw.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 19 Mar 2020 05:05:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584619500; cv=pass;
        d=google.com; s=arc-20160816;
        b=uEOWDaEjTfwp5borYemA439BxU6D/7U2T8x9acWTFy/uPNpUxtqHV9xIc5Ur6gvEoX
         T5aSmQp6uToOnAvpeNZmsbjSdarP0mOZc9W2Y4Ybqttn+SJuk5SDO6d0kk47+pVkr7yk
         jpYcnzWYTsLsnf/fPNjZEbKKWpJq6AW+w880W2UYKlq1auZ+uGl9VotzKdxxyPKyIjpV
         8nwD2KwJJF9dWrrsv3oPVy+qE5O08RKJd5UA8X7BjGmqTTsSrF5KGA2jqomSm0S+MKbU
         hmnyqChMyJINs1ie+8ESYElaenVqfHjd2vav5zWK4VwL9Lb7oe9JAJnB4kuQDFBbMrE+
         l3vg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=lLkbb9MySVenZpuF/uCrtQ9kuK87aF63PPqwoFDB1eU=;
        b=bilHbXajSk2ucYbXYtOOT+CFcVc9lc7qR3Qcbdg9FQUjO/SaLFpmhzMwUSXjYKLDhA
         QrWYwXXBpZ9FMAQoVh5GlmRWUKeGFTu1MDOtbUFuEI+F0XXYFHJND0d7PpAxqa3uLD/J
         Fxa7c0FH3G42OgsPgBhbryR26/gOpvJcza7/967R9szcvUBIT/MMsNntLo96cTUOVpVw
         MblKbFhFLxMgw8x7UHc+bB1t/dilX/U+xQ25YuWQydw4IEUlKJz1ae1UAFZwrT6tu+H3
         2NTE8Bj5r/C/K08926JnLwo7fEyetH2xJTlpXPXdRKYAHBS2cshq6Q9ZYGosiGRedMET
         vm8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lLkbb9MySVenZpuF/uCrtQ9kuK87aF63PPqwoFDB1eU=;
        b=nbhtTbYW5d7J1LGQlvKuPl5NLXhZafRCUfQ3zzeOPZEb+wtLeH+Xa6jjU456DJDdhE
         P/UmIZhccRkWLE7sU7P/WFl+urNr5aVr5gXY5AJt+sR/deGkEJpl9E3wzixmjYiLw5w2
         0O017F474ZFmU0+Bn/SHPnP9WoPpj4BVXovPgrncm9nqgiVUcYfhLaAgujMnfwqbY+P1
         +WWOObhlPVVxuLGWvHe2qdk44kmZY2hD1O9OqNaPizS908mhq8A/EZatmv3AXfWpT60v
         vEyOVyUs1mjyDiJDZGfWzGR9BpCnYH52dM/TG6cVEDRXW1N74VsBre+AutVPj/FiOonf
         jDOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=lLkbb9MySVenZpuF/uCrtQ9kuK87aF63PPqwoFDB1eU=;
        b=ZrSpa4iLb3s8+KiqXhFfVWgNo9pV11QLbZ1Meo6at28EkQWBKK5nNvKwIdQLO2EI/p
         tGeZ3Rs97klfiVuOe6E1nJK5mPuGzQvga4HK28fXK8yMqkp5+9XiJVBe+RPi6vfRFpcg
         bY4pzcNXMWVtPwb1hAJqJCn9jtWh4UnFLyc/Dbzw6C8DkIwhRA4aP0eHiv8Xbdi68Pwl
         D2vNtNKH2UlS1nZKz3YjcR8jjPWDym4U4bI22EYzwJKpvv38xDX5ZnPmXWzAxdCfkf1e
         L/l7+/v3ba/iOaNZmeqC2R4m+TDGNljUdKsKg4+wxXKZ51i3g3la9LbJd812SHhck6uL
         M1ww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3m+Fa4jFTowMi+f0S1PG6udT1DpgRdd34AH8ZuafgmykKPaxc8
	yzUf6YGrFkx2D85mKW3jIo4=
X-Google-Smtp-Source: ADFU+vvUdrsauFMXLfTgvs++j3VOqYy3ao9IbikdqoPa+cJGb03IFdZmlT5PrGFWmgBMkl6Fk6kFWA==
X-Received: by 2002:a17:906:53cc:: with SMTP id p12mr2740463ejo.171.1584619500148;
        Thu, 19 Mar 2020 05:05:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:83a6:: with SMTP id 35ls1074389edi.8.gmail; Thu, 19 Mar
 2020 05:04:59 -0700 (PDT)
X-Received: by 2002:a50:e69a:: with SMTP id z26mr2492867edm.9.1584619499570;
        Thu, 19 Mar 2020 05:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584619499; cv=none;
        d=google.com; s=arc-20160816;
        b=Y0UnesoVHKmC19Z34SRU2KviHmSj2Iy/CrPJMCgNsO5Hlkazx9JlMq712Z/wz3fCS+
         xYu7GublpQNV0Aj2HedsbzkQzH+SwOjCEzut8PS6taGZROPlOZhRV6XZeNl67WnS+kmY
         gag7NJ8Q2N0tlYF3HRcXRDY8F7ucrYBFd38sNvHIzSa/n6opyqp+xQoWOdPFuQYZdBWk
         40/MuLRsRUvjRoQ5FFnl33QXEgAMzEfJSa9s52feTvWxNw3S4tkXjZmQRG9FlmJxwt67
         kJT0+9KOX4nFrEJnToZfNfWSeodN+ELgQfviDH219OuwHUfxjk6y0q78nYAexWUNKhK0
         5Rmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=0SdMK3/i6QkgLqtaB1IO3t3ADSsHuto+z7Ks1H1Y+W0=;
        b=TpdNRXDy80is7qHVeTuv+KRSh3vJrvS6nH995r+txfnKVbyLeYOBKqjwuiW5uNwv0S
         E/T8glTixyN53meVebl8wdTdw7j22Sc8NbXTaNKFi0FRzqoi9D35X1yi+PPgtpYS7SPU
         /VSIzmNNfNgY81ZaXg5MpHl4+i07M4/qdQBJ/LjLVSGsmqL58pfzaByleqHZE0pVe0V6
         TA4yEJl7zmUTa1AhQ2WI8yxOeWhP0rea7obHhAwTge1qE5Xed62adwvNR/wzcfFdYbfh
         azOhvIkxuDgPX5AK/5IOrxMmhkHtAItwHY8NvqsEPNuJq8xxyCjY7yaA8wG6dhrcYG6p
         PE6A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id e19si95407edr.3.2020.03.19.05.04.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 19 Mar 2020 05:04:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1jEtum-0005Mt-Qx; Thu, 19 Mar 2020 13:04:44 +0100
Received: from [85.7.42.192] (helo=pc-9.home)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1jEtum-0004Xo-D4; Thu, 19 Mar 2020 13:04:44 +0100
Subject: Re: [PATCH bpf-next v6] bpf: Support llvm-objcopy for vmlinux BTF
To: Michael Ellerman <mpe@ellerman.id.au>, Fangrui Song <maskray@google.com>,
 bpf@vger.kernel.org, netdev@vger.kernel.org
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 Stanislav Fomichev <sdf@google.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Kees Cook <keescook@chromium.org>,
 "Naveen N . Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
References: <20200318222746.173648-1-maskray@google.com>
 <87tv2kd4hn.fsf@mpe.ellerman.id.au>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <b5d153ad-23fe-a367-100b-ea9f19ae6958@iogearbox.net>
Date: Thu, 19 Mar 2020 13:04:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <87tv2kd4hn.fsf@mpe.ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25755/Wed Mar 18 14:14:00 2020)
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

On 3/19/20 11:27 AM, Michael Ellerman wrote:
> Fangrui Song <maskray@google.com> writes:
>> Simplify gen_btf logic to make it work with llvm-objcopy. The existing
>> 'file format' and 'architecture' parsing logic is brittle and does not
>> work with llvm-objcopy/llvm-objdump.
>> 'file format' output of llvm-objdump>=11 will match GNU objdump, but
>> 'architecture' (bfdarch) may not.
>>
>> .BTF in .tmp_vmlinux.btf is non-SHF_ALLOC. Add the SHF_ALLOC flag
>> because it is part of vmlinux image used for introspection. C code can
>> reference the section via linker script defined __start_BTF and
>> __stop_BTF. This fixes a small problem that previous .BTF had the
>> SHF_WRITE flag (objcopy -I binary -O elf* synthesized .data).
>>
>> Additionally, `objcopy -I binary` synthesized symbols
>> _binary__btf_vmlinux_bin_start and _binary__btf_vmlinux_bin_stop (not
>> used elsewhere) are replaced with more commonplace __start_BTF and
>> __stop_BTF.
>>
>> Add 2>/dev/null because GNU objcopy (but not llvm-objcopy) warns
>> "empty loadable segment detected at vaddr=0xffffffff81000000, is this intentional?"
>>
>> We use a dd command to change the e_type field in the ELF header from
>> ET_EXEC to ET_REL so that lld will accept .btf.vmlinux.bin.o.  Accepting
>> ET_EXEC as an input file is an extremely rare GNU ld feature that lld
>> does not intend to support, because this is error-prone.
>>
>> The output section description .BTF in include/asm-generic/vmlinux.lds.h
>> avoids potential subtle orphan section placement issues and suppresses
>> --orphan-handling=warn warnings.
>>
>> v6:
>> - drop llvm-objdump from the title. We don't run objdump now
>> - delete unused local variables: bin_arch, bin_format and bin_file
>> - mention in the comment that lld does not allow an ET_EXEC input
>> - rename BTF back to .BTF . The section name is assumed by bpftool
>> - add output section description to include/asm-generic/vmlinux.lds.h
>> - mention cb0cc635c7a9 ("powerpc: Include .BTF section")
>>
>> v5:
>> - rebase on top of bpf-next/master
>> - rename .BTF to BTF
>>
>> Fixes: df786c9b9476 ("bpf: Force .BTF section start to zero when dumping from vmlinux")
>> Fixes: cb0cc635c7a9 ("powerpc: Include .BTF section")
>> Link: https://github.com/ClangBuiltLinux/linux/issues/871
>> Signed-off-by: Fangrui Song <maskray@google.com>
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Reviewed-by: Stanislav Fomichev <sdf@google.com>
>> Tested-by: Stanislav Fomichev <sdf@google.com>
>> Cc: Alexei Starovoitov <ast@kernel.org>
>> Cc: Andrii Nakryiko <andrii.nakryiko@gmail.com>
>> Cc: Daniel Borkmann <daniel@iogearbox.net>
>> Cc: David S. Miller <davem@davemloft.net>
>> Cc: Kees Cook <keescook@chromium.org>
>> Cc: Michael Ellerman <mpe@ellerman.id.au>
>> Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
>> Cc: Nick Desaulniers <ndesaulniers@google.com>
>> Cc: clang-built-linux@googlegroups.com

Applied, thanks everyone!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b5d153ad-23fe-a367-100b-ea9f19ae6958%40iogearbox.net.
