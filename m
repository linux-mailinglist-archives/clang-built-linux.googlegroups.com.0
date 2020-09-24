Return-Path: <clang-built-linux+bncBC7OPZ6PWACRBAODWP5QKGQE6SMC5TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D1B277848
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 20:12:18 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id s11sf48108ljh.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 11:12:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600971137; cv=pass;
        d=google.com; s=arc-20160816;
        b=zyyguAGhz2ykSgLYJCFxbKlBzxOagz/zRLCHc27yLudxn9q0YTsd1jhPbgi51/ljMF
         5BGPqL3lPaksWIx/AFhPd/GIJ5ynMxk1+ylq8K6HHv28a8zqQ4BNwr48aKR7KWBJVO/M
         MTJWr+WKZYXA9+NN4NdVxBOrChDnU8gWp8jmWdDbtk17QIsE2obwnBpg+SQZOkT3oS2C
         MYP/SH5E3zr+cKms1vikNXDwGzowee8SvArNYfgo7L2XDQVlV3CTHBDIQUsOuZ8mOsVz
         YBmd8jmCiI3UBXzdhjuOSSQ1P1PS7ocXQUVRB53R28hca+p4HavIabitOhrqzA7qsPGv
         zV+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=CI9DRpzcHJcCHpiu7HAfr1EX8SXrpliXcxYYx6JgMms=;
        b=vfLQjRDL0O6rWfhEFXjvzQEBjHR1TawDruRirpVFnDb1c6EMT6eMXedyEsibq07nMU
         IV4sKin9a5maiApKiSEdxNLuGA9A9+32pkAMDMBZIbpvhG5rXbexAKNl4qxVurMI8NR3
         HEtRpcMgmIMNbiKmSHCXzi/efwcyijoXuQSC5rd3uS5Y9quL+QgtjCdlL1ZaAYIVD7oV
         NRZas2cdjrwycXYeLmqU3v6eDxG6nueDxRgkkplw69KSt9j8eiKEMgv1dOcuWYjl9e7K
         RivJxA4ydW4c/BnOksG1VXdDFuifUDO1hpL9JO+/yYv7TIIugwlpbjVdQCFZrd7hj5RN
         js7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of schumakeranna@gmail.com designates 209.85.218.67 as permitted sender) smtp.mailfrom=schumakeranna@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CI9DRpzcHJcCHpiu7HAfr1EX8SXrpliXcxYYx6JgMms=;
        b=Qnf6L0ncM7WNYWv88PvFh8e3t1CKERLDCro1LXI3WkuYBIzk52ZTPJm0LjsntfjJiL
         ciFqp8acTZLJk8xjbHhYmdsM2HOVyavnICd/Cnn5V4xUsilRV5Ml4GnjWJhBFvpNOFtm
         toDZH1eHK+6JRampn+D+nngjlxLRv7l4nJkV7QdlTwYII/I7o8la3C8/hLOj3xX+CBXR
         nLCbXs1ROxBsOjnCyp+DwSr58PEIsv01DL65fXWw6hDV0fR7cKOXyetpISIuQ+HpVZku
         QYYtTHci2fOY3R/pV1R2CD0GJsz03UXgfbWoqx7e85bjOm7agP5kFODHpRZ/ufeMgzB9
         RB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CI9DRpzcHJcCHpiu7HAfr1EX8SXrpliXcxYYx6JgMms=;
        b=LmZviVtx9mO2nlu5uHJ+hNnCTdhmi3wm5C5YnfRR/4torrG16Z89jAJ1MbYFF1lDof
         snlPlNd+MDIOIUJAbUkJx2iW9STXtIQkKUfXatFJ2ssVnpSeunA29JFd/CdcSE6YpjuR
         LYaa5LKcO5ova9Y7lGZR1TYHSKptcwR/JOVWmrrGrHz5rIqzlHSX1zfaZ2Z0FmwxIc1T
         +U/GEFUkkwL0npNooUz8wjOCa32CwiI8kLdnSW+meZh7jRccKEu5aBk7GH4INOuWcGbC
         uluLsT7whqasrvgT2MUNBrLkt6b9aHkm7gDcJlAZ/hLJjHDPU9qnh/09n+VOXyQF5Fw/
         qmhA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533skCFloSZ4gFjGyvJnLHDyBPVU0wUk2WSxn3mryGos5GQqBYQO
	YjJvVsagCZuUJ6tNKGTfvaE=
X-Google-Smtp-Source: ABdhPJw/d4Z68QyYMPesltRhAA0NWgKwmmnEZjHbE737iXGbCqL4l37Iewx5s2Pm6ikZ6+bf8hztyQ==
X-Received: by 2002:ac2:4827:: with SMTP id 7mr30521lft.493.1600971137703;
        Thu, 24 Sep 2020 11:12:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:554:: with SMTP id 81ls557856lff.1.gmail; Thu, 24 Sep
 2020 11:12:16 -0700 (PDT)
