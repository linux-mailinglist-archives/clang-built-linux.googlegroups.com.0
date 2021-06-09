Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB5EMQSDAMGQE5SDAI7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CE93A1C9F
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 20:20:40 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id p7-20020a170902e747b02900ef00d14127sf10934206plf.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 09 Jun 2021 11:20:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623262837; cv=pass;
        d=google.com; s=arc-20160816;
        b=LGvZqZ1dI9t7kV62V9ffDN5zS2N7vkDXn7/KDPKnBuKOjvnWIt4pg0GQx0L7/II4C5
         D2Yjip0uu9YeIxZYaj+LErcYR4CQX0hrlilsG1oH93gOkJOufr/4VggWtAHPp8hnef0U
         RRVPyUTVlXQ+o9LfJ7kPmGi1iYx9UGFR/lY8BLtpHmnWp4k8MPs48qfVuPygN/X6XHEg
         nsRkcfRc7daQw98GVnNToEcbFAkD3KgZlfRnuMsDS2Jo3SWe3JKJ8wivAE7dLUZHH6JR
         +nj+7cMWufPa+1GOzUDQe1R+WyOrnQSYy8WGwUmFtWFYTDMV+a3cPgzwEsVpvTpzzVvT
         21/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5/VwUftM4zPHHHM3oCkad1KuW8ywyv+oHcmNakW2syo=;
        b=qfcZT6PV/M3eJpEW+MZhxONmCIoOwT2yQAG5irewpkpgHw+jusv4YJJSxZJ1WFWz9i
         Vhl8bD+eYIANlWKM7CVBhVRgJyUFPtoONdi0PyUR24zLJy3hFqYnWXx97GSek0yQ9pdd
         ikgItH+61MBFMg2pN9aDBK7dOx5u57SeWqt8dyrpnt84jeyEhBimmSKnLx1IHnQgBGhB
         dA6XdLojIlPKz4kM1utpNCrOvPKd3GI4Nz/9a5WIebZVs5GfiZj4ilNaXW0U52MhtTmC
         4UmN5hkmS97+BETjKR7jKUjoGmDI+r0Ay0bCghFZfG72ju3QfRWVuZe1spHjtKEQzRfi
         AKlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PazdJpi7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5/VwUftM4zPHHHM3oCkad1KuW8ywyv+oHcmNakW2syo=;
        b=QkDDrFgWOy8hhlL3cJiRBKXy4yttAjkfic7HnjuNxadBP2aF/UCdm78TmHEyV06O7/
         zMlYaPK5FQvZuSmPsVp5q2NB5WfTBQjsqplOlpl+dg6RbTToRKQFiPhTnVJ+osl6A0tK
         mI6wg6wmBs+VIloZT7pAEJQcy8urph08eJ5XlN6i2KU7AaWTgU/xsxBql++ceq5MKeng
         RAy2wdlYNmGxR2vvnrxcnh4d9HudE9Rt/0htiEVpopEi2mfnBq+PwqzwcrptVK2Q7kF2
         +5xSYonlKDK6i0aYloXu/GtPQMw7ycawWxZEu4I7oPzV+HkgC3KvmKUM5hbohk/G8gNL
         OFFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5/VwUftM4zPHHHM3oCkad1KuW8ywyv+oHcmNakW2syo=;
        b=o+TPAeH2Fy7CqVUpAi27KcroTbIPcCG9lDk/jdbSE7XI5KIPgMG8k5pmIjyuVmFoXV
         C/SBuutczfhvEcugaJ06r9J3P5JoA6SXCtHDUzpofgtUd2zGak6FZtjfMhJyv4Wxl0Nf
         dFad6MyiKJDG3rH2//m6049ZJGH8X5STkNncO4Qhw/RZ9sUkpy21Uzixz9jIbHyNx3t+
         K8fRaJixjg6/07DPfLENjn++Q8FtXqnDpTfefBKbWFtEuAFfhx3leG0FMWU9RrO/+RCl
         NjdmzAbvyHYw9ghHv4KoMl2Y7VwRhVAVKCiDoAh0eIFh3ABSfL7McXudPIcyp65QK51l
         TH8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mkJchHPgHa60A9j6/Loe94OvxnGUElEFfbsUcpxF06C0OguGx
	HSJ2pSc1/n2jarY9rF7xSHc=
X-Google-Smtp-Source: ABdhPJwDOOTF0DRg2pV6tq25DqvsXRzzNnwT5e4s1FOpEi1VSm98XKlpr7PmpIlhm2ersYWOXVjcmA==
X-Received: by 2002:a65:63cb:: with SMTP id n11mr934396pgv.357.1623262836612;
        Wed, 09 Jun 2021 11:20:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:b256:: with SMTP id t22ls1575265pgo.8.gmail; Wed, 09 Jun
 2021 11:20:36 -0700 (PDT)
