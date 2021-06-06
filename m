Return-Path: <clang-built-linux+bncBCP35GGZRMDRBQOJ6SCQMGQEXLKD2ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id B94A739D114
	for <lists+clang-built-linux@lfdr.de>; Sun,  6 Jun 2021 21:40:51 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id k11-20020adfe3cb0000b0290115c29d165csf7142158wrm.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 06 Jun 2021 12:40:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623008449; cv=pass;
        d=google.com; s=arc-20160816;
        b=fse0jXu3Ye5SAqsMj0EPnEdJDCyvQ5+2rrM5FOl4ggMaw35u6/HhQhxQw3NqgzeCng
         I/LDR0ffBhQRL/U/44ojLW9IMIdtSB0BV73wVbuKal3P0P2KTAlyUaE73dDWBfXAHt+o
         USEayWAltxvzDrVVKjJCScS0wQGRtdOzD4Gce/CMkQsRzEx8KawvHMqX4kXjNGveImz2
         iEeAprPmOODKN9jqcwl8CnULDt2pe1X8s2OuYzmHLovbE/tSlQExv6YqBu+sEdU54ZUB
         Xj3JRZo4EiPeOLNbdIe9Jc0qzL5iiZxvJVlY/UbrMrdLivxZoWKJKIIXw+nQf3ITHMCG
         bt5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:date:references:in-reply-to
         :message-id:from:to:cc:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=X40sGL69gV9Luys6mBoz7TUEr34PHMlspGh0BI1WMiw=;
        b=c3VZdLk1xl0apyArQ7DxR/kv9rrMhYh1C6OdB6UuIwkrCM5uXgp712Qb5Gb8A29Cf9
         SFQ5XDNLDdYvaX7Jydxi6pQnFnZ41r+KWinnTHNOD65a4zdzil19e/hA5H/V6jNaG9X0
         uGvbQ649UGH/if5iFYbfqkoD/T6mJzK38bUatQb22kiasgDoOgd3c+7m9r18PjzT5YgC
         TkJMkSXRWiixeDsf+3Xom7OUDOEbvRVKJb6BXLgdUXlKdXxDHVG8mLxy/vdqDDxczCof
         MmyQsTB0fuLzRJnuk/BTFZtWFkMsfcKQo8A5rt+y/n8xAwpmxqdrU4LCbgOdLh0XkQgV
         SyAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vb7IpsFy;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:cc:to:from:message-id:in-reply-to:references
         :date:subject:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X40sGL69gV9Luys6mBoz7TUEr34PHMlspGh0BI1WMiw=;
        b=f+Za45JdUdAhGMBNYvKzmlwJS0oR1yYtTbh7M1Cl37UC3VugoVRAJ5L5iyHuUuIIYJ
         pC5SVbB6loz3BUjdLNKT/RS+juYmsuihqs81kvpOPYYgL2RLDBJ51zpM0VEbo8XOt/cC
         Sr0G2G3x8nGC+a5n8U26VsdPmFfsE/Ztdn4EnUIuOYps9fjg4ifhjVg25v83/9iG4kF5
         O283cUt3zCdDr3bRiRJmfIg0V+a6NTWu2Hp4FA0rkNz8yHQsFxFGzHqAOGEQR63toGKI
         Wn+dwN8x7w+ByEXcbczHISKDkslC355kLzBNkTbUCfwDsnBoqvq1dLmfBQAq4uYDc5zJ
         eL0g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:cc:to:from:message-id:in-reply-to:references:date
         :subject:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X40sGL69gV9Luys6mBoz7TUEr34PHMlspGh0BI1WMiw=;
        b=e4djuRkuz6LkGhdslN/zzxdgEw6agJ9W3Y0ZaHdV8quszUy0PE/stOjEOtpgGV5ZWI
         23F2WuEl9XBdDr3l4kLflsmW/WGWxgpeaRJVbbovPaFy2xzgQgwB4LEZ+ma+cm8BbR2T
         7Ky8qh9jXcqm21nYPVjC2vdSLbJDCh6w4UHpXw3nHpXu+kO11oOz8Iynu4oqpX0AlazQ
         8+1N/yAMuNjibx1ZO4AjzfAGAcjGYcSSEhZUDV/SvDq0Q1W+k5xaezpDZgJiSFQdMtaR
         i9qXIwgbc4DBdYT1ZzpzDOmAmoksbAqF0QXndKhXU7cV18uTA+lbJFBb6EpKMEnZx7CN
         f40w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:cc:to:from:message-id
         :in-reply-to:references:date:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X40sGL69gV9Luys6mBoz7TUEr34PHMlspGh0BI1WMiw=;
        b=F7l336GN81fvDqscDt08r44Q21Dsc8kH8kZgw7p4JzcLPgvRfdR1Nfy6VmHSxLzjrm
         6XOIS+XdSrS6K5tefBatp/Z1VMjzxv95w33n9btrCE8hL2dObVlfNUDKzLTB7H5glSR9
         eX1d+xlBh1tztKaldEKpbai46OMi+z6JN6jYk0+7JUpuysQ2+yP/0dYUSJmicQ1Cv/49
         wd/MpU1RzIQsx2bJAtvnglb0IuPdlImdVi9Kbi/KgdNMp96QVs/Ro1A9KWPkNpoU7FyA
         trp6j1KzCRYN1CaeGl4is7WumkcNNvbcMCtl6MUYO+AwiDhx7CKKoq2u1aoFW0BZ4YVT
         1R2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qlqu9xPf1fi9UVvDmNWbW1hYrKn8bcZW5wPkOIXx2guJEkPEt
	QeQv4IYmWg2+o77ge9pfAgI=
