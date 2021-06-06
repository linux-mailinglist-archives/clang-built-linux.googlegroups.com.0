Return-Path: <clang-built-linux+bncBCP35GGZRMDRB46M6SCQMGQEBW7PATQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0122B39D11E
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 21:48:04 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id x9-20020a5d49090000b0290118d8746e06sf7184602wrq.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Jun 2021 12:48:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623008883; cv=pass;
        d=google.com; s=arc-20160816;
        b=gjX89MBn2oPE3fEPr3SYNHaINeZne36Co7+9HBrEkLj4KwT95dmegbx7eBA2dj8216
         76FQSBi0RqcfwhC7Ww9oI30XQ2V9B1CJRzsfRhKipIwgTEdHEl/8RCmvWJTpFlKssPat
         WYR6UsA/iL1KTpHMqc1oJp7P617PP1ZH6RJM1n5hAdKyCZW6EAV4CLREp+9G2I/pjprL
         jWCd8buif2Fhd5HDozzadxAcgxoxPKu5MYur/jJCDZPnrqlMjQrQZMiMovEMeZ0fVIux
         M2/CWHlNthlfNl5gCtwVdhU9LFN691Ornlp1FcngAM6w2rBR4ATR+hjcVC1Tc9i3RrVR
         ksaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:date:references:in-reply-to
         :message-id:from:to:cc:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MoByHVgywhMOz+1zOwHHmCgQD2dvCFJesRxannO90wo=;
        b=LmYGzwOjvCnuIBn9hRD600gBkck7rhNUFs9eDqTim2O/GMizKa0wGjLI3JvogEaDtt
         PtgoaUaMQm91IGQ/etkFBxfX9EPnUIX2KgQ8eLiBOUAd1sxebo+6C1GM0AkC9uepaUSP
         VeAhBs+w6GWFziiRwWZUfiZjTI7fjgUb5agzdfrFCywhyWkruC94yEojNA9fiM8JYxNm
         NA4D141wIEdUoGq37me/y1zyvC48MUnPym+7YLT3CuJgqLEXrj/E4yTLjrZOCtFmQPv5
         MUhnRuthsWbdMcMGUbpX7U79HkhR/D+k7GrXwj7+lawhHEIanMQUk5KOZe9zCCZFGJ0X
         oFog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1Z0c6gZ;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:cc:to:from:message-id:in-reply-to:references
         :date:subject:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MoByHVgywhMOz+1zOwHHmCgQD2dvCFJesRxannO90wo=;
        b=DkpxuBGFBhKMMXv/HSUptTQKKmEx2ixryb+NvsPV5Mdz5WxBT+s6AaQtZEvS0Oy6Pr
         e0jCx8GlE2fI+7WjJ8kvCuJssnfOjtzjBb0l8ZZ+g1k1o1zQ6qnhh7GQZWNbWd8QiF9P
         Pte9iwE4Q1KStb96CPERCgwZAebrxRMx1SPI+r7tZrF8f7graERTNZCI0VKo22NBXkK2
         B8YN0D9FcookQ0rX7aqg/2zDaZN6fMzI4ZxsBAIRrRzZgJ3y+sVVaGpQgTIyb859laah
         3UknyVF+KqnVb3BiWeJElgIsLrOy2eFD+4Y1kJwOYbuuvTR7i82QuhJUqEtNBQdlQTWC
         Ytnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:cc:to:from:message-id:in-reply-to:references:date
         :subject:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MoByHVgywhMOz+1zOwHHmCgQD2dvCFJesRxannO90wo=;
        b=rPurjRrngBM4w8YoGp/uQ8y1+Rb8czB2ux4f1EB+pIdIJcxvnpzV3ORCeBBUQJ8yNE
         M8r8xGRm9oktkNkCttOXn2+bTqTXE1sxXFBlMJ6za05YUXPd6EolA3adQjZ1E+T/agFj
         PHi3O86zq8b/l1DMc6uxApcPK4KkZWZsviLpW48M3cUeSFU1cg8ZLiGln6wqNCkBGTyW
         cC1nf1THuA2RIL8lCsQseU7lGnDCayPl9WlPZrPLPsrGZDpS6ySl1YNxK+vw9tA30ZZ3
         gMU4QgO1qPZXhqhrU6IdBjiQN9ZXBNy20uJGS5exmZwgpGwculRXYMXXBWpcrzs7i5UG
         fJqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:cc:to:from:message-id
         :in-reply-to:references:date:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MoByHVgywhMOz+1zOwHHmCgQD2dvCFJesRxannO90wo=;
        b=g1xsQVW6FAIiILrgkWVhPbJ0MZhFdk+0t3xx6tDRchLdQfDXcJnPyF9tpZOElH+8rk
         KI5dzlGfUMK0VmMnhe1v/amaBV+0iycS0XCtwoESvQ2PZYoj7cCqpc5NVGXj9b7oNdYk
         g829eA5lbuWTUPiAqjOavZRmP3GP4rdCRZxadPd/l2FtdgUwsnc29LmOcHGaahm7tKJP
         UQob8u9QheDMNTsfMwicD2RiHfZWNqrZ8/iaE+nXeJUE0UTSkEz1n4hJerha9CDpD4PW
         yKTNeryvKTNY2xGp74A9ZZwaXLLsvDeiUsmI/SZJDeq6op4kyFTDydDSYLNoPs7N95e3
         M01A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OE69ICmgZfnujq0VrjgrnE4fZZvwg3XoKSMkx/TwmPf30XiBK
	ZxYQgI7JnibOr3EhId8iT+Y=
