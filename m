Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBPNORLVAKGQEXWWKMRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CF07D674
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 09:39:41 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id w17sf7679724lff.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 00:39:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564645181; cv=pass;
        d=google.com; s=arc-20160816;
        b=McqTynsL8n1vIA7I4tjDhWuBKqn7BJYVSDLRrw4gpEByJNERmUmfGvAKmah/eCcz1j
         TgUlEBDHmXjeH1DsTXlNSelVEvnV9dgFbxIsho0onO1YUBFNF0J+bV80AoP+vPnEFTrl
         tKgYIdy1L5+6v3XX5WIb9GA+7OLVQ0Rai6Xdh3CR543iEpWhp0Unf/r+IrZUyd3N4+TP
         f1oszvfPZf0ZtV/xh8Jdnvt7a3/YRvUHygnz/1kDD9OE7gzSOKBn0CxPUU3/CdguTr5a
         x7dcMUGrwdHEAGHVvbDcApWKchu0Ex+5UEuKP2jzEdQ5w3BBcx3xudS8VunWEqsqctcI
         +YKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Hgnt/7xa7Vic7JLDuV4vd3J58icvJIceyCct0BnQN+Y=;
        b=gNPK1gOEOerKuR7oiIjvbR0kLOxc3Bydrzz+oPPNfE3XHeEjJpd6+I3WnzNEUqACxa
         Vru3vuk5WAkhJ/GbuJ6q+X7e5YYJpg2r7ecU8aOLSmaqR/CCri9YgwE7l0c4kDozbJMq
         8GyVVzPpz0Ni1MGMwmIKjrj8f5GU3QV27VWj516BWjr8AztyJKUDDUPZbCDFHxuDXklZ
         jowPKLpF9vbtuVpxutiDjdbgiXTt3LqJKq99Wjo+OJ/3Ko+QejfLJ+RfJDM/7fna7WPu
         v/Ox+EozzgR6l82gLpxy0D+kG1IXrRMQqEdOnTg8OC5A4fNmoDb/2t6quWGLI0p0bXtU
         GpMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B5jtyM/7";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hgnt/7xa7Vic7JLDuV4vd3J58icvJIceyCct0BnQN+Y=;
        b=cR5UGHqD+/t00UInSpJs28bUPNWBcXb6aMMc3Y1Voz6YpBY/MrQFcPjjpqDm0iQyYD
         S4VUr/ugRkm9t+TvuSvYN2U21q8p50+P4TS0rpcV/3j9BCheoT4H79F/UGjMd8CoSfxL
         zGnR1iZtbjAZiG+Mk3+/dWGaD4GRhm4kIONEqlp+zJHfhLvDDyzQYa60hN6tSIn+7hc7
         gHQrM9ixbVFRyr7Ttlndk6vYBqLOdaF/SXC4SCPkFWvu+CSR59N67pk/z01U9kUvGlt1
         oHIprNHvZyrBpp9zGJBq8JvMjUkUPWAG2oJTDimClSq+7kKym2a5ygeqi+Fc0mj9wp6y
         oE3w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hgnt/7xa7Vic7JLDuV4vd3J58icvJIceyCct0BnQN+Y=;
        b=MLgCrhOLysEueCp5Gd4c9xOiK0gBG4eWD7OAii5BsKi63sVv1dMHLGbAgnDbRcuthk
         xY4o/OwNNAhdZBKSIXpH67FqbTtWJK+QB9CF+XuRgFgivaFnKCx44tQ4RyGN+JDDRgSA
         nAZsVysGlQdTcFPrSJq3JRPhPV4PQLgU+ldYiIk0pQBoEfNo1eudJSxm7UemNR/CKvQB
         tdYVsxGQMIsKwnuL6aSCDh8xq8TkRSkpWyqj/TmkfAfw7bH2QWrzTC/NReeMsmZighQd
         t0GpHlJMqV+gSExr62VNucmOLOn/ZXKqqr8jdcUJWyPKvH0M+FU1Y6ativUb3cmB7DXn
         kBvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hgnt/7xa7Vic7JLDuV4vd3J58icvJIceyCct0BnQN+Y=;
        b=MwpoKC8cLdmNOwvoAi72zRuzKoXxjEi+IW8bjteREJYy9cspYuW0EHDY30lhRv7C2/
         EQnkS+hTLuiSoe7og+49Ca1LR1ZpTo44urSzuj7WnHimor1XWAGGhw//8C86+FebiUHR
         bYXAi4gWV+3PddJt40OX7ZmdoU4I/U7m26tTgb7g4oi2BG9mxcudo5bXnnTTD9MwMWWm
         O+emr6zZjiCi/y4eA8RyoW3iDqS2XlYMqXcknibhGmMKRduz03a7cOjOnUoVZJhBbn9s
         AFbMaAfjOVkUS6uuoWQAyPYMk1WbIjcH65BRvR0LEoFYIUrxxOsjYEVWjhFa39likcIJ
         kqTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV/xfaeMQD0rbF9S/DoRoJiy/tj01dAomjKfMvQcwz3DXBwkMuG
	HrJspyxC0cRnz2BBZss7OEI=
X-Google-Smtp-Source: APXvYqyZdrkFaJOBFsLin2RdMEmx18tM5TD76K1d2pWTERxQAc4g4ri45jt17/gEFJjzo9BM63REnA==
X-Received: by 2002:ac2:5492:: with SMTP id t18mr8239900lfk.41.1564645181496;
        Thu, 01 Aug 2019 00:39:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9714:: with SMTP id r20ls8178044lji.6.gmail; Thu, 01 Aug
 2019 00:39:40 -0700 (PDT)