X-Google-Smtp-Source: ABdhPJwknT1xtYjtW827WscAUBve7KAN4lJDSkI27/l6r4r/3614K3n2rlOon5wCuEvNKk9O6q0teg==
X-Received: by 2002:adf:ce90:: with SMTP id r16mr14402626wrn.146.1623008449442;
        Sun, 06 Jun 2021 12:40:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f418:: with SMTP id z24ls5234174wma.1.gmail; Sun, 06 Jun
 2021 12:40:48 -0700 (PDT)
X-Received: by 2002:a7b:c44f:: with SMTP id l15mr13760975wmi.151.1623008448577;
        Sun, 06 Jun 2021 12:40:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623008448; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOy3X9IjiGFV4xnZEnAfVINQtQBqOkatqfbfo3xxwIhhXV7RaAt55Fix0jVYLFW7+H
         ywIbxd1U24Cb3rciGzldk83raBOzup9GG4hi1IxRLFo3c4BtCFqjne6jWhLbHRQa+NKP
         7HbjIIEv1Tb+K1cEgS43ByCrqbWYBySHvm1Of5+KYm9E98Gg7vpJrnWQjV8eF/jYJ5Wu
         J4cYz4LghPUfyKzZLDqQubd149kuhmoCFmdPIXQPneBGdzG3g7fmKlsN1DC2xwMK6YaY
         zqVa/m+vyQ0qTWdJ2ntL9wJoesCZ3w6loei2M9P2aL/NW0LZpyvu+povWdsCf+0dU77u
         l+UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:date:references:in-reply-to:message-id:from:to:cc
         :dkim-signature;
        bh=oZ1GBZrLrWXtFesbiX91BZUiYjDuBUEVaSbSR2qwXnk=;
        b=uNpde7KpAO6rpDUlZtq4dHFpAPKrWXxu0Y2RHW6EMx/lrr4o3/tQTrlH3oEGTeAj4t
         hPZSAWqWVoa2H6r2ylYmcoy547SCtn53ntk1XEx5L+0ylwB8U9s/fFgSKq+VfPlEx7/C
         ZflYbF3fLqcPgRMxvr5Jkm+3aO6GZNRC5vt7H0uDEEw9Fex3qggwMb/sl73xrPz+jiUv
         O5BoLno7ZXwCWgzZXzJvSyDPpStBUsoyrmnXN/pZ+iAl07CHAIb/e2p5J4KGVnp4rrTZ
         c0ilH7Q2I4w7fMfHkX6GOehUKZUWiUxr06jIq1EApfGT3hDZf8AkV2om+Zyl5QSGNmcW
         qfQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vb7IpsFy;
       spf=pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com. [2a00:1450:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id h20si567379wmp.2.2021.06.06.12.40.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Jun 2021 12:40:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of fuzzybritches0@gmail.com designates 2a00:1450:4864:20::42f as permitted sender) client-ip=2a00:1450:4864:20::42f;
Received: by mail-wr1-x42f.google.com with SMTP id a20so15036121wrc.0;
        Sun, 06 Jun 2021 12:40:48 -0700 (PDT)
X-Received: by 2002:a05:6000:18ac:: with SMTP id b12mr13369745wri.44.1623008448271;
        Sun, 06 Jun 2021 12:40:48 -0700 (PDT)
Received: from localhost ([185.199.80.151])
        by smtp.gmail.com with ESMTPSA id n10sm15227477wre.95.2021.06.06.12.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jun 2021 12:40:47 -0700 (PDT)
Cc: andrii@kernel.org,
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
To: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
    yhs@fb.com