X-Google-Smtp-Source: ABdhPJzuW+7Di5yVYCMdKzotI9haHJTa2V72Y/nYJgs5lwXh+mP7teV5f/q3+MbwVAidicznI4G0XA==
X-Received: by 2002:a7b:c417:: with SMTP id k23mr13237385wmi.71.1623008883786;
        Sun, 06 Jun 2021 12:48:03 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:64c3:: with SMTP id f3ls4080183wri.1.gmail; Sun, 06 Jun
 2021 12:48:03 -0700 (PDT)
X-Received: by 2002:a5d:488b:: with SMTP id g11mr13521805wrq.317.1623008882960;
        Sun, 06 Jun 2021 12:48:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623008882; cv=none;
        d=google.com; s=arc-20160816;
        b=UfirgovePPndCtUzZgdQrEx3no0N/nVigkmYYhuFsrIexAFs9ouVvsvhneG1KsXSWm
         LG6sUyXMJkASVLsFlrTcyf7e5/vu3IWuHJTLkBbOLc/dv5nTW+9OzmR+cqN1jqL10ME6
         Kxdwlh9o1FOKR4dLS3OM+6hiQNu0r3FV5DGFqvchgqR9KtLYFngDnRahuY7CK5OfaZrC
         foCA7bgZaEZ/snsa3NwsemzOdULGwzO5zVLhOYXQjhRFEtAE0luujvJwq66oUff0dPbO
         PIKyAc6nJAahREeTiYYV4MVXAA+uxXMC0GzXqJFIIcZKXTut07IC/KpnjdXJ2PZtoEBR
         09zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:date:references:in-reply-to:message-id:from:to:cc
         :dkim-signature;
        bh=OIpSXB3BhBqM7WG4kTgHsq1B5qQdsWQ0yzQoTr+6Icc=;
        b=xVzLpRAWk2vSnSKf6ZGn8gfslPXkxfQbk//bADFyuhHc6uE4ZEXr/glMax9hMnXgM6
         wqxLb/gh1mEheUJkXEgSHCl++Ija899fF5KuKoPv/VVrB+R92iKFwS47SiPNNB8BzCix
         pqn9MYcmai4ogabTBrbtJK6b0ZvlkJ7kgracJZNgIb4A/6zSL+oKVSdaF3llSxC5J4Yi
         2UffnRLiaNM8LE2qfEqS41Ru0HmK8vVDE+YDniH0Vxzto2YhzCmElavd4SgM8n823Bc2
         RXzgpFRnm5vqjD0+j5YMXUwda4cCV0xBlnEjfCL07Fq8dC9BQ96kq7k7dNgdD2hP5nWb
         VA0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u1Z0c6gZ;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com. [2a00:1450:4864:20::32b])
        by gmr-mx.google.com with ESMTPS id u12si355180wmq.2.2021.06.06.12.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Jun 2021 12:48:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::32b as permitted sender) client-ip=2a00:1450:4864:20::32b;
Received: by mail-wm1-x32b.google.com with SMTP id l11-20020a05600c4f0bb029017a7cd488f5so8765950wmq.0;
        Sun, 06 Jun 2021 12:48:02 -0700 (PDT)
X-Received: by 2002:a05:600c:3789:: with SMTP id o9mr13854219wmr.78.1623008882702;
        Sun, 06 Jun 2021 12:48:02 -0700 (PDT)
Received: from localhost ([185.199.80.151])
        by smtp.gmail.com with ESMTPSA id n8sm11662286wmi.16.2021.06.06.12.48.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 12:48:02 -0700 (PDT)
Cc: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
    andrii@kernel.org,
    ast@kernel.org,
    bpf@vger.kernel.org,
    daniel@iogearbox.net,
    davem@davemloft.net,
    hawk@kernel.org,
    john.fastabend@gmail.com,
    kafai@fb.com,
    kpsingh@kernel.org,
    kuba@kernel.org,
    linux-kernel@vger.kernel.org,
    netdev@vger.kernel.org,
    songliubraving@fb.com,
    syzkaller-bugs@googlegroups.com,
    nathan@kernel.org,
    ndesaulniers@google.com,
    clang-built-linux@googlegroups.com,
    linux-kernel-mentees@lists.linuxfoundation.org,
    skhan@linuxfoundation.org,
    gregkh@linuxfoundation.org
To: yhs@fb.com,
    alexei.starovoitov@gmail.com