X-Received: by 2002:a19:ed13:: with SMTP id y19mr37538lfy.187.1600971136491;
        Thu, 24 Sep 2020 11:12:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600971136; cv=none;
        d=google.com; s=arc-20160816;
        b=YiDnuKTz6lSCdNWWCYZ84pWdlxynD7HnwR/OfvE07eE0Dwk2vjLjQ4pQdtSB/rH9qm
         ZFkxGaXE/gD1Se0b30uClw+xn7rASNQvsy5Npni00IwJEGB4ZB8tt4vwqaCsDIespSPd
         RStvWbNjdHCf4KGsVFRP476H5PlsKyOfBIp91LsqixcqFd42C2blSrspHHLpIlITlQJf
         FrJ/h2RUI0A0THHL/wvDhE8LrKRHUX7KJAznVoXqNTm0/9gXPfEHVNZApd6KlStlj/I1
         w3doD0S8yTCD/PkWXObpojiLa1jQHZssOo7hrg/XVlPqlYhjj0hZqqSWppJjDTA7zVbk
         L3cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=xYnG1iB/+VP+FnkQe6ynNkYbfPZIYv55Z7D7cKAuirY=;
        b=lLREahXTgpVcDcw4EoXpSDAFuPhCA2/4OQyTk5tzzc8n55ke80u9JZfgutOsn747Vl
         S6JjOMWo+gJp7gvkqXlE2FpIy1MWsxJnEFyysjZB6MD6WJUklW6Nz47UBqrjUExDDPfO
         4ZKYqJrZvdur2N/sFfwaFvwuhzEQ49mRpQ2njixjqS7fZum4OQzgDbbBfIjE4IedFMV9
         je3s3eCJNOHOtzkINb4hfCnAADooWBHwO87geiYDGq4NLb7WazNMO3HpCEdp5VViqiC3
         bLe2aZwiaEpfMQ5bwIPSrUL18el9aAeMCIOA2+Hf7XXIY55NpCiu9e1KexSwIqaT+Zzb
         1vRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of schumakeranna@gmail.com designates 209.85.218.67 as permitted sender) smtp.mailfrom=schumakeranna@gmail.com
Received: from mail-ej1-f67.google.com (mail-ej1-f67.google.com. [209.85.218.67])
        by gmr-mx.google.com with ESMTPS id r13si4330ljm.3.2020.09.24.11.12.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Sep 2020 11:12:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of schumakeranna@gmail.com designates 209.85.218.67 as permitted sender) client-ip=209.85.218.67;
Received: by mail-ej1-f67.google.com with SMTP id q13so31114ejo.9
        for <clang-built-linux@googlegroups.com>; Thu, 24 Sep 2020 11:12:16 -0700 (PDT)
X-Received: by 2002:a17:906:2dc1:: with SMTP id h1mr1214182eji.436.1600971135945;
 Thu, 24 Sep 2020 11:12:15 -0700 (PDT)
MIME-Version: 1.0
References: <ce28bb9bc25cb3f1197f75950a0cfe14947f9002.camel@perches.com>
 <20200917214545.199463-1-ndesaulniers@google.com> <CAKwvOdnziDJbRAP77K+V885SCuORfV4SmHDnSLUxhUGSSLMq_Q@mail.gmail.com>
 <ca629208707903da56823dd57540d677df2da283.camel@perches.com> <734165bbee434a920f074940624bcef01fcd9d60.camel@perches.com>
In-Reply-To: <734165bbee434a920f074940624bcef01fcd9d60.camel@perches.com>
From: Anna Schumaker <anna.schumaker@netapp.com>
Date: Thu, 24 Sep 2020 14:11:59 -0400
Message-ID: <CAFX2Jf=JjVOjDKj_rpst35a+fqbiq4OpVFjztaeKcbTSNapnCg@mail.gmail.com>
Subject: Re: [PATCH v3] nfs: remove incorrect fallthrough label
To: Joe Perches <joe@perches.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, 
	Trond Myklebust <trond.myklebust@hammerspace.com>, 
	Linus Torvalds <torvalds@linux-foundation.org>, 
	"Gustavo A . R . Silva" <gustavo@embeddedor.com>, "Gustavo A . R . Silva" <gustavoars@kernel.org>, 
	Miaohe Lin <linmiaohe@huawei.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Hongxiang Lou <louhongxiang@huawei.com>, 
	Linux NFS Mailing List <linux-nfs@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: anna.schumaker@netapp.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of schumakeranna@gmail.com designates 209.85.218.67 as
 permitted sender) smtp.mailfrom=schumakeranna@gmail.com
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

On Thu, Sep 24, 2020 at 2:08 PM Joe Perches <joe@perches.com> wrote:
>
> On Thu, 2020-09-24 at 10:40 -0700, Joe Perches wrote:
> > On Thu, 2020-09-24 at 10:19 -0700, Nick Desaulniers wrote:
> > > Hello maintainers,
> > > Would you mind please picking up this patch?  KernelCI has been
> > > erroring for over a week without it.
> >
> > As it's trivial and necessary, why not go through Linus directly?
> []
> > Fixes: 2a1390c95a69 ("nfs: Convert to use the preferred fallthrough macro")
>
> Real reason why not:
>

I'm planning to take this patch through the NFS tree for 5.10 (along
with the patch that apparently causes the problem). I didn't think it
was urgent so I haven't gotten around to pushing it out yet, but I'll
do so in the next few hours.

Anna

> the commit to be fixed is not in Linus' tree.
>
> > https://lore.kernel.org/patchwork/patch/1307549/
>
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFX2Jf%3DJjVOjDKj_rpst35a%2Bfqbiq4OpVFjztaeKcbTSNapnCg%40mail.gmail.com.
