Return-Path: <clang-built-linux+bncBCUY5FXDWACRBL4Y56CQMGQE4GOAZKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2F839CAAC
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Jun 2021 21:10:39 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id z4-20020adfe5440000b0290114f89c9931sf5830460wrm.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Jun 2021 12:10:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622920239; cv=pass;
        d=google.com; s=arc-20160816;
        b=qe7QenMr8uU1bvJIuQaF+FVdVOzm5L6TBMwEui8DkoDfJxKtCfKWhdLtSgSxNElpZh
         UdCwxU5M2tG6raNm6bTWHT6QyzAKtics3VVyxO0b2F1nlUaZ0KXR3jVmfTwIMpG1jV0B
         bqwxcXD6X/eXffYakid2foZCg3oM0h883DSasbIIeHTp37/8jtGubjhCdBVZMZlRm4M4
         vk0emQnsKFby94DjgS9dMEafUrK6xILHLd5S4ekrh+5Z20kpaCDhIE9umXiVflI+kzKz
         lkqHX2fbLW45kU1Q6GBLAYJOijCDzZThy9NELr2wssBpWK4QZwKp43UFNDqCVf2VTOA7
         L3tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=gWhs+5wjrLZMQB/oXHDPq9Mm0E1iS5p4HRjAJbJ25u4=;
        b=iB1125NqfHHWuL9gQdgMwfecahGlCtqVpDGAhuo7KUnuMw0BnNXQ7etpc/6MxvyWw+
         Xz534uvceSBhzu+wykOZdVdaBfWfExz+CWJ0Of1tCkNIoQe6vW9jN01wnbW5JhkNBgs3
         4e7Bztfxz3Nhr9XRNeqmdOFuQ0kIxWVYT/C5DLwEVvAQqS/vg1o6RL6KsCc/dnRTXVeq
         rL/crP96F7zidLD0A08LtR92DepC+b8aKxP/WBUK4MSmOj7+EwKW1LsHIlWLTh2qAFQp
         63o3irx4TvTJxulpmIxjPg5YgbH/APFCKGTiIqqiSZbsCfXsE7ga0DmA+f8OcQHH0MlH
         CXVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LuXg4Dkr;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gWhs+5wjrLZMQB/oXHDPq9Mm0E1iS5p4HRjAJbJ25u4=;
        b=AdMR4nYcstMw5OsIuLBNFj8FQEPab37UJow4UCQl3rbjhq/9PulFRoQGj4mUtY+m4Z
         7KVQcQgS0+Vd5cV7AJrkpiYKfiaah0JNufKpPJwN8hyxRnjaapef4RvtXX3XIaFxRP70
         l/eczUaKvzg21GWT3qGXnd6KPYsuNasjCdBCTW3bNewFhcF5ng4vUOC2bt31rRV5/k3r
         5xNSHRKm5MJOgP4/dJPaxY6EZ5wBCQj2+xw8gMwb3iW75Xx1mBwdFVMNA9LHVaSqEK8Z
         fQy3y8VyVPFpoaI1FtN7mxSjkvU5Ylza1EvbRUw42UndrDWcnaXvqYCCzQhvz+8D98EA
         tzFw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gWhs+5wjrLZMQB/oXHDPq9Mm0E1iS5p4HRjAJbJ25u4=;
        b=nzBZIjVRzCdKayaY9i8kEMUnZI+pinBxfc8gKJ2EkTCwxH+kqUmzK9aSL9gA2zBGsw
         mf2/u9JTNYx2rgXqPM1usiSXLBxgYeys3mk864yvaZxFQTrlEdJC7jo0iWCwCRozEcos
         GJJwSYJqLzca1JYT9q81fFH8IeVfwtD1iAAMfGPfUDK+RezJu7jqll3z/mWGnDuCCxqT
         uXFwUSpkTBbeHPt2UwsBILelNRQMizf/I4M6y8MlVf9LLB1qJhs/9zZfDeZydj33uBPI
         wi7pp3LE4jyFqp6Ib0IM3K3dZc5zmQSIWUO/4NJnO4X92lgpx8m7BfKCMUUDAxv63fW+
         FOpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gWhs+5wjrLZMQB/oXHDPq9Mm0E1iS5p4HRjAJbJ25u4=;
        b=jgEzfR5S3xEjwd4rUiTfKuRgytY8Ge4Xo81yLvlzlK4DCO5CqegxAqjpoCcrHtm9L/
         2k4eAVcthFLT2bJ2wAu75v61DZTIAjmbp80DxUxe30K6PNkrJ3A5kaD5wPhD7HBrqv0w
         uMO1WlN7s/TjOwO2PNZktz4DcnDxuqCaEuRzHGx5sw5d1sO4Onrd3QWXhVTlTm5JMsZ6
         ZHd2RzRyT2/DewH4P1ruGzm68AZ4meQ6abMrZbycZ66BpmfzOmcYS7A9eRypagX/l16v
         xnmIQqmSqvOjtXBrpSw9406S1ygOFaIp+0C5fmXyybXbjSJ4anKUByMCChyLZMK4nh7f
         d/SA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mif/m12QrUUCLv6DjD9gt+vMFnXuNb+fNiQ4II/AG8+JOtVUE
	Q5v9vgsUI52HLg4CUhj9LmM=
