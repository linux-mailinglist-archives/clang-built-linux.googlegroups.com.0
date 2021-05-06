Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT7E2CCAMGQEBMR7XRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 024FA375A0C
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 May 2021 20:15:44 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id u17-20020a19ab110000b02901d01348aba8sf1149531lfe.20
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 11:15:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620324943; cv=pass;
        d=google.com; s=arc-20160816;
        b=qbpXC6WlQCQPQY/nBQKiFIO6P0ZLEmHqP12BCtyx7TAmkC20MbEpjMii/3JYlvIXL9
         WM82TDbOinlIYmyqkDjHvKCe8ZRfe5/Q+MpJerV63IPSgNMdTKCHP41uc+a23larQ42k
         o9BTOvaRCqcAFJBEuIWjaeqpPiScWjKPaFKuav4GNbmx0VRjz+HSHNk+hehVmL5p3Ow0
         J0LKi9yMXoj0DhHlpgZO25QM9+jUYYdPUnffTPp0S20Tw6gtqgJppGbHZgL83CKV6u34
         1h+bJLhvkoL1zssJcJAo+PIIGydP8xybQgSiLt2bYjOFX9uvP+VwiH1yL5N9JsUfgZqz
         2rNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0dOUOtu+FLejtQF10nnSHSbwYRqvbbJtTRwqtFjSqbg=;
        b=s+Nz6s/56PjAYq7bPMDPPqQ+0h7ZHSJhBRTiB03hftDyqkdDwSOOxr85h23Fumr0bc
         zXvCEkZ4EvxFy95AKvKN5GeAb4xAyjTjTOcn2or1ffvv5b2rgSvmySSiYkc7jM7b+Wna
         c08Wjt0PaVWEF0T8EoLpeQyYbGLxattMFhvRycrEXEC8d4oRlIH0r2ZRBujpMGd5PPI4
         lo154dtiCozTTLi0zmGXqPqJ3+YN+GuFLu+Q4tgm6fh5rPJYwax0oeF8DHMtL7mlNq+a
         GWXe/tOFZHNq9J9gnSsxYdT/uGReoLrQfu/lUc0rgc3B08sDrniHx2A3VtYIcUiQOu2S
         H9MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lCSZ0VCX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0dOUOtu+FLejtQF10nnSHSbwYRqvbbJtTRwqtFjSqbg=;
        b=szqP85SiW9/1K0CJ+/rAn/JGDo+WHkr4I38961i67klElsnU9gKa87t0iB9IlaNuZf
         56tExrZ+PUm1kuznG1aFr4rH/PPlx8h54yZD5nOvRzabqPLdlcTFdWmatBQxoabiU2Jb
         BrJ5yBWN6oc8HXPwu9Ldw6LFt2Seju0q5SdvARYmYwbmSiT1fsWDKaC0lUE0zPhvm1IU
         Xb804SZBzfF1+d58udRZkZI4cOJ2sUdvFRIQQUqqWN1+9sRIOVTIwXt5OxxzWrv0XiRr
         zUGKACawemWZiN7QelJKnADTlv9gF3hmO6erk5rnrpQSqKvnkRqRLIjYfXzsVRcIh4Ry
         jcTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0dOUOtu+FLejtQF10nnSHSbwYRqvbbJtTRwqtFjSqbg=;
        b=s+xSAUUxCgMjizQ0ABIgzuEATgRjLl1vMYzgiXEnw1+ugbIIymkqKZhoax35DWhqBD
         bpHUgTq37AeCmy00vQgHC4mP6JiIV345gUiYGb+FqjXOez7ixmO9krTplrPJzQrcq7bi
         4Ft+kESdG5UTR11xZTz5FsrzTXEpHbz2oYbvXybCQRoJk8XxMu1L1cKBcwFf69SFDn3T
         i4SiK4MK/FnUseRWsbufm5nYlIy8Ob1dScchbjshJhOzS2Z5x471un5hY+xZYJv95q52
         9NCWKiFBnVlNbhPtnESqpJSg6u3TSFtqRZvLE0POlx5whdNPN4LsQ7Z1/CwselWLFzv0
         fcKA==
X-Gm-Message-State: AOAM533xdTZGf0b3BnTEgyTeha+m7RVu/byYPqpUn/QKKu82eqEBUwnG
	Mgwd5w80qcQzVjMMTvh5uAc=
X-Google-Smtp-Source: ABdhPJwRcKfFmgMKpwINPidzh8GIpmI6u35ditur7yO2cq6iLjG1VL/bVdal+0rrfFpgaW6iP9IKaQ==
X-Received: by 2002:a2e:9650:: with SMTP id z16mr4656044ljh.487.1620324943472;
        Thu, 06 May 2021 11:15:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a785:: with SMTP id c5ls739249ljf.8.gmail; Thu, 06 May
 2021 11:15:42 -0700 (PDT)