X-Received: by 2002:aa7:80cc:0:b029:2f1:3dd0:674 with SMTP id a12-20020aa780cc0000b02902f13dd00674mr960862pfn.65.1623262836024;
        Wed, 09 Jun 2021 11:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623262836; cv=none;
        d=google.com; s=arc-20160816;
        b=w7y5gwobX5Pkio1zdienyAy+yG8rVeVRIC4VM/uT4WSFDKCSm+uNockxmDqO0CI4/E
         7jPTQhB3SSekyiecWwhATLvLM1+vajOWqkOmr0gl5IxGErKJl7UjkQ9om8LLsejseX8G
         nx+KUg9nC2yjy+j1EESRXSeVn17BrrwXsxJ85I9IbLAr/SXrA5YyLZXlCm8BDiTSdj9E
         Rap33DwxYwGrnr7I3Dc9/GgS4dChwjfuDh3d5iEV/3xkfPw1RNVssoFNVijaT/Bqriqz
         8krBPGSqiFabYlAtd/w0W3V66b/UGSu+sKxtMvg3iLvi0hWwwW36UxoeEBbcz99OlFg1
         w7sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pMNtPdB4yeaOaJg4oKXM0D8sPt6m955IeGjoIXPrk70=;
        b=cZ6qgaSDBbFKgbOHafv90I0cIyb2LbH8/n7LQknvh0pbj4FXtIEFMExQTrERp9KW1t
         jYYeGceNVpIhYTu07RXvKH643NzErNAmgoweiBqnzuSxsRNd4fB15cfLZagVaZBTkVCQ
         fdBLNYEecPkRvFe7inqnEVU4/7Xnvz6hKqyYHRTEMoxeyOnxu4UeZd8SEOYM1dx05C2k
         JOm4dS1GcQxuDjHY50WAql2uKMyu+PtApdlCcryw93U9wL6b9cz6fWwDKuJ4a74gXxQB
         OUepdcD/8QzKljs108wgVbOhc+XYP0FTs7DtFtdHNSs9D8MX8r7oWY2cLEaoq6zv/9W/
         LSAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=PazdJpi7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id r7si112209pjp.0.2021.06.09.11.20.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 11:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id s14so18190571pfd.9
        for <clang-built-linux@googlegroups.com>; Wed, 09 Jun 2021 11:20:36 -0700 (PDT)
X-Received: by 2002:a62:3444:0:b029:2ec:9658:a755 with SMTP id b65-20020a6234440000b02902ec9658a755mr1010418pfa.71.1623262835683;
        Wed, 09 Jun 2021 11:20:35 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p14sm445214pgk.6.2021.06.09.11.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jun 2021 11:20:34 -0700 (PDT)