From: "Kurt Manucredo" <fuzzybritches0@gmail.com>
Message-ID: <10175-15986-curtm@phaethon>
In-Reply-To: <f045d171-15ff-8755-bcb7-4e20ca79b28a@fb.com>
References: <000000000000c2987605be907e41@google.com>
 <20210602212726.7-1-fuzzybritches0@gmail.com>
 <YLhd8BL3HGItbXmx@kroah.com>
 <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
 <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <f045d171-15ff-8755-bcb7-4e20ca79b28a@fb.com>
Date: Sun, 06 Jun 2021 21:44:32 +0200
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
X-Original-Sender: fuzzybritches0@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=u1Z0c6gZ;       spf=pass
 (google.com: domain of fuzzybritches0@gmail.com designates
 2a00:1450:4864:20::32b as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

On Sat, 5 Jun 2021 14:39:57 -0700, Yonghong Song <yhs@fb.com> wrote:
> 
> 
> 
> On 6/5/21 12:10 PM, Alexei Starovoitov wrote:
> > On Sat, Jun 5, 2021 at 10:55 AM Yonghong Song <yhs@fb.com> wrote:
> >>
> >>
> >>
> >> On 6/5/21 8:01 AM, Kurt Manucredo wrote:
> >>> Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
> >>> kernel/bpf/core.c:1414:2.
> >>
> >> This is not enough. We need more information on why this happens
> >> so we can judge whether the patch indeed fixed the issue.
> >>
> >>>
> >>> I propose: In adjust_scalar_min_max_vals() move boundary check up to avoid
> >>> missing them and return with error when detected.
> >>>
> >>> Reported-and-tested-by: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
> >>> Signed-off-by: Kurt Manucredo <fuzzybritches0@gmail.com>
> >>> ---
> >>>
> >>> https://syzkaller.appspot.com/bug?id=edb51be4c9a320186328893287bb30d5eed09231
> >>>
> >>> Changelog:
> >>> ----------
> >>> v4 - Fix shift-out-of-bounds in adjust_scalar_min_max_vals.
> >>>        Fix commit message.
> >>> v3 - Make it clearer what the fix is for.
> >>> v2 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> >>>        check in check_alu_op() in verifier.c.
> >>> v1 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> >>>        check in ___bpf_prog_run().
> >>>
> >>> thanks
> >>>
> >>> kind regards
> >>>
> >>> Kurt
> >>>
> >>>    kernel/bpf/verifier.c | 30 +++++++++---------------------
> >>>    1 file changed, 9 insertions(+), 21 deletions(-)
> >>>
> >>> diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
> >>> index 94ba5163d4c5..ed0eecf20de5 100644
> >>> --- a/kernel/bpf/verifier.c
> >>> +++ b/kernel/bpf/verifier.c
> >>> @@ -7510,6 +7510,15 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> >>>        u32_min_val = src_reg.u32_min_value;
> >>>        u32_max_val = src_reg.u32_max_value;
> >>>
> >>> +     if ((opcode == BPF_LSH || opcode == BPF_RSH || opcode == BPF_ARSH) &&
> >>> +                     umax_val >= insn_bitness) {
> >>> +             /* Shifts greater than 31 or 63 are undefined.
> >>> +              * This includes shifts by a negative number.
> >>> +              */
> >>> +             verbose(env, "invalid shift %lldn", umax_val);
> >>> +             return -EINVAL;
> >>> +     }
> >>
> >> I think your fix is good. I would like to move after
> > 
> > I suspect such change will break valid programs that do shift by register.
> 
> Oh yes, you are correct. We should guard it with src_known.
> But this should be extremely rare with explicit shifting amount being
> greater than 31/64 and if it is the case, the compiler will has a
> warning.
> 
> > 
> >> the following code though:
> >>
> >>           if (!src_known &&
> >>               opcode != BPF_ADD && opcode != BPF_SUB && opcode != BPF_AND) {
> >>                   __mark_reg_unknown(env, dst_reg);
> >>                   return 0;
> >>           }
> >>
> >>> +
> >>>        if (alu32) {
> >>>                src_known = tnum_subreg_is_const(src_reg.var_off);
> >>>                if ((src_known &&
> >>> @@ -7592,39 +7601,18 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> >>>                scalar_min_max_xor(dst_reg, &src_reg);
> >>>                break;
> >>>        case BPF_LSH:
> >>> -             if (umax_val >= insn_bitness) {
> >>> -                     /* Shifts greater than 31 or 63 are undefined.
> >>> -                      * This includes shifts by a negative number.
> >>> -                      */
> >>> -                     mark_reg_unknown(env, regs, insn->dst_reg);
> >>> -                     break;
> >>> -             }
> >>
> >> I think this is what happens. For the above case, we simply
> >> marks the dst reg as unknown and didn't fail verification.
> >> So later on at runtime, the shift optimization will have wrong
> >> shift value (> 31/64). Please correct me if this is not right
> >> analysis. As I mentioned in the early please write detailed
> >> analysis in commit log.
> > 
> > The large shift is not wrong. It's just undefined.
> > syzbot has to ignore such cases.
> 
> Agree. This makes sense.

Thanks for your input. If you find I should look closer into this bug
just let me know. I'd love to help. If not it's fine, too. :-)

kind regards,

Kurt Manucredo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/10175-15986-curtm%40phaethon.
