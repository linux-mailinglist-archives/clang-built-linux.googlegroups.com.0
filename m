Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB7XERLVAKGQERBU7B3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB087D8A8
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Aug 2019 11:35:58 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id o13sf44459247edt.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Aug 2019 02:35:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564652158; cv=pass;
        d=google.com; s=arc-20160816;
        b=cLhmrx5FQSzen2Sq7rEIkQI/72SEc4EcIMbiDOU13Ht6aFkNQOJBdlfuYCuuMUOB3i
         dJxdQBaBk0Rk8UdeQv+FLg1GKhzq0zUk9J+t2FzeRcUOyCjyMtnGcxjbPv/7glSJNMs7
         ZLdSF7grWwImY525k2YFGk9Hd84nS0KOybM48wjn5kqeo9WPl/S27xOdsT5yuyPF2HZR
         IJzw0HKHbPVkbcg8H4PnTt+5IRhTKvAQcvy2KGNcXJQ41BS0TeoGoYLfn31Gt+0kSH6f
         lZKsVJUJOzh3o5FtRemai/gDQjwsbfao25UzxyDlK9q2QQM+jC2PSMVZ7Ot4a+mzLsz8
         JWoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rdidjPwnkPg9iWWXWVP09QMKUtOd3FTmoK6eRUb1T3o=;
        b=fJEBAd2/MSdPmdzURYF0Dr+4bMUqAzyG25t+AQ9h32WRejPM0agRt7r1N+eTe1kRf6
         uNJ+f/IoCBBbmKEedRyRydIdt2yMV+r+P4IWXT25tXYCYqBq+yiezK1S008l0Me60n8V
         x3sYrqbUoPH0qYM5d3ggE+enTdcbRgY5d5xg+WmzVy5g8+8y/hQxNMPr6Xp0C1ZdcU3d
         CPynqItEXeYlji3w4D+35CRRF/2/wrap6epnofnqlsPkDHvT4S7RyZXMXw6v6QY4V9zH
         kVCBp6+Auhdc+y2IEY5gOE4sSuYkaxKg25gF1F/nIln3qLd8Nz2x1PvhcZZeambl5bAw
         9AxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QIT8UUrG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rdidjPwnkPg9iWWXWVP09QMKUtOd3FTmoK6eRUb1T3o=;
        b=BhphDfSdOjf08GxMinSI10n4+hgtF4MgqBlBMdjHFZ65iyBISJz8/NjJheYTlA0Iap
         WOdNGcb1/7UZYpjs0FapHj+iBFYCbHgZU9cDk3s4drRHJpqusvDz8ynN0ZGvsB2CTcyz
         omuC5ZZ3GTSgSV0m0DM7GXNlPXOa/LpW6wVO8Wf4wRalLaLilLwQ/QndNrTGIBn2lVWs
         kFl5VYRWANiMf9saQVcl3wcFHXF5G7pNG9hJB4LDSiCTGKIe/mIYSvgpMM1kvU1KkInK
         7OF+nVuROVUfgswY2SC0FkQBVQZscLsSsUGcI52un2ZNCbeQ/XLCEtB7oafJ9ikR/Vbt
         Jy0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rdidjPwnkPg9iWWXWVP09QMKUtOd3FTmoK6eRUb1T3o=;
        b=fAY6Unb49XskZ68OGFpnz+/wCWJeKgKBunyxDGwlg33pGSWqqMeUvs7zDS02SQZ4sK
         bM5FNcc1GEzxLPyxH8ID6f35CbPr+54CGe0n81u+7+m3Et8Ns1Mke7eIxR3uZpMdCJRN
         xRApILRXzLz3uai5fKrk4IiTZBr5KjJkkO8JDuTo3impyppexmgg3OEH/B3VyjODaRSX
         RvZDj1hC9D8Tz/sqAstFn02qXXZagATA1Ency8ryIjS3Fp92SCqP1tPYeVkiL+YzBsqx
         Czr5j7vkr9uIg1y3kvxehET+n5aVTFcZ6baNO6Bv2UmFVSHO+ExLG9R4wAfNP3tomGry
         /y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rdidjPwnkPg9iWWXWVP09QMKUtOd3FTmoK6eRUb1T3o=;
        b=pi5hB13CTSCGBxj5oPdj5qYME/8fbu7/eoarjP+dqdZotH5g7PSWrAB0pivIc8MCHr
         BZBVfVAh0gkm99Jgf6pOYM0nNO6J1cgHMjyThliOIvg2W1W0rVX1HdduqGp3CnXf1isD
         dXbxDWCUnUrpqMV9KuyBaGae4txNVC/J5/4N2OjTkGLcZbqdsr8P+SIrj5tJQ5zV+R8Q
         xqpzWpTI502BP1yu/LsTTzcwmKsSoIh3fhVLTkZJ2BiJCQTR0pDdlqxK9qT1fyPDt2vy
         SAilXbekZw2Ody5Pt2HgKPSVjAQdge97POBysbCZ7HqsLnmX8/SaScutn9qeVnhziN2C
         fmRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV9YhTdlfjRYhmWyVIqEkHWqzfcPewnYd5K6IoaZmzjV7woWWpQ
	I6B1kwwW7xEBVjadwoL7ll4=
