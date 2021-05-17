Return-Path: <clang-built-linux+bncBD5JHS4X5YBBBJWDQ6CQMGQEQHPYERQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF5B38230D
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 05:23:20 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id j19-20020a63fc130000b029020f623342e0sf3655716pgi.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 May 2021 20:23:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621221799; cv=pass;
        d=google.com; s=arc-20160816;
        b=lwTGeT4zQMmfgLICoXcOiTSPAngTdiL1J8Okq+geM1TsmspZzg8fdAiImbPb0H0ULq
         lYdzHk4CnYdl9AlN+IK1QF3r5IWfcJDoPmrMtXetv9HZufTOpxJCAj7qsLB1c0ACVSCB
         buEVuBOj6W6a/yZhVjA3ZhKBkfSVPuwjpNxOQ5xgVVia8qWb892B4t0Dn39uDWtPdoGq
         0rHDJUXaK37EqeQgYtG50g3p0r90buUOL8zgR0xgpLjsj9RI6jkIAOaODApO6oNrZmeg
         qSg8mqhYkQX6Nbv9jSXJnkRvhHqYBo0q/60nJrGFKwXxi3pVbuep9K0VjHudtOq6DvSp
         Ix9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=3s7dE1P7vCwkRBFDBbYvtiz/6YDRWdzJDezuu1S9cRU=;
        b=xxYCG9gcWGbGrkNPZqNtfYOoaSf4JmU0Bs8gezcdEB7jYCsCKH+eV4349/cyC/7oAX
         JxnJdhkOFt6Qt6q/0ajgaiJMhVrFZt67mVABaCOGUDkPVTWB+jhT/z5PGATwk4Z6q3Vz
         zeoFxFh/ErShwet83/0/XzTvE0TnsK87vlcodPf6YBhwGDK4na8AaQKbAVLKsQN/LwqT
         46DUVXNAdTzlXDjlgtrbV77BYit5AakApY/jBPOUNQCleJ4OLOa84pclR9razzLlCYjU
         9EY1EMJDlxZ2+VHUxgTxmtn2lmXWgGUw2FLXMfvfA7o+Au7PEb1r85wOUEtfiu2YMHp8
         VyHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=GulJ6Qio;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3s7dE1P7vCwkRBFDBbYvtiz/6YDRWdzJDezuu1S9cRU=;
        b=AMztn6Xd+CiPfYS1+FdMw+/SpL632YWkrGKdMI1U/FgpUZGLgXNjQhlqGeRPpZwpDv
         FLnvgF0Vg/fo9ppTEmz8ysMDTLJiDjSn1JnxmEdlz1TXINWR7TNPWibP4cnStmb8lEdE
         IuSn2r8fURj7+yaTf96nlsDf6p08XvbfTlrBnT8v5iFJjDmf8NorECr3yUWlUBuGR3mO
         F+Ra9eZnBFuiwo7IKCPuI+ue/GkQM/ZimeylUrsgvu1UNfcygSDbNooDJm6fEQt68tKg
         ASqQMkvGlKAb0G/P9vzlT9O+kKdztiuI4itkrkwK837m7qLykKzRUC9MHAnIwLFfJ6G9
         7Vrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3s7dE1P7vCwkRBFDBbYvtiz/6YDRWdzJDezuu1S9cRU=;
        b=ccGGvM5qSTd22YYUo4i4uFn+C6wnBrlb1fVUkzQbl0bu48BozoNlLBEWsy1/9FO0Ht
         FYruoIEyZpwdlmm92DDYabiGjLVdieVBkKHiEdTiAwjEi8m8h9EP61D/LawivQFqtfk/
         6XsYwPrEDU15Fm2YpgiBGfNw5nv+ARJPC18UfB+5pB2y7UJ4k+Bwwet9quRPEBTzMB2O
         J6s1WT4uKkTA5PllPfrT2tE8OBU37vz6dSRSYS0Ao76GZfEloSv2VY2aN/s53afW3adv
         BAxTSjltfvibXuR/CkHysiQGJLqzyrjs/c252tmLVRE+Y6Ro5WiQURvqAo3e/xHx3zmZ
         Gb1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532paZTvKXue3FOthsNHG6QBGVjM1G4Sk0QoV9scCIRR81XoAX30
	zQvBsSObd6U4S4CyW1VFg34=
X-Google-Smtp-Source: ABdhPJzu2H0iRut50fO/pO1lbgHsnqjtMaxhHqax2NshKltB6JflpFeIz5NlYB8YOyjuNdrVwQ6/RA==
X-Received: by 2002:a63:4d5c:: with SMTP id n28mr59276122pgl.436.1621221799064;
        Sun, 16 May 2021 20:23:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3593:: with SMTP id mm19ls2413408pjb.3.canary-gmail;
 Sun, 16 May 2021 20:23:18 -0700 (PDT)