Date: Wed, 9 Jun 2021 11:20:33 -0700
From: Kees Cook <keescook@chromium.org>
To: Dmitry Vyukov <dvyukov@google.com>
Cc: Alexei Starovoitov <alexei.starovoitov@gmail.com>,
	Yonghong Song <yhs@fb.com>,
	Kurt Manucredo <fuzzybritches0@gmail.com>,
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com,
	Andrii Nakryiko <andrii@kernel.org>,
	Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	"David S. Miller" <davem@davemloft.net>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	John Fastabend <john.fastabend@gmail.com>,
	Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Network Development <netdev@vger.kernel.org>,
	Song Liu <songliubraving@fb.com>,
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, nathan@kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>,
	linux-kernel-mentees@lists.linuxfoundation.org,
	Shuah Khan <skhan@linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	kasan-dev <kasan-dev@googlegroups.com>
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
Message-ID: <202106091119.84A88B6FE7@keescook>
References: <000000000000c2987605be907e41@google.com>
 <20210602212726.7-1-fuzzybritches0@gmail.com>
 <YLhd8BL3HGItbXmx@kroah.com>
 <87609-531187-curtm@phaethon>
 <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
 <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
 <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACT4Y+b=si6NCx=nRHKm_pziXnVMmLo-eSuRajsxmx5+Hy_ycg@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=PazdJpi7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::42d
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Mon, Jun 07, 2021 at 09:38:43AM +0200, 'Dmitry Vyukov' via Clang Built Linux wrote:
> On Sat, Jun 5, 2021 at 9:10 PM Alexei Starovoitov
> <alexei.starovoitov@gmail.com> wrote:
> > On Sat, Jun 5, 2021 at 10:55 AM Yonghong Song <yhs@fb.com> wrote:
> > > On 6/5/21 8:01 AM, Kurt Manucredo wrote:
> > > > Syzbot detects a shift-out-of-bounds in ___bpf_prog_run()
> > > > kernel/bpf/core.c:1414:2.
> > >
> > > This is not enough. We need more information on why this happens
> > > so we can judge whether the patch indeed fixed the issue.
> > >
> > > >
> > > > I propose: In adjust_scalar_min_max_vals() move boundary check up to avoid
> > > > missing them and return with error when detected.
> > > >
> > > > Reported-and-tested-by: syzbot+bed360704c521841c85d@syzkaller.appspotmail.com
> > > > Signed-off-by: Kurt Manucredo <fuzzybritches0@gmail.com>
> > > > ---
> > > >
> > > > https://syzkaller.appspot.com/bug?id=edb51be4c9a320186328893287bb30d5eed09231
> > > >
> > > > Changelog:
> > > > ----------
> > > > v4 - Fix shift-out-of-bounds in adjust_scalar_min_max_vals.
> > > >       Fix commit message.
> > > > v3 - Make it clearer what the fix is for.
> > > > v2 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> > > >       check in check_alu_op() in verifier.c.
> > > > v1 - Fix shift-out-of-bounds in ___bpf_prog_run() by adding boundary
> > > >       check in ___bpf_prog_run().
> > > >
> > > > thanks
> > > >
> > > > kind regards
> > > >
> > > > Kurt
> > > >
> > > >   kernel/bpf/verifier.c | 30 +++++++++---------------------
> > > >   1 file changed, 9 insertions(+), 21 deletions(-)
> > > >
> > > > diff --git a/kernel/bpf/verifier.c b/kernel/bpf/verifier.c
> > > > index 94ba5163d4c5..ed0eecf20de5 100644
> > > > --- a/kernel/bpf/verifier.c
> > > > +++ b/kernel/bpf/verifier.c
> > > > @@ -7510,6 +7510,15 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> > > >       u32_min_val = src_reg.u32_min_value;
> > > >       u32_max_val = src_reg.u32_max_value;
> > > >
> > > > +     if ((opcode == BPF_LSH || opcode == BPF_RSH || opcode == BPF_ARSH) &&
> > > > +                     umax_val >= insn_bitness) {
> > > > +             /* Shifts greater than 31 or 63 are undefined.
> > > > +              * This includes shifts by a negative number.
> > > > +              */
> > > > +             verbose(env, "invalid shift %lld\n", umax_val);
> > > > +             return -EINVAL;
> > > > +     }
> > >
> > > I think your fix is good. I would like to move after
> >
> > I suspect such change will break valid programs that do shift by register.
> >
> > > the following code though:
> > >
> > >          if (!src_known &&
> > >              opcode != BPF_ADD && opcode != BPF_SUB && opcode != BPF_AND) {
> > >                  __mark_reg_unknown(env, dst_reg);
> > >                  return 0;
> > >          }
> > >
> > > > +
> > > >       if (alu32) {
> > > >               src_known = tnum_subreg_is_const(src_reg.var_off);
> > > >               if ((src_known &&
> > > > @@ -7592,39 +7601,18 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> > > >               scalar_min_max_xor(dst_reg, &src_reg);
> > > >               break;
> > > >       case BPF_LSH:
> > > > -             if (umax_val >= insn_bitness) {
> > > > -                     /* Shifts greater than 31 or 63 are undefined.
> > > > -                      * This includes shifts by a negative number.
> > > > -                      */
> > > > -                     mark_reg_unknown(env, regs, insn->dst_reg);
> > > > -                     break;
> > > > -             }
> > >
> > > I think this is what happens. For the above case, we simply
> > > marks the dst reg as unknown and didn't fail verification.
> > > So later on at runtime, the shift optimization will have wrong
> > > shift value (> 31/64). Please correct me if this is not right
> > > analysis. As I mentioned in the early please write detailed
> > > analysis in commit log.
> >
> > The large shift is not wrong. It's just undefined.
> > syzbot has to ignore such cases.
> 
> Hi Alexei,
> 
> The report is produced by KUBSAN. I thought there was an agreement on
> cleaning up KUBSAN reports from the kernel (the subset enabled on
> syzbot at least).
> What exactly cases should KUBSAN ignore?
> +linux-hardening/kasan-dev for KUBSAN false positive

Can check_shl_overflow() be used at all? Best to just make things
readable and compiler-happy, whatever the implementation. :)

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106091119.84A88B6FE7%40keescook.