X-Google-Smtp-Source: APXvYqxFV4mTvJLs+iJrKeTgV2UGndBj+WJi+5N0KRBX8ufi/hVHAVfYj1sOx9qiQuwpMmgnmDygRg==
X-Received: by 2002:a50:c8c3:: with SMTP id k3mr110854431edh.189.1564652158393;
        Thu, 01 Aug 2019 02:35:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:8052:: with SMTP id x18ls15520212ejw.10.gmail; Thu,
 01 Aug 2019 02:35:57 -0700 (PDT)
X-Received: by 2002:a17:906:34d4:: with SMTP id h20mr91800930ejb.4.1564652157840;
        Thu, 01 Aug 2019 02:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564652157; cv=none;
        d=google.com; s=arc-20160816;
        b=dV7QcuxlwjvbEhH+mQXqb+d85HU0ernltLGS9YZTtoXdEen8nBlY3mmSwFCrZCnsiL
         B4SxRFyCWUJOB4d5dyw+DBk7C1wAsUQ4TT+jSQSnMyKbajUM79tDEfYYo43qFwZLUEJW
         fF9qcFT4VQ42d9tfrsQrbvl02wRr/TDePjOdA4SwV+VHT/J861y1i8AroCghB7XP41P8
         Df403fXGjf5RS3k/dyrQrak3nFQM0KmJ71Qek7w3XzLT+x72nDiutRenpw5+KKeLDNgg
         RsvMueyNlsoTL1kXv05ziirDgiHKiHFV87sWuAOycy2m7pyWw4RfdUNniypcbS+xM5Kc
         Lf7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=5td4UiqtXNr4aAgiX49MfMtCsb9UpANwokqkSwvYTZM=;
        b=BIHVwcHvgtZ1zUkSJieCAeZri65g8rTqJRrTy8FfMVYVfg2dZL3IE05fuwmXfhOFiT
         r2dTF3iYLHFVm2iK4kF96oJpFuZRTLoWnyBXIeaPTO6joijSp5bj5Zm5LfO40WbTIn/i
         siMPi6N4jbLl/woBjWdGTIfAbhSIEQwZTmO3rf9h7s6iV3Q9A38Emj29WkdKhdeNOVNI
         FaTeCb+Apvux8d/nO8NEtz2dECcxV0LblYiSW+uBKUQqtYYxOcf5xEwlIpUec2tIaE6l
         q+oGKlWI/TyjE8AsLfrvqYAbb7PcijiIGwItaySkfRudychEZ+oDoaDuL60MsdurZvkm
         mq/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QIT8UUrG;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s30si756290eda.4.2019.08.01.02.35.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Aug 2019 02:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id c2so69596562wrm.8
        for <clang-built-linux@googlegroups.com>; Thu, 01 Aug 2019 02:35:57 -0700 (PDT)