X-Received: by 2002:a2e:9759:: with SMTP id f25mr246015ljj.304.1620324942320;
        Thu, 06 May 2021 11:15:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620324942; cv=none;
        d=google.com; s=arc-20160816;
        b=v8IsIsK4O/Q0v+dScgLU6JyIrXIW3flayiJvMtyhKPH4guB6JcrC6yjDYM8z9nviPD
         kjSwtAAQ7iBN6JzWqyEEm8fJzdKUAWh1YliciGWSlv+v7u3A2rynIUTfT/dojt0b14qg
         sZ9T1faGMRHu8VtPzpWO4chQNG2UOuvOsc3tuq7Bc5BdGCfdejts29Lk1v9i6YLEoJ1W
         zkUDiff6WxRPPFS+RdfTY/Wb8wQObyzM/esyBFmOQumMsuP2FWJpbQfY86QLMI7mRsGk
         BFqjfXdHG35kgzD6d3bIA8+sdJAcKMkWuOXyKDA82FCsc3XNCQyRapj8cslJABljnNDV
         cYfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=kvX/ivL7N3DqyFpAsZ+ComjXBki6wX2A4dJqbWfCdxQ=;
        b=FH4Fa4QngTB+wdfB6cKKLz8WE8euqLbUWjut8YFym9aIiVmgZIxNo/yJBiEvsOTS9T
         mkk1ieIKr1YTHHSsRx+cxHmUyFrTa8HoipuNo9GwNflgKsPjVfVP2AqIh/r1qdgddDN7
         4+Oqx0cU2zyBhe2avkpjWRlyQk+8LixVf9TpAKyAqqhWhiIXFeyMZzK3vUjB8k17Z2kb
         2BQrw3FmjTrQAyuk3B1BW2imQBgYQ+N32iZEddyen6Y4JS0XnC7/KXT8NTFq/fmvIgJP
         xsS5YI5CWb6zdNs/ZN/aaMqGDFQMlYHi/dX2Hei+cg0RvvQoG0Uydx2o2v/X8NUoK14e
         3m4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lCSZ0VCX;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id j7si149228ljc.6.2021.05.06.11.15.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 May 2021 11:15:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id v6so8257829ljj.5
        for <clang-built-linux@googlegroups.com>; Thu, 06 May 2021 11:15:42 -0700 (PDT)
X-Received: by 2002:a2e:8e3a:: with SMTP id r26mr4517995ljk.244.1620324941858;
 Thu, 06 May 2021 11:15:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210506001410.1026691-1-nathan@kernel.org>
In-Reply-To: <20210506001410.1026691-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 6 May 2021 11:15:30 -0700
Message-ID: <CAKwvOd=SnnzVt7mpKnLOW_zwcwrmzhBSuwQ+--BGrOhga86M2w@mail.gmail.com>
Subject: Re: [PATCH] vmlinux.lds.h: Handle decrypted data section with !SMP
To: Nathan Chancellor <nathan@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kernel test robot <lkp@intel.com>, 
	Brijesh Singh <brijesh.singh@amd.com>, Tejun Heo <tj@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lCSZ0VCX;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Wed, May 5, 2021 at 5:28 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> With x86_64_defconfig and the following configs, there is an orphan
> section warning:
>
> CONFIG_SMP=n
> CONFIG_AMD_MEM_ENCRYPT=y
> CONFIG_HYPERVISOR_GUEST=y
> CONFIG_KVM=y
> CONFIG_PARAVIRT=y
>
> ld: warning: orphan section `.data..decrypted' from `arch/x86/kernel/cpu/vmware.o' being placed in section `.data..decrypted'
> ld: warning: orphan section `.data..decrypted' from `arch/x86/kernel/kvm.o' being placed in section `.data..decrypted'
>
> These sections are created with DEFINE_PER_CPU_DECRYPTED, which
> ultimately turns into __PCPU_ATTRS, which in turn has a section
> attribute with a value of PER_CPU_BASE_SECTION + the section name. When
> CONFIG_SMP is not set, the base section is .data and that is not
> currently handled in any linker script.
>
> Add .data..decrypted to PERCPU_DECRYPTED_SECTION, which is included in
> PERCPU_INPUT -> PERCPU_SECTION, which is include in the x86 linker
> script when either CONFIG_X86_64 or CONFIG_SMP is unset, taking care of
> the warning.
>
> Fixes: ac26963a1175 ("percpu: Introduce DEFINE_PER_CPU_DECRYPTED")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1360
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Thanks for the patch; LGTM.

Reviewed-by:Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com> # build

> ---
>
> I took the simple fix route with this patch since I highly doubt someone
> is actually running a CONFIG_AMD_MEM_ENCRYPT=y + CONFIG_SMP=n kernel. If
> this section should actually be in .data, I can respin.
>
>  include/asm-generic/vmlinux.lds.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 40a9c101565e..17325416e2de 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -960,6 +960,7 @@
>  #ifdef CONFIG_AMD_MEM_ENCRYPT
>  #define PERCPU_DECRYPTED_SECTION                                       \
>         . = ALIGN(PAGE_SIZE);                                           \
> +       *(.data..decrypted)                                             \
>         *(.data..percpu..decrypted)                                     \
>         . = ALIGN(PAGE_SIZE);
>  #else
>
> base-commit: 8404c9fbc84b741f66cff7d4934a25dd2c344452
> --
> 2.31.1.442.g7e39198978
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DSnnzVt7mpKnLOW_zwcwrmzhBSuwQ%2B--BGrOhga86M2w%40mail.gmail.com.