X-Google-Smtp-Source: ABdhPJyrvPMp6zQV4E6iqrs05f1W7VuTVXIKoAVVSVXQPppFa9hNV8yjjQECOO4imbIWByr3jorwzQ==
X-Received: by 2002:a05:600c:5125:: with SMTP id o37mr2269154wms.175.1622920239649;
        Sat, 05 Jun 2021 12:10:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe4c:: with SMTP id m12ls1743918wrs.0.gmail; Sat, 05 Jun
 2021 12:10:38 -0700 (PDT)
X-Received: by 2002:adf:f28b:: with SMTP id k11mr9306417wro.89.1622920238705;
        Sat, 05 Jun 2021 12:10:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622920238; cv=none;
        d=google.com; s=arc-20160816;
        b=EULMTI/uiRtlqyPzCJoovd53HWIsKBw80DAygNVQ2ONwFvZt8P1tZt91w3tnQ8sHcl
         eL/ZSCzhiC1duC+6FAimxqdbUnHR9UJvIvtUW6CfA1TlUPYSoSqG3wm7qc2TG7NvEJA5
         3Z7xc9lR1UEC4RtkSEJucu0nYRyp/lODRPRfRpcMQV7fCP2cKI/WGRDyQYBSSEU5eYGP
         EKkVFK+MtGpZldvFrR4sMwZyMx8xtZkr5LOtztnYC3X7nPO3cVK5q5FpcuLQ5OUSQvql
         RGDBymdjffZhQxhF8ffJGgSxhHhovYy2QsDzpRHJ77JunsSWE2UU3AoqNrcUPVbHckk1
         OkGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=bi0pwEi0pQ/oYx7SVz3LT6qWBi6qRoYFdBg0PjjtkiU=;
        b=rvND1+WFIG+MJaBMGBe3UyYod+vLIgeDDyHpUwuvvEiG7yip6fCVB8LKXZXUL1Ue7U
         s7rqS26a9Et7qZDBmO32QJj5sI9T0hBCbPfp0uQjGVyu7/zIJdKqQjS8QfNxlF84ckOH
         duixBly3VxEZczakUKkCqPuXyZAKddnmjMsS88RKX8VjiIDfyqZkiArBfcMDdie/ewlF
         w9FQLRTwfUt6ciH9ktR1dKxA67VrHJCt9NY6cUVxM9NXQGJXZ2A6DTofSkcv22JAyNjW
         8iAFAagzrXFGymdJ4aLIhdODxLWlLVz+MgAvNnOxFclscUw7QCXam5SMd2Qrv2mTsm7e
         mMwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LuXg4Dkr;
       spf=pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id h20si407916wmp.2.2021.06.05.12.10.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Jun 2021 12:10:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexei.starovoitov@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id f30so19216692lfj.1;
        Sat, 05 Jun 2021 12:10:38 -0700 (PDT)