X-Received: by 2002:a5d:4212:: with SMTP id n18mr16954230wrq.261.1564652157499;
 Thu, 01 Aug 2019 02:35:57 -0700 (PDT)
MIME-Version: 1.0
References: <CA+icZUWF=B_phP8eGD3v2d9jSSK6Y-N65y-T6xewZnY91vc2_Q@mail.gmail.com>
 <c2524c96-d71c-d7db-22ec-12da905dc180@fb.com> <CA+icZUW1YQqDjFCX5Ek100SbveX0Zevr7T5gbtdpcmZD+kCuZg@mail.gmail.com>
In-Reply-To: <CA+icZUW1YQqDjFCX5Ek100SbveX0Zevr7T5gbtdpcmZD+kCuZg@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 1 Aug 2019 11:35:45 +0200
Message-ID: <CA+icZUV8P=rQh3M3h23Hhd+jAziOwtXj37LZ8FgdZE+SPz-p6A@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=QIT8UUrG;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::443
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

On Thu, Aug 1, 2019 at 9:39 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> Hi,
>
> just want to let you know that I did a git bisect with Linux v5.3-rc2
> (where the problem also exists) and the result (details see [1]):
>
> e55a73251da335873a6e87d68fb17e5aabb8978e is the first bad commit
> commit e55a73251da335873a6e87d68fb17e5aabb8978e
> Author: Josh Poimboeuf <jpoimboe@redhat.com>
> Date:   Thu Jun 27 20:50:47 2019 -0500
>
>     bpf: Fix ORC unwinding in non-JIT BPF code
>
>     Objtool previously ignored ___bpf_prog_run() because it didn't understand
>     the jump table.  This resulted in the ORC unwinder not being able to unwind
>     through non-JIT BPF code.
>
>     Now that objtool knows how to read jump tables, remove the whitelist and
>     annotate the jump table so objtool can recognize it.
>
>     Also add an additional "const" to the jump table definition to clarify that
>     the text pointers are constant.  Otherwise GCC sets the section writable
>     flag and the assembler spits out warnings.
>
>     Fixes: d15d356887e7 ("perf/x86: Make perf callchains work without
> CONFIG_FRAME_POINTER")
>     Reported-by: Song Liu <songliubraving@fb.com>
>     Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
>     Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
>     Acked-by: Alexei Starovoitov <ast@kernel.org>
>     Cc: Peter Zijlstra <peterz@infradead.org>
>     Cc: Kairui Song <kasong@redhat.com>
>     Cc: Steven Rostedt <rostedt@goodmis.org>
>     Cc: Borislav Petkov <bp@alien8.de>
>     Cc: Daniel Borkmann <daniel@iogearbox.net>
>     Link: https://lkml.kernel.org/r/881939122b88f32be4c374d248c09d7527a87e35.1561685471.git.jpoimboe@redhat.com
>     Signed-off-by: Ingo Molnar <mingo@kernel.org>
>
> :040000 040000 4735e9d14fa416c1c361ec3923440a3d586a627d
> 31de80b85c7b0292e47a719ecb6b1a451de2f8ef M      kernel
>
> Maybe you want to look at this, too.
>
> The object files are attached in [2].
>
> Thanks,
> - Sedat -
>
> [0] https://github.com/ClangBuiltLinux/linux/issues/619
> [1] https://github.com/ClangBuiltLinux/linux/issues/619#issuecomment-517152467
> [2] https://github.com/ClangBuiltLinux/linux/issues/619#issuecomment-517159635

After reverting above commit I can boot into Linux v5.3-rc2 built with
clang-9.0.0-rc1 and lld with no issues.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUV8P%3DrQh3M3h23Hhd%2BjAziOwtXj37LZ8FgdZE%2BSPz-p6A%40mail.gmail.com.