From: "Kurt Manucredo" <fuzzybritches0@gmail.com>
Message-ID: <20484-14561-curtm@phaethon>
In-Reply-To: <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
References: <000000000000c2987605be907e41@google.com>
 <20210602212726.7-1-fuzzybritches0@gmail.com>
 <YLhd8BL3HGItbXmx@kroah.com>
 <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
Date: Sun, 06 Jun 2021 21:15:46 +0200
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
X-Original-Sender: fuzzybritches0@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Vb7IpsFy;       spf=pass
 (google.com: domain of fuzzybritches0@gmail.com designates
 2a00:1450:4864:20::42f as permitted sender) smtp.mailfrom=fuzzybritches0@gmail.com;
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

On Sat, 5 Jun 2021 10:55:25 -0700, Yonghong Song <yhs@fb.com> wrote:
> 
> 
> 
> On 6/5/21 8:01 AM, Kurt Manucredo wrote:
> > Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
> > kernel/bpf/core.c:1414:2.
> 
> This is not enough. We need more information on why this happens
> so we can judge whether the patch indeed fixed the issue.
> 
> > 
> > I propose: In adjust_scalar_min_max_vals() move boundary check up to avoid
> > missing them and return with error when detected.
> > 
> > Reported-and-tested-by: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
> > Signed-off-by: Kurt Manucredo <fuzzybritches0@gmail.com>
> > ---
> > 
> > https://syzkaller.appspot.com/bug?id=edb51be4c9a320186328893287bb30d5eed09231
> > 
> > Changelog:
> > ----------
> > v4 - Fix shift-out-of-bounds in adjust_scalar_min_max_vals.
> >       Fix commit message.
> > v3 - Make it clearer what the fix is for.
> > v2 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> >       check in check_alu_op() in verifier.c.
> > v1 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> >       check in ___bpf_prog_run().
> > 
> > thanks
> > 
> > kind regards
> > 
> > Kurt
> > 
> >   kernel/bpf/verifier.c | 30 +++++++++---------------------
> >   1 file changed, 9 insertions(+), 21 deletions(-)
> > 
> > diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
> > index 94ba5163d4c5..ed0eecf20de5 100644
> > --- a/kernel/bpf/verifier.c
> > +++ b/kernel/bpf/verifier.c
> > @@ -7510,6 +7510,15 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> >   	u32_min_val = src_reg.u32_min_value;
> >   	u32_max_val = src_reg.u32_max_value;
> >   
> > +	if ((opcode == BPF_LSH || opcode == BPF_RSH || opcode == BPF_ARSH) &&
> > +			umax_val >= insn_bitness) {
> > +		/* Shifts greater than 31 or 63 are undefined.
> > +		 * This includes shifts by a negative number.
> > +		 */
> > +		verbose(env, "invalid shift %lldn", umax_val);
> > +		return -EINVAL;
> > +	}
> 
> I think your fix is good. I would like to move after
> the following code though:
> 
>          if (!src_known &&
>              opcode != BPF_ADD && opcode != BPF_SUB && opcode != BPF_AND) {
>                  __mark_reg_unknown(env, dst_reg);
>                  return 0;
>          }
> 

It can only be right before that code not after. That's the latest. In the
case of the syzbot bug, opcode == BPF_LSH and !src_known. Therefore it
needs to be before that block of code.

> > +
> >   	if (alu32) {
> >   		src_known = tnum_subreg_is_const(src_reg.var_off);
> >   		if ((src_known &&
> > @@ -7592,39 +7601,18 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> >   		scalar_min_max_xor(dst_reg, &src_reg);
> >   		break;
> >   	case BPF_LSH:
> > -		if (umax_val >= insn_bitness) {
> > -			/* Shifts greater than 31 or 63 are undefined.
> > -			 * This includes shifts by a negative number.
> > -			 */
> > -			mark_reg_unknown(env, regs, insn->dst_reg);
> > -			break;
> > -		}
> 
> I think this is what happens. For the above case, we simply
> marks the dst reg as unknown and didn't fail verification.
> So later on at runtime, the shift optimization will have wrong
> shift value (> 31/64). Please correct me if this is not right
> analysis. As I mentioned in the early please write detailed
> analysis in commit log.
> 

Shouldn't the src reg be changed so that the shift-out-of-bounds can't
occur, if return -EINVAL is not what we want here? Changing the dst reg
might not help. If I look into kernel/bpf/core.c I can see:
	DST = DST OP SRC;

> Please also add a test at tools/testing/selftests/bpf/verifier/.
> 
I'm going to look into selftests,

kind regards
thanks,

Kurt Manucredo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20484-14561-curtm%40phaethon.