X-Received: by 2002:a05:6512:2010:: with SMTP id a16mr4002379lfb.38.1622920238423;
 Sat, 05 Jun 2021 12:10:38 -0700 (PDT)
MIME-Version: 1.0
References: <000000000000c2987605be907e41@google.com> <20210602212726.7-1-fuzzybritches0@gmail.com>
 <YLhd8BL3HGItbXmx@kroah.com> <87609-531187-curtm@phaethon> <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
In-Reply-To: <6a392b66-6f26-4532-d25f-6b09770ce366@fb.com>
From: Alexei Starovoitov <alexei.starovoitov@gmail.com>
Date: Sat, 5 Jun 2021 12:10:26 -0700
Message-ID: <CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA@mail.gmail.com>
Subject: Re: [PATCH v4] bpf: core: fix shift-out-of-bounds in ___bpf_prog_run
To: Yonghong Song <yhs@fb.com>
Cc: Kurt Manucredo <fuzzybritches0@gmail.com>, 
	syzbot+bed360704c521841c85d@syzkaller.appspotmail.com, 
	Andrii Nakryiko <andrii@kernel.org>, Alexei Starovoitov <ast@kernel.org>, bpf <bpf@vger.kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, "David S. Miller" <davem@davemloft.net>, 
	Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, 
	Martin KaFai Lau <kafai@fb.com>, KP Singh <kpsingh@kernel.org>, Jakub Kicinski <kuba@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	Song Liu <songliubraving@fb.com>, syzkaller-bugs <syzkaller-bugs@googlegroups.com>, 
	nathan@kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	linux-kernel-mentees@lists.linuxfoundation.org, 
	Shuah Khan <skhan@linuxfoundation.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexei.starovoitov@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LuXg4Dkr;       spf=pass
 (google.com: domain of alexei.starovoitov@gmail.com designates
 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=alexei.starovoitov@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Jun 5, 2021 at 10:55 AM Yonghong Song <yhs@fb.com> wrote:
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
> >       u32_min_val = src_reg.u32_min_value;
> >       u32_max_val = src_reg.u32_max_value;
> >
> > +     if ((opcode == BPF_LSH || opcode == BPF_RSH || opcode == BPF_ARSH) &&
> > +                     umax_val >= insn_bitness) {
> > +             /* Shifts greater than 31 or 63 are undefined.
> > +              * This includes shifts by a negative number.
> > +              */
> > +             verbose(env, "invalid shift %lld\n", umax_val);
> > +             return -EINVAL;
> > +     }
>
> I think your fix is good. I would like to move after

I suspect such change will break valid programs that do shift by register.

> the following code though:
>
>          if (!src_known &&
>              opcode != BPF_ADD && opcode != BPF_SUB && opcode != BPF_AND) {
>                  __mark_reg_unknown(env, dst_reg);
>                  return 0;
>          }
>
> > +
> >       if (alu32) {
> >               src_known = tnum_subreg_is_const(src_reg.var_off);
> >               if ((src_known &&
> > @@ -7592,39 +7601,18 @@ static int adjust_scalar_min_max_vals(struct bpf_verifier_env *env,
> >               scalar_min_max_xor(dst_reg, &src_reg);
> >               break;
> >       case BPF_LSH:
> > -             if (umax_val >= insn_bitness) {
> > -                     /* Shifts greater than 31 or 63 are undefined.
> > -                      * This includes shifts by a negative number.
> > -                      */
> > -                     mark_reg_unknown(env, regs, insn->dst_reg);
> > -                     break;
> > -             }
>
> I think this is what happens. For the above case, we simply
> marks the dst reg as unknown and didn't fail verification.
> So later on at runtime, the shift optimization will have wrong
> shift value (> 31/64). Please correct me if this is not right
> analysis. As I mentioned in the early please write detailed
> analysis in commit log.

The large shift is not wrong. It's just undefined.
syzbot has to ignore such cases.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAADnVQKexxZQw0yK_7rmFOdaYabaFpi2EmF6RGs5bXvFHtUQaA%40mail.gmail.com.