X-Received: by 2002:a17:902:8bc3:b029:e9:9639:be21 with SMTP id r3-20020a1709028bc3b02900e99639be21mr57645038plo.59.1621221798371;
        Sun, 16 May 2021 20:23:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621221798; cv=none;
        d=google.com; s=arc-20160816;
        b=xX9LQkZ2pi8clEDD9gDIlECnO0Oqh5Q5a8itiLLp0TfrTxo2ealF738i0omMREYi/N
         DaO77dbPz7CJnPOFhj/BrRNr1AQYIGDuVScATvEuzBLUCh7s12x9oULFkOJOGB7R7i1d
         drnnU4Yt3wscQOG/n6iuXGSRdfSnU1JeE3Y+RiwOHMNqahjBj5avzuB43GTx1wNTuI9h
         0VPWK2Nach0f8u+3nEHQh3QBu4df3NaEdurqQXettBfTdy4vncO5VL3RqKPr3QPbwSYY
         r5QVZSSEveFU3dAsG5lBIELoW23u6YiMWmIEuaZLEA3Gq1E5b9mcl6MZqZALTSwRqgeM
         svlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=fOR5pnDEPGBJt3faYvRqJP82Hiak0OwwFyZyM93jpF0=;
        b=g/Ej5pqQSj5dvTX6+9mWsy/IJqWFhYM5Yod9O0PqCsHHmijftDgcU1hqwyrI74ctzS
         nFczCMl2uPlif43HHY63ogGdFTVXX+LOUfBRi7H7Iad5LDDBSM5Ob2fi1KHHrUJ+hkMV
         t2ZRAYxyNbdhlNjy+Irxodm45oy3rwgB8yTBTy5QWih+bqUvgDCvhBmWyKbsV7gtdlY/
         hCrc0ehKWmXvvxbrELN0c+RpH6qikUJlTMj46qvTyGWAXtU0y/qhBghXgAirLV6PCo7Q
         h62Vog/x598KwBVyeJkOKnXUglwyFh2nzzQxUh/LPSEVH2ZxFfvJ3TpNRVpQG41/8k8P
         p6fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=GulJ6Qio;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id b9si1413126pfd.3.2021.05.16.20.23.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 20:23:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Received: by mail-pf1-x430.google.com with SMTP id q2so3979500pfh.13
        for <clang-built-linux@googlegroups.com>; Sun, 16 May 2021 20:23:17 -0700 (PDT)
X-Received: by 2002:a62:8f45:0:b029:28e:a5f2:2f2a with SMTP id n66-20020a628f450000b029028ea5f22f2amr57274586pfd.44.1621221797301;
        Sun, 16 May 2021 20:23:17 -0700 (PDT)
Received: from localhost (110-175-254-242.static.tpgi.com.au. [110.175.254.242])
        by smtp.gmail.com with UTF8SMTPSA id z62sm8585359pfb.110.2021.05.16.20.23.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 May 2021 20:23:16 -0700 (PDT)
Message-ID: <f8d64d7d-cd2b-342a-de6a-c14a5df9462c@ozlabs.ru>
Date: Mon, 17 May 2021 13:23:11 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:88.0) Gecko/20100101
 Thunderbird/88.0
Subject: Re: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for
 preprocessor
Content-Language: en-US
To: Segher Boessenkool <segher@kernel.crashing.org>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: Michal Marek <michal.lkml@markovi.net>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
References: <20210513115904.519912-1-aik@ozlabs.ru>
 <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org>
 <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com>
 <20210514084649.GI10366@gate.crashing.org>
From: Alexey Kardashevskiy <aik@ozlabs.ru>
In-Reply-To: <20210514084649.GI10366@gate.crashing.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623
 header.b=GulJ6Qio;       spf=pass (google.com: domain of aik@ozlabs.ru
 designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=aik@ozlabs.ru
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



On 5/14/21 18:46, Segher Boessenkool wrote:
> Hi!
> 
> On Fri, May 14, 2021 at 11:42:32AM +0900, Masahiro Yamada wrote:
>> In my best guess, the reason why powerpc adding the endian flag to CPP
>> is this line in arch/powerpc/kernel/vdso64/vdso64.lds.S
>>
>> #ifdef __LITTLE_ENDIAN__
>> OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
>> #else
>> OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
>> #endif
> 
> Which is equivalent to
> 
> #ifdef __LITTLE_ENDIAN__
> OUTPUT_FORMAT("elf64-powerpcle")
> #else
> OUTPUT_FORMAT("elf64-powerpc")
> #endif
> 
> so please change that at the same time if you touch this :-)

"If you touch this" approach did not work well with this patch so sorry 
but no ;)

and for a separate patch, I'll have to dig since when it is equal, do 
you know?


> 
>> __LITTLE_ENDIAN__  is defined by powerpc gcc and clang.
> 
> This predefined macro is required by the newer ABIs, but all older

That's good so I'll stick to it.

> compilers have it as well.  _LITTLE_ENDIAN is not supported on all
> platforms (but it is if your compiler targets Linux, which you cannot
> necessarily rely on).  These macros are PowerPC-specific.
> 
> For GCC, for all targets, you can say
>    #if __BYTE_ORDER__ == __ORDER_LITTLE_ENDIAN__
> You do not need any of the other *ORDER__ macros in most cases.
> See "info cpp" for the sordid details.
> 
>> [2] powerpc-linux-gnu-gcc + -mlittle-endian    -> __LITTLE_ENDIAN__ is defined
> 
> You can just write -mbig and -mlittle btw.  Those aren't available on
> all targets, but neither are the long-winded -m{big,little}-endian
> option names.  Pet peeve, I know :-)

I am looking the same guarantees across modern enough gcc and clang and 
I am not sure all of the above is valid for clang 10.0.something (or 
whatever we say we support) ;)


-- 
Alexey

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f8d64d7d-cd2b-342a-de6a-c14a5df9462c%40ozlabs.ru.