X-Received: by 2002:a2e:2993:: with SMTP id p19mr64998664ljp.202.1564645180498;
        Thu, 01 Aug 2019 00:39:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564645180; cv=none;
        d=google.com; s=arc-20160816;
        b=MVtwHws3YXJ6NYW2x0wM/Z9ocuoaiLwf25BHx1mv61uo7hqo43wdHdAtFpyMAtsDFq
         H3erGoHlpSQnmuGQH2SbcNGPDUVogs6UE6jue1NR0FoQKjJXNwVUzDOMlJ0Nwbk4YM90
         z9Gpqy5Q/8qoG13Cx+vqSBNSexD5rg/1KAi+ABvWXxz5qyt76Exd3dm96nmiwalwOaNc
         Nq70tNND9KK/mNe0OQuJI7pxy7D+NLQjixaS7yXV+afhfJCjQyUd1VFY3Jp+KOB5Dbya
         Gu7Vp/3Q4QQW/7YZ4ePhOsMo5fP/zVtyy8bqhHC4VrXfpQB88o5rmFW1pKys6YgK+v9b
         J8uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MZEEIPgnARUyVNJPJBbjhN6MQZ0NcCMZUIjXrV1XLGA=;
        b=Yq83UjdxC6DIVOImXzN1V7jP7+g/KTrVOXdxdkPCL+Xw45iq+a1eXdPRoTneLl2wyj
         wyux+5ljFA6HD4QAIv/cD7eH/aHNFScmiGoAOvHywbOYhnPbt7ESpI5cvqTj9U6yTHRh
         v6evIFsZxsK3BL094R2aXh/iU6b3V2XgplmAOrSQnOe1Ly7Rz62g3l5Nmmff83Nwb4QK
         OIBW/0q5jW9B9DB0olcDmZyW9eEkn1FDjI3J2KR499JKKs2IxAqH3+XeQcGhTbe81zDz
         Y+KkYySBKL6yN+j/Auj++kLl8dzvMGtIwa+LoyQ8/pwKCXR+QExMNfNC/5+EvzuA+TNJ
         IStw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="B5jtyM/7";
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h11si740036lja.0.2019.08.01.00.39.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 00:39:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id p74so63470771wme.4
        for <clang-built-linux@googlegroups.com>; Thu, 01 Aug 2019 00:39:40 -0700 (PDT)
X-Received: by 2002:a1c:5f87:: with SMTP id t129mr120710192wmb.150.1564645179900;
 Thu, 01 Aug 2019 00:39:39 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
In-Reply-To: <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 1 Aug 2019 09:39:27 +0200
Message-ID: <CA+icZUW1YQqDjFCX5Ek100SbveX0Zevr7T5gbtdpcmZD+kCuZg@mail.gmail.com>
Subject: Re: next-20190723: bpf/seccomp - systemd/journald issue?
To: Yonghong Song <yhs@fb.com>, Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin Lau <kafai@fb.com>, 
	Song Liu <songliubraving@fb.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"bpf@vger.kernel.org" <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="B5jtyM/7";       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

Hi,

just want to let you know that I did a git bisect with Linux v5.3-rc2
(where the problem also exists) and the result (details see [1]):

e55a73251da335873a6e87d68fb17e5aabb8978e is the first bad commit
commit e55a73251da335873a6e87d68fb17e5aabb8978e
Author: Josh Poimboeuf <jpoimboe@redhat.com>
Date:   Thu Jun 27 20:50:47 2019 -0500

    bpf: Fix ORC unwinding in non-JIT BPF code

    Objtool previously ignored ___bpf_prog_run() because it didn't understand
    the jump table.  This resulted in the ORC unwinder not being able to unwind
    through non-JIT BPF code.

    Now that objtool knows how to read jump tables, remove the whitelist and
    annotate the jump table so objtool can recognize it.

    Also add an additional "const" to the jump table definition to clarify that
    the text pointers are constant.  Otherwise GCC sets the section writable
    flag and the assembler spits out warnings.

    Fixes: d15d356887e7 ("perf/x86: Make perf callchains work without
CONFIG_FRAME_POINTER")
    Reported-by: Song Liu <songliubraving@fb.com>
    Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
    Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
    Acked-by: Alexei Starovoitov <ast@kernel.org>
    Cc: Peter Zijlstra <peterz@infradead.org>
    Cc: Kairui Song <kasong@redhat.com>
    Cc: Steven Rostedt <rostedt@goodmis.org>
    Cc: Borislav Petkov <bp@alien8.de>
    Cc: Daniel Borkmann <daniel@iogearbox.net>
    Link: https://lkml.kernel.org/r/881939122b88f32be4c374d248c09d7527a87e35.1561685471.git.jpoimboe@redhat.com
    Signed-off-by: Ingo Molnar <mingo@kernel.org>

:040000 040000 4735e9d14fa416c1c361ec3923440a3d586a627d
31de80b85c7b0292e47a719ecb6b1a451de2f8ef M      kernel

Maybe you want to look at this, too.

The object files are attached in [2].

Thanks,
- Sedat -

[0] https://github.com/ClangBuiltLinux/linux/issues/619
[1] https://github.com/ClangBuiltLinux/linux/issues/619#issuecomment-517152467
[2] https://github.com/ClangBuiltLinux/linux/issues/619#issuecomment-517159635

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW1YQqDjFCX5Ek100SbveX0Zevr7T5gbtdpcmZD%2BkCuZg%40mail.gmail.com.
