Return-Path: <clang-built-linux+bncBCV7VV5FSADRBMGZ436AKGQEDIQGRPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2283729D15A
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 18:38:58 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id m185sf492220oia.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 10:38:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603906737; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uder8vKlHCvAuCRKnEUBiOAIdQOk3UDMf9V6sFf/PfC6eCAZRKnkjl9fPl2Di3UiDE
         HsaJ8DzgUGwGyXWBuEKLT7VdXGNEiaYqZ4388W8RiAjuECgOTUO1Iz5thApLUQVIXukr
         mznQwVAUL8blwk1Oi4HU4sxvo2u5HCnWWdL/JzZRwxauSuPB7n/ECS6sq1jhXzVpYW5o
         kH9rJWrjuatzWwuX4hzO19aqIjbDkJeKnfwvvTA6pTd6q1OO5NSMUuzbZdzOzC/eVZe7
         sjO/rnE36PGv2HWyD6I32pIdMYWYg9jCL7Mb1tqKTuF+/C/fk8cvDT8sb63TFXIRkAJA
         /WVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9M2hHMa7LKTWL+tuJ44iwl1Xc1I+uQhT0mlnY9vEi1A=;
        b=isyBy6YIXFzsQu0VejIGlqg9r/EA+l/PRsk4NRma5Nt+ie5ppQdMbVBibOFwBZSlcH
         ZfQU7l5IrEM4ZIzRAOUXn1qPjUzRONoQ2ykXVMYMO5N7hLKjYmlODROUT2XE7TOYI2bN
         o3JAEGy740R2dhKIegIK9w9HLmJxPkVGJXIuVZLHLsaGgi1xjj5Pl0MhztU5EBuvgKtS
         FFkQlkIIGlmkc3e0AMVNXOn8A+AFGIZDs83nvsjqDAnMAupxIqlcQRNr/ghkPu4aTHJI
         Le7vnec7Ch8iTPnbzzVW6+YwY92c8ndVWDiqMYAKDL/hwOF0etcy+8ddL8dotUcX0sYM
         RUhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uoRMTe+G;
       spf=pass (google.com: domain of xiyou.wangcong@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=xiyou.wangcong@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9M2hHMa7LKTWL+tuJ44iwl1Xc1I+uQhT0mlnY9vEi1A=;
        b=dVssq9YhuFSVaP6H63JiqI5O/Dv0z7URpxtoFZVFIftN7r98LhRh8UhnOaB9pvPC9o
         ypzvz1PN+3ON4KX5w03EEBzTPIRT8NYjezOPWerCAL6lSHYe7A8DgRaqieTAVkwrBp4y
         fadXrQYPhhrrMVZYZJl2r7BGyughQNBMnhpMTbu2ILozRApt5vpB0+pGwrlmQI/2nhSp
         AByXalmC7/hv1/4TrCCKyWuOWBZ4sP7+mKf3pRHA5562d1U47WAdHB8mdhjSzOBCmP+0
         ML2K02SRW3Wda8TWwimWAxMlO4kX0v58Yr4t2Fuce82OBzOWtYExRfnl7gz+IrlC6ZaX
         qk1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9M2hHMa7LKTWL+tuJ44iwl1Xc1I+uQhT0mlnY9vEi1A=;
        b=lnMh+VC/Wci1RM/Sv5OPoN2z3ztv9foVi0p5TesECQBN7vpA7+H5PBc2GG5R3bI5A0
         RwdRCDO/ClflZJ9hVEnNJ2clpr4tfNPGxhkOUpCBr+IybDYCoXqrsK5r979jqsto5DJc
         +3llHc+sTT8VMeUcuQjVhzcoL6ORmaoKgYyjefS6hSGzFGOrvU9ftdz2VEgGk3c/DDo5
         ssHhWFVEnnj1Y3vatbvIj9O+llZ+H1EmC3mCuzTsJ+3eumaNQ8ZX5Uwu7mjVd2Ay9nk5
         ahvE48JaLPRx5BPQ5DJ21Fxr/IehBkoX//VPsGEH/hLVIUm4FEQtp+1JhKl/ss8ClIiL
         DZ7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9M2hHMa7LKTWL+tuJ44iwl1Xc1I+uQhT0mlnY9vEi1A=;
        b=WdxdEePZHGnZf0iKZA9OmOT3mvnsZRHmAw7aTBYsCZplhSrYfIHMYUYTjVM0+Vy9AW
         9BWHGaKzRGCI/tzKxMH/xblxN9FgM79naKh8b/O4BntxmB7jC1Tc4cUxCdxot8YBK391
         HQZCIVY7FLWfRXIeLKxSQolIaqMack0sodKZo3beDH9VGkGoqv7IufwK7bUwyjnzS1Or
         ShLN3wbNxQK9KbRv5ANjburUzVvt1YAtm34qwOmk96Z1bH34ZTjTeZosI9BzncAtnF7U
         jK5f/jC1UG2AMzXCwFO2YtCWLREEcBT7MQsBLGS/ce/vvBjppGmiqxcDCFVQTEHtvpsS
         tybw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533or4M+4kG/XjGfEvGGcJ3S8BNUbMFfgDfdl+ErtXlWmu5ozIPe
	0kkJuSCKUekU+/cMc8qjRog=
X-Google-Smtp-Source: ABdhPJzUdhK3yIGZKCFwUxPZtBs1ceAjBE5GHplGl+Ie2YLRSthnhUpQXzJ0RsyOryGfJCTEd+cG3w==
X-Received: by 2002:aca:486:: with SMTP id 128mr80941oie.78.1603906736971;
        Wed, 28 Oct 2020 10:38:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d0e:: with SMTP id v14ls22959otn.10.gmail; Wed, 28 Oct
 2020 10:38:56 -0700 (PDT)
X-Received: by 2002:a9d:44:: with SMTP id 62mr284262ota.153.1603906736611;
        Wed, 28 Oct 2020 10:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603906736; cv=none;
        d=google.com; s=arc-20160816;
        b=oSqAbyQfxhDnvkMevVjxO/1MQH9y37FKB2UixqUsPx/1S7FyTXBmvLT3PICr9w7LSm
         tN3qSwejmAUhtSrjPFdyFjpzwDfV/02nxl7VYzu2q3UKbVmKmIRcscLWFR6S58Epb5ee
         Tbw43pXgkm3LqQZvQfn6sASKxllQJrMiYSAhOPQDzzzVaOs/8oTYkUZLLyQiwIFtDyZ+
         qsPn3DdAt9XJRo+8BeLHZTlOpHhQJVhYHS/lo2nV4Kc/xX+l7C7VGr8fLm6oQSroUg1d
         RJ6fr2VAn8+IqsniQCDFDFZtlNTv6lXxsodKuuMQA1SonWO8aM1oQVGvkhGyShcumYif
         DvHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ozYCZRgZqvrBNZwSGWpcjHZ/UebLYVQ2msLNU5VY5Mo=;
        b=eUTGpTnx+yCYy7HrnykXmI+JdnHPDFIvIszBoswhJKu7cHpLmZVFvcA3pc8RZP7Cag
         SSv9Bard8Gl+MzNdJkoS7lj0I88n0M/0tTzj8OwE+ez5Wkns1Va3OcEmBrTwIUBSn/Fz
         +jeSJxXApamBPOqvPKfK2nuYHGRkiZbrrVcjxrji2ycDkSpj8P9IQL33obq6GSZM66rK
         x/pUH44DckEL4WLKs/73MUGAzRIvbrojmUWIv9PP/iF7mX5e7b3SG96Vbd289tCDV8d3
         kpzDtbOZEC89Hpew4e7MviOtiEdWsDDZkUce2XTN3NN5K5JYks6Po13p+3Z8fM3aoRE6
         1xtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uoRMTe+G;
       spf=pass (google.com: domain of xiyou.wangcong@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=xiyou.wangcong@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x144.google.com (mail-il1-x144.google.com. [2607:f8b0:4864:20::144])
        by gmr-mx.google.com with ESMTPS id a7si7988oie.4.2020.10.28.10.38.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Oct 2020 10:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of xiyou.wangcong@gmail.com designates 2607:f8b0:4864:20::144 as permitted sender) client-ip=2607:f8b0:4864:20::144;
Received: by mail-il1-x144.google.com with SMTP id x20so235423ilj.8
        for <clang-built-linux@googlegroups.com>; Wed, 28 Oct 2020 10:38:56 -0700 (PDT)
X-Received: by 2002:a92:c04c:: with SMTP id o12mr171588ilf.22.1603906736261;
 Wed, 28 Oct 2020 10:38:56 -0700 (PDT)
MIME-Version: 1.0
References: <20201028113533.26160-1-lukas.bulwahn@gmail.com> <d956a5a5-c064-3fd4-5e78-809638ba14ef@redhat.com>
In-Reply-To: <d956a5a5-c064-3fd4-5e78-809638ba14ef@redhat.com>
From: Cong Wang <xiyou.wangcong@gmail.com>
Date: Wed, 28 Oct 2020 10:38:45 -0700
Message-ID: <CAM_iQpUfE2f3QBFY6r0_D2mzFK_SsmFXdA-1p3h7yquM8912fg@mail.gmail.com>
Subject: Re: [PATCH] net: cls_api: remove unneeded local variable in tc_dump_chain()
To: Tom Rix <trix@redhat.com>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>, Jamal Hadi Salim <jhs@mojatatu.com>, 
	Jiri Pirko <jiri@resnulli.us>, "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Linux Kernel Network Developers <netdev@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	LKML <linux-kernel@vger.kernel.org>, kernel-janitors@vger.kernel.org, 
	linux-safety@lists.elisa.tech
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: xiyou.wangcong@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=uoRMTe+G;       spf=pass
 (google.com: domain of xiyou.wangcong@gmail.com designates
 2607:f8b0:4864:20::144 as permitted sender) smtp.mailfrom=xiyou.wangcong@gmail.com;
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

On Wed, Oct 28, 2020 at 6:59 AM Tom Rix <trix@redhat.com> wrote:
>
>
> On 10/28/20 4:35 AM, Lukas Bulwahn wrote:
> > @@ -2971,13 +2963,11 @@ static int tc_dump_chain(struct sk_buff *skb, struct netlink_callback *cb)
> >               if (!dev)
> >                       return skb->len;
> >
> > -             parent = tcm->tcm_parent;
> > -             if (!parent) {
> > +             if (!tcm->tcm_parent)
> >                       q = dev->qdisc;
> > -                     parent = q->handle;
>
> This looks like a an unused error handler.
>
> and the later call to
>
> if (TC_H_MIN(tcm->tcm_parent)
>
> maybe should be
>
> if (TC_H_MIN(parent))

When tcm->tcm_parent is 0, TC_H_MIN(tcm->tcm_parent) is also 0,
so we will not hit that if branch.

So, I think Lukas' patch is correct.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAM_iQpUfE2f3QBFY6r0_D2mzFK_SsmFXdA-1p3h7yquM8912fg%40mail.gmail.com.
